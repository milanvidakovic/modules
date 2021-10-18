
#include <fat.h>
#include <string.h>
#include <spi.h>
#include <stdio.h>

unsigned short int *PORT_SPI_CS2	= (unsigned short int *)(0x80000000 + 740)	; // port for CS for SD card

short int *DMA_1_HANDLER_INSTR 	= (short int *)80	; // address of the IRQ#14 handler address first instruction (DMA channel 1 handler)
int *DMA_1_HANDLER_ADDR			= (int *)82	; // address of the IRQ#14 handler address (DMA Channel 1 handler)


#define FAIL_COUNTER_MAX 2

uint32_t block_;
uint8_t chipSelectPin_;
uint8_t errorCode_;
uint8_t inBlock_;
uint16_t offset_;
uint8_t partialBlockRead_;
uint8_t status_;
uint8_t type_;
uint8_t writeCRC_;

//------------------------------------------------------------------------------
void chipSelectHigh(void) {
  *PORT_SPI_CS2 = 1;
}
void chipSelectLow(void) {
  *PORT_SPI_CS2 = 0;
}

uint8_t spiRec(void) {
    send_spi(SPI0, 0xFF);
    return read_spi(SPI0);
}

void spiSend(uint8_t b) {
    send_spi(SPI0, b);
}

//------------------------------------------------------------------------------

/** Skip remaining data in a block when in partial block read mode. */
void readEnd(void) {
  if (inBlock_) {
      // skip data and crc
    while (offset_++ < 514) spiRec();
    chipSelectHigh();
    inBlock_ = 0;
  }
}

// wait for card to go not busy
uint8_t waitNotBusy(uint32_t timeoutMillis) {
  uint32_t t0 = get_millis();
  do {
    if (spiRec() == 0XFF) return true;
  }
  while ((get_millis() - t0) < timeoutMillis);
  return false;
}

uint8_t cardCommand(uint8_t cmd, uint32_t arg) {
  // end read if in partialBlockRead mode
  readEnd();

  // select card
  chipSelectLow();

  // wait up to 300 ms if busy
  waitNotBusy(300);

  // send command
  spiSend(cmd | 0x40);

  // send argument
  for (int8_t s = 24; s >= 0; s -= 8) spiSend(arg >> s);

  // send CRC
  uint8_t crc = 0XFF;
  if (cmd == CMD0) crc = 0X95;  // correct crc for CMD0 with arg 0
  if (cmd == CMD8) crc = 0X87;  // correct crc for CMD8 with arg 0X1AA
  spiSend(crc);

  // wait for response
  for (uint8_t i = 0; ((status_ = spiRec()) & 0X80) && i != 0XFF; i++);
  return status_;
}

uint8_t cardAcmd(uint8_t cmd, uint32_t arg) {
  cardCommand(CMD55, 0);
  return cardCommand(cmd, arg);
}

void error(uint8_t code) 
{
  errorCode_ = code;
}

uint8_t get_type(void) 
{
  return type_;
}

void type(uint8_t value) 
{
  type_ = value;
}

/** Wait for start block token */
uint8_t waitStartBlock(void) {
  uint32_t t0 = get_millis();
  uint32_t millis;
  while ((status_ = spiRec()) == 0XFF) {
    millis = get_millis();
    if ((millis - t0) > SD_READ_TIMEOUT) {
      error(SD_CARD_ERROR_READ_TIMEOUT);
      goto fail;
    }
  }
  if (status_ != DATA_START_BLOCK) {
    error(SD_CARD_ERROR_READ);
    goto fail;
  }
  return true;

 fail:
  chipSelectHigh();
  #if FAT_DEBUG
  printf("waitStartBlock error code: %d, status: %d, millis: %d\n", errorCode_, status_, millis);
  #endif
  return false;
}

//------------------------------------------------------------------------------
unsigned int *PORT_DMA_ADDR_1		= (unsigned int *)(0x80000000 + 1400); // DMA channel 1 start address port
unsigned int *PORT_DMA_COUNT_1		= (unsigned int *)(0x80000000 + 1420); // DMA channel 1 counter port
unsigned short *PORT_DMA_START_RCV_1	= (unsigned short *)(0x80000000 + 1470); // DMA channel 1 start receiving data
int finished_dma_read_1 = 0;

short int *dma_video = (short int *)1024;
char dma_buffer[512];


unsigned short *PORT_LED = (unsigned short *)(0x80000000 + 670); // DMA channel 1 start receiving data

int irq_counter = 0;

void dma_1_irq_triggered()
{
	asm 
	(
		"push r0\npush r1\npush r2\npush r3\npush r4\npush r5\npush r6\npush r7\npush r8\npush r9\npush r10\npush r11\npush r12\npush r13\n"
	);
	
	finished_dma_read_1 = 1;
  // *PORT_LED = ++irq_counter;

  asm 
	(
		"pop r13\npop r12\npop r11\npop r10\npop r9\npop r8\npop r7\npop r6\npop r5\npop r4\npop r3\npop r2\npop r1\npop r0\nmov.w sp,r13\npop r13\niret"
	);
}

uint8_t dma_receive(uint8_t *dst, uint16_t count)
{
    asm ("irq 0\n"); // IRQ 0000, xxx0 <- turn OFF timer irq
    int counter = 0;
    finished_dma_read_1 = 0;
    *PORT_DMA_ADDR_1 = (unsigned int)dst;
    *PORT_DMA_COUNT_1 = count;
    *PORT_DMA_START_RCV_1 = 1;
    while (!finished_dma_read_1) {
      if (counter++ == 5535) {
        *PORT_DMA_COUNT_1 = 0;
        *PORT_DMA_START_RCV_1 = 0;
        return false;
      }
    }
    asm ("irq 1\n"); // IRQ 0000, xxx1 <- turn ON timer irq
    return true;
}

/**
 * Read part of a 512 byte block from an SD card.
 *
 * \param[in] block Logical block to be read.
 * \param[in] offset Number of bytes to skip at start of block
 * \param[out] dst Pointer to the location that will receive the data.
 * \param[in] count Number of bytes to read
 * \return The value one, true, is returned for success and
 * the value zero, false, is returned for failure.
 */
uint8_t readData(uint32_t block,
        uint16_t offset, uint16_t count, uint8_t* dst) {
  uint16_t n;
  uint32_t rblock = block;
  uint16_t roffset = offset_;
  int fail_counter = 0;

spi_read_again:
  block = rblock;
  offset_ = roffset;

  if (count == 0) return true;
  if ((count + offset) > 512) {
    // printf("BLAST0!");
    goto fail;
  }

  #if FAT_DEBUG
  //printf("block: %d, offset: %d, count: %d\n", block, offset, count);
  #endif

  // irq_counter = 0;
  // *PORT_LED = 0;


  if (!inBlock_ || block != block_ || offset < offset_) {
    #if FAT_DEBUG 
    //printf("-1"); 
    #endif
    block_ = block;
    // use address if not SDHC card
    if (get_type()!= SD_CARD_TYPE_SDHC) 
      block <<= 9;
    if (cardCommand(CMD17, block)) {
      error(SD_CARD_ERROR_CMD17);
      // printf("BLAST1!");
      goto fail;
    }
    if (!waitStartBlock()) {
      // printf("BLAST2!");
      goto fail;
    }
    offset_ = 0;
    inBlock_ = 1;
  }

  int counter = 1;

  // skip data before offset
  if ((offset - offset_) > 0)
  {
    #if FAT_DEBUG 
    //printf("-2");
    #endif

    while(!dma_receive(dst, offset - offset_)) 
    {
      delay(2*counter);
      if (++counter == 3) {
        // printf("BLAST3!");
        goto fail;
      }
    }

    // for (;offset_ < offset; offset_++) {
    //   spiRec();
    // }
  }

  // *PORT_LED = 0;

  // transfer data
  //printf(" -3, count: %d, addr: %d ", count, dst);

  counter = 1;
  while (!dma_receive(dst, count)) 
  {
    delay(2*counter);
    if (++counter == 3) {
      // printf("BLAST4!");
      goto fail;
    }
  }

  // for (uint16_t i = 0; i < count; i++) {
  //   dst[i] = spiRec();
  // }

  #if FAT_DEBUG
  // printf("\nDMA ADDR AFTER: %d \n",   *PORT_DMA_ADDR_1);    
  // printf("DMA COUNT AFTER: %d \n",   *PORT_DMA_COUNT_1); 
  // printf("BYTES TRANSFERRED: %d\n", (int)(*PORT_DMA_ADDR_1) - (int)dst);
  //printf("DMA BUFFER CONTENT: {%s}\n", dst);
  #endif

  offset_ += count;
  if (!partialBlockRead_ || offset_ >= 512) {
    // read rest of data, checksum and set chip select high
    readEnd();
  }

  return true;

 fail:

  chipSelectHigh();

  if (++fail_counter < FAIL_COUNTER_MAX)
  {
    delay(fail_counter*2);
    chipSelectLow();
    goto spi_read_again;
  }

  #if FAT_DEBUG
  printf("read data error code: %d\n", errorCode_);
  #endif
  return false;
}

/**
 * Read a 512 byte block from an SD card device.
 *
 * \param[in] block Logical block to be read.
 * \param[out] dst Pointer to the location that will receive the data.

 * \return The value one, true, is returned for success and
 * the value zero, false, is returned for failure.
 */
uint8_t readBlock(uint32_t block, uint8_t* dst) {
  return readData(block, 0, 512, dst);
}

// send one block of data for write block or write multiple blocks
uint8_t writeData(uint8_t token, const uint8_t* src) {
  spiSend(token);
  for (uint16_t i = 0; i < 512; i++) {
    spiSend(src[i]);
  }
  spiSend(0xff);  // dummy crc
  spiSend(0xff);  // dummy crc

  status_ = spiRec();
  if ((status_ & DATA_RES_MASK) != DATA_RES_ACCEPTED) {
    error(SD_CARD_ERROR_WRITE);
    chipSelectHigh();
    return false;
  }
  return true;
}

/**
   Writes a 512 byte block to an SD card.

   \param[in] blockNumber Logical block to be written.
   \param[in] src Pointer to the location of the data to be written.
   \param[in] blocking If the write should be blocking.
   \return The value one, true, is returned for success and
   the value zero, false, is returned for failure.
*/
uint8_t writeBlock(uint32_t blockNumber, const uint8_t* src, uint8_t blocking) {
  #if FAT_DEBUG
  printf("Write block number: %d\n", blockNumber);
  #endif
//  return true;
  // don't allow write to first block
  if (blockNumber == 0) {
    error(SD_CARD_ERROR_WRITE_BLOCK_ZERO);
    goto fail;
  }

  // use address if not SDHC card
  if (get_type() != SD_CARD_TYPE_SDHC) {
    blockNumber <<= 9;
  }
  if (cardCommand(CMD24, blockNumber)) {
    error(SD_CARD_ERROR_CMD24);
    goto fail;
  }
  if (!writeData(DATA_START_BLOCK, src)) {
    goto fail;
  }
  if (blocking) {
    // wait for flash programming to complete
    if (!waitNotBusy(SD_WRITE_TIMEOUT)) {
      error(SD_CARD_ERROR_WRITE_TIMEOUT);
      goto fail;
    }
    // response is r2 so get and check two bytes for nonzero
    if (cardCommand(CMD13, 0) || spiRec()) {
      error(SD_CARD_ERROR_WRITE_PROGRAMMING);
      goto fail;
    }
  }
  chipSelectHigh();
  return true;

fail:
  chipSelectHigh();
  return false;
}
//------------------------------------------------------------------------------

// SD Card functions
uint8_t sdcard_init(){

	*DMA_1_HANDLER_INSTR 	= 1;
	*DMA_1_HANDLER_ADDR 	= (int)&dma_1_irq_triggered;

  writeCRC_ = errorCode_ = inBlock_ = partialBlockRead_ = type_ = 0;
  // 16-bit init start time allows over a minute
  uint32_t t0 = (uint32_t)get_millis();
  uint32_t arg;
   // must supply min of 74 clock cycles with CS high.
  for (uint8_t i = 0; i < 10; i++) spiSend(0XFF);

  chipSelectLow();

  // command to go idle in SPI mode
  while ((status_ = cardCommand(CMD0, 0)) != R1_IDLE_STATE) {
    if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
      error(SD_CARD_ERROR_CMD0);
      goto fail;
    }
  }
 
  // check SD version
  if ((cardCommand(CMD8, 0x1AA) & R1_ILLEGAL_COMMAND)) {
    type(SD_CARD_TYPE_SD1);
  } else {
    // only need last byte of r7 response
    for (uint8_t i = 0; i < 4; i++) status_ = spiRec();
    if (status_ != 0XAA) {
      error(SD_CARD_ERROR_CMD8);
      goto fail;
    }
    type(SD_CARD_TYPE_SD2);
  }
  // initialize card and send host supports SDHC if SD2
  arg = get_type() == SD_CARD_TYPE_SD2 ? 0X40000000 : 0;

  while ((status_ = cardAcmd(ACMD41, arg)) != R1_READY_STATE) {
    // check for timeout
    if (((uint32_t)get_millis() - t0) > SD_INIT_TIMEOUT) {
      error(SD_CARD_ERROR_ACMD41);
      goto fail;
    }
  }
  // if SD2 read OCR register to check for SDHC card
  if (get_type() == SD_CARD_TYPE_SD2) {
    if (cardCommand(CMD58, 0)) {
      error(SD_CARD_ERROR_CMD58);
      goto fail;
    }
    if ((spiRec() & 0XC0) == 0XC0) type(SD_CARD_TYPE_SDHC);
    // discard rest of ocr - contains allowed voltage range
    for (uint8_t i = 0; i < 3; i++) spiRec();
  }
  chipSelectHigh();

  return true;

fail:
  chipSelectHigh();
  #if FAT_DEBUG
  printf("################## FAIL: errorCode: %d\n", errorCode_);
  #endif
  return false;
}

// ########################################################################################################
/** Directory entry is part of a long name */
uint8_t DIR_IS_LONG_NAME(const dir_t* dir) {
  return (dir->attributes & DIR_ATT_LONG_NAME_MASK) == DIR_ATT_LONG_NAME;
}
/** Mask for file/subdirectory tests */
uint8_t const DIR_ATT_FILE_TYPE_MASK = (DIR_ATT_VOLUME_ID | DIR_ATT_DIRECTORY);
/** Directory entry is for a file */
uint8_t DIR_IS_FILE(const dir_t* dir) {
  return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == 0;
}
/** Directory entry is for a subdirectory */
uint8_t DIR_IS_SUBDIR(const dir_t* dir) {
  return (dir->attributes & DIR_ATT_FILE_TYPE_MASK) == DIR_ATT_DIRECTORY;
}
/** Directory entry is for a file or subdirectory */
uint8_t DIR_IS_FILE_OR_SUBDIR(const dir_t* dir) {
  return (dir->attributes & DIR_ATT_VOLUME_ID) == 0;
}

union cache_t  cacheBuffer_;   

bpb_t bpb;

uint32_t allocSearchStart_;   // start cluster for alloc search
uint8_t blocksPerCluster_;    // cluster size in blocks
uint32_t blocksPerFat_;       // FAT size in blocks
uint32_t clusterCount_;       // clusters in one FAT
uint8_t clusterSizeShift_;    // shift to convert cluster count to block count
uint32_t dataStartBlock_;     // first data block number
uint8_t fatCount_;            // number of FATs on volume
uint32_t fatStartBlock_;      // start block for first FAT
uint8_t fatType_;             // volume type (12, 16, OR 32)
uint16_t rootDirEntryCount_;  // number of entries in FAT16 root dir
uint32_t rootDirStart_;       // root start block for FAT16, cluster for FAT32
uint32_t clusterSize_;        // cluster size in bytes (bytesPerSector * sectorsPerCluster)

uint32_t reverse32(uint32_t bytes)
{
    uint32_t aux = 0;
    uint8_t byte;
    int i;
    for(i = 0; i < 32; i+=8)
    {
        byte = (bytes >> i) & 0xff;
        aux |= byte << (32 - 8 - i);
    }
    return aux;
}

uint16_t reverse16(uint16_t bytes)
{
    uint16_t aux = 0;
    uint8_t byte;
    int i;
    for(i = 0; i < 16; i+=8)
    {
        byte = (bytes >> i) & 0xff;
        aux |= byte << (16 - 8 - i);
    }
    return aux;
}

uint8_t volume_init(uint8_t part) {
  uint32_t volumeStartBlock = 0;
  // if part == 0 assume super floppy with FAT boot sector in block zero
  // if part > 0 assume mbr volume with partition table
  if (part) {
    if (part > 4)return false;
    if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
    //part_t* p = &cacheBuffer_.mbr.part[part-1];
    part_t* p = (part_t *)&cacheBuffer_.data[446 + ((part - 1)*sizeof(part_t))];

    #if FAT_DEBUG
    printf("mbr: %d, boot: %d, totalSectors: %d, firstSector: %d\n", &(cacheBuffer_.mbr), &(p->boot), &(p->totalSectors), &(p->firstSector));
    #endif
    p->totalSectors = reverse32(p->totalSectors);
    p->firstSector = reverse32(p->firstSector);
    #if FAT_DEBUG
    printf("boot: %d, totalSectors: %x, firstSector: %x\n", p->boot, p->totalSectors, p->firstSector);
    #endif
    if ((p->boot & 0X7F) !=0  ||
      p->totalSectors < 100 ||
      p->firstSector == 0) {
      // not a valid partition
      return false;
    }
    volumeStartBlock = p->firstSector;
  }

  #if FAT_DEBUG
  printf("volumeStartBlock: %d\n", volumeStartBlock);
  #endif

  if (!readBlock(volumeStartBlock, cacheBuffer_.data)) return false;
  //bpb_t* bpb = &cacheBuffer_.fbs.bpb;
  bpb.bytesPerSector = (cacheBuffer_.data[12]<<8) + cacheBuffer_.data[11];
  bpb.sectorsPerCluster = cacheBuffer_.data[13];
  bpb.reservedSectorCount = (cacheBuffer_.data[15]<<8) + cacheBuffer_.data[14];
  bpb.fatCount = cacheBuffer_.data[16];
  bpb.sectorsPerFat16 = (cacheBuffer_.data[23]<<8) + cacheBuffer_.data[22];
  bpb.sectorsPerFat32 = (cacheBuffer_.data[39]<<24) + (cacheBuffer_.data[38]<<16) + (cacheBuffer_.data[37]<<8) + cacheBuffer_.data[36];
  bpb.rootDirEntryCount = (cacheBuffer_.data[18]<<8) + cacheBuffer_.data[17];
  bpb.totalSectors16 = (cacheBuffer_.data[20]<<8) + cacheBuffer_.data[19];
  bpb.totalSectors32 = (cacheBuffer_.data[35]<<24) + (cacheBuffer_.data[34]<<16) + (cacheBuffer_.data[33]<<8) + cacheBuffer_.data[32];
  bpb.fat32RootCluster = (cacheBuffer_.data[47]<<24) + (cacheBuffer_.data[46]<<16) + (cacheBuffer_.data[45]<<8) + cacheBuffer_.data[44];

  #if FAT_DEBUG
  printf("bytesPerSector: %d, fatCount: %d, sectorsPerCluster: %d\n", bpb.bytesPerSector, bpb.fatCount, bpb.sectorsPerCluster);
  #endif

  if (bpb.bytesPerSector != 512 ||
    bpb.fatCount == 0 ||
    bpb.reservedSectorCount == 0 ||
    bpb.sectorsPerCluster == 0) {
       // not valid FAT volume
      return false;
  }
  fatCount_ = bpb.fatCount;
  blocksPerCluster_ = bpb.sectorsPerCluster;

  // determine shift that is same as multiply by blocksPerCluster_
  clusterSizeShift_ = 0;
  while (blocksPerCluster_ != (1 << clusterSizeShift_)) {
    // error if not power of 2
    if (clusterSizeShift_++ > 7) return false;
  }
  blocksPerFat_ = bpb.sectorsPerFat16 ?
                    bpb.sectorsPerFat16 : bpb.sectorsPerFat32;

  fatStartBlock_ = volumeStartBlock + bpb.reservedSectorCount;
  clusterSize_ = bpb.bytesPerSector * bpb.sectorsPerCluster;

  #if FAT_DEBUG
  printf("blocksPerCluster: %d       fatStartBlock: %d       clusterSize: %d\n", blocksPerCluster_, fatStartBlock_, clusterSize_);
  #endif

  // count for FAT16 zero for FAT32
  rootDirEntryCount_ = bpb.rootDirEntryCount;

  // directory start for FAT16 dataStart for FAT32
  rootDirStart_ = fatStartBlock_ + bpb.fatCount * blocksPerFat_;

  // data start for FAT16 and FAT32
  dataStartBlock_ = rootDirStart_ + ((32 * bpb.rootDirEntryCount + 511)/512);

  #if FAT_DEBUG
  printf("rootDirEntryCount: %d       rootDirStart: %d      dataStartBlock: %d\n", rootDirEntryCount_, rootDirStart_, dataStartBlock_);
  #endif

  // total blocks for FAT16 or FAT32
  uint32_t totalBlocks = bpb.totalSectors16 ?
                           bpb.totalSectors16 : bpb.totalSectors32;
  // total data blocks
  clusterCount_ = totalBlocks - (dataStartBlock_ - volumeStartBlock);

  // divide by cluster size to get cluster count
  clusterCount_ >>= clusterSizeShift_;

  // FAT type is determined by cluster count
  if (clusterCount_ < 4085) {
    fatType_ = 12;
  } else if (clusterCount_ < 65525) {
    fatType_ = 16;
  } else {
    rootDirStart_ = bpb.fat32RootCluster;
    fatType_ = 32;
  }
  #if FAT_DEBUG
  printf("totalBlocks: %d       clusterCount: %d      fatType: %d\n", totalBlocks, clusterCount_, fatType_);
  #endif

  return true;
}

// ########################################################################################################

uint8_t g_block_buf[512];

uint32_t getDirEntry(file_descriptor_t* fd, uint32_t index)
{
  int i,j;
  uint16_t cluster;
  uint32_t file_size;
  uint8_t b;
  uint8_t *buf = g_block_buf;
  char filename_upper[12];
  uint32_t counter = 0;

  for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
  {
    #if FAT_DEBUG
    printf("{{%d}} ", i);
    printf("$$$$$$$$$$$");
    #endif
    
    b = readBlock(rootDirStart_ + i, g_block_buf);
    
    #if FAT_DEBUG
    printf("###########");
    #endif

    for(j = 0; j < 16; j++)
    {
      
      #if FAT_DEBUG
      printf("[[%d]] ", j);
      #endif

      if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
      { 
        continue; // free, or deleted file/folder, or phantom entry for long names?
        if (counter > index)
          return 0;
      }
      
      if(counter == index)
      {
        file_size = *(buf + j*32 + 0x1c);
        file_size += *(buf + j*32 + 0x1c + 1)<<8;
        file_size += *(buf + j*32 + 0x1c + 2)<<16;
        file_size += *(buf + j*32 + 0x1c + 3)<<24;
        cluster = *(buf + j*32 + 0x1a);
        cluster += *(buf + j*32 + 0x1a + 1) << 8;
        cluster += *(buf + j*32 + 0x14 + 0) << 16;
        cluster += *(buf + j*32 + 0x14 + 1) << 24;

        strncpy(filename_upper, (char*)(buf+j*32), 11);
        filename_upper[11] = '\0';

        // fill in dir_entry
        memmove(fd->dir_entry.filename, filename_upper, 12);
        fd->dir_entry.attributes = *(buf + j*32 + 0x0b);
        memmove(fd->dir_entry.unused_attr, buf + j*32 + 0x0c, 14);
        fd->dir_entry.filesize = file_size;
        fd->dir_entry.block = rootDirStart_ + i;
        fd->dir_entry.slot = j;
        fd->dir_entry.first_cluster = cluster;
        fd->curr_cluster = cluster;
        return counter + 1;
      } else if (counter > index) {
        return 0;
      }
      counter++;
    }
  }
  return 0;
}

uint8_t getFile(dir_entry_t* de, uint8_t* buf, char* filename, uint8_t length)
{
  int i,j;
  uint16_t cluster;
  uint32_t file_size;
  uint8_t b;
  char filename_upper[12];
  
  filename[11] = 0;

  #if FAT_DEBUG
  printf("Looking for file <%s>\n", filename);
  #endif

  for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
  {
    b = readBlock(rootDirStart_ + i, buf);
    for(j = 0; j < 16; j++)
    {
      if (*(buf + j*32)==0 || *(buf + j*32)==0x2e || *(buf + j*32)==0xe5 || *(buf + j*32 + 0x0b) == 0xf)
      { 
        continue; // free, or deleted file/folder
      }
      
      strncpy(filename_upper, (char*)(buf+j*32), 11);
      filename_upper[11] = '\0';

      #if FAT_DEBUG
      printf("%s  attr:%x\n", filename_upper, *(buf + j*32 + 0x0b));
      #endif
      
      if(strcmp(filename, filename_upper) == 0)
      {
        #if FAT_DEBUG
        printf("found file!\n");
        #endif
        
        file_size = *(buf + j*32 + 0x1c);
        file_size += *(buf + j*32 + 0x1c + 1)<<8;
        file_size += *(buf + j*32 + 0x1c + 2)<<16;
        file_size += *(buf + j*32 + 0x1c + 3)<<24;
        cluster = *(buf + j*32 + 0x1a);
        cluster += *(buf + j*32 + 0x1a + 1) << 8;
        cluster += *(buf + j*32 + 0x14 + 0) << 16;
        cluster += *(buf + j*32 + 0x14 + 1) << 24;
        
        // fill in dir_entry
        memmove(de->filename, filename, length);
        de->attributes = *(buf + j*32 + 0x0b);
        memmove(de->unused_attr, buf + j*32 + 0x0c, 14);
        de->filesize = file_size;
        de->block = rootDirStart_ + i;
        de->slot = j;
        de->first_cluster = cluster;
        #if FAT_DEBUG
        printf("cluster number: %d, file size: %d, entry block: %d, endtry slot: %d, attributes: %d\n", cluster, file_size, de->block, de->slot, de->attributes);
        #endif

        return 1;                        
      }
    }
  }
  
  return 0;
}

uint8_t make83Name(const char* str, uint8_t* name) {
  uint8_t c;
  uint8_t n = 7;  // max index for part before dot
  uint8_t i = 0;
  // blank fill name and extension
  while (i < 11) name[i++] = ' ';
  i = 0;
  while ((c = *str++) != '\0') {
    if (c == '.') {
      if (n == 10) return false;  // only one dot allowed
      n = 10;  // max index for full 8.3 name
      i = 8;   // place for extension
    } else {
      // illegal FAT characters

      uint8_t b;
      const uint8_t valid[] = "|<>^+=?/[];,*\"\\";
      const uint8_t *p = valid;
      while ((b = *p++)) if (b == c) return false;

      // check size and only allow ASCII printable characters
      if (i > n || c < 0X21 || c > 0X7E)return false;
      // only upper case allowed in 8.3 names - convert lower to upper
      name[i++] = c < 'a' || c > 'z' ?  c : c + ('A' - 'a');
    }
  }
  name[11] = 0;
  // must have a file name, extension is optional
  return name[0] != ' ';
}

// returns address of first empty root dir entry
uint32_t get_empty_dir_entry(uint8_t* buf, uint16_t *block, uint16_t *slot)
{
  uint8_t i,j;
  uint8_t b; 
  
  for (i = 0; i < (dataStartBlock_ - rootDirStart_); i++)
  {
    b = readBlock(rootDirStart_ + i, buf);
    for(j = 0 ; j < 16; j++)
    {
      if(buf[j*32] == 0x00 || buf[j*32] == 0xE5)
      {
        #if FAT_DEBUG
        printf("found empty direntry at block %d, slot: %d, value there: %d\n", (rootDirStart_ + i), j, buf[j*32]);
        #endif
        *block = i;
        *slot = j;
        return (1);
      }
    }
    delay(1);
  }
  
  #if FAT_DEBUG
  printf("Failed to find empty directory entry!\n");
  #endif
  return 0;
}

uint8_t create_dir_entry(dir_entry_t* de, char* filename, uint8_t fn_length, uint8_t* buf)
{
  uint32_t dir_entry_addr;

  memmove(de->filename, filename, fn_length);
  de->attributes = DIR_ATT_ARCHIVE;
  de->filesize = 0;
  memset(de->unused_attr, 0, 14);
  
  uint16_t block;
  uint16_t slot;
  dir_entry_addr = get_empty_dir_entry(buf, &block, &slot);
  #if FAT_DEBUG
  printf("get_direntry returned block: %d, slot: %d; dir_entry_addr: %d\n", rootDirStart_ + block, slot, dir_entry_addr); 
  #endif
  if (!dir_entry_addr) 
  {
    #if FAT_DEBUG
    printf("Couldn't find empty direntry!\n");
    #endif
    return 0;
  }
  de->block = rootDirStart_ + block;
  de->slot = slot;
  
  // when direntry is allocated cluster is not yet entered
  de->first_cluster = 0x0000;
  
  return 1;
}

// writes a dir entry to disk
uint8_t write_dir_entry(dir_entry_t* de, uint8_t* buf)
{
  uint32_t de_sec_offset;
  uint32_t de_sec_start;
  uint8_t b;
  uint16_t cluster_rev;
  uint32_t filesize_rev;
  
  de_sec_offset = (de->slot * 32);
  de_sec_start = de->block;
  b = readBlock(de_sec_start, buf);
  
  #if FAT_DEBUG
    printf("de->firstCluster: %d\n", de->first_cluster);
    printf("de->filesize: %d\n", de->filesize);
  #endif
  cluster_rev = reverse16(de->first_cluster);
  filesize_rev = reverse32(de->filesize);
  #if FAT_DEBUG
    printf("de->filename: %s\n", de->filename);
    printf("de->firstCluster: %d\n", cluster_rev);
    printf("de->filesize: %d\n", filesize_rev);
  #endif
  
  // enter dir_entry info into buffer (based on http://en.wikipedia.org/wiki/8.3_filename)
  memmove(buf+de_sec_offset+0x00, de->filename, 11);
  memmove(buf+de_sec_offset+0x0b, &(de->attributes), 1);
  memmove(buf+de_sec_offset+0x0c, &(de->unused_attr), 14);
  memmove(buf+de_sec_offset+0x1a, &cluster_rev, 2);
  memmove(buf+de_sec_offset+0x1c, &filesize_rev, 4);
  
  if(!writeBlock(de_sec_start, buf, true))
  {
    #if FAT_DEBUG
    printf("problem writing direntry!\n");
    #endif
    return 0;
  }
  
  return 1;
}

// creates a new file that can be used in an OS
uint8_t create_file(dir_entry_t* de, char* filename, uint8_t fn_length, uint8_t* buf)
{
  if(!create_dir_entry(de, filename, fn_length, buf))
  {
    #if FAT_DEBUG
    printf("Couldn't create direntry!\n");
    #endif
    return 0;
  }
  
  if(!write_dir_entry(de, buf))
  {
    #if FAT_DEBUG
    printf("problem writing direntry!\r\n");
    #endif
    return 0;
  }
  
  return 1;
}

// sets FAT[_cluster_] to 0x00 and returns FAT[_cluster_]'s original value
uint16_t clear_FAT(uint8_t* buf, uint16_t cluster)
{
  uint32_t sec_start;
  uint16_t ori_cluster;

  sec_start = (cluster * 2) / 512;
  uint16_t offset = (cluster * 2) % 512;

  if(!readBlock(fatStartBlock_ + sec_start, buf))
  { 
    #if FAT_DEBUG
    printf("Problem clearing FAT!\n");
    #endif
    return 0;
  }
  
  ori_cluster = buf[offset] + buf[offset + 1] * 256;
  
  memmove(buf + offset, (uint16_t)0, 2);
  if (!writeBlock(fatStartBlock_ + sec_start, buf, 1))
  {
    #if FAT_DEBUG
    printf("Problem clearing FAT!\n");
    #endif
    return 0;
  }
  
  return ori_cluster;
}

uint8_t invalidate_dir_entry(dir_entry_t* de, uint8_t* buf)
{
  de->filename[0] = 0xe5;
  return write_dir_entry(de, buf);
}

/*
  Deletes a given file.
*/
uint8_t file_delete(file_descriptor_t* fd)
{
  uint16_t clus = fd->dir_entry.first_cluster;

  do
  {
    clus = clear_FAT(g_block_buf, clus);
    if (!clus)
    {
      #if FAT_DEBUG
      printf("Deleting file failed because there was a 0x00 in its FAT chain!\n");
      #endif
      return 0;
    }
  } while (clus < 0xfff8);
  
  if (!invalidate_dir_entry(&(fd->dir_entry), g_block_buf))
  {
    #if FAT_DEBUG
    printf("Deleting file failed while invalidating directory entry!\n");
    #endif
    return 0;
  }
  
  return 1;
}

/*
 * open a file for reading/writing. File has to be in the root directory.
 * If it does not exist, it will be created. An example argument for _filename_
 * is "test.txt". Filenames will be converted to all uppercase to adhere to the
 * FAT16 standard. _start_pos_ specifies the initial position for file
 * operations. It has to be set to SEEK_START or SEEK_END.
 */
uint8_t file_open(char* filename, file_descriptor_t* fd, uint8_t mode)
{
  char FAT16_filename[12];
  uint8_t file_exists;
  int fail_counter = 0;

open_again:

  if (mode != O_READ && mode != O_WRITE)
  {
    #if FAT_DEBUG
    printf("Unknown mode for fopen()!\r\n");
    #endif
    return 0;
  }
  if (strlen(filename) > 12)
  {
    #if FAT_DEBUG
    printf("long filenames are not supported!\r\n");
    #endif
    return 0;
  }
  make83Name(filename, FAT16_filename);
  
  // make the FAT16-compatible filename
  //    (must be all caps regardless if the file is not caps, 
  //    11 chars long, delimited with spaces) 
  //strcpy(FAT16_filename, str_toupper(filename));
  
  file_exists = getFile(&(fd->dir_entry), g_block_buf, FAT16_filename, 11);
  if (mode == O_WRITE) 
  {
    if (file_exists)
    {
      if (!file_delete(fd))
      {
        #if FAT_DEBUG
        printf("Delete file failed.\n");
        #endif
        goto fail_open;
      }
    }
    // file does not exist, so we can create one
    if (!create_file(&(fd->dir_entry), FAT16_filename, 11, g_block_buf))
    {
      printf("create_file failed.\n");
      goto fail_open;
    }
    file_exists = 1;
  }
  
  fd->curr_cluster = fd->dir_entry.first_cluster;
  fd->position = 0;
  
  return file_exists;
fail_open:
  if (++fail_counter < FAIL_COUNTER_MAX)
  {
    delay(fail_counter*2);
    goto open_again;
  }  
}

// converts a file offset position to the actual address of the corresponding sector
uint32_t get_sec_addr(uint16_t cluster, uint32_t position)
{
    return dataStartBlock_ + ((cluster-2) * bpb.sectorsPerCluster) + (position / bpb.bytesPerSector);
}

uint16_t next_cluster(uint16_t cluster, uint8_t *buff)
{
  uint32_t addr;
  uint16_t next;

  #if FAT_DEBUG
  printf("next_cluster trying to find next cluster for: %d\n", cluster);
  #endif

  if (cluster > (clusterCount_ + 1)) return false;
  uint32_t offset = cluster << 1;
  #if FAT_DEBUG
  printf("next_cluster offset: %d!\n", offset);
  #endif
  if(!readBlock(fatStartBlock_, buff))
  { 
    #if FAT_DEBUG
    printf("next_cluster failed when reading fat start block!\r\n");
    #endif
    return 0;
  }
  //for (int i = 0; i < 512; i++) printf("%x ", buff[i]);
  next = buff[offset]  + buff[offset + 1] * 256;
  
  return next;
}

/*-----------------------------------------------------------------------*/
/* Load multi-byte word in the FAT structure                             */
/*-----------------------------------------------------------------------*/

uint16_t ld_word (const uint8_t* ptr)	/*	 Load a 2-byte little-endian word */
{
	uint16_t rv;

	rv = ptr[1];
	rv = rv << 8 | ptr[0];
	return rv;
}

/*-----------------------------------------------------------------------*/
/* FAT access - Read next fat entry for the given one                    */
/*-----------------------------------------------------------------------*/
 uint16_t get_next_from_fat (	/* 1:IO error, Else: next Cluster */
	file_descriptor_t *fs,
	uint16_t clst	/* Cluster# to get the link information */
)
{
	uint8_t buf[512];
  uint16_t ret;

//	if (clst < 2 || clst >= fatCount_) return 1;	/* Range check */

	if (readData(fatStartBlock_ + clst / 256, (clst % 256) * 2, 2, buf)) {//,  ((UINT)clst % 256) * 2, 2)) return 1;
    ret = ld_word(buf);
    //printf("cluster: %d -> next_cluster: %d\n", clst, ret);
	  return ret;
  }

	return 1;	/* An error occured at the disk I/O layer */
}

/*-----------------------------------------------------------------------*/
/* Get sector# from cluster# / Get cluster field from directory entry    */
/*-----------------------------------------------------------------------*/
uint32_t clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
 	file_descriptor_t *fs, 
	uint16_t clst		/* Cluster# to be converted */
)
{
	//FATFS *fs = FatFs;

  //printf("clst: %d, blocksPerCluster: %d, dataStartBlock: %d\n", clst, blocksPerCluster_, dataStartBlock_);
	clst -= 2;
	return (uint32_t)clst * blocksPerCluster_ + dataStartBlock_;
}

/*
 * Read _read_len_ characters from the file in _fd_ into the buffer _buf_.
 * _read_len_ cannot exceed 512. Returns the number of characters successfully
 * read, and 0 for error.
 */
uint16_t file_read(file_descriptor_t *fd, char *buf, uint16_t length)
//FRESULT pf_read (
//	FATFS *descriptor,
//	void* buff,		/* Pointer to the read buffer (NULL:Forward data to the stream)*/
//	UINT btr,		/* Number of bytes to read */
//	UINT* br		/* Pointer to number of bytes read */
//)
{
	uint16_t br;
  int dr;
	uint16_t clst;
	uint32_t sect, remain;
	unsigned int rcnt;
	uint8_t cs;
  char *rbuff;
  uint16_t rlen;
  uint32_t fd_position = fd->position;
  uint16_t fd_curr_cluster = fd->curr_cluster;
  uint32_t fd_dsect = fd->dsect;
	int fail_counter = 0;

read_again:
  rbuff = buf;
  rlen = length;
  fd->position = fd_position;
  fd->curr_cluster = fd_curr_cluster;
  fd->dsect = fd_dsect;
	br = 0;
//	if (!fs) return FR_NOT_ENABLED;		/* Check file system */
//	if (!(fs->flag & FA_OPENED)) return FR_NOT_OPENED;	/* Check if opened */

//	remain = fs->fsize - fs->fptr;
	remain = fd->dir_entry.filesize - fd->position;
	if (rlen > remain) rlen = (uint16_t)remain;			/* Truncate btr by remaining bytes */

	while (rlen)	{									/* Repeat until all data transferred */
    //printf("fd->position: %d\n", fd->position);
		if ((fd->position % 512) == 0) {				/* On the sector boundary? */
			cs = (uint8_t)(fd->position / 512 & (bpb.sectorsPerCluster - 1));	/* Sector offset in the cluster */
			if (!cs) {								/* On the cluster boundary? */
				if (fd->position == 0) {				/* On the top of the file? */
					clst = fd->dir_entry.first_cluster;
				} else {
					clst = get_next_from_fat(fd, fd->curr_cluster);
          // printf("(%d) ", clst);
				}
				if ((clst <= 1) || (clst > 30000)) { 
          #if FAT_DEBUG
            printf("Failed reading file cluster!");
          #endif
          goto fail_read;
        }
				fd->curr_cluster = clst;				/* Update current cluster */
        //printf("fd->curr_cluster: %d\n", fd->curr_cluster);
			}
      //printf("cs: %d, file cluster: %d\n", cs, clst);
			sect = clust2sect(fd, fd->curr_cluster);		/* Get current sector */
			if (!sect) {
        #if FAT_DEBUG
          printf("cluster2sector failed!");
        #endif
        goto fail_read;
      }
			fd->dsect = sect + cs;
		}
    //printf("fd->dsect: %d\n", fd->dsect);
		rcnt = 512 - (uint8_t)fd->position % 512;			/* Get partial sector data from sector buffer */
		if (rcnt > rlen) 
      rcnt = rlen;
		dr = readData(fd->dsect, fd->position % 512, rcnt, rbuff);//, (UINT)fs->fptr % 512, rcnt);
		if (dr == 0) {
      #if FAT_DEBUG
        printf("readData failed\n");
      #endif
      goto fail_read;
    }
		fd->position += rcnt;							/* Advances file read pointer */
		rlen -= rcnt; 
    br += rcnt;					/* Update read counter */
		if (rbuff) 
      rbuff += rcnt;					/* Advances the data pointer if destination is memory */

		//printf("[[fptr: %d]]\n[[rcnt: %d]]\n[[bytes read: %d]]\n", fs->fptr, rcnt, *br);
	}
	return br;

fail_read:
  if (++fail_counter < FAIL_COUNTER_MAX) {
    delay(fail_counter * 2);
    goto read_again;
  }
  return 0;
}
/*
 * set file position to the offset position
 */
uint8_t file_seek(file_descriptor_t *fd, uint32_t offset)
{
  uint16_t clus;

  if (offset > fd->dir_entry.filesize)
  {
    #if FAT_DEBUG
    printf("offset position is bigger than file size!\n");
    #endif
    return 0;
  }
  
  while (fd->position != offset)
  {
    if (offset - fd->position < clusterSize_)
    {
      fd->position = offset;
      #if FAT_DEBUG
      printf("fd.position %d, offset: %d\n", fd->position, offset);
      #endif

      if (fd->position%clusterSize_ + offset >= clusterSize_)
      {
        clus = next_cluster(fd->curr_cluster, g_block_buf);
        #if FAT_DEBUG
        printf("NEXT CLUSTER: %d\n", clus);
        #endif
        if (clus != 0xFFFF) 
          fd->curr_cluster = clus;
      }

   }
    else
    {
      fd->position += clusterSize_ - fd->position%clusterSize_;
      clus = next_cluster(fd->curr_cluster, g_block_buf);
      if (!clus)
      {
        #if FAT_DEBUG
        printf("file_seek_to_offset failed when seeking to next cluster!\n");
        #endif
        return 0;
      }
      fd->curr_cluster = clus;
      #if FAT_DEBUG
      printf("NEXT CLUSTER: fd.position %d, offset: %d, fd.cluster\n", fd->position, offset, fd->curr_cluster);
      #endif
    }
  }
  
  return 1;
}

// returns FAT index (cluster number) of first unused cluster found in FAT
uint16_t get_unused_cluster(uint8_t* buf)
{
  uint8_t i,j;
  uint8_t b; 
  uint16_t FAT_entry;
  
  for (i = 0; i < 256; i++)
  {
    b = readBlock(fatStartBlock_ + i, buf);
    for(j = 0; j < 256 ; j++)
    {
      FAT_entry = buf[j*2]&0x00ff | (buf[j*2+1]&0x00ff)<<8;
      if(FAT_entry == 0x0000)
      {
        #if FAT_DEBUG
        printf("found unused cluster. FAT index: %x\n", ((i * 256) + j));
        #endif   
        return (i * 256) + j;
      }
    }
  }
  
  #if FAT_DEBUG
  printf("Failed to find unused cluster!\n");
  #endif
  return 0;
}

// make FAT[_cluster_] point to cluster _value_
uint8_t update_FAT(uint8_t* buf, uint16_t cluster, uint16_t value)
{
  uint32_t sec_start;
  uint32_t offset;
  uint16_t value_rev;
  
  sec_start = (cluster * 2) / 512;
  offset = (cluster * 2) % 512;

  #if FAT_DEBUG
  printf("Update FAT at: %d, offset: %d, value: %d\n", fatStartBlock_ + sec_start, offset, value);
  #endif

  if(!readBlock(fatStartBlock_ + sec_start, buf))
  { 
    #if FAT_DEBUG
    printf("Problem updating FAT!\n");
    #endif
    return 0;
  }
  value_rev = reverse16(value);
  memmove(buf + offset, &value_rev, 2);
  if (!writeBlock(fatStartBlock_+ sec_start, buf, 1))
  {
    #if FAT_DEBUG
    printf("Problem updating FAT!\n");
    #endif
    return 0;
  }
  
  return 1;
}

/*
 * Writes a buffer to a file. length cannot exceed 512. Returns the number of
 * bytes successfully written.
 */
uint16_t file_write(file_descriptor_t* fd, uint8_t* write_str, uint16_t length)
{
  uint16_t clus;
  uint16_t sec_bytes_left;
  uint16_t sec_offset;
  uint16_t write_length;
  uint16_t bytes_written = 0;
  uint32_t sec_addr;

  // if this is the first write, alloc a cluster.
  if (fd->dir_entry.first_cluster == 0x0000)
  {
    clus = get_unused_cluster(g_block_buf);
    #if FAT_DEBUG
    printf("Obtained unused cluster: %d\n", clus);
    #endif
    if (!clus) { return 0; }
    fd->dir_entry.first_cluster = clus;
    fd->curr_cluster = clus;    
    fd->position = 0;
    if (!update_FAT(g_block_buf, fd->curr_cluster, 0xffff)) { return 0; }
  }
  
  sec_offset = fd->position % 512;
  sec_bytes_left = 512 - sec_offset;
  sec_addr = get_sec_addr(fd->curr_cluster, fd->position % clusterSize_);
  if(!readBlock(sec_addr, g_block_buf)) { return 0; }
  
  if (length <= sec_bytes_left)
  {
    write_length = length;
  }
  else
  {
    write_length = sec_bytes_left;
  }
  memmove(g_block_buf + sec_offset, write_str, write_length);
  if (!writeBlock(sec_addr, g_block_buf, 1)) { return 0; }
  
  // update fd pointers and alloc new cluster if necessary
  if (fd->position % clusterSize_ + write_length >= clusterSize_)
  {
    clus = get_unused_cluster(g_block_buf);
    if (!clus) { return 0; }
    if (!update_FAT(g_block_buf, fd->curr_cluster, clus)) { return 0; }
    fd->curr_cluster = clus;
    // terminate chain in FAT
    if (!update_FAT(g_block_buf, clus, 0xffff)) { return 0; }
  }
  fd->position += write_length;
  bytes_written += write_length;
  
  // write remainder of string to next sector
  if (length > sec_bytes_left)
  {
    memset(g_block_buf, '\0', 512);
    memmove(g_block_buf, write_str + sec_bytes_left, length - sec_bytes_left);
    if (!writeBlock(get_sec_addr(fd->curr_cluster, fd->position % clusterSize_), g_block_buf, 1))
    { 
      return 0; 
    }
    
    fd->position += length - sec_bytes_left;
    bytes_written += length - sec_bytes_left;
  }
  
  // update dir entry
  if (fd->position > fd->dir_entry.filesize)
  {
    fd->dir_entry.filesize = fd->position;
    if (!write_dir_entry(&(fd->dir_entry), g_block_buf)){ return 0; }
  }
  
  return bytes_written;
}

