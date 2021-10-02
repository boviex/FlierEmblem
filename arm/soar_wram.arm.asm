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
@ options passed: -mcpu=arm7tdmi -marm -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Ofast -fomit-frame-pointer -ffast-math -fno-jump-tables -fno-toplevel-reorder
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
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp303,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _11, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #220	@,,
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _11,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #24]	@ tmp550, %sfp
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L64		@,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _11,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L71	@ tmp314,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L61		@,
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp316, _11,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp316,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L71+4	@ tmp321,
@ arm/soar_wram.arm.c:59: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L71+8	@ tmp324,
.L61:
	str	r3, [sp]	@ tmp324,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L71+12	@,
	ldr	r4, .L71+16	@ tmp533,
	mov	lr, pc
	bx	r4		@ tmp533
.L3:
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_6(D)->ShowMap,
	bne	.L65		@,
.L6:
@ arm/soar_wram.arm.c:72: 	int posY = CurrentProc->sFocusPtY;
	ldr	r0, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r0, #76]	@ posY, CurrentProc_6(D)->sFocusPtY
@ arm/soar_wram.arm.c:76: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L71+20	@ tmp340,
@ arm/soar_wram.arm.c:76: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp339, posY,
@ arm/soar_wram.arm.c:76: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp339, tmp340
@ arm/soar_wram.arm.c:71: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r0, #72]	@ posX, CurrentProc_6(D)->sFocusPtX
@ arm/soar_wram.arm.c:76: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:76: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L71+24	@ tmp344,
	sub	r1, r6, #1	@ tmp343, posX,
	cmp	r1, r2	@ tmp343, tmp344
	bls	.L66		@,
.L9:
@ arm/soar_wram.arm.c:82: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L71+28	@ tmp341,
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_6(D)->location
.L8:
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r3, .L71+32	@ tmp374,
	mov	lr, pc
	bx	r3		@ tmp374
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	cmp	r0, #0	@ tmp551,
	bne	.L67		@,
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #220	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L66:
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [r0, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_6(D)->ShowMap,
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r3, #170	@ _345, posY,
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L68		@,
.L10:
@ arm/soar_wram.arm.c:80: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L71+36	@ tmp357,
@ arm/soar_wram.arm.c:79: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r5, #6	@ posY, _345,
@ arm/soar_wram.arm.c:80: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp361, tmp357, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_34][posX_32]
@ arm/soar_wram.arm.c:82: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L71+28	@ tmp363,
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_37], translatedLocations[_37]
@ arm/soar_wram.arm.c:83: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:82: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_37], CurrentProc_6(D)->location
@ arm/soar_wram.arm.c:83: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:84: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp369, loc,
	add	r3, r3, #-905969664	@ tmp372, tmp369,
	add	r3, r3, #3932160	@ tmp372, tmp372,
	lsr	r3, r3, r2	@ tmp371, tmp372,
	str	r3, [sp]	@ tmp371,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L71+40	@,
	mov	lr, pc
	bx	r4		@ tmp533
	b	.L8		@
.L65:
@ arm/soar_wram.arm.c:63: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L71+44	@ tmp328,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp328,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L71+48	@,
	mov	lr, pc
	bx	r4		@ tmp533
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L71+52	@ tmp331,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp334, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp334, tmp334,
	lsl	r1, r1, #16	@ tmp336, tmp334,
	lsr	r1, r1, #16	@ tmp336, tmp336,
	str	r1, [sp]	@ tmp336,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L71+56	@,
	mov	lr, pc
	bx	r4		@ tmp533
	b	.L6		@
.L64:
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp308,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L71+12	@,
	ldr	r4, .L71+16	@ tmp533,
	str	ip, [sp]	@ tmp308,
	mov	lr, pc
	bx	r4		@ tmp533
	b	.L3		@
.L67:
@ arm/soar_wram.arm.c:170: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:175: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r3, [r1, #84]	@ sunsetVal, CurrentProc_6(D)->sunsetVal
@ arm/soar_wram.arm.c:178: 	sky = skies[(sunsetVal)>>1];
	asr	r6, r3, #1	@ _50, sunsetVal,
@ arm/soar_wram.arm.c:175: 	int sunsetVal = CurrentProc->sunsetVal;
	str	r3, [sp, #72]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:168: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r1, #44]	@ posX, CurrentProc_6(D)->sPlayerPosX
@ arm/soar_wram.arm.c:170: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r1, #60]	@ angle, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:168: 	int posX = CurrentProc->sPlayerPosX;
	str	r3, [sp, #40]	@ posX, %sfp
@ arm/soar_wram.arm.c:178: 	sky = skies[(sunsetVal)>>1];
	ldr	r3, .L71+60	@ tmp384,
@ arm/soar_wram.arm.c:172: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r10, [r1, #56]	@ altitude, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:180: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r3, r6, lsl #2]	@ skies[_50], skies[_50]
	add	r3, r5, r5, lsl #2	@ tmp379, angle, angle,
	lsl	r3, r3, #9	@ tmp381, tmp379,
	add	r3, r3, r10, lsl #1	@ tmp382, tmp381, altitude,
	sub	r0, r0, #400	@ tmp385, skies[_50],
	add	r0, r0, r3, lsl #2	@, tmp385, tmp382,
	mov	r3, r1	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:169: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r3, #48]	@ posY, CurrentProc_6(D)->sPlayerPosY
@ arm/soar_wram.arm.c:180: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	r2, #10240	@,
	ldr	r1, [r1, #64]	@, CurrentProc_6(D)->vid_page
	ldr	r7, .L71+64	@ tmp388,
@ arm/soar_wram.arm.c:169: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #44]	@ posY, %sfp
@ arm/soar_wram.arm.c:180: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	lr, pc
	bx	r7		@ tmp388
@ arm/soar_wram.arm.c:186: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp389,
	ldr	r2, .L71+68	@,
	add	r1, sp, #88	@,,
	add	r0, sp, #84	@,,
	str	r3, [sp, #84]	@ tmp389, tmp
	mov	lr, pc
	bx	r7		@ tmp388
@ arm/soar_wram.arm.c:192: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r10, #4	@ tmp397, altitude,
@ arm/soar_wram.arm.c:192: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _83, tmp397,
	add	r2, r3, #3	@ _83, _83,
@ arm/soar_wram.arm.c:180: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, r10, #1	@ _56, altitude,
@ arm/soar_wram.arm.c:191: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	fp, r3, #24	@ zdist, _56,
@ arm/soar_wram.arm.c:189: 	fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L71+72	@ tmp394,
	lsl	r6, r6, #1	@ tmp395, _50,
	ldrh	r3, [r3, r6]	@ fogclr, fogClrs[_50]
@ arm/soar_wram.arm.c:171: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp375, angle,
@ arm/soar_wram.arm.c:192: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	fp, r2	@ zdist, _83
	str	r2, [sp, #48]	@ _83, %sfp
@ arm/soar_wram.arm.c:189: 	fogclr = fogClrs[sunsetVal>>1];
	str	r3, [sp, #76]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:171: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp375,
@ arm/soar_wram.arm.c:192: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L32		@,
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp405, angle
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _307, tmp405,
	lsl	r3, r3, #9	@ tmp536, _307,
	str	r3, [sp, #52]	@ tmp536, %sfp
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp406, tangent
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _309, tmp406,
	lsl	r3, r3, #9	@ tmp537, _309,
	str	r3, [sp, #56]	@ tmp537, %sfp
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r3, [sp, #72]	@ sunsetVal, %sfp
	lsl	r2, r5, #9	@ tmp538, angle,
	str	r2, [sp, #60]	@ tmp538, %sfp
	sub	r3, r3, #1	@ _162, sunsetVal,
	lsl	r2, r4, #9	@ tmp539, tangent,
	str	r2, [sp, #64]	@ tmp539, %sfp
	str	r3, [sp, #68]	@ _162, %sfp
.L31:
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp538, %sfp
@ arm/soar_wram.arm.c:203: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, #0	@ i,
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r0, .L71+76	@ tmp613,
	add	r3, r3, fp	@ tmp409, tmp538, zdist
	lsl	r3, r3, #1	@ tmp410, tmp409,
	ldrsh	r1, [r0, r3]	@ _69, pleftmatrix[angle_45][zdist_263]
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp536, %sfp
	add	r3, r3, fp	@ tmp414, tmp536, zdist
	lsl	r3, r3, #1	@ tmp415, tmp414,
	ldrsh	r2, [r0, r3]	@ _74, pleftmatrix[_307][zdist_263]
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #64]	@ tmp539, %sfp
	add	r3, r3, fp	@ tmp419, tmp539, zdist
	lsl	r3, r3, #1	@ tmp420, tmp419,
	ldrsh	r3, [r0, r3]	@ pleftmatrix[tangent_47][zdist_263], pleftmatrix[tangent_47][zdist_263]
@ arm/soar_wram.arm.c:199: 		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ dx, pleftmatrix[tangent_47][zdist_263], _69
	str	r3, [sp, #16]	@ dx, %sfp
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #40]	@ posX, %sfp
	add	r3, r3, r1	@ _70, posX, _69
	str	r3, [sp, #8]	@ _70, %sfp
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp537, %sfp
	add	r3, r3, fp	@ tmp425, tmp537, zdist
	lsl	r3, r3, #1	@ tmp426, tmp425,
	ldrsh	r3, [r0, r3]	@ pleftmatrix[_309][zdist_263], pleftmatrix[_309][zdist_263]
@ arm/soar_wram.arm.c:200: 		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ dy, pleftmatrix[_309][zdist_263], _74
	str	r3, [sp, #20]	@ dy, %sfp
@ arm/soar_wram.arm.c:97: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ posY, %sfp
	add	r3, r3, r2	@ _75, posY, _74
	str	r3, [sp, #12]	@ _75, %sfp
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, fp, #256	@ tmp429, zdist,
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _116, tmp429,
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r8, fp, #1	@ _104, zdist,
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	str	r3, [sp, #32]	@ _116, %sfp
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r9, r8, #8	@ tmp542, _104,
.L30:
@ arm/soar_wram.arm.c:211: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	add	r3, r4, #216	@ tmp665, i,
	add	r5, sp, r3	@ tmp534,, tmp665
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _93, yBuffer[i_270]
@ arm/soar_wram.arm.c:211: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r0, #159	@ _93,
	bhi	.L13		@,
@ arm/soar_wram.arm.c:205: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r2, [sp, #16]	@ tmp433, %sfp
	mul	r2, r4, r2	@ tmp433, i, tmp433
@ arm/soar_wram.arm.c:205: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r3, [sp, #8]	@ _70, %sfp
	add	r2, r3, r2, asr #7	@ _89, _70, tmp433,
@ arm/soar_wram.arm.c:205: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r3, [sp, #20]	@ tmp435, %sfp
	mul	r3, r4, r3	@ tmp435, i, tmp435
@ arm/soar_wram.arm.c:205: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r1, [sp, #12]	@ _75, %sfp
	add	r3, r1, r3, asr #7	@ _92, _75, tmp435,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _92,
	cmplt	r2, #1024	@, _89,
	movge	ip, #1	@ _96,
	movlt	ip, #0	@ _96,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r6, #0	@ _103,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L14		@,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, r2, r3	@ tmp556, _89, _92
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r6, ip	@ _103, _96
@ arm/soar_wram.arm.c:38: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L71+80	@ tmp632,
	addpl	r1, r1, r2	@ tmp445, tmp632, _89
	ldrbpl	r6, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _103, heightMap[_101]
.L14:
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	lr, r10, r10, lsl #8	@ tmp453, altitude, altitude,
	rsb	lr, lr, lr, lsl #8	@ tmp455, tmp453, tmp453,
	sub	r1, r9, r8	@ tmp450, tmp542, _104
	add	r1, r1, lr	@ tmp456, tmp450, tmp455
	ldr	lr, .L71+84	@ tmp633,
	add	r1, lr, r1	@ tmp457, tmp633, tmp456
	ldrb	r6, [r1, r6]	@ zero_extendqisi2	@ _106, hosTables[altitude_48][_104][_105]
@ arm/soar_wram.arm.c:214: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	cmp	r6, #0	@ _106,
@ arm/soar_wram.arm.c:214: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	addeq	r4, r4, #4	@ i, i,
@ arm/soar_wram.arm.c:214: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	beq	.L13		@,
@ arm/soar_wram.arm.c:216: 					int ylen = height_on_screen - yBuffer[i];
	sub	r7, r6, r0	@ ylen, _106, _109
@ arm/soar_wram.arm.c:217: 					if (ylen>0){ //only draw if that line has been higher this screen
	cmp	r7, #0	@ ylen,
@ arm/soar_wram.arm.c:216: 					int ylen = height_on_screen - yBuffer[i];
	mov	r1, r0	@ _109, _93
@ arm/soar_wram.arm.c:217: 					if (ylen>0){ //only draw if that line has been higher this screen
	bgt	.L69		@,
@ arm/soar_wram.arm.c:229: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r6, r0, r6	@ tmp516, _93, _106
@ arm/soar_wram.arm.c:229: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r6, #6	@ tmp516,
	ble	.L13		@,
@ arm/soar_wram.arm.c:230: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	mov	r1, #0	@ tmp526,
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:230: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r3, r0, r4, lsl #5	@ tmp519, _93, i,
	add	r3, r3, r4, lsl #7	@ tmp520, tmp519, i,
@ arm/soar_wram.arm.c:230: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	ldr	r2, [r2, #64]	@ CurrentProc_6(D)->vid_page, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:230: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	sub	r3, r3, #-2147483647	@ tmp521, tmp520,
@ arm/soar_wram.arm.c:230: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	lsl	r3, r3, #1	@ tmp523, tmp521,
	strh	r1, [r2, r3]	@ movhi	@ tmp526, *_145
.L13:
@ arm/soar_wram.arm.c:203: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:203: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #127	@ i,
	ble	.L30		@,
@ arm/soar_wram.arm.c:193: 		zdist+=INC_ZSTEP){
	asr	r3, fp, #7	@ tmp528, zdist,
	add	r3, r3, fp, asr #6	@ tmp529, tmp528, zdist,
	asr	r2, fp, #8	@ tmp530, zdist,
	add	r3, r3, r2, lsl #2	@ tmp532, tmp529, tmp530,
	add	r3, r3, #2	@ _154, tmp532,
@ arm/soar_wram.arm.c:193: 		zdist+=INC_ZSTEP){
	add	fp, fp, r3	@ zdist, zdist, _154
@ arm/soar_wram.arm.c:192: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #48]	@ _83, %sfp
	cmp	r3, fp	@ _83, zdist
	bge	.L31		@,
.L32:
@ arm/soar_wram.arm.c:242: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r4, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, .L71+88	@ tmp400,
	ldr	r0, [r4, #64]	@, CurrentProc_6(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp400
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	ldr	r2, .L71+52	@ tmp401,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp403, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:242: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r4, #64]	@ tmp552, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp403, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #220	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L69:
@ arm/soar_wram.arm.c:220: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	fp, #40	@ zdist,
	bne	.L17		@,
@ arm/soar_wram.arm.c:220: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r0, r4, #61	@ tmp459, i,
@ arm/soar_wram.arm.c:220: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r0, #6	@ tmp459,
@ arm/soar_wram.arm.c:219: 						u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:220: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bls	.L18		@,
.L17:
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r1, [sp, #68]	@ _162, %sfp
	cmp	r1, #6	@ _162,
	bhi	.L19		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _96,
	bne	.L41		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp557, _89, _92
	bmi	.L41		@,
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ _170, _89, _92,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L71+92	@ tmp635,
	ldr	r0, .L71+96	@ tmp636,
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp463, _170,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_170]
	ldrh	r0, [r0, r3]	@, colourMap[_170]
	ldr	r2, [sp, #72]	@, %sfp
	ldr	r3, .L71+100	@ tmp637,
	mov	lr, pc
	bx	r3		@ tmp637
.L20:
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	fp, #256	@ zdist,
	bgt	.L22		@,
.L62:
@ arm/soar_wram.arm.c:225: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	r1, [r5, #-128]	@ zero_extendqisi2	@ _109, yBuffer[i_270]
.L18:
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r2, [r3, #64]	@ _120, CurrentProc_6(D)->vid_page
	add	r3, r4, r4, lsl #2	@ tmp490, i, i,
@ arm/soar_wram.arm.c:249: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r3, lsl #5	@ offset, _109, tmp490,
@ arm/soar_wram.arm.c:250: 	u16* base = vid_page + (offset);
	add	ip, r2, r1, lsl #1	@ tmp.34, _120, offset,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	lr, ip, r7, lsl #1	@ _264, tmp.34, ylen,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, lr	@ tmp.34, _264
@ arm/soar_wram.arm.c:225: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	str	r2, [sp, #28]	@ _120, %sfp
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r7, #1	@ _268, ylen,
@ arm/soar_wram.arm.c:250: 	u16* base = vid_page + (offset);
	lsl	r7, r1, #1	@ tmp493, offset,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L28		@,
	sub	r2, r2, #1	@ _341, _268,
	cmp	r2, #11	@ _341,
	lsr	r2, r2, #1	@ tmp496, _341,
	add	r3, r2, #1	@ niters.28, tmp496,
	str	r3, [sp, #36]	@ niters.28, %sfp
	lsr	r3, ip, #1	@ tmp499, tmp.34,
	and	r3, r3, #1	@ prolog_loop_niters.30, tmp499,
	bls	.L24		@,
	cmp	r3, #0	@ prolog_loop_niters.30,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldrne	r2, [sp, #28]	@ _120, %sfp
	strhne	r0, [r2, r7]	@ movhi	@ clr, *base_127
	ldr	r2, [sp, #36]	@ niters.28, %sfp
	sub	r2, r2, r3	@ niters.31, niters.28, prolog_loop_niters.30
	add	r3, r3, r1	@ tmp506, prolog_loop_niters.30, offset
	ldr	r1, [sp, #28]	@ _120, %sfp
	lsr	r7, r2, #1	@ bnd.32, niters.31,
	add	r3, r1, r3, lsl #1	@ vectp.36, _120, tmp506,
	lsl	r1, r0, #16	@ tmp502, clr,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	addne	ip, ip, #2	@ tmp.34, tmp.34,
	orr	r1, r1, r1, lsr #16	@ vect_cst__286, tmp502, tmp502,
	add	r7, r3, r7, lsl #2	@ _342, vectp.36, bnd.32,
.L26:
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	str	r1, [r3], #4	@ vect_cst__286, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_278]
	cmp	r3, r7	@ vectp.36, _342
	bne	.L26		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L28		@,
.L24:
	mov	r3, ip	@ i, tmp.34
	strh	r0, [r3], #2	@ movhi	@ clr, *i_293
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _264, i
	bls	.L28		@,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _264, i
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_293 + 2B]
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L28		@,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _264, i
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_293 + 4B]
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L28		@,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _264, i
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_293 + 6B]
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L28		@,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _264, i
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_293 + 8B]
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:251: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r0, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_293 + 10B]
.L28:
@ arm/soar_wram.arm.c:226: 					    yBuffer[i] = height_on_screen;
	strb	r6, [r5, #-128]	@ _106, yBuffer[i_270]
	b	.L13		@
.L19:
@ arm/soar_wram.arm.c:26: 	if (sunsetVal){
	ldr	r1, [sp, #72]	@ sunsetVal, %sfp
	cmp	r1, #0	@ sunsetVal,
	beq	.L21		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	ip, #0	@ _96,
	bne	.L39		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r1, r2, r3	@ tmp558, _89, _92
	bmi	.L39		@,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ tmp475, _89, _92,
	ldr	r2, .L71+92	@ tmp639,
	lsl	r3, r3, #1	@ tmp476, tmp475,
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	fp, #256	@ zdist,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrh	r0, [r2, r3]	@ clr,
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ble	.L62		@,
.L22:
@ arm/soar_wram.arm.c:223: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #32]	@, %sfp
	ldr	r1, [sp, #76]	@, %sfp
	ldr	r3, .L71+100	@ tmp641,
	mov	lr, pc
	bx	r3		@ tmp641
	b	.L62		@
.L21:
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _96,
	bne	.L41		@,
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp559, _89, _92
	bpl	.L70		@,
.L41:
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L20		@
.L70:
@ arm/soar_wram.arm.c:32: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ tmp481, _89, _92,
	ldr	r2, .L71+96	@ tmp640,
	lsl	r3, r3, #1	@ tmp482, tmp481,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L20		@
.L39:
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L20		@
.L68:
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp350, posX,
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L71+104	@ tmp355,
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp347, _345,
@ arm/soar_wram.arm.c:77: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp352, tmp350,
	lsl	r2, r2, #16	@, tmp347,
	lsl	r1, r1, #16	@, tmp352,
	str	r3, [sp]	@ tmp355,
	mov	r0, #8	@,
	ldr	r3, .L71+56	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp533
	b	.L10		@
.L72:
	.align	2
.L71:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	682
	.word	1022
	.word	translatedLocations
	.word	thumb_loop
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	10848
	.word	gObj_64x64
	.word	33812480
	.word	gObj_8x8
	.word	skies
	.word	CpuFastSet
	.word	16777248
	.word	fogClrs
	.word	pleftmatrix
	.word	heightMap
	.word	hosTables
	.word	vid_flip
	.word	colourMap_sunset
	.word	colourMap
	.word	iwram_clr_blend_asm
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
