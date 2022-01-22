	.text

	.global	state
	.type	state, @object
	.size	state, 2
state:
	.zero	2
	
	.global	substate
	.type	substate, @object
	.size	substate, 2
substate:
	.zero 2

	.global	vk_table1
	.data
	.p2align	1
	.type	vk_table1, @object
	.size	vk_table1, 264
vk_table1:
	.short	256
	.short	309
	.short	256
	.short	305
	.short	303
	.short	301
	.short	302
	.short	312
	.short	256
	.short	310
	.short	308
	.short	306
	.short	304
	.short	9
	.short	96
	.short	256
	.short	256
	.short	401
	.short	501
	.short	256
	.short	601
	.short	81
	.short	49
	.short	256
	.short	256
	.short	256
	.short	90
	.short	83
	.short	65
	.short	87
	.short	50
	.short	256
	.short	256
	.short	67
	.short	88
	.short	68
	.short	69
	.short	52
	.short	51
	.short	256
	.short	256
	.short	32
	.short	86
	.short	70
	.short	84
	.short	82
	.short	53
	.short	256
	.short	256
	.short	78
	.short	66
	.short	72
	.short	71
	.short	89
	.short	54
	.short	256
	.short	256
	.short	256
	.short	77
	.short	74
	.short	85
	.short	55
	.short	56
	.short	256
	.short	256
	.short	44
	.short	75
	.short	73
	.short	79
	.short	48
	.short	57
	.short	256
	.short	256
	.short	46
	.short	47
	.short	76
	.short	59
	.short	80
	.short	45
	.short	256
	.short	256
	.short	256
	.short	39
	.short	256
	.short	91
	.short	61
	.short	256
	.short	256
	.short	800
	.short	502
	.short	13
	.short	93
	.short	256
	.short	92
	.short	256
	.short	256
	.short	256
	.short	60
	.short	256
	.short	256
	.short	256
	.short	256
	.short	8
	.short	256
	.short	256
	.short	5049
	.short	256
	.short	5052
	.short	5055
	.short	256
	.short	256
	.short	256
	.short	5048
	.short	5046
	.short	5050
	.short	5053
	.short	5054
	.short	5056
	.short	27
	.short	801
	.short	311
	.short	5043
	.short	5051
	.short	5045
	.short	5042
	.short	5057
	.short	802
	.short	256
	.short	256
	.short	256
	.short	256
	.short	307

	.global	vk_table2
	.p2align	1
	.type	vk_table2, @object
	.size	vk_table2, 76
vk_table2:
	.short	31
	.short	1001
	.short	17
	.short	402
	.short	39
	.short	1002
	.short	47
	.short	2000
	.short	20
	.short	602
	.short	112
	.short	3000
	.short	108
	.short	3001
	.short	125
	.short	3002
	.short	113
	.short	3003
	.short	105
	.short	3004
	.short	122
	.short	3005
	.short	117
	.short	4000
	.short	107
	.short	4001
	.short	114
	.short	4002
	.short	116
	.short	4003
	.short	74
	.short	5047
	.short	90
	.short	5013
	.short	124
	.short	10000
	.short	-1
	.short	-1



# #############################################################################
# #############################################################################
# Subroutine which is called whenever some byte arrives from the PS/2 keyboard
# #############################################################################
# #############################################################################
	.global	irq_triggered
	.type	irq_triggered, @function
irq_triggered:	
	push r0
	push r1
	push r2

	# r0 holds the keyboard scancode (2147484328)
	ld.s r0, [2147484328] 		# 2147484328 == 0x800002A8 (0x80000000 + 680)

	mov.w r1, 0
	ld.s r2, [state]
	cmp.w r1, r2
	jz make_code	# state 0 - try to parse received scancode into the virtual key make code (key pressed)

	inc.w r1
	cmp.w r1, r2
	jz break_code	# state 1 - try to parse received scancode into the virtual key break code (key released)
	
.skip:
	pop r2
	pop r1                 
	pop r0
	iret									 
	.size	irq_triggered, .-irq_triggered 	
	
###################################################################
# function make_code(r0)
# parses the virtual key code of the pressed key
###################################################################
	.global	make_code
	.type	cls, @function
make_code:
	# in r0, [IO_PORT_KEYBOARD]
	ld.s r0, [2147484328]
	
	ld.s r1, [substate]
	cmp.w r1, 0
	jz .make0				# state 0 - the first byte of the make code# if not extended, this will be the only byte of the make code
	cmp.w r1, 1
	jz .make1				# state 1 - the second and other bytes of the make code - the extended make codes have multiple bytes

	j .skip

.make0:
	cmp.w r0, 240	#0xF0
	jz	break_code	# two keys pressed fast, so instead of make code, here comes the other break code
	cmp.w r0, 224 #0xE0
	jz .extended0		# check if the received make code is the extended0 (E0)
	cmp.w r0, 225 # 0xE1
	jz .extended1		# check if the received make code is the extended 1 (E1)

	# not	extended code - it is a normal key, with just one make code byte
	shl.w r0, 1
	add.w r0, vk_table1
	ld.s r1, [r0]			# fetch the virtual key code based on the make code
	st.s [IRQ_VIRTUAL_KEY_ADDR], r1		# save the parsed virtual key code

	mov.w r0, 1
	st.s [state], r0 	# set the next state (1) - ready to receive break code
	mov.w r0, 0
	st.s [substate], r0
	
	pop r2
	pop r1
	pop r0
	j IRQ_KEY_PRESSED_HANDLER_ADDR
	
.extended0:
	# Extended0 keys have two make/break bytes# the first is E0, and the second determines the key
	mov.w r0, 1
	st.s [substate], r0	# prepare for the second byte
	j .skip

.extended1:
	j .skip

.make1:
	# the second byte has just arrived
	# it is in the r0 register
	# in r0, [IO_PORT_KEYBOARD]
	ld.s r0, [2147484328]

	cmp.w r0, 240  # break code for the extended key
	jz .extended_break

	
	# first check for the Print Screen key
	cmp.w r0, 12
	jz .mk_print_screen
	
	mov.w r2, vk_table2
.make2_1:	
	ld.s r1, [r2]
	cmp.w r1, 65535  #0xFFFF
	jz .make2_end	# end of the table# should not happen
	cmp.w r0, r1
	jz .found_e0
	add.w r2, 4
	j .make2_1
.found_e0:

	# found the received second byte in the table
	add.w r2, 2
	ld.s r1, [r2] 	# get the VK
	st.s [IRQ_VIRTUAL_KEY_ADDR], r1	# save it for the exec
	
	mov.w r0, 1
	st.s [state], r0
	mov.w r0, 0
	st.s [substate], r0 # prepare for the break code waiting

	pop r2
	pop r1
	pop r0
	j IRQ_KEY_PRESSED_HANDLER_ADDR

.extended_break:
	mov.w r1, 1
	st.s [state], r1    # state 1 - break code
	mov.w r1, 3
	st.s [substate], r1 # break code for the extended key
	j .skip
	
.make2_end:
	# second make code not found in the vk_table2# then it should be break code
	mov.w r1, 0
	st.s [state], r1
	st.s [substate], r1 # prepare for the make code waiting

	j .skip

.mk_print_screen:
	mov.w r0, 0
	st.s [substate], r0
	j .skip	
	.size	make_code, .-make_code	

###################################################################	
# function break_code(r0)
#
###################################################################	
	.global	break_code
	.type	break_code, @function
break_code:
	mov.w r1, 1
	st.s [state], r1
	
	ld.s r1, [substate]
	cmp.w r1, 0
	jz .break0		# we have received the first break byte
	cmp.w r1, 1
	jz .break1		# we have received the second break byte (extended key or special case of long press or fast click)
	cmp.w r1, 2
	jz .break2		# we have received the second break byte (normal key handler)
	cmp.w r1, 3
	jz .break3		# we have received the third break byte (extended key handler)
	
	j .skip

.break0:
	cmp.w r0, 240 # 0xF0
	jz .break_f0
	cmp.w r0, 224 # 0xE0
	jz .break_e0
	cmp.w r0, 225 # 0xE1
	jz .break_e1		# print screen pressed very fast, and this is actually the make code
	
	j make_code		# two keys pressed fast, so two make codes came one after another

.break_f0:
	mov.w r0, 2
	st.s [substate], r0		# set the substate to wait for the second break byte
	j .skip

.break_e0:
	mov.w r0, 1
	st.s [substate], r0		# set the substate to wait for the second break byte, which is maybe a make code (long press)
	j .skip

.break_e1:
	# this is a special case when after E0 key comes the Print Screen very fast
	mov.w r0, 1
	st.s [substate], r0		# set the substate to wait for the second make byte
	mov.w r0, 0
	st.s [state], r0			# set the state to be wait for the make code
	
	j .skip

.break1:
	# we have just received the second break byte
	cmp.w r0, 240 # 0xF0
	jz .more_breaks
	
	# we will try to parse this second byte as a make code
	# it happens when you long press non-printable character
	# then, multiple make codes arrive, instead of a break code
	j .make1

.more_breaks:
	# this part of code handles break code of extended E0 keys
	mov.w r0, 3
	st.s [substate], r0
	
	j .skip

.break2:
	cmp.w r0, 124  # 0x7C
	jz .br_print_screen
	
	# not	extended code - it is a normal key
	shl.w r0, 1
	add.w r0, vk_table1
	ld.s r1, [r0]	# fetch the virtual key code based on the make code
	st.s [IRQ_VIRTUAL_KEY_ADDR], r1		# save the parsed virtual key code
	
	mov.w r0, 0
	st.s [substate], r0
	st.s [state], r0

	pop r2
	pop r1
	pop r0
	j IRQ_KEY_RELEASED_HANDLER_ADDR

.break3:
	# extended key break code
	mov.w r2, vk_table2
.break3_1:	
	ld.s r1, [r2]
	cmp.w r1, 65535 # 0xFFFF
	jz .break3_end	# end of the table# should not happen
	cmp.w r0, r1
	jz .found_break_e0
	add.w r2, 4
	j .break3_1

.found_break_e0:

	# found the received third byte in the table
	add.w r2, 2
	ld.s r1, [r2] 	# get the VK
	st.s [IRQ_VIRTUAL_KEY_ADDR], r1	# save it for the exec

	mov.w r0, 0
	st.s [substate], r0
	st.s [state], r0
	
	pop r2
	pop r1
	pop r0
	j IRQ_KEY_RELEASED_HANDLER_ADDR	

.break3_end:
	# third break code not found in the vk_table2# 
	mov.w r1, 0
	st.s [state], r1
	st.s [substate], r1 # prepare for the make code waiting

	j .skip

.br_print_screen:
	mov.w r0, 0
	st.s [substate], r0
	j .skip		
	.size	break_code, .-break_code 		

