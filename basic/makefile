TARGET=basic
BOOT=boot

include ../makefile

FILES = $(TARGET) $(LIB)/sprintf $(LIB)/string $(LIB)/stdio $(LIB)/floatimpl $(LIB)/graphics $(LIB)/mouse $(LIB)/spi $(LIB)/fat $(LIB)/enc28j60 $(LIB)/tcpip $(LIB)/math $(LIB)/umm_malloc

ASM_LIST := $(foreach file,$(FILES), $(file).s) $(LIB)/keyboard.s $(LIB)/files.s $(LIB)/graphics320.s $(LIB)/graphics640.s $(LIB)/fonts.s $(LIB)/consts.s

