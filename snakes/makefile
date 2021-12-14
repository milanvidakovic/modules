TARGET=snakes

include ../makefile
# $(LIB)/graphics
FILES = $(TARGET) $(LIB)/sprintf $(LIB)/string $(LIB)/stdio $(LIB)/floatimpl

# $(LIB)/graphics320.s $(LIB)/graphics640.s 
ASM_LIST := $(foreach file,$(FILES), $(file).s) $(LIB)/consts.s $(LIB)/keyboard.s
