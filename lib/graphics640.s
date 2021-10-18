
	.global	err640
	.type	err640, @object
	.size	err640, 4
err640:
	.zero 0

#####################################################################################################
# function pixel(x, y, c)
# r0 - x
# r1 - y
# r2 - color of the pixel (0 - 1)
#####################################################################################################
	.global	pixel640
	.type	pixel640, @function
pixel640:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	mul.w r1, 80	# gives the offset from the beginning of the framebuffer for the line (using the y coordinate)
	add.w r1, _VIDEO
	mov.w r5, r0
	and.w r5, 15	# r5 holds the position of the pixel within the byte (0 - 15)
	shr.w r0, 4 	# divide x coordinate by 16; it gives the offset from the beginning of the line
								# r0 is the offset in words (two bytes)
								# r5 holds the position of the pixel within the byte (0 - 15)
	shl.w r0, 1		# offset in bytes
	add.w r0, r1	# r0 holds the address of the pixel (the group of 16 pixels in that byte)
	
	mov.w r3, 15		# set the mask for wiping 
	sub.w r3, r5		# (r5 == 0) -> (r3 == 15); (r5 == 15) -> (r3 == 0)
	mov.w r4, 1			# r4 will hold the mask for setting/resetting pixel
	shl.w r4, r3		# r4 = r4 * r3 -> r4 has the appropriate bit set to 1 (the one that needs to be set)
	
	cmp.w r0, _VIDEO
	jse .pixel640_e
	cmp.w r0, 39424	# _VIDEO + 38400
	jge .pixel640_e
	
	ld.s r3, [r0]		# r3 holds all the pixels
	cmp.w r2, 1
	jz .set_pixel640		# if the color is 1, we set the pixel# otherwise we reset the pixel
	inv.w r4				# we invert the mask to reset the pixel
	and.w r3, r4		# we erase the pixel to be changed
.pixel_back640:	
	st.s [r0], r3	# save two pixels into the framebuffer

.pixel640_e:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0	
	ret
.set_pixel640:
	or.w r3, r4		# we set the pixel
	j .pixel_back640
	
	.size	pixel640, .-pixel640
	
#####################################################################################################
# function line640(x0, y0, x1, y1, c)
# r0 - x0	(A.x)
# r1 - y0	(A.y)
# r2 - color of the pixel (0 - 1)
# r3 - x1	(B.x)
# r4 - y1	(B.y)
#####################################################################################################
	.global	line640
	.type	line640, @function
line640:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	mov.w r5, r4		# r5 = B.y
	sub.w r5, r1  	# r5 = B.y - A.y
	call line_abs640	# r5 = abs(r5)
	mov.w r6, r5		# r6 = abs(B.y - A.y)

	mov.w r5, r3		# r5 = B.x
	sub.w r5, r0 		# r5 = B.x - A.x
	call line_abs640	# r5 = abs(B.x - A.x)
	
	cmp.w r6, r5 		# if(abs(B.y - A.y) < abs(B.x - A.x)) 	
	js .draw_one640
	j .draw_two640
.line_end640:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	ret

#######################################################################
.draw_one640:
	cmp.w r0, r3 		# if(A.x > B.x) 
	jg .swap_and_draw_south640
	
	j .draw_south640

.swap_and_draw_south640:
	swap r0, r3
	swap r1, r4

# draw_south
.draw_south640:	
	mov.w r6, r3		# r6 = B.x
	sub.w r6, r0		# r6 -> dx = B.x - A.x
	
	mov.w r5, r4		# r5 = B.y
	sub.w r5, r1  	# r5 -> dy = B.y - A.y
	
	mov.w r7, 1			# r7 -> yi
	cmp.w r5, 0			# if (dy < 0)
	js .ds1640

.ds2640:
	mov.w r4, r5 		# r4 = dy
	shl.w r4, 1
	sub.w r4, r6 		# r4 -> D = 2 * dy - dx

	shl.w r5, 1			# r5 -> 2*dy
	shl.w r6, 1			# r6 -> 2*dx

.ds4640:	
  cmp.w r0, r3		# if A.x > B.x then return
	jg .line_end640
	
	call pixel640		# plot(x,y)	
	cmp.w r4, 0			# if (D > 0)
	jg .ds3640
.ds5640:	
  add.w r4, r5		# D = D + 2*dy
  
  inc.w r0				# A.x = A.x + 1
  j .ds4640
	
.ds3640:
 	add.w r1, r7		# y = y + yi
  sub.w r4, r6		# D = D - 2*dx
  j .ds5640
.ds1640:
	mov.w r7, -1		# yi = -1
  neg.w r5  			# dy = -dy
  j .ds2640
#######################################################################

#######################################################################
.draw_two640:
	cmp.w r1, r4 		# if(A.y > B.y) 
	jg .swap_and_draw_north640
	
	j .draw_north640

.swap_and_draw_north640:
	swap r0, r3
	swap r1, r4

# draw_north
.draw_north640:	
	mov.w r6, r3		# r6 = B.x
	sub.w r6, r0		# r6 -> dx = B.x - A.x
	
	mov.w r5, r4		# r5 = B.y
	sub.w r5, r1  	# r5 -> dy = B.y - A.y
	
	mov.w r7, 1			# r7 -> xi
	cmp.w r6, 0			# if (dx < 0)
	js .dn1640

.dn2640:
	mov.w r3, r6 		# r3 = dx
	shl.w r3, 1
	sub.w r3, r5 		# r3 -> D = 2 * dx - dy

	shl.w r5, 1			# r5 -> 2*dy
	shl.w r6, 1			# r6 -> 2*dx

.dn4640:	
	cmp.w r1, r4
	jg .line_end640
	
	call pixel640		# plot(x,y)	
	cmp.w r3, 0			# if (D > 0)
	jg .dn3640
.dn5640:	
  add.w r3, r6		# D = D + 2*dx
  
  inc.w r1				# A.y = A.y + 1
  j .dn4640
	
.dn3640:
 	add.w r0, r7		# x = x + xi
  sub.w r3, r5		# D = D - 2*dy
  j .dn5640
.dn1640:
	mov.w r7, -1		# xi = -1
  neg.w r6     		# dx = -dx
  j .dn2640

	.size	line640, .-line640
  
#######################################################################

#####################################################################################################
# function r5=line_abs(r5)
# r5 = abs(r5)
#####################################################################################################
	.global	line_abs640
	.type	line_abs640, @function
line_abs640:
	cmp.w r5, 0
	jg .la1640
	neg.w r5
.la1640:
	ret
	.size	line_abs640, .-line_abs640

#####################################################################################################
# function circle(x0, y0, c, r)
# r0 - x0	
# r1 - y0	
# r2 - color of the pixel (0 - 1)
# r3 - radius
#####################################################################################################
	.global	circle640
	.type	circle640, @function
circle640:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	mov.w r4, err640
	mov.w r7, 0
	st.w [r4], r7
	
	mov.w r4, r3		# r4 -> radius
	sub.w r4, 1			# r4 -> x = radius - 1#
	
	mov.w r5, 0			# r5 -> y = 0
	
	mov.w r6, 1			# r6 -> dx = 1
	mov.w r7, 1			# r7 -> dy = 1
	
	call add_err_dxminus640	# err += dx - (radius << 1)#

.circle_loop640:	
	cmp.w r4, r5		# while (x >= y)
	jge .circle_body640	

.circle_end640:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	ret
#########################################################################################################

.circle_body640:

	push r0				# r4 -> x
	push r1				# r5 -> y
	add.w r0, r4
	add.w r1, r5
	call pixel640		#pixel (x0 + x, y0 + y)
	pop r1
	pop r0
	
	push r0
	push r1
	add.w r0, r5
	add.w r1, r4
	call pixel640		#pixel (x0 + y, y0 + x)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r5
	add.w r1, r4
	call pixel640		#pixel (x0 - y, y0 + x)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r4
	add.w r1, r5
	call pixel640		#pixel (x0 - x, y0 + y)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r4
	sub.w r1, r5
	call pixel640		#pixel (x0 - x, y0 - y)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r5
	sub.w r1, r4
	call pixel640		#pixel (x0 - y, y0 - x)
	pop r1
	pop r0

	push r0
	push r1
	add.w r0, r5
	sub.w r1, r4
	call pixel640		#pixel (x0 + y, y0 - x)
	pop r1
	pop r0

	push r0
	push r1
	add.w r0, r4
	sub.w r1, r5
	call pixel640		#pixel (x0 + x, y0 - y)
	pop r1
	pop r0

	push r7
	push r4
	mov.w r4, err640
	ld.w r7, [r4]
	cmp.w r7, 0				# if (err <= 0) {
	pop r4
	pop r7
	jse .c1640
.c3640:
	push r7
	push r4
	mov.w r4, err640
	ld.w r7, [r4]
	cmp.w r7, 0				# if (err > 0) {
	pop r4
	pop r7
	jg .c2640
	j .circle_loop640

.c1640:
	inc.w r5					# y++#
	push r7					# r7 -> dy
	push r6
	push r4
	mov.w r4, err640
	ld.w r6, [r4]
	add.w r7, r6		# err += dy#
	st.w [r4], r7
	pop r4
	pop r6
	pop r7
	add.w r7, 2				# dy += 2#
	j .c3640
.c2640:
	dec.w r4					# x--#
	add.w r6, 2				# dx += 2#
	call add_err_dxminus640	#	err += dx - (radius << 1)#
	j .circle_loop640
	.size	circle640, .-circle640
	
#########################################################################################################
	.global	add_err_dxminus640
	.type	add_err_dxminus640, @function
add_err_dxminus640:
	# err += dx - (radius << 1)#
	push r7				# r7 -> dy
	mov.w r7, r3		# r7 = radius
	shl.w r7, 1			# r7 = (radius << 1)
	push r6				# r6 -> dx
	push r5
	push r4
	mov.w r4, err640
	sub.w r6, r7		# r6 = dx - (radius << 1)
	ld.w r5, [r4]
	add.w r6, r5	# err += dx - (radius << 1)#
	st.w [r4], r6
	pop r4
	pop r5
	pop r6
	pop r7
	ret
	.size	add_err_dxminus640, .-add_err_dxminus640

#####################################################################################################
# function draw_text(x, y, text)
# r0 - x
# r1 - y	
# r2 - address of a text
#####################################################################################################
	.global	draw_text640
	.type	draw_text640, @function
draw_text640:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6

	mul.w r1, 80	# gives the offset from the beginning of the framebuffer for the line (using the y coordinate)
	add.w r1, _VIDEO
	div.w r0, 8 	# divide x coordinate by 8# it gives the offset from the beginning of the line
								# r0 is the offset in words (two bytes)
								# h holds the position of the pixel within the byte (0 - 7)
	add.w r0, r1	# r0 holds the address of the pixel (the group of 8 pixels in that byte)
	
.draw_text_again640:
	ld.b r3, [r2]	# get the current character
	cmp.w r3, 0		# null terminator?
	jz .draw_text_end640
	
	shl.w r3, 3  # 8 bytes each character
	mov.w r4, font_8x8
	add.w r4, r3	# r4 points to the beginning of the font definition for the current character
	
	mov.w r1, 8		# 8 lines of font
	push r0
.draw_next_line640:	
	ld.b r3, [r4]	# r3 holds the current font definition of the current character
	
	mov.w r5, r3	
	shl.w r5, 8
	shr.w r5, h		# r5 will hold the pixels that went out when r3 shifted to the right h times 
	shr.w r3, h		# shift the font definition to the right for the h pixels (postion within the group of 8 bits)
	
	ld.b r6, [r0] # load the current content of the VIDEO RAM
	or.w r3, r6		# merge the font definition with the current content
	
	cmp.w r0, _VIDEO
	jse .d_e_640
	cmp.w r0, 39424	# _VIDEO + 38400
	jge .d_e_640

	st.b [r0], r3	# put it in the VIDEO RAM
	inc.w r0
	st.b [r0], r5	# put it in the VIDEO RAM
	dec.w r0
	
	inc.w r4			# go to the next font byte
	add.w r0, 80	# go one line below
	dec.w r1
	cmp.w r1, 0
	jg .draw_next_line640
	pop r0
	inc.w r0			# go to the next position to the right
	inc.w r2			# go to the next character
	j .draw_text_again640

.d_e_640:
	pop r0
.draw_text_end640:
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	ret
	.size	draw_text640, .-draw_text640

	
