	.cpu arm7tdmi
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"soar_wram.arm.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -marm -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -O2 -fomit-frame-pointer -ffast-math -fno-jump-tables -fno-toplevel-reorder
	.text
	.align	2
	.global	NewWMLoop
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	NewWMLoop, %function
NewWMLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:54: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp276,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:54: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _117, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #212	@,,
@ arm/soar_wram.arm.c:55: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _117,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #24]	@ tmp505, %sfp
@ arm/soar_wram.arm.c:55: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L54		@,
@ arm/soar_wram.arm.c:56: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _117,
@ arm/soar_wram.arm.c:56: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L60	@ tmp287,
@ arm/soar_wram.arm.c:56: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L52		@,
@ arm/soar_wram.arm.c:54: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp289, _117,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp289,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L60+4	@ tmp294,
@ arm/soar_wram.arm.c:58: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L60+8	@ tmp297,
.L52:
	str	r3, [sp]	@ tmp297,
	mov	r2, #88	@,
	ldr	r3, .L60+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L60+16	@ tmp495,
	mov	lr, pc
	bx	r4		@ tmp495
@ arm/soar_wram.arm.c:60: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_4(D)->ShowMap, CurrentProc_4(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_4(D)->ShowMap,
	bne	.L55		@,
.L6:
@ arm/soar_wram.arm.c:71: 	int posY = CurrentProc->sFocusPtY;
	ldr	r0, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r0, #76]	@ posY, CurrentProc_4(D)->sFocusPtY
@ arm/soar_wram.arm.c:75: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L60+20	@ tmp313,
@ arm/soar_wram.arm.c:75: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp312, posY,
@ arm/soar_wram.arm.c:75: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp312, tmp313
@ arm/soar_wram.arm.c:70: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r0, #72]	@ posX, CurrentProc_4(D)->sFocusPtX
@ arm/soar_wram.arm.c:75: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:75: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L60+24	@ tmp317,
	sub	r1, r6, #1	@ tmp316, posX,
	cmp	r1, r2	@ tmp316, tmp317
	bls	.L56		@,
.L9:
@ arm/soar_wram.arm.c:81: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L60+28	@ tmp314,
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_4(D)->location
.L8:
@ arm/soar_wram.arm.c:12: 	thumb_loop(CurrentProc);
	ldr	r4, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, .L60+32	@ tmp347,
	mov	r0, r4	@, CurrentProc
	mov	lr, pc
	bx	r3		@ tmp347
@ arm/soar_wram.arm.c:169: 	int angle = CurrentProc->sPlayerYaw;
	mov	r1, r4	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:174: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r3, [r4, #84]	@ sunsetVal, CurrentProc_4(D)->sunsetVal
@ arm/soar_wram.arm.c:177: 	sky = skies[(sunsetVal)>>1];
	asr	r6, r3, #1	@ _16, sunsetVal,
@ arm/soar_wram.arm.c:174: 	int sunsetVal = CurrentProc->sunsetVal;
	str	r3, [sp, #60]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:167: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r1, #44]	@ posX, CurrentProc_4(D)->sPlayerPosX
@ arm/soar_wram.arm.c:169: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r4, #60]	@ angle, CurrentProc_4(D)->sPlayerYaw
@ arm/soar_wram.arm.c:167: 	int posX = CurrentProc->sPlayerPosX;
	str	r3, [sp, #32]	@ posX, %sfp
@ arm/soar_wram.arm.c:177: 	sky = skies[(sunsetVal)>>1];
	ldr	r3, .L60+36	@ tmp357,
@ arm/soar_wram.arm.c:171: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	fp, [r4, #56]	@ altitude, CurrentProc_4(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:179: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r3, r6, lsl #2]	@ skies[_16], skies[_16]
	add	r3, r5, r5, lsl #2	@ tmp352, angle, angle,
	lsl	r3, r3, #9	@ tmp354, tmp352,
	add	r3, r3, fp, lsl #1	@ tmp355, tmp354, altitude,
	sub	r0, r0, #400	@ tmp358, skies[_16],
	add	r0, r0, r3, lsl #2	@, tmp358, tmp355,
	mov	r3, r1	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:168: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r3, #48]	@ posY, CurrentProc_4(D)->sPlayerPosY
@ arm/soar_wram.arm.c:179: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	r2, #10240	@,
	ldr	r1, [r1, #64]	@, CurrentProc_4(D)->vid_page
	ldr	r7, .L60+40	@ tmp361,
@ arm/soar_wram.arm.c:168: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #36]	@ posY, %sfp
@ arm/soar_wram.arm.c:179: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	lr, pc
	bx	r7		@ tmp361
@ arm/soar_wram.arm.c:185: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp362,
	ldr	r2, .L60+44	@,
	add	r1, sp, #80	@,,
	add	r0, sp, #76	@,,
	str	r3, [sp, #76]	@ tmp362, tmp
	mov	lr, pc
	bx	r7		@ tmp361
@ arm/soar_wram.arm.c:191: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, fp, #4	@ tmp370, altitude,
@ arm/soar_wram.arm.c:191: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _49, tmp370,
	add	r2, r3, #3	@ _49, _49,
@ arm/soar_wram.arm.c:179: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, fp, #1	@ _22, altitude,
@ arm/soar_wram.arm.c:190: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r9, r3, #24	@ zdist, _22,
@ arm/soar_wram.arm.c:188: 	fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L60+48	@ tmp367,
	lsl	r6, r6, #1	@ tmp368, _16,
	ldrh	r3, [r3, r6]	@ fogclr, fogClrs[_16]
@ arm/soar_wram.arm.c:170: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp348, angle,
@ arm/soar_wram.arm.c:191: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r9, r2	@ zdist, _49
	str	r2, [sp, #40]	@ _49, %sfp
@ arm/soar_wram.arm.c:188: 	fogclr = fogClrs[sunsetVal>>1];
	str	r3, [sp, #68]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:170: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp348,
@ arm/soar_wram.arm.c:191: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L26		@,
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp378, angle
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _292, tmp378,
	lsl	r3, r3, #9	@ tmp489, _292,
	str	r3, [sp, #44]	@ tmp489, %sfp
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp379, tangent
	lsl	r2, r5, #9	@ tmp491, angle,
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _294, tmp379,
	str	r2, [sp, #52]	@ tmp491, %sfp
	lsl	r3, r3, #9	@ tmp490, _294,
	lsl	r2, r4, #9	@ tmp492, tangent,
	str	r2, [sp, #56]	@ tmp492, %sfp
	str	r3, [sp, #48]	@ tmp490, %sfp
.L25:
@ arm/soar_wram.arm.c:202: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, #0	@ i,
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp491, %sfp
	ldr	r1, .L60+52	@ tmp562,
	add	r3, r3, r9	@ tmp382, tmp491, zdist
	lsl	r3, r3, #1	@ tmp383, tmp382,
	ldrsh	r8, [r1, r3]	@ _35, pleftmatrix[angle_11][zdist_254]
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp489, %sfp
	add	r3, r3, r9	@ tmp387, tmp489, zdist
	lsl	r3, r3, #1	@ tmp388, tmp387,
	ldrsh	r2, [r1, r3]	@ _40, pleftmatrix[_292][zdist_254]
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp492, %sfp
	add	r3, r3, r9	@ tmp392, tmp492, zdist
	lsl	r3, r3, #1	@ tmp393, tmp392,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[tangent_13][zdist_254], pleftmatrix[tangent_13][zdist_254]
@ arm/soar_wram.arm.c:198: 		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r8	@ dx, pleftmatrix[tangent_13][zdist_254], _35
	str	r3, [sp, #16]	@ dx, %sfp
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #32]	@ posX, %sfp
	add	r8, r3, r8	@ _36, posX, _35
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp490, %sfp
	add	r3, r3, r9	@ tmp398, tmp490, zdist
	lsl	r3, r3, #1	@ tmp399, tmp398,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[_294][zdist_254], pleftmatrix[_294][zdist_254]
@ arm/soar_wram.arm.c:199: 		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ dy, pleftmatrix[_294][zdist_254], _40
	str	r3, [sp, #20]	@ dy, %sfp
@ arm/soar_wram.arm.c:96: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #36]	@ posY, %sfp
	add	r3, r3, r2	@ _41, posY, _40
	str	r3, [sp, #12]	@ _41, %sfp
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r9, #256	@ tmp402, zdist,
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _72, tmp402,
@ arm/soar_wram.arm.c:46: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r10, r9, #1	@ _61, zdist,
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	str	r3, [sp, #28]	@ _72, %sfp
@ arm/soar_wram.arm.c:46: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r3, r10, #8	@ tmp497, _61,
.L24:
@ arm/soar_wram.arm.c:210: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	add	r2, r4, #208	@ tmp609, i,
	add	r5, sp, r2	@ tmp494,, tmp609
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _59, yBuffer[i_268]
@ arm/soar_wram.arm.c:210: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r0, #159	@ _59,
	bhi	.L12		@,
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r1, [sp, #16]	@ tmp406, %sfp
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r2, [sp, #20]	@ tmp408, %sfp
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	mul	r1, r4, r1	@ tmp406, i, tmp406
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	mul	r2, r4, r2	@ tmp408, i, tmp408
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	ip, [sp, #12]	@ _41, %sfp
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	add	r1, r8, r1, asr #7	@ _55, _36, tmp406,
@ arm/soar_wram.arm.c:204: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	add	r2, ip, r2, asr #7	@ _58, _41, tmp408,
@ arm/soar_wram.arm.c:36: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ _58,
	cmplt	r1, #1024	@, _55,
	movge	lr, #1	@ _151,
	movlt	lr, #0	@ _151,
@ arm/soar_wram.arm.c:36: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r7, #0	@ _158,
@ arm/soar_wram.arm.c:36: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L13		@,
@ arm/soar_wram.arm.c:36: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	ip, r1, r2	@ tmp509, _55, _58
@ arm/soar_wram.arm.c:36: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r7, lr	@ _158, _151
@ arm/soar_wram.arm.c:37: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	ip, .L60+56	@ tmp579,
	addpl	ip, ip, r1	@ tmp418, tmp579, _55
	ldrbpl	r7, [ip, r2, lsl #10]	@ zero_extendqisi2	@ _158, heightMap[_156]
.L13:
@ arm/soar_wram.arm.c:46: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, fp, fp, lsl #8	@ tmp426, altitude, altitude,
	rsb	r6, r6, r6, lsl #8	@ tmp428, tmp426, tmp426,
	sub	ip, r3, r10	@ tmp423, tmp497, _61
	add	ip, ip, r6	@ tmp429, tmp423, tmp428
	ldr	r6, .L60+60	@ tmp580,
	add	ip, r6, ip	@ tmp430, tmp580, tmp429
	ldrb	r6, [ip, r7]	@ zero_extendqisi2	@ _62, hosTables[altitude_14][_61][_159]
@ arm/soar_wram.arm.c:213: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	cmp	r6, #0	@ _62,
@ arm/soar_wram.arm.c:213: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	addeq	r4, r4, #4	@ i, i,
@ arm/soar_wram.arm.c:213: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	beq	.L12		@,
@ arm/soar_wram.arm.c:215: 					int ylen = height_on_screen - yBuffer[i];
	sub	r7, r6, r0	@ ylen, _62, _65
@ arm/soar_wram.arm.c:216: 					if (ylen>0){ //only draw if that line has been higher this screen
	cmp	r7, #0	@ ylen,
@ arm/soar_wram.arm.c:215: 					int ylen = height_on_screen - yBuffer[i];
	mov	ip, r0	@ _65, _59
@ arm/soar_wram.arm.c:216: 					if (ylen>0){ //only draw if that line has been higher this screen
	bgt	.L57		@,
@ arm/soar_wram.arm.c:228: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r6, r0, r6	@ tmp472, _59, _62
@ arm/soar_wram.arm.c:228: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r6, #6	@ tmp472,
	ble	.L12		@,
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r2, r0, r4, lsl #5	@ tmp475, _59, i,
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	mov	r0, #0	@ tmp482,
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r2, r2, r4, lsl #7	@ tmp476, tmp475, i,
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	ldr	r1, [r1, #64]	@ CurrentProc_4(D)->vid_page, CurrentProc_4(D)->vid_page
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	sub	r2, r2, #-2147483647	@ tmp477, tmp476,
@ arm/soar_wram.arm.c:229: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	lsl	r2, r2, #1	@ tmp479, tmp477,
	strh	r0, [r1, r2]	@ movhi	@ tmp482, *_101
.L12:
@ arm/soar_wram.arm.c:202: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:202: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #127	@ i,
	ble	.L24		@,
@ arm/soar_wram.arm.c:192: 		zdist+=INC_ZSTEP){
	asr	r3, r9, #7	@ tmp484, zdist,
	add	r3, r3, r9, asr #6	@ tmp485, tmp484, zdist,
	asr	r2, r9, #8	@ tmp486, zdist,
	add	r3, r3, r2, lsl #2	@ tmp488, tmp485, tmp486,
	add	r3, r3, #2	@ _110, tmp488,
@ arm/soar_wram.arm.c:192: 		zdist+=INC_ZSTEP){
	add	r9, r9, r3	@ zdist, zdist, _110
@ arm/soar_wram.arm.c:191: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #40]	@ _49, %sfp
	cmp	r3, r9	@ _49, zdist
	bge	.L25		@,
.L26:
@ arm/soar_wram.arm.c:241: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r4, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, .L60+64	@ tmp373,
	ldr	r0, [r4, #64]	@, CurrentProc_4(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp373
@ arm/soar_wram.arm.c:14: 	FPS_COUNTER += 1;
	ldr	r2, .L60+68	@ tmp374,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp376, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:241: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r4, #64]	@ tmp506, CurrentProc_4(D)->vid_page
@ arm/soar_wram.arm.c:14: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp376, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:15: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L57:
@ arm/soar_wram.arm.c:219: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r9, #40	@ zdist,
	bne	.L16		@,
@ arm/soar_wram.arm.c:219: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r0, r4, #61	@ tmp432, i,
@ arm/soar_wram.arm.c:219: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r0, #6	@ tmp432,
@ arm/soar_wram.arm.c:218: 						u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:219: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bls	.L17		@,
.L16:
@ arm/soar_wram.arm.c:18: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	ip, [sp, #60]	@ sunsetVal, %sfp
	sub	r0, ip, #1	@ tmp433, sunsetVal,
@ arm/soar_wram.arm.c:18: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r0, #6	@ tmp433,
	bhi	.L18		@,
@ arm/soar_wram.arm.c:20: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _151,
	bne	.L35		@,
@ arm/soar_wram.arm.c:20: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp510, _55, _58
	bmi	.L35		@,
@ arm/soar_wram.arm.c:21: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ _169, _55, _58,
	str	r3, [sp, #64]	@ tmp497, %sfp
@ arm/soar_wram.arm.c:23: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r3, .L60+72	@ tmp582,
@ arm/soar_wram.arm.c:21: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r0, r2, #1	@ tmp437, _169,
@ arm/soar_wram.arm.c:23: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r3, r0]	@, colourMap_sunset[_169]
	ldr	r3, .L60+76	@ tmp583,
	mov	r2, ip	@, sunsetVal
	ldrh	r0, [r3, r0]	@, colourMap[_169]
	ldr	r3, .L60+80	@ tmp584,
	mov	lr, pc
	bx	r3		@ tmp584
	ldr	r3, [sp, #64]	@ tmp497, %sfp
.L19:
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r9, #256	@ zdist,
	bgt	.L21		@,
.L58:
@ arm/soar_wram.arm.c:224: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	ip, [r5, #-128]	@ zero_extendqisi2	@ _65, yBuffer[i_268]
.L17:
@ arm/soar_wram.arm.c:249: 	u16* base = vid_page + (offset);
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:248: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r4, r4, lsl #2	@ tmp464, i, i,
@ arm/soar_wram.arm.c:249: 	u16* base = vid_page + (offset);
	ldr	r2, [r2, #64]	@ CurrentProc_4(D)->vid_page, CurrentProc_4(D)->vid_page
@ arm/soar_wram.arm.c:248: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	ip, ip, r1, lsl #5	@ offset, _65, tmp464,
@ arm/soar_wram.arm.c:249: 	u16* base = vid_page + (offset);
	add	r2, r2, ip, lsl #1	@ base, CurrentProc_4(D)->vid_page, offset,
@ arm/soar_wram.arm.c:250: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r7, r2, r7, lsl #1	@ _255, base, ylen,
@ arm/soar_wram.arm.c:250: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r7	@ base, _255
	bcs	.L23		@,
.L22:
@ arm/soar_wram.arm.c:250: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r2], #2	@ movhi	@ clr, MEM[(u16 *)i_230]
@ arm/soar_wram.arm.c:250: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r7	@ base, _255
	bcc	.L22		@,
.L23:
@ arm/soar_wram.arm.c:225: 					    yBuffer[i] = height_on_screen;
	strb	r6, [r5, #-128]	@ _62, yBuffer[i_268]
	b	.L12		@
.L18:
@ arm/soar_wram.arm.c:25: 	if (sunsetVal){
	ldr	r0, [sp, #60]	@ sunsetVal, %sfp
	cmp	r0, #0	@ sunsetVal,
	beq	.L20		@,
@ arm/soar_wram.arm.c:26: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	lr, #0	@ _151,
	bne	.L33		@,
@ arm/soar_wram.arm.c:26: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r0, r1, r2	@ tmp511, _55, _58
	bmi	.L33		@,
@ arm/soar_wram.arm.c:27: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp449, _55, _58,
	ldr	r1, .L60+72	@ tmp586,
	lsl	r2, r2, #1	@ tmp450, tmp449,
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r9, #256	@ zdist,
@ arm/soar_wram.arm.c:27: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrh	r0, [r1, r2]	@ clr,
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ble	.L58		@,
.L21:
	str	r3, [sp, #64]	@ tmp497, %sfp
@ arm/soar_wram.arm.c:222: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #28]	@, %sfp
	ldr	r3, .L60+80	@ tmp588,
	ldr	r1, [sp, #68]	@, %sfp
	mov	lr, pc
	bx	r3		@ tmp588
@ arm/soar_wram.arm.c:224: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	ip, [r5, #-128]	@ zero_extendqisi2	@ _65, yBuffer[i_268]
	ldr	r3, [sp, #64]	@ tmp497, %sfp
	b	.L17		@
.L35:
@ arm/soar_wram.arm.c:20: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L19		@
.L20:
@ arm/soar_wram.arm.c:30: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _151,
	bne	.L35		@,
@ arm/soar_wram.arm.c:30: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp512, _55, _58
	bmi	.L35		@,
@ arm/soar_wram.arm.c:31: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp455, _55, _58,
	ldr	r1, .L60+76	@ tmp587,
	lsl	r2, r2, #1	@ tmp456, tmp455,
	ldrh	r0, [r1, r2]	@ clr,
	b	.L19		@
.L33:
@ arm/soar_wram.arm.c:26: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L19		@
.L56:
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
	ldr	r2, [r2, #68]	@ CurrentProc_4(D)->ShowMap, CurrentProc_4(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_4(D)->ShowMap,
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r3, #170	@ _305, posY,
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L59		@,
.L10:
@ arm/soar_wram.arm.c:79: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L60+84	@ tmp330,
@ arm/soar_wram.arm.c:78: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r5, #6	@ posY, _305,
@ arm/soar_wram.arm.c:79: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp334, tmp330, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_140][posX_138]
@ arm/soar_wram.arm.c:81: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L60+28	@ tmp336,
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_143], translatedLocations[_143]
@ arm/soar_wram.arm.c:82: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:81: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_143], CurrentProc_4(D)->location
@ arm/soar_wram.arm.c:82: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:83: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp342, loc,
	add	r3, r3, #-905969664	@ tmp345, tmp342,
	add	r3, r3, #3932160	@ tmp345, tmp345,
	lsr	r3, r3, r2	@ tmp344, tmp345,
	str	r3, [sp]	@ tmp344,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L60+88	@,
	mov	lr, pc
	bx	r4		@ tmp495
	b	.L8		@
.L54:
@ arm/soar_wram.arm.c:55: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp281,
	ldr	r3, .L60+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L60+16	@ tmp495,
	str	ip, [sp]	@ tmp281,
	mov	lr, pc
	bx	r4		@ tmp495
@ arm/soar_wram.arm.c:60: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_4(D)->ShowMap, CurrentProc_4(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_4(D)->ShowMap,
	beq	.L6		@,
.L55:
@ arm/soar_wram.arm.c:62: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L60+92	@ tmp301,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp301,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L60+96	@,
	mov	lr, pc
	bx	r4		@ tmp495
@ arm/soar_wram.arm.c:64: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:64: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L60+68	@ tmp304,
@ arm/soar_wram.arm.c:64: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp307, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp307, tmp307,
	lsl	r1, r1, #16	@ tmp309, tmp307,
	lsr	r1, r1, #16	@ tmp309, tmp309,
	str	r1, [sp]	@ tmp309,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L60+100	@,
	mov	lr, pc
	bx	r4		@ tmp495
	b	.L6		@
.L59:
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp323, posX,
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L60+104	@ tmp328,
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp320, _305,
@ arm/soar_wram.arm.c:76: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp325, tmp323,
	lsl	r2, r2, #16	@, tmp320,
	lsl	r1, r1, #16	@, tmp325,
	str	r3, [sp]	@ tmp328,
	mov	r0, #8	@,
	ldr	r3, .L60+100	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp495
	b	.L10		@
.L61:
	.align	2
.L60:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	682
	.word	1022
	.word	translatedLocations
	.word	thumb_loop
	.word	skies
	.word	CpuFastSet
	.word	16777248
	.word	fogClrs
	.word	pleftmatrix
	.word	heightMap
	.word	hosTables
	.word	vid_flip
	.word	33812480
	.word	colourMap_sunset
	.word	colourMap
	.word	iwram_clr_blend_asm
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	10848
	.word	gObj_64x64
	.word	gObj_8x8
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
