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

@ rewriting render by hand
	.global	Render
	.syntax unified
	.arm
	.fpu softvfp
	.type	Render, %function
Render:
	@ r0 is a pointer to CurrentProc

	push {r4-r11, lr}
	mov r11, r0 @r11 = CurrentProc*
	sub sp, sp, #212 @this is ybuffer
	ldr r4, [r0, #60] @r4 = angle
	ldr r5, [r0, #44] @r5 = posX
	ldr r6, [r0, #48] @r6 = posY
	ldr r7, [r0, #56] @r7 = altitude
	ldr r8, [r0, #84] @r8 = sunsetVal

	@@draw sky bg

	ldr r1, =skies
	@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr r0, [r1, r8, lsl #2] @r0 = sky pointer

	@@initialize y buffer

	@@draw image





	mov	r1, r0	@ CurrentProc, tmp390
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	sub	sp, sp, #212	@,,
@ arm/soar_wram.arm.c:273: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r4, [r0, #60]	@ angle, CurrentProc_56(D)->sPlayerYaw
@ arm/soar_wram.arm.c:270: void Render(SoarProc* CurrentProc){
	str	r0, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:271: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r0, [r0, #44]	@ posX, CurrentProc_56(D)->sPlayerPosX
	str	r0, [sp, #48]	@ posX, %sfp
@ arm/soar_wram.arm.c:278: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r0, [r1, #84]	@ sunsetVal, CurrentProc_56(D)->sunsetVal
@ arm/soar_wram.arm.c:284: 	sky = skies[(sunsetVal)>>1];
	ldr	r3, .L116	@ tmp248,
@ arm/soar_wram.arm.c:284: 	sky = skies[(sunsetVal)>>1];
	asr	r6, r0, #1	@ _2, sunsetVal,
@ arm/soar_wram.arm.c:275: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	fp, [r1, #56]	@ altitude, CurrentProc_56(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:278: 	int sunsetVal = CurrentProc->sunsetVal;
	str	r0, [sp, #32]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r3, r6, lsl #2]	@ skies[_2], skies[_2]
	add	r3, r4, r4, lsl #2	@ tmp243, angle, angle,
	lsl	r3, r3, #9	@ tmp245, tmp243,
	add	r3, r3, fp, lsl #1	@ tmp246, tmp245, altitude,
	sub	r0, r0, #400	@ tmp249, skies[_2],
	add	r0, r0, r3, lsl #2	@, tmp249, tmp246,
	mov	r3, r1	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:272: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r3, #48]	@ posY, CurrentProc_56(D)->sPlayerPosY
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	r2, #10240	@,
	ldr	r7, .L116+4	@ tmp252,
	ldr	r1, [r1, #64]	@, CurrentProc_56(D)->vid_page
@ arm/soar_wram.arm.c:272: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #52]	@ posY, %sfp
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	lr, pc
	bx	r7		@ tmp252
@ arm/soar_wram.arm.c:290: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp253,
	ldr	r2, .L116+8	@,
	add	r1, sp, #80	@,,
	add	r0, sp, #76	@,,
	str	r3, [sp, #76]	@ tmp253, tmp
	mov	lr, pc
	bx	r7		@ tmp252
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, fp, #4	@ tmp261, altitude,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _49, tmp261,
	add	r2, r3, #3	@ _49, _49,
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, fp, #1	@ _5, altitude,
@ arm/soar_wram.arm.c:295: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r3, r3, #24	@ zdist, _5,
	str	r3, [sp, #28]	@ zdist, %sfp
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r3	@ _49, zdist
@ arm/soar_wram.arm.c:293: 	fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L116+12	@ tmp258,
	lsl	r6, r6, #1	@ tmp259, _2,
	ldrh	r3, [r3, r6]	@ fogclr, fogClrs[_2]
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	str	r2, [sp, #44]	@ _49, %sfp
@ arm/soar_wram.arm.c:293: 	fogclr = fogClrs[sunsetVal>>1];
	str	r3, [sp, #40]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	blt	.L96		@,
	add	r5, r4, #4	@ tmp239, angle,
	and	r5, r5, #15	@ tangent, tmp239,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp265, tangent
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _237, tmp265,
	lsl	r3, r3, #9	@ tmp376, _237,
	str	r3, [sp, #56]	@ tmp376, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp266, angle
	lsl	r2, r5, #9	@ tmp380, tangent,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _239, tmp266,
	str	r2, [sp, #68]	@ tmp380, %sfp
	lsl	r3, r3, #9	@ tmp377, _239,
	lsl	r2, r4, #9	@ tmp379, angle,
	str	r2, [sp, #64]	@ tmp379, %sfp
	str	r3, [sp, #60]	@ tmp377, %sfp
.L95:
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	mov	r5, #0	@ ivtmp.49,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r0, [sp, #28]	@ zdist, %sfp
	ldr	r3, [sp, #64]	@ tmp379, %sfp
	ldr	ip, .L116+16	@ tmp444,
	add	r3, r3, r0	@ tmp269, tmp379, zdist
	lsl	r3, r3, #1	@ tmp270, tmp269,
	ldrsh	r1, [ip, r3]	@ _91, pleftmatrix[angle_59][zdist_154]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp377, %sfp
	add	r3, r3, r0	@ tmp274, tmp377, zdist
	lsl	r3, r3, #1	@ tmp275, tmp274,
	ldrsh	r2, [ip, r3]	@ _96, pleftmatrix[_239][zdist_154]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #68]	@ tmp380, %sfp
	add	r3, r3, r0	@ tmp281, tmp380, zdist
	lsl	r3, r3, #1	@ tmp282, tmp281,
	ldrsh	r9, [ip, r3]	@ pleftmatrix[tangent_60][zdist_154], pleftmatrix[tangent_60][zdist_154]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ posX, %sfp
	add	r3, r3, r1	@ _92, posX, _91
	str	r3, [sp, #8]	@ _92, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp376, %sfp
	add	r3, r3, r0	@ tmp288, tmp376, zdist
	lsl	r3, r3, #1	@ tmp289, tmp288,
	ldrsh	r8, [ip, r3]	@ pleftmatrix[_237][zdist_154], pleftmatrix[_237][zdist_154]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ posY, %sfp
	add	r3, r3, r2	@ _97, posY, _96
	str	r3, [sp, #12]	@ _97, %sfp
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r0, #256	@ tmp277, zdist,
@ arm/soar_wram.arm.c:304: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r8, r8, r2	@ tmp292, pleftmatrix[_237][zdist_154], _96
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _28, tmp277,
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r2, r0, #1	@ _99, zdist,
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	str	r3, [sp, #36]	@ _28, %sfp
@ arm/soar_wram.arm.c:303: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r9, r9, r1	@ tmp285, pleftmatrix[tangent_60][zdist_154], _91
@ arm/soar_wram.arm.c:304: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r8, r8, #1	@ _226, tmp292,
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r3, r2, #8	@ tmp382, _99,
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	mov	r6, r5	@ ivtmp.48, ivtmp.49
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, r5	@ i, ivtmp.49
	mov	r10, r8	@ _226, _226
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	r2, [sp, #16]	@ _99, %sfp
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	r3, [sp, #20]	@ tmp382, %sfp
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	str	fp, [sp]	@ altitude, %sfp
	add	r7, sp, #79	@ tmp441,,
@ arm/soar_wram.arm.c:303: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r9, r9, #1	@ _229, tmp285,
	b	.L94		@
.L85:
@ arm/soar_wram.arm.c:330: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r8, r3, r8	@ tmp357, _22, _100
@ arm/soar_wram.arm.c:330: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r8, #6	@ tmp357,
	bgt	.L114		@,
.L83:
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #128	@ i,
	add	r6, r6, r9	@ ivtmp.48, ivtmp.48, _229
	add	r5, r5, r10	@ ivtmp.49, ivtmp.49, _226
	beq	.L115		@,
.L94:
@ arm/soar_wram.arm.c:315: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2	@ _22, MEM[(unsigned char *)_225]
@ arm/soar_wram.arm.c:315: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r3, #159	@ _22,
	bhi	.L83		@,
@ arm/soar_wram.arm.c:309: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #8]	@ _92, %sfp
	add	ip, r2, r6, asr #8	@ _18, _92, ivtmp.48,
@ arm/soar_wram.arm.c:309: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #12]	@ _97, %sfp
	add	lr, r2, r5, asr #8	@ _21, _97, ivtmp.49,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	lr, #1024	@ _21,
	cmplt	ip, #1024	@, _18,
	movge	r2, #1	@ _131,
	movlt	r2, #0	@ _131,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r8, #0	@ _138,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	str	r2, [sp, #4]	@ _131, %sfp
	bge	.L84		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r2, ip, lr	@ tmp394, _18, _21
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r2, .L116+20	@ tmp467,
	addpl	r2, r2, ip	@ tmp305, tmp467, _18
	ldrbpl	r8, [r2, lr, lsl #10]	@ zero_extendqisi2	@ _138, heightMap[_136]
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	ldrmi	r8, [sp, #4]	@ _138, %sfp
.L84:
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp]	@ altitude, %sfp
	ldr	fp, [sp, #16]	@ _99, %sfp
	rsb	r0, r2, r2, lsl #8	@ tmp313, altitude, altitude,
	ldr	r2, [sp, #20]	@ tmp382, %sfp
	rsb	r0, r0, r0, lsl #8	@ tmp315, tmp313, tmp313,
	sub	r2, r2, fp	@ tmp310, tmp382, _99
	add	r2, r2, r0	@ tmp316, tmp310, tmp315
	ldr	r0, .L116+24	@ tmp470,
	add	r2, r0, r2	@ tmp317, tmp470, tmp316
	ldrb	r8, [r2, r8]	@ zero_extendqisi2	@ _100, hosTables[altitude_61][_99][_139]
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r3, r8	@ _23, _100
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r1, r3	@ _23, _22
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	bcs	.L85		@,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r3, [sp, #28]	@ zdist, %sfp
	cmp	r3, #40	@ zdist,
	bne	.L86		@,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r3, r4, #61	@ tmp319, i,
	cmp	r3, #6	@ tmp319,
@ arm/soar_wram.arm.c:320: 					u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bhi	.L86		@,
.L87:
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:349: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r2, r4, r4, lsl #2	@ tmp349, i, i,
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	ldr	r3, [r3, #64]	@ CurrentProc_56(D)->vid_page, CurrentProc_56(D)->vid_page
@ arm/soar_wram.arm.c:349: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r2, r1, r2, lsl #5	@ offset, _23, tmp349,
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	add	r3, r3, r2, lsl #1	@ base, CurrentProc_56(D)->vid_page, offset,
@ arm/soar_wram.arm.c:326: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r1, r8, r1	@ tmp354, _100, _23
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r1, r3, r1, lsl #1	@ _178, base, tmp354,
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r3, r1	@ base, _178
	ldrcc	fp, [sp]	@ altitude, %sfp
	bcs	.L93		@,
.L92:
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r3], #2	@ movhi	@ clr, MEM[(u16 *)i_173]
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r3, r1	@ base, _178
	bcc	.L92		@,
	str	fp, [sp]	@ altitude, %sfp
.L93:
@ arm/soar_wram.arm.c:327: 				    yBuffer[i] = height_on_screen;
	strb	r8, [r7]	@ _100, MEM[(unsigned char *)_225]
	b	.L83		@
.L114:
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	mov	r2, #0	@ tmp368,
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	add	r1, r4, r4, lsl #2	@ tmp360, i, i,
	add	r3, r3, r1, lsl #5	@ tmp362, _22, tmp360,
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	sub	r3, r3, #1	@ tmp363, tmp362,
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldr	r1, [r1, #64]	@ CurrentProc_56(D)->vid_page, CurrentProc_56(D)->vid_page
	lsl	r3, r3, #1	@ tmp365, tmp363,
	strh	r2, [r1, r3]	@ movhi	@ tmp368, *base_120
	b	.L83		@
.L86:
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r2, [sp, #32]	@ sunsetVal, %sfp
	sub	r3, r2, #1	@ tmp320, sunsetVal,
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r3, #6	@ tmp320,
	bhi	.L88		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	ldr	r3, [sp, #4]	@ _131, %sfp
	cmp	r3, #0	@ _131,
	bne	.L105		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, ip, lr	@ tmp395, _18, _21
	bmi	.L105		@,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L116+28	@ tmp474,
	ldr	r0, .L116+32	@ tmp475,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, ip, lr, lsl #10	@ _149, _18, _21,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp324, _149,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_149]
	ldrh	r0, [r0, r3]	@, colourMap[_149]
	ldr	r3, .L116+36	@ tmp476,
	mov	lr, pc
	bx	r3		@ tmp476
.L89:
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r3, [sp, #28]	@ zdist, %sfp
	cmp	r3, #256	@ zdist,
	bgt	.L91		@,
.L113:
@ arm/soar_wram.arm.c:326: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldrb	r1, [r7]	@ zero_extendqisi2	@ _23, MEM[(unsigned char *)_225]
	b	.L87		@
.L88:
@ arm/soar_wram.arm.c:129: 	if (sunsetVal){
	ldr	r3, [sp, #32]	@ sunsetVal, %sfp
	cmp	r3, #0	@ sunsetVal,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	ldr	r3, [sp, #4]	@ _131, %sfp
@ arm/soar_wram.arm.c:129: 	if (sunsetVal){
	beq	.L90		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	r3, #0	@ _131,
	bne	.L103		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r3, ip, lr	@ tmp396, _18, _21
	bmi	.L103		@,
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r2, .L116+28	@ tmp479,
	add	r3, ip, lr, lsl #10	@ tmp336, _18, _21,
	lsl	r3, r3, #1	@ tmp337, tmp336,
	ldrh	r0, [r2, r3]	@ clr,
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r3, [sp, #28]	@ zdist, %sfp
	cmp	r3, #256	@ zdist,
	ble	.L113		@,
.L91:
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r3, .L116+36	@ tmp483,
	mov	lr, pc
	bx	r3		@ tmp483
	b	.L113		@
.L105:
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L89		@
.L90:
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #0	@ _131,
	bne	.L105		@,
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, ip, lr	@ tmp397, _18, _21
	bmi	.L105		@,
@ arm/soar_wram.arm.c:135: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r2, .L116+32	@ tmp481,
	add	r3, ip, lr, lsl #10	@ tmp342, _18, _21,
	lsl	r3, r3, #1	@ tmp343, tmp342,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L89		@
.L115:
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	ldr	r1, [sp, #28]	@ zdist, %sfp
	asr	r3, r1, #7	@ tmp370, zdist,
	asr	r2, r1, #8	@ tmp372, zdist,
	add	r3, r3, r1, asr #6	@ tmp371, tmp370, zdist,
	add	r3, r3, r2, lsl #2	@ tmp374, tmp371, tmp372,
	add	r3, r3, #2	@ _42, tmp374,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r2, [sp, #44]	@ _49, %sfp
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	add	r3, r1, r3	@ zdist, zdist, _42
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r3	@ _49, zdist
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	ldr	fp, [sp]	@ altitude, %sfp
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	str	r3, [sp, #28]	@ zdist, %sfp
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bge	.L95		@,
.L96:
@ arm/soar_wram.arm.c:342: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r4, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, .L116+40	@ tmp264,
	ldr	r0, [r4, #64]	@, CurrentProc_56(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp264
@ arm/soar_wram.arm.c:342: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r4, #64]	@ tmp391, CurrentProc_56(D)->vid_page
@ arm/soar_wram.arm.c:343: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L103:
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L89		@
.L117:
	.align	2
.L116:
	.word	skies
	.word	CpuFastSet
	.word	16777248
	.word	fogClrs
	.word	pleftmatrix
	.word	heightMap
	.word	hosTables
	.word	colourMap_sunset
	.word	colourMap
	.word	iwram_clr_blend_asm
	.word	vid_flip
	.size	Render, .-Render
	.ident	"GCC: (devkitARM release 56) 11.1.0"
