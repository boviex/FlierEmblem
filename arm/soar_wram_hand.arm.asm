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
    .set SHADOW_DISTANCE, (MIN_Z_DISTANCE+16)
    .set FOG_DISTANCE, (MAX_Z_DISTANCE>>1)

	.equ o_zdist, (MODE5_ROTATED_WIDTH + 4) @keep this on the stack above the ybuffer
	.equ o_maxzdist, o_zdist+4
	.equ o_dx, o_zdist+8
	.equ o_dy, o_zdist+12
	.equ o_currproc, o_zdist+16
	@ .equ o_sunsetval, o_zdist+20
	.equ o_angle, o_zdist+20
	@ .equ o_altitude, o_zdist+28

@ rewriting render by hand
	.global	Render_arm
	.syntax unified
	.arm
	.fpu softvfp
	.type	Render_arm, %function
Render_arm:
	@ r0 is a pointer to CurrentProc

	push {r4-r11, lr}
	sub sp, sp, #(MODE5_ROTATED_WIDTH + 40) @this is ybuffer
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
	@ str r7, [sp, #o_sunsetval]
	@ str r8, [sp, #o_altitude]
	@ str r9, [sp, #o_vidpage]

	@@draw sky bg
		ldr r1, =skies
		lsr r2, r7, #1 @sunsetval/2
		ldr r0, [r1, r2, lsl #2] @r0 = sky pointer
		add r1, r4, r4, lsl #2
		lsl r1, r1, #9
		add r1, r1, r8 @, lsl #1
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
	ldr r12, [r0, #84] @sunsetval
	ldr r14, [r0, #56] @altitude
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

	lsl r7, r0, #8 @save pleft.x << 8 for precision
	lsl r8, r1, #8 @save pleft.y << 8
	lsl r5, #8 @dx << 8 for precision
	str r5, [sp, #o_dx]
	lsl r6, #8 @dy << 8 for precision
	str r6, [sp, #o_dy]

	@ lsl r4, r14, #8
	mov r4, #0 @r4 is inner loop counter

	ldr r10, =hosTables
	ldr r11, [sp, #o_zdist]
	@ ldr r12, [sp, #o_sunsetval]

	@prepare for first loop
	ldrb r5, [sp, r4] @ybuffer[i], interleave the ldrb so we don't have to wait for r0
	ldr r0, [sp, #o_dx]
	ldr r1, [sp, #o_dy]
	

	@@inner loop left to right
	InnerLoop:
	@offsetpoint = pleft+dx/dy
	
	@r4 = loop (goes up to 128) | altitude << 8 
	
	@r5 = dx
	@r6 = dy
	@r7 = offsetpoint.x << 8
	@r8 = offsetpoint.y << 8
	@r9 = vid_page
	@r10 = hostables
	@r11 = zdist
	@r12 = sunsetval
	
	@ mul r0, r4, r5
	@ add r7, r10, r0, asr #7
	@ and r0, r4, #0xFF

	add r7, r7, r0, asr #7 @increment offsetpoint.x
	
	add r8, r8, r1, asr #7 @increment offsetpoint.y

	cmp r5, #MODE5_ROTATED_HEIGHT
	bge SkipDraw
	@get point height

	orr r0, r7, r8
	cmp r0, #0
	blt HeightZero
	cmp r0, #(1024<<8)
	bge HeightZero

	asr r3, r7, #8
	asr r1, r8, #8
	add r1, r3, r1, lsl #(MAP_DIMENSIONS_LOG2)
	ldr r2, =heightMap
	ldrb r1, [r2, r1]
	@r1 = map height

	@get screen height
	GetScrHeight:
	@r5 = ybuffer[i]
	@r1 = ptheight
	@ height = hosTables[altitude][zdist>>1][height];
	@ ldr r2, =hosTables
	@altitude * 0x10000 + (zdist/2) * 0x100 + height
	
	add r2, r10, r1
	@ lsr r14, r4, #8
	add r2, r2, r14, lsl #16
	lsr r3, r11, #1 @ zdist is in r11
	ldrb r1, [r2, r3, lsl #8]

	subs r6, r1, r5 @hos -= ybuffer[i]
	ble CelShade
	
	@draw
	@ and r0, r4, #0xff @get the loop index
	ldr r3, [sp, #o_zdist] @interleave this

	strb r1, [sp, r4] @update ybuffer if we're drawing
		@if shadow just #0000
		cmp r3, #SHADOW_DISTANCE
		beq CheckShadow
		@if sunsetval > 0, get sunsetclr into r3
		@if sunsetval < 8, get clr into r1

		NotShadow:
		cmp r12, #0 @if daytime
		bgt LoadSunset
			ldr r3, =colourMap
			asr r1, r8, #8
			add r3, r3, r1, lsl #(MAP_DIMENSIONS_LOG2+1)
			asr r1, r7, #8
			add r3, r3, r1, lsl #1
			ldrh r3, [r3]
			@ b CheckFog

	@now handle fog
	CheckFog:
	@r5 is ystart, r6 is ylen
	ldr r1, [sp, #o_zdist]
	cmp r1, #FOG_DISTANCE
	bgt ApplyFog
	@output clr into r3

	
	@ int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	@ u16* base = vid_page + (offset);
	DrawLine:
	add r1, r9, r4, lsl #6
	add r1, r1, r4, lsl #8
	add r1, r1, r5, lsl #1
	@r3 = clr, r1 = pixel address, r6 = number of pixels
	
	@ @if r1 is not word aligned, draw 1 pixel to get it there
	@ tst r1, #2
	@ strhne r3, [r1], #2
	@ subsne r6, #1
	@ cmp r6, #0
	@ ble SkipDraw @skip if we only had to draw 1 pixel

	@ tst r6, #1 @is it odd?
	@ subne r6, #1
	@ lslne r0, r6, #1
	@ strhne r3, [r1, r0] @draw another pixel at the end but don't increment r1
	
	.equ DUFFNUM, 16 @borrowing cam's implementation
	@ orr r3, r3, r3, lsl #16 @can use this to write 2px at a time?
	and r0, r6, #(DUFFNUM - 1)
	rsb r0, r0, #DUFFNUM @r6 % duffnum
	add r15, r15, r0, lsl #2 @jump ahead
	nop
	DrawPx:
	.rept DUFFNUM
		strh r3, [r1], #2
	.endr
	subs r6, #DUFFNUM
	bge DrawPx
	@ b SkipDraw



	SkipDraw:
	add r4, #1
	cmp r4, #MODE5_ROTATED_WIDTH
	bge endInnerLoop
	@preload for next loop
	ldrb r5, [sp, r4] @ybuffer[i], interleave the ldrb so we don't have to wait for r0
	ldr r0, [sp, #o_dx]
	ldr r1, [sp, #o_dy]
	b InnerLoop

	endInnerLoop:
	@now that inner loops are done we can have r10, r11 back
	ldr r11, [sp, #o_zdist]
	ldr r10, [sp, #o_maxzdist]

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
		@ ldr r0, [sp, #o_vidpage]
		mov r0, r9
		mov lr, pc
		bx r12
		ldr r11, [sp, #o_currproc]
		str r0, [r11, #64] @update currentproc->vid_page

	@restore stack and return
	add	sp, sp, #(MODE5_ROTATED_WIDTH + 40)
	pop {r4-r11}
	pop {r0}
	bx r0

	CheckShadow:
		add r0, r4, #4
		sub r0, #(MODE5_ROTATED_WIDTH/2)
		@if r0 between 0 and 8 make it black
		lsr r0, #2 @if it is between 0 and 7 it is now 0 or 1, otherwise higher
		cmp r0, #1
		bgt NotShadow
	Shadow:
		mov r3, #0
		b DrawLine


	CelShade:
		rsb r6, r6, #0 @-ylen
		cmp r6, #6 @ cel shade threshold
		ble SkipDraw
		sub r5, #1
		mov r3, #0x0000 @border clr
		mov r6, #1
		b CheckFog

	HeightZero: @skip other checks
		mov r1, #0
		ldr r3, [sp, #o_zdist] @do we need to get rid of this?
		add r2, r10, r1
		@ lsr r14, r4, #8
		add r2, r2, r14, lsl #16
		lsr r3, #1
		ldrb r1, [r2, r3, lsl #8]

		subs r6, r1, r5 @hos -= ybuffer[i]
		ble CelShade

		@ SeaClr:
		cmp r12, #3
		ldrle r3, =#0x1840
		ldrgt r3, =#0x0820
		
		@draw
		@ and r0, r4, #0xff @get the loop index
		strb r1, [sp, r4] @update ybuffer if we're drawing
		b CheckFog

	ApplyFog:
		cmp r12, #4
		blt DayFog

		SunsetFog:
		sub r2, r1, #FOG_DISTANCE

		@r1 = the pixel above where we would be drawing
		@ and r0, r4, #0xff @get the loop index
		add r1, r9, r4, lsl #6
		add r1, r1, r4, lsl #8
		add r1, r1, r5, lsl #1
		ldrh r1, [r1, #2]

		lsr r2, #4
		add r2, r2, r2, lsr #3
		mov r0, r3
		
		InlineBlend:
		    push {r4-r10}
		    ldr     r7, =0x03E07C1F         @ MASKLO: -g-|b-r
		    mov     r6, r7, lsl #5          @ MASKHI: g-|b-r-
			@ --- -g-|b-r
	        and     r4, r6, r0, lsl #5      @ x/32: (-g-|b-r)
	        and     r5, r7, r1              @ y: -g-|b-r
	        sub     r5, r5, r4, lsr #5      @ z: y-x
	        mla     r4, r5, r2, r4         @ z: (y-x)*w   x*32
	        and     r10, r7, r4, lsr #5     @ blend(-g-|b-r)            
	        @ --- b-r|-g- (rotated by 16 for cheapskatiness)
	        and     r4, r6, r0, ror #11     @ x/32: -g-|b-r (ror16)
	        and     r5, r7, r1, ror #16     @ y: -g-|b-r (ror16)
	        sub     r5, r5, r4, lsr #5      @ z: y-x
	        mla     r4, r5, r2, r4         @ z: (y-x)*w   x*32
	        and     r4, r7, r4, lsr #5      @ blend(-g-|b-r (ror16))
	        @ --- mix -g-|b-r and b-r|-g-
	        orr     r0, r10, r4, ror #16
	        lsl r0, #16
	        lsr r3, r0, #16 @@wipe top 2 bytes???
	        pop {r4-r10}
		b DrawLine

		DayFog:
		sub r2, r1, #FOG_DISTANCE
		ldr r1, =#0x7f74
		mov r0, r3
		lsr r2, #3
		b InlineBlend


	LoadSunset:
		cmp r12, #8
		bne BlendColours
			ldr r3, =colourMap_sunset
			asr r1, r8, #8
			add r3, r3, r1, lsl #(MAP_DIMENSIONS_LOG2+1)
			asr r1, r7, #8
			add r3, r3, r1, lsl #1
			ldrh r3, [r3]
			b CheckFog

		BlendColours:
			ldr r3, =colourMap
			asr r1, r8, #8
			add r3, r3, r1, lsl #(MAP_DIMENSIONS_LOG2+1)
			asr r1, r7, #8
			add r3, r3, r1, lsl #1
			ldrh r0, [r3]
			ldr r3, =colourMap_sunset
			asr r1, r8, #8
			add r3, r3, r1, lsl #(MAP_DIMENSIONS_LOG2+1)
			asr r1, r7, #8
			add r3, r3, r1, lsl #1
			ldrh r1, [r3]

				@colour blending inline
				lsl     r2, r12, #2               @alpha x 4
			    push {r4-r10}
			    ldr     r7, =0x03E07C1F         @ MASKLO: -g-|b-r
			    mov     r6, r7, lsl #5          @ MASKHI: g-|b-r-
				@ --- -g-|b-r
		        and     r4, r6, r0, lsl #5      @ x/32: (-g-|b-r)
		        and     r5, r7, r1              @ y: -g-|b-r
		        sub     r5, r5, r4, lsr #5      @ z: y-x
		        mla     r4, r5, r2, r4         @ z: (y-x)*w   x*32
		        and     r10, r7, r4, lsr #5     @ blend(-g-|b-r)            
		        @ --- b-r|-g- (rotated by 16 for cheapskatiness)
		        and     r4, r6, r0, ror #11     @ x/32: -g-|b-r (ror16)
		        and     r5, r7, r1, ror #16     @ y: -g-|b-r (ror16)
		        sub     r5, r5, r4, lsr #5      @ z: y-x
		        mla     r4, r5, r2, r4         @ z: (y-x)*w   x*32
		        and     r4, r7, r4, lsr #5      @ blend(-g-|b-r (ror16))
		        @ --- mix -g-|b-r and b-r|-g-
		        orr     r0, r10, r4, ror #16
		        lsl r0, #16
		        lsr r3, r0, #16 @@wipe top 2 bytes???
		        pop {r4-r10}
			b CheckFog


	.pool
