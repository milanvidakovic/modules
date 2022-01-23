// IP, ARP, UDP and TCP functions.
// Author: Guido Socher
// Copyright: GPL V2
//
// The TCP implementation uses some size optimisations which are valid
// only if all data can be sent in one single packet. This is however
// not a big limitation for a microcontroller as you will anyhow use
// small web-pages. The web server must send the entire web page in one
// packet. The client "web browser" as implemented here can also receive
// large pages.
//
// 2010-05-20 <jc@wippler.nl>
#include <tcpip.h>
#include <net.h>
#include <string.h>
#include <sprintf.h>
#include <stdio.h>
#include <enc28j60.h>

//uint8_t gPB[1500];
uint8_t *gPB;

#define PINGPATTERN 0x42

// Avoid spurious pgmspace warnings - http://forum.jeelabs.net/node/327
// See also http://gcc.gnu.org/bugzilla/show_bug.cgi?id=34734
//#undef 
//#define  __attribute__(( section("..data") ))
//#undef PSTR
//#define PSTR(s) (__extension__({ prog_char c[]  = (s); &c[0];}))

#define TCP_STATE_SENDSYN       1
#define TCP_STATE_SYNSENT       2
#define TCP_STATE_ESTABLISHED   3
#define TCP_STATE_NOTUSED       4
#define TCP_STATE_CLOSING       5
#define TCP_STATE_CLOSED        6

#define TCPCLIENT_SRC_PORT_H 11 //Source port (MSB) for TCP/IP client connections - hardcode all TCP/IP client connection from ports in range 2816-3071
 uint8_t tcpclient_src_port_l=1; // Source port (LSB) for tcp/ip client connections - increments on each TCP/IP request
 uint8_t tcp_fd; // a file descriptor, will be encoded into the port
 uint8_t tcp_client_state; //TCP connection state: 1=Send SYN, 2=SYN sent awaiting SYN+ACK, 3=Established, 4=Not used, 5=Closing, 6=Closed
 uint8_t tcp_client_port_h; // Destination port (MSB) of TCP/IP client connection
 uint8_t tcp_client_port_l; // Destination port (LSB) of TCP/IP client connection
 uint8_t (*client_tcp_result_cb)(uint8_t,uint8_t,uint16_t,uint16_t); // Pointer to callback function to handle response to current TCP/IP request
 uint16_t (*client_tcp_datafill_cb)(uint8_t); //Pointer to callback function to handle payload data in response to current TCP/IP request
 uint8_t www_fd; // ID of current http request (only one http request at a time - one of the 8 possible concurrent TCP/IP connections)
 void (*client_browser_cb)(uint8_t,uint16_t,uint16_t); // Pointer to callback function to handle result of current HTTP request
  char *client_additionalheaderline; // Pointer to c-string additional http request header info
  char *client_postval;
  char *client_urlbuf; // Pointer to c-string path part of HTTP request URL
  char *client_urlbuf_var; // Pointer to c-string filename part of HTTP request URL
  char *client_hoststr; // Pointer to c-string hostname of current HTTP request
 void (*icmp_cb)(uint8_t *ip); // Pointer to callback function for ICMP ECHO response handler (triggers when localhost receives ping response (pong))
 uint8_t destmacaddr[ETH_LEN]; // storing both dns server and destination mac addresses, but at different times because both are never needed at same time.
 uint8_t waiting_for_dns_mac = false; //might be better to use bit flags and bitmask operations for these conditions
 uint8_t has_dns_mac = false;
 uint8_t waiting_for_dest_mac = false;
 uint8_t has_dest_mac = false;
 uint8_t gwmacaddr[ETH_LEN]; // Hardware (MAC) address of gateway router
 uint8_t waitgwmac; // Bitwise flags of gateway router status - see below for states
//Define gateway router ARP statuses
#define WGW_INITIAL_ARP 1 // First request, no answer yet
#define WGW_HAVE_GW_MAC 2 // Have gateway router MAC
#define WGW_REFRESHING 4 // Refreshing but already have gateway MAC
#define WGW_ACCEPT_ARP_REPLY 8 // Accept an ARP reply

 uint16_t info_data_len; // Length of TCP/IP payload
 uint8_t seqnum = 0xa; // My initial tcp sequence number
 uint8_t result_fd = 123; // Session id of last reply
  char* result_ptr; // Pointer to TCP/IP data
 unsigned long SEQ; // TCP/IP sequence number

#define CLIENTMSS 550
#define TCP_DATA_START ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4) // Get offset of TCP/IP payload data

 unsigned char arpreqhdr[]  = { 0,1,8,0,6,4,0,1 }; // ARP request header
 unsigned char iphdr[]  = { 0x45,0,0,0x82,0,0,0x40,0,0x20 }; //IP header
 unsigned char ntpreqhdr[]  = { 0xE3,0,4,0xFA,0,1,0,0,0,1 }; //NTP request header
 uint8_t allOnes[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }; // Used for hardware (MAC) and IP broadcast addresses


uint8_t mymac[ETH_LEN];  // my MAC address
uint8_t myip[IP_LEN];   // my ip address
uint8_t netmask[IP_LEN]; // subnet mask
uint8_t broadcastip[IP_LEN]; // broadcast address
uint8_t gwip[IP_LEN];   // gateway
uint8_t dhcpip[IP_LEN]; // dhcp server
uint8_t dnsip[IP_LEN];  // dns server
uint8_t hisip[IP_LEN];  // ip address of remote host
uint16_t hisport = HTTP_PORT; // tcp port to browse to
uint8_t using_dhcp = false;
uint8_t persist_tcp_connection = true;
uint16_t delaycnt = 0; //request gateway ARP lookup

uint16_t bufferSize; //!< Size of data buffer
uint8_t broadcast_enabled; //!< True if broadcasts enabled (used to allow temporary disable of broadcast for DHCP or other internal functions)
uint8_t promiscuous_enabled; //!< True if promiscuous mode enabled (used to allow temporary disable of promiscuous mode)


uint8_t* tcpOffset () { return gPB + 0x36; } //!< Pointer to the start of TCP payload


char* wtoa(uint16_t value, char* ptr)
{
    if (value > 9)
        ptr = wtoa(value / 10, ptr);
    *ptr = '0' + value % 10;
    *++ptr = 0;
    return ptr;
}


void copyIp (uint8_t *dst, uint8_t *src) {
    memcpy(dst, src, IP_LEN);
}

void copyMac (uint8_t *dst, uint8_t *src) {
    memcpy(dst, src, ETH_LEN);
}

void setGwIp (uint8_t *gwipaddr) {
    delaycnt = 0; //request gateway ARP lookup
    waitgwmac = WGW_INITIAL_ARP; // causes an arp request in the packet loop
    copyIp(gwip, gwipaddr);
}

void updateBroadcastAddress()
{
    for(uint8_t i=0; i<IP_LEN; i++)
        broadcastip[i] = myip[i] | ~netmask[i];
}


uint8_t tcpipBegin (uint16_t size, uint8_t *buffer , uint8_t* macaddr) {
    using_dhcp = false;

    bufferSize = size;
    gPB = buffer;

#if ETHERCARD_STASH
    initMap();
#endif
    copyMac(mymac, macaddr);
}

uint8_t staticSetup (uint8_t* my_ip,
                        uint8_t* gw_ip,
                        uint8_t* dns_ip,
                        uint8_t* mask) {
    using_dhcp = false;

    if (my_ip != 0)
        copyIp(myip, my_ip);
    if (gw_ip != 0)
        setGwIp(gw_ip);
    if (dns_ip != 0)
        copyIp(dnsip, dns_ip);
    if(mask != 0)
        copyIp(netmask, mask);
    updateBroadcastAddress();
    delaycnt = 0; //request gateway ARP lookup
    return true;
}


// search for a string of the form key=value in
// a string that looks like q?xyz=abc&uvw=defgh HTTP/1.1\r\n
//
// The returned value is stored in strbuf. You must allocate
// enough storage for strbuf, maxlen is the size of strbuf.
// I.e the value it is declared with: strbuf[5]-> maxlen=5
uint8_t findKeyVal ( char *str,char *strbuf, uint8_t maxlen, char *key)
{
    uint8_t found = false;
    uint8_t i=0;
     char *kp;
    kp=key;
    while(*str &&  *str!=' ' && *str!='\n' && !found) {
        if (*str == *kp) {
            kp++;
            if (*kp == '\0') {
                str++;
                kp=key;
                if (*str == '=') {
                    found = true;
                }
            }
        } else {
            kp=key;
        }
        str++;
    }
    if (found) {
        // copy the value to a buffer and terminate it with '\0'
        while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
            *strbuf=*str;
            i++;
            str++;
            strbuf++;
        }
        *strbuf='\0';
    }
    // return the length of the value
    return(i);
}

// convert a single hex digit character to its integer value
unsigned char h2int(char c)
{
    if (isdigit(c)) {
        return((unsigned char)c - '0');
    }
    else if (islower(c)) {
        return((unsigned char)c - 'a' + 10);
    }
    else if (isupper(c)) {
        return((unsigned char)c - 'A' + 10);
    }
    return(0);
}

// decode a url string e.g "hello%20joe" or "hello+joe" becomes "hello joe"
void urlDecode (char *urlbuf)
{
    char c;
    char *dst = urlbuf;
    while ((c = *urlbuf) != 0) {
        if (c == '+') c = ' ';
        if (c == '%') {
            c = *++urlbuf;
            c = (h2int(c) << 4) | h2int(*++urlbuf);
        }
        *dst++ = c;
        urlbuf++;
    }
    *dst = '\0';
}

// convert a single character to a 2 digit hex str
// a terminating '\0' is added
void int2h(char c, char *hstr)
{
    hstr[1]=(c & 0xf)+'0';
    if ((c & 0xf) >9) {
        hstr[1]=(c & 0xf) - 10 + 'a';
    }
    c=(c>>4)&0xf;
    hstr[0]=c+'0';
    if (c > 9) {
        hstr[0]=c - 10 + 'a';
    }
    hstr[2]='\0';
}

// there must be enough space in urlbuf. In the worst case that is
// 3 times the length of str
void urlEncode (char *str,char *urlbuf)
{
    char c;
    while ((c = *str) != 0) {
        if (c == ' '||isalnum(c)) {
            if (c == ' ') {
                c = '+';
            }
            *urlbuf=c;
            str++;
            urlbuf++;
            continue;
        }
        *urlbuf='%';
        urlbuf++;
        int2h(c,urlbuf);
        urlbuf++;
        urlbuf++;
        str++;
    }
    *urlbuf='\0';
}

// parse a string and extract the IP to uint8_tstr
uint8_t parseIp (uint8_t *uint8_tstr,  char *str)
{
    uint8_t res = 1;
    for (uint8_t i = 0; i < IP_LEN; ++i)
    {
        uint8_tstr[i] = atoi(str) & 0xFF;
        for (; *str != '\0'; ++str)
        {
            if (*str == '.')
            {
                ++str;
                break;
            }
            else if (!isdigit(*str))
            {
                res = 0;
                break;
            }
        }
    }
    return res;
}

void fill_checksum(uint8_t dest, uint8_t off, uint16_t len,uint8_t type) {
     uint8_t* ptr = gPB + off;
    uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
                   type==2 ? IP_PROTO_TCP_V+len-8 : 0;
    while(len >1) {
        sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
        ptr+=2;
        len-=2;
    }
    if (len)
        sum += ((uint32_t)*ptr)<<8;
    while (sum>>16)
        sum = (uint16_t) sum + (sum >> 16);
    uint16_t ck = ~ (uint16_t) sum;
    gPB[dest] = ck>>8;
    gPB[dest+1] = ck;
}

 void setMACs ( uint8_t *mac) {
    copyMac(gPB + ETH_DST_MAC, mac);
    copyMac(gPB + ETH_SRC_MAC, mymac);
}

 void setMACandIPs ( uint8_t *mac,  uint8_t *dst) {
    setMACs(mac);
    copyIp(gPB + IP_DST_P, dst);
    copyIp(gPB + IP_SRC_P, myip);
}

 uint8_t check_ip_message_is_from( uint8_t *ip) {
    return memcmp(gPB + IP_SRC_P, ip, IP_LEN) == 0;
}

 uint8_t is_lan( uint8_t source[IP_LEN],  uint8_t destination[IP_LEN]) {
    if(source[0] == 0 || destination[0] == 0) {
        return false;
    }
    for(int i = 0; i < IP_LEN; i++)
        if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
            return false;
        }
    return true;
}

 uint8_t eth_type_is_arp_and_my_ip(uint16_t len) {
//    printf("\nMEMCMP: %d\n", memcmp(gPB + ETH_ARP_DST_IP_P, myip, IP_LEN) );
    return len >= 41 && gPB[ETH_TYPE_H_P] == ETHTYPE_ARP_H_V &&
           gPB[ETH_TYPE_L_P] == ETHTYPE_ARP_L_V &&
           memcmp(gPB + ETH_ARP_DST_IP_P, myip, IP_LEN) == 0;
}

 uint8_t eth_type_is_ip_and_my_ip(uint16_t len) {
    return len >= 42 && gPB[ETH_TYPE_H_P] == ETHTYPE_IP_H_V &&
           gPB[ETH_TYPE_L_P] == ETHTYPE_IP_L_V &&
           gPB[IP_HEADER_LEN_VER_P] == 0x45 &&
           (memcmp(gPB + IP_DST_P, myip, IP_LEN) == 0  //not my IP
            || (memcmp(gPB + IP_DST_P, broadcastip, IP_LEN) == 0) //not subnet broadcast
            || (memcmp(gPB + IP_DST_P, allOnes, IP_LEN) == 0)); //not global broadcasts
    //!@todo Handle multicast
}

 void fill_ip_hdr_checksum() {
    gPB[IP_CHECKSUM_P] = 0;
    gPB[IP_CHECKSUM_P+1] = 0;
    gPB[IP_FLAGS_P] = 0x40; // don't fragment
    gPB[IP_FLAGS_P+1] = 0;  // fragment offset
    gPB[IP_TTL_P] = 64; // ttl
    fill_checksum(IP_CHECKSUM_P, IP_P, IP_HEADER_LEN,0);
}

 void make_eth_ip() {
    setMACs(gPB + ETH_SRC_MAC);
    copyIp(gPB + IP_DST_P, gPB + IP_SRC_P);
    copyIp(gPB + IP_SRC_P, myip);
    fill_ip_hdr_checksum();
}

 void step_seq(uint16_t rel_ack_num,uint8_t cp_seq) {
    uint8_t i;
    uint8_t tseq;
    i = 4;
    while(i>0) {
        rel_ack_num = gPB[TCP_SEQ_H_P+i-1]+rel_ack_num;
        tseq = gPB[TCP_SEQACK_H_P+i-1];
        gPB[TCP_SEQACK_H_P+i-1] = rel_ack_num;
        if (cp_seq)
            gPB[TCP_SEQ_H_P+i-1] = tseq;
        else
            gPB[TCP_SEQ_H_P+i-1] = 0; // some preset value
        rel_ack_num = rel_ack_num>>8;
        i--;
    }
}

 void make_tcphead(uint16_t rel_ack_num,uint8_t cp_seq) {
    uint8_t i = gPB[TCP_DST_PORT_H_P];
    gPB[TCP_DST_PORT_H_P] = gPB[TCP_SRC_PORT_H_P];
    gPB[TCP_SRC_PORT_H_P] = i;
    uint8_t j = gPB[TCP_DST_PORT_L_P];
    gPB[TCP_DST_PORT_L_P] = gPB[TCP_SRC_PORT_L_P];
    gPB[TCP_SRC_PORT_L_P] = j;
    step_seq(rel_ack_num,cp_seq);
    gPB[TCP_CHECKSUM_H_P] = 0;
    gPB[TCP_CHECKSUM_L_P] = 0;
    gPB[TCP_HEADER_LEN_P] = 0x50;
}

 void make_arp_answer_from_request() {
    setMACs(gPB + ETH_SRC_MAC);
    gPB[ETH_ARP_OPCODE_H_P] = ETH_ARP_OPCODE_REPLY_H_V;
    gPB[ETH_ARP_OPCODE_L_P] = ETH_ARP_OPCODE_REPLY_L_V;
    copyMac(gPB + ETH_ARP_DST_MAC_P, gPB + ETH_ARP_SRC_MAC_P);
    copyMac(gPB + ETH_ARP_SRC_MAC_P, mymac);
    copyIp(gPB + ETH_ARP_DST_IP_P, gPB + ETH_ARP_SRC_IP_P);
    copyIp(gPB + ETH_ARP_SRC_IP_P, myip);
    enc28j60PacketSend(42, gPB);
    //packetSend(42);
}

 void make_echo_reply_from_request(uint16_t len) {
    make_eth_ip();
    gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREPLY_V;
    if (gPB[ICMP_CHECKSUM_P] > (0xFF-0x08))
        gPB[ICMP_CHECKSUM_P+1]++;
    gPB[ICMP_CHECKSUM_P] += 0x08;
    enc28j60PacketSend(len, gPB);
    //packetSend(len);
}

void makeUdpReply ( char *data,uint8_t datalen,uint16_t port) {
    if (datalen>220)
        datalen = 220;
    gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >>8;
    gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
    make_eth_ip();
    gPB[UDP_DST_PORT_H_P] = gPB[UDP_SRC_PORT_H_P];
    gPB[UDP_DST_PORT_L_P] = gPB[UDP_SRC_PORT_L_P];
    gPB[UDP_SRC_PORT_H_P] = port>>8;
    gPB[UDP_SRC_PORT_L_P] = port;
    gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >> 8;
    gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
    gPB[UDP_CHECKSUM_H_P] = 0;
    gPB[UDP_CHECKSUM_L_P] = 0;
    memcpy(gPB + UDP_DATA_P, data, datalen);
    fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
    enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
    //packetSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen);
}

 void make_tcp_synack_from_syn() {
    gPB[IP_TOTLEN_H_P] = 0;
    gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4;
    make_eth_ip();
    gPB[TCP_FLAGS_P] = TCP_FLAGS_SYNACK_V;
    make_tcphead(1,0);
    gPB[TCP_SEQ_H_P+0] = 0;
    gPB[TCP_SEQ_H_P+1] = 0;
    gPB[TCP_SEQ_H_P+2] = seqnum;
    gPB[TCP_SEQ_H_P+3] = 0;
    seqnum += 3;
    gPB[TCP_OPTIONS_P] = 2;
    gPB[TCP_OPTIONS_P+1] = 4;
    gPB[TCP_OPTIONS_P+2] = 0x05;
    gPB[TCP_OPTIONS_P+3] = 0x0;
    gPB[TCP_HEADER_LEN_P] = 0x60;
    gPB[TCP_WIN_SIZE] = 0x5; // 1400=0x578
    gPB[TCP_WIN_SIZE+1] = 0x78;
    fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN+4,2);
    enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4+ETH_HEADER_LEN, gPB);
    //packetSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4+ETH_HEADER_LEN);
}

uint16_t getTcpPayloadLength() {
    int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
    i -= IP_HEADER_LEN;
    i -= (gPB[TCP_HEADER_LEN_P]>>4)*4; // generate len in uint8_ts;
    if (i<=0)
        i = 0;
    return (uint16_t)i;
}

 void make_tcp_ack_from_any(int16_t datlentoack,uint8_t addflags) {
    gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|addflags;
    if (addflags!=TCP_FLAGS_RST_V && datlentoack==0)
        datlentoack = 1;
    make_tcphead(datlentoack,1); // no options
    uint16_t j = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN;
    gPB[IP_TOTLEN_H_P] = j>>8;
    gPB[IP_TOTLEN_L_P] = j;
    make_eth_ip();
    gPB[TCP_WIN_SIZE] = 0x4; // 1024=0x400, 1280=0x500 2048=0x800 768=0x300
    gPB[TCP_WIN_SIZE+1] = 0;
    fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN,2);
    enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN, gPB);
    //packetSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN);
}

 void make_tcp_ack_with_data_noflags(uint16_t dlen) {
    uint16_t j = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen;
    gPB[IP_TOTLEN_H_P] = j>>8;
    gPB[IP_TOTLEN_L_P] = j;
    fill_ip_hdr_checksum();
    gPB[TCP_CHECKSUM_H_P] = 0;
    gPB[TCP_CHECKSUM_L_P] = 0;
    fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN+dlen,2);
    enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen+ETH_HEADER_LEN, gPB);
    //packetSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen+ETH_HEADER_LEN);
}

void httpServerReply (uint16_t dlen) {
    make_tcp_ack_from_any(info_data_len,0); // send ack for http get
    gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V;
    make_tcp_ack_with_data_noflags(dlen); // send data
}

 uint32_t getBigEndianLong(uint8_t offs) { //get the sequence number of packets after an ack from GET
    return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
} //thanks to mstuetz for the missing (unsigned long)

 void setSequenceNumber(uint32_t seq) {
    gPB[TCP_SEQ_H_P]   = (seq & 0xff000000 ) >> 24;
    gPB[TCP_SEQ_H_P+1] = (seq & 0xff0000 ) >> 16;
    gPB[TCP_SEQ_H_P+2] = (seq & 0xff00 ) >> 8;
    gPB[TCP_SEQ_H_P+3] = (seq & 0xff );
}

uint32_t getSequenceNumber() {
    return getBigEndianLong(TCP_SEQ_H_P);
}

void httpServerReplyAck () {
    make_tcp_ack_from_any(getTcpPayloadLength(),0); // send ack for http request
    SEQ = getSequenceNumber(); //get the sequence number of packets after an ack from GET
}

void httpServerReply_with_flags (uint16_t dlen , uint8_t flags) {
    setSequenceNumber(SEQ);
    gPB[TCP_FLAGS_P] = flags; // final packet
    make_tcp_ack_with_data_noflags(dlen); // send data
    SEQ=SEQ+dlen;
}

void clientIcmpRequest( uint8_t *destip) {
    if(is_lan(myip, destip)) {
        setMACandIPs(destmacaddr, destip);
    } else {
        setMACandIPs(gwmacaddr, destip);
    }
    gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
    memcpy(gPB + IP_P,iphdr,sizeof iphdr);
    gPB[IP_TOTLEN_L_P] = 0x54;
    gPB[IP_PROTO_P] = IP_PROTO_ICMP_V;
    fill_ip_hdr_checksum();
    gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREQUEST_V;
    gPB[ICMP_TYPE_P+1] = 0; // code
    gPB[ICMP_CHECKSUM_H_P] = 0;
    gPB[ICMP_CHECKSUM_L_P] = 0;
    gPB[ICMP_IDENT_H_P] = 5; // some number
    gPB[ICMP_IDENT_L_P] = myip[3]; // last uint8_t of my IP
    gPB[ICMP_IDENT_L_P+1] = 0; // seq number, high uint8_t
    gPB[ICMP_IDENT_L_P+2] = 1; // seq number, low uint8_t, we send only 1 ping at a time
    memset(gPB + ICMP_DATA_P, PINGPATTERN, 56);
    fill_checksum(ICMP_CHECKSUM_H_P, ICMP_TYPE_P, 56+8,0);
    enc28j60PacketSend(98, gPB);
    //packetSend(98);
}

void ntpRequest (uint8_t *ntpip,uint8_t srcport) {
    if(is_lan(myip, ntpip)) {
        setMACandIPs(destmacaddr, ntpip);
    } else {
        setMACandIPs(gwmacaddr, ntpip);
    }
    gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
    memcpy(gPB + IP_P,iphdr,sizeof iphdr);
    gPB[IP_TOTLEN_L_P] = 0x4c;
    gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
    fill_ip_hdr_checksum();
    gPB[UDP_DST_PORT_H_P] = 0;
    gPB[UDP_DST_PORT_L_P] = NTP_PORT; // ntp = 123
    gPB[UDP_SRC_PORT_H_P] = 10;
    gPB[UDP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
    gPB[UDP_LEN_H_P] = 0;
    gPB[UDP_LEN_L_P] = 56; // fixed len
    gPB[UDP_CHECKSUM_H_P] = 0;
    gPB[UDP_CHECKSUM_L_P] = 0;
    memset(gPB + UDP_DATA_P, 0, 48);
    memcpy(gPB + UDP_DATA_P,ntpreqhdr,10);
    fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + 48,1);
    enc28j60PacketSend(90, gPB);
    //packetSend(90);
}

uint8_t ntpProcessAnswer (uint32_t *time,uint8_t dstport_l) {
    if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
            gPB[UDP_LEN_L_P]!=56 || gPB[UDP_SRC_PORT_L_P]!=0x7b)
        return 0;
    ((uint8_t*) time)[3] = gPB[0x52];
    ((uint8_t*) time)[2] = gPB[0x53];
    ((uint8_t*) time)[1] = gPB[0x54];
    ((uint8_t*) time)[0] = gPB[0x55];
    return 1;
}

void udpPrepare (uint16_t sport, uint8_t *dip, uint16_t dport) {
    if(is_lan(myip, dip)) {                    // this works because both dns mac and destinations mac are stored in same variable - destmacaddr
        setMACandIPs(destmacaddr, dip);        // at different times. The program could have separate variable for dns mac, then here should be
    } else {                                   // checked if dip is dns ip and separately if dip is hisip and then use correct mac.
        setMACandIPs(gwmacaddr, dip);
    }
    // see http://tldp.org/HOWTO/Multicast-HOWTO-2.html
    // multicast or broadcast address, https://github.com/njh/EtherCard/issues/59
    if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
        copyMac(gPB + ETH_DST_MAC, allOnes);
    gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
    memcpy(gPB + IP_P,iphdr,sizeof iphdr);
    gPB[IP_TOTLEN_H_P] = 0;
    gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
    gPB[UDP_DST_PORT_H_P] = (dport>>8);
    gPB[UDP_DST_PORT_L_P] = dport;
    gPB[UDP_SRC_PORT_H_P] = (sport>>8);
    gPB[UDP_SRC_PORT_L_P] = sport;
    gPB[UDP_LEN_H_P] = 0;
    gPB[UDP_CHECKSUM_H_P] = 0;
    gPB[UDP_CHECKSUM_L_P] = 0;
}

void udpTransmit (uint16_t datalen) {
    gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >> 8;
    gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
    fill_ip_hdr_checksum();
    gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >>8;
    gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
    fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
    enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
    //packetSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen);
}

void sendUdp ( char *data, uint8_t datalen, uint16_t sport,
                          uint8_t *dip, uint16_t dport) {
    udpPrepare(sport, dip, dport);
    if (datalen>220)
        datalen = 220;
    memcpy(gPB + UDP_DATA_P, data, datalen);
    udpTransmit(datalen);
}

void sendWol (uint8_t *wolmac) {
    setMACandIPs(allOnes, allOnes);
    gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
    memcpy(gPB + IP_P,iphdr,9);
    gPB[IP_TOTLEN_L_P] = 0x82;
    gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
    fill_ip_hdr_checksum();
    gPB[UDP_DST_PORT_H_P] = 0;
    gPB[UDP_DST_PORT_L_P] = 0x9; // wol = normally 9
    gPB[UDP_SRC_PORT_H_P] = 10;
    gPB[UDP_SRC_PORT_L_P] = 0x42; // source port does not matter
    gPB[UDP_LEN_H_P] = 0;
    gPB[UDP_LEN_L_P] = 110; // fixed len
    gPB[UDP_CHECKSUM_H_P] = 0;
    gPB[UDP_CHECKSUM_L_P] = 0;
    copyMac(gPB + UDP_DATA_P, allOnes);
    uint8_t pos = UDP_DATA_P;
    for (uint8_t m = 0; m < 16; ++m) {
        pos += 6;
        copyMac(gPB + pos, wolmac);
    }
    fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + 102,1);
    enc28j60PacketSend(pos + 6, gPB);
    //packetSend(pos + 6);
}

// make a arp request
 void client_arp_whohas(uint8_t *ip_we_search) {
    setMACs(allOnes);
    gPB[ETH_TYPE_H_P] = ETHTYPE_ARP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_ARP_L_V;
    memcpy(gPB + ETH_ARP_P, arpreqhdr, sizeof arpreqhdr);
    memset(gPB + ETH_ARP_DST_MAC_P, 0, ETH_LEN);
    copyMac(gPB + ETH_ARP_SRC_MAC_P, mymac);
    copyIp(gPB + ETH_ARP_DST_IP_P, ip_we_search);
    copyIp(gPB + ETH_ARP_SRC_IP_P, myip);
    enc28j60PacketSend(42, gPB);
    //packetSend(42);
}

uint8_t clientWaitingGw () {
    return !(waitgwmac & WGW_HAVE_GW_MAC);
}

uint8_t clientWaitingDns () {
    if(is_lan(myip, dnsip))
        return !has_dns_mac;
    return !(waitgwmac & WGW_HAVE_GW_MAC);
}

 uint8_t client_store_mac(uint8_t *source_ip, uint8_t *mac) {
    if (memcmp(gPB + ETH_ARP_SRC_IP_P, source_ip, IP_LEN) != 0)
        return 0;
    copyMac(mac, gPB + ETH_ARP_SRC_MAC_P);
    return 1;
}

//  void client_gw_arp_refresh() {
//   if (waitgwmac & WGW_HAVE_GW_MAC)
//     waitgwmac |= WGW_REFRESHING;
// }


uint8_t dnstid_l; // a counter for transaction ID
#define DNSCLIENT_SRC_PORT_H 0xE0

#define DNS_TYPE_A 1
#define DNS_CLASS_IN 1

void dnsRequest (const char *hostname, uint8_t fromRam) {
    ++dnstid_l; // increment for next request, finally wrap
    if (dnsip[0] == 0)
        memset(dnsip, 8, IP_LEN); // use 8.8.8.8 Google DNS as default
    udpPrepare((DNSCLIENT_SRC_PORT_H << 8) | dnstid_l, dnsip, DNS_PORT);
    memset(gPB + UDP_DATA_P, 0, 12);

    uint8_t *p = gPB + UDP_DATA_P + 12;
    char c;
    do {
        uint8_t n = 0;
        for(;;) {
            c = fromRam ? *hostname : *hostname;
            ++hostname;
            if (c == '.' || c == 0)
                break;
            p[++n] = c;
        }
        *p++ = n;
        p += n;
    } while (c != 0);

    *p++ = 0; // terminate with zero, means root domain.
    *p++ = 0;
    *p++ = DNS_TYPE_A;
    *p++ = 0;
    *p++ = DNS_CLASS_IN;
    uint8_t i = p - gPB - UDP_DATA_P;
    gPB[UDP_DATA_P] = i;
    gPB[UDP_DATA_P+1] = dnstid_l;
    gPB[UDP_DATA_P+2] = 1; // flags, standard recursive query
    gPB[UDP_DATA_P+5] = 1; // 1 question
    udpTransmit(i);
}

/** @brief  Check if packet is DNS response.
    @param  plen Size of packet
    @return <i>bool</i> True if DNS response has error. False if not DNS response or DNS response OK.
    @note   hisip contains IP address of requested host or 0.0.0.0 on failure
*/
uint8_t checkForDnsAnswer (uint16_t plen) {
    uint8_t *p = gPB + UDP_DATA_P; //start of UDP payload
    if (plen < 70 || gPB[UDP_SRC_PORT_L_P] != DNS_PORT || //from DNS source port
            gPB[UDP_DST_PORT_H_P] != DNSCLIENT_SRC_PORT_H || //response to same port as we sent from (MSB)
            gPB[UDP_DST_PORT_L_P] != dnstid_l || //response to same port as we sent from (LSB)
            p[1] != dnstid_l) //message id same as we sent
        return false; //not our DNS response
    if((p[3] & 0x0F) != 0)
        return true; //DNS response received with error

    p += *p; // we encoded the query len into tid
    for (;;) {
        if (*p & 0xC0)
            p += 2;
        else
            while (++p < gPB + plen) {
                if (*p == 0) {
                    ++p;
                    break;
                }
            }
        if (p + 14 > gPB + plen)
            break;
        if (p[1] == DNS_TYPE_A && p[9] == 4) { // type "A" and IPv4
            copyIp(hisip, p + 10);
            break;
        }
        p += p[9] + 10;
    }
    return false; //No error
}

// use during setup, as this discards all incoming requests until it returns
uint8_t dnsLookup (char* name, uint8_t fromRam) {
    uint16_t start = get_millis();

    while(!isLinkUp())
    {
        if ((uint16_t)(get_millis()) - start >= 30000)
            return false; //timeout waiting for link
    }
    while(clientWaitingDns())
    {
        packetLoop(enc28j60PacketReceive(bufferSize, gPB));
        if ((uint16_t)(get_millis()) - start >= 30000)
            return false; //timeout waiting for gateway ARP
    }

    memset(hisip, 0, IP_LEN);
    dnsRequest(name, fromRam);

    start = get_millis();
    while (hisip[0] == 0) {
        if ((uint16_t)(get_millis()) - start >= 30000)
            return false; //timeout waiting for dns response
        uint16_t len = enc28j60PacketReceive(bufferSize, gPB);
        if (len > 0 && packetLoop(len) == 0) //packet not handled by tcp/ip packet loop
            if(checkForDnsAnswer(len))
                return false; //DNS response received with error
    }

    return true;
} 

 void client_syn(uint8_t srcport,uint8_t dstport_h,uint8_t dstport_l) {
    if(is_lan(myip, hisip)) {
        setMACandIPs(destmacaddr, hisip);
    } else {
        setMACandIPs(gwmacaddr, hisip);
    }
    gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
    gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
    memcpy(gPB + IP_P,iphdr,sizeof iphdr);
    gPB[IP_TOTLEN_L_P] = 44; // good for syn
    gPB[IP_PROTO_P] = IP_PROTO_TCP_V;
    fill_ip_hdr_checksum();
    gPB[TCP_DST_PORT_H_P] = dstport_h;
    gPB[TCP_DST_PORT_L_P] = dstport_l;
    gPB[TCP_SRC_PORT_H_P] = TCPCLIENT_SRC_PORT_H;
    gPB[TCP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
    memset(gPB + TCP_SEQ_H_P, 0, 8);
    gPB[TCP_SEQ_H_P+2] = seqnum;
    seqnum += 3;
    gPB[TCP_HEADER_LEN_P] = 0x60; // 0x60=24 len: (0x60>>4) * 4
    gPB[TCP_FLAGS_P] = TCP_FLAGS_SYN_V;
    gPB[TCP_WIN_SIZE] = 0x3; // 1024 = 0x400 768 = 0x300, initial window
    gPB[TCP_WIN_SIZE+1] = 0x0;
    gPB[TCP_CHECKSUM_H_P] = 0;
    gPB[TCP_CHECKSUM_L_P] = 0;
    gPB[TCP_CHECKSUM_L_P+1] = 0;
    gPB[TCP_CHECKSUM_L_P+2] = 0;
    gPB[TCP_OPTIONS_P] = 2;
    gPB[TCP_OPTIONS_P+1] = 4;
    gPB[TCP_OPTIONS_P+2] = (CLIENTMSS>>8);
    gPB[TCP_OPTIONS_P+3] = (uint8_t) CLIENTMSS;
    fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8 +TCP_HEADER_LEN_PLAIN+4,2);
    // 4 is the tcp mss option:
    enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN+4, gPB);
    //packetSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN+4);
}

uint8_t clientTcpReq (uint8_t (*result_cb)(uint8_t,uint8_t,uint16_t,uint16_t),
                                 uint16_t (*datafill_cb)(uint8_t),uint16_t port) {
    client_tcp_result_cb = result_cb;
    client_tcp_datafill_cb = datafill_cb;
    tcp_client_port_h = port>>8;
    tcp_client_port_l = port;
    tcp_client_state = TCP_STATE_SENDSYN; // Flag to packetloop to initiate a TCP/IP session by send a syn
    tcp_fd = (tcp_fd + 1) & 7;
    return tcp_fd;
}

 uint16_t www_client_internal_datafill_cb(uint8_t fd) {
    uint8_t *buff = tcpOffset();
    if (fd==www_fd) {
        if (client_postval == 0) {
            if (client_additionalheaderline) {
                sprintf(buff, "GET %s%s HTTP/1.0\r\nHost: %s\r\n%s\r\n\r\n", client_urlbuf,
                            client_urlbuf_var,
                            client_hoststr, client_additionalheaderline);
            } else {
                sprintf(buff, "GET %s%s HTTP/1.0\r\nHost: %s\r\n\r\n", client_urlbuf,
                            client_urlbuf_var,
                            client_hoststr); 
            }
        } else {
            char* ahl = client_additionalheaderline;
            sprintf(buff, "POST %s HTTP/1.0\r\n"
                              "Host: %s\r\n"
                              "%s%s"
                              "Accept: */*\r\n"
                              "Content-Length: %d\r\n"
                              "Content-Type: application/x-www-form-urlencoded\r\n"
                              "\r\n"
                              "%s", client_urlbuf,
                         client_hoststr,
                         ahl != 0 ? ahl : "",
                         ahl != 0 ? "\r\n" : "",
                         strlen(client_postval),
                         client_postval);
        }
    }
    return strlen(buff);
}

 uint8_t www_client_internal_result_cb(uint8_t fd, uint8_t statuscode, uint16_t datapos, uint16_t len_of_data) {
    //printf("HTTP CALLBACK: fd: %d, statuscode: %d\n", fd, statuscode);
    if (fd!=www_fd)
        (*client_browser_cb)(4,0,0);
    else if (statuscode==0 && len_of_data>12 && client_browser_cb) {
        uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
        (*client_browser_cb)(f, ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4),len_of_data);
    }
    return 0;
}

 uint16_t tcp_datafill_cb(uint8_t fd) {
    /*
    uint16_t len = Stash::length();
    Stash::extract(0, len, tcpOffset());
    Stash::cleanup();
    */
    //tcpOffset()[len] = 0;
    uint16_t len = strlen(tcpOffset());
#if SERIAL
    printf("REQUEST: ");
    printfln(len);
    printfln((char*) tcpOffset());
#endif
    result_fd = 123; // bogus value
    return len;
}

 uint8_t tcp_result_cb(uint8_t fd, uint8_t status, uint16_t datapos, uint16_t datalen) {
    if (status == 0) {
        result_fd = fd; // a valid result has been received, remember its session id
        result_ptr = (char*) gPB + datapos;
        // result_ptr[datalen] = 0;
    }
    return 1;
}

uint8_t tcpSend () {
    www_fd = clientTcpReq(&tcp_result_cb, &tcp_datafill_cb, hisport);
    return www_fd;
}

 char* tcpReply (uint8_t fd) {
    if (result_fd != fd)
        return 0;
    result_fd = 123; // set to a bogus value to prevent future match
    return result_ptr;
}

void registerPingCallback (void (*callback)(uint8_t *srcip)) {
    icmp_cb = callback;
}

uint8_t packetLoopIcmpCheckReply ( uint8_t *ip_monitoredhost) {
    return gPB[IP_PROTO_P]==IP_PROTO_ICMP_V &&
           gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREPLY_V &&
           gPB[ICMP_DATA_P]== PINGPATTERN &&
           check_ip_message_is_from(ip_monitoredhost);
}

uint16_t accept( uint16_t port, uint16_t plen) {
    uint16_t pos;

    if (gPB[TCP_DST_PORT_H_P] == (port >> 8) &&
            gPB[TCP_DST_PORT_L_P] == ((uint8_t) port))
    {   //Packet targeted at specified port
        if (gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V)
            make_tcp_synack_from_syn(); //send SYN+ACK
        else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
        {   //This is an acknowledgement to our SYN+ACK so let's start processing that payload
            info_data_len = getTcpPayloadLength();
            if (info_data_len > 0)
            {   //Got some data
                pos = TCP_DATA_START; // TCP_DATA_START is a formula
                //!@todo no idea what this check pos<=plen-8 does; changed this to pos<=plen as otw. perfectly valid tcp packets are ignored; still if anybody has any idea please leave a comment
                if (pos <= plen)
                    return pos;
            }
            else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V)
                make_tcp_ack_from_any(0,0); //No data so close connection
        }
    }
    return 0;
}

void dumpPacket(uint16_t len) 
{
    int i;
    // IP_PROTO_ICMP_== 1, ICMP_TYPE_ECHOREQUEST_V == 8
    printf("\nLEN: %d\n", len);
    printf("DESTINATION MAC: ");
    for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
    printf("\nSOURCE MAC: ");
    for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
    printf("\nTYPE: %x %x\n", gPB[12], gPB[13]);
    if (gPB[12] == 8 && gPB[13] == 6) 
    {
        // ARP
        printf("ARP REQ:\n");
        printf("Hardware type: %x %x\n", gPB[14], gPB[15]);
        printf("Protocol type: %x %x\n", gPB[16], gPB[17]);
        printf("Hardware size: %x\n", gPB[18]);
        printf("Protocol size: %x\n", gPB[19]);
        printf("Request type: %x %x\n", gPB[20], gPB[21]);
        printf("SENDER MAC: ");
        for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
        printf("\nSENDER IP: ");
        for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
        printf("\nTARGET MAC: ");
        for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
        printf("\nTARGET IP: ");
        for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
    }
    else if (gPB[12] == 8 && gPB[13] == 0) {
        // IP
        printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
        printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
        printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
        printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
        printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
        // TCP
        printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
        printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
        printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
        printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
            gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
            gPB[34 + 14] * 256 + gPB[34 + 15]
        );
        printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
        for (int i = 14 + 20 + 20; i < (14 + 20 + 20) + 8/*len*/; i++) 
        {
            printf("%d: %x (%c) ", i, gPB[i], gPB[i]);
            if ((i != 0) && (i % 8 == 0)) printf("\n");
        }
        printf("\n");
    } else {
        for (int i = 14; i < len; i++) 
        {
            printf("%d: %x ", i, gPB[i]);
            if ((i != 0) && (i % 8 == 0)) printf("\n");
        }
    }
}

uint16_t packetLoop (uint16_t plen) {
    uint16_t len;

    //if (plen > 60) dumpPacket(plen);

#if ETHERCARD_DHCP
    if(using_dhcp) {
        ether.DhcpStateMachine(plen);
    }
#endif

    if (plen==0) {
        //Check every 65536 (no-packet) cycles whether we need to retry ARP request for gateway
        if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
                delaycnt==0 && isLinkUp()) {
            client_arp_whohas(gwip);
            waitgwmac |= WGW_ACCEPT_ARP_REPLY;
        }
        delaycnt++;

#if ETHERCARD_TCPCLIENT
        //Initiate TCP/IP session if pending
        if (tcp_client_state==TCP_STATE_SENDSYN && (waitgwmac & WGW_HAVE_GW_MAC)) { // send a syn
            //printf("initiate TCP/IP session, hisip: %d.%d.%d.%d, tcp_fd: %d\n", hisip[0], hisip[1], hisip[2], hisip[3], tcp_fd);
            tcp_client_state = TCP_STATE_SYNSENT;
            tcpclient_src_port_l++; // allocate a new port
            client_syn(((tcp_fd<<5) | (0x1f & tcpclient_src_port_l)),tcp_client_port_h,tcp_client_port_l);
        }
#endif

        //!@todo this is trying to find mac only once. Need some timeout to make another call if first one doesn't succeed.
        if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
            //printf("ARP1 (sending ARP request to obtain DNS MAC)\n");
            client_arp_whohas(dnsip);
            waiting_for_dns_mac = true;
        }

        //!@todo this is trying to find mac only once. Need some timeout to make another call if first one doesn't succeed.
        if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
            //printf("ARP2 (sending ARP request to obtain destination MAC)\n");
            client_arp_whohas(hisip);
            waiting_for_dest_mac = true;
        }

        return 0;
    }

    if (eth_type_is_arp_and_my_ip(plen))
    {   //Service ARP request
        if (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REQ_L_V) {
            //printf("Returning ARP Response\n");
            make_arp_answer_from_request();
        }
        if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
            //printf("HAVE GW MAC: %x:%x:%x:%x:%x:%x\n", gwmacaddr[0], gwmacaddr[1], gwmacaddr[2], gwmacaddr[3], gwmacaddr[4], gwmacaddr[5]);
            waitgwmac = WGW_HAVE_GW_MAC;
        }
        if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
            //printf("HAVE DNS MAC: %x:%x:%x:%x:%x:%x\n", destmacaddr[0], destmacaddr[1], destmacaddr[2], destmacaddr[3], destmacaddr[4], destmacaddr[5]);
            has_dns_mac = true;
            waiting_for_dns_mac = false;
        }
        if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
            //printf("HAVE DESTINATION MAC: %x:%x:%x:%x:%x:%x\n", destmacaddr[0], destmacaddr[1], destmacaddr[2], destmacaddr[3], destmacaddr[4], destmacaddr[5]);
            has_dest_mac = true;
            waiting_for_dest_mac = false;
        }
        return 0;
    }

    if (eth_type_is_ip_and_my_ip(plen)==0)
    {   //Not IP so ignoring
        //!@todo Add other protocols (and make each optional at compile time)
        return 0;
    }

#if ETHERCARD_ICMP
    if (gPB[IP_PROTO_P]==IP_PROTO_ICMP_V && gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V)
    {   //Service ICMP echo request (ping)
        //printf("PING ");
        if (icmp_cb)
            (*icmp_cb)(&(gPB[IP_SRC_P]));
        make_echo_reply_from_request(plen);
        return 0;
    }
#endif
#if ETHERCARD_UDPSERVER
    if (ether.udpServerListening() && gPB[IP_PROTO_P]==IP_PROTO_UDP_V)
    {   //Call UDP server handler (callback) if one is defined for this packet
        if(ether.udpServerHasProcessedPacket(plen))
            return 0; //An UDP server handler (callback) has processed this packet
    }
#endif

    if (plen<54 || gPB[IP_PROTO_P]!=IP_PROTO_TCP_V )
        return 0; //from here on we are only interested in TCP-packets; these are longer than 54 uint8_ts

#if ETHERCARD_TCPCLIENT
    //printf("TCP DEST PORT: [%d] ", gPB[TCP_DST_PORT_H_P]);
    if (gPB[TCP_DST_PORT_H_P]==TCPCLIENT_SRC_PORT_H)
    {   //Source port is in range reserved (by EtherCard) for client TCP/IP connections
        //printf("1, plen: %d\n", plen);
        if (check_ip_message_is_from(hisip)==0)
            return 0; //Not current TCP/IP connection (only handle one at a time)
        if (gPB[TCP_FLAGS_P] & TCP_FLAGS_RST_V)
        {   //TCP reset flagged
            //printf("2 ");
            if (client_tcp_result_cb)
                (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,3,0,0);
            tcp_client_state = TCP_STATE_CLOSING;
            return 0;
        }
        len = getTcpPayloadLength();
        if (tcp_client_state==TCP_STATE_SYNSENT)
        {   //Waiting for SYN-ACK
            //printf("3, len: %d, ", len);
            if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
            {   //SYN and ACK flags set so this is an acknowledgement to our SYN
                //printf("4 ");
                make_tcp_ack_from_any(0,0);
                gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V;
                if (client_tcp_datafill_cb)
                    len = (*client_tcp_datafill_cb)((gPB[TCP_SRC_PORT_L_P]>>5)&0x7);
                else
                    len = 0;
                tcp_client_state = TCP_STATE_ESTABLISHED;
                make_tcp_ack_with_data_noflags(len);
            }
            else
            {   //Expecting SYN+ACK so reset and resend SYN
                //printf("5 ");
                tcp_client_state = TCP_STATE_SENDSYN; // retry
                len++;
                if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
                    len = 0;
                make_tcp_ack_from_any(len,TCP_FLAGS_RST_V);
            }
            return 0;
        }
        if (tcp_client_state==TCP_STATE_ESTABLISHED && len>0)
        {   //TCP connection established so read data
            //printf(" {{{{ 6, len:%d ", len);
            if (client_tcp_result_cb) {
                //printf("{{{{ 7 ");
                uint16_t tcpstart = TCP_DATA_START; // TCP_DATA_START is a formula
                if (tcpstart>plen-8)
                    tcpstart = plen-8; // dummy but save
                uint16_t save_len = len;
                if (tcpstart+len>plen)
                    save_len = plen-tcpstart;
                (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,0,tcpstart,save_len); //Call TCP handler (callback) function

                if(persist_tcp_connection)
                {   //Keep connection alive by sending ACK
                    //printf("{{{{ 8 ");
                    make_tcp_ack_from_any(len,TCP_FLAGS_PUSH_V);
                }
                else
                {   //Close connection
                    //printf("{{{{ 9 ");
                    make_tcp_ack_from_any(len,TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V);
                    tcp_client_state = TCP_STATE_CLOSED;
                }
                return 0;
            }
        }
        if (tcp_client_state != TCP_STATE_CLOSING)
        {   // Closing TCP/IP connection
            //printf("}}}} 10 ");
            if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V) {
                //printf("}}}} 11 ");
                if(tcp_client_state == TCP_STATE_ESTABLISHED) {
                    return 0; // In some instances FIN is received *before* DATA.  If that is the case, we just return here and keep looking for the data packet
                }
                if (tcp_client_state != TCP_STATE_CLOSED) {
                    //printf("}}}} 12 ");
                    make_tcp_ack_from_any(len+1,TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V);
                    tcp_client_state = TCP_STATE_CLOSED; // connection terminated
                }
            } else if (len>0) {
                //printf("}}}} 13 ");
                make_tcp_ack_from_any(len,0);
            }
        }
        return 0;
    }
#endif

#if ETHERCARD_TCPSERVER
    //If we are here then this is a TCP/IP packet targeted at us and not related to our client connection so accept
    return accept(hisport, plen);
#endif
}

void persistTcpConnection(uint8_t persist) {
    persist_tcp_connection = persist;
}


#ifdef KERNEL
int init_tcpip()
{
	enc28j60Init(MYMAC);

	//printf("rev: %d\n", enc28j60getrev());
	//printf("is link up: %d\n", isLinkUp());
	if (isLinkUp())
	{
		tcpipBegin(1500, eth_buffer, MYMAC);
		staticSetup(MYIP, GWIP, DNSIP, MASK);
		parseIp(hisip, server_ip);
		//printf("%d.%d.%d.%d\n", hisip[0], hisip[1], hisip[2], hisip[3]); 
        return true;
	} else 
	{
        return false;
	}
}

void browseUrl ( char *urlbuf,  char *urlbuf_varpart,  char *hoststr,  char *additionalheaderline, void (*callback)(uint8_t,uint16_t,uint16_t)) {
    client_urlbuf = urlbuf;
    client_urlbuf_var = urlbuf_varpart;
    client_hoststr = hoststr;
    client_additionalheaderline = additionalheaderline;
    client_postval = 0;
    client_browser_cb = callback;
    www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
}

void httpPost ( char *urlbuf,  char *hoststr,  char *additionalheaderline,  char *postval, void (*callback)(uint8_t,uint16_t,uint16_t)) {
    client_urlbuf = urlbuf;
    client_hoststr = hoststr;
    client_additionalheaderline = additionalheaderline;
    client_postval = postval;
    client_browser_cb = callback;
    www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
}

uint16_t mainLoop(uint8_t * eth_buffer)
{
    return packetLoop(enc28j60PacketReceive(1500, eth_buffer));
}

#else

int init_tcpip()
{
	asm("ld.w r0, [190600]\njr r0\n");
}
void browseUrl ( char *urlbuf,  char *urlbuf_varpart,  char *hoststr,  char *additionalheaderline, void (*callback)(uint8_t,uint16_t,uint16_t)) 
{
	asm("ld.w r0, [190604]\njr r0\n");
}
void httpPost ( char *urlbuf,  char *hoststr,  char *additionalheaderline,  char *postval, void (*callback)(uint8_t,uint16_t,uint16_t)) 
{
	asm("ld.w r0, [190608]\njr r0\n");
}
uint16_t mainLoop(uint8_t * eth_buffer)
{
	asm("ld.w r0, [190612]\njr r0\n");
}

#endif

