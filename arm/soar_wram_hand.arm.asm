	.cpu arm7tdmi
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -marm -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -O2 -fomit-frame-pointer -ffast-math -fno-jump-tables -fno-toplevel-reorder
	.text
	.align	2
	.arch armv4t

	.set MODE5_ROTATED_WIDTH,  128
    .set MODE5_ROTATED_HEIGHT, 160

    .set SWI_DIV,        0x060000
    .set SWI_CPUSET,     0x0B0000
    .set SWI_CPUFASTSET, 0x0C0000

    .set CPUSET_32BIT,     (1 << 26)
    .set CPUSET_SRC_FIXED, (1 << 24)

    .set MIN_Z_DISTANCE, 24
    .set MAX_Z_DISTANCE, 512
    .set MAX_Z_DISTANCE_LOG2, 9
    .set MAP_DIMENSIONS_LOG2, 10

@ rewriting render by hand
	.global	Render_arm
	.syntax unified
	.arm
	.fpu softvfp
	.type	Render_arm, %function
Render_arm:
	@ r0 is a pointer to CurrentProc

	push {r4-r11, lr}
	sub sp, sp, #(MODE5_ROTATED_WIDTH + 28) @this is ybuffer
	.equ o_zdist, (MODE5_ROTATED_WIDTH + 4) @keep this on the stack above the ybuffer
	.equ o_maxzdist, o_zdist+4
	.equ o_altitude, o_zdist+8
	.equ o_vidpage, o_zdist+12
	.equ o_currproc, o_zdist+16
	.equ o_sunsetval, o_zdist+20
	.equ o_angle, o_zdist+24
	str r0, [sp, #o_currproc]
	ldr r4, [r0, #60] @r4 = angle
	ldr r5, [r0, #44] @r5 = posX
	ldr r6, [r0, #48] @r6 = posY
	ldr r7, [r0, #84] @r7 = sunsetVal
	ldr r8, [r0, #56] @r8 = altitude
	ldr r9, [r0, #64] @r9 = vid_page
	lsl r10, r8, #4
	add r10, #(MAX_Z_DISTANCE - 128) @r10 = far plane
	mov r0, #MIN_Z_DISTANCE
	add r11, r0, r8, lsl #1 @r11 = zdist
	str r10, [sp, #o_maxzdist]
	str r11, [sp, #o_zdist]
	str r4, [sp, #o_angle]
	str r7, [sp, #o_sunsetval]
	str r8, [sp, #o_altitude]
	str r9, [sp, #o_vidpage]

	@@draw sky bg
		ldr r1, =skies
		lsr r2, r7, #1 @sunsetval/2
		ldr r0, [r1, r2, lsl #2] @r0 = sky pointer
		add r1, r4, r4, lsl #2
		lsl r1, r1, #9
		add r1, r1, r8, lsl #1
		sub r0, r0, #400
		add r0, r0, r1, lsl #2
		mov r1, r9
		ldr r2, =(MODE5_ROTATED_HEIGHT * MODE5_ROTATED_WIDTH / 2)
		swi SWI_CPUFASTSET @r0 = src, r1 = dest, r2 = length|copy/set

	@@initialize y buffer
		add	r1, sp, #4
		mov r0, #0
		str r0, [sp]
		mov r0, sp
		ldr r2, =(CPUSET_SRC_FIXED | ((MODE5_ROTATED_WIDTH)/4))
		swi SWI_CPUFASTSET @r0 = src, r1 = dest, r2 = length|copy/set
	
	@@draw image
	@@zdist front to back


	Outer_Loop:
	@get pleft
	ldr r0, [sp, #o_currproc]
	ldr r4, [r0, #60] @r4 = angle
	ldr r5, [r0, #44] @r5 = posX
	ldr r6, [r0, #48] @r6 = posY
	ldr r12, [sp, #o_sunsetval] @sunsetval
	ldr r14, [sp, #o_altitude] @altitude
	lsl r11, #1
	ldr r3, =pleftmatrix
	add r1, r11, r4, lsl #(MAX_Z_DISTANCE_LOG2+1)
	ldrsh r0, [r3, r1]
	add r0, r5 @r0 = pleft.x

	rsb r2, r4, #0
	and r2, #0xf @-angle
	add r1, r11, r2, lsl #(MAX_Z_DISTANCE_LOG2+1)
	ldrsh r1, [r3, r1]
	add r1, r6 @r1 = pleft.y 

	@get pright
	add r4, #4
	and r4, #0xf @angle is now tangent
	add r2, r11, r4, lsl #(MAX_Z_DISTANCE_LOG2+1)
	ldrsh r2, [r3, r2]
	add r2, r5 @r2 = pright.x

	rsb r4, r4, #0
	and r4, #0xf
	add r4, r11, r4, lsl #(MAX_Z_DISTANCE_LOG2+1)
	ldrsh r3, [r3, r4]
	add r3, r6 @r3 = pright.y

	@calc dx and dy, we no longer need r4 and r5
	sub r5, r2, r0 @r5 = dx
	sub r6, r3, r1 @r6 = dy

	mov r10, r0 @save pleft.x
	mov r11, r1 @save pleft.y

	mov r4, #0 @r4 is inner loop counter

	@@inner loop left to right
	InnerLoop:
	@offsetpoint = pleft+dx/dy
	@r3 = zdist
	@r4 = loop
	@r5 = dx
	@r6 = dy
	@r7 = offsetpoint.x
	@r8 = offsetpoint.y
	@r9 = vid_page
	@r10 = pleft.x
	@r11 = pleft.y
	@r12 = sunsetVal
	@r14 = altitude
	
	mul r0, r4, r5
	add r7, r10, r0, asr #7
	mul r1, r4, r6
	add r8, r11, r1, asr #7

	ldrb r0, [sp, r4] @ybuffer[i]
	mov r1, #MODE5_ROTATED_HEIGHT
	cmp r0, r1
	bge SkipDraw
	@get point height
	cmp r7, #0
	blt HeightZero
	cmp r8, #0
	blt HeightZero
	cmp r7, #1024
	bge HeightZero
	cmp r8, #1024
	bge HeightZero
	ldr r2, =heightMap
	add r1, r7, r8, lsl #MAP_DIMENSIONS_LOG2
	ldrb r1, [r2, r1]
	b GetScrHeight

	HeightZero:
	mov r1, #0

	@get screen height
	GetScrHeight:
	@r0 = ybuffer[i]
	@r1 = ptheight
	@ height = hosTables[altitude][zdist>>1][height];
	ldr r2, =hosTables
	@altitude * 0x10000 + (zdist/2) * 0x100 + height
	add r2, r1
	add r2, r2, r14, lsl #16
	ldr r3, [sp, #o_zdist]
	lsr r3, #1
	ldrb r1, [r2, r3, lsl #8]

	subs r2, r1, r0 @hos -= ybuffer[i]
	ble CelShade
	
	@draw
	strb r1, [sp, r4] @update ybuffer if we're drawing

	@getptclr
	@r2 = ylen
	@r12 = sunsetval
	cmp r7, #0
	blt SeaClr
	cmp r8, #0
	blt SeaClr
	cmp r7, #1024
	bge SeaClr
	cmp r8, #1024
	bge SeaClr

	ldr r3, =colourMap
	add r3, r3, r8, lsl #(MAP_DIMENSIONS_LOG2+1)
	add r3, r3, r7, lsl #1
	ldrh r3, [r3]

	b DrawLine

	SeaClr:
	ldr r3, =#0x1840

	@output clr into r3

	
	@ int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	@ u16* base = vid_page + (offset);
	DrawLine:
	add r1, r9, r4, lsl #6
	add r1, r1, r4, lsl #8
	add r1, r1, r0, lsl #1
	DrawPx:
	strh r3, [r1], #2
	subs r2, #1
	bgt DrawPx
	b SkipDraw

	CelShade:
	@does nothing for now

	SkipDraw:
	add r4, #1
	cmp r4, #MODE5_ROTATED_WIDTH
	blt InnerLoop

	@now that inner loops are done we can have r10, r11 back
	ldr r10, [sp, #o_maxzdist]
	ldr r11, [sp, #o_zdist]

	@ inc_zstep = ((zdist>>6)+(zdist>>7)+((zdist>>8)<<2)+2)
	lsr r0, r11, #6
	add r0, r0, r11, lsr #7
	add r0, r0, r11, lsr #8
	add r0, r0, r11, lsr #8
	add r11, r0
	add r11, #2
	str r11, [sp, #o_zdist]

	cmp r11, r10
	ble Outer_Loop

	@@vid_flip
		ldr r12, =vid_flip
		ldr r0, [sp, #o_vidpage]
		mov lr, pc
		bx r12
		ldr r11, [sp, #o_currproc]
		str r0, [r11, #64] @update currentproc->vid_page

	@restore stack and return
	add	sp, sp, #(MODE5_ROTATED_WIDTH + 28)
	pop {r4-r11}
	pop {r0}
	bx r0

	.pool
