#define FAT_DEBUG 0

#include "types.h"

//------------------------------------------------------------------------------
// SD card commands
/** GO_IDLE_STATE - init card in spi mode if CS low */
#define CMD0  0X00
/** SEND_IF_COND - verify SD Memory Card interface operating condition.*/
#define CMD8  0X08
/** SEND_CSD - read the Card Specific Data (CSD register) */
#define CMD9  0X09
/** SEND_CID - read the card identification information (CID register) */
#define CMD10  0X0A
/** SEND_STATUS - read the card status register */
#define CMD13  0X0D
/** READ_BLOCK - read a single data block from the card */
#define CMD17  0X11
/** WRITE_BLOCK - write a single data block to the card */
#define CMD24  0X18
/** WRITE_MULTIPLE_BLOCK - write blocks of data until a STOP_TRANSMISSION */
#define CMD25  0X19
/** ERASE_WR_BLK_START - sets the address of the first block to be erased */
#define CMD32  0X20
/** ERASE_WR_BLK_END - sets the address of the last block of the continuous
    range to be erased*/
#define CMD33  0X21
/** ERASE - erase all previously selected blocks */
#define CMD38  0X26
/** APP_CMD - escape for application specific command */
#define CMD55  0X37
/** READ_OCR - read the OCR register of a card */
#define CMD58  0X3A
/** SET_WR_BLK_ERASE_COUNT - Set the number of write blocks to be
     pre-erased before writing */
#define ACMD23  0X17
/** SD_SEND_OP_COMD - Sends host capacity support information and
    activates the card's initialization process */
#define ACMD41  0X29
//------------------------------------------------------------------------------
/** status for card in the ready state */
#define R1_READY_STATE  0X00
/** status for card in the idle state */
#define R1_IDLE_STATE  0X01
/** status bit for illegal command */
#define R1_ILLEGAL_COMMAND  0X04
/** start data token for read or write single block*/
#define DATA_START_BLOCK  0XFE
/** stop token for write multiple blocks*/
#define STOP_TRAN_TOKEN  0XFD
/** start data token for write multiple blocks*/
#define WRITE_MULTIPLE_TOKEN  0XFC
/** mask for data response tokens after a write block operation */
#define DATA_RES_MASK  0X1F
/** write data accepted token */
#define DATA_RES_ACCEPTED  0X05
//------------------------------------------------------------------------------
#define SD_PROTECT_BLOCK_ZERO 1
/** init timeout ms */
#define SD_INIT_TIMEOUT  2000
/** erase timeout ms */
#define SD_ERASE_TIMEOUT  10000
/** read timeout ms */
#define SD_READ_TIMEOUT  100
/** write time out ms */
#define SD_WRITE_TIMEOUT  600
//------------------------------------------------------------------------------
// SD card errors
/** timeout error for command CMD0 */
#define SD_CARD_ERROR_CMD0  0X1
/** CMD8 was not accepted - not a valid SD card*/
#define SD_CARD_ERROR_CMD8  0X2
/** card returned an error response for CMD17 (read block) */
#define SD_CARD_ERROR_CMD17  0X3
/** card returned an error response for CMD24 (write block) */
#define SD_CARD_ERROR_CMD24  0X4
/**  WRITE_MULTIPLE_BLOCKS command failed */
#define SD_CARD_ERROR_CMD25  0X05
/** card returned an error response for CMD58 (read OCR) */
#define SD_CARD_ERROR_CMD58  0X06
/** SET_WR_BLK_ERASE_COUNT failed */
#define SD_CARD_ERROR_ACMD23  0X07
/** card's ACMD41 initialization process timeout */
#define SD_CARD_ERROR_ACMD41  0X08
/** card returned a bad CSR version field */
#define SD_CARD_ERROR_BAD_CSD  0X09
/** erase block group command failed */
#define SD_CARD_ERROR_ERASE  0X0A
/** card not capable of single block erase */
#define SD_CARD_ERROR_ERASE_SINGLE_BLOCK  0X0B
/** Erase sequence timed out */
#define SD_CARD_ERROR_ERASE_TIMEOUT  0X0C
/** card returned an error token instead of read data */
#define SD_CARD_ERROR_READ  0X0D
/** read CID or CSD failed */
#define SD_CARD_ERROR_READ_REG  0X0E
/** timeout while waiting for start of read data */
#define SD_CARD_ERROR_READ_TIMEOUT  0X0F
/** card did not accept STOP_TRAN_TOKEN */
#define SD_CARD_ERROR_STOP_TRAN  0X10
/** card returned an error token as a response to a write operation */
#define SD_CARD_ERROR_WRITE  0X11
/** attempt to write protected block zero */
#define SD_CARD_ERROR_WRITE_BLOCK_ZERO  0X12
/** card did not go ready for a multiple block write */
#define SD_CARD_ERROR_WRITE_MULTIPLE  0X13
/** card returned an error to a CMD13 status check after a write */
#define SD_CARD_ERROR_WRITE_PROGRAMMING  0X14
/** timeout occurred during write programming */
#define SD_CARD_ERROR_WRITE_TIMEOUT  0X15
/** incorrect rate selected */
#define SD_CARD_ERROR_SCK_RATE  0X16
//------------------------------------------------------------------------------
// card types
/** Standard capacity V1 SD card */
#define SD_CARD_TYPE_SD1  1
/** Standard capacity V2 SD card */
#define SD_CARD_TYPE_SD2  2
/** High Capacity SD card */
#define SD_CARD_TYPE_SDHC  3

//------------------------------------------------------------------------------

struct directoryEntry {
           /**
            * Short 8.3 name.
            * The first eight bytes contain the file name with blank fill.
            * The last three bytes contain the file extension with blank fill.
            */
  uint8_t  name[11];
          /** Entry attributes.
           *
           * The upper two bits of the attribute byte are reserved and should
           * always be set to 0 when a file is created and never modified or
           * looked at after that.  See defines that begin with DIR_ATT_.
           */
  uint8_t  attributes; // offset: 11 (0x0b)
          /**
           * Reserved for use by Windows NT. Set value to 0 when a file is
           * created and never modify or look at it after that.
           */
  uint8_t  reservedNT; // offset 12 (0x0c)
          /**
           * The granularity of the seconds part of creationTime is 2 seconds
           * so this field is a count of tenths of a second and its valid
           * value range is 0-199 inclusive. (WHG note - seems to be hundredths)
           */
  uint8_t  creationTimeTenths; // offset 13 (0x0d)
           /** Time file was created. */
  uint16_t creationTime; // offset 14
           /** Date file was created. */
  uint16_t creationDate;  // offset 16 (0x10)
          /**
           * Last access date. Note that there is no last access time, only
           * a date.  This is the date of last read or write. In the case of
           * a write, this should be set to the same date as lastWriteDate.
           */
  uint16_t lastAccessDate; // offset 18 (0x12)
          /**
           * High word of this entry's first cluster number (always 0 for a
           * FAT12 or FAT16 volume).
           */
  uint16_t firstClusterHigh; // offset 20 (0x14)
           /** Time of last write. File creation is considered a write. */
  uint16_t lastWriteTime; // offset 22 (0x16)
           /** Date of last write. File creation is considered a write. */
  uint16_t lastWriteDate; // offset 24 (0x18)
           /** Low word of this entry's first cluster number. */
  uint16_t firstClusterLow; // offset 26 (0x1a)
           /** 32-bit unsigned holding this file's size in bytes. */
  uint32_t fileSize;  // offset 28 (0x1c)
};
/** escape for name[0]  0XE5 */
#define DIR_NAME_0XE5  0X05
/** name[0] value for entry that is free after being "deleted" */
#define DIR_NAME_DELETED  0XE5
/** name[0] value for entry that is free and no allocated entries follow */
#define DIR_NAME_FREE  0X00
/** file is read-only */
#define DIR_ATT_READ_ONLY  0X01
/** File should hidden in directory listings */
#define DIR_ATT_HIDDEN  0X02
/** Entry is for a system file */
#define DIR_ATT_SYSTEM  0X04
/** Directory entry contains the volume label */
#define DIR_ATT_VOLUME_ID  0X08
/** Entry is for a directory */
#define DIR_ATT_DIRECTORY  0X10
/** Old DOS archive bit for backup support */
#define DIR_ATT_ARCHIVE  0X20
/** Test value for long name entry.  Test is
  (d->attributes & DIR_ATT_LONG_NAME_MASK)  DIR_ATT_LONG_NAME. */
#define DIR_ATT_LONG_NAME  0X0F
/** Test mask for long name entry */
#define DIR_ATT_LONG_NAME_MASK  0X3F
/** defined attribute bits */
#define DIR_ATT_DEFINED_BITS  0X3F


/** Type name for directoryEntry */
typedef struct directoryEntry dir_t;

//------------------------------------------------------------------------------
/** Value for byte 510 of boot block or MBR */
#define BOOTSIG0  0X55
/** Value for byte 511 of boot block or MBR */
#define BOOTSIG1  0XAA
//------------------------------------------------------------------------------
/**
 * \struct partitionTable
 * \brief MBR partition table entry
 *
 * A partition table entry for a MBR formatted storage device.
 * The MBR partition table has four entries.
 */
struct partitionTable {
          /**
           * Boot Indicator . Indicates whether the volume is the active
           * partition.  Legal values include: 0X00. Do not use for booting.
           * 0X80 Active partition.
           */
  uint8_t  boot;
          /**
            * Head part of Cylinder-head-sector address of the first block in
            * the partition. Legal values are 0-255. Only used in old PC BIOS.
            */
  uint8_t  beginHead;
          /**
           * Sector part of Cylinder-head-sector address of the first block in
           * the partition. Legal values are 1-63. Only used in old PC BIOS.
           */
  unsigned beginSector : 6;
           /** High bits cylinder for first block in partition. */
  unsigned beginCylinderHigh : 2;
          /**
           * Combine beginCylinderLow with beginCylinderHigh. Legal values
           * are 0-1023.  Only used in old PC BIOS.
           */
  uint8_t  beginCylinderLow;
          /**
           * Partition type. See defines that begin with PART_TYPE_ for
           * some Microsoft partition types.
           */
  uint8_t  type;
          /**
           * head part of cylinder-head-sector address of the last sector in the
           * partition.  Legal values are 0-255. Only used in old PC BIOS.
           */
  uint8_t  endHead;
          /**
           * Sector part of cylinder-head-sector address of the last sector in
           * the partition.  Legal values are 1-63. Only used in old PC BIOS.
           */
  unsigned endSector : 6;
           /** High bits of end cylinder */
  unsigned endCylinderHigh : 2;
          /**
           * Combine endCylinderLow with endCylinderHigh. Legal values
           * are 0-1023.  Only used in old PC BIOS.
           */
  uint8_t  endCylinderLow;
           /** Logical block address of the first block in the partition. */
  uint32_t firstSector;
           /** Length of the partition, in blocks. */
  uint32_t totalSectors;
};
/** Type name for partitionTable */
typedef struct partitionTable part_t;

//------------------------------------------------------------------------------

/**
 * \struct masterBootRecord
 *
 * \brief Master Boot Record
 *
 * The first block of a storage device that is formatted with a MBR.
 */
struct masterBootRecord {
           /** Code Area for master boot program. */
  uint8_t  codeArea[440];
           /** Optional WindowsNT disk signature. May contain more boot code. */
  uint32_t diskSignature;
           /** Usually zero but may be more boot code. */
  uint16_t usuallyZero;
           /** Partition tables. */
  part_t   part[4];
           /** First MBR signature byte. Must be 0X55 */
  uint8_t  mbrSig0;
           /** Second MBR signature byte. Must be 0XAA */
  uint8_t  mbrSig1;
};
/** Type name for masterBootRecord */
typedef struct masterBootRecord mbr_t;

//------------------------------------------------------------------------------

/** 
 * \struct biosParmBlock
 *
 * \brief BIOS parameter block
 * 
 *  The BIOS parameter block describes the physical layout of a FAT volume.
 */
struct biosParmBlock {
          /**
           * Count of bytes per sector. This value may take on only the
           * following values: 512, 1024, 2048 or 4096
           */
  uint16_t bytesPerSector;
          /**
           * Number of sectors per allocation unit. This value must be a
           * power of 2 that is greater than 0. The legal values are
           * 1, 2, 4, 8, 16, 32, 64, and 128.
           */
  uint8_t  sectorsPerCluster;
          /**
           * Number of sectors before the first FAT.
           * This value must not be zero.
           */
  uint16_t reservedSectorCount;
          /** The count of FAT data structures on the volume. This field should
           *  always contain the value 2 for any FAT volume of any type.
           */
  uint8_t  fatCount;
          /**
          * For FAT12 and FAT16 volumes, this field contains the count of
          * 32-byte directory entries in the root directory. For FAT32 volumes,
          * this field must be set to 0. For FAT12 and FAT16 volumes, this
          * value should always specify a count that when multiplied by 32
          * results in a multiple of bytesPerSector.  FAT16 volumes should
          * use the value 512.
          */
  uint16_t rootDirEntryCount;
          /**
           * This field is the old 16-bit total count of sectors on the volume.
           * This count includes the count of all sectors in all four regions
           * of the volume. This field can be 0; if it is 0, then totalSectors32
           * must be non-zero.  For FAT32 volumes, this field must be 0. For
           * FAT12 and FAT16 volumes, this field contains the sector count, and
           * totalSectors32 is 0 if the total sector count fits
           * (is less than 0x10000).
           */
  uint16_t totalSectors16;
          /**
           * This dates back to the old MS-DOS 1.x media determination and is
           * no longer usually used for anything.  0xF8 is the standard value
           * for fixed (non-removable) media. For removable media, 0xF0 is
           * frequently used. Legal values are 0xF0 or 0xF8-0xFF.
           */
  uint8_t  mediaType;
          /**
           * Count of sectors occupied by one FAT on FAT12/FAT16 volumes.
           * On FAT32 volumes this field must be 0, and sectorsPerFat32
           * contains the FAT size count.
           */
  uint16_t sectorsPerFat16;
           /** Sectors per track for interrupt 0x13. Not used otherwise. */
  uint16_t sectorsPerTrtack;
           /** Number of heads for interrupt 0x13.  Not used otherwise. */
  uint16_t headCount;
          /**
           * Count of hidden sectors preceding the partition that contains this
           * FAT volume. This field is generally only relevant for media
           *  visible on interrupt 0x13.
           */
  uint32_t hidddenSectors;
          /**
           * This field is the new 32-bit total count of sectors on the volume.
           * This count includes the count of all sectors in all four regions
           * of the volume.  This field can be 0; if it is 0, then
           * totalSectors16 must be non-zero.
           */
  uint32_t totalSectors32;
          /**
           * Count of sectors occupied by one FAT on FAT32 volumes.
           */
  uint32_t sectorsPerFat32;
          /**
           * This field is only defined for FAT32 media and does not exist on
           * FAT12 and FAT16 media.
           * Bits 0-3 -- Zero-based number of active FAT.
           *             Only valid if mirroring is disabled.
           * Bits 4-6 -- Reserved.
           * Bit 7	-- 0 means the FAT is mirrored at runtime into all FATs.
	         *        -- 1 means only one FAT is active; it is the one referenced in bits 0-3.
           * Bits 8-15 	-- Reserved.
           */
  uint16_t fat32Flags;
          /**
           * FAT32 version. High byte is major revision number.
           * Low byte is minor revision number. Only 0.0 define.
           */
  uint16_t fat32Version;
          /**
           * Cluster number of the first cluster of the root directory for FAT32.
           * This usually 2 but not required to be 2.
           */
  uint32_t fat32RootCluster;
          /**
           * Sector number of FSINFO structure in the reserved area of the
           * FAT32 volume. Usually 1.
           */
  uint16_t fat32FSInfo;
          /**
           * If non-zero, indicates the sector number in the reserved area
           * of the volume of a copy of the boot record. Usually 6.
           * No value other than 6 is recommended.
           */
  uint16_t fat32BackBootBlock;
          /**
           * Reserved for future expansion. Code that formats FAT32 volumes
           * should always set all of the bytes of this field to 0.
           */
  uint8_t  fat32Reserved[12];
};
/** Type name for biosParmBlock */
typedef struct biosParmBlock bpb_t;

//------------------------------------------------------------------------------

// End Of Chain values for FAT entries
/** FAT16 end of chain value used by Microsoft. */
#define FAT16EOC  0XFFFF
/** Minimum value for FAT16 EOC.  Use to test for EOC. */
#define FAT16EOC_MIN  0XFFF8
/** FAT32 end of chain value used by Microsoft. */
#define FAT32EOC  0X0FFFFFFF
/** Minimum value for FAT32 EOC.  Use to test for EOC. */
#define FAT32EOC_MIN  0X0FFFFFF8
/** Mask a for FAT32 entry. Entries are 28 bits. */
#define FAT32MASK  0X0FFFFFFF

/**
 * \struct fat32BootSector
 *
 * \brief Boot sector for a FAT16 or FAT32 volume.
 * 
 */  
struct fat32BootSector {
           /** X86 jmp to boot program */
  uint8_t  jmpToBootCode[3];
           /** informational only - don't depend on it */
  char     oemName[8];
           /** BIOS Parameter Block */
  bpb_t    bpb;
           /** for int0x13 use value 0X80 for hard drive */
  uint8_t  driveNumber;
           /** used by Windows NT - should be zero for FAT */
  uint8_t  reserved1;
           /** 0X29 if next three fields are valid */
  uint8_t  bootSignature;
           /** usually generated by combining date and time */
  uint32_t volumeSerialNumber;
           /** should match volume label in root dir */
  char     volumeLabel[11];
           /** informational only - don't depend on it */
  char     fileSystemType[8];
           /** X86 boot code */
  uint8_t  bootCode[420];
           /** must be 0X55 */
  uint8_t  bootSectorSig0;
           /** must be 0XAA */
  uint8_t  bootSectorSig1;
};

/** Type name for fat32BootSector */
typedef struct fat32BootSector fbs_t;
//------------------------------------------------------------------------------

union cache_t {
           /** Used to access cached file data blocks. */
  uint8_t  data[512];
           /** Used to access cached FAT16 entries. */
  uint16_t fat16[256];
           /** Used to access cached FAT32 entries. */
  uint32_t fat32[128];
           /** Used to access cached directory entries. */
  dir_t    dir[16];
           /** Used to access a cached MasterBoot Record. */
  mbr_t    mbr;
           /** Used to access to a cached FAT boot sector. */
  fbs_t    fbs;
};


// ############################################################################

#define O_READ 0
#define O_WRITE 1

/*
ATTRIBUTES:
0x01    Indicates that the file is read only.
0x02    Indicates a hidden file. Such files can be displayed if it is really required.
0x04    Indicates a system file. These are hidden as well.
0x08    Indicates a special entry containing the disk's volume label, instead of describing a file. This kind of entry appears only in the root directory.
0x10    The entry describes a subdirectory.
0x20    This is the archive flag. This can be set and cleared by the programmer or user, but is always set when the file is modified. It is used by backup programs.
0x40    Not used; must be set to 0.
0x80    Not used; must be set to 0.
*/

typedef struct
{
  char filename[12];  /** The file's name and extension, total 11 chars padded with spaces. */
  uint8_t attributes;  /** The file's attributes. Mask of the FAT_ATTRIB_* constants. */
  uint8_t unused_attr[14]; /** Attributes in directory which are unused or unsupported */
  uint16_t first_cluster;     /** The cluster in which the file's first byte resides. */
  uint32_t filesize;   /** The file's size. */
  uint32_t block; /** The number of a block from the rootDirStart_ where this entry resides. */
  uint32_t slot; /** The number of the slot in the block where this entry resids. Each slot is 32 bytes large. */
} dir_entry_t;

typedef struct
{
  dir_entry_t dir_entry;
  uint32_t position;  /* Last index position when obtained this entry */
  uint16_t curr_cluster;   /* Current cluster number */
  uint32_t dsect; /* Current sector */
} file_descriptor_t;

// ############################################################################

uint8_t sdcard_init();
uint8_t volume_init(uint8_t part);
uint8_t file_open(char* filename, file_descriptor_t* fd, uint8_t mode);
uint16_t file_read(file_descriptor_t *fd, char *buf, uint16_t length);
uint32_t getDirEntry(file_descriptor_t* fd, uint32_t index);
uint8_t file_seek(file_descriptor_t *fd, uint32_t offset);
uint16_t file_write(file_descriptor_t* fd, uint8_t* write_str, uint16_t length);
uint8_t file_delete(file_descriptor_t* fd);
