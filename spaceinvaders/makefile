TARGET=spaceinvaders

include ../makefile

FILES = $(TARGET) $(LIB)/sprintf $(LIB)/string $(LIB)/stdio $(LIB)/floatimpl $(LIB)/graphics 

ASM_LIST := $(foreach file,$(FILES), $(file).s) $(LIB)/keyboard.s $(LIB)/graphics320.s $(LIB)/graphics640.s $(LIB)/fonts.s $(LIB)/consts.s

sd_copy: 
	cp $(TARGET).bin ../spaceinv.bin


