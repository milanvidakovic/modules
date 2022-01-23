	.file	"tcpip.c"
# GNU C17 (GCC) version 10.0.0 20200111 (experimental) (moxiebox)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -I /mnt/c/Prj/Altera/C/moxiebox/modules/include
# -D KERNEL /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c -mel
# -auxbase-strip /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.s
# -fsigned-char -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fallocation-dce
# -fauto-inc-dec -fdelete-null-pointer-checks -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-unique -fident
# -finline-atomics -fipa-stack-alignment -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse -fmath-errno
# -fmerge-debug-strings -fpcc-struct-return -fpeephole -fplt
# -fprefetch-loop-arrays -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mel -mmul.x

	.text
	.global	eth_buffer
	.section	.bss,"aw",@nobits
	.p2align	2
	.type	eth_buffer, @object
	.size	eth_buffer, 4500
eth_buffer:
	.zero	4500
	.global	MYMAC
	.data
	.p2align	2
	.type	MYMAC, @object
	.size	MYMAC, 6
MYMAC:
	.string	"\022"
	.string	""
	.string	""
	.string	""
	.ascii	"\""
	.global	DNSIP
	.p2align	2
	.type	DNSIP, @object
	.size	DNSIP, 4
DNSIP:
	.ascii	"\300\250\001\001"
	.global	GWIP
	.p2align	2
	.type	GWIP, @object
	.size	GWIP, 4
GWIP:
	.ascii	"\300\250\001\001"
	.global	MASK
	.p2align	2
	.type	MASK, @object
	.size	MASK, 4
MASK:
	.string	"\377\377\377"
	.global	MYIP
	.p2align	2
	.type	MYIP, @object
	.size	MYIP, 4
MYIP:
	.ascii	"\300\250\001\334"
	.global	server_ip
	.p2align	2
	.type	server_ip, @object
	.size	server_ip, 14
server_ip:
	.string	"192.168.1.240"
	.global	gPB
	.section	.bss
	.p2align	2
	.type	gPB, @object
	.size	gPB, 4
gPB:
	.zero	4
	.global	tcpclient_src_port_l
	.data
	.type	tcpclient_src_port_l, @object
	.size	tcpclient_src_port_l, 1
tcpclient_src_port_l:
	.byte	1
	.global	tcp_fd
	.section	.bss
	.type	tcp_fd, @object
	.size	tcp_fd, 1
tcp_fd:
	.zero	1
	.global	tcp_client_state
	.type	tcp_client_state, @object
	.size	tcp_client_state, 1
tcp_client_state:
	.zero	1
	.global	tcp_client_port_h
	.type	tcp_client_port_h, @object
	.size	tcp_client_port_h, 1
tcp_client_port_h:
	.zero	1
	.global	tcp_client_port_l
	.type	tcp_client_port_l, @object
	.size	tcp_client_port_l, 1
tcp_client_port_l:
	.zero	1
	.global	client_tcp_result_cb
	.p2align	2
	.type	client_tcp_result_cb, @object
	.size	client_tcp_result_cb, 4
client_tcp_result_cb:
	.zero	4
	.global	client_tcp_datafill_cb
	.p2align	2
	.type	client_tcp_datafill_cb, @object
	.size	client_tcp_datafill_cb, 4
client_tcp_datafill_cb:
	.zero	4
	.global	www_fd
	.type	www_fd, @object
	.size	www_fd, 1
www_fd:
	.zero	1
	.global	client_browser_cb
	.p2align	2
	.type	client_browser_cb, @object
	.size	client_browser_cb, 4
client_browser_cb:
	.zero	4
	.global	client_additionalheaderline
	.p2align	2
	.type	client_additionalheaderline, @object
	.size	client_additionalheaderline, 4
client_additionalheaderline:
	.zero	4
	.global	client_postval
	.p2align	2
	.type	client_postval, @object
	.size	client_postval, 4
client_postval:
	.zero	4
	.global	client_urlbuf
	.p2align	2
	.type	client_urlbuf, @object
	.size	client_urlbuf, 4
client_urlbuf:
	.zero	4
	.global	client_urlbuf_var
	.p2align	2
	.type	client_urlbuf_var, @object
	.size	client_urlbuf_var, 4
client_urlbuf_var:
	.zero	4
	.global	client_hoststr
	.p2align	2
	.type	client_hoststr, @object
	.size	client_hoststr, 4
client_hoststr:
	.zero	4
	.global	icmp_cb
	.p2align	2
	.type	icmp_cb, @object
	.size	icmp_cb, 4
icmp_cb:
	.zero	4
	.global	destmacaddr
	.p2align	2
	.type	destmacaddr, @object
	.size	destmacaddr, 6
destmacaddr:
	.zero	6
	.global	waiting_for_dns_mac
	.type	waiting_for_dns_mac, @object
	.size	waiting_for_dns_mac, 1
waiting_for_dns_mac:
	.zero	1
	.global	has_dns_mac
	.type	has_dns_mac, @object
	.size	has_dns_mac, 1
has_dns_mac:
	.zero	1
	.global	waiting_for_dest_mac
	.type	waiting_for_dest_mac, @object
	.size	waiting_for_dest_mac, 1
waiting_for_dest_mac:
	.zero	1
	.global	has_dest_mac
	.type	has_dest_mac, @object
	.size	has_dest_mac, 1
has_dest_mac:
	.zero	1
	.global	gwmacaddr
	.p2align	2
	.type	gwmacaddr, @object
	.size	gwmacaddr, 6
gwmacaddr:
	.zero	6
	.global	waitgwmac
	.type	waitgwmac, @object
	.size	waitgwmac, 1
waitgwmac:
	.zero	1
	.global	info_data_len
	.p2align	1
	.type	info_data_len, @object
	.size	info_data_len, 2
info_data_len:
	.zero	2
	.global	seqnum
	.data
	.type	seqnum, @object
	.size	seqnum, 1
seqnum:
	.byte	10
	.global	result_fd
	.type	result_fd, @object
	.size	result_fd, 1
result_fd:
	.byte	123
	.global	result_ptr
	.section	.bss
	.p2align	2
	.type	result_ptr, @object
	.size	result_ptr, 4
result_ptr:
	.zero	4
	.global	SEQ
	.p2align	2
	.type	SEQ, @object
	.size	SEQ, 4
SEQ:
	.zero	4
	.global	arpreqhdr
	.data
	.p2align	2
	.type	arpreqhdr, @object
	.size	arpreqhdr, 8
arpreqhdr:
	.string	""
	.string	"\001\b"
	.string	"\006\004"
	.ascii	"\001"
	.global	iphdr
	.p2align	2
	.type	iphdr, @object
	.size	iphdr, 9
iphdr:
	.string	"E"
	.string	""
	.string	"\202"
	.string	""
	.string	"@"
	.ascii	" "
	.global	ntpreqhdr
	.p2align	2
	.type	ntpreqhdr, @object
	.size	ntpreqhdr, 10
ntpreqhdr:
	.string	"\343"
	.string	"\004\372"
	.string	"\001"
	.string	""
	.string	""
	.ascii	"\001"
	.global	allOnes
	.p2align	2
	.type	allOnes, @object
	.size	allOnes, 6
allOnes:
	.ascii	"\377\377\377\377\377\377"
	.global	mymac
	.section	.bss
	.p2align	2
	.type	mymac, @object
	.size	mymac, 6
mymac:
	.zero	6
	.global	myip
	.p2align	2
	.type	myip, @object
	.size	myip, 4
myip:
	.zero	4
	.global	netmask
	.p2align	2
	.type	netmask, @object
	.size	netmask, 4
netmask:
	.zero	4
	.global	broadcastip
	.p2align	2
	.type	broadcastip, @object
	.size	broadcastip, 4
broadcastip:
	.zero	4
	.global	gwip
	.p2align	2
	.type	gwip, @object
	.size	gwip, 4
gwip:
	.zero	4
	.global	dhcpip
	.p2align	2
	.type	dhcpip, @object
	.size	dhcpip, 4
dhcpip:
	.zero	4
	.global	dnsip
	.p2align	2
	.type	dnsip, @object
	.size	dnsip, 4
dnsip:
	.zero	4
	.global	hisip
	.p2align	2
	.type	hisip, @object
	.size	hisip, 4
hisip:
	.zero	4
	.global	hisport
	.data
	.p2align	1
	.type	hisport, @object
	.size	hisport, 2
hisport:
	.short	80
	.global	using_dhcp
	.section	.bss
	.type	using_dhcp, @object
	.size	using_dhcp, 1
using_dhcp:
	.zero	1
	.global	persist_tcp_connection
	.data
	.type	persist_tcp_connection, @object
	.size	persist_tcp_connection, 1
persist_tcp_connection:
	.byte	1
	.global	delaycnt
	.section	.bss
	.p2align	1
	.type	delaycnt, @object
	.size	delaycnt, 2
delaycnt:
	.zero	2
	.global	bufferSize
	.p2align	1
	.type	bufferSize, @object
	.size	bufferSize, 2
bufferSize:
	.zero	2
	.global	broadcast_enabled
	.type	broadcast_enabled, @object
	.size	broadcast_enabled, 1
broadcast_enabled:
	.zero	1
	.global	promiscuous_enabled
	.type	promiscuous_enabled, @object
	.size	promiscuous_enabled, 1
promiscuous_enabled:
	.zero	1
	.text
	.p2align	1
	.global	tcpOffset
	.type	tcpOffset, @function
tcpOffset:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:101: uint8_t* tcpOffset () { return gPB + 0x36; } //!< Pointer to the start of TCP payload
	ld.w	r0, [gPB]	# gPB.0_1, gPB
	add.w	r0, 54 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:101: uint8_t* tcpOffset () { return gPB + 0x36; } //!< Pointer to the start of TCP payload
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcpOffset, .-tcpOffset
	.p2align	1
	.global	wtoa
	.type	wtoa, @function
wtoa:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp34, value
	st.s	[r13 + (-4)], r0	# value, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:106:     if (value > 9)
	ld.s	r1, [r13 + (-4)]	# tmp36, value
	mov.w	r0, 9	# tmp37,
	cmp.w	r1, r0	# tmp36, tmp37
	jse	.L4		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:107:         ptr = wtoa(value / 10, ptr);
	ld.s	r0, [r13 + (-4)]	# tmp39, value
	mov.w	r1, 10	# tmp41,
	div.w	r0, r1	# tmp40, tmp41
	zex.s	r1, r0	# _2, _1
	mov.w	r0, sp	# tmp42,
	ld.w	r2, [r13 + (12)]	# tmp43, ptr
	st.w	[r0 + (4)], r2	#, tmp43
	st.w	[r0], r1	#, _2
	call	wtoa		#
	st.w	[r13 + (12)], r0	# ptr,
.L4:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:108:     *ptr = '0' + value % 10;
	ld.s	r0, [r13 + (-4)]	# tmp45, value
	mov.w	r1, 10	# tmp47,
	div.w	r0, r1	# tmp46, tmp47
mov.w	r0, r14	# tmp46
	add.w	r0, 48 #111	# tmp48,
	mov.w	r1, r0	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:108:     *ptr = '0' + value % 10;
	ld.w	r0, [r13 + (12)]	# tmp49, ptr
	st.b	[r0], r1	# *ptr_7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:109:     *++ptr = 0;
	ld.w	r0, [r13 + (12)]	# tmp51, ptr
	add.w	r0, 1 #111	# tmp50,
	st.w	[r13 + (12)], r0	# ptr, tmp50
	ld.w	r0, [r13 + (12)]	# tmp52, ptr
	xor.w	r1, r1	# tmp53
	st.b	[r0], r1	# *ptr_15, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:110:     return ptr;
	ld.w	r0, [r13 + (12)]	# _17, ptr
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:111: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	wtoa, .-wtoa
	.p2align	1
	.global	copyIp
	.type	copyIp, @function
copyIp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:115:     memcpy(dst, src, IP_LEN);
	mov.w	r0, sp	# tmp26,
	mov.w	r1, 4	# tmp27,
	st.w	[r0 + (8)], r1	#, tmp27
	ld.w	r1, [r13 + (12)]	# tmp28, src
	st.w	[r0 + (4)], r1	#, tmp28
	ld.w	r1, [r13 + (8)]	# tmp29, dst
	st.w	[r0], r1	#, tmp29
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:116: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copyIp, .-copyIp
	.p2align	1
	.global	copyMac
	.type	copyMac, @function
copyMac:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:119:     memcpy(dst, src, ETH_LEN);
	mov.w	r0, sp	# tmp26,
	mov.w	r1, 6	# tmp27,
	st.w	[r0 + (8)], r1	#, tmp27
	ld.w	r1, [r13 + (12)]	# tmp28, src
	st.w	[r0 + (4)], r1	#, tmp28
	ld.w	r1, [r13 + (8)]	# tmp29, dst
	st.w	[r0], r1	#, tmp29
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:120: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	copyMac, .-copyMac
	.p2align	1
	.global	setGwIp
	.type	setGwIp, @function
setGwIp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:123:     delaycnt = 0; //request gateway ARP lookup
	xor.w	r0, r0	# tmp26
	st.s	[delaycnt], r0	# delaycnt, tmp26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:124:     waitgwmac = WGW_INITIAL_ARP; // causes an arp request in the packet loop
	mov.b	r0, 1	# tmp27,
	st.b	[waitgwmac], r0	# waitgwmac, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:125:     copyIp(gwip, gwipaddr);
	mov.w	r0, sp	# tmp28,
	ld.w	r1, [r13 + (8)]	# tmp29, gwipaddr
	st.w	[r0 + (4)], r1	#, tmp29
	mov.w	r1, gwip	# tmp30,
	st.w	[r0], r1	#, tmp30
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:126: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	setGwIp, .-setGwIp
	.p2align	1
	.global	updateBroadcastAddress
	.type	updateBroadcastAddress, @function
updateBroadcastAddress:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:130:     for(uint8_t i=0; i<IP_LEN; i++)
	xor.w	r0, r0	# tmp37
	st.b	[r13 + (-1)], r0	# i, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:130:     for(uint8_t i=0; i<IP_LEN; i++)
	j	.L10		#
.L11:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:131:         broadcastip[i] = myip[i] | ~netmask[i];
	ld.b	r0, [r13 + (-1)]	# _1, i
	mov.w	r1, myip	# tmp39,
	add.w	r0, r1 #222	# tmp38, tmp39
	ld.b	r0, [r0]	# _2, myip
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:131:         broadcastip[i] = myip[i] | ~netmask[i];
	ld.b	r1, [r13 + (-1)]	# _4, i
	mov.w	r2, netmask	# tmp41,
	add.w	r1, r2 #222	# tmp40, tmp41
	ld.b	r1, [r1]	# _5, netmask
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:131:         broadcastip[i] = myip[i] | ~netmask[i];
	mov.w	r1, r1	# tmp42, _6
inv.w	r1	# tmp42
	or.w	r0, r1	# tmp43, _7
	mov.w	r1, r0	# _8, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:131:         broadcastip[i] = myip[i] | ~netmask[i];
	ld.b	r0, [r13 + (-1)]	# _9, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:131:         broadcastip[i] = myip[i] | ~netmask[i];
	mov.w	r2, broadcastip	# tmp45,
	add.w	r0, r2 #222	# tmp44, tmp45
	st.b	[r0], r1	# broadcastip, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:130:     for(uint8_t i=0; i<IP_LEN; i++)
	ld.b	r0, [r13 + (-1)]	# i.1_11, i
	add.w	r0, 1 #111	# tmp46,
	st.b	[r13 + (-1)], r0	# i, tmp47
.L10:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:130:     for(uint8_t i=0; i<IP_LEN; i++)
	ld.b	r1, [r13 + (-1)]	# tmp48, i
	mov.w	r0, 3	# tmp49,
	cmp.w	r1, r0	# tmp48, tmp49
	jse	.L11		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:132: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	updateBroadcastAddress, .-updateBroadcastAddress
	.p2align	1
	.global	tcpipBegin
	.type	tcpipBegin, @function
tcpipBegin:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp27, size
	st.s	[r13 + (-4)], r0	# size, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:136:     using_dhcp = false;
	xor.w	r0, r0	# tmp29
	st.b	[using_dhcp], r0	# using_dhcp, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:138:     bufferSize = size;
	ld.s	r0, [r13 + (-4)]	# tmp30, size
	st.s	[bufferSize], r0	# bufferSize, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:139:     gPB = buffer;
	ld.w	r0, [r13 + (12)]	# tmp31, buffer
	st.w	[gPB], r0	# gPB, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:144:     copyMac(mymac, macaddr);
	mov.w	r0, sp	# tmp32,
	ld.w	r1, [r13 + (16)]	# tmp33, macaddr
	st.w	[r0 + (4)], r1	#, tmp33
	mov.w	r1, mymac	# tmp34,
	st.w	[r0], r1	#, tmp34
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:145: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcpipBegin, .-tcpipBegin
	.p2align	1
	.global	staticSetup
	.type	staticSetup, @function
staticSetup:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:151:     using_dhcp = false;
	xor.w	r0, r0	# tmp28
	st.b	[using_dhcp], r0	# using_dhcp, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:153:     if (my_ip != 0)
	ld.w	r1, [r13 + (8)]	# tmp29, my_ip
	xor.w	r0, r0	# tmp30
	cmp.w	r1, r0	# tmp29, tmp30
	jz	.L14		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:154:         copyIp(myip, my_ip);
	mov.w	r0, sp	# tmp31,
	ld.w	r1, [r13 + (8)]	# tmp32, my_ip
	st.w	[r0 + (4)], r1	#, tmp32
	mov.w	r1, myip	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	copyIp		#
.L14:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:155:     if (gw_ip != 0)
	ld.w	r1, [r13 + (12)]	# tmp34, gw_ip
	xor.w	r0, r0	# tmp35
	cmp.w	r1, r0	# tmp34, tmp35
	jz	.L15		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:156:         setGwIp(gw_ip);
	mov.w	r1, sp	# tmp36,
	ld.w	r0, [r13 + (12)]	# tmp37, gw_ip
	st.w	[r1], r0	#, tmp37
	call	setGwIp		#
.L15:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:157:     if (dns_ip != 0)
	ld.w	r1, [r13 + (16)]	# tmp38, dns_ip
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L16		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:158:         copyIp(dnsip, dns_ip);
	mov.w	r0, sp	# tmp40,
	ld.w	r1, [r13 + (16)]	# tmp41, dns_ip
	st.w	[r0 + (4)], r1	#, tmp41
	mov.w	r1, dnsip	# tmp42,
	st.w	[r0], r1	#, tmp42
	call	copyIp		#
.L16:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:159:     if(mask != 0)
	ld.w	r1, [r13 + (20)]	# tmp43, mask
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jz	.L17		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:160:         copyIp(netmask, mask);
	mov.w	r0, sp	# tmp45,
	ld.w	r1, [r13 + (20)]	# tmp46, mask
	st.w	[r0 + (4)], r1	#, tmp46
	mov.w	r1, netmask	# tmp47,
	st.w	[r0], r1	#, tmp47
	call	copyIp		#
.L17:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:161:     updateBroadcastAddress();
	call	updateBroadcastAddress		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:162:     delaycnt = 0; //request gateway ARP lookup
	xor.w	r0, r0	# tmp48
	st.s	[delaycnt], r0	# delaycnt, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:163:     return true;
	mov.b	r0, 1	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:164: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	staticSetup, .-staticSetup
	.p2align	1
	.global	findKeyVal
	.type	findKeyVal, @function
findKeyVal:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp44, maxlen
	st.b	[r13 + (-12)], r0	# maxlen, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:175:     uint8_t found = false;
	xor.w	r0, r0	# tmp46
	st.b	[r13 + (-1)], r0	# found, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:176:     uint8_t i=0;
	xor.w	r0, r0	# tmp47
	st.b	[r13 + (-2)], r0	# i, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:178:     kp=key;
	ld.w	r0, [r13 + (20)]	# tmp48, key
	st.w	[r13 + (-8)], r0	# kp, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	j	.L20		#
.L24:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:180:         if (*str == *kp) {
	ld.w	r0, [r13 + (8)]	# tmp49, str
	ld.b	r1, [r0]	# _1, *str_18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:180:         if (*str == *kp) {
	ld.w	r0, [r13 + (-8)]	# tmp50, kp
	ld.b	r0, [r0]	# _2, *kp_26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:180:         if (*str == *kp) {
	sex.b	r1, r1	# tmp51, _1
	sex.b	r0, r0	# tmp52, _2
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L21		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:181:             kp++;
	ld.w	r0, [r13 + (-8)]	# tmp54, kp
	add.w	r0, 1 #111	# tmp53,
	st.w	[r13 + (-8)], r0	# kp, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:182:             if (*kp == '\0') {
	ld.w	r0, [r13 + (-8)]	# tmp55, kp
	ld.b	r0, [r0]	# _3, *kp_36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:182:             if (*kp == '\0') {
	sex.b	r1, r0	# tmp56, _3
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L22		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:183:                 str++;
	ld.w	r0, [r13 + (8)]	# tmp59, str
	add.w	r0, 1 #111	# tmp58,
	st.w	[r13 + (8)], r0	# str, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:184:                 kp=key;
	ld.w	r0, [r13 + (20)]	# tmp60, key
	st.w	[r13 + (-8)], r0	# kp, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:185:                 if (*str == '=') {
	ld.w	r0, [r13 + (8)]	# tmp61, str
	ld.b	r0, [r0]	# _4, *str_37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:185:                 if (*str == '=') {
	sex.b	r1, r0	# tmp62, _4
	mov.w	r0, 61	# tmp63,
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L22		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:186:                     found = true;
	mov.b	r0, 1	# tmp64,
	st.b	[r13 + (-1)], r0	# found, tmp64
	j	.L22		#
.L21:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:190:             kp=key;
	ld.w	r0, [r13 + (20)]	# tmp65, key
	st.w	[r13 + (-8)], r0	# kp, tmp65
.L22:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:192:         str++;
	ld.w	r0, [r13 + (8)]	# tmp67, str
	add.w	r0, 1 #111	# tmp66,
	st.w	[r13 + (8)], r0	# str, tmp66
.L20:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	ld.w	r0, [r13 + (8)]	# tmp68, str
	ld.b	r0, [r0]	# _5, *str_18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	sex.b	r1, r0	# tmp69, _5
	xor.w	r0, r0	# tmp70
	cmp.w	r1, r0	# tmp69, tmp70
	jz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	ld.w	r0, [r13 + (8)]	# tmp71, str
	ld.b	r0, [r0]	# _6, *str_18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	sex.b	r1, r0	# tmp72, _6
	mov.w	r0, 32	# tmp73,
	cmp.w	r1, r0	# tmp72, tmp73
	jz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	ld.w	r0, [r13 + (8)]	# tmp74, str
	ld.b	r0, [r0]	# _7, *str_18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	sex.b	r1, r0	# tmp75, _7
	mov.w	r0, 10	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jz	.L23		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:179:     while(*str &&  *str!=' ' && *str!='\n' && !found) {
	ld.b	r1, [r13 + (-1)]	# tmp77, found
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jz	.L24		#
.L23:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:194:     if (found) {
	ld.b	r1, [r13 + (-1)]	# tmp79, found
	xor.w	r0, r0	# tmp80
	cmp.w	r1, r0	# tmp79, tmp80
	jz	.L25		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	j	.L26		#
.L28:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:197:             *strbuf=*str;
	ld.w	r0, [r13 + (8)]	# tmp81, str
	ld.b	r1, [r0]	# _8, *str_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:197:             *strbuf=*str;
	ld.w	r0, [r13 + (12)]	# tmp82, strbuf
	st.b	[r0], r1	# *strbuf_20, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:198:             i++;
	ld.b	r0, [r13 + (-2)]	# i.2_9, i
	add.w	r0, 1 #111	# tmp83,
	st.b	[r13 + (-2)], r0	# i, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:199:             str++;
	ld.w	r0, [r13 + (8)]	# tmp86, str
	add.w	r0, 1 #111	# tmp85,
	st.w	[r13 + (8)], r0	# str, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:200:             strbuf++;
	ld.w	r0, [r13 + (12)]	# tmp88, strbuf
	add.w	r0, 1 #111	# tmp87,
	st.w	[r13 + (12)], r0	# strbuf, tmp87
.L26:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.w	r0, [r13 + (8)]	# tmp89, str
	ld.b	r0, [r0]	# _10, *str_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	sex.b	r1, r0	# tmp90, _10
	xor.w	r0, r0	# tmp91
	cmp.w	r1, r0	# tmp90, tmp91
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.w	r0, [r13 + (8)]	# tmp92, str
	ld.b	r0, [r0]	# _11, *str_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	sex.b	r1, r0	# tmp93, _11
	mov.w	r0, 32	# tmp94,
	cmp.w	r1, r0	# tmp93, tmp94
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.w	r0, [r13 + (8)]	# tmp95, str
	ld.b	r0, [r0]	# _12, *str_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	sex.b	r1, r0	# tmp96, _12
	mov.w	r0, 10	# tmp97,
	cmp.w	r1, r0	# tmp96, tmp97
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.w	r0, [r13 + (8)]	# tmp98, str
	ld.b	r0, [r0]	# _13, *str_19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	sex.b	r1, r0	# tmp99, _13
	mov.w	r0, 38	# tmp100,
	cmp.w	r1, r0	# tmp99, tmp100
	jz	.L27		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.b	r1, [r13 + (-2)]	# _14, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	ld.b	r0, [r13 + (-12)]	# _15, maxlen
	add.w	r0, -1 #111	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:196:         while(*str &&  *str!=' ' && *str!='\n' && *str!='&' && i<maxlen-1) {
	cmp.w	r1, r0	# _14, _16
	jss	.L28		#
.L27:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:202:         *strbuf='\0';
	ld.w	r0, [r13 + (12)]	# tmp101, strbuf
	xor.w	r1, r1	# tmp102
	st.b	[r0], r1	# *strbuf_20, tmp102
.L25:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:205:     return(i);
	ld.b	r0, [r13 + (-2)]	# _48, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:206: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	findKeyVal, .-findKeyVal
	.p2align	1
	.global	h2int
	.type	h2int, @function
h2int:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp37, c
	st.b	[r13 + (-4)], r0	# c, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:211:     if (isdigit(c)) {
	ld.b	r1, [r13 + (-4)]	#, c
	sex.b	r0, r1	# _1,
	mov.w	r1, r0	# _2, _1
	add.w	r1, -48 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:211:     if (isdigit(c)) {
	mov.w	r0, 9	# tmp39,
	cmp.w	r1, r0	# _2, tmp39
	jg	.L31		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:212:         return((unsigned char)c - '0');
	ld.b	r0, [r13 + (-4)]	# c.3_3, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:212:         return((unsigned char)c - '0');
	add.w	r0, -48 #111	# tmp40,
	j	.L32		#
.L31:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:214:     else if (islower(c)) {
	ld.b	r1, [r13 + (-4)]	#, c
	sex.b	r0, r1	# _4,
	mov.w	r1, sp	# tmp41,
	st.w	[r1], r0	#, _4
	call	islower		#
	mov.w	r1, r0	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:214:     else if (islower(c)) {
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# _5, tmp42
	jz	.L33		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:215:         return((unsigned char)c - 'a' + 10);
	ld.b	r0, [r13 + (-4)]	# c.4_6, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:215:         return((unsigned char)c - 'a' + 10);
	add.w	r0, -87 #111	# tmp43,
	j	.L32		#
.L33:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:217:     else if (isupper(c)) {
	ld.b	r1, [r13 + (-4)]	#, c
	sex.b	r0, r1	# _7,
	mov.w	r1, sp	# tmp44,
	st.w	[r1], r0	#, _7
	call	isupper		#
	mov.w	r1, r0	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:217:     else if (isupper(c)) {
	xor.w	r0, r0	# tmp45
	cmp.w	r1, r0	# _8, tmp45
	jz	.L34		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:218:         return((unsigned char)c - 'A' + 10);
	ld.b	r0, [r13 + (-4)]	# c.5_9, c
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:218:         return((unsigned char)c - 'A' + 10);
	add.w	r0, -55 #111	# tmp46,
	j	.L32		#
.L34:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:220:     return(0);
	xor.w	r0, r0	# _10
.L32:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:221: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	h2int, .-h2int
	.p2align	1
	.global	urlDecode
	.type	urlDecode, @function
urlDecode:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	sub.w	sp, 32 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:227:     char *dst = urlbuf;
	ld.w	r0, [r13 + (8)]	# tmp36, urlbuf
	st.w	[r13 + (-12)], r0	# dst, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:228:     while ((c = *urlbuf) != 0) {
	j	.L36		#
.L39:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:229:         if (c == '+') c = ' ';
	ld.b	r0, [r13 + (-5)]	#, c
	sex.b	r1, r0	# tmp37,
	mov.w	r0, 43	# tmp38,
	cmp.w	r1, r0	# tmp37, tmp38
	jnz	.L37		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:229:         if (c == '+') c = ' ';
	mov.b	r0, 32	# tmp39,
	st.b	[r13 + (-5)], r0	# c, tmp39
.L37:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:230:         if (c == '%') {
	ld.b	r0, [r13 + (-5)]	#, c
	sex.b	r1, r0	# tmp40,
	mov.w	r0, 37	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jnz	.L38		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:231:             c = *++urlbuf;
	ld.w	r0, [r13 + (8)]	# tmp43, urlbuf
	add.w	r0, 1 #111	# tmp42,
	st.w	[r13 + (8)], r0	# urlbuf, tmp42
	ld.w	r0, [r13 + (8)]	# tmp44, urlbuf
	ld.b	r0, [r0]	# tmp45, *urlbuf_24
	st.b	[r13 + (-5)], r0	# c, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	ld.b	r1, [r13 + (-5)]	#, c
	sex.b	r0, r1	# _1,
	mov.w	r1, sp	# tmp46,
	st.w	[r1], r0	#, _1
	call	h2int		#
	zex.b	r0, r0	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	mov.w	r1, 4	# tmp47,
	shl.w	r0, r1	# _4, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	mov.w	r6, r0	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	ld.w	r0, [r13 + (8)]	# tmp49, urlbuf
	add.w	r0, 1 #111	# tmp48,
	st.w	[r13 + (8)], r0	# urlbuf, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	ld.w	r0, [r13 + (8)]	# tmp50, urlbuf
	ld.b	r0, [r0]	# _6, *urlbuf_27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	sex.b	r0, r0	# _7, _6
	mov.w	r1, sp	# tmp51,
	st.w	[r1], r0	#, _7
	call	h2int		#
	mov.w	r1, r0	# _9, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:232:             c = (h2int(c) << 4) | h2int(*++urlbuf);
	mov.w	r0, r6	# tmp52,
	or.w	r0, r1	# tmp52, _9
	st.b	[r13 + (-5)], r0	# c, tmp53
.L38:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:234:         *dst++ = c;
	ld.w	r0, [r13 + (-12)]	# dst.6_10, dst
	mov.w	r1, r0	# tmp54, dst.6_10
	add.w	r1, 1 #111	# tmp54,
	st.w	[r13 + (-12)], r1	# dst, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:234:         *dst++ = c;
	ld.b	r1, [r13 + (-5)]	# tmp55, c
	st.b	[r0], r1	# *dst.6_10, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:235:         urlbuf++;
	ld.w	r0, [r13 + (8)]	# tmp57, urlbuf
	add.w	r0, 1 #111	# tmp56,
	st.w	[r13 + (8)], r0	# urlbuf, tmp56
.L36:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:228:     while ((c = *urlbuf) != 0) {
	ld.w	r0, [r13 + (8)]	# tmp58, urlbuf
	ld.b	r0, [r0]	# tmp59, *urlbuf_12
	st.b	[r13 + (-5)], r0	# c, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:228:     while ((c = *urlbuf) != 0) {
	ld.b	r0, [r13 + (-5)]	#, c
	sex.b	r1, r0	# tmp60,
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jnz	.L39		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:237:     *dst = '\0';
	ld.w	r0, [r13 + (-12)]	# tmp62, dst
	xor.w	r1, r1	# tmp63
	st.b	[r0], r1	# *dst_15, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:238: }
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 4 #111	#,
	mov.w	sp, r12	#,
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	urlDecode, .-urlDecode
	.p2align	1
	.global	int2h
	.type	int2h, @function
int2h:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp48, c
	st.b	[r13 + (-4)], r0	# c, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:244:     hstr[1]=(c & 0xf)+'0';
	ld.b	r0, [r13 + (-4)]	# c.7_1, c
	mov.w	r1, 15	# tmp51,
	and.w	r0, r1	# tmp50, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:244:     hstr[1]=(c & 0xf)+'0';
	add.w	r0, 48 #111	# tmp52,
	mov.w	r1, r0	# _3, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:244:     hstr[1]=(c & 0xf)+'0';
	ld.w	r0, [r13 + (12)]	# tmp53, hstr
	add.w	r0, 1 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:244:     hstr[1]=(c & 0xf)+'0';
	st.b	[r0], r1	# *_4, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:245:     if ((c & 0xf) >9) {
	ld.b	r0, [r13 + (-4)]	# c.8_6, c
	zex.b	r1, r0	# _7, c.8_6
	mov.w	r0, 15	# tmp54,
	and.w	r1, r0	# _8, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:245:     if ((c & 0xf) >9) {
	mov.w	r0, 9	# tmp55,
	cmp.w	r1, r0	# _8, tmp55
	jses	.L41		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:246:         hstr[1]=(c & 0xf) - 10 + 'a';
	ld.b	r0, [r13 + (-4)]	# c.9_9, c
	mov.w	r1, 15	# tmp57,
	and.w	r0, r1	# tmp56, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:246:         hstr[1]=(c & 0xf) - 10 + 'a';
	add.w	r0, 87 #111	# tmp58,
	mov.w	r1, r0	# _11, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:246:         hstr[1]=(c & 0xf) - 10 + 'a';
	ld.w	r0, [r13 + (12)]	# tmp59, hstr
	add.w	r0, 1 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:246:         hstr[1]=(c & 0xf) - 10 + 'a';
	st.b	[r0], r1	# *_12, _13
.L41:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:248:     c=(c>>4)&0xf;
	ld.b	r0, [r13 + (-4)]	# c.10_14, c
	zex.b	r0, r0	# tmp60, c.10_14
	mov.w	r1, 4	# tmp62,
	shr.w	r0, r1	# tmp61, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:248:     c=(c>>4)&0xf;
	st.b	[r13 + (-4)], r0	# c, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:249:     hstr[0]=c+'0';
	ld.b	r0, [r13 + (-4)]	# c.11_16, c
	add.w	r0, 48 #111	# tmp63,
	mov.w	r1, r0	# _18, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:249:     hstr[0]=c+'0';
	ld.w	r0, [r13 + (12)]	# tmp64, hstr
	st.b	[r0], r1	# *hstr_26(D), _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:250:     if (c > 9) {
	ld.b	r0, [r13 + (-4)]	#, c
	sex.b	r1, r0	# tmp65,
	mov.w	r0, 9	# tmp66,
	cmp.w	r1, r0	# tmp65, tmp66
	jses	.L42		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:251:         hstr[0]=c - 10 + 'a';
	ld.b	r0, [r13 + (-4)]	# c.12_19, c
	add.w	r0, 87 #111	# tmp67,
	mov.w	r1, r0	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:251:         hstr[0]=c - 10 + 'a';
	ld.w	r0, [r13 + (12)]	# tmp68, hstr
	st.b	[r0], r1	# *hstr_26(D), _21
.L42:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:253:     hstr[2]='\0';
	ld.w	r0, [r13 + (12)]	# tmp69, hstr
	add.w	r0, 2 #111	# _22,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:253:     hstr[2]='\0';
	xor.w	r1, r1	# tmp70
	st.b	[r0], r1	# *_22, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:254: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	int2h, .-int2h
	.p2align	1
	.global	urlEncode
	.type	urlEncode, @function
urlEncode:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:261:     while ((c = *str) != 0) {
	j	.L44		#
.L48:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:262:         if (c == ' '||isalnum(c)) {
	ld.b	r0, [r13 + (-1)]	#, c
	sex.b	r1, r0	# tmp29,
	mov.w	r0, 32	# tmp30,
	cmp.w	r1, r0	# tmp29, tmp30
	jz	.L45		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:262:         if (c == ' '||isalnum(c)) {
	ld.b	r1, [r13 + (-1)]	#, c
	sex.b	r0, r1	# _1,
	mov.w	r1, sp	# tmp31,
	st.w	[r1], r0	#, _1
	call	isalnum		#
	mov.w	r1, r0	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:262:         if (c == ' '||isalnum(c)) {
	xor.w	r0, r0	# tmp32
	cmp.w	r1, r0	# _2, tmp32
	jz	.L46		#
.L45:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:263:             if (c == ' ') {
	ld.b	r0, [r13 + (-1)]	#, c
	sex.b	r1, r0	# tmp33,
	mov.w	r0, 32	# tmp34,
	cmp.w	r1, r0	# tmp33, tmp34
	jnz	.L47		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:264:                 c = '+';
	mov.b	r0, 43	# tmp35,
	st.b	[r13 + (-1)], r0	# c, tmp35
.L47:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:266:             *urlbuf=c;
	ld.w	r0, [r13 + (12)]	# tmp36, urlbuf
	ld.b	r1, [r13 + (-1)]	# tmp37, c
	st.b	[r0], r1	# *urlbuf_5, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:267:             str++;
	ld.w	r0, [r13 + (8)]	# tmp39, str
	add.w	r0, 1 #111	# tmp38,
	st.w	[r13 + (8)], r0	# str, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:268:             urlbuf++;
	ld.w	r0, [r13 + (12)]	# tmp41, urlbuf
	add.w	r0, 1 #111	# tmp40,
	st.w	[r13 + (12)], r0	# urlbuf, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:269:             continue;
	j	.L44		#
.L46:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:271:         *urlbuf='%';
	ld.w	r0, [r13 + (12)]	# tmp42, urlbuf
	mov.b	r1, 37	# tmp43,
	st.b	[r0], r1	# *urlbuf_5, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:272:         urlbuf++;
	ld.w	r0, [r13 + (12)]	# tmp45, urlbuf
	add.w	r0, 1 #111	# tmp44,
	st.w	[r13 + (12)], r0	# urlbuf, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:273:         int2h(c,urlbuf);
	ld.b	r0, [r13 + (-1)]	#, c
	sex.b	r1, r0	# _3,
	mov.w	r0, sp	# tmp46,
	ld.w	r2, [r13 + (12)]	# tmp47, urlbuf
	st.w	[r0 + (4)], r2	#, tmp47
	st.w	[r0], r1	#, _3
	call	int2h		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:274:         urlbuf++;
	ld.w	r0, [r13 + (12)]	# tmp49, urlbuf
	add.w	r0, 1 #111	# tmp48,
	st.w	[r13 + (12)], r0	# urlbuf, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:275:         urlbuf++;
	ld.w	r0, [r13 + (12)]	# tmp51, urlbuf
	add.w	r0, 1 #111	# tmp50,
	st.w	[r13 + (12)], r0	# urlbuf, tmp50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:276:         str++;
	ld.w	r0, [r13 + (8)]	# tmp53, str
	add.w	r0, 1 #111	# tmp52,
	st.w	[r13 + (8)], r0	# str, tmp52
.L44:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:261:     while ((c = *str) != 0) {
	ld.w	r0, [r13 + (8)]	# tmp54, str
	ld.b	r0, [r0]	# tmp55, *str_4
	st.b	[r13 + (-1)], r0	# c, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:261:     while ((c = *str) != 0) {
	ld.b	r0, [r13 + (-1)]	#, c
	sex.b	r1, r0	# tmp56,
	xor.w	r0, r0	# tmp57
	cmp.w	r1, r0	# tmp56, tmp57
	jnz	.L48		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:278:     *urlbuf='\0';
	ld.w	r0, [r13 + (12)]	# tmp58, urlbuf
	xor.w	r1, r1	# tmp59
	st.b	[r0], r1	# *urlbuf_5, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:279: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	urlEncode, .-urlEncode
	.p2align	1
	.global	parseIp
	.type	parseIp, @function
parseIp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:284:     uint8_t res = 1;
	mov.b	r0, 1	# tmp37,
	st.b	[r13 + (-1)], r0	# res, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:285:     for (uint8_t i = 0; i < IP_LEN; ++i)
	xor.w	r0, r0	# tmp38
	st.b	[r13 + (-2)], r0	# i, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:285:     for (uint8_t i = 0; i < IP_LEN; ++i)
	j	.L50		#
.L56:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:287:         uint8_tstr[i] = atoi(str) & 0xFF;
	mov.w	r1, sp	# tmp39,
	ld.w	r0, [r13 + (12)]	# tmp40, str
	st.w	[r1], r0	#, tmp40
	call	atoi		#
	mov.w	r2, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:287:         uint8_tstr[i] = atoi(str) & 0xFF;
	ld.b	r1, [r13 + (-2)]	# _2, i
	ld.w	r0, [r13 + (8)]	# tmp41, uint8_tstr
	add.w	r0, r1 #222	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:287:         uint8_tstr[i] = atoi(str) & 0xFF;
	mov.w	r1, r2	# _4, _1
	st.b	[r0], r1	# *_3, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:288:         for (; *str != '\0'; ++str)
	j	.L51		#
.L55:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:290:             if (*str == '.')
	ld.w	r0, [r13 + (12)]	# tmp42, str
	ld.b	r0, [r0]	# _5, *str_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:290:             if (*str == '.')
	sex.b	r1, r0	# tmp43, _5
	mov.w	r0, 46	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L52		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:292:                 ++str;
	ld.w	r0, [r13 + (12)]	# tmp46, str
	add.w	r0, 1 #111	# tmp45,
	st.w	[r13 + (12)], r0	# str, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:293:                 break;
	j	.L53		#
.L52:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:295:             else if (!isdigit(*str))
	ld.w	r0, [r13 + (12)]	# tmp47, str
	ld.b	r0, [r0]	# _6, *str_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:295:             else if (!isdigit(*str))
	sex.b	r0, r0	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:295:             else if (!isdigit(*str))
	mov.w	r1, r0	# _8, _7
	add.w	r1, -48 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:295:             else if (!isdigit(*str))
	mov.w	r0, 9	# tmp48,
	cmp.w	r1, r0	# _8, tmp48
	jse	.L54		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:297:                 res = 0;
	xor.w	r0, r0	# tmp49
	st.b	[r13 + (-1)], r0	# res, tmp49
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:298:                 break;
	j	.L53		#
.L54:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:288:         for (; *str != '\0'; ++str)
	ld.w	r0, [r13 + (12)]	# tmp51, str
	add.w	r0, 1 #111	# tmp50,
	st.w	[r13 + (12)], r0	# str, tmp50
.L51:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:288:         for (; *str != '\0'; ++str)
	ld.w	r0, [r13 + (12)]	# tmp52, str
	ld.b	r0, [r0]	# _9, *str_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:288:         for (; *str != '\0'; ++str)
	sex.b	r1, r0	# tmp53, _9
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jnz	.L55		#
.L53:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:285:     for (uint8_t i = 0; i < IP_LEN; ++i)
	ld.b	r0, [r13 + (-2)]	# tmp55, i
	add.w	r0, 1 #111	# tmp56,
	st.b	[r13 + (-2)], r0	# i, tmp57
.L50:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:285:     for (uint8_t i = 0; i < IP_LEN; ++i)
	ld.b	r1, [r13 + (-2)]	# tmp58, i
	mov.w	r0, 3	# tmp59,
	cmp.w	r1, r0	# tmp58, tmp59
	jse	.L56		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:302:     return res;
	ld.b	r0, [r13 + (-1)]	# _21, res
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:303: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	parseIp, .-parseIp
	.p2align	1
	.global	fill_checksum
	.type	fill_checksum, @function
fill_checksum:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r3, [r13 + (8)]	# tmp59, dest
	ld.w	r2, [r13 + (12)]	# tmp61, off
	ld.w	r1, [r13 + (16)]	# tmp63, len
	ld.w	r0, [r13 + (20)]	# tmp65, type
	st.b	[r13 + (-16)], r3	# dest, tmp60
	st.b	[r13 + (-20)], r2	# off, tmp62
	st.s	[r13 + (-24)], r1	# len, tmp64
	st.b	[r13 + (-28)], r0	# type, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:306:      uint8_t* ptr = gPB + off;
	ld.w	r0, [gPB]	# gPB.13_1, gPB
	ld.b	r1, [r13 + (-20)]	# _2, off
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:306:      uint8_t* ptr = gPB + off;
	add.w	r0, r1 #222	# tmp67, _2
	st.w	[r13 + (-4)], r0	# ptr, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:307:     uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
	ld.b	r1, [r13 + (-28)]	# tmp68, type
	mov.w	r0, 1	# tmp69,
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L59		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:307:     uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
	ld.s	r0, [r13 + (-24)]	# _3, len
	add.w	r0, 9 #111	# _4,
	j	.L60		#
.L59:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:307:     uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
	ld.b	r1, [r13 + (-28)]	# tmp70, type
	mov.w	r0, 2	# tmp71,
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L61		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:308:                    type==2 ? IP_PROTO_TCP_V+len-8 : 0;
	ld.s	r0, [r13 + (-24)]	# _5, len
	add.w	r0, -2 #111	# _6,
	j	.L60		#
.L61:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:307:     uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
	xor.w	r0, r0	# iftmp.15_39
.L60:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:307:     uint32_t sum = type==1 ? IP_PROTO_UDP_V+len-8 :
	st.w	[r13 + (-8)], r0	# sum, iftmp.15_39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:309:     while(len >1) {
	j	.L63		#
.L64:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	ld.w	r0, [r13 + (-4)]	# tmp72, ptr
	ld.b	r0, [r0]	# _7, *ptr_34
	zex.b	r0, r0	# tmp73, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	mov.w	r1, 8	# tmp75,
	shl.w	r0, r1	# tmp74, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	ld.w	r1, [r13 + (-4)]	# tmp76, ptr
	add.w	r1, 1 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	ld.b	r1, [r1]	# _11, *_10
	zex.b	r1, r1	# tmp77, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	or.w	r0, r1	# tmp78, _12
	zex.s	r1, r0	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:310:         sum += (uint16_t) (((uint32_t)*ptr<<8)|*(ptr+1));
	ld.w	r0, [r13 + (-8)]	# tmp80, sum
	add.w	r0, r1 #222	# tmp79, _14
	st.w	[r13 + (-8)], r0	# sum, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:311:         ptr+=2;
	ld.w	r0, [r13 + (-4)]	# tmp82, ptr
	add.w	r0, 2 #111	# tmp81,
	st.w	[r13 + (-4)], r0	# ptr, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:312:         len-=2;
	ld.s	r0, [r13 + (-24)]	# tmp83, len
	add.w	r0, -2 #111	# tmp84,
	st.s	[r13 + (-24)], r0	# len, tmp85
.L63:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:309:     while(len >1) {
	ld.s	r1, [r13 + (-24)]	# tmp86, len
	mov.w	r0, 1	# tmp87,
	cmp.w	r1, r0	# tmp86, tmp87
	jg	.L64		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:314:     if (len)
	ld.s	r1, [r13 + (-24)]	# tmp88, len
	xor.w	r0, r0	# tmp89
	cmp.w	r1, r0	# tmp88, tmp89
	jz	.L66		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:315:         sum += ((uint32_t)*ptr)<<8;
	ld.w	r0, [r13 + (-4)]	# tmp90, ptr
	ld.b	r0, [r0]	# _15, *ptr_34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:315:         sum += ((uint32_t)*ptr)<<8;
	zex.b	r1, r0	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:315:         sum += ((uint32_t)*ptr)<<8;
	mov.w	r0, 8	# tmp91,
	shl.w	r1, r0	# _17, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:315:         sum += ((uint32_t)*ptr)<<8;
	ld.w	r0, [r13 + (-8)]	# tmp93, sum
	add.w	r0, r1 #222	# tmp92, _17
	st.w	[r13 + (-8)], r0	# sum, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:316:     while (sum>>16)
	j	.L66		#
.L67:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:317:         sum = (uint16_t) sum + (sum >> 16);
	ld.w	r0, [r13 + (-8)]	# tmp94, sum
	zex.s	r0, r0	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:317:         sum = (uint16_t) sum + (sum >> 16);
	ld.w	r1, [r13 + (-8)]	# tmp95, sum
	mov.w	r2, 16	# tmp96,
	shr.w	r1, r2	# _20, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:317:         sum = (uint16_t) sum + (sum >> 16);
	add.w	r0, r1 #222	# tmp97, _20
	st.w	[r13 + (-8)], r0	# sum, tmp97
.L66:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:316:     while (sum>>16)
	ld.w	r1, [r13 + (-8)]	# tmp98, sum
	mov.w	r0, 16	# tmp99,
	shr.w	r1, r0	# _21, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:316:     while (sum>>16)
	xor.w	r0, r0	# tmp100
	cmp.w	r1, r0	# _21, tmp100
	jnz	.L67		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:318:     uint16_t ck = ~ (uint16_t) sum;
	ld.w	r0, [r13 + (-8)]	# tmp101, sum
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:318:     uint16_t ck = ~ (uint16_t) sum;
	mov.w	r0, r0	# tmp102, _22
inv.w	r0	# tmp102
	st.s	[r13 + (-10)], r0	# ck, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:319:     gPB[dest] = ck>>8;
	ld.s	r0, [r13 + (-10)]	# tmp104, ck
	mov.w	r1, 8	# tmp106,
	shr.w	r0, r1	# tmp105, tmp106
	mov.w	r1, r0	# _23, tmp105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:319:     gPB[dest] = ck>>8;
	ld.w	r0, [gPB]	# gPB.16_24, gPB
	ld.b	r2, [r13 + (-16)]	# _25, dest
	add.w	r0, r2 #222	# _26, _25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:319:     gPB[dest] = ck>>8;
	st.b	[r0], r1	# *_26, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:320:     gPB[dest+1] = ck;
	ld.w	r0, [gPB]	# gPB.17_28, gPB
	ld.b	r1, [r13 + (-16)]	# _29, dest
	add.w	r1, 1 #111	# _30,
	add.w	r0, r1 #222	# _31, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:320:     gPB[dest+1] = ck;
	ld.s	r1, [r13 + (-10)]	# tmp107, ck
	st.b	[r0], r1	# *_31, _32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:321: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	fill_checksum, .-fill_checksum
	.p2align	1
	.global	setMACs
	.type	setMACs, @function
setMACs:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:324:     copyMac(gPB + ETH_DST_MAC, mac);
	ld.w	r1, [gPB]	# gPB.18_1, gPB
	mov.w	r0, sp	# tmp29,
	ld.w	r2, [r13 + (8)]	# tmp30, mac
	st.w	[r0 + (4)], r2	#, tmp30
	st.w	[r0], r1	#, gPB.18_1
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:325:     copyMac(gPB + ETH_SRC_MAC, mymac);
	ld.w	r0, [gPB]	# gPB.19_2, gPB
	mov.w	r1, r0	# _3, gPB.19_2
	add.w	r1, 6 #111	# _3,
	mov.w	r0, sp	# tmp31,
	mov.w	r2, mymac	# tmp32,
	st.w	[r0 + (4)], r2	#, tmp32
	st.w	[r0], r1	#, _3
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:326: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	setMACs, .-setMACs
	.p2align	1
	.global	setMACandIPs
	.type	setMACandIPs, @function
setMACandIPs:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:329:     setMACs(mac);
	mov.w	r1, sp	# tmp30,
	ld.w	r0, [r13 + (8)]	# tmp31, mac
	st.w	[r1], r0	#, tmp31
	call	setMACs		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:330:     copyIp(gPB + IP_DST_P, dst);
	ld.w	r0, [gPB]	# gPB.20_1, gPB
	mov.w	r1, r0	# _2, gPB.20_1
	add.w	r1, 30 #111	# _2,
	mov.w	r0, sp	# tmp32,
	ld.w	r2, [r13 + (12)]	# tmp33, dst
	st.w	[r0 + (4)], r2	#, tmp33
	st.w	[r0], r1	#, _2
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:331:     copyIp(gPB + IP_SRC_P, myip);
	ld.w	r0, [gPB]	# gPB.21_3, gPB
	mov.w	r1, r0	# _4, gPB.21_3
	add.w	r1, 26 #111	# _4,
	mov.w	r0, sp	# tmp34,
	mov.w	r2, myip	# tmp35,
	st.w	[r0 + (4)], r2	#, tmp35
	st.w	[r0], r1	#, _4
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:332: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	setMACandIPs, .-setMACandIPs
	.p2align	1
	.global	check_ip_message_is_from
	.type	check_ip_message_is_from, @function
check_ip_message_is_from:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:335:     return memcmp(gPB + IP_SRC_P, ip, IP_LEN) == 0;
	ld.w	r0, [gPB]	# gPB.22_1, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:335:     return memcmp(gPB + IP_SRC_P, ip, IP_LEN) == 0;
	mov.w	r1, r0	# _2, gPB.22_1
	add.w	r1, 26 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:335:     return memcmp(gPB + IP_SRC_P, ip, IP_LEN) == 0;
	mov.w	r0, sp	# tmp32,
	mov.w	r2, 4	# tmp33,
	st.w	[r0 + (8)], r2	#, tmp33
	ld.w	r2, [r13 + (8)]	# tmp34, ip
	st.w	[r0 + (4)], r2	#, tmp34
	st.w	[r0], r1	#, _2
	call	memcmp		#
	mov.w	r2, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:335:     return memcmp(gPB + IP_SRC_P, ip, IP_LEN) == 0;
	mov.b	r0, 1	# _4,
	xor.w	r1, r1	# tmp35
	cmp.w	r2, r1	# _3, tmp35
	jz	.L71		#
	xor.w	r0, r0	# _4
.L71:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:336: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	check_ip_message_is_from, .-check_ip_message_is_from
	.p2align	1
	.global	is_lan
	.type	is_lan, @function
is_lan:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:339:     if(source[0] == 0 || destination[0] == 0) {
	ld.w	r0, [r13 + (8)]	# tmp39, source
	ld.b	r0, [r0]	# _1, *source_15(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:339:     if(source[0] == 0 || destination[0] == 0) {
	zex.b	r1, r0	# tmp40, _1
	xor.w	r0, r0	# tmp41
	cmp.w	r1, r0	# tmp40, tmp41
	jz	.L74		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:339:     if(source[0] == 0 || destination[0] == 0) {
	ld.w	r0, [r13 + (12)]	# tmp42, destination
	ld.b	r0, [r0]	# _2, *destination_16(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:339:     if(source[0] == 0 || destination[0] == 0) {
	zex.b	r1, r0	# tmp43, _2
	xor.w	r0, r0	# tmp44
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L75		#
.L74:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:340:         return false;
	xor.w	r0, r0	# _13
	j	.L76		#
.L75:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:342:     for(int i = 0; i < IP_LEN; i++)
	xor.w	r0, r0	# tmp45
	st.w	[r13 + (-4)], r0	# i, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:342:     for(int i = 0; i < IP_LEN; i++)
	j	.L77		#
.L79:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	ld.w	r1, [r13 + (-4)]	# i.23_3, i
	ld.w	r0, [r13 + (8)]	# tmp46, source
	add.w	r0, r1 #222	# _4, i.23_3
	ld.b	r0, [r0]	# _5, *_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	ld.w	r2, [r13 + (-4)]	# i.24_6, i
	ld.w	r1, [r13 + (12)]	# tmp47, destination
	add.w	r1, r2 #222	# _7, i.24_6
	ld.b	r1, [r1]	# _8, *_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	xor.w	r0, r1	# tmp48, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	ld.w	r1, [r13 + (-4)]	# tmp50, i
	mov.w	r2, netmask	# tmp51,
	add.w	r1, r2 #222	# tmp49, tmp51
	ld.b	r1, [r1]	# _10, netmask
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	and.w	r0, r1	# tmp52, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:343:         if((source[i] & netmask[i]) != (destination[i] & netmask[i])) {
	zex.b	r1, r0	# tmp53, _11
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L78		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:344:             return false;
	xor.w	r0, r0	# _13
	j	.L76		#
.L78:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:342:     for(int i = 0; i < IP_LEN; i++)
	ld.w	r0, [r13 + (-4)]	# tmp56, i
	add.w	r0, 1 #111	# tmp55,
	st.w	[r13 + (-4)], r0	# i, tmp55
.L77:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:342:     for(int i = 0; i < IP_LEN; i++)
	ld.w	r1, [r13 + (-4)]	# tmp57, i
	mov.w	r0, 3	# tmp58,
	cmp.w	r1, r0	# tmp57, tmp58
	jses	.L79		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:346:     return true;
	mov.b	r0, 1	# _13,
.L76:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:347: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	is_lan, .-is_lan
	.p2align	1
	.global	eth_type_is_arp_and_my_ip
	.type	eth_type_is_arp_and_my_ip, @function
eth_type_is_arp_and_my_ip:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp38, len
	st.s	[r13 + (-4)], r0	# len, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:352:            gPB[ETH_TYPE_L_P] == ETHTYPE_ARP_L_V &&
	ld.s	r1, [r13 + (-4)]	# tmp40, len
	mov.w	r0, 40	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jse	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:351:     return len >= 41 && gPB[ETH_TYPE_H_P] == ETHTYPE_ARP_H_V &&
	ld.w	r0, [gPB]	# gPB.26_1, gPB
	add.w	r0, 12 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:351:     return len >= 41 && gPB[ETH_TYPE_H_P] == ETHTYPE_ARP_H_V &&
	zex.b	r1, r0	# tmp42, _3
	mov.w	r0, 8	# tmp43,
	cmp.w	r1, r0	# tmp42, tmp43
	jnz	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:352:            gPB[ETH_TYPE_L_P] == ETHTYPE_ARP_L_V &&
	ld.w	r0, [gPB]	# gPB.27_4, gPB
	add.w	r0, 13 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:351:     return len >= 41 && gPB[ETH_TYPE_H_P] == ETHTYPE_ARP_H_V &&
	zex.b	r1, r0	# tmp44, _6
	mov.w	r0, 6	# tmp45,
	cmp.w	r1, r0	# tmp44, tmp45
	jnz	.L81		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:353:            memcmp(gPB + ETH_ARP_DST_IP_P, myip, IP_LEN) == 0;
	ld.w	r0, [gPB]	# gPB.28_7, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:353:            memcmp(gPB + ETH_ARP_DST_IP_P, myip, IP_LEN) == 0;
	mov.w	r1, r0	# _8, gPB.28_7
	add.w	r1, 38 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:353:            memcmp(gPB + ETH_ARP_DST_IP_P, myip, IP_LEN) == 0;
	mov.w	r0, sp	# tmp46,
	mov.w	r2, 4	# tmp47,
	st.w	[r0 + (8)], r2	#, tmp47
	mov.w	r2, myip	# tmp48,
	st.w	[r0 + (4)], r2	#, tmp48
	st.w	[r0], r1	#, _8
	call	memcmp		#
	mov.w	r1, r0	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:352:            gPB[ETH_TYPE_L_P] == ETHTYPE_ARP_L_V &&
	xor.w	r0, r0	# tmp49
	cmp.w	r1, r0	# _9, tmp49
	jnz	.L81		#
	mov.w	r0, 1	# iftmp.25_10,
	j	.L82		#
.L81:
	xor.w	r0, r0	# iftmp.25_10
.L82:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:354: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_type_is_arp_and_my_ip, .-eth_type_is_arp_and_my_ip
	.p2align	1
	.global	eth_type_is_ip_and_my_ip
	.type	eth_type_is_ip_and_my_ip, @function
eth_type_is_ip_and_my_ip:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp47, len
	st.s	[r13 + (-4)], r0	# len, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:359:            gPB[IP_HEADER_LEN_VER_P] == 0x45 &&
	ld.s	r1, [r13 + (-4)]	# tmp49, len
	mov.w	r0, 41	# tmp50,
	cmp.w	r1, r0	# tmp49, tmp50
	jse	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:357:     return len >= 42 && gPB[ETH_TYPE_H_P] == ETHTYPE_IP_H_V &&
	ld.w	r0, [gPB]	# gPB.30_1, gPB
	add.w	r0, 12 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:357:     return len >= 42 && gPB[ETH_TYPE_H_P] == ETHTYPE_IP_H_V &&
	zex.b	r1, r0	# tmp51, _3
	mov.w	r0, 8	# tmp52,
	cmp.w	r1, r0	# tmp51, tmp52
	jnz	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:358:            gPB[ETH_TYPE_L_P] == ETHTYPE_IP_L_V &&
	ld.w	r0, [gPB]	# gPB.31_4, gPB
	add.w	r0, 13 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:357:     return len >= 42 && gPB[ETH_TYPE_H_P] == ETHTYPE_IP_H_V &&
	zex.b	r1, r0	# tmp53, _6
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jnz	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:359:            gPB[IP_HEADER_LEN_VER_P] == 0x45 &&
	ld.w	r0, [gPB]	# gPB.32_7, gPB
	add.w	r0, 14 #111	# _8,
	ld.b	r0, [r0]	# _9, *_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:358:            gPB[ETH_TYPE_L_P] == ETHTYPE_IP_L_V &&
	zex.b	r1, r0	# tmp55, _9
	mov.w	r0, 69	# tmp56,
	cmp.w	r1, r0	# tmp55, tmp56
	jnz	.L85		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:360:            (memcmp(gPB + IP_DST_P, myip, IP_LEN) == 0  //not my IP
	ld.w	r0, [gPB]	# gPB.33_10, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:360:            (memcmp(gPB + IP_DST_P, myip, IP_LEN) == 0  //not my IP
	mov.w	r1, r0	# _11, gPB.33_10
	add.w	r1, 30 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:360:            (memcmp(gPB + IP_DST_P, myip, IP_LEN) == 0  //not my IP
	mov.w	r0, sp	# tmp57,
	mov.w	r2, 4	# tmp58,
	st.w	[r0 + (8)], r2	#, tmp58
	mov.w	r2, myip	# tmp59,
	st.w	[r0 + (4)], r2	#, tmp59
	st.w	[r0], r1	#, _11
	call	memcmp		#
	mov.w	r1, r0	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:359:            gPB[IP_HEADER_LEN_VER_P] == 0x45 &&
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# _12, tmp60
	jz	.L86		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:361:             || (memcmp(gPB + IP_DST_P, broadcastip, IP_LEN) == 0) //not subnet broadcast
	ld.w	r0, [gPB]	# gPB.34_13, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:361:             || (memcmp(gPB + IP_DST_P, broadcastip, IP_LEN) == 0) //not subnet broadcast
	mov.w	r1, r0	# _14, gPB.34_13
	add.w	r1, 30 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:361:             || (memcmp(gPB + IP_DST_P, broadcastip, IP_LEN) == 0) //not subnet broadcast
	mov.w	r0, sp	# tmp61,
	mov.w	r2, 4	# tmp62,
	st.w	[r0 + (8)], r2	#, tmp62
	mov.w	r2, broadcastip	# tmp63,
	st.w	[r0 + (4)], r2	#, tmp63
	st.w	[r0], r1	#, _14
	call	memcmp		#
	mov.w	r1, r0	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:361:             || (memcmp(gPB + IP_DST_P, broadcastip, IP_LEN) == 0) //not subnet broadcast
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# _15, tmp64
	jz	.L86		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:362:             || (memcmp(gPB + IP_DST_P, allOnes, IP_LEN) == 0)); //not global broadcasts
	ld.w	r0, [gPB]	# gPB.35_16, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:362:             || (memcmp(gPB + IP_DST_P, allOnes, IP_LEN) == 0)); //not global broadcasts
	mov.w	r1, r0	# _17, gPB.35_16
	add.w	r1, 30 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:362:             || (memcmp(gPB + IP_DST_P, allOnes, IP_LEN) == 0)); //not global broadcasts
	mov.w	r0, sp	# tmp65,
	mov.w	r2, 4	# tmp66,
	st.w	[r0 + (8)], r2	#, tmp66
	mov.w	r2, allOnes	# tmp67,
	st.w	[r0 + (4)], r2	#, tmp67
	st.w	[r0], r1	#, _17
	call	memcmp		#
	mov.w	r1, r0	# _18,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:362:             || (memcmp(gPB + IP_DST_P, allOnes, IP_LEN) == 0)); //not global broadcasts
	xor.w	r0, r0	# tmp68
	cmp.w	r1, r0	# _18, tmp68
	jnz	.L85		#
.L86:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:359:            gPB[IP_HEADER_LEN_VER_P] == 0x45 &&
	mov.w	r0, 1	# iftmp.29_19,
	j	.L87		#
.L85:
	xor.w	r0, r0	# iftmp.29_19
.L87:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:364: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	eth_type_is_ip_and_my_ip, .-eth_type_is_ip_and_my_ip
	.p2align	1
	.global	fill_ip_hdr_checksum
	.type	fill_ip_hdr_checksum, @function
fill_ip_hdr_checksum:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:367:     gPB[IP_CHECKSUM_P] = 0;
	ld.w	r0, [gPB]	# gPB.36_1, gPB
	add.w	r0, 24 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:367:     gPB[IP_CHECKSUM_P] = 0;
	xor.w	r1, r1	# tmp36
	st.b	[r0], r1	# *_2, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:368:     gPB[IP_CHECKSUM_P+1] = 0;
	ld.w	r0, [gPB]	# gPB.37_3, gPB
	add.w	r0, 25 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:368:     gPB[IP_CHECKSUM_P+1] = 0;
	xor.w	r1, r1	# tmp37
	st.b	[r0], r1	# *_4, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:369:     gPB[IP_FLAGS_P] = 0x40; // don't fragment
	ld.w	r0, [gPB]	# gPB.38_5, gPB
	add.w	r0, 20 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:369:     gPB[IP_FLAGS_P] = 0x40; // don't fragment
	mov.b	r1, 64	# tmp38,
	st.b	[r0], r1	# *_6, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:370:     gPB[IP_FLAGS_P+1] = 0;  // fragment offset
	ld.w	r0, [gPB]	# gPB.39_7, gPB
	add.w	r0, 21 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:370:     gPB[IP_FLAGS_P+1] = 0;  // fragment offset
	xor.w	r1, r1	# tmp39
	st.b	[r0], r1	# *_8, tmp39
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:371:     gPB[IP_TTL_P] = 64; // ttl
	ld.w	r0, [gPB]	# gPB.40_9, gPB
	add.w	r0, 22 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:371:     gPB[IP_TTL_P] = 64; // ttl
	mov.b	r1, 64	# tmp40,
	st.b	[r0], r1	# *_10, tmp40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:372:     fill_checksum(IP_CHECKSUM_P, IP_P, IP_HEADER_LEN,0);
	mov.w	r0, sp	# tmp41,
	xor.w	r1, r1	# tmp42
	st.w	[r0 + (12)], r1	#, tmp42
	mov.w	r1, 20	# tmp43,
	st.w	[r0 + (8)], r1	#, tmp43
	mov.w	r1, 14	# tmp44,
	st.w	[r0 + (4)], r1	#, tmp44
	mov.w	r1, 24	# tmp45,
	st.w	[r0], r1	#, tmp45
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:373: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	fill_ip_hdr_checksum, .-fill_ip_hdr_checksum
	.p2align	1
	.global	make_eth_ip
	.type	make_eth_ip, @function
make_eth_ip:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:376:     setMACs(gPB + ETH_SRC_MAC);
	ld.w	r0, [gPB]	# gPB.41_1, gPB
	add.w	r0, 6 #111	# _2,
	mov.w	r1, sp	# tmp34,
	st.w	[r1], r0	#, _2
	call	setMACs		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:377:     copyIp(gPB + IP_DST_P, gPB + IP_SRC_P);
	ld.w	r0, [gPB]	# gPB.42_3, gPB
	mov.w	r1, r0	# _4, gPB.42_3
	add.w	r1, 30 #111	# _4,
	ld.w	r0, [gPB]	# gPB.43_5, gPB
	mov.w	r2, r0	# _6, gPB.43_5
	add.w	r2, 26 #111	# _6,
	mov.w	r0, sp	# tmp35,
	st.w	[r0 + (4)], r2	#, _6
	st.w	[r0], r1	#, _4
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:378:     copyIp(gPB + IP_SRC_P, myip);
	ld.w	r0, [gPB]	# gPB.44_7, gPB
	mov.w	r1, r0	# _8, gPB.44_7
	add.w	r1, 26 #111	# _8,
	mov.w	r0, sp	# tmp36,
	mov.w	r2, myip	# tmp37,
	st.w	[r0 + (4)], r2	#, tmp37
	st.w	[r0], r1	#, _8
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:379:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:380: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_eth_ip, .-make_eth_ip
	.p2align	1
	.global	step_seq
	.type	step_seq, @function
step_seq:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 12 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp50, rel_ack_num
	ld.w	r0, [r13 + (12)]	# tmp52, cp_seq
	st.s	[r13 + (-8)], r1	# rel_ack_num, tmp51
	st.b	[r13 + (-12)], r0	# cp_seq, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:385:     i = 4;
	mov.b	r0, 4	# tmp54,
	st.b	[r13 + (-1)], r0	# i, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:386:     while(i>0) {
	j	.L92		#
.L95:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:387:         rel_ack_num = gPB[TCP_SEQ_H_P+i-1]+rel_ack_num;
	ld.w	r0, [gPB]	# gPB.45_1, gPB
	ld.b	r1, [r13 + (-1)]	# _2, i
	add.w	r1, 37 #111	# _3,
	add.w	r0, r1 #222	# _4, _3
	ld.b	r0, [r0]	# _5, *_4
	zex.b	r0, r0	# tmp55, _5
	mov.w	r1, r0	# _6, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:387:         rel_ack_num = gPB[TCP_SEQ_H_P+i-1]+rel_ack_num;
	ld.s	r0, [r13 + (-8)]	# tmp56, rel_ack_num
	add.w	r0, r1 #222	# tmp57, tmp58
	st.s	[r13 + (-8)], r0	# rel_ack_num, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:388:         tseq = gPB[TCP_SEQACK_H_P+i-1];
	ld.w	r0, [gPB]	# gPB.46_7, gPB
	ld.b	r1, [r13 + (-1)]	# _8, i
	add.w	r1, 41 #111	# _9,
	add.w	r0, r1 #222	# _10, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:388:         tseq = gPB[TCP_SEQACK_H_P+i-1];
	ld.b	r0, [r0]	# tmp60, *_10
	st.b	[r13 + (-2)], r0	# tseq, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:389:         gPB[TCP_SEQACK_H_P+i-1] = rel_ack_num;
	ld.w	r0, [gPB]	# gPB.47_11, gPB
	ld.b	r1, [r13 + (-1)]	# _12, i
	add.w	r1, 41 #111	# _13,
	add.w	r0, r1 #222	# _14, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:389:         gPB[TCP_SEQACK_H_P+i-1] = rel_ack_num;
	ld.s	r1, [r13 + (-8)]	# tmp61, rel_ack_num
	st.b	[r0], r1	# *_14, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:390:         if (cp_seq)
	ld.b	r1, [r13 + (-12)]	# tmp62, cp_seq
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jz	.L93		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:391:             gPB[TCP_SEQ_H_P+i-1] = tseq;
	ld.w	r0, [gPB]	# gPB.48_16, gPB
	ld.b	r1, [r13 + (-1)]	# _17, i
	add.w	r1, 37 #111	# _18,
	add.w	r0, r1 #222	# _19, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:391:             gPB[TCP_SEQ_H_P+i-1] = tseq;
	ld.b	r1, [r13 + (-2)]	# tmp64, tseq
	st.b	[r0], r1	# *_19, tmp64
	j	.L94		#
.L93:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:393:             gPB[TCP_SEQ_H_P+i-1] = 0; // some preset value
	ld.w	r0, [gPB]	# gPB.49_20, gPB
	ld.b	r1, [r13 + (-1)]	# _21, i
	add.w	r1, 37 #111	# _22,
	add.w	r0, r1 #222	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:393:             gPB[TCP_SEQ_H_P+i-1] = 0; // some preset value
	xor.w	r1, r1	# tmp65
	st.b	[r0], r1	# *_23, tmp65
.L94:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:394:         rel_ack_num = rel_ack_num>>8;
	ld.s	r0, [r13 + (-8)]	# tmp66, rel_ack_num
	mov.w	r1, 8	# tmp68,
	shr.w	r0, r1	# tmp67, tmp68
	st.s	[r13 + (-8)], r0	# rel_ack_num, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:395:         i--;
	ld.b	r0, [r13 + (-1)]	# i.50_24, i
	add.w	r0, -1 #111	# tmp70,
	st.b	[r13 + (-1)], r0	# i, tmp71
.L92:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:386:     while(i>0) {
	ld.b	r1, [r13 + (-1)]	# tmp72, i
	xor.w	r0, r0	# tmp73
	cmp.w	r1, r0	# tmp72, tmp73
	jnz	.L95		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:397: }
	nop	
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	step_seq, .-step_seq
	.p2align	1
	.global	make_tcphead
	.type	make_tcphead, @function
make_tcphead:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp48, rel_ack_num
	ld.w	r0, [r13 + (12)]	# tmp50, cp_seq
	st.s	[r13 + (-8)], r1	# rel_ack_num, tmp49
	st.b	[r13 + (-12)], r0	# cp_seq, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:400:     uint8_t i = gPB[TCP_DST_PORT_H_P];
	ld.w	r0, [gPB]	# gPB.51_1, gPB
	ld.b	r0, [r0 + (36)]	# tmp52, MEM[(uint8_t *)gPB.51_1 + 36B]
	st.b	[r13 + (-1)], r0	# i, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:401:     gPB[TCP_DST_PORT_H_P] = gPB[TCP_SRC_PORT_H_P];
	ld.w	r1, [gPB]	# gPB.52_2, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:401:     gPB[TCP_DST_PORT_H_P] = gPB[TCP_SRC_PORT_H_P];
	ld.w	r0, [gPB]	# gPB.53_3, gPB
	add.w	r0, 36 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:401:     gPB[TCP_DST_PORT_H_P] = gPB[TCP_SRC_PORT_H_P];
	ld.b	r1, [r1 + (34)]	# _5, MEM[(uint8_t *)gPB.52_2 + 34B]
	st.b	[r0], r1	# *_4, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:402:     gPB[TCP_SRC_PORT_H_P] = i;
	ld.w	r0, [gPB]	# gPB.54_6, gPB
	add.w	r0, 34 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:402:     gPB[TCP_SRC_PORT_H_P] = i;
	ld.b	r1, [r13 + (-1)]	# tmp53, i
	st.b	[r0], r1	# *_7, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:403:     uint8_t j = gPB[TCP_DST_PORT_L_P];
	ld.w	r0, [gPB]	# gPB.55_8, gPB
	ld.b	r0, [r0 + (37)]	# tmp54, MEM[(uint8_t *)gPB.55_8 + 37B]
	st.b	[r13 + (-2)], r0	# j, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:404:     gPB[TCP_DST_PORT_L_P] = gPB[TCP_SRC_PORT_L_P];
	ld.w	r1, [gPB]	# gPB.56_9, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:404:     gPB[TCP_DST_PORT_L_P] = gPB[TCP_SRC_PORT_L_P];
	ld.w	r0, [gPB]	# gPB.57_10, gPB
	add.w	r0, 37 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:404:     gPB[TCP_DST_PORT_L_P] = gPB[TCP_SRC_PORT_L_P];
	ld.b	r1, [r1 + (35)]	# _12, MEM[(uint8_t *)gPB.56_9 + 35B]
	st.b	[r0], r1	# *_11, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:405:     gPB[TCP_SRC_PORT_L_P] = j;
	ld.w	r0, [gPB]	# gPB.58_13, gPB
	add.w	r0, 35 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:405:     gPB[TCP_SRC_PORT_L_P] = j;
	ld.b	r1, [r13 + (-2)]	# tmp55, j
	st.b	[r0], r1	# *_14, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:406:     step_seq(rel_ack_num,cp_seq);
	ld.s	r1, [r13 + (-8)]	# _15, rel_ack_num
	ld.b	r2, [r13 + (-12)]	# _16, cp_seq
	mov.w	r0, sp	# tmp56,
	st.w	[r0 + (4)], r2	#, _16
	st.w	[r0], r1	#, _15
	call	step_seq		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:407:     gPB[TCP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.59_17, gPB
	add.w	r0, 50 #111	# _18,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:407:     gPB[TCP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp57
	st.b	[r0], r1	# *_18, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:408:     gPB[TCP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.60_19, gPB
	add.w	r0, 51 #111	# _20,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:408:     gPB[TCP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp58
	st.b	[r0], r1	# *_20, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:409:     gPB[TCP_HEADER_LEN_P] = 0x50;
	ld.w	r0, [gPB]	# gPB.61_21, gPB
	add.w	r0, 46 #111	# _22,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:409:     gPB[TCP_HEADER_LEN_P] = 0x50;
	mov.b	r1, 80	# tmp59,
	st.b	[r0], r1	# *_22, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:410: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_tcphead, .-make_tcphead
	.p2align	1
	.global	make_arp_answer_from_request
	.type	make_arp_answer_from_request, @function
make_arp_answer_from_request:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:413:     setMACs(gPB + ETH_SRC_MAC);
	ld.w	r0, [gPB]	# gPB.62_1, gPB
	add.w	r0, 6 #111	# _2,
	mov.w	r1, sp	# tmp45,
	st.w	[r1], r0	#, _2
	call	setMACs		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:414:     gPB[ETH_ARP_OPCODE_H_P] = ETH_ARP_OPCODE_REPLY_H_V;
	ld.w	r0, [gPB]	# gPB.63_3, gPB
	add.w	r0, 20 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:414:     gPB[ETH_ARP_OPCODE_H_P] = ETH_ARP_OPCODE_REPLY_H_V;
	xor.w	r1, r1	# tmp46
	st.b	[r0], r1	# *_4, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:415:     gPB[ETH_ARP_OPCODE_L_P] = ETH_ARP_OPCODE_REPLY_L_V;
	ld.w	r0, [gPB]	# gPB.64_5, gPB
	add.w	r0, 21 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:415:     gPB[ETH_ARP_OPCODE_L_P] = ETH_ARP_OPCODE_REPLY_L_V;
	mov.b	r1, 2	# tmp47,
	st.b	[r0], r1	# *_6, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:416:     copyMac(gPB + ETH_ARP_DST_MAC_P, gPB + ETH_ARP_SRC_MAC_P);
	ld.w	r0, [gPB]	# gPB.65_7, gPB
	mov.w	r1, r0	# _8, gPB.65_7
	add.w	r1, 32 #111	# _8,
	ld.w	r0, [gPB]	# gPB.66_9, gPB
	mov.w	r2, r0	# _10, gPB.66_9
	add.w	r2, 22 #111	# _10,
	mov.w	r0, sp	# tmp48,
	st.w	[r0 + (4)], r2	#, _10
	st.w	[r0], r1	#, _8
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:417:     copyMac(gPB + ETH_ARP_SRC_MAC_P, mymac);
	ld.w	r0, [gPB]	# gPB.67_11, gPB
	mov.w	r1, r0	# _12, gPB.67_11
	add.w	r1, 22 #111	# _12,
	mov.w	r0, sp	# tmp49,
	mov.w	r2, mymac	# tmp50,
	st.w	[r0 + (4)], r2	#, tmp50
	st.w	[r0], r1	#, _12
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:418:     copyIp(gPB + ETH_ARP_DST_IP_P, gPB + ETH_ARP_SRC_IP_P);
	ld.w	r0, [gPB]	# gPB.68_13, gPB
	mov.w	r1, r0	# _14, gPB.68_13
	add.w	r1, 38 #111	# _14,
	ld.w	r0, [gPB]	# gPB.69_15, gPB
	mov.w	r2, r0	# _16, gPB.69_15
	add.w	r2, 28 #111	# _16,
	mov.w	r0, sp	# tmp51,
	st.w	[r0 + (4)], r2	#, _16
	st.w	[r0], r1	#, _14
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:419:     copyIp(gPB + ETH_ARP_SRC_IP_P, myip);
	ld.w	r0, [gPB]	# gPB.70_17, gPB
	mov.w	r1, r0	# _18, gPB.70_17
	add.w	r1, 28 #111	# _18,
	mov.w	r0, sp	# tmp52,
	mov.w	r2, myip	# tmp53,
	st.w	[r0 + (4)], r2	#, tmp53
	st.w	[r0], r1	#, _18
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:420:     enc28j60PacketSend(42, gPB);
	ld.w	r1, [gPB]	# gPB.71_19, gPB
	mov.w	r0, sp	# tmp54,
	st.w	[r0 + (4)], r1	#, gPB.71_19
	mov.w	r1, 42	# tmp55,
	st.w	[r0], r1	#, tmp55
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:422: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_arp_answer_from_request, .-make_arp_answer_from_request
	.p2align	1
	.global	make_echo_reply_from_request
	.type	make_echo_reply_from_request, @function
make_echo_reply_from_request:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp43, len
	st.s	[r13 + (-4)], r0	# len, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:425:     make_eth_ip();
	call	make_eth_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:426:     gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREPLY_V;
	ld.w	r0, [gPB]	# gPB.72_1, gPB
	add.w	r0, 34 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:426:     gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREPLY_V;
	xor.w	r1, r1	# tmp45
	st.b	[r0], r1	# *_2, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:427:     if (gPB[ICMP_CHECKSUM_P] > (0xFF-0x08))
	ld.w	r0, [gPB]	# gPB.73_3, gPB
	add.w	r0, 36 #111	# _4,
	ld.b	r0, [r0]	# _5, *_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:427:     if (gPB[ICMP_CHECKSUM_P] > (0xFF-0x08))
	zex.b	r1, r0	# tmp46, _5
	mov.w	r0, 247	# tmp47,
	cmp.w	r1, r0	# tmp46, tmp47
	jse	.L99		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:428:         gPB[ICMP_CHECKSUM_P+1]++;
	ld.w	r0, [gPB]	# gPB.74_6, gPB
	add.w	r0, 37 #111	# _7,
	ld.b	r1, [r0]	# _8, *_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:428:         gPB[ICMP_CHECKSUM_P+1]++;
	add.w	r1, 1 #111	# tmp48,
	st.b	[r0], r1	# *_7, _10
.L99:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:429:     gPB[ICMP_CHECKSUM_P] += 0x08;
	ld.w	r0, [gPB]	# gPB.75_11, gPB
	add.w	r0, 36 #111	# _12,
	ld.b	r1, [r0]	# _13, *_12
	ld.w	r0, [gPB]	# gPB.76_14, gPB
	add.w	r0, 36 #111	# _15,
	add.w	r1, 8 #111	# tmp49,
	st.b	[r0], r1	# *_15, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:430:     enc28j60PacketSend(len, gPB);
	ld.s	r1, [r13 + (-4)]	# _17, len
	ld.w	r2, [gPB]	# gPB.77_18, gPB
	mov.w	r0, sp	# tmp50,
	st.w	[r0 + (4)], r2	#, gPB.77_18
	st.w	[r0], r1	#, _17
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:432: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_echo_reply_from_request, .-make_echo_reply_from_request
	.p2align	1
	.global	makeUdpReply
	.type	makeUdpReply, @function
makeUdpReply:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r1, [r13 + (12)]	# tmp73, datalen
	ld.w	r0, [r13 + (16)]	# tmp75, port
	st.b	[r13 + (-4)], r1	# datalen, tmp74
	st.s	[r13 + (-8)], r0	# port, tmp76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:435:     if (datalen>220)
	ld.b	r1, [r13 + (-4)]	# tmp77, datalen
	mov.w	r0, 220	# tmp78,
	cmp.w	r1, r0	# tmp77, tmp78
	jse	.L101		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:436:         datalen = 220;
	mov.b	r0, -36	# tmp79,
	st.b	[r13 + (-4)], r0	# datalen, tmp79
.L101:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:437:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >>8;
	ld.b	r0, [r13 + (-4)]	# _1, datalen
	mov.w	r1, r0	# _2, _1
	add.w	r1, 28 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:437:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >>8;
	mov.w	r0, 8	# tmp80,
	shr.w	r1, r0	# _3, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:437:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >>8;
	ld.w	r0, [gPB]	# gPB.78_4, gPB
	add.w	r0, 16 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:437:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >>8;
	st.b	[r0], r1	# *_5, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:438:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	ld.w	r0, [gPB]	# gPB.79_7, gPB
	add.w	r0, 17 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:438:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	ld.b	r1, [r13 + (-4)]	# tmp81, datalen
	add.w	r1, 28 #111	# tmp82,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:438:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	st.b	[r0], r1	# *_8, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:439:     make_eth_ip();
	call	make_eth_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:440:     gPB[UDP_DST_PORT_H_P] = gPB[UDP_SRC_PORT_H_P];
	ld.w	r1, [gPB]	# gPB.80_10, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:440:     gPB[UDP_DST_PORT_H_P] = gPB[UDP_SRC_PORT_H_P];
	ld.w	r0, [gPB]	# gPB.81_11, gPB
	add.w	r0, 36 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:440:     gPB[UDP_DST_PORT_H_P] = gPB[UDP_SRC_PORT_H_P];
	ld.b	r1, [r1 + (34)]	# _13, MEM[(uint8_t *)gPB.80_10 + 34B]
	st.b	[r0], r1	# *_12, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:441:     gPB[UDP_DST_PORT_L_P] = gPB[UDP_SRC_PORT_L_P];
	ld.w	r1, [gPB]	# gPB.82_14, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:441:     gPB[UDP_DST_PORT_L_P] = gPB[UDP_SRC_PORT_L_P];
	ld.w	r0, [gPB]	# gPB.83_15, gPB
	add.w	r0, 37 #111	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:441:     gPB[UDP_DST_PORT_L_P] = gPB[UDP_SRC_PORT_L_P];
	ld.b	r1, [r1 + (35)]	# _17, MEM[(uint8_t *)gPB.82_14 + 35B]
	st.b	[r0], r1	# *_16, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:442:     gPB[UDP_SRC_PORT_H_P] = port>>8;
	ld.s	r0, [r13 + (-8)]	# tmp83, port
	mov.w	r1, 8	# tmp85,
	shr.w	r0, r1	# tmp84, tmp85
	mov.w	r1, r0	# _18, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:442:     gPB[UDP_SRC_PORT_H_P] = port>>8;
	ld.w	r0, [gPB]	# gPB.84_19, gPB
	add.w	r0, 34 #111	# _20,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:442:     gPB[UDP_SRC_PORT_H_P] = port>>8;
	st.b	[r0], r1	# *_20, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:443:     gPB[UDP_SRC_PORT_L_P] = port;
	ld.w	r0, [gPB]	# gPB.85_22, gPB
	add.w	r0, 35 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:443:     gPB[UDP_SRC_PORT_L_P] = port;
	ld.s	r1, [r13 + (-8)]	# tmp86, port
	st.b	[r0], r1	# *_23, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:444:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >> 8;
	ld.b	r0, [r13 + (-4)]	# _25, datalen
	mov.w	r1, r0	# _26, _25
	add.w	r1, 8 #111	# _26,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:444:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >> 8;
	mov.w	r0, 8	# tmp87,
	shr.w	r1, r0	# _27, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:444:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >> 8;
	ld.w	r0, [gPB]	# gPB.86_28, gPB
	add.w	r0, 38 #111	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:444:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >> 8;
	st.b	[r0], r1	# *_29, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:445:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	ld.w	r0, [gPB]	# gPB.87_31, gPB
	add.w	r0, 39 #111	# _32,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:445:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	ld.b	r1, [r13 + (-4)]	# tmp88, datalen
	add.w	r1, 8 #111	# tmp89,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:445:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	st.b	[r0], r1	# *_32, _33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:446:     gPB[UDP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.88_34, gPB
	add.w	r0, 40 #111	# _35,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:446:     gPB[UDP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp90
	st.b	[r0], r1	# *_35, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:447:     gPB[UDP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.89_36, gPB
	add.w	r0, 41 #111	# _37,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:447:     gPB[UDP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp91
	st.b	[r0], r1	# *_37, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:448:     memcpy(gPB + UDP_DATA_P, data, datalen);
	ld.w	r0, [gPB]	# gPB.90_38, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:448:     memcpy(gPB + UDP_DATA_P, data, datalen);
	mov.w	r1, r0	# _39, gPB.90_38
	add.w	r1, 42 #111	# _39,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:448:     memcpy(gPB + UDP_DATA_P, data, datalen);
	ld.b	r2, [r13 + (-4)]	# _40, datalen
	mov.w	r0, sp	# tmp92,
	st.w	[r0 + (8)], r2	#, _40
	ld.w	r2, [r13 + (8)]	# tmp93, data
	st.w	[r0 + (4)], r2	#, tmp93
	st.w	[r0], r1	#, _39
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:449:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
	ld.b	r0, [r13 + (-4)]	# tmp94, datalen
	add.w	r0, 16 #111	# tmp95,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:449:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
	zex.s	r1, r0	# _43, _42
	mov.w	r0, sp	# tmp96,
	mov.w	r2, 1	# tmp97,
	st.w	[r0 + (12)], r2	#, tmp97
	st.w	[r0 + (8)], r1	#, _43
	mov.w	r1, 26	# tmp98,
	st.w	[r0 + (4)], r1	#, tmp98
	mov.w	r1, 40	# tmp99,
	st.w	[r0], r1	#, tmp99
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:450:     enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
	ld.b	r0, [r13 + (-4)]	# tmp100, datalen
	add.w	r0, 42 #111	# tmp101,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:450:     enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
	zex.s	r1, r0	# _46, _45
	ld.w	r2, [gPB]	# gPB.91_47, gPB
	mov.w	r0, sp	# tmp102,
	st.w	[r0 + (4)], r2	#, gPB.91_47
	st.w	[r0], r1	#, _46
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:452: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	makeUdpReply, .-makeUdpReply
	.p2align	1
	.global	make_tcp_synack_from_syn
	.type	make_tcp_synack_from_syn, @function
make_tcp_synack_from_syn:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:455:     gPB[IP_TOTLEN_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.92_1, gPB
	add.w	r0, 16 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:455:     gPB[IP_TOTLEN_H_P] = 0;
	xor.w	r1, r1	# tmp58
	st.b	[r0], r1	# *_2, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:456:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4;
	ld.w	r0, [gPB]	# gPB.93_3, gPB
	add.w	r0, 17 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:456:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4;
	mov.b	r1, 44	# tmp59,
	st.b	[r0], r1	# *_4, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:457:     make_eth_ip();
	call	make_eth_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:458:     gPB[TCP_FLAGS_P] = TCP_FLAGS_SYNACK_V;
	ld.w	r0, [gPB]	# gPB.94_5, gPB
	add.w	r0, 47 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:458:     gPB[TCP_FLAGS_P] = TCP_FLAGS_SYNACK_V;
	mov.b	r1, 18	# tmp60,
	st.b	[r0], r1	# *_6, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:459:     make_tcphead(1,0);
	mov.w	r0, sp	# tmp61,
	xor.w	r1, r1	# tmp62
	st.w	[r0 + (4)], r1	#, tmp62
	mov.w	r1, 1	# tmp63,
	st.w	[r0], r1	#, tmp63
	call	make_tcphead		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:460:     gPB[TCP_SEQ_H_P+0] = 0;
	ld.w	r0, [gPB]	# gPB.95_7, gPB
	add.w	r0, 38 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:460:     gPB[TCP_SEQ_H_P+0] = 0;
	xor.w	r1, r1	# tmp64
	st.b	[r0], r1	# *_8, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:461:     gPB[TCP_SEQ_H_P+1] = 0;
	ld.w	r0, [gPB]	# gPB.96_9, gPB
	add.w	r0, 39 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:461:     gPB[TCP_SEQ_H_P+1] = 0;
	xor.w	r1, r1	# tmp65
	st.b	[r0], r1	# *_10, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:462:     gPB[TCP_SEQ_H_P+2] = seqnum;
	ld.w	r0, [gPB]	# gPB.97_11, gPB
	add.w	r0, 40 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:462:     gPB[TCP_SEQ_H_P+2] = seqnum;
	ld.b	r1, [seqnum]	# seqnum.98_13, seqnum
	st.b	[r0], r1	# *_12, seqnum.98_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:463:     gPB[TCP_SEQ_H_P+3] = 0;
	ld.w	r0, [gPB]	# gPB.99_14, gPB
	add.w	r0, 41 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:463:     gPB[TCP_SEQ_H_P+3] = 0;
	xor.w	r1, r1	# tmp66
	st.b	[r0], r1	# *_15, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:464:     seqnum += 3;
	ld.b	r0, [seqnum]	# seqnum.100_16, seqnum
	add.w	r0, 3 #111	# tmp67,
	st.b	[seqnum], r0	# seqnum, _17
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:465:     gPB[TCP_OPTIONS_P] = 2;
	ld.w	r0, [gPB]	# gPB.101_18, gPB
	add.w	r0, 54 #111	# _19,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:465:     gPB[TCP_OPTIONS_P] = 2;
	mov.b	r1, 2	# tmp68,
	st.b	[r0], r1	# *_19, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:466:     gPB[TCP_OPTIONS_P+1] = 4;
	ld.w	r0, [gPB]	# gPB.102_20, gPB
	add.w	r0, 55 #111	# _21,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:466:     gPB[TCP_OPTIONS_P+1] = 4;
	mov.b	r1, 4	# tmp69,
	st.b	[r0], r1	# *_21, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:467:     gPB[TCP_OPTIONS_P+2] = 0x05;
	ld.w	r0, [gPB]	# gPB.103_22, gPB
	add.w	r0, 56 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:467:     gPB[TCP_OPTIONS_P+2] = 0x05;
	mov.b	r1, 5	# tmp70,
	st.b	[r0], r1	# *_23, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:468:     gPB[TCP_OPTIONS_P+3] = 0x0;
	ld.w	r0, [gPB]	# gPB.104_24, gPB
	add.w	r0, 57 #111	# _25,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:468:     gPB[TCP_OPTIONS_P+3] = 0x0;
	xor.w	r1, r1	# tmp71
	st.b	[r0], r1	# *_25, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:469:     gPB[TCP_HEADER_LEN_P] = 0x60;
	ld.w	r0, [gPB]	# gPB.105_26, gPB
	add.w	r0, 46 #111	# _27,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:469:     gPB[TCP_HEADER_LEN_P] = 0x60;
	mov.b	r1, 96	# tmp72,
	st.b	[r0], r1	# *_27, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:470:     gPB[TCP_WIN_SIZE] = 0x5; // 1400=0x578
	ld.w	r0, [gPB]	# gPB.106_28, gPB
	add.w	r0, 48 #111	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:470:     gPB[TCP_WIN_SIZE] = 0x5; // 1400=0x578
	mov.b	r1, 5	# tmp73,
	st.b	[r0], r1	# *_29, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:471:     gPB[TCP_WIN_SIZE+1] = 0x78;
	ld.w	r0, [gPB]	# gPB.107_30, gPB
	add.w	r0, 49 #111	# _31,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:471:     gPB[TCP_WIN_SIZE+1] = 0x78;
	mov.b	r1, 120	# tmp74,
	st.b	[r0], r1	# *_31, tmp74
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:472:     fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN+4,2);
	mov.w	r0, sp	# tmp75,
	mov.w	r1, 2	# tmp76,
	st.w	[r0 + (12)], r1	#, tmp76
	mov.w	r1, 32	# tmp77,
	st.w	[r0 + (8)], r1	#, tmp77
	mov.w	r1, 26	# tmp78,
	st.w	[r0 + (4)], r1	#, tmp78
	mov.w	r1, 50	# tmp79,
	st.w	[r0], r1	#, tmp79
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:473:     enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+4+ETH_HEADER_LEN, gPB);
	ld.w	r1, [gPB]	# gPB.108_32, gPB
	mov.w	r0, sp	# tmp80,
	st.w	[r0 + (4)], r1	#, gPB.108_32
	mov.w	r1, 58	# tmp81,
	st.w	[r0], r1	#, tmp81
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:475: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_tcp_synack_from_syn, .-make_tcp_synack_from_syn
	.p2align	1
	.global	getTcpPayloadLength
	.type	getTcpPayloadLength, @function
getTcpPayloadLength:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:478:     int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
	ld.w	r0, [gPB]	# gPB.109_1, gPB
	add.w	r0, 16 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:478:     int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
	zex.b	r0, r0	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:478:     int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
	mov.w	r1, 8	# tmp48,
	shl.w	r0, r1	# _5, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:478:     int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
	ld.w	r1, [gPB]	# gPB.110_7, gPB
	add.w	r1, 17 #111	# _8,
	ld.b	r1, [r1]	# _9, *_8
	zex.b	r1, r1	# tmp49, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:478:     int16_t i = (((int16_t)gPB[IP_TOTLEN_H_P])<<8)|gPB[IP_TOTLEN_L_P];
	or.w	r0, r1	# tmp50, _10
	st.s	[r13 + (-2)], r0	# i, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:479:     i -= IP_HEADER_LEN;
	ld.s	r0, [r13 + (-2)]	# i.111_11, i
	add.w	r0, -20 #111	# tmp52,
	st.s	[r13 + (-2)], r0	# i, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:480:     i -= (gPB[TCP_HEADER_LEN_P]>>4)*4; // generate len in uint8_ts;
	ld.s	r0, [r13 + (-2)]	# i.112_13, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:480:     i -= (gPB[TCP_HEADER_LEN_P]>>4)*4; // generate len in uint8_ts;
	ld.w	r1, [gPB]	# gPB.113_14, gPB
	add.w	r1, 46 #111	# _15,
	ld.b	r1, [r1]	# _16, *_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:480:     i -= (gPB[TCP_HEADER_LEN_P]>>4)*4; // generate len in uint8_ts;
	zex.b	r1, r1	# tmp53, _16
	mov.w	r2, 4	# tmp55,
	shr.w	r1, r2	# tmp54, tmp55
	zex.b	r1, r1	# tmp56, _17
	mov.w	r2, 2	# tmp58,
	shl.w	r1, r2	# tmp57, tmp58
	sub.w	r0, r1 #222	# tmp59, tmp60
	st.s	[r13 + (-2)], r0	# i, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:481:     if (i<=0)
	ld.s	r0, [r13 + (-2)]	#, i
	sex.s	r1, r0	# tmp61,
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jgs	.L104		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:482:         i = 0;
	xor.w	r0, r0	# tmp63
	st.s	[r13 + (-2)], r0	# i, tmp63
.L104:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:483:     return (uint16_t)i;
	ld.s	r0, [r13 + (-2)]	# _27, i
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:484: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getTcpPayloadLength, .-getTcpPayloadLength
	.p2align	1
	.global	make_tcp_ack_from_any
	.type	make_tcp_ack_from_any, @function
make_tcp_ack_from_any:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp43, datlentoack
	ld.w	r0, [r13 + (12)]	# tmp45, addflags
	st.s	[r13 + (-8)], r1	# datlentoack, tmp44
	st.b	[r13 + (-12)], r0	# addflags, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:487:     gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|addflags;
	ld.w	r0, [gPB]	# gPB.114_1, gPB
	add.w	r0, 47 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:487:     gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|addflags;
	ld.b	r1, [r13 + (-12)]	# tmp47, addflags
	mov.w	r2, 16	# tmp49,
	or.w	r1, r2	# tmp48, tmp49
	st.b	[r0], r1	# *_2, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:488:     if (addflags!=TCP_FLAGS_RST_V && datlentoack==0)
	ld.b	r1, [r13 + (-12)]	# tmp50, addflags
	mov.w	r0, 4	# tmp51,
	cmp.w	r1, r0	# tmp50, tmp51
	jz	.L107		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:488:     if (addflags!=TCP_FLAGS_RST_V && datlentoack==0)
	ld.s	r0, [r13 + (-8)]	#, datlentoack
	sex.s	r1, r0	# tmp52,
	xor.w	r0, r0	# tmp53
	cmp.w	r1, r0	# tmp52, tmp53
	jnz	.L107		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:489:         datlentoack = 1;
	mov.s	r0, 1	# tmp54,
	st.s	[r13 + (-8)], r0	# datlentoack, tmp54
.L107:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:490:     make_tcphead(datlentoack,1); // no options
	ld.s	r0, [r13 + (-8)]	# datlentoack.115_4, datlentoack
	zex.s	r1, r0	# _5, datlentoack.115_4
	mov.w	r0, sp	# tmp55,
	mov.w	r2, 1	# tmp56,
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _5
	call	make_tcphead		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:491:     uint16_t j = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN;
	mov.s	r0, 40	# tmp57,
	st.s	[r13 + (-2)], r0	# j, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:492:     gPB[IP_TOTLEN_H_P] = j>>8;
	ld.s	r0, [r13 + (-2)]	# tmp58, j
	mov.w	r1, 8	# tmp60,
	shr.w	r0, r1	# tmp59, tmp60
	mov.w	r1, r0	# _6, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:492:     gPB[IP_TOTLEN_H_P] = j>>8;
	ld.w	r0, [gPB]	# gPB.116_7, gPB
	add.w	r0, 16 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:492:     gPB[IP_TOTLEN_H_P] = j>>8;
	st.b	[r0], r1	# *_8, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:493:     gPB[IP_TOTLEN_L_P] = j;
	ld.w	r0, [gPB]	# gPB.117_10, gPB
	add.w	r0, 17 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:493:     gPB[IP_TOTLEN_L_P] = j;
	ld.s	r1, [r13 + (-2)]	# tmp61, j
	st.b	[r0], r1	# *_11, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:494:     make_eth_ip();
	call	make_eth_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:495:     gPB[TCP_WIN_SIZE] = 0x4; // 1024=0x400, 1280=0x500 2048=0x800 768=0x300
	ld.w	r0, [gPB]	# gPB.118_13, gPB
	add.w	r0, 48 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:495:     gPB[TCP_WIN_SIZE] = 0x4; // 1024=0x400, 1280=0x500 2048=0x800 768=0x300
	mov.b	r1, 4	# tmp62,
	st.b	[r0], r1	# *_14, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:496:     gPB[TCP_WIN_SIZE+1] = 0;
	ld.w	r0, [gPB]	# gPB.119_15, gPB
	add.w	r0, 49 #111	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:496:     gPB[TCP_WIN_SIZE+1] = 0;
	xor.w	r1, r1	# tmp63
	st.b	[r0], r1	# *_16, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:497:     fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN,2);
	mov.w	r0, sp	# tmp64,
	mov.w	r1, 2	# tmp65,
	st.w	[r0 + (12)], r1	#, tmp65
	mov.w	r1, 28	# tmp66,
	st.w	[r0 + (8)], r1	#, tmp66
	mov.w	r1, 26	# tmp67,
	st.w	[r0 + (4)], r1	#, tmp67
	mov.w	r1, 50	# tmp68,
	st.w	[r0], r1	#, tmp68
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:498:     enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN, gPB);
	ld.w	r1, [gPB]	# gPB.120_17, gPB
	mov.w	r0, sp	# tmp69,
	st.w	[r0 + (4)], r1	#, gPB.120_17
	mov.w	r1, 54	# tmp70,
	st.w	[r0], r1	#, tmp70
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:500: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_tcp_ack_from_any, .-make_tcp_ack_from_any
	.p2align	1
	.global	make_tcp_ack_with_data_noflags
	.type	make_tcp_ack_with_data_noflags, @function
make_tcp_ack_with_data_noflags:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp42, dlen
	st.s	[r13 + (-8)], r0	# dlen, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:503:     uint16_t j = IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen;
	ld.s	r0, [r13 + (-8)]	# tmp44, dlen
	add.w	r0, 40 #111	# tmp45,
	st.s	[r13 + (-2)], r0	# j, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:504:     gPB[IP_TOTLEN_H_P] = j>>8;
	ld.s	r0, [r13 + (-2)]	# tmp47, j
	mov.w	r1, 8	# tmp49,
	shr.w	r0, r1	# tmp48, tmp49
	mov.w	r1, r0	# _1, tmp48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:504:     gPB[IP_TOTLEN_H_P] = j>>8;
	ld.w	r0, [gPB]	# gPB.121_2, gPB
	add.w	r0, 16 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:504:     gPB[IP_TOTLEN_H_P] = j>>8;
	st.b	[r0], r1	# *_3, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:505:     gPB[IP_TOTLEN_L_P] = j;
	ld.w	r0, [gPB]	# gPB.122_5, gPB
	add.w	r0, 17 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:505:     gPB[IP_TOTLEN_L_P] = j;
	ld.s	r1, [r13 + (-2)]	# tmp50, j
	st.b	[r0], r1	# *_6, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:506:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:507:     gPB[TCP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.123_8, gPB
	add.w	r0, 50 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:507:     gPB[TCP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp51
	st.b	[r0], r1	# *_9, tmp51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:508:     gPB[TCP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.124_10, gPB
	add.w	r0, 51 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:508:     gPB[TCP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp52
	st.b	[r0], r1	# *_11, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:509:     fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN+dlen,2);
	ld.s	r0, [r13 + (-8)]	# tmp53, dlen
	add.w	r0, 28 #111	# tmp54,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:509:     fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8+TCP_HEADER_LEN_PLAIN+dlen,2);
	zex.s	r1, r0	# _13, _12
	mov.w	r0, sp	# tmp55,
	mov.w	r2, 2	# tmp56,
	st.w	[r0 + (12)], r2	#, tmp56
	st.w	[r0 + (8)], r1	#, _13
	mov.w	r1, 26	# tmp57,
	st.w	[r0 + (4)], r1	#, tmp57
	mov.w	r1, 50	# tmp58,
	st.w	[r0], r1	#, tmp58
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:510:     enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen+ETH_HEADER_LEN, gPB);
	ld.s	r0, [r13 + (-8)]	# tmp59, dlen
	add.w	r0, 54 #111	# tmp60,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:510:     enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+dlen+ETH_HEADER_LEN, gPB);
	zex.s	r1, r0	# _15, _14
	ld.w	r2, [gPB]	# gPB.125_16, gPB
	mov.w	r0, sp	# tmp61,
	st.w	[r0 + (4)], r2	#, gPB.125_16
	st.w	[r0], r1	#, _15
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:512: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	make_tcp_ack_with_data_noflags, .-make_tcp_ack_with_data_noflags
	.p2align	1
	.global	httpServerReply
	.type	httpServerReply, @function
httpServerReply:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp32, dlen
	st.s	[r13 + (-4)], r0	# dlen, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:515:     make_tcp_ack_from_any(info_data_len,0); // send ack for http get
	ld.s	r0, [info_data_len]	# info_data_len.126_1, info_data_len
	sex.s	r1, r0	# _3, info_data_len.127_2
	mov.w	r0, sp	# tmp34,
	xor.w	r2, r2	# tmp35
	st.w	[r0 + (4)], r2	#, tmp35
	st.w	[r0], r1	#, _3
	call	make_tcp_ack_from_any		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:516:     gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V;
	ld.w	r0, [gPB]	# gPB.128_4, gPB
	add.w	r0, 47 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:516:     gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V;
	mov.b	r1, 25	# tmp36,
	st.b	[r0], r1	# *_5, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:517:     make_tcp_ack_with_data_noflags(dlen); // send data
	ld.s	r0, [r13 + (-4)]	# _6, dlen
	mov.w	r1, sp	# tmp37,
	st.w	[r1], r0	#, _6
	call	make_tcp_ack_with_data_noflags		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:518: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	httpServerReply, .-httpServerReply
	.p2align	1
	.global	getBigEndianLong
	.type	getBigEndianLong, @function
getBigEndianLong:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp56, offs
	st.b	[r13 + (-4)], r0	# offs, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	ld.w	r0, [gPB]	# gPB.129_1, gPB
	ld.b	r1, [r13 + (-4)]	# _2, offs
	add.w	r0, r1 #222	# _3, _2
	ld.b	r0, [r0]	# _4, *_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	zex.b	r0, r0	# _5, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	mov.w	r1, 8	# tmp58,
	shl.w	r0, r1	# _6, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	ld.w	r1, [gPB]	# gPB.130_7, gPB
	ld.b	r2, [r13 + (-4)]	# _8, offs
	add.w	r2, 1 #111	# _9,
	add.w	r1, r2 #222	# _10, _9
	ld.b	r1, [r1]	# _11, *_10
	zex.b	r1, r1	# _12, _11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	add.w	r0, r1 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	mov.w	r1, 8	# tmp59,
	shl.w	r0, r1	# _14, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	ld.w	r1, [gPB]	# gPB.131_15, gPB
	ld.b	r2, [r13 + (-4)]	# _16, offs
	add.w	r2, 2 #111	# _17,
	add.w	r1, r2 #222	# _18, _17
	ld.b	r1, [r1]	# _19, *_18
	zex.b	r1, r1	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	add.w	r0, r1 #222	# _21, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	mov.w	r1, 8	# tmp60,
	shl.w	r0, r1	# _22, tmp60
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	ld.w	r1, [gPB]	# gPB.132_23, gPB
	ld.b	r2, [r13 + (-4)]	# _24, offs
	add.w	r2, 3 #111	# _25,
	add.w	r1, r2 #222	# _26, _25
	ld.b	r1, [r1]	# _27, *_26
	zex.b	r1, r1	# _28, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:521:     return (((unsigned long)gPB[offs]*256+gPB[offs+1])*256+gPB[offs+2])*256+gPB[offs+3];
	add.w	r0, r1 #222	# _31, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:522: } //thanks to mstuetz for the missing (unsigned long)
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getBigEndianLong, .-getBigEndianLong
	.p2align	1
	.global	setSequenceNumber
	.type	setSequenceNumber, @function
setSequenceNumber:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:525:     gPB[TCP_SEQ_H_P]   = (seq & 0xff000000 ) >> 24;
	ld.w	r1, [r13 + (8)]	# tmp41, seq
	mov.w	r0, 24	# tmp42,
	shr.w	r1, r0	# _1, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:525:     gPB[TCP_SEQ_H_P]   = (seq & 0xff000000 ) >> 24;
	ld.w	r0, [gPB]	# gPB.133_2, gPB
	add.w	r0, 38 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:525:     gPB[TCP_SEQ_H_P]   = (seq & 0xff000000 ) >> 24;
	st.b	[r0], r1	# *_3, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:526:     gPB[TCP_SEQ_H_P+1] = (seq & 0xff0000 ) >> 16;
	ld.w	r1, [r13 + (8)]	# tmp43, seq
	mov.w	r0, 16	# tmp44,
	shr.w	r1, r0	# _5, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:526:     gPB[TCP_SEQ_H_P+1] = (seq & 0xff0000 ) >> 16;
	ld.w	r0, [gPB]	# gPB.134_6, gPB
	add.w	r0, 39 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:526:     gPB[TCP_SEQ_H_P+1] = (seq & 0xff0000 ) >> 16;
	st.b	[r0], r1	# *_7, _8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:527:     gPB[TCP_SEQ_H_P+2] = (seq & 0xff00 ) >> 8;
	ld.w	r1, [r13 + (8)]	# tmp45, seq
	mov.w	r0, 8	# tmp46,
	shr.w	r1, r0	# _9, tmp46
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:527:     gPB[TCP_SEQ_H_P+2] = (seq & 0xff00 ) >> 8;
	ld.w	r0, [gPB]	# gPB.135_10, gPB
	add.w	r0, 40 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:527:     gPB[TCP_SEQ_H_P+2] = (seq & 0xff00 ) >> 8;
	st.b	[r0], r1	# *_11, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:528:     gPB[TCP_SEQ_H_P+3] = (seq & 0xff );
	ld.w	r0, [gPB]	# gPB.136_13, gPB
	add.w	r0, 41 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:528:     gPB[TCP_SEQ_H_P+3] = (seq & 0xff );
	ld.w	r1, [r13 + (8)]	# tmp47, seq
	st.b	[r0], r1	# *_14, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:529: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	setSequenceNumber, .-setSequenceNumber
	.p2align	1
	.global	getSequenceNumber
	.type	getSequenceNumber, @function
getSequenceNumber:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:532:     return getBigEndianLong(TCP_SEQ_H_P);
	mov.w	r1, sp	# tmp28,
	mov.w	r0, 38	# tmp29,
	st.w	[r1], r0	#, tmp29
	call	getBigEndianLong		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:533: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	getSequenceNumber, .-getSequenceNumber
	.p2align	1
	.global	httpServerReplyAck
	.type	httpServerReplyAck, @function
httpServerReplyAck:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:536:     make_tcp_ack_from_any(getTcpPayloadLength(),0); // send ack for http request
	call	getTcpPayloadLength		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:536:     make_tcp_ack_from_any(getTcpPayloadLength(),0); // send ack for http request
	sex.s	r1, r0	# _3, _2
	mov.w	r0, sp	# tmp30,
	xor.w	r2, r2	# tmp31
	st.w	[r0 + (4)], r2	#, tmp31
	st.w	[r0], r1	#, _3
	call	make_tcp_ack_from_any		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:537:     SEQ = getSequenceNumber(); //get the sequence number of packets after an ack from GET
	call	getSequenceNumber		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:537:     SEQ = getSequenceNumber(); //get the sequence number of packets after an ack from GET
	st.w	[SEQ], r0	# SEQ, _4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:538: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	httpServerReplyAck, .-httpServerReplyAck
	.p2align	1
	.global	httpServerReply_with_flags
	.type	httpServerReply_with_flags, @function
httpServerReply_with_flags:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp33, dlen
	ld.w	r0, [r13 + (12)]	# tmp35, flags
	st.s	[r13 + (-4)], r1	# dlen, tmp34
	st.b	[r13 + (-8)], r0	# flags, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:541:     setSequenceNumber(SEQ);
	ld.w	r0, [SEQ]	# SEQ.137_1, SEQ
	mov.w	r1, sp	# tmp37,
	st.w	[r1], r0	#, SEQ.137_1
	call	setSequenceNumber		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:542:     gPB[TCP_FLAGS_P] = flags; // final packet
	ld.w	r0, [gPB]	# gPB.138_2, gPB
	add.w	r0, 47 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:542:     gPB[TCP_FLAGS_P] = flags; // final packet
	ld.b	r1, [r13 + (-8)]	# tmp38, flags
	st.b	[r0], r1	# *_3, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:543:     make_tcp_ack_with_data_noflags(dlen); // send data
	ld.s	r0, [r13 + (-4)]	# _4, dlen
	mov.w	r1, sp	# tmp39,
	st.w	[r1], r0	#, _4
	call	make_tcp_ack_with_data_noflags		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:544:     SEQ=SEQ+dlen;
	ld.s	r0, [r13 + (-4)]	# _5, dlen
	ld.w	r1, [SEQ]	# SEQ.139_6, SEQ
	add.w	r0, r1 #222	# _7, SEQ.139_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:544:     SEQ=SEQ+dlen;
	st.w	[SEQ], r0	# SEQ, _7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:545: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	httpServerReply_with_flags, .-httpServerReply_with_flags
	.p2align	1
	.global	clientIcmpRequest
	.type	clientIcmpRequest, @function
clientIcmpRequest:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:548:     if(is_lan(myip, destip)) {
	mov.w	r0, sp	# tmp57,
	ld.w	r1, [r13 + (8)]	# tmp58, destip
	st.w	[r0 + (4)], r1	#, tmp58
	mov.w	r1, myip	# tmp59,
	st.w	[r0], r1	#, tmp59
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:548:     if(is_lan(myip, destip)) {
	zex.b	r1, r0	# tmp60, _1
	xor.w	r0, r0	# tmp61
	cmp.w	r1, r0	# tmp60, tmp61
	jz	.L118		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:549:         setMACandIPs(destmacaddr, destip);
	mov.w	r0, sp	# tmp62,
	ld.w	r1, [r13 + (8)]	# tmp63, destip
	st.w	[r0 + (4)], r1	#, tmp63
	mov.w	r1, destmacaddr	# tmp64,
	st.w	[r0], r1	#, tmp64
	call	setMACandIPs		#
	j	.L119		#
.L118:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:551:         setMACandIPs(gwmacaddr, destip);
	mov.w	r0, sp	# tmp65,
	ld.w	r1, [r13 + (8)]	# tmp66, destip
	st.w	[r0 + (4)], r1	#, tmp66
	mov.w	r1, gwmacaddr	# tmp67,
	st.w	[r0], r1	#, tmp67
	call	setMACandIPs		#
.L119:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:553:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	ld.w	r0, [gPB]	# gPB.140_2, gPB
	add.w	r0, 12 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:553:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	mov.b	r1, 8	# tmp68,
	st.b	[r0], r1	# *_3, tmp68
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:554:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	ld.w	r0, [gPB]	# gPB.141_4, gPB
	add.w	r0, 13 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:554:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	xor.w	r1, r1	# tmp69
	st.b	[r0], r1	# *_5, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:555:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.w	r0, [gPB]	# gPB.142_6, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:555:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	add.w	r0, 14 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:555:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.b	r1, [iphdr]	# tmp71, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp71
	ld.b	r1, [iphdr+1]	# tmp72, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp72
	ld.b	r1, [iphdr+2]	# tmp73, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp73
	ld.b	r1, [iphdr+3]	# tmp74, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp74
	ld.b	r1, [iphdr+4]	# tmp75, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp75
	ld.b	r1, [iphdr+5]	# tmp76, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp76
	ld.b	r1, [iphdr+6]	# tmp77, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp77
	ld.b	r1, [iphdr+7]	# tmp78, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp78
	ld.b	r1, [iphdr+8]	# tmp79, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:556:     gPB[IP_TOTLEN_L_P] = 0x54;
	ld.w	r0, [gPB]	# gPB.143_8, gPB
	add.w	r0, 17 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:556:     gPB[IP_TOTLEN_L_P] = 0x54;
	mov.b	r1, 84	# tmp80,
	st.b	[r0], r1	# *_9, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:557:     gPB[IP_PROTO_P] = IP_PROTO_ICMP_V;
	ld.w	r0, [gPB]	# gPB.144_10, gPB
	add.w	r0, 23 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:557:     gPB[IP_PROTO_P] = IP_PROTO_ICMP_V;
	mov.b	r1, 1	# tmp81,
	st.b	[r0], r1	# *_11, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:558:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:559:     gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREQUEST_V;
	ld.w	r0, [gPB]	# gPB.145_12, gPB
	add.w	r0, 34 #111	# _13,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:559:     gPB[ICMP_TYPE_P] = ICMP_TYPE_ECHOREQUEST_V;
	mov.b	r1, 8	# tmp82,
	st.b	[r0], r1	# *_13, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:560:     gPB[ICMP_TYPE_P+1] = 0; // code
	ld.w	r0, [gPB]	# gPB.146_14, gPB
	add.w	r0, 35 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:560:     gPB[ICMP_TYPE_P+1] = 0; // code
	xor.w	r1, r1	# tmp83
	st.b	[r0], r1	# *_15, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:561:     gPB[ICMP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.147_16, gPB
	add.w	r0, 36 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:561:     gPB[ICMP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp84
	st.b	[r0], r1	# *_17, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:562:     gPB[ICMP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.148_18, gPB
	add.w	r0, 37 #111	# _19,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:562:     gPB[ICMP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp85
	st.b	[r0], r1	# *_19, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:563:     gPB[ICMP_IDENT_H_P] = 5; // some number
	ld.w	r0, [gPB]	# gPB.149_20, gPB
	add.w	r0, 38 #111	# _21,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:563:     gPB[ICMP_IDENT_H_P] = 5; // some number
	mov.b	r1, 5	# tmp86,
	st.b	[r0], r1	# *_21, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:564:     gPB[ICMP_IDENT_L_P] = myip[3]; // last uint8_t of my IP
	ld.w	r0, [gPB]	# gPB.150_22, gPB
	add.w	r0, 39 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:564:     gPB[ICMP_IDENT_L_P] = myip[3]; // last uint8_t of my IP
	ld.b	r1, [myip+3]	# _24, myip
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:564:     gPB[ICMP_IDENT_L_P] = myip[3]; // last uint8_t of my IP
	st.b	[r0], r1	# *_23, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:565:     gPB[ICMP_IDENT_L_P+1] = 0; // seq number, high uint8_t
	ld.w	r0, [gPB]	# gPB.151_25, gPB
	add.w	r0, 40 #111	# _26,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:565:     gPB[ICMP_IDENT_L_P+1] = 0; // seq number, high uint8_t
	xor.w	r1, r1	# tmp87
	st.b	[r0], r1	# *_26, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:566:     gPB[ICMP_IDENT_L_P+2] = 1; // seq number, low uint8_t, we send only 1 ping at a time
	ld.w	r0, [gPB]	# gPB.152_27, gPB
	add.w	r0, 41 #111	# _28,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:566:     gPB[ICMP_IDENT_L_P+2] = 1; // seq number, low uint8_t, we send only 1 ping at a time
	mov.b	r1, 1	# tmp88,
	st.b	[r0], r1	# *_28, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:567:     memset(gPB + ICMP_DATA_P, PINGPATTERN, 56);
	ld.w	r0, [gPB]	# gPB.153_29, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:567:     memset(gPB + ICMP_DATA_P, PINGPATTERN, 56);
	mov.w	r1, r0	# _30, gPB.153_29
	add.w	r1, 42 #111	# _30,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:567:     memset(gPB + ICMP_DATA_P, PINGPATTERN, 56);
	mov.w	r0, sp	# tmp89,
	mov.w	r2, 56	# tmp90,
	st.w	[r0 + (8)], r2	#, tmp90
	mov.w	r2, 66	# tmp91,
	st.w	[r0 + (4)], r2	#, tmp91
	st.w	[r0], r1	#, _30
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:568:     fill_checksum(ICMP_CHECKSUM_H_P, ICMP_TYPE_P, 56+8,0);
	mov.w	r0, sp	# tmp92,
	xor.w	r1, r1	# tmp93
	st.w	[r0 + (12)], r1	#, tmp93
	mov.w	r1, 64	# tmp94,
	st.w	[r0 + (8)], r1	#, tmp94
	mov.w	r1, 34	# tmp95,
	st.w	[r0 + (4)], r1	#, tmp95
	mov.w	r1, 36	# tmp96,
	st.w	[r0], r1	#, tmp96
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:569:     enc28j60PacketSend(98, gPB);
	ld.w	r1, [gPB]	# gPB.154_31, gPB
	mov.w	r0, sp	# tmp97,
	st.w	[r0 + (4)], r1	#, gPB.154_31
	mov.w	r1, 98	# tmp98,
	st.w	[r0], r1	#, tmp98
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:571: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clientIcmpRequest, .-clientIcmpRequest
	.p2align	1
	.global	ntpRequest
	.type	ntpRequest, @function
ntpRequest:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp58, srcport
	st.b	[r13 + (-4)], r0	# srcport, tmp59
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:574:     if(is_lan(myip, ntpip)) {
	mov.w	r0, sp	# tmp60,
	ld.w	r1, [r13 + (8)]	# tmp61, ntpip
	st.w	[r0 + (4)], r1	#, tmp61
	mov.w	r1, myip	# tmp62,
	st.w	[r0], r1	#, tmp62
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:574:     if(is_lan(myip, ntpip)) {
	zex.b	r1, r0	# tmp63, _1
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jz	.L121		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:575:         setMACandIPs(destmacaddr, ntpip);
	mov.w	r0, sp	# tmp65,
	ld.w	r1, [r13 + (8)]	# tmp66, ntpip
	st.w	[r0 + (4)], r1	#, tmp66
	mov.w	r1, destmacaddr	# tmp67,
	st.w	[r0], r1	#, tmp67
	call	setMACandIPs		#
	j	.L122		#
.L121:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:577:         setMACandIPs(gwmacaddr, ntpip);
	mov.w	r0, sp	# tmp68,
	ld.w	r1, [r13 + (8)]	# tmp69, ntpip
	st.w	[r0 + (4)], r1	#, tmp69
	mov.w	r1, gwmacaddr	# tmp70,
	st.w	[r0], r1	#, tmp70
	call	setMACandIPs		#
.L122:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:579:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	ld.w	r0, [gPB]	# gPB.155_2, gPB
	add.w	r0, 12 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:579:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	mov.b	r1, 8	# tmp71,
	st.b	[r0], r1	# *_3, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:580:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	ld.w	r0, [gPB]	# gPB.156_4, gPB
	add.w	r0, 13 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:580:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	xor.w	r1, r1	# tmp72
	st.b	[r0], r1	# *_5, tmp72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:581:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.w	r0, [gPB]	# gPB.157_6, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:581:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	add.w	r0, 14 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:581:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.b	r1, [iphdr]	# tmp74, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp74
	ld.b	r1, [iphdr+1]	# tmp75, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp75
	ld.b	r1, [iphdr+2]	# tmp76, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp76
	ld.b	r1, [iphdr+3]	# tmp77, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp77
	ld.b	r1, [iphdr+4]	# tmp78, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp78
	ld.b	r1, [iphdr+5]	# tmp79, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp79
	ld.b	r1, [iphdr+6]	# tmp80, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp80
	ld.b	r1, [iphdr+7]	# tmp81, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp81
	ld.b	r1, [iphdr+8]	# tmp82, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:582:     gPB[IP_TOTLEN_L_P] = 0x4c;
	ld.w	r0, [gPB]	# gPB.158_8, gPB
	add.w	r0, 17 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:582:     gPB[IP_TOTLEN_L_P] = 0x4c;
	mov.b	r1, 76	# tmp83,
	st.b	[r0], r1	# *_9, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:583:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	ld.w	r0, [gPB]	# gPB.159_10, gPB
	add.w	r0, 23 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:583:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	mov.b	r1, 17	# tmp84,
	st.b	[r0], r1	# *_11, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:584:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:585:     gPB[UDP_DST_PORT_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.160_12, gPB
	add.w	r0, 36 #111	# _13,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:585:     gPB[UDP_DST_PORT_H_P] = 0;
	xor.w	r1, r1	# tmp85
	st.b	[r0], r1	# *_13, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:586:     gPB[UDP_DST_PORT_L_P] = NTP_PORT; // ntp = 123
	ld.w	r0, [gPB]	# gPB.161_14, gPB
	add.w	r0, 37 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:586:     gPB[UDP_DST_PORT_L_P] = NTP_PORT; // ntp = 123
	mov.b	r1, 123	# tmp86,
	st.b	[r0], r1	# *_15, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:587:     gPB[UDP_SRC_PORT_H_P] = 10;
	ld.w	r0, [gPB]	# gPB.162_16, gPB
	add.w	r0, 34 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:587:     gPB[UDP_SRC_PORT_H_P] = 10;
	mov.b	r1, 10	# tmp87,
	st.b	[r0], r1	# *_17, tmp87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:588:     gPB[UDP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
	ld.w	r0, [gPB]	# gPB.163_18, gPB
	add.w	r0, 35 #111	# _19,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:588:     gPB[UDP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
	ld.b	r1, [r13 + (-4)]	# tmp88, srcport
	st.b	[r0], r1	# *_19, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:589:     gPB[UDP_LEN_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.164_20, gPB
	add.w	r0, 38 #111	# _21,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:589:     gPB[UDP_LEN_H_P] = 0;
	xor.w	r1, r1	# tmp89
	st.b	[r0], r1	# *_21, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:590:     gPB[UDP_LEN_L_P] = 56; // fixed len
	ld.w	r0, [gPB]	# gPB.165_22, gPB
	add.w	r0, 39 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:590:     gPB[UDP_LEN_L_P] = 56; // fixed len
	mov.b	r1, 56	# tmp90,
	st.b	[r0], r1	# *_23, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:591:     gPB[UDP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.166_24, gPB
	add.w	r0, 40 #111	# _25,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:591:     gPB[UDP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp91
	st.b	[r0], r1	# *_25, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:592:     gPB[UDP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.167_26, gPB
	add.w	r0, 41 #111	# _27,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:592:     gPB[UDP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp92
	st.b	[r0], r1	# *_27, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:593:     memset(gPB + UDP_DATA_P, 0, 48);
	ld.w	r0, [gPB]	# gPB.168_28, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:593:     memset(gPB + UDP_DATA_P, 0, 48);
	mov.w	r1, r0	# _29, gPB.168_28
	add.w	r1, 42 #111	# _29,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:593:     memset(gPB + UDP_DATA_P, 0, 48);
	mov.w	r0, sp	# tmp93,
	mov.w	r2, 48	# tmp94,
	st.w	[r0 + (8)], r2	#, tmp94
	xor.w	r2, r2	# tmp95
	st.w	[r0 + (4)], r2	#, tmp95
	st.w	[r0], r1	#, _29
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:594:     memcpy(gPB + UDP_DATA_P,ntpreqhdr,10);
	ld.w	r0, [gPB]	# gPB.169_30, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:594:     memcpy(gPB + UDP_DATA_P,ntpreqhdr,10);
	add.w	r0, 42 #111	# _31,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:594:     memcpy(gPB + UDP_DATA_P,ntpreqhdr,10);
	ld.b	r1, [ntpreqhdr]	# tmp97, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp97
	ld.b	r1, [ntpreqhdr+1]	# tmp98, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp98
	ld.b	r1, [ntpreqhdr+2]	# tmp99, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp99
	ld.b	r1, [ntpreqhdr+3]	# tmp100, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp100
	ld.b	r1, [ntpreqhdr+4]	# tmp101, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp101
	ld.b	r1, [ntpreqhdr+5]	# tmp102, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp102
	ld.b	r1, [ntpreqhdr+6]	# tmp103, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp103
	ld.b	r1, [ntpreqhdr+7]	# tmp104, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp104
	ld.b	r1, [ntpreqhdr+8]	# tmp105, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp105
	ld.b	r1, [ntpreqhdr+9]	# tmp106, MEM <unsigned char[10]> [(char * {ref-all})&ntpreqhdr]
	st.b	[r0 + (9)], r1	# MEM <unsigned char[10]> [(char * {ref-all})_31], tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:595:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + 48,1);
	mov.w	r0, sp	# tmp107,
	mov.w	r1, 1	# tmp108,
	st.w	[r0 + (12)], r1	#, tmp108
	mov.w	r1, 64	# tmp109,
	st.w	[r0 + (8)], r1	#, tmp109
	mov.w	r1, 26	# tmp110,
	st.w	[r0 + (4)], r1	#, tmp110
	mov.w	r1, 40	# tmp111,
	st.w	[r0], r1	#, tmp111
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:596:     enc28j60PacketSend(90, gPB);
	ld.w	r1, [gPB]	# gPB.170_32, gPB
	mov.w	r0, sp	# tmp112,
	st.w	[r0 + (4)], r1	#, gPB.170_32
	mov.w	r1, 90	# tmp113,
	st.w	[r0], r1	#, tmp113
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:598: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ntpRequest, .-ntpRequest
	.p2align	1
	.global	ntpProcessAnswer
	.type	ntpProcessAnswer, @function
ntpProcessAnswer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp51, dstport_l
	st.b	[r13 + (-4)], r0	# dstport_l, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	ld.b	r1, [r13 + (-4)]	# tmp53, dstport_l
	xor.w	r0, r0	# tmp54
	cmp.w	r1, r0	# tmp53, tmp54
	jz	.L124		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	ld.w	r0, [gPB]	# gPB.171_1, gPB
	add.w	r0, 37 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	ld.b	r1, [r13 + (-4)]	# tmp55, dstport_l
	zex.b	r0, r0	# tmp56, _3
	cmp.w	r1, r0	# tmp55, tmp56
	jnz	.L125		#
.L124:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	ld.w	r0, [gPB]	# gPB.172_4, gPB
	add.w	r0, 38 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	zex.b	r1, r0	# tmp57, _6
	xor.w	r0, r0	# tmp58
	cmp.w	r1, r0	# tmp57, tmp58
	jnz	.L125		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:602:             gPB[UDP_LEN_L_P]!=56 || gPB[UDP_SRC_PORT_L_P]!=0x7b)
	ld.w	r0, [gPB]	# gPB.173_7, gPB
	add.w	r0, 39 #111	# _8,
	ld.b	r0, [r0]	# _9, *_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:601:     if ((dstport_l && gPB[UDP_DST_PORT_L_P]!=dstport_l) || gPB[UDP_LEN_H_P]!=0 ||
	zex.b	r1, r0	# tmp59, _9
	mov.w	r0, 56	# tmp60,
	cmp.w	r1, r0	# tmp59, tmp60
	jnz	.L125		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:602:             gPB[UDP_LEN_L_P]!=56 || gPB[UDP_SRC_PORT_L_P]!=0x7b)
	ld.w	r0, [gPB]	# gPB.174_10, gPB
	add.w	r0, 35 #111	# _11,
	ld.b	r0, [r0]	# _12, *_11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:602:             gPB[UDP_LEN_L_P]!=56 || gPB[UDP_SRC_PORT_L_P]!=0x7b)
	zex.b	r1, r0	# tmp61, _12
	mov.w	r0, 123	# tmp62,
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L126		#
.L125:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:603:         return 0;
	xor.w	r0, r0	# _24
	j	.L127		#
.L126:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:604:     ((uint8_t*) time)[3] = gPB[0x52];
	ld.w	r1, [gPB]	# gPB.175_13, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:604:     ((uint8_t*) time)[3] = gPB[0x52];
	ld.w	r0, [r13 + (8)]	# tmp63, time
	add.w	r0, 3 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:604:     ((uint8_t*) time)[3] = gPB[0x52];
	ld.b	r1, [r1 + (82)]	# _15, MEM[(uint8_t *)gPB.175_13 + 82B]
	st.b	[r0], r1	# *_14, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:605:     ((uint8_t*) time)[2] = gPB[0x53];
	ld.w	r1, [gPB]	# gPB.176_16, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:605:     ((uint8_t*) time)[2] = gPB[0x53];
	ld.w	r0, [r13 + (8)]	# tmp64, time
	add.w	r0, 2 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:605:     ((uint8_t*) time)[2] = gPB[0x53];
	ld.b	r1, [r1 + (83)]	# _18, MEM[(uint8_t *)gPB.176_16 + 83B]
	st.b	[r0], r1	# *_17, _18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:606:     ((uint8_t*) time)[1] = gPB[0x54];
	ld.w	r1, [gPB]	# gPB.177_19, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:606:     ((uint8_t*) time)[1] = gPB[0x54];
	ld.w	r0, [r13 + (8)]	# tmp65, time
	add.w	r0, 1 #111	# _20,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:606:     ((uint8_t*) time)[1] = gPB[0x54];
	ld.b	r1, [r1 + (84)]	# _21, MEM[(uint8_t *)gPB.177_19 + 84B]
	st.b	[r0], r1	# *_20, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:607:     ((uint8_t*) time)[0] = gPB[0x55];
	ld.w	r0, [gPB]	# gPB.178_22, gPB
	ld.b	r1, [r0 + (85)]	# _23, MEM[(uint8_t *)gPB.178_22 + 85B]
	ld.w	r0, [r13 + (8)]	# tmp66, time
	st.b	[r0], r1	# MEM[(uint8_t *)time_28(D)], _23
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:608:     return 1;
	mov.b	r0, 1	# _24,
.L127:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:609: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	ntpProcessAnswer, .-ntpProcessAnswer
	.p2align	1
	.global	udpPrepare
	.type	udpPrepare, @function
udpPrepare:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp63, sport
	ld.w	r0, [r13 + (16)]	# tmp65, dport
	st.s	[r13 + (-4)], r1	# sport, tmp64
	st.s	[r13 + (-8)], r0	# dport, tmp66
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:612:     if(is_lan(myip, dip)) {                    // this works because both dns mac and destinations mac are stored in same variable - destmacaddr
	mov.w	r0, sp	# tmp67,
	ld.w	r1, [r13 + (12)]	# tmp68, dip
	st.w	[r0 + (4)], r1	#, tmp68
	mov.w	r1, myip	# tmp69,
	st.w	[r0], r1	#, tmp69
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:612:     if(is_lan(myip, dip)) {                    // this works because both dns mac and destinations mac are stored in same variable - destmacaddr
	zex.b	r1, r0	# tmp70, _1
	xor.w	r0, r0	# tmp71
	cmp.w	r1, r0	# tmp70, tmp71
	jz	.L129		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:613:         setMACandIPs(destmacaddr, dip);        // at different times. The program could have separate variable for dns mac, then here should be
	mov.w	r0, sp	# tmp72,
	ld.w	r1, [r13 + (12)]	# tmp73, dip
	st.w	[r0 + (4)], r1	#, tmp73
	mov.w	r1, destmacaddr	# tmp74,
	st.w	[r0], r1	#, tmp74
	call	setMACandIPs		#
	j	.L130		#
.L129:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:615:         setMACandIPs(gwmacaddr, dip);
	mov.w	r0, sp	# tmp75,
	ld.w	r1, [r13 + (12)]	# tmp76, dip
	st.w	[r0 + (4)], r1	#, tmp76
	mov.w	r1, gwmacaddr	# tmp77,
	st.w	[r0], r1	#, tmp77
	call	setMACandIPs		#
.L130:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	ld.w	r0, [r13 + (12)]	# tmp78, dip
	ld.b	r0, [r0]	# _2, *dip_41(D)
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	zex.b	r1, r0	# _3, _2
	mov.w	r0, 240	# tmp79,
	and.w	r1, r0	# _4, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	mov.w	r0, 224	# tmp80,
	cmp.w	r1, r0	# _4, tmp80
	jz	.L131		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	ld.w	r0, [r13 + (12)]	# tmp81, dip
	ld.w	r1, [r0]	# _5, MEM[(long unsigned int *)dip_41(D)]
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	mov.w	r0, -1	# tmp82,
	cmp.w	r1, r0	# _5, tmp82
	jz	.L131		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	mov.w	r0, sp	# tmp83,
	mov.w	r1, 4	# tmp84,
	st.w	[r0 + (8)], r1	#, tmp84
	ld.w	r1, [r13 + (12)]	# tmp85, dip
	st.w	[r0 + (4)], r1	#, tmp85
	mov.w	r1, broadcastip	# tmp86,
	st.w	[r0], r1	#, tmp86
	call	memcmp		#
	mov.w	r1, r0	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:619:     if ((dip[0] & 0xF0) == 0xE0 || *((unsigned long*) dip) == 0xFFFFFFFF || !memcmp(broadcastip,dip,IP_LEN))
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# _6, tmp87
	jnz	.L132		#
.L131:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:620:         copyMac(gPB + ETH_DST_MAC, allOnes);
	ld.w	r1, [gPB]	# gPB.179_7, gPB
	mov.w	r0, sp	# tmp88,
	mov.w	r2, allOnes	# tmp89,
	st.w	[r0 + (4)], r2	#, tmp89
	st.w	[r0], r1	#, gPB.179_7
	call	copyMac		#
.L132:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:621:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	ld.w	r0, [gPB]	# gPB.180_8, gPB
	add.w	r0, 12 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:621:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	mov.b	r1, 8	# tmp90,
	st.b	[r0], r1	# *_9, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:622:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	ld.w	r0, [gPB]	# gPB.181_10, gPB
	add.w	r0, 13 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:622:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	xor.w	r1, r1	# tmp91
	st.b	[r0], r1	# *_11, tmp91
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:623:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.w	r0, [gPB]	# gPB.182_12, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:623:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	add.w	r0, 14 #111	# _13,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:623:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.b	r1, [iphdr]	# tmp93, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp93
	ld.b	r1, [iphdr+1]	# tmp94, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp94
	ld.b	r1, [iphdr+2]	# tmp95, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp95
	ld.b	r1, [iphdr+3]	# tmp96, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp96
	ld.b	r1, [iphdr+4]	# tmp97, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp97
	ld.b	r1, [iphdr+5]	# tmp98, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp98
	ld.b	r1, [iphdr+6]	# tmp99, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp99
	ld.b	r1, [iphdr+7]	# tmp100, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp100
	ld.b	r1, [iphdr+8]	# tmp101, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_13], tmp101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:624:     gPB[IP_TOTLEN_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.183_14, gPB
	add.w	r0, 16 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:624:     gPB[IP_TOTLEN_H_P] = 0;
	xor.w	r1, r1	# tmp102
	st.b	[r0], r1	# *_15, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:625:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	ld.w	r0, [gPB]	# gPB.184_16, gPB
	add.w	r0, 23 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:625:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	mov.b	r1, 17	# tmp103,
	st.b	[r0], r1	# *_17, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:626:     gPB[UDP_DST_PORT_H_P] = (dport>>8);
	ld.s	r0, [r13 + (-8)]	# tmp104, dport
	mov.w	r1, 8	# tmp106,
	shr.w	r0, r1	# tmp105, tmp106
	mov.w	r1, r0	# _18, tmp105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:626:     gPB[UDP_DST_PORT_H_P] = (dport>>8);
	ld.w	r0, [gPB]	# gPB.185_19, gPB
	add.w	r0, 36 #111	# _20,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:626:     gPB[UDP_DST_PORT_H_P] = (dport>>8);
	st.b	[r0], r1	# *_20, _21
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:627:     gPB[UDP_DST_PORT_L_P] = dport;
	ld.w	r0, [gPB]	# gPB.186_22, gPB
	add.w	r0, 37 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:627:     gPB[UDP_DST_PORT_L_P] = dport;
	ld.s	r1, [r13 + (-8)]	# tmp107, dport
	st.b	[r0], r1	# *_23, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:628:     gPB[UDP_SRC_PORT_H_P] = (sport>>8);
	ld.s	r0, [r13 + (-4)]	# tmp108, sport
	mov.w	r1, 8	# tmp110,
	shr.w	r0, r1	# tmp109, tmp110
	mov.w	r1, r0	# _25, tmp109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:628:     gPB[UDP_SRC_PORT_H_P] = (sport>>8);
	ld.w	r0, [gPB]	# gPB.187_26, gPB
	add.w	r0, 34 #111	# _27,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:628:     gPB[UDP_SRC_PORT_H_P] = (sport>>8);
	st.b	[r0], r1	# *_27, _28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:629:     gPB[UDP_SRC_PORT_L_P] = sport;
	ld.w	r0, [gPB]	# gPB.188_29, gPB
	add.w	r0, 35 #111	# _30,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:629:     gPB[UDP_SRC_PORT_L_P] = sport;
	ld.s	r1, [r13 + (-4)]	# tmp111, sport
	st.b	[r0], r1	# *_30, _31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:630:     gPB[UDP_LEN_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.189_32, gPB
	add.w	r0, 38 #111	# _33,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:630:     gPB[UDP_LEN_H_P] = 0;
	xor.w	r1, r1	# tmp112
	st.b	[r0], r1	# *_33, tmp112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:631:     gPB[UDP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.190_34, gPB
	add.w	r0, 40 #111	# _35,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:631:     gPB[UDP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp113
	st.b	[r0], r1	# *_35, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:632:     gPB[UDP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.191_36, gPB
	add.w	r0, 41 #111	# _37,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:632:     gPB[UDP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp114
	st.b	[r0], r1	# *_37, tmp114
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:633: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	udpPrepare, .-udpPrepare
	.p2align	1
	.global	udpTransmit
	.type	udpTransmit, @function
udpTransmit:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp51, datalen
	st.s	[r13 + (-4)], r0	# datalen, tmp52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:636:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >> 8;
	ld.s	r0, [r13 + (-4)]	# _1, datalen
	mov.w	r1, r0	# _2, _1
	add.w	r1, 28 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:636:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >> 8;
	mov.w	r0, 8	# tmp53,
	shr.w	r1, r0	# _3, tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:636:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >> 8;
	ld.w	r0, [gPB]	# gPB.192_4, gPB
	add.w	r0, 16 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:636:     gPB[IP_TOTLEN_H_P] = (IP_HEADER_LEN+UDP_HEADER_LEN+datalen) >> 8;
	st.b	[r0], r1	# *_5, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:637:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	ld.s	r0, [r13 + (-4)]	# tmp54, datalen
	mov.w	r1, r0	# _7, tmp54
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:637:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	ld.w	r0, [gPB]	# gPB.193_8, gPB
	add.w	r0, 17 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:637:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	add.w	r1, 28 #111	# tmp55,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:637:     gPB[IP_TOTLEN_L_P] = IP_HEADER_LEN+UDP_HEADER_LEN+datalen;
	st.b	[r0], r1	# *_9, _10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:638:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:639:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >>8;
	ld.s	r0, [r13 + (-4)]	# _11, datalen
	mov.w	r1, r0	# _12, _11
	add.w	r1, 8 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:639:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >>8;
	mov.w	r0, 8	# tmp56,
	shr.w	r1, r0	# _13, tmp56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:639:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >>8;
	ld.w	r0, [gPB]	# gPB.194_14, gPB
	add.w	r0, 38 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:639:     gPB[UDP_LEN_H_P] = (UDP_HEADER_LEN+datalen) >>8;
	st.b	[r0], r1	# *_15, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:640:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	ld.s	r0, [r13 + (-4)]	# tmp57, datalen
	mov.w	r1, r0	# _17, tmp57
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:640:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	ld.w	r0, [gPB]	# gPB.195_18, gPB
	add.w	r0, 39 #111	# _19,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:640:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	add.w	r1, 8 #111	# tmp58,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:640:     gPB[UDP_LEN_L_P] = UDP_HEADER_LEN+datalen;
	st.b	[r0], r1	# *_19, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:641:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
	ld.s	r0, [r13 + (-4)]	# tmp59, datalen
	add.w	r0, 16 #111	# tmp60,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:641:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + datalen,1);
	zex.s	r1, r0	# _22, _21
	mov.w	r0, sp	# tmp61,
	mov.w	r2, 1	# tmp62,
	st.w	[r0 + (12)], r2	#, tmp62
	st.w	[r0 + (8)], r1	#, _22
	mov.w	r1, 26	# tmp63,
	st.w	[r0 + (4)], r1	#, tmp63
	mov.w	r1, 40	# tmp64,
	st.w	[r0], r1	#, tmp64
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:642:     enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
	ld.s	r0, [r13 + (-4)]	# tmp65, datalen
	add.w	r0, 42 #111	# tmp66,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:642:     enc28j60PacketSend(UDP_HEADER_LEN+IP_HEADER_LEN+ETH_HEADER_LEN+datalen, gPB);
	zex.s	r1, r0	# _24, _23
	ld.w	r2, [gPB]	# gPB.196_25, gPB
	mov.w	r0, sp	# tmp67,
	st.w	[r0 + (4)], r2	#, gPB.196_25
	st.w	[r0], r1	#, _24
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:644: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	udpTransmit, .-udpTransmit
	.p2align	1
	.global	sendUdp
	.type	sendUdp, @function
sendUdp:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r2, [r13 + (12)]	# tmp32, datalen
	ld.w	r1, [r13 + (16)]	# tmp34, sport
	ld.w	r0, [r13 + (24)]	# tmp36, dport
	st.b	[r13 + (-4)], r2	# datalen, tmp33
	st.s	[r13 + (-8)], r1	# sport, tmp35
	st.s	[r13 + (-12)], r0	# dport, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:648:     udpPrepare(sport, dip, dport);
	ld.s	r1, [r13 + (-8)]	# _1, sport
	ld.s	r2, [r13 + (-12)]	# _2, dport
	mov.w	r0, sp	# tmp38,
	st.w	[r0 + (8)], r2	#, _2
	ld.w	r2, [r13 + (20)]	# tmp39, dip
	st.w	[r0 + (4)], r2	#, tmp39
	st.w	[r0], r1	#, _1
	call	udpPrepare		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:649:     if (datalen>220)
	ld.b	r1, [r13 + (-4)]	# tmp40, datalen
	mov.w	r0, 220	# tmp41,
	cmp.w	r1, r0	# tmp40, tmp41
	jse	.L135		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:650:         datalen = 220;
	mov.b	r0, -36	# tmp42,
	st.b	[r13 + (-4)], r0	# datalen, tmp42
.L135:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:651:     memcpy(gPB + UDP_DATA_P, data, datalen);
	ld.w	r0, [gPB]	# gPB.197_3, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:651:     memcpy(gPB + UDP_DATA_P, data, datalen);
	mov.w	r1, r0	# _4, gPB.197_3
	add.w	r1, 42 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:651:     memcpy(gPB + UDP_DATA_P, data, datalen);
	ld.b	r2, [r13 + (-4)]	# _5, datalen
	mov.w	r0, sp	# tmp43,
	st.w	[r0 + (8)], r2	#, _5
	ld.w	r2, [r13 + (8)]	# tmp44, data
	st.w	[r0 + (4)], r2	#, tmp44
	st.w	[r0], r1	#, _4
	call	memcpy		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:652:     udpTransmit(datalen);
	ld.b	r0, [r13 + (-4)]	# _6, datalen
	mov.w	r1, sp	# tmp45,
	st.w	[r1], r0	#, _6
	call	udpTransmit		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:653: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sendUdp, .-sendUdp
	.p2align	1
	.global	sendWol
	.type	sendWol, @function
sendWol:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 28 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:656:     setMACandIPs(allOnes, allOnes);
	mov.w	r0, sp	# tmp61,
	mov.w	r1, allOnes	# tmp62,
	st.w	[r0 + (4)], r1	#, tmp62
	mov.w	r1, allOnes	# tmp63,
	st.w	[r0], r1	#, tmp63
	call	setMACandIPs		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:657:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	ld.w	r0, [gPB]	# gPB.198_1, gPB
	add.w	r0, 12 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:657:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	mov.b	r1, 8	# tmp64,
	st.b	[r0], r1	# *_2, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:658:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	ld.w	r0, [gPB]	# gPB.199_3, gPB
	add.w	r0, 13 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:658:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	xor.w	r1, r1	# tmp65
	st.b	[r0], r1	# *_4, tmp65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:659:     memcpy(gPB + IP_P,iphdr,9);
	ld.w	r0, [gPB]	# gPB.200_5, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:659:     memcpy(gPB + IP_P,iphdr,9);
	add.w	r0, 14 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:659:     memcpy(gPB + IP_P,iphdr,9);
	ld.b	r1, [iphdr]	# tmp67, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp67
	ld.b	r1, [iphdr+1]	# tmp68, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp68
	ld.b	r1, [iphdr+2]	# tmp69, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp69
	ld.b	r1, [iphdr+3]	# tmp70, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp70
	ld.b	r1, [iphdr+4]	# tmp71, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp71
	ld.b	r1, [iphdr+5]	# tmp72, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp72
	ld.b	r1, [iphdr+6]	# tmp73, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp73
	ld.b	r1, [iphdr+7]	# tmp74, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp74
	ld.b	r1, [iphdr+8]	# tmp75, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_6], tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:660:     gPB[IP_TOTLEN_L_P] = 0x82;
	ld.w	r0, [gPB]	# gPB.201_7, gPB
	add.w	r0, 17 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:660:     gPB[IP_TOTLEN_L_P] = 0x82;
	mov.b	r1, -126	# tmp76,
	st.b	[r0], r1	# *_8, tmp76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:661:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	ld.w	r0, [gPB]	# gPB.202_9, gPB
	add.w	r0, 23 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:661:     gPB[IP_PROTO_P] = IP_PROTO_UDP_V;
	mov.b	r1, 17	# tmp77,
	st.b	[r0], r1	# *_10, tmp77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:662:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:663:     gPB[UDP_DST_PORT_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.203_11, gPB
	add.w	r0, 36 #111	# _12,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:663:     gPB[UDP_DST_PORT_H_P] = 0;
	xor.w	r1, r1	# tmp78
	st.b	[r0], r1	# *_12, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:664:     gPB[UDP_DST_PORT_L_P] = 0x9; // wol = normally 9
	ld.w	r0, [gPB]	# gPB.204_13, gPB
	add.w	r0, 37 #111	# _14,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:664:     gPB[UDP_DST_PORT_L_P] = 0x9; // wol = normally 9
	mov.b	r1, 9	# tmp79,
	st.b	[r0], r1	# *_14, tmp79
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:665:     gPB[UDP_SRC_PORT_H_P] = 10;
	ld.w	r0, [gPB]	# gPB.205_15, gPB
	add.w	r0, 34 #111	# _16,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:665:     gPB[UDP_SRC_PORT_H_P] = 10;
	mov.b	r1, 10	# tmp80,
	st.b	[r0], r1	# *_16, tmp80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:666:     gPB[UDP_SRC_PORT_L_P] = 0x42; // source port does not matter
	ld.w	r0, [gPB]	# gPB.206_17, gPB
	add.w	r0, 35 #111	# _18,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:666:     gPB[UDP_SRC_PORT_L_P] = 0x42; // source port does not matter
	mov.b	r1, 66	# tmp81,
	st.b	[r0], r1	# *_18, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:667:     gPB[UDP_LEN_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.207_19, gPB
	add.w	r0, 38 #111	# _20,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:667:     gPB[UDP_LEN_H_P] = 0;
	xor.w	r1, r1	# tmp82
	st.b	[r0], r1	# *_20, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:668:     gPB[UDP_LEN_L_P] = 110; // fixed len
	ld.w	r0, [gPB]	# gPB.208_21, gPB
	add.w	r0, 39 #111	# _22,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:668:     gPB[UDP_LEN_L_P] = 110; // fixed len
	mov.b	r1, 110	# tmp83,
	st.b	[r0], r1	# *_22, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:669:     gPB[UDP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.209_23, gPB
	add.w	r0, 40 #111	# _24,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:669:     gPB[UDP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp84
	st.b	[r0], r1	# *_24, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:670:     gPB[UDP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.210_25, gPB
	add.w	r0, 41 #111	# _26,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:670:     gPB[UDP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp85
	st.b	[r0], r1	# *_26, tmp85
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:671:     copyMac(gPB + UDP_DATA_P, allOnes);
	ld.w	r0, [gPB]	# gPB.211_27, gPB
	mov.w	r1, r0	# _28, gPB.211_27
	add.w	r1, 42 #111	# _28,
	mov.w	r0, sp	# tmp86,
	mov.w	r2, allOnes	# tmp87,
	st.w	[r0 + (4)], r2	#, tmp87
	st.w	[r0], r1	#, _28
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:672:     uint8_t pos = UDP_DATA_P;
	mov.b	r0, 42	# tmp88,
	st.b	[r13 + (-1)], r0	# pos, tmp88
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:673:     for (uint8_t m = 0; m < 16; ++m) {
	xor.w	r0, r0	# tmp89
	st.b	[r13 + (-2)], r0	# m, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:673:     for (uint8_t m = 0; m < 16; ++m) {
	j	.L137		#
.L138:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:674:         pos += 6;
	ld.b	r0, [r13 + (-1)]	# tmp90, pos
	add.w	r0, 6 #111	# tmp91,
	st.b	[r13 + (-1)], r0	# pos, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:675:         copyMac(gPB + pos, wolmac);
	ld.w	r1, [gPB]	# gPB.212_29, gPB
	ld.b	r0, [r13 + (-1)]	# _30, pos
	add.w	r1, r0 #222	# _31, _30
	mov.w	r0, sp	# tmp93,
	ld.w	r2, [r13 + (8)]	# tmp94, wolmac
	st.w	[r0 + (4)], r2	#, tmp94
	st.w	[r0], r1	#, _31
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:673:     for (uint8_t m = 0; m < 16; ++m) {
	ld.b	r0, [r13 + (-2)]	# tmp95, m
	add.w	r0, 1 #111	# tmp96,
	st.b	[r13 + (-2)], r0	# m, tmp97
.L137:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:673:     for (uint8_t m = 0; m < 16; ++m) {
	ld.b	r1, [r13 + (-2)]	# tmp98, m
	mov.w	r0, 15	# tmp99,
	cmp.w	r1, r0	# tmp98, tmp99
	jse	.L138		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:677:     fill_checksum(UDP_CHECKSUM_H_P, IP_SRC_P, 16 + 102,1);
	mov.w	r0, sp	# tmp100,
	mov.w	r1, 1	# tmp101,
	st.w	[r0 + (12)], r1	#, tmp101
	mov.w	r1, 118	# tmp102,
	st.w	[r0 + (8)], r1	#, tmp102
	mov.w	r1, 26	# tmp103,
	st.w	[r0 + (4)], r1	#, tmp103
	mov.w	r1, 40	# tmp104,
	st.w	[r0], r1	#, tmp104
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:678:     enc28j60PacketSend(pos + 6, gPB);
	ld.b	r0, [r13 + (-1)]	# tmp105, pos
	add.w	r0, 6 #111	# tmp106,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:678:     enc28j60PacketSend(pos + 6, gPB);
	zex.s	r1, r0	# _34, _33
	ld.w	r2, [gPB]	# gPB.213_35, gPB
	mov.w	r0, sp	# tmp107,
	st.w	[r0 + (4)], r2	#, gPB.213_35
	st.w	[r0], r1	#, _34
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:680: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	sendWol, .-sendWol
	.p2align	1
	.global	client_arp_whohas
	.type	client_arp_whohas, @function
client_arp_whohas:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:684:     setMACs(allOnes);
	mov.w	r1, sp	# tmp41,
	mov.w	r0, allOnes	# tmp42,
	st.w	[r1], r0	#, tmp42
	call	setMACs		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:685:     gPB[ETH_TYPE_H_P] = ETHTYPE_ARP_H_V;
	ld.w	r0, [gPB]	# gPB.214_1, gPB
	add.w	r0, 12 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:685:     gPB[ETH_TYPE_H_P] = ETHTYPE_ARP_H_V;
	mov.b	r1, 8	# tmp43,
	st.b	[r0], r1	# *_2, tmp43
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:686:     gPB[ETH_TYPE_L_P] = ETHTYPE_ARP_L_V;
	ld.w	r0, [gPB]	# gPB.215_3, gPB
	add.w	r0, 13 #111	# _4,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:686:     gPB[ETH_TYPE_L_P] = ETHTYPE_ARP_L_V;
	mov.b	r1, 6	# tmp44,
	st.b	[r0], r1	# *_4, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:687:     memcpy(gPB + ETH_ARP_P, arpreqhdr, sizeof arpreqhdr);
	ld.w	r0, [gPB]	# gPB.216_5, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:687:     memcpy(gPB + ETH_ARP_P, arpreqhdr, sizeof arpreqhdr);
	add.w	r0, 14 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:687:     memcpy(gPB + ETH_ARP_P, arpreqhdr, sizeof arpreqhdr);
	ld.b	r1, [arpreqhdr]	# tmp46, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp46
	ld.b	r1, [arpreqhdr+1]	# tmp47, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp47
	ld.b	r1, [arpreqhdr+2]	# tmp48, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp48
	ld.b	r1, [arpreqhdr+3]	# tmp49, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp49
	ld.b	r1, [arpreqhdr+4]	# tmp50, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp50
	ld.b	r1, [arpreqhdr+5]	# tmp51, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp51
	ld.b	r1, [arpreqhdr+6]	# tmp52, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp52
	ld.b	r1, [arpreqhdr+7]	# tmp53, MEM <unsigned char[8]> [(char * {ref-all})&arpreqhdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[8]> [(char * {ref-all})_6], tmp53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:688:     memset(gPB + ETH_ARP_DST_MAC_P, 0, ETH_LEN);
	ld.w	r0, [gPB]	# gPB.217_7, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:688:     memset(gPB + ETH_ARP_DST_MAC_P, 0, ETH_LEN);
	mov.w	r1, r0	# _8, gPB.217_7
	add.w	r1, 32 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:688:     memset(gPB + ETH_ARP_DST_MAC_P, 0, ETH_LEN);
	mov.w	r0, sp	# tmp54,
	mov.w	r2, 6	# tmp55,
	st.w	[r0 + (8)], r2	#, tmp55
	xor.w	r2, r2	# tmp56
	st.w	[r0 + (4)], r2	#, tmp56
	st.w	[r0], r1	#, _8
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:689:     copyMac(gPB + ETH_ARP_SRC_MAC_P, mymac);
	ld.w	r0, [gPB]	# gPB.218_9, gPB
	mov.w	r1, r0	# _10, gPB.218_9
	add.w	r1, 22 #111	# _10,
	mov.w	r0, sp	# tmp57,
	mov.w	r2, mymac	# tmp58,
	st.w	[r0 + (4)], r2	#, tmp58
	st.w	[r0], r1	#, _10
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:690:     copyIp(gPB + ETH_ARP_DST_IP_P, ip_we_search);
	ld.w	r0, [gPB]	# gPB.219_11, gPB
	mov.w	r1, r0	# _12, gPB.219_11
	add.w	r1, 38 #111	# _12,
	mov.w	r0, sp	# tmp59,
	ld.w	r2, [r13 + (8)]	# tmp60, ip_we_search
	st.w	[r0 + (4)], r2	#, tmp60
	st.w	[r0], r1	#, _12
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:691:     copyIp(gPB + ETH_ARP_SRC_IP_P, myip);
	ld.w	r0, [gPB]	# gPB.220_13, gPB
	mov.w	r1, r0	# _14, gPB.220_13
	add.w	r1, 28 #111	# _14,
	mov.w	r0, sp	# tmp61,
	mov.w	r2, myip	# tmp62,
	st.w	[r0 + (4)], r2	#, tmp62
	st.w	[r0], r1	#, _14
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:692:     enc28j60PacketSend(42, gPB);
	ld.w	r1, [gPB]	# gPB.221_15, gPB
	mov.w	r0, sp	# tmp63,
	st.w	[r0 + (4)], r1	#, gPB.221_15
	mov.w	r1, 42	# tmp64,
	st.w	[r0], r1	#, tmp64
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:694: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	client_arp_whohas, .-client_arp_whohas
	.p2align	1
	.global	clientWaitingGw
	.type	clientWaitingGw, @function
clientWaitingGw:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:697:     return !(waitgwmac & WGW_HAVE_GW_MAC);
	ld.b	r0, [waitgwmac]	# waitgwmac.222_1, waitgwmac
	zex.b	r1, r0	# _2, waitgwmac.222_1
	mov.w	r0, 2	# tmp32,
	mov.w	r2, r1	# _3, _2
	and.w	r2, r0	# _3, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:697:     return !(waitgwmac & WGW_HAVE_GW_MAC);
	mov.b	r0, 1	# _4,
	xor.w	r1, r1	# tmp33
	cmp.w	r2, r1	# _3, tmp33
	jz	.L141		#
	xor.w	r0, r0	# _4
.L141:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:698: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clientWaitingGw, .-clientWaitingGw
	.p2align	1
	.global	clientWaitingDns
	.type	clientWaitingDns, @function
clientWaitingDns:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:701:     if(is_lan(myip, dnsip))
	mov.w	r0, sp	# tmp35,
	mov.w	r1, dnsip	# tmp36,
	st.w	[r0 + (4)], r1	#, tmp36
	mov.w	r1, myip	# tmp37,
	st.w	[r0], r1	#, tmp37
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:701:     if(is_lan(myip, dnsip))
	zex.b	r1, r0	# tmp38, _1
	xor.w	r0, r0	# tmp39
	cmp.w	r1, r0	# tmp38, tmp39
	jz	.L144		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:702:         return !has_dns_mac;
	ld.b	r0, [has_dns_mac]	# has_dns_mac.223_2, has_dns_mac
	zex.b	r0, r0	# tmp40, has_dns_mac.223_2
	add.w	r0, -1 #111	# tmp41,
	mov.w	r1, 31	# tmp43,
	shr.w	r0, r1	# tmp42, tmp43
	j	.L145		#
.L144:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:703:     return !(waitgwmac & WGW_HAVE_GW_MAC);
	ld.b	r0, [waitgwmac]	# waitgwmac.224_4, waitgwmac
	zex.b	r1, r0	# _5, waitgwmac.224_4
	mov.w	r0, 2	# tmp44,
	mov.w	r2, r1	# _6, _5
	and.w	r2, r0	# _6, tmp44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:703:     return !(waitgwmac & WGW_HAVE_GW_MAC);
	mov.b	r0, 1	# _7,
	xor.w	r1, r1	# tmp45
	cmp.w	r2, r1	# _6, tmp45
	jz	.L145		#
	xor.w	r0, r0	# _7
.L145:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:704: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clientWaitingDns, .-clientWaitingDns
	.p2align	1
	.global	client_store_mac
	.type	client_store_mac, @function
client_store_mac:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:707:     if (memcmp(gPB + ETH_ARP_SRC_IP_P, source_ip, IP_LEN) != 0)
	ld.w	r0, [gPB]	# gPB.225_1, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:707:     if (memcmp(gPB + ETH_ARP_SRC_IP_P, source_ip, IP_LEN) != 0)
	mov.w	r1, r0	# _2, gPB.225_1
	add.w	r1, 28 #111	# _2,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:707:     if (memcmp(gPB + ETH_ARP_SRC_IP_P, source_ip, IP_LEN) != 0)
	mov.w	r0, sp	# tmp33,
	mov.w	r2, 4	# tmp34,
	st.w	[r0 + (8)], r2	#, tmp34
	ld.w	r2, [r13 + (8)]	# tmp35, source_ip
	st.w	[r0 + (4)], r2	#, tmp35
	st.w	[r0], r1	#, _2
	call	memcmp		#
	mov.w	r1, r0	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:707:     if (memcmp(gPB + ETH_ARP_SRC_IP_P, source_ip, IP_LEN) != 0)
	xor.w	r0, r0	# tmp36
	cmp.w	r1, r0	# _3, tmp36
	jz	.L148		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:708:         return 0;
	xor.w	r0, r0	# _6
	j	.L149		#
.L148:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:709:     copyMac(mac, gPB + ETH_ARP_SRC_MAC_P);
	ld.w	r0, [gPB]	# gPB.226_4, gPB
	mov.w	r1, r0	# _5, gPB.226_4
	add.w	r1, 22 #111	# _5,
	mov.w	r0, sp	# tmp37,
	st.w	[r0 + (4)], r1	#, _5
	ld.w	r1, [r13 + (12)]	# tmp38, mac
	st.w	[r0], r1	#, tmp38
	call	copyMac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:710:     return 1;
	mov.b	r0, 1	# _6,
.L149:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:711: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	client_store_mac, .-client_store_mac
	.global	dnstid_l
	.section	.bss
	.type	dnstid_l, @object
	.size	dnstid_l, 1
dnstid_l:
	.zero	1
	.text
	.p2align	1
	.global	dnsRequest
	.type	dnsRequest, @function
dnsRequest:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp60, fromRam
	st.b	[r13 + (-12)], r0	# fromRam, tmp61
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:726:     ++dnstid_l; // increment for next request, finally wrap
	ld.b	r0, [dnstid_l]	# dnstid_l.227_1, dnstid_l
	add.w	r0, 1 #111	# tmp62,
	st.b	[dnstid_l], r0	# dnstid_l, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:727:     if (dnsip[0] == 0)
	ld.b	r0, [dnsip]	# _3, dnsip
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:727:     if (dnsip[0] == 0)
	zex.b	r1, r0	# tmp63, _3
	xor.w	r0, r0	# tmp64
	cmp.w	r1, r0	# tmp63, tmp64
	jnz	.L151		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:728:         memset(dnsip, 8, IP_LEN); // use 8.8.8.8 Google DNS as default
	mov.w	r0, sp	# tmp65,
	mov.w	r1, 4	# tmp66,
	st.w	[r0 + (8)], r1	#, tmp66
	mov.w	r1, 8	# tmp67,
	st.w	[r0 + (4)], r1	#, tmp67
	mov.w	r1, dnsip	# tmp68,
	st.w	[r0], r1	#, tmp68
	call	memset		#
.L151:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:729:     udpPrepare((DNSCLIENT_SRC_PORT_H << 8) | dnstid_l, dnsip, DNS_PORT);
	ld.b	r0, [dnstid_l]	# dnstid_l.228_4, dnstid_l
	zex.b	r0, r0	# tmp69, dnstid_l.228_4
	mov.w	r1, -8192	# tmp71,
	or.w	r0, r1	# tmp70, tmp71
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:729:     udpPrepare((DNSCLIENT_SRC_PORT_H << 8) | dnstid_l, dnsip, DNS_PORT);
	zex.s	r1, r0	# _8, _7
	mov.w	r0, sp	# tmp72,
	mov.w	r2, 53	# tmp73,
	st.w	[r0 + (8)], r2	#, tmp73
	mov.w	r2, dnsip	# tmp74,
	st.w	[r0 + (4)], r2	#, tmp74
	st.w	[r0], r1	#, _8
	call	udpPrepare		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:730:     memset(gPB + UDP_DATA_P, 0, 12);
	ld.w	r0, [gPB]	# gPB.229_9, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:730:     memset(gPB + UDP_DATA_P, 0, 12);
	mov.w	r1, r0	# _10, gPB.229_9
	add.w	r1, 42 #111	# _10,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:730:     memset(gPB + UDP_DATA_P, 0, 12);
	mov.w	r0, sp	# tmp75,
	mov.w	r2, 12	# tmp76,
	st.w	[r0 + (8)], r2	#, tmp76
	xor.w	r2, r2	# tmp77
	st.w	[r0 + (4)], r2	#, tmp77
	st.w	[r0], r1	#, _10
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:732:     uint8_t *p = gPB + UDP_DATA_P + 12;
	ld.w	r0, [gPB]	# gPB.230_11, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:732:     uint8_t *p = gPB + UDP_DATA_P + 12;
	add.w	r0, 54 #111	# tmp78,
	st.w	[r13 + (-4)], r0	# p, tmp78
.L154:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:735:         uint8_t n = 0;
	xor.w	r0, r0	# tmp79
	st.b	[r13 + (-5)], r0	# n, tmp79
.L153:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:737:             c = fromRam ? *hostname : *hostname;
	ld.w	r0, [r13 + (8)]	# tmp80, hostname
	ld.b	r0, [r0]	# tmp81, *hostname_36
	st.b	[r13 + (-6)], r0	# c, tmp81
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:738:             ++hostname;
	ld.w	r0, [r13 + (8)]	# tmp83, hostname
	add.w	r0, 1 #111	# tmp82,
	st.w	[r13 + (8)], r0	# hostname, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:739:             if (c == '.' || c == 0)
	ld.b	r0, [r13 + (-6)]	#, c
	sex.b	r1, r0	# tmp84,
	mov.w	r0, 46	# tmp85,
	cmp.w	r1, r0	# tmp84, tmp85
	jz	.L152		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:739:             if (c == '.' || c == 0)
	ld.b	r0, [r13 + (-6)]	#, c
	sex.b	r1, r0	# tmp86,
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L152		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:741:             p[++n] = c;
	ld.b	r0, [r13 + (-5)]	# tmp88, n
	add.w	r0, 1 #111	# tmp89,
	st.b	[r13 + (-5)], r0	# n, tmp90
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:741:             p[++n] = c;
	ld.b	r1, [r13 + (-5)]	# _12, n
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:741:             p[++n] = c;
	ld.w	r0, [r13 + (-4)]	# tmp91, p
	add.w	r0, r1 #222	# _13, _12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:741:             p[++n] = c;
	ld.b	r1, [r13 + (-6)]	# c.231_14, c
	st.b	[r0], r1	# *_13, c.231_14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:737:             c = fromRam ? *hostname : *hostname;
	j	.L153		#
.L152:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:743:         *p++ = n;
	ld.w	r0, [r13 + (-4)]	# p.232_15, p
	mov.w	r1, r0	# tmp92, p.232_15
	add.w	r1, 1 #111	# tmp92,
	st.w	[r13 + (-4)], r1	# p, tmp92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:743:         *p++ = n;
	ld.b	r1, [r13 + (-5)]	# tmp93, n
	st.b	[r0], r1	# *p.232_15, tmp93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:744:         p += n;
	ld.b	r1, [r13 + (-5)]	# _16, n
	ld.w	r0, [r13 + (-4)]	# tmp95, p
	add.w	r0, r1 #222	# tmp94, _16
	st.w	[r13 + (-4)], r0	# p, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:745:     } while (c != 0);
	ld.b	r0, [r13 + (-6)]	#, c
	sex.b	r1, r0	# tmp96,
	xor.w	r0, r0	# tmp97
	cmp.w	r1, r0	# tmp96, tmp97
	jnz	.L154		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:747:     *p++ = 0; // terminate with zero, means root domain.
	ld.w	r0, [r13 + (-4)]	# p.233_17, p
	mov.w	r1, r0	# tmp98, p.233_17
	add.w	r1, 1 #111	# tmp98,
	st.w	[r13 + (-4)], r1	# p, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:747:     *p++ = 0; // terminate with zero, means root domain.
	xor.w	r1, r1	# tmp99
	st.b	[r0], r1	# *p.233_17, tmp99
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:748:     *p++ = 0;
	ld.w	r0, [r13 + (-4)]	# p.234_18, p
	mov.w	r1, r0	# tmp100, p.234_18
	add.w	r1, 1 #111	# tmp100,
	st.w	[r13 + (-4)], r1	# p, tmp100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:748:     *p++ = 0;
	xor.w	r1, r1	# tmp101
	st.b	[r0], r1	# *p.234_18, tmp101
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:749:     *p++ = DNS_TYPE_A;
	ld.w	r0, [r13 + (-4)]	# p.235_19, p
	mov.w	r1, r0	# tmp102, p.235_19
	add.w	r1, 1 #111	# tmp102,
	st.w	[r13 + (-4)], r1	# p, tmp102
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:749:     *p++ = DNS_TYPE_A;
	mov.b	r1, 1	# tmp103,
	st.b	[r0], r1	# *p.235_19, tmp103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:750:     *p++ = 0;
	ld.w	r0, [r13 + (-4)]	# p.236_20, p
	mov.w	r1, r0	# tmp104, p.236_20
	add.w	r1, 1 #111	# tmp104,
	st.w	[r13 + (-4)], r1	# p, tmp104
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:750:     *p++ = 0;
	xor.w	r1, r1	# tmp105
	st.b	[r0], r1	# *p.236_20, tmp105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:751:     *p++ = DNS_CLASS_IN;
	ld.w	r0, [r13 + (-4)]	# p.237_21, p
	mov.w	r1, r0	# tmp106, p.237_21
	add.w	r1, 1 #111	# tmp106,
	st.w	[r13 + (-4)], r1	# p, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:751:     *p++ = DNS_CLASS_IN;
	mov.b	r1, 1	# tmp107,
	st.b	[r0], r1	# *p.237_21, tmp107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:752:     uint8_t i = p - gPB - UDP_DATA_P;
	ld.w	r1, [gPB]	# gPB.238_22, gPB
	ld.w	r0, [r13 + (-4)]	# tmp108, p
	sub.w	r0, r1 #222	# _23, gPB.238_22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:752:     uint8_t i = p - gPB - UDP_DATA_P;
	add.w	r0, -42 #111	# tmp109,
	st.b	[r13 + (-7)], r0	# i, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:753:     gPB[UDP_DATA_P] = i;
	ld.w	r0, [gPB]	# gPB.239_25, gPB
	add.w	r0, 42 #111	# _26,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:753:     gPB[UDP_DATA_P] = i;
	ld.b	r1, [r13 + (-7)]	# tmp111, i
	st.b	[r0], r1	# *_26, tmp111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:754:     gPB[UDP_DATA_P+1] = dnstid_l;
	ld.w	r0, [gPB]	# gPB.240_27, gPB
	add.w	r0, 43 #111	# _28,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:754:     gPB[UDP_DATA_P+1] = dnstid_l;
	ld.b	r1, [dnstid_l]	# dnstid_l.241_29, dnstid_l
	st.b	[r0], r1	# *_28, dnstid_l.241_29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:755:     gPB[UDP_DATA_P+2] = 1; // flags, standard recursive query
	ld.w	r0, [gPB]	# gPB.242_30, gPB
	add.w	r0, 44 #111	# _31,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:755:     gPB[UDP_DATA_P+2] = 1; // flags, standard recursive query
	mov.b	r1, 1	# tmp112,
	st.b	[r0], r1	# *_31, tmp112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:756:     gPB[UDP_DATA_P+5] = 1; // 1 question
	ld.w	r0, [gPB]	# gPB.243_32, gPB
	add.w	r0, 47 #111	# _33,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:756:     gPB[UDP_DATA_P+5] = 1; // 1 question
	mov.b	r1, 1	# tmp113,
	st.b	[r0], r1	# *_33, tmp113
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:757:     udpTransmit(i);
	ld.b	r0, [r13 + (-7)]	# _34, i
	mov.w	r1, sp	# tmp114,
	st.w	[r1], r0	#, _34
	call	udpTransmit		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:758: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	dnsRequest, .-dnsRequest
	.p2align	1
	.global	checkForDnsAnswer
	.type	checkForDnsAnswer, @function
checkForDnsAnswer:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp68, plen
	st.s	[r13 + (-8)], r0	# plen, tmp69
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:766:     uint8_t *p = gPB + UDP_DATA_P; //start of UDP payload
	ld.w	r0, [gPB]	# gPB.244_1, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:766:     uint8_t *p = gPB + UDP_DATA_P; //start of UDP payload
	add.w	r0, 42 #111	# tmp70,
	st.w	[r13 + (-4)], r0	# p, tmp70
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:767:     if (plen < 70 || gPB[UDP_SRC_PORT_L_P] != DNS_PORT || //from DNS source port
	ld.s	r1, [r13 + (-8)]	# tmp71, plen
	mov.w	r0, 69	# tmp72,
	cmp.w	r1, r0	# tmp71, tmp72
	jse	.L156		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:767:     if (plen < 70 || gPB[UDP_SRC_PORT_L_P] != DNS_PORT || //from DNS source port
	ld.w	r0, [gPB]	# gPB.245_2, gPB
	add.w	r0, 35 #111	# _3,
	ld.b	r0, [r0]	# _4, *_3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:767:     if (plen < 70 || gPB[UDP_SRC_PORT_L_P] != DNS_PORT || //from DNS source port
	zex.b	r1, r0	# tmp73, _4
	mov.w	r0, 53	# tmp74,
	cmp.w	r1, r0	# tmp73, tmp74
	jnz	.L156		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:768:             gPB[UDP_DST_PORT_H_P] != DNSCLIENT_SRC_PORT_H || //response to same port as we sent from (MSB)
	ld.w	r0, [gPB]	# gPB.246_5, gPB
	add.w	r0, 36 #111	# _6,
	ld.b	r0, [r0]	# _7, *_6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:767:     if (plen < 70 || gPB[UDP_SRC_PORT_L_P] != DNS_PORT || //from DNS source port
	zex.b	r1, r0	# tmp75, _7
	mov.w	r0, 224	# tmp76,
	cmp.w	r1, r0	# tmp75, tmp76
	jnz	.L156		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:769:             gPB[UDP_DST_PORT_L_P] != dnstid_l || //response to same port as we sent from (LSB)
	ld.w	r0, [gPB]	# gPB.247_8, gPB
	add.w	r0, 37 #111	# _9,
	ld.b	r1, [r0]	# _10, *_9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:769:             gPB[UDP_DST_PORT_L_P] != dnstid_l || //response to same port as we sent from (LSB)
	ld.b	r0, [dnstid_l]	# dnstid_l.248_11, dnstid_l
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:768:             gPB[UDP_DST_PORT_H_P] != DNSCLIENT_SRC_PORT_H || //response to same port as we sent from (MSB)
	zex.b	r1, r1	# tmp77, _10
	zex.b	r0, r0	# tmp78, dnstid_l.248_11
	cmp.w	r1, r0	# tmp77, tmp78
	jnz	.L156		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:770:             p[1] != dnstid_l) //message id same as we sent
	ld.w	r0, [r13 + (-4)]	# tmp79, p
	add.w	r0, 1 #111	# _12,
	ld.b	r1, [r0]	# _13, *_12
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:770:             p[1] != dnstid_l) //message id same as we sent
	ld.b	r0, [dnstid_l]	# dnstid_l.249_14, dnstid_l
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:769:             gPB[UDP_DST_PORT_L_P] != dnstid_l || //response to same port as we sent from (LSB)
	zex.b	r1, r1	# tmp80, _13
	zex.b	r0, r0	# tmp81, dnstid_l.249_14
	cmp.w	r1, r0	# tmp80, tmp81
	jz	.L157		#
.L156:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:771:         return false; //not our DNS response
	xor.w	r0, r0	# _44
	j	.L158		#
.L157:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:772:     if((p[3] & 0x0F) != 0)
	ld.w	r0, [r13 + (-4)]	# tmp82, p
	add.w	r0, 3 #111	# _15,
	ld.b	r0, [r0]	# _16, *_15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:772:     if((p[3] & 0x0F) != 0)
	zex.b	r1, r0	# _17, _16
	mov.w	r0, 15	# tmp83,
	and.w	r1, r0	# _18, tmp83
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:772:     if((p[3] & 0x0F) != 0)
	xor.w	r0, r0	# tmp84
	cmp.w	r1, r0	# _18, tmp84
	jz	.L159		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:773:         return true; //DNS response received with error
	mov.b	r0, 1	# _44,
	j	.L158		#
.L159:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:775:     p += *p; // we encoded the query len into tid
	ld.w	r0, [r13 + (-4)]	# tmp85, p
	ld.b	r0, [r0]	# _19, *p_48
	zex.b	r1, r0	# _20, _19
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:775:     p += *p; // we encoded the query len into tid
	ld.w	r0, [r13 + (-4)]	# tmp87, p
	add.w	r0, r1 #222	# tmp86, _20
	st.w	[r13 + (-4)], r0	# p, tmp86
.L167:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:777:         if (*p & 0xC0)
	ld.w	r0, [r13 + (-4)]	# tmp88, p
	ld.b	r0, [r0]	# _21, *p_41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:777:         if (*p & 0xC0)
	zex.b	r1, r0	# _22, _21
	mov.w	r0, 192	# tmp89,
	and.w	r1, r0	# _23, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:777:         if (*p & 0xC0)
	xor.w	r0, r0	# tmp90
	cmp.w	r1, r0	# _23, tmp90
	jz	.L162		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:778:             p += 2;
	ld.w	r0, [r13 + (-4)]	# tmp92, p
	add.w	r0, 2 #111	# tmp91,
	st.w	[r13 + (-4)], r0	# p, tmp91
	j	.L161		#
.L163:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:781:                 if (*p == 0) {
	ld.w	r0, [r13 + (-4)]	# tmp93, p
	ld.b	r0, [r0]	# _24, *p_51
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:781:                 if (*p == 0) {
	zex.b	r1, r0	# tmp94, _24
	xor.w	r0, r0	# tmp95
	cmp.w	r1, r0	# tmp94, tmp95
	jnz	.L162		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:782:                     ++p;
	ld.w	r0, [r13 + (-4)]	# tmp97, p
	add.w	r0, 1 #111	# tmp96,
	st.w	[r13 + (-4)], r0	# p, tmp96
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:783:                     break;
	j	.L161		#
.L162:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:780:             while (++p < gPB + plen) {
	ld.w	r0, [r13 + (-4)]	# tmp99, p
	add.w	r0, 1 #111	# tmp98,
	st.w	[r13 + (-4)], r0	# p, tmp98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:780:             while (++p < gPB + plen) {
	ld.w	r0, [gPB]	# gPB.250_25, gPB
	ld.s	r1, [r13 + (-8)]	# _26, plen
	add.w	r0, r1 #222	# _27, _26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:780:             while (++p < gPB + plen) {
	ld.w	r1, [r13 + (-4)]	# tmp100, p
	cmp.w	r1, r0	# tmp100, _27
	js	.L163		#
.L161:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:786:         if (p + 14 > gPB + plen)
	ld.w	r0, [r13 + (-4)]	# tmp101, p
	mov.w	r1, r0	# _28, tmp101
	add.w	r1, 14 #111	# _28,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:786:         if (p + 14 > gPB + plen)
	ld.w	r0, [gPB]	# gPB.251_29, gPB
	ld.s	r2, [r13 + (-8)]	# _30, plen
	add.w	r0, r2 #222	# _31, _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:786:         if (p + 14 > gPB + plen)
	cmp.w	r1, r0	# _28, _31
	jg	.L168		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:788:         if (p[1] == DNS_TYPE_A && p[9] == 4) { // type "A" and IPv4
	ld.w	r0, [r13 + (-4)]	# tmp102, p
	add.w	r0, 1 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:788:         if (p[1] == DNS_TYPE_A && p[9] == 4) { // type "A" and IPv4
	zex.b	r1, r0	# tmp103, _33
	mov.w	r0, 1	# tmp104,
	cmp.w	r1, r0	# tmp103, tmp104
	jnz	.L166		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:788:         if (p[1] == DNS_TYPE_A && p[9] == 4) { // type "A" and IPv4
	ld.w	r0, [r13 + (-4)]	# tmp105, p
	add.w	r0, 9 #111	# _34,
	ld.b	r0, [r0]	# _35, *_34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:788:         if (p[1] == DNS_TYPE_A && p[9] == 4) { // type "A" and IPv4
	zex.b	r1, r0	# tmp106, _35
	mov.w	r0, 4	# tmp107,
	cmp.w	r1, r0	# tmp106, tmp107
	jnz	.L166		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:789:             copyIp(hisip, p + 10);
	ld.w	r0, [r13 + (-4)]	# tmp108, p
	mov.w	r1, r0	# _36, tmp108
	add.w	r1, 10 #111	# _36,
	mov.w	r0, sp	# tmp109,
	st.w	[r0 + (4)], r1	#, _36
	mov.w	r1, hisip	# tmp110,
	st.w	[r0], r1	#, tmp110
	call	copyIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:790:             break;
	j	.L165		#
.L166:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:792:         p += p[9] + 10;
	ld.w	r0, [r13 + (-4)]	# tmp111, p
	add.w	r0, 9 #111	# _37,
	ld.b	r0, [r0]	# _38, *_37
	zex.b	r0, r0	# _39, _38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:792:         p += p[9] + 10;
	mov.w	r1, r0	# _40, _39
	add.w	r1, 10 #111	# _40,
	ld.w	r0, [r13 + (-4)]	# tmp113, p
	add.w	r0, r1 #222	# tmp112, _40
	st.w	[r13 + (-4)], r0	# p, tmp112
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:777:         if (*p & 0xC0)
	j	.L167		#
.L168:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:787:             break;
	nop	
.L165:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:794:     return false; //No error
	xor.w	r0, r0	# _44
.L158:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:795: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	checkForDnsAnswer, .-checkForDnsAnswer
	.p2align	1
	.global	dnsLookup
	.type	dnsLookup, @function
dnsLookup:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (12)]	# tmp61, fromRam
	st.b	[r13 + (-8)], r0	# fromRam, tmp62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:799:     uint16_t start = get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:799:     uint16_t start = get_millis();
	st.s	[r13 + (-2)], r0	# start, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:801:     while(!isLinkUp())
	j	.L170		#
.L172:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:803:         if ((uint16_t)(get_millis()) - start >= 30000)
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:803:         if ((uint16_t)(get_millis()) - start >= 30000)
	zex.s	r1, r0	# _4, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:803:         if ((uint16_t)(get_millis()) - start >= 30000)
	ld.s	r0, [r13 + (-2)]	# _5, start
	sub.w	r1, r0 #222	# _6, _5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:803:         if ((uint16_t)(get_millis()) - start >= 30000)
	mov.w	r0, 29999	# tmp64,
	cmp.w	r1, r0	# _6, tmp64
	jses	.L170		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:804:             return false; //timeout waiting for link
	xor.w	r0, r0	# _34
	j	.L171		#
.L170:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:801:     while(!isLinkUp())
	call	isLinkUp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:801:     while(!isLinkUp())
	zex.b	r1, r0	# tmp65, _7
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# tmp65, tmp66
	jz	.L172		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:806:     while(clientWaitingDns())
	j	.L173		#
.L174:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:808:         packetLoop(enc28j60PacketReceive(bufferSize, gPB));
	ld.s	r0, [bufferSize]	# bufferSize.252_8, bufferSize
	zex.s	r1, r0	# _9, bufferSize.252_8
	ld.w	r2, [gPB]	# gPB.253_10, gPB
	mov.w	r0, sp	# tmp67,
	st.w	[r0 + (4)], r2	#, gPB.253_10
	st.w	[r0], r1	#, _9
	call	enc28j60PacketReceive		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:808:         packetLoop(enc28j60PacketReceive(bufferSize, gPB));
	zex.s	r0, r0	# _12, _11
	mov.w	r1, sp	# tmp68,
	st.w	[r1], r0	#, _12
	call	packetLoop		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:809:         if ((uint16_t)(get_millis()) - start >= 30000)
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:809:         if ((uint16_t)(get_millis()) - start >= 30000)
	zex.s	r1, r0	# _15, _14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:809:         if ((uint16_t)(get_millis()) - start >= 30000)
	ld.s	r0, [r13 + (-2)]	# _16, start
	sub.w	r1, r0 #222	# _17, _16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:809:         if ((uint16_t)(get_millis()) - start >= 30000)
	mov.w	r0, 29999	# tmp69,
	cmp.w	r1, r0	# _17, tmp69
	jses	.L173		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:810:             return false; //timeout waiting for gateway ARP
	xor.w	r0, r0	# _34
	j	.L171		#
.L173:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:806:     while(clientWaitingDns())
	call	clientWaitingDns		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:806:     while(clientWaitingDns())
	zex.b	r1, r0	# tmp70, _18
	xor.w	r0, r0	# tmp71
	cmp.w	r1, r0	# tmp70, tmp71
	jnz	.L174		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:813:     memset(hisip, 0, IP_LEN);
	mov.w	r0, sp	# tmp72,
	mov.w	r1, 4	# tmp73,
	st.w	[r0 + (8)], r1	#, tmp73
	xor.w	r1, r1	# tmp74
	st.w	[r0 + (4)], r1	#, tmp74
	mov.w	r1, hisip	# tmp75,
	st.w	[r0], r1	#, tmp75
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:814:     dnsRequest(name, fromRam);
	ld.b	r1, [r13 + (-8)]	# _19, fromRam
	mov.w	r0, sp	# tmp76,
	st.w	[r0 + (4)], r1	#, _19
	ld.w	r1, [r13 + (8)]	# tmp77, name
	st.w	[r0], r1	#, tmp77
	call	dnsRequest		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:816:     start = get_millis();
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:816:     start = get_millis();
	st.s	[r13 + (-2)], r0	# start, tmp78
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:817:     while (hisip[0] == 0) {
	j	.L175		#
.L177:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:818:         if ((uint16_t)(get_millis()) - start >= 30000)
	call	get_millis		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:818:         if ((uint16_t)(get_millis()) - start >= 30000)
	zex.s	r1, r0	# _23, _22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:818:         if ((uint16_t)(get_millis()) - start >= 30000)
	ld.s	r0, [r13 + (-2)]	# _24, start
	sub.w	r1, r0 #222	# _25, _24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:818:         if ((uint16_t)(get_millis()) - start >= 30000)
	mov.w	r0, 29999	# tmp79,
	cmp.w	r1, r0	# _25, tmp79
	jses	.L176		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:819:             return false; //timeout waiting for dns response
	xor.w	r0, r0	# _34
	j	.L171		#
.L176:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:820:         uint16_t len = enc28j60PacketReceive(bufferSize, gPB);
	ld.s	r0, [bufferSize]	# bufferSize.254_26, bufferSize
	zex.s	r1, r0	# _27, bufferSize.254_26
	ld.w	r2, [gPB]	# gPB.255_28, gPB
	mov.w	r0, sp	# tmp80,
	st.w	[r0 + (4)], r2	#, gPB.255_28
	st.w	[r0], r1	#, _27
	call	enc28j60PacketReceive		#
	st.s	[r13 + (-4)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:821:         if (len > 0 && packetLoop(len) == 0) //packet not handled by tcp/ip packet loop
	ld.s	r1, [r13 + (-4)]	# tmp81, len
	xor.w	r0, r0	# tmp82
	cmp.w	r1, r0	# tmp81, tmp82
	jz	.L175		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:821:         if (len > 0 && packetLoop(len) == 0) //packet not handled by tcp/ip packet loop
	ld.s	r0, [r13 + (-4)]	# _29, len
	mov.w	r1, sp	# tmp83,
	st.w	[r1], r0	#, _29
	call	packetLoop		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:821:         if (len > 0 && packetLoop(len) == 0) //packet not handled by tcp/ip packet loop
	zex.s	r1, r0	# tmp84, _30
	xor.w	r0, r0	# tmp85
	cmp.w	r1, r0	# tmp84, tmp85
	jnz	.L175		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:822:             if(checkForDnsAnswer(len))
	ld.s	r0, [r13 + (-4)]	# _31, len
	mov.w	r1, sp	# tmp86,
	st.w	[r1], r0	#, _31
	call	checkForDnsAnswer		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:822:             if(checkForDnsAnswer(len))
	zex.b	r1, r0	# tmp87, _32
	xor.w	r0, r0	# tmp88
	cmp.w	r1, r0	# tmp87, tmp88
	jz	.L175		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:823:                 return false; //DNS response received with error
	xor.w	r0, r0	# _34
	j	.L171		#
.L175:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:817:     while (hisip[0] == 0) {
	ld.b	r0, [hisip]	# _33, hisip
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:817:     while (hisip[0] == 0) {
	zex.b	r1, r0	# tmp89, _33
	xor.w	r0, r0	# tmp90
	cmp.w	r1, r0	# tmp89, tmp90
	jz	.L177		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:826:     return true;
	mov.b	r0, 1	# _34,
.L171:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:827: } 
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	dnsLookup, .-dnsLookup
	.p2align	1
	.global	client_syn
	.type	client_syn, @function
client_syn:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r2, [r13 + (8)]	# tmp77, srcport
	ld.w	r1, [r13 + (12)]	# tmp79, dstport_h
	ld.w	r0, [r13 + (16)]	# tmp81, dstport_l
	st.b	[r13 + (-4)], r2	# srcport, tmp78
	st.b	[r13 + (-8)], r1	# dstport_h, tmp80
	st.b	[r13 + (-12)], r0	# dstport_l, tmp82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:830:     if(is_lan(myip, hisip)) {
	mov.w	r0, sp	# tmp83,
	mov.w	r1, hisip	# tmp84,
	st.w	[r0 + (4)], r1	#, tmp84
	mov.w	r1, myip	# tmp85,
	st.w	[r0], r1	#, tmp85
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:830:     if(is_lan(myip, hisip)) {
	zex.b	r1, r0	# tmp86, _1
	xor.w	r0, r0	# tmp87
	cmp.w	r1, r0	# tmp86, tmp87
	jz	.L179		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:831:         setMACandIPs(destmacaddr, hisip);
	mov.w	r0, sp	# tmp88,
	mov.w	r1, hisip	# tmp89,
	st.w	[r0 + (4)], r1	#, tmp89
	mov.w	r1, destmacaddr	# tmp90,
	st.w	[r0], r1	#, tmp90
	call	setMACandIPs		#
	j	.L180		#
.L179:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:833:         setMACandIPs(gwmacaddr, hisip);
	mov.w	r0, sp	# tmp91,
	mov.w	r1, hisip	# tmp92,
	st.w	[r0 + (4)], r1	#, tmp92
	mov.w	r1, gwmacaddr	# tmp93,
	st.w	[r0], r1	#, tmp93
	call	setMACandIPs		#
.L180:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:835:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	ld.w	r0, [gPB]	# gPB.256_2, gPB
	add.w	r0, 12 #111	# _3,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:835:     gPB[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	mov.b	r1, 8	# tmp94,
	st.b	[r0], r1	# *_3, tmp94
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:836:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	ld.w	r0, [gPB]	# gPB.257_4, gPB
	add.w	r0, 13 #111	# _5,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:836:     gPB[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	xor.w	r1, r1	# tmp95
	st.b	[r0], r1	# *_5, tmp95
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:837:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.w	r0, [gPB]	# gPB.258_6, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:837:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	add.w	r0, 14 #111	# _7,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:837:     memcpy(gPB + IP_P,iphdr,sizeof iphdr);
	ld.b	r1, [iphdr]	# tmp97, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp97
	ld.b	r1, [iphdr+1]	# tmp98, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (1)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp98
	ld.b	r1, [iphdr+2]	# tmp99, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (2)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp99
	ld.b	r1, [iphdr+3]	# tmp100, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (3)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp100
	ld.b	r1, [iphdr+4]	# tmp101, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (4)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp101
	ld.b	r1, [iphdr+5]	# tmp102, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (5)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp102
	ld.b	r1, [iphdr+6]	# tmp103, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (6)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp103
	ld.b	r1, [iphdr+7]	# tmp104, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (7)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp104
	ld.b	r1, [iphdr+8]	# tmp105, MEM <unsigned char[9]> [(char * {ref-all})&iphdr]
	st.b	[r0 + (8)], r1	# MEM <unsigned char[9]> [(char * {ref-all})_7], tmp105
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:838:     gPB[IP_TOTLEN_L_P] = 44; // good for syn
	ld.w	r0, [gPB]	# gPB.259_8, gPB
	add.w	r0, 17 #111	# _9,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:838:     gPB[IP_TOTLEN_L_P] = 44; // good for syn
	mov.b	r1, 44	# tmp106,
	st.b	[r0], r1	# *_9, tmp106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:839:     gPB[IP_PROTO_P] = IP_PROTO_TCP_V;
	ld.w	r0, [gPB]	# gPB.260_10, gPB
	add.w	r0, 23 #111	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:839:     gPB[IP_PROTO_P] = IP_PROTO_TCP_V;
	mov.b	r1, 6	# tmp107,
	st.b	[r0], r1	# *_11, tmp107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:840:     fill_ip_hdr_checksum();
	call	fill_ip_hdr_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:841:     gPB[TCP_DST_PORT_H_P] = dstport_h;
	ld.w	r0, [gPB]	# gPB.261_12, gPB
	add.w	r0, 36 #111	# _13,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:841:     gPB[TCP_DST_PORT_H_P] = dstport_h;
	ld.b	r1, [r13 + (-8)]	# tmp108, dstport_h
	st.b	[r0], r1	# *_13, tmp108
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:842:     gPB[TCP_DST_PORT_L_P] = dstport_l;
	ld.w	r0, [gPB]	# gPB.262_14, gPB
	add.w	r0, 37 #111	# _15,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:842:     gPB[TCP_DST_PORT_L_P] = dstport_l;
	ld.b	r1, [r13 + (-12)]	# tmp109, dstport_l
	st.b	[r0], r1	# *_15, tmp109
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:843:     gPB[TCP_SRC_PORT_H_P] = TCPCLIENT_SRC_PORT_H;
	ld.w	r0, [gPB]	# gPB.263_16, gPB
	add.w	r0, 34 #111	# _17,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:843:     gPB[TCP_SRC_PORT_H_P] = TCPCLIENT_SRC_PORT_H;
	mov.b	r1, 11	# tmp110,
	st.b	[r0], r1	# *_17, tmp110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:844:     gPB[TCP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
	ld.w	r0, [gPB]	# gPB.264_18, gPB
	add.w	r0, 35 #111	# _19,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:844:     gPB[TCP_SRC_PORT_L_P] = srcport; // lower 8 bit of src port
	ld.b	r1, [r13 + (-4)]	# tmp111, srcport
	st.b	[r0], r1	# *_19, tmp111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:845:     memset(gPB + TCP_SEQ_H_P, 0, 8);
	ld.w	r0, [gPB]	# gPB.265_20, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:845:     memset(gPB + TCP_SEQ_H_P, 0, 8);
	mov.w	r1, r0	# _21, gPB.265_20
	add.w	r1, 38 #111	# _21,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:845:     memset(gPB + TCP_SEQ_H_P, 0, 8);
	mov.w	r0, sp	# tmp112,
	mov.w	r2, 8	# tmp113,
	st.w	[r0 + (8)], r2	#, tmp113
	xor.w	r2, r2	# tmp114
	st.w	[r0 + (4)], r2	#, tmp114
	st.w	[r0], r1	#, _21
	call	memset		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:846:     gPB[TCP_SEQ_H_P+2] = seqnum;
	ld.w	r0, [gPB]	# gPB.266_22, gPB
	add.w	r0, 40 #111	# _23,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:846:     gPB[TCP_SEQ_H_P+2] = seqnum;
	ld.b	r1, [seqnum]	# seqnum.267_24, seqnum
	st.b	[r0], r1	# *_23, seqnum.267_24
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:847:     seqnum += 3;
	ld.b	r0, [seqnum]	# seqnum.268_25, seqnum
	add.w	r0, 3 #111	# tmp115,
	st.b	[seqnum], r0	# seqnum, _26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:848:     gPB[TCP_HEADER_LEN_P] = 0x60; // 0x60=24 len: (0x60>>4) * 4
	ld.w	r0, [gPB]	# gPB.269_27, gPB
	add.w	r0, 46 #111	# _28,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:848:     gPB[TCP_HEADER_LEN_P] = 0x60; // 0x60=24 len: (0x60>>4) * 4
	mov.b	r1, 96	# tmp116,
	st.b	[r0], r1	# *_28, tmp116
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:849:     gPB[TCP_FLAGS_P] = TCP_FLAGS_SYN_V;
	ld.w	r0, [gPB]	# gPB.270_29, gPB
	add.w	r0, 47 #111	# _30,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:849:     gPB[TCP_FLAGS_P] = TCP_FLAGS_SYN_V;
	mov.b	r1, 2	# tmp117,
	st.b	[r0], r1	# *_30, tmp117
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:850:     gPB[TCP_WIN_SIZE] = 0x3; // 1024 = 0x400 768 = 0x300, initial window
	ld.w	r0, [gPB]	# gPB.271_31, gPB
	add.w	r0, 48 #111	# _32,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:850:     gPB[TCP_WIN_SIZE] = 0x3; // 1024 = 0x400 768 = 0x300, initial window
	mov.b	r1, 3	# tmp118,
	st.b	[r0], r1	# *_32, tmp118
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:851:     gPB[TCP_WIN_SIZE+1] = 0x0;
	ld.w	r0, [gPB]	# gPB.272_33, gPB
	add.w	r0, 49 #111	# _34,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:851:     gPB[TCP_WIN_SIZE+1] = 0x0;
	xor.w	r1, r1	# tmp119
	st.b	[r0], r1	# *_34, tmp119
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:852:     gPB[TCP_CHECKSUM_H_P] = 0;
	ld.w	r0, [gPB]	# gPB.273_35, gPB
	add.w	r0, 50 #111	# _36,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:852:     gPB[TCP_CHECKSUM_H_P] = 0;
	xor.w	r1, r1	# tmp120
	st.b	[r0], r1	# *_36, tmp120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:853:     gPB[TCP_CHECKSUM_L_P] = 0;
	ld.w	r0, [gPB]	# gPB.274_37, gPB
	add.w	r0, 51 #111	# _38,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:853:     gPB[TCP_CHECKSUM_L_P] = 0;
	xor.w	r1, r1	# tmp121
	st.b	[r0], r1	# *_38, tmp121
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:854:     gPB[TCP_CHECKSUM_L_P+1] = 0;
	ld.w	r0, [gPB]	# gPB.275_39, gPB
	add.w	r0, 52 #111	# _40,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:854:     gPB[TCP_CHECKSUM_L_P+1] = 0;
	xor.w	r1, r1	# tmp122
	st.b	[r0], r1	# *_40, tmp122
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:855:     gPB[TCP_CHECKSUM_L_P+2] = 0;
	ld.w	r0, [gPB]	# gPB.276_41, gPB
	add.w	r0, 53 #111	# _42,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:855:     gPB[TCP_CHECKSUM_L_P+2] = 0;
	xor.w	r1, r1	# tmp123
	st.b	[r0], r1	# *_42, tmp123
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:856:     gPB[TCP_OPTIONS_P] = 2;
	ld.w	r0, [gPB]	# gPB.277_43, gPB
	add.w	r0, 54 #111	# _44,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:856:     gPB[TCP_OPTIONS_P] = 2;
	mov.b	r1, 2	# tmp124,
	st.b	[r0], r1	# *_44, tmp124
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:857:     gPB[TCP_OPTIONS_P+1] = 4;
	ld.w	r0, [gPB]	# gPB.278_45, gPB
	add.w	r0, 55 #111	# _46,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:857:     gPB[TCP_OPTIONS_P+1] = 4;
	mov.b	r1, 4	# tmp125,
	st.b	[r0], r1	# *_46, tmp125
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:858:     gPB[TCP_OPTIONS_P+2] = (CLIENTMSS>>8);
	ld.w	r0, [gPB]	# gPB.279_47, gPB
	add.w	r0, 56 #111	# _48,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:858:     gPB[TCP_OPTIONS_P+2] = (CLIENTMSS>>8);
	mov.b	r1, 2	# tmp126,
	st.b	[r0], r1	# *_48, tmp126
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:859:     gPB[TCP_OPTIONS_P+3] = (uint8_t) CLIENTMSS;
	ld.w	r0, [gPB]	# gPB.280_49, gPB
	add.w	r0, 57 #111	# _50,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:859:     gPB[TCP_OPTIONS_P+3] = (uint8_t) CLIENTMSS;
	mov.b	r1, 38	# tmp127,
	st.b	[r0], r1	# *_50, tmp127
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:860:     fill_checksum(TCP_CHECKSUM_H_P, IP_SRC_P, 8 +TCP_HEADER_LEN_PLAIN+4,2);
	mov.w	r0, sp	# tmp128,
	mov.w	r1, 2	# tmp129,
	st.w	[r0 + (12)], r1	#, tmp129
	mov.w	r1, 32	# tmp130,
	st.w	[r0 + (8)], r1	#, tmp130
	mov.w	r1, 26	# tmp131,
	st.w	[r0 + (4)], r1	#, tmp131
	mov.w	r1, 50	# tmp132,
	st.w	[r0], r1	#, tmp132
	call	fill_checksum		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:862:     enc28j60PacketSend(IP_HEADER_LEN+TCP_HEADER_LEN_PLAIN+ETH_HEADER_LEN+4, gPB);
	ld.w	r1, [gPB]	# gPB.281_51, gPB
	mov.w	r0, sp	# tmp133,
	st.w	[r0 + (4)], r1	#, gPB.281_51
	mov.w	r1, 58	# tmp134,
	st.w	[r0], r1	#, tmp134
	call	enc28j60PacketSend		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:864: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	client_syn, .-client_syn
	.p2align	1
	.global	clientTcpReq
	.type	clientTcpReq, @function
clientTcpReq:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (16)]	# tmp34, port
	st.s	[r13 + (-4)], r0	# port, tmp35
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:868:     client_tcp_result_cb = result_cb;
	ld.w	r0, [r13 + (8)]	# tmp36, result_cb
	st.w	[client_tcp_result_cb], r0	# client_tcp_result_cb, tmp36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:869:     client_tcp_datafill_cb = datafill_cb;
	ld.w	r0, [r13 + (12)]	# tmp37, datafill_cb
	st.w	[client_tcp_datafill_cb], r0	# client_tcp_datafill_cb, tmp37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:870:     tcp_client_port_h = port>>8;
	ld.s	r0, [r13 + (-4)]	# tmp38, port
	mov.w	r1, 8	# tmp40,
	shr.w	r0, r1	# tmp39, tmp40
	st.b	[tcp_client_port_h], r0	# tcp_client_port_h, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:871:     tcp_client_port_l = port;
	ld.s	r0, [r13 + (-4)]	# tmp41, port
	st.b	[tcp_client_port_l], r0	# tcp_client_port_l, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:872:     tcp_client_state = TCP_STATE_SENDSYN; // Flag to packetloop to initiate a TCP/IP session by send a syn
	mov.b	r0, 1	# tmp42,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp42
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:873:     tcp_fd = (tcp_fd + 1) & 7;
	ld.b	r0, [tcp_fd]	# tcp_fd.282_4, tcp_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:873:     tcp_fd = (tcp_fd + 1) & 7;
	add.w	r0, 1 #111	# tmp43,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:873:     tcp_fd = (tcp_fd + 1) & 7;
	mov.w	r1, 7	# tmp45,
	and.w	r0, r1	# tmp44, tmp45
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:873:     tcp_fd = (tcp_fd + 1) & 7;
	st.b	[tcp_fd], r0	# tcp_fd, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:874:     return tcp_fd;
	ld.b	r0, [tcp_fd]	# _17, tcp_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:875: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	clientTcpReq, .-clientTcpReq
	.section	.rodata
	.p2align	2
.LC0:
	.string	"GET %s%s HTTP/1.0\r\nHost: %s\r\n%s\r\n\r\n"
	.p2align	2
.LC1:
	.string	"GET %s%s HTTP/1.0\r\nHost: %s\r\n\r\n"
	.p2align	2
.LC2:
	.string	""
	.p2align	2
.LC3:
	.string	"\r\n"
	.p2align	2
.LC4:
	.string	"POST %s HTTP/1.0\r\nHost: %s\r\n%s%sAccept: */*\r\nContent-Length: %d\r\nContent-Type: application/x-www-form-urlencoded\r\n\r\n%s"
	.text
	.p2align	1
	.global	www_client_internal_datafill_cb
	.type	www_client_internal_datafill_cb, @function
www_client_internal_datafill_cb:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	push	r8		#
	push	r9		#
	sub.w	sp, 44 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp46, fd
	st.b	[r13 + (-28)], r0	# fd, tmp47
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:878:     uint8_t *buff = tcpOffset();
	call	tcpOffset		#
	st.w	[r13 + (-20)], r0	# buff,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:879:     if (fd==www_fd) {
	ld.b	r0, [www_fd]	# www_fd.283_1, www_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:879:     if (fd==www_fd) {
	ld.b	r1, [r13 + (-28)]	# tmp48, fd
	zex.b	r0, r0	# tmp49, www_fd.283_1
	cmp.w	r1, r0	# tmp48, tmp49
	jnz	.L184		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:880:         if (client_postval == 0) {
	ld.w	r1, [client_postval]	# client_postval.284_2, client_postval
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:880:         if (client_postval == 0) {
	xor.w	r0, r0	# tmp50
	cmp.w	r1, r0	# client_postval.284_2, tmp50
	jnz	.L185		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:881:             if (client_additionalheaderline) {
	ld.w	r1, [client_additionalheaderline]	# client_additionalheaderline.285_3, client_additionalheaderline
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:881:             if (client_additionalheaderline) {
	xor.w	r0, r0	# tmp51
	cmp.w	r1, r0	# client_additionalheaderline.285_3, tmp51
	jz	.L186		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:882:                 sprintf(buff, "GET %s%s HTTP/1.0\r\nHost: %s\r\n%s\r\n\r\n", client_urlbuf,
	ld.w	r1, [client_urlbuf]	# client_urlbuf.286_4, client_urlbuf
	ld.w	r2, [client_urlbuf_var]	# client_urlbuf_var.287_5, client_urlbuf_var
	ld.w	r3, [client_hoststr]	# client_hoststr.288_6, client_hoststr
	ld.w	r4, [client_additionalheaderline]	# client_additionalheaderline.289_7, client_additionalheaderline
	mov.w	r0, sp	# tmp52,
	st.w	[r0 + (20)], r4	#, client_additionalheaderline.289_7
	st.w	[r0 + (16)], r3	#, client_hoststr.288_6
	st.w	[r0 + (12)], r2	#, client_urlbuf_var.287_5
	st.w	[r0 + (8)], r1	#, client_urlbuf.286_4
	mov.w	r1, .LC0	# tmp53,
	st.w	[r0 + (4)], r1	#, tmp53
	ld.w	r1, [r13 + (-20)]	# tmp54, buff
	st.w	[r0], r1	#, tmp54
	call	sprintf		#
	j	.L184		#
.L186:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:886:                 sprintf(buff, "GET %s%s HTTP/1.0\r\nHost: %s\r\n\r\n", client_urlbuf,
	ld.w	r1, [client_urlbuf]	# client_urlbuf.290_8, client_urlbuf
	ld.w	r2, [client_urlbuf_var]	# client_urlbuf_var.291_9, client_urlbuf_var
	ld.w	r3, [client_hoststr]	# client_hoststr.292_10, client_hoststr
	mov.w	r0, sp	# tmp55,
	st.w	[r0 + (16)], r3	#, client_hoststr.292_10
	st.w	[r0 + (12)], r2	#, client_urlbuf_var.291_9
	st.w	[r0 + (8)], r1	#, client_urlbuf.290_8
	mov.w	r1, .LC1	# tmp56,
	st.w	[r0 + (4)], r1	#, tmp56
	ld.w	r1, [r13 + (-20)]	# tmp57, buff
	st.w	[r0], r1	#, tmp57
	call	sprintf		#
	j	.L184		#
.L185:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:891:             char* ahl = client_additionalheaderline;
	ld.w	r0, [client_additionalheaderline]	# tmp58, client_additionalheaderline
	st.w	[r13 + (-24)], r0	# ahl, tmp58
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:892:             sprintf(buff, "POST %s HTTP/1.0\r\n"
	ld.w	r8, [client_urlbuf]	# client_urlbuf.293_11, client_urlbuf
	ld.w	r9, [client_hoststr]	# client_hoststr.294_12, client_hoststr
	ld.w	r1, [r13 + (-24)]	# tmp59, ahl
	xor.w	r0, r0	# tmp60
	cmp.w	r1, r0	# tmp59, tmp60
	jz	.L187		#
	ld.w	r6, [r13 + (-24)]	# iftmp.295_17, ahl
	j	.L188		#
.L187:
	mov.w	r6, .LC2	# iftmp.295_17,
.L188:
	ld.w	r1, [r13 + (-24)]	# tmp61, ahl
	xor.w	r0, r0	# tmp62
	cmp.w	r1, r0	# tmp61, tmp62
	jz	.L189		#
	mov.w	r7, .LC3	# iftmp.296_18,
	j	.L190		#
.L189:
	mov.w	r7, .LC2	# iftmp.296_18,
.L190:
	ld.w	r0, [client_postval]	# client_postval.297_13, client_postval
	mov.w	r1, sp	# tmp63,
	st.w	[r1], r0	#, client_postval.297_13
	call	strlen		#
	mov.w	r2, r0	# _14,
	ld.w	r1, [client_postval]	# client_postval.298_15, client_postval
	mov.w	r0, sp	# tmp64,
	st.w	[r0 + (28)], r1	#, client_postval.298_15
	st.w	[r0 + (24)], r2	#, _14
	st.w	[r0 + (20)], r7	#, iftmp.296_18
	st.w	[r0 + (16)], r6	#, iftmp.295_17
	st.w	[r0 + (12)], r9	#, client_hoststr.294_12
	st.w	[r0 + (8)], r8	#, client_urlbuf.293_11
	mov.w	r1, .LC4	# tmp65,
	st.w	[r0 + (4)], r1	#, tmp65
	ld.w	r1, [r13 + (-20)]	# tmp66, buff
	st.w	[r0], r1	#, tmp66
	call	sprintf		#
.L184:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:907:     return strlen(buff);
	mov.w	r1, sp	# tmp67,
	ld.w	r0, [r13 + (-20)]	# tmp68, buff
	st.w	[r1], r0	#, tmp68
	call	strlen		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:908: }
	mov.w	r12, r13	#,
	sub.w	r12, 16 #111	#,
	mov.w	sp, r12	#,
	pop	r9		#
	pop	r8		#
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	www_client_internal_datafill_cb, .-www_client_internal_datafill_cb
	.section	.rodata
	.p2align	2
.LC5:
	.string	"200"
	.text
	.p2align	1
	.global	www_client_internal_result_cb
	.type	www_client_internal_result_cb, @function
www_client_internal_result_cb:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 44 #111	#,
	ld.w	r3, [r13 + (8)]	# tmp48, fd
	ld.w	r2, [r13 + (12)]	# tmp50, statuscode
	ld.w	r1, [r13 + (16)]	# tmp52, datapos
	ld.w	r0, [r13 + (20)]	# tmp54, len_of_data
	st.b	[r13 + (-8)], r3	# fd, tmp49
	st.b	[r13 + (-12)], r2	# statuscode, tmp51
	st.s	[r13 + (-16)], r1	# datapos, tmp53
	st.s	[r13 + (-20)], r0	# len_of_data, tmp55
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:912:     if (fd!=www_fd)
	ld.b	r0, [www_fd]	# www_fd.299_1, www_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:912:     if (fd!=www_fd)
	ld.b	r1, [r13 + (-8)]	# tmp56, fd
	zex.b	r0, r0	# tmp57, www_fd.299_1
	cmp.w	r1, r0	# tmp56, tmp57
	jz	.L193		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:913:         (*client_browser_cb)(4,0,0);
	ld.w	r1, [client_browser_cb]	# client_browser_cb.300_2, client_browser_cb
	mov.w	r0, sp	# tmp58,
	xor.w	r2, r2	# tmp59
	st.w	[r0 + (8)], r2	#, tmp59
	xor.w	r2, r2	# tmp60
	st.w	[r0 + (4)], r2	#, tmp60
	mov.w	r2, 4	# tmp61,
	st.w	[r0], r2	#, tmp61
	callr	r1		# client_browser_cb.300_2
	j	.L194		#
.L193:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:914:     else if (statuscode==0 && len_of_data>12 && client_browser_cb) {
	ld.b	r1, [r13 + (-12)]	# tmp62, statuscode
	xor.w	r0, r0	# tmp63
	cmp.w	r1, r0	# tmp62, tmp63
	jnz	.L194		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:914:     else if (statuscode==0 && len_of_data>12 && client_browser_cb) {
	ld.s	r1, [r13 + (-20)]	# tmp64, len_of_data
	mov.w	r0, 12	# tmp65,
	cmp.w	r1, r0	# tmp64, tmp65
	jse	.L194		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:914:     else if (statuscode==0 && len_of_data>12 && client_browser_cb) {
	ld.w	r1, [client_browser_cb]	# client_browser_cb.301_3, client_browser_cb
	xor.w	r0, r0	# tmp66
	cmp.w	r1, r0	# client_browser_cb.301_3, tmp66
	jz	.L194		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	ld.w	r1, [gPB]	# gPB.302_4, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	ld.s	r0, [r13 + (-16)]	# _5, datapos
	add.w	r0, 9 #111	# _6,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	add.w	r1, r0 #222	# _7, _6
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	mov.w	r0, sp	# tmp67,
	mov.w	r2, 3	# tmp68,
	st.w	[r0 + (8)], r2	#, tmp68
	st.w	[r0 + (4)], r1	#, _7
	mov.w	r1, .LC5	# tmp69,
	st.w	[r0], r1	#, tmp69
	call	strncmp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	mov.w	r1, r0	# tmp70, _8
neg.w	r1	# tmp70
	mov.w	r2, r1	# tmp71, tmp70
	or.w	r2, r0	# tmp71, _8
	mov.w	r1, 31	# tmp73,
	mov.w	r0, r2	# tmp72, tmp71
	shr.w	r0, r1	# tmp72, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:915:         uint8_t f = strncmp("200",(char *)&(gPB[datapos+9]),3) != 0;
	st.b	[r13 + (-1)], r0	# f, _9
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:916:         (*client_browser_cb)(f, ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4),len_of_data);
	ld.w	r1, [client_browser_cb]	# client_browser_cb.303_10, client_browser_cb
	ld.b	r2, [r13 + (-1)]	# _11, f
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:916:         (*client_browser_cb)(f, ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4),len_of_data);
	ld.w	r0, [gPB]	# gPB.304_12, gPB
	add.w	r0, 46 #111	# _13,
	ld.b	r0, [r0]	# _14, *_13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:916:         (*client_browser_cb)(f, ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4),len_of_data);
	zex.b	r0, r0	# tmp74, _14
	mov.w	r3, 4	# tmp76,
	shr.w	r0, r3	# tmp75, tmp76
	zex.b	r0, r0	# tmp77, _15
	mov.w	r3, 2	# tmp79,
	shl.w	r0, r3	# tmp78, tmp79
	add.w	r0, 34 #111	# tmp80,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:916:         (*client_browser_cb)(f, ((uint16_t)TCP_SRC_PORT_H_P+(gPB[TCP_HEADER_LEN_P]>>4)*4),len_of_data);
	zex.s	r3, r0	# _19, _18
	ld.s	r4, [r13 + (-20)]	# _20, len_of_data
	mov.w	r0, sp	# tmp81,
	st.w	[r0 + (8)], r4	#, _20
	st.w	[r0 + (4)], r3	#, _19
	st.w	[r0], r2	#, _11
	callr	r1		# client_browser_cb.303_10
.L194:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:918:     return 0;
	xor.w	r0, r0	# _30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:919: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	www_client_internal_result_cb, .-www_client_internal_result_cb
	.p2align	1
	.global	tcp_datafill_cb
	.type	tcp_datafill_cb, @function
tcp_datafill_cb:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 32 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp30, fd
	st.b	[r13 + (-8)], r0	# fd, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:928:     uint16_t len = strlen(tcpOffset());
	call	tcpOffset		#
	mov.w	r1, r0	# _1,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:928:     uint16_t len = strlen(tcpOffset());
	mov.w	r0, sp	# tmp32,
	st.w	[r0], r1	#, _1
	call	strlen		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:928:     uint16_t len = strlen(tcpOffset());
	st.s	[r13 + (-2)], r0	# len, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:934:     result_fd = 123; // bogus value
	mov.b	r0, 123	# tmp34,
	st.b	[result_fd], r0	# result_fd, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:935:     return len;
	ld.s	r0, [r13 + (-2)]	# _7, len
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:936: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcp_datafill_cb, .-tcp_datafill_cb
	.p2align	1
	.global	tcp_result_cb
	.type	tcp_result_cb, @function
tcp_result_cb:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 16 #111	#,
	ld.w	r3, [r13 + (8)]	# tmp31, fd
	ld.w	r2, [r13 + (12)]	# tmp33, status
	ld.w	r1, [r13 + (16)]	# tmp35, datapos
	ld.w	r0, [r13 + (20)]	# tmp37, datalen
	st.b	[r13 + (-4)], r3	# fd, tmp32
	st.b	[r13 + (-8)], r2	# status, tmp34
	st.s	[r13 + (-12)], r1	# datapos, tmp36
	st.s	[r13 + (-16)], r0	# datalen, tmp38
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:939:     if (status == 0) {
	ld.b	r1, [r13 + (-8)]	# tmp39, status
	xor.w	r0, r0	# tmp40
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L199		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:940:         result_fd = fd; // a valid result has been received, remember its session id
	ld.b	r0, [r13 + (-4)]	# tmp41, fd
	st.b	[result_fd], r0	# result_fd, tmp41
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:941:         result_ptr = (char*) gPB + datapos;
	ld.w	r0, [gPB]	# gPB.305_1, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:941:         result_ptr = (char*) gPB + datapos;
	ld.s	r1, [r13 + (-12)]	# _2, datapos
	add.w	r0, r1 #222	# _3, _2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:941:         result_ptr = (char*) gPB + datapos;
	st.w	[result_ptr], r0	# result_ptr, _3
.L199:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:944:     return 1;
	mov.b	r0, 1	# _11,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:945: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcp_result_cb, .-tcp_result_cb
	.p2align	1
	.global	tcpSend
	.type	tcpSend, @function
tcpSend:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:948:     www_fd = clientTcpReq(&tcp_result_cb, &tcp_datafill_cb, hisport);
	ld.s	r0, [hisport]	# hisport.306_1, hisport
	zex.s	r1, r0	# _2, hisport.306_1
	mov.w	r0, sp	# tmp31,
	st.w	[r0 + (8)], r1	#, _2
	mov.w	r1, tcp_datafill_cb	# tmp32,
	st.w	[r0 + (4)], r1	#, tmp32
	mov.w	r1, tcp_result_cb	# tmp33,
	st.w	[r0], r1	#, tmp33
	call	clientTcpReq		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:948:     www_fd = clientTcpReq(&tcp_result_cb, &tcp_datafill_cb, hisport);
	st.b	[www_fd], r0	# www_fd, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:949:     return www_fd;
	ld.b	r0, [www_fd]	# _7, www_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:950: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcpSend, .-tcpSend
	.p2align	1
	.global	tcpReply
	.type	tcpReply, @function
tcpReply:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp29, fd
	st.b	[r13 + (-4)], r0	# fd, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:953:     if (result_fd != fd)
	ld.b	r0, [result_fd]	# result_fd.307_1, result_fd
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:953:     if (result_fd != fd)
	ld.b	r1, [r13 + (-4)]	# tmp31, fd
	zex.b	r0, r0	# tmp32, result_fd.307_1
	cmp.w	r1, r0	# tmp31, tmp32
	jz	.L204		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:954:         return 0;
	xor.w	r0, r0	# _2
	j	.L205		#
.L204:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:955:     result_fd = 123; // set to a bogus value to prevent future match
	mov.b	r0, 123	# tmp33,
	st.b	[result_fd], r0	# result_fd, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:956:     return result_ptr;
	ld.w	r0, [result_ptr]	# _2, result_ptr
.L205:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:957: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	tcpReply, .-tcpReply
	.p2align	1
	.global	registerPingCallback
	.type	registerPingCallback, @function
registerPingCallback:
	push	r13		#
	mov.w	r13, sp	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:960:     icmp_cb = callback;
	ld.w	r0, [r13 + (8)]	# tmp26, callback
	st.w	[icmp_cb], r0	# icmp_cb, tmp26
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:961: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	registerPingCallback, .-registerPingCallback
	.p2align	1
	.global	packetLoopIcmpCheckReply
	.type	packetLoopIcmpCheckReply, @function
packetLoopIcmpCheckReply:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:964:     return gPB[IP_PROTO_P]==IP_PROTO_ICMP_V &&
	ld.w	r0, [gPB]	# gPB.309_1, gPB
	add.w	r0, 23 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:966:            gPB[ICMP_DATA_P]== PINGPATTERN &&
	zex.b	r1, r0	# tmp39, _3
	mov.w	r0, 1	# tmp40,
	cmp.w	r1, r0	# tmp39, tmp40
	jnz	.L208		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:965:            gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREPLY_V &&
	ld.w	r0, [gPB]	# gPB.310_4, gPB
	add.w	r0, 34 #111	# _5,
	ld.b	r0, [r0]	# _6, *_5
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:964:     return gPB[IP_PROTO_P]==IP_PROTO_ICMP_V &&
	zex.b	r1, r0	# tmp41, _6
	xor.w	r0, r0	# tmp42
	cmp.w	r1, r0	# tmp41, tmp42
	jnz	.L208		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:966:            gPB[ICMP_DATA_P]== PINGPATTERN &&
	ld.w	r0, [gPB]	# gPB.311_7, gPB
	add.w	r0, 42 #111	# _8,
	ld.b	r0, [r0]	# _9, *_8
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:965:            gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREPLY_V &&
	zex.b	r1, r0	# tmp43, _9
	mov.w	r0, 66	# tmp44,
	cmp.w	r1, r0	# tmp43, tmp44
	jnz	.L208		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:967:            check_ip_message_is_from(ip_monitoredhost);
	mov.w	r1, sp	# tmp45,
	ld.w	r0, [r13 + (8)]	# tmp46, ip_monitoredhost
	st.w	[r1], r0	#, tmp46
	call	check_ip_message_is_from		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:966:            gPB[ICMP_DATA_P]== PINGPATTERN &&
	zex.b	r1, r0	# tmp47, _10
	xor.w	r0, r0	# tmp48
	cmp.w	r1, r0	# tmp47, tmp48
	jz	.L208		#
	mov.w	r0, 1	# iftmp.308_11,
	j	.L209		#
.L208:
	xor.w	r0, r0	# iftmp.308_11
.L209:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:968: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	packetLoopIcmpCheckReply, .-packetLoopIcmpCheckReply
	.p2align	1
	.global	accept
	.type	accept, @function
accept:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r1, [r13 + (8)]	# tmp60, port
	ld.w	r0, [r13 + (12)]	# tmp62, plen
	st.s	[r13 + (-8)], r1	# port, tmp61
	st.s	[r13 + (-12)], r0	# plen, tmp63
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:973:     if (gPB[TCP_DST_PORT_H_P] == (port >> 8) &&
	ld.w	r0, [gPB]	# gPB.312_1, gPB
	add.w	r0, 36 #111	# _2,
	ld.b	r0, [r0]	# _3, *_2
	zex.b	r0, r0	# tmp64, _3
	mov.w	r1, r0	# _4, tmp64
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:973:     if (gPB[TCP_DST_PORT_H_P] == (port >> 8) &&
	ld.s	r0, [r13 + (-8)]	# tmp65, port
	mov.w	r2, 8	# tmp67,
	shr.w	r0, r2	# tmp66, tmp67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:973:     if (gPB[TCP_DST_PORT_H_P] == (port >> 8) &&
	zex.s	r1, r1	# tmp68, _4
	zex.s	r0, r0	# tmp69, _5
	cmp.w	r1, r0	# tmp68, tmp69
	jnz	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:974:             gPB[TCP_DST_PORT_L_P] == ((uint8_t) port))
	ld.w	r0, [gPB]	# gPB.313_6, gPB
	add.w	r0, 37 #111	# _7,
	ld.b	r1, [r0]	# _8, *_7
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:974:             gPB[TCP_DST_PORT_L_P] == ((uint8_t) port))
	ld.s	r0, [r13 + (-8)]	# tmp70, port
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:973:     if (gPB[TCP_DST_PORT_H_P] == (port >> 8) &&
	zex.b	r1, r1	# tmp71, _8
	zex.b	r0, r0	# tmp72, _9
	cmp.w	r1, r0	# tmp71, tmp72
	jnz	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:976:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V)
	ld.w	r0, [gPB]	# gPB.314_10, gPB
	add.w	r0, 47 #111	# _11,
	ld.b	r0, [r0]	# _12, *_11
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:976:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V)
	zex.b	r1, r0	# _13, _12
	mov.w	r0, 2	# tmp73,
	and.w	r1, r0	# _14, tmp73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:976:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V)
	xor.w	r0, r0	# tmp74
	cmp.w	r1, r0	# _14, tmp74
	jz	.L213		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:977:             make_tcp_synack_from_syn(); //send SYN+ACK
	call	make_tcp_synack_from_syn		#
	j	.L212		#
.L213:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:978:         else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	ld.w	r0, [gPB]	# gPB.315_15, gPB
	add.w	r0, 47 #111	# _16,
	ld.b	r0, [r0]	# _17, *_16
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:978:         else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	zex.b	r1, r0	# _18, _17
	mov.w	r0, 16	# tmp75,
	and.w	r1, r0	# _19, tmp75
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:978:         else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	xor.w	r0, r0	# tmp76
	cmp.w	r1, r0	# _19, tmp76
	jz	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:980:             info_data_len = getTcpPayloadLength();
	call	getTcpPayloadLength		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:980:             info_data_len = getTcpPayloadLength();
	st.s	[info_data_len], r0	# info_data_len, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:981:             if (info_data_len > 0)
	ld.s	r0, [info_data_len]	# info_data_len.316_21, info_data_len
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:981:             if (info_data_len > 0)
	zex.s	r1, r0	# tmp77, info_data_len.316_21
	xor.w	r0, r0	# tmp78
	cmp.w	r1, r0	# tmp77, tmp78
	jz	.L214		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:983:                 pos = TCP_DATA_START; // TCP_DATA_START is a formula
	ld.w	r0, [gPB]	# gPB.317_22, gPB
	add.w	r0, 46 #111	# _23,
	ld.b	r0, [r0]	# _24, *_23
	zex.b	r0, r0	# tmp79, _24
	mov.w	r1, 4	# tmp81,
	shr.w	r0, r1	# tmp80, tmp81
	zex.b	r0, r0	# tmp82, _25
	mov.w	r1, 2	# tmp84,
	shl.w	r0, r1	# tmp83, tmp84
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:983:                 pos = TCP_DATA_START; // TCP_DATA_START is a formula
	add.w	r0, 34 #111	# tmp85,
	st.s	[r13 + (-2)], r0	# pos, tmp86
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:985:                 if (pos <= plen)
	ld.s	r1, [r13 + (-2)]	# tmp87, pos
	ld.s	r0, [r13 + (-12)]	# tmp88, plen
	cmp.w	r1, r0	# tmp87, tmp88
	jg	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:986:                     return pos;
	ld.s	r0, [r13 + (-2)]	# _33, pos
	j	.L215		#
.L214:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:988:             else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V)
	ld.w	r0, [gPB]	# gPB.318_28, gPB
	add.w	r0, 47 #111	# _29,
	ld.b	r0, [r0]	# _30, *_29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:988:             else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V)
	zex.b	r1, r0	# _31, _30
	mov.w	r0, 1	# tmp89,
	and.w	r1, r0	# _32, tmp89
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:988:             else if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V)
	xor.w	r0, r0	# tmp90
	cmp.w	r1, r0	# _32, tmp90
	jz	.L212		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:989:                 make_tcp_ack_from_any(0,0); //No data so close connection
	mov.w	r0, sp	# tmp91,
	xor.w	r1, r1	# tmp92
	st.w	[r0 + (4)], r1	#, tmp92
	xor.w	r1, r1	# tmp93
	st.w	[r0], r1	#, tmp93
	call	make_tcp_ack_from_any		#
.L212:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:992:     return 0;
	xor.w	r0, r0	# _33
.L215:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:993: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	accept, .-accept
	.section	.rodata
	.p2align	2
.LC6:
	.string	"\nLEN: %d\n"
	.p2align	2
.LC7:
	.string	"DESTINATION MAC: "
	.p2align	2
.LC8:
	.string	"%x "
	.p2align	2
.LC9:
	.string	"\nSOURCE MAC: "
	.p2align	2
.LC10:
	.string	"\nTYPE: %x %x\n"
	.p2align	2
.LC11:
	.string	"ARP REQ:"
	.p2align	2
.LC12:
	.string	"Hardware type: %x %x\n"
	.p2align	2
.LC13:
	.string	"Protocol type: %x %x\n"
	.p2align	2
.LC14:
	.string	"Hardware size: %x\n"
	.p2align	2
.LC15:
	.string	"Protocol size: %x\n"
	.p2align	2
.LC16:
	.string	"Request type: %x %x\n"
	.p2align	2
.LC17:
	.string	"SENDER MAC: "
	.p2align	2
.LC18:
	.string	"\nSENDER IP: "
	.p2align	2
.LC19:
	.string	"%d."
	.p2align	2
.LC20:
	.string	"\nTARGET MAC: "
	.p2align	2
.LC21:
	.string	"\nTARGET IP: "
	.p2align	2
.LC22:
	.string	"Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n"
	.p2align	2
.LC23:
	.string	"Identification: $%x, Flags: $%x, Fragment offset: $%x\n"
	.p2align	2
.LC24:
	.string	"TTL: $%x, Protocol: $%x, Header checksum: $%x\n"
	.p2align	2
.LC25:
	.string	"Src IP: %d.%d.%d.%d\n"
	.p2align	2
.LC26:
	.string	"Dst IP: %d.%d.%d.%d\n"
	.p2align	2
.LC27:
	.string	"Src PORT: %d, Dst PORT: %d\n"
	.p2align	2
.LC28:
	.string	"Sequence number: $%x\n"
	.p2align	2
.LC29:
	.string	"Acknowledgment number: $%x\n"
	.p2align	2
.LC30:
	.string	"Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n"
	.p2align	2
.LC31:
	.string	"Checksum: $%x, Urgent pointer: $%x\n"
	.p2align	2
.LC32:
	.string	"%d: %x (%c) "
	.p2align	2
.LC33:
	.string	"%d: %x "
	.text
	.p2align	1
	.global	dumpPacket
	.type	dumpPacket, @function
dumpPacket:
	push	r13		#
	mov.w	r13, sp	#,
	push	r6		#
	push	r7		#
	push	r8		#
	push	r9		#
	push	r10		#
	push	r11		#
	sub.w	sp, 64 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp393, len
	st.s	[r13 + (-40)], r0	# len, tmp394
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:999:     printf("\nLEN: %d\n", len);
	ld.s	r1, [r13 + (-40)]	# _1, len
	mov.w	r0, sp	# tmp395,
	st.w	[r0 + (4)], r1	#, _1
	mov.w	r1, .LC6	# tmp396,
	st.w	[r0], r1	#, tmp396
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1000:     printf("DESTINATION MAC: ");
	mov.w	r1, sp	# tmp397,
	mov.w	r0, .LC7	# tmp398,
	st.w	[r1], r0	#, tmp398
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	xor.w	r0, r0	# tmp399
	st.w	[r13 + (-28)], r0	# i, tmp399
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	j	.L217		#
.L218:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	ld.w	r0, [gPB]	# gPB.319_2, gPB
	ld.w	r1, [r13 + (-28)]	# i.320_3, i
	add.w	r0, r1 #222	# _4, i.320_3
	ld.b	r0, [r0]	# _5, *_4
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	zex.b	r1, r0	# _6, _5
	mov.w	r0, sp	# tmp400,
	st.w	[r0 + (4)], r1	#, _6
	mov.w	r1, .LC8	# tmp401,
	st.w	[r0], r1	#, tmp401
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	ld.w	r0, [r13 + (-28)]	# tmp403, i
	add.w	r0, 1 #111	# tmp402,
	st.w	[r13 + (-28)], r0	# i, tmp402
.L217:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1001:     for (i = 0; i < 6; i++) printf("%x ", gPB[i]);
	ld.w	r1, [r13 + (-28)]	# tmp404, i
	mov.w	r0, 5	# tmp405,
	cmp.w	r1, r0	# tmp404, tmp405
	jses	.L218		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1002:     printf("\nSOURCE MAC: ");
	mov.w	r1, sp	# tmp406,
	mov.w	r0, .LC9	# tmp407,
	st.w	[r1], r0	#, tmp407
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	xor.w	r0, r0	# tmp408
	st.w	[r13 + (-28)], r0	# i, tmp408
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	j	.L219		#
.L220:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	ld.w	r0, [gPB]	# gPB.321_7, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	ld.w	r1, [r13 + (-28)]	# tmp409, i
	add.w	r1, 6 #111	# _8,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	add.w	r0, r1 #222	# _10, _9
	ld.b	r0, [r0]	# _11, *_10
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	zex.b	r1, r0	# _12, _11
	mov.w	r0, sp	# tmp410,
	st.w	[r0 + (4)], r1	#, _12
	mov.w	r1, .LC8	# tmp411,
	st.w	[r0], r1	#, tmp411
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	ld.w	r0, [r13 + (-28)]	# tmp413, i
	add.w	r0, 1 #111	# tmp412,
	st.w	[r13 + (-28)], r0	# i, tmp412
.L219:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1003:     for (i = 0; i < 6; i++) printf("%x ", gPB[6+i]);
	ld.w	r1, [r13 + (-28)]	# tmp414, i
	mov.w	r0, 5	# tmp415,
	cmp.w	r1, r0	# tmp414, tmp415
	jses	.L220		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1004:     printf("\nTYPE: %x %x\n", gPB[12], gPB[13]);
	ld.w	r0, [gPB]	# gPB.322_13, gPB
	add.w	r0, 12 #111	# _14,
	ld.b	r0, [r0]	# _15, *_14
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1004:     printf("\nTYPE: %x %x\n", gPB[12], gPB[13]);
	zex.b	r1, r0	# _16, _15
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1004:     printf("\nTYPE: %x %x\n", gPB[12], gPB[13]);
	ld.w	r0, [gPB]	# gPB.323_17, gPB
	add.w	r0, 13 #111	# _18,
	ld.b	r0, [r0]	# _19, *_18
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1004:     printf("\nTYPE: %x %x\n", gPB[12], gPB[13]);
	zex.b	r2, r0	# _20, _19
	mov.w	r0, sp	# tmp416,
	st.w	[r0 + (8)], r2	#, _20
	st.w	[r0 + (4)], r1	#, _16
	mov.w	r1, .LC10	# tmp417,
	st.w	[r0], r1	#, tmp417
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1005:     if (gPB[12] == 8 && gPB[13] == 6) 
	ld.w	r0, [gPB]	# gPB.324_21, gPB
	add.w	r0, 12 #111	# _22,
	ld.b	r0, [r0]	# _23, *_22
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1005:     if (gPB[12] == 8 && gPB[13] == 6) 
	zex.b	r1, r0	# tmp418, _23
	mov.w	r0, 8	# tmp419,
	cmp.w	r1, r0	# tmp418, tmp419
	jnz	.L221		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1005:     if (gPB[12] == 8 && gPB[13] == 6) 
	ld.w	r0, [gPB]	# gPB.325_24, gPB
	add.w	r0, 13 #111	# _25,
	ld.b	r0, [r0]	# _26, *_25
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1005:     if (gPB[12] == 8 && gPB[13] == 6) 
	zex.b	r1, r0	# tmp420, _26
	mov.w	r0, 6	# tmp421,
	cmp.w	r1, r0	# tmp420, tmp421
	jnz	.L221		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1008:         printf("ARP REQ:\n");
	mov.w	r1, sp	# tmp422,
	mov.w	r0, .LC11	# tmp423,
	st.w	[r1], r0	#, tmp423
	call	puts		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1009:         printf("Hardware type: %x %x\n", gPB[14], gPB[15]);
	ld.w	r0, [gPB]	# gPB.326_27, gPB
	add.w	r0, 14 #111	# _28,
	ld.b	r0, [r0]	# _29, *_28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1009:         printf("Hardware type: %x %x\n", gPB[14], gPB[15]);
	zex.b	r1, r0	# _30, _29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1009:         printf("Hardware type: %x %x\n", gPB[14], gPB[15]);
	ld.w	r0, [gPB]	# gPB.327_31, gPB
	add.w	r0, 15 #111	# _32,
	ld.b	r0, [r0]	# _33, *_32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1009:         printf("Hardware type: %x %x\n", gPB[14], gPB[15]);
	zex.b	r2, r0	# _34, _33
	mov.w	r0, sp	# tmp424,
	st.w	[r0 + (8)], r2	#, _34
	st.w	[r0 + (4)], r1	#, _30
	mov.w	r1, .LC12	# tmp425,
	st.w	[r0], r1	#, tmp425
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1010:         printf("Protocol type: %x %x\n", gPB[16], gPB[17]);
	ld.w	r0, [gPB]	# gPB.328_35, gPB
	add.w	r0, 16 #111	# _36,
	ld.b	r0, [r0]	# _37, *_36
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1010:         printf("Protocol type: %x %x\n", gPB[16], gPB[17]);
	zex.b	r1, r0	# _38, _37
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1010:         printf("Protocol type: %x %x\n", gPB[16], gPB[17]);
	ld.w	r0, [gPB]	# gPB.329_39, gPB
	add.w	r0, 17 #111	# _40,
	ld.b	r0, [r0]	# _41, *_40
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1010:         printf("Protocol type: %x %x\n", gPB[16], gPB[17]);
	zex.b	r2, r0	# _42, _41
	mov.w	r0, sp	# tmp426,
	st.w	[r0 + (8)], r2	#, _42
	st.w	[r0 + (4)], r1	#, _38
	mov.w	r1, .LC13	# tmp427,
	st.w	[r0], r1	#, tmp427
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1011:         printf("Hardware size: %x\n", gPB[18]);
	ld.w	r0, [gPB]	# gPB.330_43, gPB
	add.w	r0, 18 #111	# _44,
	ld.b	r0, [r0]	# _45, *_44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1011:         printf("Hardware size: %x\n", gPB[18]);
	zex.b	r1, r0	# _46, _45
	mov.w	r0, sp	# tmp428,
	st.w	[r0 + (4)], r1	#, _46
	mov.w	r1, .LC14	# tmp429,
	st.w	[r0], r1	#, tmp429
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1012:         printf("Protocol size: %x\n", gPB[19]);
	ld.w	r0, [gPB]	# gPB.331_47, gPB
	add.w	r0, 19 #111	# _48,
	ld.b	r0, [r0]	# _49, *_48
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1012:         printf("Protocol size: %x\n", gPB[19]);
	zex.b	r1, r0	# _50, _49
	mov.w	r0, sp	# tmp430,
	st.w	[r0 + (4)], r1	#, _50
	mov.w	r1, .LC15	# tmp431,
	st.w	[r0], r1	#, tmp431
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1013:         printf("Request type: %x %x\n", gPB[20], gPB[21]);
	ld.w	r0, [gPB]	# gPB.332_51, gPB
	add.w	r0, 20 #111	# _52,
	ld.b	r0, [r0]	# _53, *_52
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1013:         printf("Request type: %x %x\n", gPB[20], gPB[21]);
	zex.b	r1, r0	# _54, _53
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1013:         printf("Request type: %x %x\n", gPB[20], gPB[21]);
	ld.w	r0, [gPB]	# gPB.333_55, gPB
	add.w	r0, 21 #111	# _56,
	ld.b	r0, [r0]	# _57, *_56
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1013:         printf("Request type: %x %x\n", gPB[20], gPB[21]);
	zex.b	r2, r0	# _58, _57
	mov.w	r0, sp	# tmp432,
	st.w	[r0 + (8)], r2	#, _58
	st.w	[r0 + (4)], r1	#, _54
	mov.w	r1, .LC16	# tmp433,
	st.w	[r0], r1	#, tmp433
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1014:         printf("SENDER MAC: ");
	mov.w	r1, sp	# tmp434,
	mov.w	r0, .LC17	# tmp435,
	st.w	[r1], r0	#, tmp435
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	xor.w	r0, r0	# tmp436
	st.w	[r13 + (-28)], r0	# i, tmp436
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	j	.L222		#
.L223:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	ld.w	r0, [gPB]	# gPB.334_59, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp437, i
	add.w	r1, 22 #111	# _60,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	add.w	r0, r1 #222	# _62, _61
	ld.b	r0, [r0]	# _63, *_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	zex.b	r1, r0	# _64, _63
	mov.w	r0, sp	# tmp438,
	st.w	[r0 + (4)], r1	#, _64
	mov.w	r1, .LC8	# tmp439,
	st.w	[r0], r1	#, tmp439
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	ld.w	r0, [r13 + (-28)]	# tmp441, i
	add.w	r0, 1 #111	# tmp440,
	st.w	[r13 + (-28)], r0	# i, tmp440
.L222:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	ld.w	r0, [gPB]	# gPB.335_65, gPB
	add.w	r0, 18 #111	# _66,
	ld.b	r0, [r0]	# _67, *_66
	zex.b	r0, r0	# _68, _67
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1015:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[22 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp442, i
	cmp.w	r1, r0	# tmp442, _68
	jss	.L223		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1016:         printf("\nSENDER IP: ");
	mov.w	r1, sp	# tmp443,
	mov.w	r0, .LC18	# tmp444,
	st.w	[r1], r0	#, tmp444
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	xor.w	r0, r0	# tmp445
	st.w	[r13 + (-28)], r0	# i, tmp445
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	j	.L224		#
.L225:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	ld.w	r0, [gPB]	# gPB.336_69, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp446, i
	add.w	r1, 28 #111	# _70,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	add.w	r0, r1 #222	# _72, _71
	ld.b	r0, [r0]	# _73, *_72
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	zex.b	r1, r0	# _74, _73
	mov.w	r0, sp	# tmp447,
	st.w	[r0 + (4)], r1	#, _74
	mov.w	r1, .LC19	# tmp448,
	st.w	[r0], r1	#, tmp448
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	ld.w	r0, [r13 + (-28)]	# tmp450, i
	add.w	r0, 1 #111	# tmp449,
	st.w	[r13 + (-28)], r0	# i, tmp449
.L224:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	ld.w	r0, [gPB]	# gPB.337_75, gPB
	add.w	r0, 19 #111	# _76,
	ld.b	r0, [r0]	# _77, *_76
	zex.b	r0, r0	# _78, _77
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1017:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[28 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp451, i
	cmp.w	r1, r0	# tmp451, _78
	jss	.L225		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1018:         printf("\nTARGET MAC: ");
	mov.w	r1, sp	# tmp452,
	mov.w	r0, .LC20	# tmp453,
	st.w	[r1], r0	#, tmp453
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	xor.w	r0, r0	# tmp454
	st.w	[r13 + (-28)], r0	# i, tmp454
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	j	.L226		#
.L227:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	ld.w	r0, [gPB]	# gPB.338_79, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp455, i
	add.w	r1, 32 #111	# _80,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	add.w	r0, r1 #222	# _82, _81
	ld.b	r0, [r0]	# _83, *_82
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	zex.b	r1, r0	# _84, _83
	mov.w	r0, sp	# tmp456,
	st.w	[r0 + (4)], r1	#, _84
	mov.w	r1, .LC8	# tmp457,
	st.w	[r0], r1	#, tmp457
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	ld.w	r0, [r13 + (-28)]	# tmp459, i
	add.w	r0, 1 #111	# tmp458,
	st.w	[r13 + (-28)], r0	# i, tmp458
.L226:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	ld.w	r0, [gPB]	# gPB.339_85, gPB
	add.w	r0, 18 #111	# _86,
	ld.b	r0, [r0]	# _87, *_86
	zex.b	r0, r0	# _88, _87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1019:         for (i = 0; i < gPB[18]; i++) printf("%x ", gPB[32 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp460, i
	cmp.w	r1, r0	# tmp460, _88
	jss	.L227		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1020:         printf("\nTARGET IP: ");
	mov.w	r1, sp	# tmp461,
	mov.w	r0, .LC21	# tmp462,
	st.w	[r1], r0	#, tmp462
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	xor.w	r0, r0	# tmp463
	st.w	[r13 + (-28)], r0	# i, tmp463
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	j	.L228		#
.L229:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	ld.w	r0, [gPB]	# gPB.340_89, gPB
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp464, i
	add.w	r1, 38 #111	# _90,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	add.w	r0, r1 #222	# _92, _91
	ld.b	r0, [r0]	# _93, *_92
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	zex.b	r1, r0	# _94, _93
	mov.w	r0, sp	# tmp465,
	st.w	[r0 + (4)], r1	#, _94
	mov.w	r1, .LC19	# tmp466,
	st.w	[r0], r1	#, tmp466
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	ld.w	r0, [r13 + (-28)]	# tmp468, i
	add.w	r0, 1 #111	# tmp467,
	st.w	[r13 + (-28)], r0	# i, tmp467
.L228:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	ld.w	r0, [gPB]	# gPB.341_95, gPB
	add.w	r0, 19 #111	# _96,
	ld.b	r0, [r0]	# _97, *_96
	zex.b	r0, r0	# _98, _97
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1021:         for (i = 0; i < gPB[19]; i++) printf("%d.", gPB[38 + i]);
	ld.w	r1, [r13 + (-28)]	# tmp469, i
	cmp.w	r1, r0	# tmp469, _98
	jss	.L229		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1005:     if (gPB[12] == 8 && gPB[13] == 6) 
	j	.L230		#
.L221:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1023:     else if (gPB[12] == 8 && gPB[13] == 0) {
	ld.w	r0, [gPB]	# gPB.342_99, gPB
	add.w	r0, 12 #111	# _100,
	ld.b	r0, [r0]	# _101, *_100
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1023:     else if (gPB[12] == 8 && gPB[13] == 0) {
	zex.b	r1, r0	# tmp470, _101
	mov.w	r0, 8	# tmp471,
	cmp.w	r1, r0	# tmp470, tmp471
	jnz	.L231		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1023:     else if (gPB[12] == 8 && gPB[13] == 0) {
	ld.w	r0, [gPB]	# gPB.343_102, gPB
	add.w	r0, 13 #111	# _103,
	ld.b	r0, [r0]	# _104, *_103
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1023:     else if (gPB[12] == 8 && gPB[13] == 0) {
	zex.b	r1, r0	# tmp472, _104
	xor.w	r0, r0	# tmp473
	cmp.w	r1, r0	# tmp472, tmp473
	jnz	.L231		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	ld.w	r0, [gPB]	# gPB.344_105, gPB
	add.w	r0, 14 #111	# _106,
	ld.b	r0, [r0]	# _107, *_106
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	zex.b	r1, r0	# _108, _107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	ld.w	r0, [gPB]	# gPB.345_109, gPB
	add.w	r0, 15 #111	# _110,
	ld.b	r0, [r0]	# _111, *_110
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	zex.b	r2, r0	# _112, _111
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	ld.w	r0, [gPB]	# gPB.346_113, gPB
	add.w	r0, 16 #111	# _114,
	ld.b	r0, [r0]	# _115, *_114
	zex.b	r3, r0	# _116, _115
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	mov.w	r0, 8	# tmp474,
	shl.w	r3, r0	# _117, tmp474
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	ld.w	r0, [gPB]	# gPB.347_118, gPB
	add.w	r0, 17 #111	# _119,
	ld.b	r0, [r0]	# _120, *_119
	zex.b	r0, r0	# _121, _120
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1025:         printf("Version + IHL: $%x, DSCP + ECN: $%x, Length: %d\n", gPB[14 + 0], gPB[14 + 1], gPB[14 + 2] * 256 + gPB[14 + 3]);
	add.w	r3, r0 #222	# _122, _121
	mov.w	r0, sp	# tmp475,
	st.w	[r0 + (12)], r3	#, _122
	st.w	[r0 + (8)], r2	#, _112
	st.w	[r0 + (4)], r1	#, _108
	mov.w	r1, .LC22	# tmp476,
	st.w	[r0], r1	#, tmp476
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	ld.w	r0, [gPB]	# gPB.348_123, gPB
	add.w	r0, 18 #111	# _124,
	ld.b	r0, [r0]	# _125, *_124
	zex.b	r1, r0	# _126, _125
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	mov.w	r0, 8	# tmp477,
	shl.w	r1, r0	# _127, tmp477
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	ld.w	r0, [gPB]	# gPB.349_128, gPB
	add.w	r0, 19 #111	# _129,
	ld.b	r0, [r0]	# _130, *_129
	zex.b	r0, r0	# _131, _130
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	add.w	r1, r0 #222	# _132, _131
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	ld.w	r0, [gPB]	# gPB.350_133, gPB
	add.w	r0, 20 #111	# _134,
	ld.b	r0, [r0]	# _135, *_134
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	zex.b	r0, r0	# tmp478, _135
	mov.w	r2, 4	# tmp480,
	shr.w	r0, r2	# tmp479, tmp480
	zex.b	r2, r0	# _137, _136
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	ld.w	r0, [gPB]	# gPB.351_138, gPB
	add.w	r0, 20 #111	# _139,
	ld.b	r0, [r0]	# _140, *_139
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	zex.b	r3, r0	# _141, _140
	mov.w	r0, 31	# tmp481,
	and.w	r3, r0	# _142, tmp481
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	ld.w	r0, [gPB]	# gPB.352_143, gPB
	add.w	r0, 21 #111	# _144,
	ld.b	r0, [r0]	# _145, *_144
	zex.b	r0, r0	# _146, _145
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1026:         printf("Identification: $%x, Flags: $%x, Fragment offset: $%x\n", gPB[14 + 4] * 256 + gPB[14 + 5], gPB[14 + 6] >> 4, (gPB[14 + 6] & 0x1F) | gPB[14 + 7]);
	or.w	r3, r0	# _147, _146
	mov.w	r0, sp	# tmp482,
	st.w	[r0 + (12)], r3	#, _147
	st.w	[r0 + (8)], r2	#, _137
	st.w	[r0 + (4)], r1	#, _132
	mov.w	r1, .LC23	# tmp483,
	st.w	[r0], r1	#, tmp483
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	ld.w	r0, [gPB]	# gPB.353_148, gPB
	add.w	r0, 22 #111	# _149,
	ld.b	r0, [r0]	# _150, *_149
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	zex.b	r1, r0	# _151, _150
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	ld.w	r0, [gPB]	# gPB.354_152, gPB
	add.w	r0, 23 #111	# _153,
	ld.b	r0, [r0]	# _154, *_153
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	zex.b	r2, r0	# _155, _154
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	ld.w	r0, [gPB]	# gPB.355_156, gPB
	add.w	r0, 24 #111	# _157,
	ld.b	r0, [r0]	# _158, *_157
	zex.b	r3, r0	# _159, _158
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	mov.w	r0, 8	# tmp484,
	shl.w	r3, r0	# _160, tmp484
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	ld.w	r0, [gPB]	# gPB.356_161, gPB
	add.w	r0, 25 #111	# _162,
	ld.b	r0, [r0]	# _163, *_162
	zex.b	r0, r0	# _164, _163
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1027:         printf("TTL: $%x, Protocol: $%x, Header checksum: $%x\n", gPB[14 + 8], gPB[14 + 9], gPB[14 + 10] * 256 +  gPB[14 + 11]);
	add.w	r3, r0 #222	# _165, _164
	mov.w	r0, sp	# tmp485,
	st.w	[r0 + (12)], r3	#, _165
	st.w	[r0 + (8)], r2	#, _155
	st.w	[r0 + (4)], r1	#, _151
	mov.w	r1, .LC24	# tmp486,
	st.w	[r0], r1	#, tmp486
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	ld.w	r0, [gPB]	# gPB.357_166, gPB
	add.w	r0, 26 #111	# _167,
	ld.b	r0, [r0]	# _168, *_167
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	zex.b	r1, r0	# _169, _168
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	ld.w	r0, [gPB]	# gPB.358_170, gPB
	add.w	r0, 27 #111	# _171,
	ld.b	r0, [r0]	# _172, *_171
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	zex.b	r2, r0	# _173, _172
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	ld.w	r0, [gPB]	# gPB.359_174, gPB
	add.w	r0, 28 #111	# _175,
	ld.b	r0, [r0]	# _176, *_175
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	zex.b	r3, r0	# _177, _176
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	ld.w	r0, [gPB]	# gPB.360_178, gPB
	add.w	r0, 29 #111	# _179,
	ld.b	r0, [r0]	# _180, *_179
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1028:         printf("Src IP: %d.%d.%d.%d\n", gPB[14 + 12], gPB[14 + 13], gPB[14 + 14], gPB[14 + 15]);
	zex.b	r4, r0	# _181, _180
	mov.w	r0, sp	# tmp487,
	st.w	[r0 + (16)], r4	#, _181
	st.w	[r0 + (12)], r3	#, _177
	st.w	[r0 + (8)], r2	#, _173
	st.w	[r0 + (4)], r1	#, _169
	mov.w	r1, .LC25	# tmp488,
	st.w	[r0], r1	#, tmp488
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	ld.w	r0, [gPB]	# gPB.361_182, gPB
	add.w	r0, 30 #111	# _183,
	ld.b	r0, [r0]	# _184, *_183
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	zex.b	r1, r0	# _185, _184
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	ld.w	r0, [gPB]	# gPB.362_186, gPB
	add.w	r0, 31 #111	# _187,
	ld.b	r0, [r0]	# _188, *_187
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	zex.b	r2, r0	# _189, _188
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	ld.w	r0, [gPB]	# gPB.363_190, gPB
	add.w	r0, 32 #111	# _191,
	ld.b	r0, [r0]	# _192, *_191
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	zex.b	r3, r0	# _193, _192
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	ld.w	r0, [gPB]	# gPB.364_194, gPB
	add.w	r0, 33 #111	# _195,
	ld.b	r0, [r0]	# _196, *_195
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1029:         printf("Dst IP: %d.%d.%d.%d\n", gPB[14 + 16], gPB[14 + 17], gPB[14 + 18], gPB[14 + 19]);
	zex.b	r4, r0	# _197, _196
	mov.w	r0, sp	# tmp489,
	st.w	[r0 + (16)], r4	#, _197
	st.w	[r0 + (12)], r3	#, _193
	st.w	[r0 + (8)], r2	#, _189
	st.w	[r0 + (4)], r1	#, _185
	mov.w	r1, .LC26	# tmp490,
	st.w	[r0], r1	#, tmp490
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	ld.w	r0, [gPB]	# gPB.365_198, gPB
	add.w	r0, 34 #111	# _199,
	ld.b	r0, [r0]	# _200, *_199
	zex.b	r1, r0	# _201, _200
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	mov.w	r0, 8	# tmp491,
	shl.w	r1, r0	# _202, tmp491
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	ld.w	r0, [gPB]	# gPB.366_203, gPB
	add.w	r0, 35 #111	# _204,
	ld.b	r0, [r0]	# _205, *_204
	zex.b	r0, r0	# _206, _205
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	add.w	r1, r0 #222	# _207, _206
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	ld.w	r0, [gPB]	# gPB.367_208, gPB
	add.w	r0, 36 #111	# _209,
	ld.b	r0, [r0]	# _210, *_209
	zex.b	r2, r0	# _211, _210
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	mov.w	r0, 8	# tmp492,
	shl.w	r2, r0	# _212, tmp492
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	ld.w	r0, [gPB]	# gPB.368_213, gPB
	add.w	r0, 37 #111	# _214,
	ld.b	r0, [r0]	# _215, *_214
	zex.b	r0, r0	# _216, _215
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1031:         printf("Src PORT: %d, Dst PORT: %d\n", gPB[34 + 0] * 256 +  gPB[34 + 1], gPB[34 + 2] * 256 + gPB[34 + 3]);
	add.w	r2, r0 #222	# _217, _216
	mov.w	r0, sp	# tmp493,
	st.w	[r0 + (8)], r2	#, _217
	st.w	[r0 + (4)], r1	#, _207
	mov.w	r1, .LC27	# tmp494,
	st.w	[r0], r1	#, tmp494
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	ld.w	r0, [gPB]	# gPB.369_218, gPB
	add.w	r0, 38 #111	# _219,
	ld.b	r0, [r0]	# _220, *_219
	zex.b	r1, r0	# _221, _220
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	mov.w	r0, 24	# tmp495,
	shl.w	r1, r0	# _222, tmp495
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	ld.w	r0, [gPB]	# gPB.370_223, gPB
	add.w	r0, 39 #111	# _224,
	ld.b	r0, [r0]	# _225, *_224
	zex.b	r0, r0	# _226, _225
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	mov.w	r2, 16	# tmp496,
	shl.w	r0, r2	# _227, tmp496
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	add.w	r1, r0 #222	# _228, _227
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	ld.w	r0, [gPB]	# gPB.371_229, gPB
	add.w	r0, 40 #111	# _230,
	ld.b	r0, [r0]	# _231, *_230
	zex.b	r0, r0	# _232, _231
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	mov.w	r2, 8	# tmp497,
	shl.w	r0, r2	# _233, tmp497
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	add.w	r1, r0 #222	# _234, _233
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	ld.w	r0, [gPB]	# gPB.372_235, gPB
	add.w	r0, 41 #111	# _236,
	ld.b	r0, [r0]	# _237, *_236
	zex.b	r0, r0	# _238, _237
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1032:         printf("Sequence number: $%x\n", (gPB[34 + 4] << 24) +  (gPB[34 + 5] << 16) + (gPB[34 + 6] << 8) + gPB[34 + 7]);
	add.w	r1, r0 #222	# _239, _238
	mov.w	r0, sp	# tmp498,
	st.w	[r0 + (4)], r1	#, _239
	mov.w	r1, .LC28	# tmp499,
	st.w	[r0], r1	#, tmp499
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	ld.w	r0, [gPB]	# gPB.373_240, gPB
	add.w	r0, 42 #111	# _241,
	ld.b	r0, [r0]	# _242, *_241
	zex.b	r1, r0	# _243, _242
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	mov.w	r0, 24	# tmp500,
	shl.w	r1, r0	# _244, tmp500
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	ld.w	r0, [gPB]	# gPB.374_245, gPB
	add.w	r0, 43 #111	# _246,
	ld.b	r0, [r0]	# _247, *_246
	zex.b	r0, r0	# _248, _247
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	mov.w	r2, 16	# tmp501,
	shl.w	r0, r2	# _249, tmp501
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	add.w	r1, r0 #222	# _250, _249
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	ld.w	r0, [gPB]	# gPB.375_251, gPB
	add.w	r0, 44 #111	# _252,
	ld.b	r0, [r0]	# _253, *_252
	zex.b	r0, r0	# _254, _253
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	mov.w	r2, 8	# tmp502,
	shl.w	r0, r2	# _255, tmp502
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	add.w	r1, r0 #222	# _256, _255
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	ld.w	r0, [gPB]	# gPB.376_257, gPB
	add.w	r0, 45 #111	# _258,
	ld.b	r0, [r0]	# _259, *_258
	zex.b	r0, r0	# _260, _259
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1033:         printf("Acknowledgment number: $%x\n", (gPB[34 + 8] << 24) +  (gPB[34 + 9] << 16) + (gPB[34 + 10] << 8) + gPB[34 + 11]);
	add.w	r1, r0 #222	# _261, _260
	mov.w	r0, sp	# tmp503,
	st.w	[r0 + (4)], r1	#, _261
	mov.w	r1, .LC29	# tmp504,
	st.w	[r0], r1	#, tmp504
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.377_262, gPB
	add.w	r0, 46 #111	# _263,
	ld.b	r0, [r0]	# _264, *_263
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	zex.b	r0, r0	# tmp505, _264
	mov.w	r1, 4	# tmp507,
	shr.w	r0, r1	# tmp506, tmp507
	zex.b	r1, r0	# _266, _265
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.378_267, gPB
	add.w	r0, 46 #111	# _268,
	ld.b	r0, [r0]	# _269, *_268
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	zex.b	r2, r0	# _270, _269
	mov.w	r0, 1	# tmp508,
	and.w	r2, r0	# _271, tmp508
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.379_272, gPB
	add.w	r0, 47 #111	# _273,
	ld.b	r0, [r0]	# _274, *_273
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r0, r0	# tmp509, _274
	mov.w	r3, 7	# tmp511,
	shr.w	r0, r3	# tmp510, tmp511
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	zex.b	r3, r0	# _276, _275
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.380_277, gPB
	add.w	r0, 47 #111	# _278,
	ld.b	r0, [r0]	# _279, *_278
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r4, r0	# _280, _279
	mov.w	r0, 6	# tmp512,
	shr.w	r4, r0	# _281, tmp512
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp513,
	and.w	r4, r0	# _282, tmp513
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.381_283, gPB
	add.w	r0, 47 #111	# _284,
	ld.b	r0, [r0]	# _285, *_284
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r5, r0	# _286, _285
	mov.w	r0, 5	# tmp514,
	shr.w	r5, r0	# _287, tmp514
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp515,
	and.w	r5, r0	# _288, tmp515
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.382_289, gPB
	add.w	r0, 47 #111	# _290,
	ld.b	r0, [r0]	# _291, *_290
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r6, r0	# _292, _291
	mov.w	r0, 4	# tmp516,
	shr.w	r6, r0	# _293, tmp516
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp517,
	and.w	r6, r0	# _294, tmp517
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.383_295, gPB
	add.w	r0, 47 #111	# _296,
	ld.b	r0, [r0]	# _297, *_296
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r7, r0	# _298, _297
	mov.w	r0, 3	# tmp518,
	shr.w	r7, r0	# _299, tmp518
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp519,
	and.w	r7, r0	# _300, tmp519
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.384_301, gPB
	add.w	r0, 47 #111	# _302,
	ld.b	r0, [r0]	# _303, *_302
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r8, r0	# _304, _303
	mov.w	r0, 2	# tmp520,
	shr.w	r8, r0	# _305, tmp520
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp521,
	and.w	r8, r0	# _306, tmp521
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.385_307, gPB
	add.w	r0, 47 #111	# _308,
	ld.b	r0, [r0]	# _309, *_308
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	zex.b	r9, r0	# _310, _309
	mov.w	r0, 1	# tmp522,
	shr.w	r9, r0	# _311, tmp522
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	mov.w	r0, 1	# tmp523,
	and.w	r9, r0	# _312, tmp523
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1035:             gPB[34 + 12] >> 4, gPB[34 + 12] & 1, (gPB[34 + 13] & 128) >> 7, (gPB[34 + 13] & 64) >> 6, (gPB[34 + 13] & 32) >> 5, (gPB[34 + 13] & 16) >> 4, (gPB[34 + 13] & 8) >> 3, (gPB[34 + 13] & 4) >> 2, (gPB[34 + 13] & 2) >> 1, gPB[34 + 13] & 1,
	ld.w	r0, [gPB]	# gPB.386_313, gPB
	add.w	r0, 47 #111	# _314,
	ld.b	r0, [r0]	# _315, *_314
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	zex.b	r10, r0	# _316, _315
	mov.w	r0, 1	# tmp524,
	and.w	r10, r0	# _317, tmp524
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1036:             gPB[34 + 14] * 256 + gPB[34 + 15]
	ld.w	r0, [gPB]	# gPB.387_318, gPB
	add.w	r0, 48 #111	# _319,
	ld.b	r0, [r0]	# _320, *_319
	zex.b	r11, r0	# _321, _320
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1036:             gPB[34 + 14] * 256 + gPB[34 + 15]
	mov.w	r0, 8	# tmp525,
	shl.w	r11, r0	# _322, tmp525
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1036:             gPB[34 + 14] * 256 + gPB[34 + 15]
	ld.w	r0, [gPB]	# gPB.388_323, gPB
	add.w	r0, 49 #111	# _324,
	ld.b	r0, [r0]	# _325, *_324
	zex.b	r0, r0	# _326, _325
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1034:         printf("Data offset: %d, NS: %d, CWR: %d, ECE: %d, URG: %d, ACK: %d, PSH: %d, RST: %d, SYN: %d, FIN: %d, Window size: %d\n", 
	add.w	r11, r0 #222	# _327, _326
	mov.w	r0, sp	# tmp526,
	st.w	[r0 + (44)], r11	#, _327
	st.w	[r0 + (40)], r10	#, _317
	st.w	[r0 + (36)], r9	#, _312
	st.w	[r0 + (32)], r8	#, _306
	st.w	[r0 + (28)], r7	#, _300
	st.w	[r0 + (24)], r6	#, _294
	st.w	[r0 + (20)], r5	#, _288
	st.w	[r0 + (16)], r4	#, _282
	st.w	[r0 + (12)], r3	#, _276
	st.w	[r0 + (8)], r2	#, _271
	st.w	[r0 + (4)], r1	#, _266
	mov.w	r1, .LC30	# tmp527,
	st.w	[r0], r1	#, tmp527
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	ld.w	r0, [gPB]	# gPB.389_328, gPB
	add.w	r0, 50 #111	# _329,
	ld.b	r0, [r0]	# _330, *_329
	zex.b	r1, r0	# _331, _330
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	mov.w	r0, 8	# tmp528,
	shl.w	r1, r0	# _332, tmp528
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	ld.w	r0, [gPB]	# gPB.390_333, gPB
	add.w	r0, 51 #111	# _334,
	ld.b	r0, [r0]	# _335, *_334
	zex.b	r0, r0	# _336, _335
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	add.w	r1, r0 #222	# _337, _336
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	ld.w	r0, [gPB]	# gPB.391_338, gPB
	add.w	r0, 52 #111	# _339,
	ld.b	r0, [r0]	# _340, *_339
	zex.b	r2, r0	# _341, _340
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	mov.w	r0, 8	# tmp529,
	shl.w	r2, r0	# _342, tmp529
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	ld.w	r0, [gPB]	# gPB.392_343, gPB
	add.w	r0, 53 #111	# _344,
	ld.b	r0, [r0]	# _345, *_344
	zex.b	r0, r0	# _346, _345
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1038:         printf("Checksum: $%x, Urgent pointer: $%x\n", gPB[34 + 16] * 256 + gPB[34 + 17], gPB[34 + 18] * 256 + gPB[34 + 19]);
	add.w	r2, r0 #222	# _347, _346
	mov.w	r0, sp	# tmp530,
	st.w	[r0 + (8)], r2	#, _347
	st.w	[r0 + (4)], r1	#, _337
	mov.w	r1, .LC31	# tmp531,
	st.w	[r0], r1	#, tmp531
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1039:         for (int i = 14 + 20 + 20; i < (14 + 20 + 20) + 8/*len*/; i++) 
	mov.w	r0, 54	# tmp532,
	st.w	[r13 + (-32)], r0	# i, tmp532
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1039:         for (int i = 14 + 20 + 20; i < (14 + 20 + 20) + 8/*len*/; i++) 
	j	.L232		#
.L234:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1041:             printf("%d: %x (%c) ", i, gPB[i], gPB[i]);
	ld.w	r0, [gPB]	# gPB.393_348, gPB
	ld.w	r1, [r13 + (-32)]	# i.394_349, i
	add.w	r0, r1 #222	# _350, i.394_349
	ld.b	r0, [r0]	# _351, *_350
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1041:             printf("%d: %x (%c) ", i, gPB[i], gPB[i]);
	zex.b	r1, r0	# _352, _351
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1041:             printf("%d: %x (%c) ", i, gPB[i], gPB[i]);
	ld.w	r0, [gPB]	# gPB.395_353, gPB
	ld.w	r2, [r13 + (-32)]	# i.396_354, i
	add.w	r0, r2 #222	# _355, i.396_354
	ld.b	r0, [r0]	# _356, *_355
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1041:             printf("%d: %x (%c) ", i, gPB[i], gPB[i]);
	zex.b	r2, r0	# _357, _356
	mov.w	r0, sp	# tmp533,
	st.w	[r0 + (12)], r2	#, _357
	st.w	[r0 + (8)], r1	#, _352
	ld.w	r1, [r13 + (-32)]	# tmp534, i
	st.w	[r0 + (4)], r1	#, tmp534
	mov.w	r1, .LC32	# tmp535,
	st.w	[r0], r1	#, tmp535
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1042:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	ld.w	r1, [r13 + (-32)]	# tmp536, i
	xor.w	r0, r0	# tmp537
	cmp.w	r1, r0	# tmp536, tmp537
	jz	.L233		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1042:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	ld.w	r1, [r13 + (-32)]	# i.397_358, i
	mov.w	r0, 7	# tmp538,
	and.w	r1, r0	# _359, tmp538
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1042:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	xor.w	r0, r0	# tmp539
	cmp.w	r1, r0	# _359, tmp539
	jnz	.L233		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1042:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	mov.w	r1, sp	# tmp540,
	mov.w	r0, 10	# tmp541,
	st.w	[r1], r0	#, tmp541
	call	putchar		#
.L233:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1039:         for (int i = 14 + 20 + 20; i < (14 + 20 + 20) + 8/*len*/; i++) 
	ld.w	r0, [r13 + (-32)]	# tmp543, i
	add.w	r0, 1 #111	# tmp542,
	st.w	[r13 + (-32)], r0	# i, tmp542
.L232:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1039:         for (int i = 14 + 20 + 20; i < (14 + 20 + 20) + 8/*len*/; i++) 
	ld.w	r1, [r13 + (-32)]	# tmp544, i
	mov.w	r0, 61	# tmp545,
	cmp.w	r1, r0	# tmp544, tmp545
	jses	.L234		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1044:         printf("\n");
	mov.w	r1, sp	# tmp546,
	mov.w	r0, 10	# tmp547,
	st.w	[r1], r0	#, tmp547
	call	putchar		#
	j	.L230		#
.L231:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1046:         for (int i = 14; i < len; i++) 
	mov.w	r0, 14	# tmp548,
	st.w	[r13 + (-36)], r0	# i, tmp548
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1046:         for (int i = 14; i < len; i++) 
	j	.L235		#
.L237:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1048:             printf("%d: %x ", i, gPB[i]);
	ld.w	r0, [gPB]	# gPB.398_360, gPB
	ld.w	r1, [r13 + (-36)]	# i.399_361, i
	add.w	r0, r1 #222	# _362, i.399_361
	ld.b	r0, [r0]	# _363, *_362
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1048:             printf("%d: %x ", i, gPB[i]);
	zex.b	r1, r0	# _364, _363
	mov.w	r0, sp	# tmp549,
	st.w	[r0 + (8)], r1	#, _364
	ld.w	r1, [r13 + (-36)]	# tmp550, i
	st.w	[r0 + (4)], r1	#, tmp550
	mov.w	r1, .LC33	# tmp551,
	st.w	[r0], r1	#, tmp551
	call	printf		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1049:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	ld.w	r1, [r13 + (-36)]	# tmp552, i
	xor.w	r0, r0	# tmp553
	cmp.w	r1, r0	# tmp552, tmp553
	jz	.L236		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1049:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	ld.w	r1, [r13 + (-36)]	# i.400_365, i
	mov.w	r0, 7	# tmp554,
	and.w	r1, r0	# _366, tmp554
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1049:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	xor.w	r0, r0	# tmp555
	cmp.w	r1, r0	# _366, tmp555
	jnz	.L236		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1049:             if ((i != 0) && (i % 8 == 0)) printf("\n");
	mov.w	r1, sp	# tmp556,
	mov.w	r0, 10	# tmp557,
	st.w	[r1], r0	#, tmp557
	call	putchar		#
.L236:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1046:         for (int i = 14; i < len; i++) 
	ld.w	r0, [r13 + (-36)]	# tmp559, i
	add.w	r0, 1 #111	# tmp558,
	st.w	[r13 + (-36)], r0	# i, tmp558
.L235:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1046:         for (int i = 14; i < len; i++) 
	ld.s	r0, [r13 + (-40)]	# _367, len
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1046:         for (int i = 14; i < len; i++) 
	ld.w	r1, [r13 + (-36)]	# tmp560, i
	cmp.w	r1, r0	# tmp560, _367
	jss	.L237		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1052: }
	nop	
.L230:
	nop	
	mov.w	r12, r13	#,
	sub.w	r12, 24 #111	#,
	mov.w	sp, r12	#,
	pop	r11		#
	pop	r10		#
	pop	r9		#
	pop	r8		#
	pop	r7		#
	pop	r6		#
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	dumpPacket, .-dumpPacket
	.p2align	1
	.global	packetLoop
	.type	packetLoop, @function
packetLoop:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 36 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp189, plen
	st.s	[r13 + (-12)], r0	# plen, tmp190
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1065:     if (plen==0) {
	ld.s	r1, [r13 + (-12)]	# tmp191, plen
	xor.w	r0, r0	# tmp192
	cmp.w	r1, r0	# tmp191, tmp192
	jnz	.L239		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1067:         if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
	ld.b	r0, [waitgwmac]	# waitgwmac.401_1, waitgwmac
	zex.b	r1, r0	# _2, waitgwmac.401_1
	mov.w	r0, 1	# tmp193,
	and.w	r1, r0	# _3, tmp193
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1067:         if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
	xor.w	r0, r0	# tmp194
	cmp.w	r1, r0	# _3, tmp194
	jnz	.L240		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1067:         if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
	ld.b	r0, [waitgwmac]	# waitgwmac.402_4, waitgwmac
	zex.b	r1, r0	# _5, waitgwmac.402_4
	mov.w	r0, 4	# tmp195,
	and.w	r1, r0	# _6, tmp195
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1067:         if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
	xor.w	r0, r0	# tmp196
	cmp.w	r1, r0	# _6, tmp196
	jz	.L241		#
.L240:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1068:                 delaycnt==0 && isLinkUp()) {
	ld.s	r0, [delaycnt]	# delaycnt.403_7, delaycnt
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1067:         if ((waitgwmac & WGW_INITIAL_ARP || waitgwmac & WGW_REFRESHING) &&
	zex.s	r1, r0	# tmp197, delaycnt.403_7
	xor.w	r0, r0	# tmp198
	cmp.w	r1, r0	# tmp197, tmp198
	jnz	.L241		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1068:                 delaycnt==0 && isLinkUp()) {
	call	isLinkUp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1068:                 delaycnt==0 && isLinkUp()) {
	zex.b	r1, r0	# tmp199, _8
	xor.w	r0, r0	# tmp200
	cmp.w	r1, r0	# tmp199, tmp200
	jz	.L241		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1069:             client_arp_whohas(gwip);
	mov.w	r1, sp	# tmp201,
	mov.w	r0, gwip	# tmp202,
	st.w	[r1], r0	#, tmp202
	call	client_arp_whohas		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1070:             waitgwmac |= WGW_ACCEPT_ARP_REPLY;
	ld.b	r0, [waitgwmac]	# waitgwmac.404_9, waitgwmac
	mov.w	r1, 8	# tmp204,
	or.w	r0, r1	# tmp203, tmp204
	st.b	[waitgwmac], r0	# waitgwmac, _10
.L241:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1072:         delaycnt++;
	ld.s	r0, [delaycnt]	# delaycnt.405_11, delaycnt
	add.w	r0, 1 #111	# tmp205,
	st.s	[delaycnt], r0	# delaycnt, _13
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1076:         if (tcp_client_state==TCP_STATE_SENDSYN && (waitgwmac & WGW_HAVE_GW_MAC)) { // send a syn
	ld.b	r0, [tcp_client_state]	# tcp_client_state.407_14, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1076:         if (tcp_client_state==TCP_STATE_SENDSYN && (waitgwmac & WGW_HAVE_GW_MAC)) { // send a syn
	zex.b	r1, r0	# tmp206, tcp_client_state.407_14
	mov.w	r0, 1	# tmp207,
	cmp.w	r1, r0	# tmp206, tmp207
	jnz	.L242		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1076:         if (tcp_client_state==TCP_STATE_SENDSYN && (waitgwmac & WGW_HAVE_GW_MAC)) { // send a syn
	ld.b	r0, [waitgwmac]	# waitgwmac.408_15, waitgwmac
	zex.b	r1, r0	# _16, waitgwmac.408_15
	mov.w	r0, 2	# tmp208,
	and.w	r1, r0	# _17, tmp208
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1076:         if (tcp_client_state==TCP_STATE_SENDSYN && (waitgwmac & WGW_HAVE_GW_MAC)) { // send a syn
	xor.w	r0, r0	# tmp209
	cmp.w	r1, r0	# _17, tmp209
	jz	.L242		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1078:             tcp_client_state = TCP_STATE_SYNSENT;
	mov.b	r0, 2	# tmp210,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp210
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1079:             tcpclient_src_port_l++; // allocate a new port
	ld.b	r0, [tcpclient_src_port_l]	# tcpclient_src_port_l.409_18, tcpclient_src_port_l
	add.w	r0, 1 #111	# tmp211,
	st.b	[tcpclient_src_port_l], r0	# tcpclient_src_port_l, _20
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1080:             client_syn(((tcp_fd<<5) | (0x1f & tcpclient_src_port_l)),tcp_client_port_h,tcp_client_port_l);
	ld.b	r0, [tcp_fd]	# tcp_fd.411_21, tcp_fd
	zex.b	r0, r0	# _22, tcp_fd.411_21
	mov.w	r1, 5	# tmp212,
	shl.w	r0, r1	# _23, tmp212
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1080:             client_syn(((tcp_fd<<5) | (0x1f & tcpclient_src_port_l)),tcp_client_port_h,tcp_client_port_l);
	ld.b	r1, [tcpclient_src_port_l]	# tcpclient_src_port_l.412_25, tcpclient_src_port_l
	mov.w	r2, 31	# tmp214,
	and.w	r1, r2	# tmp213, tmp214
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1080:             client_syn(((tcp_fd<<5) | (0x1f & tcpclient_src_port_l)),tcp_client_port_h,tcp_client_port_l);
	or.w	r0, r1	# tmp215, _27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1080:             client_syn(((tcp_fd<<5) | (0x1f & tcpclient_src_port_l)),tcp_client_port_h,tcp_client_port_l);
	zex.b	r1, r0	# _30, _29
	ld.b	r0, [tcp_client_port_h]	# tcp_client_port_h.414_31, tcp_client_port_h
	zex.b	r2, r0	# _32, tcp_client_port_h.414_31
	ld.b	r0, [tcp_client_port_l]	# tcp_client_port_l.415_33, tcp_client_port_l
	zex.b	r3, r0	# _34, tcp_client_port_l.415_33
	mov.w	r0, sp	# tmp216,
	st.w	[r0 + (8)], r3	#, _34
	st.w	[r0 + (4)], r2	#, _32
	st.w	[r0], r1	#, _30
	call	client_syn		#
.L242:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	mov.w	r0, sp	# tmp217,
	mov.w	r1, dnsip	# tmp218,
	st.w	[r0 + (4)], r1	#, tmp218
	mov.w	r1, myip	# tmp219,
	st.w	[r0], r1	#, tmp219
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	zex.b	r1, r0	# tmp220, _35
	xor.w	r0, r0	# tmp221
	cmp.w	r1, r0	# tmp220, tmp221
	jz	.L243		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	ld.b	r0, [has_dns_mac]	# has_dns_mac.416_36, has_dns_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	zex.b	r1, r0	# tmp222, has_dns_mac.416_36
	xor.w	r0, r0	# tmp223
	cmp.w	r1, r0	# tmp222, tmp223
	jnz	.L243		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	ld.b	r0, [waiting_for_dns_mac]	# waiting_for_dns_mac.417_37, waiting_for_dns_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1085:         if(is_lan(myip, dnsip) && !has_dns_mac && !waiting_for_dns_mac) {
	zex.b	r1, r0	# tmp224, waiting_for_dns_mac.417_37
	xor.w	r0, r0	# tmp225
	cmp.w	r1, r0	# tmp224, tmp225
	jnz	.L243		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1087:             client_arp_whohas(dnsip);
	mov.w	r1, sp	# tmp226,
	mov.w	r0, dnsip	# tmp227,
	st.w	[r1], r0	#, tmp227
	call	client_arp_whohas		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1088:             waiting_for_dns_mac = true;
	mov.b	r0, 1	# tmp228,
	st.b	[waiting_for_dns_mac], r0	# waiting_for_dns_mac, tmp228
.L243:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	mov.w	r0, sp	# tmp229,
	mov.w	r1, hisip	# tmp230,
	st.w	[r0 + (4)], r1	#, tmp230
	mov.w	r1, myip	# tmp231,
	st.w	[r0], r1	#, tmp231
	call	is_lan		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	zex.b	r1, r0	# tmp232, _38
	xor.w	r0, r0	# tmp233
	cmp.w	r1, r0	# tmp232, tmp233
	jz	.L244		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	ld.b	r0, [has_dest_mac]	# has_dest_mac.418_39, has_dest_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	zex.b	r1, r0	# tmp234, has_dest_mac.418_39
	xor.w	r0, r0	# tmp235
	cmp.w	r1, r0	# tmp234, tmp235
	jnz	.L244		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	ld.b	r0, [waiting_for_dest_mac]	# waiting_for_dest_mac.419_40, waiting_for_dest_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1092:         if(is_lan(myip, hisip) && !has_dest_mac && !waiting_for_dest_mac) {
	zex.b	r1, r0	# tmp236, waiting_for_dest_mac.419_40
	xor.w	r0, r0	# tmp237
	cmp.w	r1, r0	# tmp236, tmp237
	jnz	.L244		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1094:             client_arp_whohas(hisip);
	mov.w	r1, sp	# tmp238,
	mov.w	r0, hisip	# tmp239,
	st.w	[r1], r0	#, tmp239
	call	client_arp_whohas		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1095:             waiting_for_dest_mac = true;
	mov.b	r0, 1	# tmp240,
	st.b	[waiting_for_dest_mac], r0	# waiting_for_dest_mac, tmp240
.L244:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1098:         return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L239:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1101:     if (eth_type_is_arp_and_my_ip(plen))
	ld.s	r0, [r13 + (-12)]	# _41, plen
	mov.w	r1, sp	# tmp241,
	st.w	[r1], r0	#, _41
	call	eth_type_is_arp_and_my_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1101:     if (eth_type_is_arp_and_my_ip(plen))
	zex.b	r1, r0	# tmp242, _42
	xor.w	r0, r0	# tmp243
	cmp.w	r1, r0	# tmp242, tmp243
	jz	.L246		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1103:         if (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REQ_L_V) {
	ld.w	r0, [gPB]	# gPB.420_43, gPB
	add.w	r0, 21 #111	# _44,
	ld.b	r0, [r0]	# _45, *_44
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1103:         if (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REQ_L_V) {
	zex.b	r1, r0	# tmp244, _45
	mov.w	r0, 1	# tmp245,
	cmp.w	r1, r0	# tmp244, tmp245
	jnz	.L247		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1105:             make_arp_answer_from_request();
	call	make_arp_answer_from_request		#
.L247:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	ld.b	r0, [waitgwmac]	# waitgwmac.421_46, waitgwmac
	zex.b	r1, r0	# _47, waitgwmac.421_46
	mov.w	r0, 8	# tmp246,
	and.w	r1, r0	# _48, tmp246
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	xor.w	r0, r0	# tmp247
	cmp.w	r1, r0	# _48, tmp247
	jz	.L248		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	ld.w	r0, [gPB]	# gPB.422_49, gPB
	add.w	r0, 21 #111	# _50,
	ld.b	r0, [r0]	# _51, *_50
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	zex.b	r1, r0	# tmp248, _51
	mov.w	r0, 2	# tmp249,
	cmp.w	r1, r0	# tmp248, tmp249
	jnz	.L248		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	mov.w	r0, sp	# tmp250,
	mov.w	r1, gwmacaddr	# tmp251,
	st.w	[r0 + (4)], r1	#, tmp251
	mov.w	r1, gwip	# tmp252,
	st.w	[r0], r1	#, tmp252
	call	client_store_mac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1107:         if (waitgwmac & WGW_ACCEPT_ARP_REPLY && (gPB[ETH_ARP_OPCODE_L_P]==ETH_ARP_OPCODE_REPLY_L_V) && client_store_mac(gwip, gwmacaddr)) {
	zex.b	r1, r0	# tmp253, _52
	xor.w	r0, r0	# tmp254
	cmp.w	r1, r0	# tmp253, tmp254
	jz	.L248		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1109:             waitgwmac = WGW_HAVE_GW_MAC;
	mov.b	r0, 2	# tmp255,
	st.b	[waitgwmac], r0	# waitgwmac, tmp255
.L248:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1111:         if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
	ld.b	r0, [has_dns_mac]	# has_dns_mac.423_53, has_dns_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1111:         if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
	zex.b	r1, r0	# tmp256, has_dns_mac.423_53
	xor.w	r0, r0	# tmp257
	cmp.w	r1, r0	# tmp256, tmp257
	jnz	.L249		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1111:         if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
	ld.b	r0, [waiting_for_dns_mac]	# waiting_for_dns_mac.424_54, waiting_for_dns_mac
	zex.b	r1, r0	# tmp258, waiting_for_dns_mac.424_54
	xor.w	r0, r0	# tmp259
	cmp.w	r1, r0	# tmp258, tmp259
	jz	.L249		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1111:         if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
	mov.w	r0, sp	# tmp260,
	mov.w	r1, destmacaddr	# tmp261,
	st.w	[r0 + (4)], r1	#, tmp261
	mov.w	r1, dnsip	# tmp262,
	st.w	[r0], r1	#, tmp262
	call	client_store_mac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1111:         if (!has_dns_mac && waiting_for_dns_mac && client_store_mac(dnsip, destmacaddr)) {
	zex.b	r1, r0	# tmp263, _55
	xor.w	r0, r0	# tmp264
	cmp.w	r1, r0	# tmp263, tmp264
	jz	.L249		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1113:             has_dns_mac = true;
	mov.b	r0, 1	# tmp265,
	st.b	[has_dns_mac], r0	# has_dns_mac, tmp265
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1114:             waiting_for_dns_mac = false;
	xor.w	r0, r0	# tmp266
	st.b	[waiting_for_dns_mac], r0	# waiting_for_dns_mac, tmp266
.L249:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1116:         if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
	ld.b	r0, [has_dest_mac]	# has_dest_mac.425_56, has_dest_mac
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1116:         if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
	zex.b	r1, r0	# tmp267, has_dest_mac.425_56
	xor.w	r0, r0	# tmp268
	cmp.w	r1, r0	# tmp267, tmp268
	jnz	.L250		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1116:         if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
	ld.b	r0, [waiting_for_dest_mac]	# waiting_for_dest_mac.426_57, waiting_for_dest_mac
	zex.b	r1, r0	# tmp269, waiting_for_dest_mac.426_57
	xor.w	r0, r0	# tmp270
	cmp.w	r1, r0	# tmp269, tmp270
	jz	.L250		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1116:         if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
	mov.w	r0, sp	# tmp271,
	mov.w	r1, destmacaddr	# tmp272,
	st.w	[r0 + (4)], r1	#, tmp272
	mov.w	r1, hisip	# tmp273,
	st.w	[r0], r1	#, tmp273
	call	client_store_mac		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1116:         if (!has_dest_mac && waiting_for_dest_mac && client_store_mac(hisip, destmacaddr)) {
	zex.b	r1, r0	# tmp274, _58
	xor.w	r0, r0	# tmp275
	cmp.w	r1, r0	# tmp274, tmp275
	jz	.L250		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1118:             has_dest_mac = true;
	mov.b	r0, 1	# tmp276,
	st.b	[has_dest_mac], r0	# has_dest_mac, tmp276
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1119:             waiting_for_dest_mac = false;
	xor.w	r0, r0	# tmp277
	st.b	[waiting_for_dest_mac], r0	# waiting_for_dest_mac, tmp277
.L250:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1121:         return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L246:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1124:     if (eth_type_is_ip_and_my_ip(plen)==0)
	ld.s	r0, [r13 + (-12)]	# _59, plen
	mov.w	r1, sp	# tmp278,
	st.w	[r1], r0	#, _59
	call	eth_type_is_ip_and_my_ip		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1124:     if (eth_type_is_ip_and_my_ip(plen)==0)
	zex.b	r1, r0	# tmp279, _60
	xor.w	r0, r0	# tmp280
	cmp.w	r1, r0	# tmp279, tmp280
	jnz	.L251		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1127:         return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L251:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1131:     if (gPB[IP_PROTO_P]==IP_PROTO_ICMP_V && gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V)
	ld.w	r0, [gPB]	# gPB.427_61, gPB
	add.w	r0, 23 #111	# _62,
	ld.b	r0, [r0]	# _63, *_62
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1131:     if (gPB[IP_PROTO_P]==IP_PROTO_ICMP_V && gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V)
	zex.b	r1, r0	# tmp281, _63
	mov.w	r0, 1	# tmp282,
	cmp.w	r1, r0	# tmp281, tmp282
	jnz	.L252		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1131:     if (gPB[IP_PROTO_P]==IP_PROTO_ICMP_V && gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V)
	ld.w	r0, [gPB]	# gPB.428_64, gPB
	add.w	r0, 34 #111	# _65,
	ld.b	r0, [r0]	# _66, *_65
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1131:     if (gPB[IP_PROTO_P]==IP_PROTO_ICMP_V && gPB[ICMP_TYPE_P]==ICMP_TYPE_ECHOREQUEST_V)
	zex.b	r1, r0	# tmp283, _66
	mov.w	r0, 8	# tmp284,
	cmp.w	r1, r0	# tmp283, tmp284
	jnz	.L252		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1134:         if (icmp_cb)
	ld.w	r1, [icmp_cb]	# icmp_cb.429_67, icmp_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1134:         if (icmp_cb)
	xor.w	r0, r0	# tmp285
	cmp.w	r1, r0	# icmp_cb.429_67, tmp285
	jz	.L253		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1135:             (*icmp_cb)(&(gPB[IP_SRC_P]));
	ld.w	r0, [icmp_cb]	# icmp_cb.430_68, icmp_cb
	ld.w	r1, [gPB]	# gPB.431_69, gPB
	add.w	r1, 26 #111	# _70,
	mov.w	r2, sp	# tmp286,
	st.w	[r2], r1	#, _70
	callr	r0		# icmp_cb.430_68
.L253:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1136:         make_echo_reply_from_request(plen);
	ld.s	r0, [r13 + (-12)]	# _71, plen
	mov.w	r1, sp	# tmp287,
	st.w	[r1], r0	#, _71
	call	make_echo_reply_from_request		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1137:         return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L252:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1148:     if (plen<54 || gPB[IP_PROTO_P]!=IP_PROTO_TCP_V )
	ld.s	r1, [r13 + (-12)]	# tmp288, plen
	mov.w	r0, 53	# tmp289,
	cmp.w	r1, r0	# tmp288, tmp289
	jse	.L254		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1148:     if (plen<54 || gPB[IP_PROTO_P]!=IP_PROTO_TCP_V )
	ld.w	r0, [gPB]	# gPB.432_72, gPB
	add.w	r0, 23 #111	# _73,
	ld.b	r0, [r0]	# _74, *_73
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1148:     if (plen<54 || gPB[IP_PROTO_P]!=IP_PROTO_TCP_V )
	zex.b	r1, r0	# tmp290, _74
	mov.w	r0, 6	# tmp291,
	cmp.w	r1, r0	# tmp290, tmp291
	jz	.L255		#
.L254:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1149:         return 0; //from here on we are only interested in TCP-packets; these are longer than 54 uint8_ts
	xor.w	r0, r0	# _168
	j	.L245		#
.L255:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1153:     if (gPB[TCP_DST_PORT_H_P]==TCPCLIENT_SRC_PORT_H)
	ld.w	r0, [gPB]	# gPB.433_75, gPB
	add.w	r0, 36 #111	# _76,
	ld.b	r0, [r0]	# _77, *_76
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1153:     if (gPB[TCP_DST_PORT_H_P]==TCPCLIENT_SRC_PORT_H)
	zex.b	r1, r0	# tmp292, _77
	mov.w	r0, 11	# tmp293,
	cmp.w	r1, r0	# tmp292, tmp293
	jnz	.L256		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1156:         if (check_ip_message_is_from(hisip)==0)
	mov.w	r1, sp	# tmp294,
	mov.w	r0, hisip	# tmp295,
	st.w	[r1], r0	#, tmp295
	call	check_ip_message_is_from		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1156:         if (check_ip_message_is_from(hisip)==0)
	zex.b	r1, r0	# tmp296, _78
	xor.w	r0, r0	# tmp297
	cmp.w	r1, r0	# tmp296, tmp297
	jnz	.L257		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1157:             return 0; //Not current TCP/IP connection (only handle one at a time)
	xor.w	r0, r0	# _168
	j	.L245		#
.L257:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1158:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_RST_V)
	ld.w	r0, [gPB]	# gPB.434_79, gPB
	add.w	r0, 47 #111	# _80,
	ld.b	r0, [r0]	# _81, *_80
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1158:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_RST_V)
	zex.b	r1, r0	# _82, _81
	mov.w	r0, 4	# tmp298,
	and.w	r1, r0	# _83, tmp298
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1158:         if (gPB[TCP_FLAGS_P] & TCP_FLAGS_RST_V)
	xor.w	r0, r0	# tmp299
	cmp.w	r1, r0	# _83, tmp299
	jz	.L258		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1161:             if (client_tcp_result_cb)
	ld.w	r1, [client_tcp_result_cb]	# client_tcp_result_cb.435_84, client_tcp_result_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1161:             if (client_tcp_result_cb)
	xor.w	r0, r0	# tmp300
	cmp.w	r1, r0	# client_tcp_result_cb.435_84, tmp300
	jz	.L259		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1162:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,3,0,0);
	ld.w	r1, [client_tcp_result_cb]	# client_tcp_result_cb.436_85, client_tcp_result_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1162:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,3,0,0);
	ld.w	r0, [gPB]	# gPB.437_86, gPB
	add.w	r0, 37 #111	# _87,
	ld.b	r0, [r0]	# _88, *_87
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1162:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,3,0,0);
	zex.b	r0, r0	# tmp301, _88
	mov.w	r2, 5	# tmp303,
	shr.w	r0, r2	# tmp302, tmp303
	zex.b	r2, r0	# _90, _89
	mov.w	r0, sp	# tmp304,
	xor.w	r3, r3	# tmp305
	st.w	[r0 + (12)], r3	#, tmp305
	xor.w	r3, r3	# tmp306
	st.w	[r0 + (8)], r3	#, tmp306
	mov.w	r3, 3	# tmp307,
	st.w	[r0 + (4)], r3	#, tmp307
	st.w	[r0], r2	#, _90
	callr	r1		# client_tcp_result_cb.436_85
.L259:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1163:             tcp_client_state = TCP_STATE_CLOSING;
	mov.b	r0, 5	# tmp308,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp308
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1164:             return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L258:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1166:         len = getTcpPayloadLength();
	call	getTcpPayloadLength		#
	st.s	[r13 + (-2)], r0	# len,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1167:         if (tcp_client_state==TCP_STATE_SYNSENT)
	ld.b	r0, [tcp_client_state]	# tcp_client_state.438_91, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1167:         if (tcp_client_state==TCP_STATE_SYNSENT)
	zex.b	r1, r0	# tmp309, tcp_client_state.438_91
	mov.w	r0, 2	# tmp310,
	cmp.w	r1, r0	# tmp309, tmp310
	jnz	.L260		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	ld.w	r0, [gPB]	# gPB.439_92, gPB
	add.w	r0, 47 #111	# _93,
	ld.b	r0, [r0]	# _94, *_93
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	zex.b	r1, r0	# _95, _94
	mov.w	r0, 2	# tmp311,
	and.w	r1, r0	# _96, tmp311
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	xor.w	r0, r0	# tmp312
	cmp.w	r1, r0	# _96, tmp312
	jz	.L261		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	ld.w	r0, [gPB]	# gPB.440_97, gPB
	add.w	r0, 47 #111	# _98,
	ld.b	r0, [r0]	# _99, *_98
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	zex.b	r1, r0	# _100, _99
	mov.w	r0, 16	# tmp313,
	and.w	r1, r0	# _101, tmp313
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1170:             if ((gPB[TCP_FLAGS_P] & TCP_FLAGS_SYN_V) && (gPB[TCP_FLAGS_P] &TCP_FLAGS_ACK_V))
	xor.w	r0, r0	# tmp314
	cmp.w	r1, r0	# _101, tmp314
	jz	.L261		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1173:                 make_tcp_ack_from_any(0,0);
	mov.w	r0, sp	# tmp315,
	xor.w	r1, r1	# tmp316
	st.w	[r0 + (4)], r1	#, tmp316
	xor.w	r1, r1	# tmp317
	st.w	[r0], r1	#, tmp317
	call	make_tcp_ack_from_any		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1174:                 gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V;
	ld.w	r0, [gPB]	# gPB.441_102, gPB
	add.w	r0, 47 #111	# _103,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1174:                 gPB[TCP_FLAGS_P] = TCP_FLAGS_ACK_V|TCP_FLAGS_PUSH_V;
	mov.b	r1, 24	# tmp318,
	st.b	[r0], r1	# *_103, tmp318
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1175:                 if (client_tcp_datafill_cb)
	ld.w	r1, [client_tcp_datafill_cb]	# client_tcp_datafill_cb.442_104, client_tcp_datafill_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1175:                 if (client_tcp_datafill_cb)
	xor.w	r0, r0	# tmp319
	cmp.w	r1, r0	# client_tcp_datafill_cb.442_104, tmp319
	jz	.L262		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1176:                     len = (*client_tcp_datafill_cb)((gPB[TCP_SRC_PORT_L_P]>>5)&0x7);
	ld.w	r0, [client_tcp_datafill_cb]	# client_tcp_datafill_cb.443_105, client_tcp_datafill_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1176:                     len = (*client_tcp_datafill_cb)((gPB[TCP_SRC_PORT_L_P]>>5)&0x7);
	ld.w	r1, [gPB]	# gPB.444_106, gPB
	add.w	r1, 35 #111	# _107,
	ld.b	r1, [r1]	# _108, *_107
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1176:                     len = (*client_tcp_datafill_cb)((gPB[TCP_SRC_PORT_L_P]>>5)&0x7);
	zex.b	r1, r1	# tmp320, _108
	mov.w	r2, 5	# tmp322,
	shr.w	r1, r2	# tmp321, tmp322
	zex.b	r1, r1	# _110, _109
	mov.w	r2, sp	# tmp323,
	st.w	[r2], r1	#, _110
	callr	r0		# client_tcp_datafill_cb.443_105
	st.s	[r13 + (-2)], r0	# len,
	j	.L263		#
.L262:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1178:                     len = 0;
	xor.w	r0, r0	# tmp324
	st.s	[r13 + (-2)], r0	# len, tmp324
.L263:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1179:                 tcp_client_state = TCP_STATE_ESTABLISHED;
	mov.b	r0, 3	# tmp325,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp325
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1180:                 make_tcp_ack_with_data_noflags(len);
	ld.s	r0, [r13 + (-2)]	# _111, len
	mov.w	r1, sp	# tmp326,
	st.w	[r1], r0	#, _111
	call	make_tcp_ack_with_data_noflags		#
	j	.L264		#
.L261:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1185:                 tcp_client_state = TCP_STATE_SENDSYN; // retry
	mov.b	r0, 1	# tmp327,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp327
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1186:                 len++;
	ld.s	r0, [r13 + (-2)]	# len.445_112, len
	add.w	r0, 1 #111	# tmp328,
	st.s	[r13 + (-2)], r0	# len, tmp329
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1187:                 if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	ld.w	r0, [gPB]	# gPB.446_113, gPB
	add.w	r0, 47 #111	# _114,
	ld.b	r0, [r0]	# _115, *_114
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1187:                 if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	zex.b	r1, r0	# _116, _115
	mov.w	r0, 16	# tmp330,
	and.w	r1, r0	# _117, tmp330
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1187:                 if (gPB[TCP_FLAGS_P] & TCP_FLAGS_ACK_V)
	xor.w	r0, r0	# tmp331
	cmp.w	r1, r0	# _117, tmp331
	jz	.L265		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1188:                     len = 0;
	xor.w	r0, r0	# tmp332
	st.s	[r13 + (-2)], r0	# len, tmp332
.L265:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1189:                 make_tcp_ack_from_any(len,TCP_FLAGS_RST_V);
	ld.s	r0, [r13 + (-2)]	# len.447_118, len
	sex.s	r1, r0	# _119, len.447_118
	mov.w	r0, sp	# tmp333,
	mov.w	r2, 4	# tmp334,
	st.w	[r0 + (4)], r2	#, tmp334
	st.w	[r0], r1	#, _119
	call	make_tcp_ack_from_any		#
.L264:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1191:             return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L260:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1193:         if (tcp_client_state==TCP_STATE_ESTABLISHED && len>0)
	ld.b	r0, [tcp_client_state]	# tcp_client_state.448_120, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1193:         if (tcp_client_state==TCP_STATE_ESTABLISHED && len>0)
	zex.b	r1, r0	# tmp335, tcp_client_state.448_120
	mov.w	r0, 3	# tmp336,
	cmp.w	r1, r0	# tmp335, tmp336
	jnz	.L266		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1193:         if (tcp_client_state==TCP_STATE_ESTABLISHED && len>0)
	ld.s	r1, [r13 + (-2)]	# tmp337, len
	xor.w	r0, r0	# tmp338
	cmp.w	r1, r0	# tmp337, tmp338
	jz	.L266		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1196:             if (client_tcp_result_cb) {
	ld.w	r1, [client_tcp_result_cb]	# client_tcp_result_cb.449_121, client_tcp_result_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1196:             if (client_tcp_result_cb) {
	xor.w	r0, r0	# tmp339
	cmp.w	r1, r0	# client_tcp_result_cb.449_121, tmp339
	jz	.L266		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1198:                 uint16_t tcpstart = TCP_DATA_START; // TCP_DATA_START is a formula
	ld.w	r0, [gPB]	# gPB.450_122, gPB
	add.w	r0, 46 #111	# _123,
	ld.b	r0, [r0]	# _124, *_123
	zex.b	r0, r0	# tmp340, _124
	mov.w	r1, 4	# tmp342,
	shr.w	r0, r1	# tmp341, tmp342
	zex.b	r0, r0	# tmp343, _125
	mov.w	r1, 2	# tmp345,
	shl.w	r0, r1	# tmp344, tmp345
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1198:                 uint16_t tcpstart = TCP_DATA_START; // TCP_DATA_START is a formula
	add.w	r0, 34 #111	# tmp346,
	st.s	[r13 + (-4)], r0	# tcpstart, tmp347
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1199:                 if (tcpstart>plen-8)
	ld.s	r0, [r13 + (-12)]	# _128, plen
	mov.w	r1, r0	# _129, _128
	add.w	r1, -7 #111	# _129,
	ld.s	r0, [r13 + (-4)]	# _130, tcpstart
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1199:                 if (tcpstart>plen-8)
	cmp.w	r1, r0	# _129, _130
	jgs	.L267		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1200:                     tcpstart = plen-8; // dummy but save
	ld.s	r0, [r13 + (-12)]	# tmp348, plen
	add.w	r0, -8 #111	# tmp349,
	st.s	[r13 + (-4)], r0	# tcpstart, tmp350
.L267:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1201:                 uint16_t save_len = len;
	ld.s	r0, [r13 + (-2)]	# tmp351, len
	st.s	[r13 + (-6)], r0	# save_len, tmp351
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1202:                 if (tcpstart+len>plen)
	ld.s	r1, [r13 + (-4)]	# _131, tcpstart
	ld.s	r0, [r13 + (-2)]	# _132, len
	add.w	r1, r0 #222	# _133, _132
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1202:                 if (tcpstart+len>plen)
	ld.s	r0, [r13 + (-12)]	# _134, plen
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1202:                 if (tcpstart+len>plen)
	cmp.w	r1, r0	# _133, _134
	jses	.L268		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1203:                     save_len = plen-tcpstart;
	ld.s	r0, [r13 + (-12)]	# tmp352, plen
	ld.s	r1, [r13 + (-4)]	# tmp353, tcpstart
	sub.w	r0, r1 #222	# tmp354, tmp355
	st.s	[r13 + (-6)], r0	# save_len, tmp356
.L268:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1204:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,0,tcpstart,save_len); //Call TCP handler (callback) function
	ld.w	r1, [client_tcp_result_cb]	# client_tcp_result_cb.451_135, client_tcp_result_cb
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1204:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,0,tcpstart,save_len); //Call TCP handler (callback) function
	ld.w	r0, [gPB]	# gPB.452_136, gPB
	add.w	r0, 37 #111	# _137,
	ld.b	r0, [r0]	# _138, *_137
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1204:                 (*client_tcp_result_cb)((gPB[TCP_DST_PORT_L_P]>>5)&0x7,0,tcpstart,save_len); //Call TCP handler (callback) function
	zex.b	r0, r0	# tmp357, _138
	mov.w	r2, 5	# tmp359,
	shr.w	r0, r2	# tmp358, tmp359
	zex.b	r2, r0	# _140, _139
	ld.s	r3, [r13 + (-4)]	# _141, tcpstart
	ld.s	r4, [r13 + (-6)]	# _142, save_len
	mov.w	r0, sp	# tmp360,
	st.w	[r0 + (12)], r4	#, _142
	st.w	[r0 + (8)], r3	#, _141
	xor.w	r3, r3	# tmp361
	st.w	[r0 + (4)], r3	#, tmp361
	st.w	[r0], r2	#, _140
	callr	r1		# client_tcp_result_cb.451_135
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1206:                 if(persist_tcp_connection)
	ld.b	r0, [persist_tcp_connection]	# persist_tcp_connection.453_143, persist_tcp_connection
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1206:                 if(persist_tcp_connection)
	zex.b	r1, r0	# tmp362, persist_tcp_connection.453_143
	xor.w	r0, r0	# tmp363
	cmp.w	r1, r0	# tmp362, tmp363
	jz	.L269		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1209:                     make_tcp_ack_from_any(len,TCP_FLAGS_PUSH_V);
	ld.s	r0, [r13 + (-2)]	# len.454_144, len
	sex.s	r1, r0	# _145, len.454_144
	mov.w	r0, sp	# tmp364,
	mov.w	r2, 8	# tmp365,
	st.w	[r0 + (4)], r2	#, tmp365
	st.w	[r0], r1	#, _145
	call	make_tcp_ack_from_any		#
	j	.L270		#
.L269:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1214:                     make_tcp_ack_from_any(len,TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V);
	ld.s	r0, [r13 + (-2)]	# len.455_146, len
	sex.s	r1, r0	# _147, len.455_146
	mov.w	r0, sp	# tmp366,
	mov.w	r2, 9	# tmp367,
	st.w	[r0 + (4)], r2	#, tmp367
	st.w	[r0], r1	#, _147
	call	make_tcp_ack_from_any		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1215:                     tcp_client_state = TCP_STATE_CLOSED;
	mov.b	r0, 6	# tmp368,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp368
.L270:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1217:                 return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L266:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1220:         if (tcp_client_state != TCP_STATE_CLOSING)
	ld.b	r0, [tcp_client_state]	# tcp_client_state.456_148, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1220:         if (tcp_client_state != TCP_STATE_CLOSING)
	zex.b	r1, r0	# tmp369, tcp_client_state.456_148
	mov.w	r0, 5	# tmp370,
	cmp.w	r1, r0	# tmp369, tmp370
	jz	.L271		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1223:             if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V) {
	ld.w	r0, [gPB]	# gPB.457_149, gPB
	add.w	r0, 47 #111	# _150,
	ld.b	r0, [r0]	# _151, *_150
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1223:             if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V) {
	zex.b	r1, r0	# _152, _151
	mov.w	r0, 1	# tmp371,
	and.w	r1, r0	# _153, tmp371
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1223:             if (gPB[TCP_FLAGS_P] & TCP_FLAGS_FIN_V) {
	xor.w	r0, r0	# tmp372
	cmp.w	r1, r0	# _153, tmp372
	jz	.L272		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1225:                 if(tcp_client_state == TCP_STATE_ESTABLISHED) {
	ld.b	r0, [tcp_client_state]	# tcp_client_state.458_154, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1225:                 if(tcp_client_state == TCP_STATE_ESTABLISHED) {
	zex.b	r1, r0	# tmp373, tcp_client_state.458_154
	mov.w	r0, 3	# tmp374,
	cmp.w	r1, r0	# tmp373, tmp374
	jnz	.L273		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1226:                     return 0; // In some instances FIN is received *before* DATA.  If that is the case, we just return here and keep looking for the data packet
	xor.w	r0, r0	# _168
	j	.L245		#
.L273:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1228:                 if (tcp_client_state != TCP_STATE_CLOSED) {
	ld.b	r0, [tcp_client_state]	# tcp_client_state.459_155, tcp_client_state
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1228:                 if (tcp_client_state != TCP_STATE_CLOSED) {
	zex.b	r1, r0	# tmp375, tcp_client_state.459_155
	mov.w	r0, 6	# tmp376,
	cmp.w	r1, r0	# tmp375, tmp376
	jz	.L271		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1230:                     make_tcp_ack_from_any(len+1,TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V);
	ld.s	r0, [r13 + (-2)]	# tmp377, len
	add.w	r0, 1 #111	# tmp378,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1230:                     make_tcp_ack_from_any(len+1,TCP_FLAGS_PUSH_V|TCP_FLAGS_FIN_V);
	sex.s	r1, r0	# _158, _157
	mov.w	r0, sp	# tmp379,
	mov.w	r2, 9	# tmp380,
	st.w	[r0 + (4)], r2	#, tmp380
	st.w	[r0], r1	#, _158
	call	make_tcp_ack_from_any		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1231:                     tcp_client_state = TCP_STATE_CLOSED; // connection terminated
	mov.b	r0, 6	# tmp381,
	st.b	[tcp_client_state], r0	# tcp_client_state, tmp381
	j	.L271		#
.L272:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1233:             } else if (len>0) {
	ld.s	r1, [r13 + (-2)]	# tmp382, len
	xor.w	r0, r0	# tmp383
	cmp.w	r1, r0	# tmp382, tmp383
	jz	.L271		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1235:                 make_tcp_ack_from_any(len,0);
	ld.s	r0, [r13 + (-2)]	# len.460_159, len
	sex.s	r1, r0	# _160, len.460_159
	mov.w	r0, sp	# tmp384,
	xor.w	r2, r2	# tmp385
	st.w	[r0 + (4)], r2	#, tmp385
	st.w	[r0], r1	#, _160
	call	make_tcp_ack_from_any		#
.L271:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1238:         return 0;
	xor.w	r0, r0	# _168
	j	.L245		#
.L256:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1244:     return accept(hisport, plen);
	ld.s	r0, [hisport]	# hisport.461_161, hisport
	zex.s	r1, r0	# _162, hisport.461_161
	ld.s	r2, [r13 + (-12)]	# _163, plen
	mov.w	r0, sp	# tmp386,
	st.w	[r0 + (4)], r2	#, _163
	st.w	[r0], r1	#, _162
	call	accept		#
.L245:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1246: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	packetLoop, .-packetLoop
	.p2align	1
	.global	persistTcpConnection
	.type	persistTcpConnection, @function
persistTcpConnection:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 4 #111	#,
	ld.w	r0, [r13 + (8)]	# tmp26, persist
	st.b	[r13 + (-4)], r0	# persist, tmp27
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1249:     persist_tcp_connection = persist;
	ld.b	r0, [r13 + (-4)]	# tmp28, persist
	st.b	[persist_tcp_connection], r0	# persist_tcp_connection, tmp28
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1250: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	persistTcpConnection, .-persistTcpConnection
	.p2align	1
	.global	init_tcpip
	.type	init_tcpip, @function
init_tcpip:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1256: 	enc28j60Init(MYMAC);
	mov.w	r1, sp	# tmp29,
	mov.w	r0, MYMAC	# tmp30,
	st.w	[r1], r0	#, tmp30
	call	enc28j60Init		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1260: 	if (isLinkUp())
	call	isLinkUp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1260: 	if (isLinkUp())
	zex.b	r1, r0	# tmp31, _1
	xor.w	r0, r0	# tmp32
	cmp.w	r1, r0	# tmp31, tmp32
	jz	.L276		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1262: 		tcpipBegin(1500, eth_buffer, MYMAC);
	mov.w	r0, sp	# tmp33,
	mov.w	r1, MYMAC	# tmp34,
	st.w	[r0 + (8)], r1	#, tmp34
	mov.w	r1, eth_buffer	# tmp35,
	st.w	[r0 + (4)], r1	#, tmp35
	mov.w	r1, 1500	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	tcpipBegin		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1263: 		staticSetup(MYIP, GWIP, DNSIP, MASK);
	mov.w	r0, sp	# tmp37,
	mov.w	r1, MASK	# tmp38,
	st.w	[r0 + (12)], r1	#, tmp38
	mov.w	r1, DNSIP	# tmp39,
	st.w	[r0 + (8)], r1	#, tmp39
	mov.w	r1, GWIP	# tmp40,
	st.w	[r0 + (4)], r1	#, tmp40
	mov.w	r1, MYIP	# tmp41,
	st.w	[r0], r1	#, tmp41
	call	staticSetup		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1264: 		parseIp(hisip, server_ip);
	mov.w	r0, sp	# tmp42,
	mov.w	r1, server_ip	# tmp43,
	st.w	[r0 + (4)], r1	#, tmp43
	mov.w	r1, hisip	# tmp44,
	st.w	[r0], r1	#, tmp44
	call	parseIp		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1266:         return true;
	mov.w	r0, 1	# _2,
	j	.L277		#
.L276:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1269:         return false;
	xor.w	r0, r0	# _2
.L277:
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1271: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	init_tcpip, .-init_tcpip
	.p2align	1
	.global	browseUrl
	.type	browseUrl, @function
browseUrl:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1274:     client_urlbuf = urlbuf;
	ld.w	r0, [r13 + (8)]	# tmp29, urlbuf
	st.w	[client_urlbuf], r0	# client_urlbuf, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1275:     client_urlbuf_var = urlbuf_varpart;
	ld.w	r0, [r13 + (12)]	# tmp30, urlbuf_varpart
	st.w	[client_urlbuf_var], r0	# client_urlbuf_var, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1276:     client_hoststr = hoststr;
	ld.w	r0, [r13 + (16)]	# tmp31, hoststr
	st.w	[client_hoststr], r0	# client_hoststr, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1277:     client_additionalheaderline = additionalheaderline;
	ld.w	r0, [r13 + (20)]	# tmp32, additionalheaderline
	st.w	[client_additionalheaderline], r0	# client_additionalheaderline, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1278:     client_postval = 0;
	xor.w	r0, r0	# tmp33
	st.w	[client_postval], r0	# client_postval, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1279:     client_browser_cb = callback;
	ld.w	r0, [r13 + (24)]	# tmp34, callback
	st.w	[client_browser_cb], r0	# client_browser_cb, tmp34
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1280:     www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
	ld.s	r0, [hisport]	# hisport.462_1, hisport
	zex.s	r1, r0	# _2, hisport.462_1
	mov.w	r0, sp	# tmp35,
	st.w	[r0 + (8)], r1	#, _2
	mov.w	r1, www_client_internal_datafill_cb	# tmp36,
	st.w	[r0 + (4)], r1	#, tmp36
	mov.w	r1, www_client_internal_result_cb	# tmp37,
	st.w	[r0], r1	#, tmp37
	call	clientTcpReq		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1280:     www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
	st.b	[www_fd], r0	# www_fd, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1281: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	browseUrl, .-browseUrl
	.p2align	1
	.global	httpPost
	.type	httpPost, @function
httpPost:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1284:     client_urlbuf = urlbuf;
	ld.w	r0, [r13 + (8)]	# tmp29, urlbuf
	st.w	[client_urlbuf], r0	# client_urlbuf, tmp29
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1285:     client_hoststr = hoststr;
	ld.w	r0, [r13 + (12)]	# tmp30, hoststr
	st.w	[client_hoststr], r0	# client_hoststr, tmp30
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1286:     client_additionalheaderline = additionalheaderline;
	ld.w	r0, [r13 + (16)]	# tmp31, additionalheaderline
	st.w	[client_additionalheaderline], r0	# client_additionalheaderline, tmp31
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1287:     client_postval = postval;
	ld.w	r0, [r13 + (20)]	# tmp32, postval
	st.w	[client_postval], r0	# client_postval, tmp32
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1288:     client_browser_cb = callback;
	ld.w	r0, [r13 + (24)]	# tmp33, callback
	st.w	[client_browser_cb], r0	# client_browser_cb, tmp33
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1289:     www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
	ld.s	r0, [hisport]	# hisport.463_1, hisport
	zex.s	r1, r0	# _2, hisport.463_1
	mov.w	r0, sp	# tmp34,
	st.w	[r0 + (8)], r1	#, _2
	mov.w	r1, www_client_internal_datafill_cb	# tmp35,
	st.w	[r0 + (4)], r1	#, tmp35
	mov.w	r1, www_client_internal_result_cb	# tmp36,
	st.w	[r0], r1	#, tmp36
	call	clientTcpReq		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1289:     www_fd = clientTcpReq(&www_client_internal_result_cb,&www_client_internal_datafill_cb,hisport);
	st.b	[www_fd], r0	# www_fd, _3
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1290: }
	nop	
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	httpPost, .-httpPost
	.p2align	1
	.global	mainLoop
	.type	mainLoop, @function
mainLoop:
	push	r13		#
	mov.w	r13, sp	#,
	sub.w	sp, 24 #111	#,
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1294:     return packetLoop(enc28j60PacketReceive(1500, eth_buffer));
	mov.w	r0, sp	# tmp30,
	ld.w	r1, [r13 + (8)]	# tmp31, eth_buffer
	st.w	[r0 + (4)], r1	#, tmp31
	mov.w	r1, 1500	# tmp32,
	st.w	[r0], r1	#, tmp32
	call	enc28j60PacketReceive		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1294:     return packetLoop(enc28j60PacketReceive(1500, eth_buffer));
	zex.s	r0, r0	# _2, _1
	mov.w	r1, sp	# tmp33,
	st.w	[r1], r0	#, _2
	call	packetLoop		#
# /mnt/c/Prj/Altera/C/moxiebox/modules/lib/tcpip.c:1295: }
	mov.w	sp, r13	#,
	pop	r13		#
	ret	
	.size	mainLoop, .-mainLoop
	.ident	"GCC: (GNU) 10.0.0 20200111 (experimental)"
