
	.global	err320
	.type	err320, @object
	.size	err320, 4
err320:
	.zero 0

#####################################################################################################
# function pixel(x, y, c)
# r0 - x
# r1 - y
# r2 - color of the pixel (0 - 7)
#####################################################################################################
	.global	pixel320
	.type	pixel320, @function
pixel320:
	# push r0
	# push r1
	# push r2
	push r3
	push r4
	push r5
	

	mov.w r3, 1024			# start address (video memory, frame buffer)
	mov.w r4, 160			# line width in bytes (2 pixels per byte, 320 pixels -> 160 bytes per line)
	mov.w r5, 240			# frame buffer height in pixels
	pix

	# mul.w r1, 160	# gives the offset from the beginning of the framebuffer
	# div.w r0, 2		# divide x coordinate by 2; it gives the offset from the beginning of the line
								# h holds the position of the pixel within the byte (0 - 1)
								# r0 is the offset in bytes
	# add.w r1, _VIDEO
	# add.w r0, r1	# r0 holds the address of the pixel (the group of two pixels in that byte)
	
	# mov.w r3, 1			# set the mask for wiping 
	# sub.w r3, h			# (h == 0) -> (r3 == 1)# (h == 1) -> (r3 == 0)
	# shl.w r3, 2			# r3 = r3 * 4
	# mov.w r1, 15		# set the mask for one pixel (four bits) 0xf
	# shl.w r1, r3		# we shift the mask r3 times to the left
	# inv.w r1				# invert the mask
	
	# cmp.w r0, _VIDEO
	# jse .pixel_end_320
	# cmp.w r0, 39424	# _VIDEO + 38400
	# jge .pixel_end_320
	
	# ld.b r4, [r0]		# r4 holds the surrounding pixels
	# and.w r4, r1		# we erase the pixel to be changed
	
	# shl.w r2, r3		# we shift the color of the pixel r3 times to the left
	# or.w r4, r2			# we insert the pixel into surrounding pixels
	
	# st.b [r0], r4		# save two pixels into the framebuffer

.pixel_end_320:
	pop r5
	pop r4
	pop r3
	# pop r2
	# pop r1
	# pop r0
	ret
	.size	pixel320, .-pixel320
	
#####################################################################################################
# function line(x0, y0, x1, y1, c)
# r0 - x0	(A.x)
# r1 - y0	(A.y)
# r2 - color of the pixel (0 - 7)
# r3 - x1	(B.x)
# r4 - y1	(B.y)
#####################################################################################################
	.global	line320
	.type	line320, @function
line320:
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
	call line_abs320	# r5 = abs(r5)
	mov.w r6, r5		# r6 = abs(B.y - A.y)

	mov.w r5, r3		# r5 = B.x
	sub.w r5, r0 		# r5 = B.x - A.x
	call line_abs320	# r5 = abs(B.x - A.x)
	
	cmp.w r6, r5 		# if(abs(B.y - A.y) < abs(B.x - A.x)) 	
	js .draw_one320
	j .draw_two320
.line_end320:
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
.draw_one320:
	cmp.w r0, r3 		# if(A.x > B.x) 
	jg .swap_and_draw_south320
	
	j .draw_south320

.swap_and_draw_south320:
	swap r0, r3
	swap r1, r4

# draw_south
.draw_south320:	
	mov.w r6, r3		# r6 = B.x
	sub.w r6, r0		# r6 -> dx = B.x - A.x
	
	mov.w r5, r4		# r5 = B.y
	sub.w r5, r1  	# r5 -> dy = B.y - A.y
	
	mov.w r7, 1			# r7 -> yi
	cmp.w r5, 0			# if (dy < 0)
	js .ds1320

.ds2320:
	mov.w r4, r5 		# r4 = dy
	shl.w r4, 1
	sub.w r4, r6 		# r4 -> D = 2 * dy - dx

	shl.w r5, 1			# r5 -> 2*dy
	shl.w r6, 1			# r6 -> 2*dx

.ds4320:	
  cmp.w r0, r3		# if A.x > B.x then return
	jg .line_end320
	
	call pixel320		# plot(x,y)	
	cmp.w r4, 0			# if (D > 0)
	jg .ds3320
.ds5320:	
  add.w r4, r5		# D = D + 2*dy
  
  inc.w r0				# A.x = A.x + 1
  j .ds4320
	
.ds3320:
 	add.w r1, r7		# y = y + yi
  sub.w r4, r6		# D = D - 2*dx
  j .ds5320
.ds1320:
	mov.w r7, -1		# yi = -1
  neg.w r5  			# dy = -dy
  j .ds2320
#######################################################################

#######################################################################
.draw_two320:
	cmp.w r1, r4 		# if(A.y > B.y) 
	jg .swap_and_draw_north320
	
	j .draw_north320

.swap_and_draw_north320:
	swap r0, r3
	swap r1, r4

# draw_north
.draw_north320:	
	mov.w r6, r3		# r6 = B.x
	sub.w r6, r0		# r6 -> dx = B.x - A.x
	
	mov.w r5, r4		# r5 = B.y
	sub.w r5, r1  	# r5 -> dy = B.y - A.y
	
	mov.w r7, 1			# r7 -> xi
	cmp.w r6, 0			# if (dx < 0)
	js .dn1320

.dn2320:
	mov.w r3, r6 		# r3 = dx
	shl.w r3, 1
	sub.w r3, r5 		# r3 -> D = 2 * dx - dy

	shl.w r5, 1			# r5 -> 2*dy
	shl.w r6, 1			# r6 -> 2*dx

.dn4320:	
	cmp.w r1, r4
	jg .line_end320
	
	call pixel320		# plot(x,y)	
	cmp.w r3, 0			# if (D > 0)
	jg .dn3320
.dn5320:	
  add.w r3, r6		# D = D + 2*dx
  
  inc.w r1				# A.y = A.y + 1
  j .dn4320
	
.dn3320:
 	add.w r0, r7		# x = x + xi
  sub.w r3, r5		# D = D - 2*dy
  j .dn5320
.dn1320:
	mov.w r7, -1		# xi = -1
  neg.w r6     		# dx = -dx
  j .dn2320
	.size	line320, .-line320
  
#######################################################################

#####################################################################################################
# function r5=line_abs(r5)
# r5 = abs(r5)
#####################################################################################################
	.global	line_abs320
	.type	line_abs320, @function
line_abs320:
	cmp.w r5, 0
	jg .la1320
	neg.w r5
.la1320:
	ret
	.size	line_abs320, .-line_abs320

#####################################################################################################
# function circle(x0, y0, c, r)
# r0 - x0	
# r1 - y0	
# r2 - color of the pixel (0 - 7)
# r3 - radius
#####################################################################################################
	.global	circle320
	.type	circle320, @function
circle320:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	mov.w r4, err320
	mov.w r7, 0
	st.w [r4], r7
	
	mov.w r4, r3			# r4 -> radius
	sub.w r4, 1				# r4 -> x = radius - 1#
	
	mov.w r5, 0				# r5 -> y = 0
	
	mov.w r6, 1				# r6 -> dx = 1
	mov.w r7, 1				# r7 -> dy = 1
	
	call add_err_dxminus320	# err += dx - (radius << 1)#

.circle_loop320:	
	cmp.w r4, r5			# while (x >= y)
	jge .circle_body320	

.circle_end320:
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
.circle_body320:
	push r0						# r4 -> x
	push r1						# r5 -> y
	add.w r0, r4
	add.w r1, r5
	call pixel320			#pixel (x0 + x, y0 + y)
	pop r1
	pop r0
	
	push r0
	push r1
	add.w r0, r5
	add.w r1, r4
	call pixel320			#pixel (x0 + y, y0 + x)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r5
	add.w r1, r4
	call pixel320			#pixel (x0 - y, y0 + x)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r4
	add.w r1, r5
	call pixel320			#pixel (x0 - x, y0 + y)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r4
	sub.w r1, r5
	call pixel320			#pixel (x0 - x, y0 - y)
	pop r1
	pop r0

	push r0
	push r1
	sub.w r0, r5
	sub.w r1, r4
	call pixel320			#pixel (x0 - y, y0 - x)
	pop r1
	pop r0

	push r0
	push r1
	add.w r0, r5
	sub.w r1, r4
	call pixel320			#pixel (x0 + y, y0 - x)
	pop r1
	pop r0

	push r0
	push r1
	add.w r0, r4
	sub.w r1, r5
	call pixel320			#pixel (x0 + x, y0 - y)
	pop r1
	pop r0

	push r7
	push r4
	mov.w r4, err320
	ld.w r7, [r4]
	cmp.w r7, 0				# if (err <= 0) {
	pop r4
	pop r7
	jse .c1320
.c3320:
	push r7
	push r4
	mov.w r4, err320
	ld.w r7, [r4]
	cmp.w r7, 0				# if (err > 0) {
	pop r4
	pop r7
	jg .c2320
	j .circle_loop320

.c1320:
	inc.w r5					# y++#
	push r7						# r7 -> dy
	push r6
	push r4
	mov.w r4, err320
	ld.w r6, [r4]
	add.w r7, r6			# err += dy#
	st.w [r4], r7
	pop r4
	pop r6
	pop r7
	add.w r7, 2				# dy += 2#
	j .c3320
.c2320:
	dec.w r4					# x--#
	add.w r6, 2				# dx += 2#
	call add_err_dxminus320	#	err += dx - (radius << 1)#
	j .circle_loop320
	.size	circle320, .-circle320

#########################################################################################################
	.global	add_err_dxminus320
	.type	add_err_dxminus320, @function
add_err_dxminus320:
	# err += dx - (radius << 1)#
	push r7				# r7 -> dy
	mov.w r7, r3		# r7 = radius
	shl.w r7, 1			# r7 = (radius << 1)
	push r6				# r6 -> dx
	push r5
	push r4
	mov.w r4, err320
	sub.w r6, r7		# r6 = dx - (radius << 1)
	ld.w r5, [r4]
	add.w r6, r5	# err += dx - (radius << 1)#
	st.w [r4], r6
	pop r4
	pop r5
	pop r6
	pop r7
	ret
	.size	add_err_dxminus320, .-add_err_dxminus320
		

#####################################################################################################
# function draw_text(x, y, text)
# r0 - x
# r1 - y	
# r2 - address of a text
# r3 - color
#####################################################################################################
	.global	draw_text320
	.type	draw_text320, @function
draw_text320:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10

	mul.w r1, 160	# gives the offset from the beginning of the framebuffer for the line (using the y coordinate)
	add.w r1, _VIDEO
	div.w r0, 2 	# divide x coordinate by 8# it gives the offset from the beginning of the line
								# r0 is the offset in words (two bytes)
								# h holds the position of the pixel within the byte (0 - 1)
	add.w r0, r1	# r0 holds the address of the pixel (the group of 2 pixels in that byte)
	
.draw_text_again320:
	ld.b r7, [r2]	# get the current character
	cmp.w r7, 0		# null terminator?
	jz .draw_text_end320
	
	shl.w r7, 3  # 8 bytes each character
	mov.w r4, font_8x8
	add.w r4, r7	# r4 points to the beginning of the font definition for the current character
	
	mov.w r1, 7		# 8 lines of font
	push r0
.draw_next_line320:	
	ld.b r5, [r4]	# r5 holds the current font definition of the current character
	
	cmp.w h, 1
	jz .dtp_odd320
	
	mov.w r6, 3
	mov.w r7, 128
.dt_pagain320:	
	mov.w r8, r5
	and.w r8, r7
	cmp.w r8, r7
	callz p0s320
.dtp1320:
	shr.w r7, 1
	mov.w r8, r5
	and.w r8, r7
	cmp.w r8, r7
	callz p1s320
.dtp2320:	
	shr.w r7, 1

	inc.w r0
	dec.w r6
	jp .dt_pagain320
	sub.w r0, 4

.dtp_back320:
	inc.w r4			# go to the next font byte
	add.w r0, 160	# go one line below
	dec.w r1
	jp .draw_next_line320
	pop r0
	add.w r0, 4		# go to the next position to the right
	inc.w r2			# go to the next character
	j .draw_text_again320

.draw_text_end320:
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	ret

.dtp_odd320:
	mov.w r6, 3
	mov.w r7, 128
.dt_pagain_o320:	
	mov.w r8, r5
	and.w r8, r7
	cmp.w r8, r7
	callz p0s_o320
.dtp1_o320:
	inc.w r0
	shr.w r7, 1
	mov.w r8, r5
	and.w r8, r7
	cmp.w r8, r7
	callz p1s_o320
.dtp2_o320:	
	shr.w r7, 1

	dec.w r6
	jp .dt_pagain_o320
	sub.w r0, 4
	
	j .dtp_back320

	.size	draw_text320, .-draw_text320

#########################################################################################################
	.global	p0s320
	.type	p0s320, @function
p0s320:
	mov.w r9, r3
	shl.w r9, 4
	
	cmp.w r0, _VIDEO
	jse ._dt_e
	cmp.w r0, 39424	# _VIDEO + 38400
	jge ._dt_e
	
	st.b [r0], r9
._dt_e:
	ret
	.size	p0s320, .-p0s320

#########################################################################################################
	.global	p1s320
	.type	p1s320, @function
p1s320:
	ld.b r9, [r0]
	or.w r9, r3
	
	cmp.w r0, _VIDEO
	jse ._dt_e
	cmp.w r0, 39424	# _VIDEO + 38400
	jge ._dt_e
	
	st.b [r0], r9
	ret
	.size	p1s320, .-p1s320

#########################################################################################################
	.global	p0s_o320
	.type	p0s_o320, @function
p0s_o320:
	ld.b r9, [r0]
	or.w r9, r3

	cmp.w r0, _VIDEO
	jse ._dt_e
	cmp.w r0, 39424	# _VIDEO + 38400
	jge ._dt_e
	
	st.b [r0], r9
	ret
	.size	p0s_0320, .-p0s_o320

#########################################################################################################
	.global	p1s_o320
	.type	p1s_o320, @function
p1s_o320:
	mov.w r9, r3
	shl.w r9, 4
	
	cmp.w r0, _VIDEO
	jse ._dt_e
	cmp.w r0, 39424	# _VIDEO + 38400
	jge ._dt_e

	st.b [r0], r9
	ret
	.size	p1s_o320, .-p1s_o320
