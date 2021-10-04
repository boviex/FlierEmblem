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
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp301,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _11, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _11,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	fp, r0	@ CurrentProc, tmp552
	sub	sp, sp, #212	@,,
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L62		@,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _11,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L68	@ tmp312,
@ arm/soar_wram.arm.c:57: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L60		@,
@ arm/soar_wram.arm.c:55: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp314, _11,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp314,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L68+4	@ tmp319,
@ arm/soar_wram.arm.c:59: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L68+8	@ tmp322,
.L60:
	str	r3, [sp]	@ tmp322,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L68+12	@,
	ldr	r4, .L68+16	@ tmp541,
	mov	lr, pc
	bx	r4		@ tmp541
.L3:
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->ShowMap)
	ldr	r3, [fp, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_6(D)->ShowMap,
	bne	.L63		@,
.L6:
@ arm/soar_wram.arm.c:69: 	if (CurrentProc->sunsetVal < 3)
	ldr	r3, [fp, #84]	@ CurrentProc_6(D)->sunsetVal, CurrentProc_6(D)->sunsetVal
	cmp	r3, #2	@ CurrentProc_6(D)->sunsetVal,
	bgt	.L7		@,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r3, .L68+20	@ tmp338,
	ldr	r3, [r3, #208]	@ _23, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #40448	@ tmp339, _23,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	ldr	r2, [fp, #60]	@ _28, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #64	@ tmp339, tmp339,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r1, [fp, #56]	@ CurrentProc_6(D)->sPlayerStepZ, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	lsr	r3, r3, #10	@ tmp341, tmp339,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	rsb	r3, r3, #80	@ tmp342, tmp341,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #11	@ _28,
@ arm/soar_wram.arm.c:73: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, r1, lsl #2	@ _27, tmp342, CurrentProc_6(D)->sPlayerStepZ,
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	beq	.L33		@,
	bgt	.L9		@,
	cmp	r2, #9	@ _28,
	beq	.L34		@,
	cmp	r2, #10	@ _28,
	moveq	r1, #96	@ prephitmp_334,
	bne	.L7		@,
.L10:
@ arm/soar_wram.arm.c:84: 			ObjInsertSafe(9, flarex, flarey, &gObj_aff32x32, 0x3aa1+31);
	mov	ip, #15040	@ tmp348,
	lsl	r2, r3, #16	@, _27,
	mov	r0, #9	@,
	ldr	r3, .L68+24	@,
	str	ip, [sp]	@ tmp348,
	lsr	r2, r2, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp541
.L7:
@ arm/soar_wram.arm.c:90: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [fp, #76]	@ posY, CurrentProc_6(D)->sFocusPtY
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L68+28	@ tmp351,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp350, posY,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp350, tmp351
@ arm/soar_wram.arm.c:89: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [fp, #72]	@ posX, CurrentProc_6(D)->sFocusPtX
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L14		@,
@ arm/soar_wram.arm.c:94: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L68+32	@ tmp355,
	sub	r1, r6, #1	@ tmp354, posX,
	cmp	r1, r2	@ tmp354, tmp355
	bls	.L64		@,
.L14:
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L68+36	@ tmp352,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [fp, #80]	@ translatedLocations[0], CurrentProc_6(D)->location
.L13:
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	mov	r0, fp	@, CurrentProc
	ldr	r3, .L68+40	@ tmp385,
	mov	lr, pc
	bx	r3		@ tmp385
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	cmp	r0, #0	@ tmp553,
	bne	.L65		@,
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L9:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #12	@ _28,
	moveq	r1, #160	@ prephitmp_334,
	beq	.L10		@,
	b	.L7		@
.L64:
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [fp, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_6(D)->ShowMap,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r3, #170	@ _411, posY,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L66		@,
.L15:
@ arm/soar_wram.arm.c:98: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L68+44	@ tmp368,
@ arm/soar_wram.arm.c:97: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r5, #6	@ posY, _411,
@ arm/soar_wram.arm.c:98: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp372, tmp368, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_51][posX_49]
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L68+36	@ tmp374,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_54], translatedLocations[_54]
@ arm/soar_wram.arm.c:101: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:100: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [fp, #80]	@ translatedLocations[_54], CurrentProc_6(D)->location
@ arm/soar_wram.arm.c:101: 	if (loc>0) {
	beq	.L13		@,
@ arm/soar_wram.arm.c:102: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp380, loc,
	add	r3, r3, #-905969664	@ tmp383, tmp380,
	add	r3, r3, #3932160	@ tmp383, tmp383,
	lsr	r3, r3, r2	@ tmp382, tmp383,
	str	r3, [sp]	@ tmp382,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L68+48	@,
	mov	lr, pc
	bx	r4		@ tmp541
	b	.L13		@
.L34:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	mov	r1, #64	@ prephitmp_334,
	b	.L10		@
.L63:
@ arm/soar_wram.arm.c:63: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L68+52	@ tmp326,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp326,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L68+56	@,
	mov	lr, pc
	bx	r4		@ tmp541
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L68+60	@ tmp329,
@ arm/soar_wram.arm.c:65: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp332, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp332, tmp332,
	lsl	r1, r1, #16	@ tmp334, tmp332,
	lsr	r1, r1, #16	@ tmp334, tmp334,
	str	r1, [sp]	@ tmp334,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L68+64	@,
	mov	lr, pc
	bx	r4		@ tmp541
	b	.L6		@
.L62:
@ arm/soar_wram.arm.c:56: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp306,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L68+12	@,
	ldr	r4, .L68+16	@ tmp541,
	str	ip, [sp]	@ tmp306,
	mov	lr, pc
	bx	r4		@ tmp541
	b	.L3		@
.L65:
@ arm/soar_wram.arm.c:193: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r3, [fp, #84]	@ sunsetVal, CurrentProc_6(D)->sunsetVal
	str	r3, [sp, #64]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:196: 	sky = skies[(sunsetVal)>>1]; //multiple skyboxes to transition to sunset
	asr	r6, r3, #1	@ _67, sunsetVal,
@ arm/soar_wram.arm.c:186: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [fp, #44]	@ posX, CurrentProc_6(D)->sPlayerPosX
@ arm/soar_wram.arm.c:188: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [fp, #60]	@ angle, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:186: 	int posX = CurrentProc->sPlayerPosX;
	str	r3, [sp, #28]	@ posX, %sfp
@ arm/soar_wram.arm.c:196: 	sky = skies[(sunsetVal)>>1]; //multiple skyboxes to transition to sunset
	ldr	r3, .L68+68	@ tmp395,
@ arm/soar_wram.arm.c:190: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r9, [fp, #56]	@ altitude, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //sky depends on angle and altitude
	ldr	r0, [r3, r6, lsl #2]	@ skies[_67], skies[_67]
	add	r3, r5, r5, lsl #2	@ tmp390, angle, angle,
	lsl	r3, r3, #9	@ tmp392, tmp390,
	add	r3, r3, r9, lsl #1	@ tmp393, tmp392, altitude,
	sub	r0, r0, #400	@ tmp396, skies[_67],
	add	r0, r0, r3, lsl #2	@, tmp396, tmp393,
@ arm/soar_wram.arm.c:187: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [fp, #48]	@ posY, CurrentProc_6(D)->sPlayerPosY
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //sky depends on angle and altitude
	mov	r2, #10240	@,
	ldr	r1, [fp, #64]	@, CurrentProc_6(D)->vid_page
	ldr	r7, .L68+72	@ tmp399,
@ arm/soar_wram.arm.c:187: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #32]	@ posY, %sfp
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //sky depends on angle and altitude
	mov	lr, pc
	bx	r7		@ tmp399
@ arm/soar_wram.arm.c:200: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp400,
	ldr	r2, .L68+76	@,
	add	r1, sp, #80	@,,
	add	r0, sp, #76	@,,
	str	r3, [sp, #76]	@ tmp400, tmp
	mov	lr, pc
	bx	r7		@ tmp399
@ arm/soar_wram.arm.c:206: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r9, #4	@ tmp405, altitude,
@ arm/soar_wram.arm.c:206: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _99, tmp405,
	add	r2, r3, #3	@ _99, _99,
@ arm/soar_wram.arm.c:198: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //sky depends on angle and altitude
	lsl	r3, r9, #1	@ _73, altitude,
@ arm/soar_wram.arm.c:205: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r10, r3, #24	@ zdist, _73,
@ arm/soar_wram.arm.c:189: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp386, angle,
@ arm/soar_wram.arm.c:206: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r10, r2	@ zdist, _99
	str	r2, [sp, #36]	@ _99, %sfp
@ arm/soar_wram.arm.c:189: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp386,
@ arm/soar_wram.arm.c:206: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L32		@,
@ arm/soar_wram.arm.c:239: 							    else fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L68+80	@ tmp547,
	add	r3, r3, r6, lsl #1	@ tmp549, tmp547, _67,
	str	r3, [sp, #68]	@ tmp549, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp413, angle
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _350, tmp413,
	lsl	r3, r3, #9	@ tmp543, _350,
	str	r3, [sp, #48]	@ tmp543, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp414, tangent
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _352, tmp414,
	lsl	r3, r3, #9	@ tmp544, _352,
	str	r3, [sp, #52]	@ tmp544, %sfp
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r3, [sp, #64]	@ sunsetVal, %sfp
	lsl	r2, r5, #9	@ tmp538, angle,
	str	r2, [sp, #40]	@ tmp538, %sfp
	sub	r3, r3, #1	@ _194, sunsetVal,
	lsl	r2, r4, #9	@ tmp539, tangent,
	str	r2, [sp, #44]	@ tmp539, %sfp
	str	r3, [sp, #56]	@ _194, %sfp
	str	fp, [sp, #20]	@ CurrentProc, %sfp
.L31:
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #40]	@ tmp538, %sfp
	ldr	r1, .L68+84	@ tmp587,
	add	r3, r3, r10	@ tmp417, tmp538, zdist
	lsl	r3, r3, #1	@ tmp418, tmp417,
	ldrsh	r2, [r1, r3]	@ _85, pleftmatrix[angle_62][zdist_233]
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp543, %sfp
	add	r3, r3, r10	@ tmp422, tmp543, zdist
	lsl	r3, r3, #1	@ tmp423, tmp422,
	ldrsh	fp, [r1, r3]	@ _90, pleftmatrix[_350][zdist_233]
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp539, %sfp
	add	r3, r3, r10	@ tmp427, tmp539, zdist
	lsl	r3, r3, #1	@ tmp428, tmp427,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[tangent_64][zdist_233], pleftmatrix[tangent_64][zdist_233]
@ arm/soar_wram.arm.c:211: 		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r2	@ dx, pleftmatrix[tangent_64][zdist_233], _85
	str	r3, [sp, #12]	@ dx, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #28]	@ posX, %sfp
	add	r3, r3, r2	@ _86, posX, _85
	str	r3, [sp, #8]	@ _86, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp544, %sfp
	add	r3, r3, r10	@ tmp433, tmp544, zdist
	lsl	r3, r3, #1	@ tmp434, tmp433,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[_352][zdist_233], pleftmatrix[_352][zdist_233]
@ arm/soar_wram.arm.c:212: 		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, fp	@ dy, pleftmatrix[_352][zdist_233], _90
	str	r3, [sp, #16]	@ dy, %sfp
@ arm/soar_wram.arm.c:115: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #32]	@ posY, %sfp
	add	fp, r3, fp	@ _91, posY, _90
@ arm/soar_wram.arm.c:240: 							    clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r10, #256	@ tmp437, zdist,
@ arm/soar_wram.arm.c:240: 							    clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _146, tmp437,
	str	r3, [sp, #24]	@ _146, %sfp
@ arm/soar_wram.arm.c:47: 	height = hosTables[altitude][zdist>>1][height];
	asr	r7, r10, #1	@ _119, zdist,
	mov	r3, r10	@ zdist, zdist
@ arm/soar_wram.arm.c:214: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, #0	@ i,
@ arm/soar_wram.arm.c:47: 	height = hosTables[altitude][zdist>>1][height];
	mov	r10, fp	@ _91, _91
.L30:
@ arm/soar_wram.arm.c:218: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup?
	add	r2, r4, #208	@ tmp626, i,
	add	r5, sp, r2	@ tmp542,, tmp626
	ldrb	ip, [r5, #-128]	@ zero_extendqisi2	@ _109, yBuffer[i_306]
@ arm/soar_wram.arm.c:218: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup?
	cmp	ip, #159	@ _109,
	bhi	.L18		@,
@ arm/soar_wram.arm.c:216: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)}; //TODO: remove the mul and add dx/dy each loop without rounding errors
	ldr	r1, [sp, #12]	@ tmp441, %sfp
	mul	r1, r4, r1	@ tmp441, i, tmp441
@ arm/soar_wram.arm.c:216: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)}; //TODO: remove the mul and add dx/dy each loop without rounding errors
	ldr	r2, [sp, #8]	@ _86, %sfp
	add	r1, r2, r1, asr #7	@ _105, _86, tmp441,
@ arm/soar_wram.arm.c:216: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)}; //TODO: remove the mul and add dx/dy each loop without rounding errors
	ldr	r2, [sp, #16]	@ tmp443, %sfp
	mul	r2, r4, r2	@ tmp443, i, tmp443
@ arm/soar_wram.arm.c:216: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)}; //TODO: remove the mul and add dx/dy each loop without rounding errors
	add	r2, r10, r2, asr #7	@ _108, _91, tmp443,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ _108,
	cmplt	r1, #1024	@, _105,
	movge	lr, #1	@ _112,
	movlt	lr, #0	@ _112,
	movge	r8, #0	@ _365,
	bge	.L19		@,
@ arm/soar_wram.arm.c:37: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r0, r1, r2	@ tmp557, _105, _108
	movmi	r8, lr	@ _365, _112
@ arm/soar_wram.arm.c:38: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r0, .L68+88	@ tmp451,
	addpl	r0, r0, r1	@ tmp453, tmp451, _105
@ arm/soar_wram.arm.c:47: 	height = hosTables[altitude][zdist>>1][height];
	ldrbpl	r8, [r0, r2, lsl #10]	@ zero_extendqisi2	@ _365, heightMap[_117]
.L19:
@ arm/soar_wram.arm.c:47: 	height = hosTables[altitude][zdist>>1][height];
	rsb	r6, r9, r9, lsl #8	@ tmp461, altitude, altitude,
	rsb	r6, r6, r6, lsl #8	@ tmp463, tmp461, tmp461,
	rsb	r0, r7, r7, lsl #8	@ tmp458, _119, _119,
	add	r0, r0, r6	@ tmp464, tmp458, tmp463
	ldr	r6, .L68+92	@ tmp604,
	add	r0, r6, r0	@ tmp465, tmp604, tmp464
	ldrb	r6, [r0, r8]	@ zero_extendqisi2	@ height, hosTables[altitude_65][_119][prephitmp_366]
@ arm/soar_wram.arm.c:221: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height because it's probably off the bottom of the screen?
	cmp	r6, #0	@ height,
@ arm/soar_wram.arm.c:221: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height because it's probably off the bottom of the screen?
	addeq	r4, r4, #4	@ i, i,
@ arm/soar_wram.arm.c:221: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height because it's probably off the bottom of the screen?
	beq	.L18		@,
@ arm/soar_wram.arm.c:223: 					int ylen = height_on_screen - yBuffer[i];
	sub	r8, r6, ip	@ ylen, height, _125
@ arm/soar_wram.arm.c:224: 					if (ylen>0){ //only draw if that line has been higher this screen
	cmp	r8, #0	@ ylen,
@ arm/soar_wram.arm.c:223: 					int ylen = height_on_screen - yBuffer[i];
	mov	r0, ip	@ _125, _109
@ arm/soar_wram.arm.c:224: 					if (ylen>0){ //only draw if that line has been higher this screen
	ble	.L21		@,
@ arm/soar_wram.arm.c:235: 							    	int offset = (i<<5) + (i<<7) + yBuffer[i] + 2;
	add	fp, r4, r4, lsl #2	@ tmp469, i, i,
@ arm/soar_wram.arm.c:227: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4)))) //conditions for being in shadow
	cmp	r3, #40	@ zdist,
@ arm/soar_wram.arm.c:235: 							    	int offset = (i<<5) + (i<<7) + yBuffer[i] + 2;
	lsl	fp, fp, #5	@ tmp470, tmp469,
@ arm/soar_wram.arm.c:227: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4)))) //conditions for being in shadow
	bne	.L22		@,
@ arm/soar_wram.arm.c:227: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4)))) //conditions for being in shadow
	sub	ip, r4, #61	@ tmp471, i,
@ arm/soar_wram.arm.c:227: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4)))) //conditions for being in shadow
	cmp	ip, #6	@ tmp471,
@ arm/soar_wram.arm.c:226: 						u16 clr = 0; //default to shadow
	movls	ip, #0	@ clr,
@ arm/soar_wram.arm.c:227: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4)))) //conditions for being in shadow
	bls	.L23		@,
.L22:
@ arm/soar_wram.arm.c:19: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	r0, [sp, #56]	@ _194, %sfp
	cmp	r0, #6	@ _194,
	bhi	.L24		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _112,
	bne	.L44		@,
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp558, _105, _108
	bmi	.L44		@,
	str	r3, [sp, #60]	@ zdist, %sfp
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ _202, _105, _108,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r3, .L68+96	@ tmp606,
@ arm/soar_wram.arm.c:22: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r1, .L68+100	@ tmp474,
	lsl	r2, r2, #1	@ tmp475, _202,
@ arm/soar_wram.arm.c:24: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r0, [r3, r2]	@, colourMap[_202]
	ldrh	r1, [r1, r2]	@, colourMap_sunset[_202]
	ldr	r3, .L68+104	@ tmp607,
	ldr	r2, [sp, #64]	@, %sfp
	mov	lr, pc
	bx	r3		@ tmp607
	mov	ip, r0	@ clr, tmp555
	ldr	r3, [sp, #60]	@ zdist, %sfp
.L25:
@ arm/soar_wram.arm.c:230: 						    if (zdist > (FOG_DISTANCE))
	cmp	r3, #256	@ zdist,
	bgt	.L27		@,
.L67:
@ arm/soar_wram.arm.c:235: 							    	int offset = (i<<5) + (i<<7) + yBuffer[i] + 2;
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _125, yBuffer[i_306]
.L23:
@ arm/soar_wram.arm.c:266: 	DmaFill16(0, color, base, (ylen<<1)); //dma 0 is the highest priority
	mov	r1, #67108864	@ tmp514,
@ arm/soar_wram.arm.c:262: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r2, r0, fp	@ offset, _125, tmp470
@ arm/soar_wram.arm.c:263: 	u16* base = vid_page + (offset);
	ldr	r0, [sp, #20]	@ CurrentProc, %sfp
	ldr	r0, [r0, #64]	@ CurrentProc_6(D)->vid_page, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:266: 	DmaFill16(0, color, base, (ylen<<1)); //dma 0 is the highest priority
	orr	r8, r8, #-2130706432	@ _165, ylen,
@ arm/soar_wram.arm.c:263: 	u16* base = vid_page + (offset);
	add	r2, r0, r2, lsl #1	@ base, CurrentProc_6(D)->vid_page, offset,
@ arm/soar_wram.arm.c:266: 	DmaFill16(0, color, base, (ylen<<1)); //dma 0 is the highest priority
	add	r0, sp, #74	@ tmp.8_160,,
	strh	ip, [sp, #74]	@ movhi	@ clr, tmp
	str	r0, [r1, #176]	@ tmp.8_160, MEM[(volatile vu32 *)67109040B]
	str	r2, [r1, #180]	@ base, MEM[(volatile vu32 *)67109044B]
	str	r8, [r1, #184]	@ _165, MEM[(volatile vu32 *)67109048B]
	ldr	r2, [r1, #184]	@ vol.10_166, MEM[(volatile vu32 *)67109048B]
@ arm/soar_wram.arm.c:244: 					    yBuffer[i] = height_on_screen;
	strb	r6, [r5, #-128]	@ height, yBuffer[i_306]
.L18:
@ arm/soar_wram.arm.c:214: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:214: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #127	@ i,
	ble	.L30		@,
@ arm/soar_wram.arm.c:207: 		zdist+=INC_ZSTEP){
	mov	r10, r3	@ zdist, zdist
	asr	r3, r3, #7	@ tmp533, zdist,
	add	r3, r3, r10, asr #6	@ tmp534, tmp533, zdist,
	asr	r2, r10, #8	@ tmp535, zdist,
	add	r3, r3, r2, lsl #2	@ tmp537, tmp534, tmp535,
	add	r3, r3, #2	@ _186, tmp537,
@ arm/soar_wram.arm.c:207: 		zdist+=INC_ZSTEP){
	add	r10, r10, r3	@ zdist, zdist, _186
@ arm/soar_wram.arm.c:206: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #36]	@ _99, %sfp
	cmp	r3, r10	@ _99, zdist
	bge	.L31		@,
	ldr	fp, [sp, #20]	@ CurrentProc, %sfp
.L32:
@ arm/soar_wram.arm.c:255: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r0, [fp, #64]	@, CurrentProc_6(D)->vid_page
	ldr	r3, .L68+108	@ tmp408,
	mov	lr, pc
	bx	r3		@ tmp408
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	ldr	r2, .L68+60	@ tmp409,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp411, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:255: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [fp, #64]	@ tmp554, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:14: 		FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp411, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:16: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L21:
@ arm/soar_wram.arm.c:247: 					else if ((-ylen)>CEL_SHADE_THRESHOLD) {
	cmn	r8, #6	@ ylen,
	bge	.L18		@,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	mov	r0, #0	@ tmp531,
	ldr	r1, [sp, #20]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r2, ip, r4, lsl #5	@ tmp524, _109, i,
	add	r2, r2, r4, lsl #7	@ tmp525, tmp524, i,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	ldr	r1, [r1, #64]	@ CurrentProc_6(D)->vid_page, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	sub	r2, r2, #-2147483647	@ tmp526, tmp525,
@ arm/soar_wram.arm.c:248: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	lsl	r2, r2, #1	@ tmp528, tmp526,
	strh	r0, [r1, r2]	@ movhi	@ tmp531, *_177
	b	.L18		@
.L24:
@ arm/soar_wram.arm.c:26: 	if (sunsetVal){
	ldr	r0, [sp, #64]	@ sunsetVal, %sfp
	cmp	r0, #0	@ sunsetVal,
	beq	.L26		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	lr, #0	@ _112,
	bne	.L42		@,
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r0, r1, r2	@ tmp559, _105, _108
	bmi	.L42		@,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp487, _105, _108,
	ldr	r1, .L68+100	@ tmp485,
	lsl	r2, r2, #1	@ tmp488, tmp487,
@ arm/soar_wram.arm.c:230: 						    if (zdist > (FOG_DISTANCE))
	cmp	r3, #256	@ zdist,
@ arm/soar_wram.arm.c:28: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrh	ip, [r1, r2]	@ clr,
@ arm/soar_wram.arm.c:230: 						    if (zdist > (FOG_DISTANCE))
	ble	.L67		@,
.L27:
@ arm/soar_wram.arm.c:233: 						    	if (CurrentProc->sunsetVal > 4)
	ldr	r0, [sp, #20]	@ CurrentProc, %sfp
	ldr	r2, [r0, #84]	@ CurrentProc_6(D)->sunsetVal, CurrentProc_6(D)->sunsetVal
	cmp	r2, #4	@ CurrentProc_6(D)->sunsetVal,
@ arm/soar_wram.arm.c:235: 							    	int offset = (i<<5) + (i<<7) + yBuffer[i] + 2;
	ldrbgt	r1, [r5, #-128]	@ zero_extendqisi2	@ yBuffer[i_306], yBuffer[i_306]
@ arm/soar_wram.arm.c:237: 							    	fogclr = *base;
	ldrgt	r2, [r0, #64]	@ CurrentProc_6(D)->vid_page, CurrentProc_6(D)->vid_page
@ arm/soar_wram.arm.c:239: 							    else fogclr = fogClrs[sunsetVal>>1];
	ldrle	r2, [sp, #68]	@ tmp549, %sfp
@ arm/soar_wram.arm.c:236: 							    	u16* base = CurrentProc->vid_page + offset;
	addgt	r1, fp, r1	@ tmp500, tmp470, yBuffer[i_306]
@ arm/soar_wram.arm.c:237: 							    	fogclr = *base;
	addgt	r2, r2, r1, lsl #1	@ tmp503, CurrentProc_6(D)->vid_page, tmp500,
@ arm/soar_wram.arm.c:240: 							    clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	mov	r0, ip	@, clr
@ arm/soar_wram.arm.c:237: 							    	fogclr = *base;
	ldrhgt	r1, [r2, #4]	@ fogclr, *base_141
@ arm/soar_wram.arm.c:239: 							    else fogclr = fogClrs[sunsetVal>>1];
	ldrhle	r1, [r2]	@ fogclr, fogClrs[_67]
	str	r3, [sp, #60]	@ zdist, %sfp
@ arm/soar_wram.arm.c:240: 							    clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r3, .L68+104	@ tmp613,
	mov	lr, pc
	bx	r3		@ tmp613
	ldr	r3, [sp, #60]	@ zdist, %sfp
	mov	ip, r0	@ tmp556,
@ arm/soar_wram.arm.c:243: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _125, yBuffer[i_306]
	b	.L23		@
.L44:
@ arm/soar_wram.arm.c:21: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	ip, #6208	@ clr,
	b	.L25		@
.L26:
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _112,
	bne	.L44		@,
@ arm/soar_wram.arm.c:31: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp560, _105, _108
	bmi	.L44		@,
@ arm/soar_wram.arm.c:32: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp493, _105, _108,
	ldr	r1, .L68+96	@ tmp609,
	lsl	r2, r2, #1	@ tmp494, tmp493,
	ldrh	ip, [r1, r2]	@ clr,
	b	.L25		@
.L42:
@ arm/soar_wram.arm.c:27: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	ip, #2080	@ clr,
	b	.L25		@
.L33:
@ arm/soar_wram.arm.c:74: 		switch(CurrentProc->sPlayerYaw){
	mov	r1, #128	@ prephitmp_334,
	b	.L10		@
.L66:
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp361, posX,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L68+112	@ tmp366,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp358, _411,
@ arm/soar_wram.arm.c:95: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp363, tmp361,
	lsl	r2, r2, #16	@, tmp358,
	lsl	r1, r1, #16	@, tmp363,
	str	r3, [sp]	@ tmp366,
	mov	r0, #8	@,
	ldr	r3, .L68+64	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp541
	b	.L15		@
.L69:
	.align	2
.L68:
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
	.word	colourMap
	.word	colourMap_sunset
	.word	iwram_clr_blend_asm
	.word	vid_flip
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
