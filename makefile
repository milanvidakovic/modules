HOME=/mnt/c/Prj/Altera/C/moxiebox/modules

LIB=$(HOME)/lib

INCLUDE=$(HOME)/include

CFLAGS=-fsigned-char -S -fverbose-asm 

FILES = $(TARGET) $(LIB)/sprintf $(LIB)/string $(LIB)/stdio $(LIB)/floatimpl $(LIB)/graphics $(LIB)/mouse $(LIB)/math
#SPI_FILES = $(FILES) $(LIB)/spi $(LIB)/fat $(LIB)/enc28j60 $(LIB)/tcpip 

# $(LIB)/files.s 
ASM_LIST := $(foreach file,$(FILES), $(file).s) $(LIB)/keyboard.s $(LIB)/consts.s $(LIB)/graphics320.s $(LIB)/graphics640.s $(LIB)/fonts.s $(LIB)/files.s 

all: compile assemble

sd: sd_compile sd_assemble sd_copy

boot: boot_compile boot_assemble boot_copy

compile:
	@for file in $(FILES); do \
    moxiebox-gcc -I$(INCLUDE) -DKERNEL $(CFLAGS) -S $${file}.c -o $${file}.s; \
	done
	
assemble:
	java -jar ../FPGA_Assembler.jar -s -f $(ASM_LIST)

sd_compile:
	@for file in $(FILES); do \
    moxiebox-gcc -I$(INCLUDE) $(CFLAGS) -S $${file}.c -o $${file}.s; \
	done
	
sd_assemble:
	java -jar ../FPGA_Assembler.jar -s -b=197632 $(ASM_LIST) 

sd_copy:
	cp $(TARGET).bin ../

boot_compile:
	@for file in $(FILES); do \
    moxiebox-gcc -I$(INCLUDE) -DKERNEL $(CFLAGS) $${file}.c -o $${file}.s; \
	done

boot_assemble:
	java -jar ../FPGA_Assembler.jar -s $(ASM_LIST)

boot_copy:
	cp $(TARGET).bin ../$(BOOT).bin

