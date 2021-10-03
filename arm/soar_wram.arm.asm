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
	mov	r3, #50331648	@ tmp315,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _11, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #220	@,,
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _11,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #24]	@ tmp575, %sfp
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L72		@,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _11,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L79	@ tmp326,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L69		@,
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp328, _11,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp328,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L79+4	@ tmp333,
@ arm/soar_wram.arm.c:59: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L79+8	@ tmp336,
.L69:
	str	r3, [sp]	@ tmp336,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L79+12	@,
	ldr	r4, .L79+16	@ tmp561,
	mov	lr, pc
	bx	r4		@ tmp561
.L3:
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_6(D)->ShowMap,
	bne	.L73		@,
.L6:
@ arm/soar_wram.arm.c:69: 	if (CurrentProc->sunsetVal < 3)
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r1, #84]	@ CurrentProc_6(D)->sunsetVal, CurrentProc_6(D)->sunsetVal
	cmp	r3, #2	@ CurrentProc_6(D)->sunsetVal,
	bgt	.L7		@,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r3, .L79+20	@ tmp352,
	ldr	r3, [r3, #208]	@ _23, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #40448	@ tmp353, _23,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	ldr	r2, [r1, #60]	@ _28, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #64	@ tmp353, tmp353,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r1, [r1, #56]	@ CurrentProc_6(D)->sPlayerStepZ, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	lsr	r3, r3, #10	@ tmp355, tmp353,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	rsb	r3, r3, #80	@ tmp356, tmp355,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #11	@ _28,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, r1, lsl #2	@ _27, tmp356, CurrentProc_6(D)->sPlayerStepZ,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	beq	.L38		@,
	bgt	.L9		@,
	cmp	r2, #9	@ _28,
	beq	.L39		@,
	cmp	r2, #10	@ _28,
	moveq	r1, #96	@ prephitmp_319,
	bne	.L7		@,
.L10:
@ arm/soar_wram.arm.c:84: 			ObjInsertSafe(9, flarex, flarey, &gObj_aff32x32, 0x3aa1+31);
	mov	ip, #15040	@ tmp362,
	lsl	r2, r3, #16	@, _27,
	mov	r0, #9	@,
	ldr	r3, .L79+24	@,
	str	ip, [sp]	@ tmp362,
	lsr	r2, r2, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp561
.L7:
@ arm/soar_wram.arm.c:90: 	int posY = CurrentProc->sFocusPtY;
	ldr	r0, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, [r0, #76]	@ posY, CurrentProc_6(D)->sFocusPtY
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L79+28	@ tmp365,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp364, posY,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp364, tmp365
@ arm/soar_wram.arm.c:89: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r0, #72]	@ posX, CurrentProc_6(D)->sFocusPtX
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L14		@,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L79+32	@ tmp369,
	sub	r1, r6, #1	@ tmp368, posX,
	cmp	r1, r2	@ tmp368, tmp369
	bls	.L74		@,
.L14:
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L79+36	@ tmp366,
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_6(D)->location
.L13:
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r3, .L79+40	@ tmp399,
	mov	lr, pc
	bx	r3		@ tmp399
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	cmp	r0, #0	@ tmp576,
	bne	.L75		@,
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #220	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L9:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #12	@ _28,
	moveq	r1, #160	@ prephitmp_319,
	beq	.L10		@,
	b	.L7		@
.L74:
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [r0, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_6(D)->ShowMap,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r3, #170	@ _373, posY,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L76		@,
.L15:
@ arm/soar_wram.arm.c:98: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L79+44	@ tmp382,
@ arm/soar_wram.arm.c:97: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r5, #6	@ posY, _373,
@ arm/soar_wram.arm.c:98: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp386, tmp382, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_51][posX_49]
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L79+36	@ tmp388,
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_54], translatedLocations[_54]
@ arm/soar_wram.arm.c:101: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_54], CurrentProc_6(D)->location
@ arm/soar_wram.arm.c:101: 	if (loc>0) {
	beq	.L13		@,
@ arm/soar_wram.arm.c:102: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp394, loc,
	add	r3, r3, #-905969664	@ tmp397, tmp394,
	add	r3, r3, #3932160	@ tmp397, tmp397,
	lsr	r3, r3, r2	@ tmp396, tmp397,
	str	r3, [sp]	@ tmp396,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L79+48	@,
	mov	lr, pc
	bx	r4		@ tmp561
	b	.L13		@
.L73:
@ arm/soar_wram.arm.c:63: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L79+52	@ tmp340,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp340,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L79+56	@,
	mov	lr, pc
	bx	r4		@ tmp561
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L79+60	@ tmp343,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp346, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp346, tmp346,
	lsl	r1, r1, #16	@ tmp348, tmp346,
	lsr	r1, r1, #16	@ tmp348, tmp348,
	str	r1, [sp]	@ tmp348,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L79+64	@,
	mov	lr, pc
	bx	r4		@ tmp561
	b	.L6		@
.L72:
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp320,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L79+12	@,
	ldr	r4, .L79+16	@ tmp561,
	str	ip, [sp]	@ tmp320,
	mov	lr, pc
	bx	r4		@ tmp561
	b	.L3		@
.L75:
@ arm/soar_wram.arm.c:188: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:193: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r3, [r1, #84]	@ sunsetVal, CurrentProc_6(D)->sunsetVal
@ arm/soar_wram.arm.c:196: 	sky = skies[(sunsetVal)>>1];
	asr	r6, r3, #1	@ _67, sunsetVal,
@ arm/soar_wram.arm.c:193: 	int sunsetVal = CurrentProc->sunsetVal;
	str	r3, [sp, #72]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:186: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r1, #44]	@ posX, CurrentProc_6(D)->sPlayerPosX
@ arm/soar_wram.arm.c:188: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r1, #60]	@ angle, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:186: 	int posX = CurrentProc->sPlayerPosX;
	str	r3, [sp, #40]	@ posX, %sfp
@ arm/soar_wram.arm.c:196: 	sky = skies[(sunsetVal)>>1];
	ldr	r3, .L79+68	@ tmp409,
@ arm/soar_wram.arm.c:190: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	fp, [r1, #56]	@ altitude, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r3, r6, lsl #2]	@ skies[_67], skies[_67]
	add	r3, r5, r5, lsl #2	@ tmp404, angle, angle,
	lsl	r3, r3, #9	@ tmp406, tmp404,
	add	r3, r3, fp, lsl #1	@ tmp407, tmp406, altitude,
	sub	r0, r0, #400	@ tmp410, skies[_67],
	add	r0, r0, r3, lsl #2	@, tmp410, tmp407,
	mov	r3, r1	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:187: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r3, #48]	@ posY, CurrentProc_6(D)->sPlayerPosY
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	r2, #10240	@,
	ldr	r1, [r1, #64]	@, CurrentProc_6(D)->vid_page
	ldr	r7, .L79+72	@ tmp413,
@ arm/soar_wram.arm.c:187: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #44]	@ posY, %sfp
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	lr, pc
	bx	r7		@ tmp413
@ arm/soar_wram.arm.c:204: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp414,
	ldr	r2, .L79+76	@,
	add	r1, sp, #88	@,,
	add	r0, sp, #84	@,,
	str	r3, [sp, #84]	@ tmp414, tmp
	mov	lr, pc
	bx	r7		@ tmp413
@ arm/soar_wram.arm.c:210: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, fp, #4	@ tmp422, altitude,
@ arm/soar_wram.arm.c:210: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _100, tmp422,
	add	r2, r3, #3	@ _100, _100,
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, fp, #1	@ _73, altitude,
@ arm/soar_wram.arm.c:209: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r10, r3, #24	@ zdist, _73,
@ arm/soar_wram.arm.c:207: 	fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L79+80	@ tmp419,
	lsl	r6, r6, #1	@ tmp420, _67,
	ldrh	r3, [r3, r6]	@ fogclr, fogClrs[_67]
@ arm/soar_wram.arm.c:189: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp400, angle,
@ arm/soar_wram.arm.c:210: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r10, r2	@ zdist, _100
	str	r2, [sp, #48]	@ _100, %sfp
@ arm/soar_wram.arm.c:207: 	fogclr = fogClrs[sunsetVal>>1];
	str	r3, [sp, #76]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:189: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp400,
@ arm/soar_wram.arm.c:210: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L37		@,
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp430, angle
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _335, tmp430,
	lsl	r3, r3, #9	@ tmp558, _335,
	str	r3, [sp, #52]	@ tmp558, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp431, tangent
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _337, tmp431,
	lsl	r3, r3, #9	@ tmp559, _337,
	str	r3, [sp, #56]	@ tmp559, %sfp
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r3, [sp, #72]	@ sunsetVal, %sfp
	lsl	r2, r5, #9	@ tmp562, angle,
	str	r2, [sp, #60]	@ tmp562, %sfp
	sub	r3, r3, #1	@ _179, sunsetVal,
	lsl	r2, r4, #9	@ tmp563, tangent,
	str	r2, [sp, #64]	@ tmp563, %sfp
	str	r3, [sp, #68]	@ _179, %sfp
.L36:
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp562, %sfp
@ arm/soar_wram.arm.c:221: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, #0	@ i,
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r0, .L79+84	@ tmp641,
	add	r3, r3, r10	@ tmp434, tmp562, zdist
	lsl	r3, r3, #1	@ tmp435, tmp434,
	ldrsh	r1, [r0, r3]	@ _86, pleftmatrix[angle_62][zdist_283]
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp558, %sfp
	add	r3, r3, r10	@ tmp439, tmp558, zdist
	lsl	r3, r3, #1	@ tmp440, tmp439,
	ldrsh	r2, [r0, r3]	@ _91, pleftmatrix[_335][zdist_283]
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #64]	@ tmp563, %sfp
	add	r3, r3, r10	@ tmp444, tmp563, zdist
	lsl	r3, r3, #1	@ tmp445, tmp444,
	ldrsh	r3, [r0, r3]	@ pleftmatrix[tangent_64][zdist_283], pleftmatrix[tangent_64][zdist_283]
@ arm/soar_wram.arm.c:217: 		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ dx, pleftmatrix[tangent_64][zdist_283], _86
	str	r3, [sp, #16]	@ dx, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #40]	@ posX, %sfp
	add	r3, r3, r1	@ _87, posX, _86
	str	r3, [sp, #8]	@ _87, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp559, %sfp
	add	r3, r3, r10	@ tmp450, tmp559, zdist
	lsl	r3, r3, #1	@ tmp451, tmp450,
	ldrsh	r3, [r0, r3]	@ pleftmatrix[_337][zdist_283], pleftmatrix[_337][zdist_283]
@ arm/soar_wram.arm.c:218: 		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ dy, pleftmatrix[_337][zdist_283], _91
	str	r3, [sp, #20]	@ dy, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ posY, %sfp
	add	r3, r3, r2	@ _92, posY, _91
	str	r3, [sp, #12]	@ _92, %sfp
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r10, #256	@ tmp454, zdist,
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _133, tmp454,
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r8, r10, #1	@ _121, zdist,
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	str	r3, [sp, #32]	@ _133, %sfp
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r9, r8, #8	@ tmp567, _121,
.L35:
@ arm/soar_wram.arm.c:229: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	add	r3, r4, #216	@ tmp695, i,
	add	r5, sp, r3	@ tmp560,, tmp695
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _110, yBuffer[i_290]
@ arm/soar_wram.arm.c:229: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r0, #159	@ _110,
	bhi	.L18		@,
@ arm/soar_wram.arm.c:223: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r2, [sp, #16]	@ tmp458, %sfp
	mul	r2, r4, r2	@ tmp458, i, tmp458
@ arm/soar_wram.arm.c:223: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r3, [sp, #8]	@ _87, %sfp
	add	r2, r3, r2, asr #7	@ _106, _87, tmp458,
@ arm/soar_wram.arm.c:223: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r3, [sp, #20]	@ tmp460, %sfp
	mul	r3, r4, r3	@ tmp460, i, tmp460
@ arm/soar_wram.arm.c:223: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r1, [sp, #12]	@ _92, %sfp
	add	r3, r1, r3, asr #7	@ _109, _92, tmp460,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _109,
	cmplt	r2, #1024	@, _106,
	movge	ip, #1	@ _113,
	movlt	ip, #0	@ _113,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r6, #0	@ _120,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L19		@,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, r2, r3	@ tmp581, _106, _109
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r6, ip	@ _120, _113
@ arm/soar_wram.arm.c:38: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L79+88	@ tmp660,
	addpl	r1, r1, r2	@ tmp470, tmp660, _106
	ldrbpl	r6, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _120, heightMap[_118]
.L19:
@ arm/soar_wram.arm.c:47: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	lr, fp, fp, lsl #8	@ tmp478, altitude, altitude,
	rsb	lr, lr, lr, lsl #8	@ tmp480, tmp478, tmp478,
	sub	r1, r9, r8	@ tmp475, tmp567, _121
	add	r1, r1, lr	@ tmp481, tmp475, tmp480
	ldr	lr, .L79+92	@ tmp661,
	add	r1, lr, r1	@ tmp482, tmp661, tmp481
	ldrb	r6, [r1, r6]	@ zero_extendqisi2	@ _123, hosTables[altitude_65][_121][_122]
@ arm/soar_wram.arm.c:232: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	cmp	r6, #0	@ _123,
@ arm/soar_wram.arm.c:232: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	addeq	r4, r4, #4	@ i, i,
@ arm/soar_wram.arm.c:232: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	beq	.L18		@,
@ arm/soar_wram.arm.c:234: 					int ylen = height_on_screen - yBuffer[i];
	sub	r7, r6, r0	@ ylen, _123, _126
@ arm/soar_wram.arm.c:235: 					if (ylen>0){ //only draw if that line has been higher this screen
	cmp	r7, #0	@ ylen,
@ arm/soar_wram.arm.c:234: 					int ylen = height_on_screen - yBuffer[i];
	mov	r1, r0	@ _126, _110
@ arm/soar_wram.arm.c:235: 					if (ylen>0){ //only draw if that line has been higher this screen
	bgt	.L77		@,
@ arm/soar_wram.arm.c:247: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r6, r0, r6	@ tmp541, _110, _123
@ arm/soar_wram.arm.c:247: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r6, #6	@ tmp541,
	ble	.L18		@,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	mov	r1, #0	@ tmp551,
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r3, r0, r4, lsl #5	@ tmp544, _110, i,
	add	r3, r3, r4, lsl #7	@ tmp545, tmp544, i,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	ldr	r2, [r2, #64]	@ CurrentProc_6(D)->vid_page, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	sub	r3, r3, #-2147483647	@ tmp546, tmp545,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	lsl	r3, r3, #1	@ tmp548, tmp546,
	strh	r1, [r2, r3]	@ movhi	@ tmp551, *_162
.L18:
@ arm/soar_wram.arm.c:221: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:221: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #127	@ i,
	ble	.L35		@,
@ arm/soar_wram.arm.c:211: 		zdist+=INC_ZSTEP){
	asr	r3, r10, #7	@ tmp553, zdist,
	add	r3, r3, r10, asr #6	@ tmp554, tmp553, zdist,
	asr	r2, r10, #8	@ tmp555, zdist,
	add	r3, r3, r2, lsl #2	@ tmp557, tmp554, tmp555,
	add	r3, r3, #2	@ _171, tmp557,
@ arm/soar_wram.arm.c:211: 		zdist+=INC_ZSTEP){
	add	r10, r10, r3	@ zdist, zdist, _171
@ arm/soar_wram.arm.c:210: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #48]	@ _100, %sfp
	cmp	r3, r10	@ _100, zdist
	bge	.L36		@,
.L37:
@ arm/soar_wram.arm.c:260: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r4, [sp, #24]	@ CurrentProc, %sfp
	ldr	r3, .L79+96	@ tmp425,
	ldr	r0, [r4, #64]	@, CurrentProc_6(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp425
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	ldr	r2, .L79+60	@ tmp426,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp428, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:260: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r4, #64]	@ tmp577, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp428, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #220	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L77:
@ arm/soar_wram.arm.c:238: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r10, #40	@ zdist,
	bne	.L22		@,
@ arm/soar_wram.arm.c:238: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r0, r4, #61	@ tmp484, i,
@ arm/soar_wram.arm.c:238: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r0, #6	@ tmp484,
@ arm/soar_wram.arm.c:237: 						u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:238: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bls	.L23		@,
.L22:
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r1, [sp, #68]	@ _179, %sfp
	cmp	r1, #6	@ _179,
	bhi	.L24		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _113,
	bne	.L49		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp582, _106, _109
	bmi	.L49		@,
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ _187, _106, _109,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L79+100	@ tmp663,
	ldr	r0, .L79+104	@ tmp664,
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp488, _187,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_187]
	ldrh	r0, [r0, r3]	@, colourMap[_187]
	ldr	r2, [sp, #72]	@, %sfp
	ldr	r3, .L79+108	@ tmp665,
	mov	lr, pc
	bx	r3		@ tmp665
.L25:
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r10, #256	@ zdist,
	bgt	.L27		@,
.L70:
@ arm/soar_wram.arm.c:243: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	r1, [r5, #-128]	@ zero_extendqisi2	@ _126, yBuffer[i_290]
.L23:
	ldr	r3, [sp, #24]	@ CurrentProc, %sfp
	ldr	r2, [r3, #64]	@ _137, CurrentProc_6(D)->vid_page
	add	r3, r4, r4, lsl #2	@ tmp515, i, i,
@ arm/soar_wram.arm.c:267: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r3, lsl #5	@ offset, _126, tmp515,
@ arm/soar_wram.arm.c:268: 	u16* base = vid_page + (offset);
	add	ip, r2, r1, lsl #1	@ tmp.34, _137, offset,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	lr, ip, r7, lsl #1	@ _284, tmp.34, ylen,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, lr	@ tmp.34, _284
@ arm/soar_wram.arm.c:243: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	str	r2, [sp, #28]	@ _137, %sfp
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r7, #1	@ _288, ylen,
@ arm/soar_wram.arm.c:268: 	u16* base = vid_page + (offset);
	lsl	r7, r1, #1	@ tmp518, offset,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L33		@,
	sub	r2, r2, #1	@ _29, _288,
	cmp	r2, #11	@ _29,
	lsr	r2, r2, #1	@ tmp521, _29,
	add	r3, r2, #1	@ niters.28, tmp521,
	str	r3, [sp, #36]	@ niters.28, %sfp
	lsr	r3, ip, #1	@ tmp524, tmp.34,
	and	r3, r3, #1	@ prolog_loop_niters.30, tmp524,
	bls	.L29		@,
	cmp	r3, #0	@ prolog_loop_niters.30,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldrne	r2, [sp, #28]	@ _137, %sfp
	strhne	r0, [r2, r7]	@ movhi	@ clr, *base_144
	ldr	r2, [sp, #36]	@ niters.28, %sfp
	sub	r2, r2, r3	@ niters.31, niters.28, prolog_loop_niters.30
	add	r3, r3, r1	@ tmp531, prolog_loop_niters.30, offset
	ldr	r1, [sp, #28]	@ _137, %sfp
	lsr	r7, r2, #1	@ bnd.32, niters.31,
	add	r3, r1, r3, lsl #1	@ vectp.36, _137, tmp531,
	lsl	r1, r0, #16	@ tmp527, clr,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	addne	ip, ip, #2	@ tmp.34, tmp.34,
	orr	r1, r1, r1, lsr #16	@ vect_cst__314, tmp527, tmp527,
	add	r7, r3, r7, lsl #2	@ _315, vectp.36, bnd.32,
.L31:
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	str	r1, [r3], #4	@ vect_cst__314, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_306]
	cmp	r3, r7	@ vectp.36, _315
	bne	.L31		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L33		@,
.L29:
	mov	r3, ip	@ i, tmp.34
	strh	r0, [r3], #2	@ movhi	@ clr, *i_327
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _284, i
	bls	.L33		@,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _284, i
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_327 + 2B]
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L33		@,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _284, i
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_327 + 4B]
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L33		@,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _284, i
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_327 + 6B]
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L33		@,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	lr, r3	@ _284, i
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_327 + 8B]
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:269: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r0, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_327 + 10B]
.L33:
@ arm/soar_wram.arm.c:244: 					    yBuffer[i] = height_on_screen;
	strb	r6, [r5, #-128]	@ _123, yBuffer[i_290]
	b	.L18		@
.L24:
@ arm/soar_wram.arm.c:26: 	if (sunsetVal){
	ldr	r1, [sp, #72]	@ sunsetVal, %sfp
	cmp	r1, #0	@ sunsetVal,
	beq	.L26		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	ip, #0	@ _113,
	bne	.L47		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r1, r2, r3	@ tmp583, _106, _109
	bmi	.L47		@,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ tmp500, _106, _109,
	ldr	r2, .L79+100	@ tmp667,
	lsl	r3, r3, #1	@ tmp501, tmp500,
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r10, #256	@ zdist,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrh	r0, [r2, r3]	@ clr,
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ble	.L70		@,
.L27:
@ arm/soar_wram.arm.c:241: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #32]	@, %sfp
	ldr	r1, [sp, #76]	@, %sfp
	ldr	r3, .L79+108	@ tmp669,
	mov	lr, pc
	bx	r3		@ tmp669
	b	.L70		@
.L26:
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _113,
	bne	.L49		@,
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp584, _106, _109
	bpl	.L78		@,
.L49:
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L25		@
.L39:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	mov	r1, #64	@ prephitmp_319,
	b	.L10		@
.L78:
@ arm/soar_wram.arm.c:32: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ tmp506, _106, _109,
	ldr	r2, .L79+104	@ tmp668,
	lsl	r3, r3, #1	@ tmp507, tmp506,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L25		@
.L38:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	mov	r1, #128	@ prephitmp_319,
	b	.L10		@
.L47:
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L25		@
.L76:
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp375, posX,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L79+112	@ tmp380,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp372, _373,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp377, tmp375,
	lsl	r2, r2, #16	@, tmp372,
	lsl	r1, r1, #16	@, tmp377,
	str	r3, [sp]	@ tmp380,
	mov	r0, #8	@,
	ldr	r3, .L79+64	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp561
	b	.L15		@
.L80:
	.align	2
.L79:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	50343936
	.word	gObj_aff32x32
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
