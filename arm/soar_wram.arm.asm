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
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp394,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _173, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _173,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	fp, r0	@ CurrentProc, tmp808
	sub	sp, sp, #212	@,,
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L101		@,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _173,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L111	@ tmp405,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L97		@,
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp407, _173,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp407,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L111+4	@ tmp412,
@ arm/soar_wram.arm.c:162: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L111+8	@ tmp415,
.L97:
	str	r3, [sp]	@ tmp415,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L111+12	@,
	ldr	r4, .L111+16	@ tmp794,
	mov	lr, pc
	bx	r4		@ tmp794
.L3:
@ arm/soar_wram.arm.c:164: 	if (CurrentProc->ShowMap)
	ldr	r3, [fp, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_112(D)->ShowMap,
	bne	.L102		@,
.L6:
@ arm/soar_wram.arm.c:175: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [fp, #76]	@ posY, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L111+20	@ tmp431,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp430, posY,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp430, tmp431
@ arm/soar_wram.arm.c:174: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [fp, #72]	@ posX, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L111+24	@ tmp435,
	sub	r1, r6, #1	@ tmp434, posX,
	cmp	r1, r2	@ tmp434, tmp435
	bls	.L103		@,
.L9:
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L111+28	@ tmp432,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [fp, #80]	@ translatedLocations[0], CurrentProc_112(D)->location
.L8:
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L111+32	@ tmp791,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L104		@,
.L11:
@ arm/soar_wram.arm.c:25: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L105		@,
@ arm/soar_wram.arm.c:35: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L94		@,
.L98:
	ldr	r6, .L111+36	@ tmp796,
	ldr	r5, .L111+40	@ tmp789,
.L12:
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [fp, #60]	@ _38, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L111+44	@ tmp548,
	lsl	r3, r3, #1	@ tmp549, _38,
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r6, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldrsh	r6, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L111+48	@ tmp552,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r5, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [fp, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [fp, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r0, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r2, r6, r2	@ _41, _40, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r5, r3	@ _45, _44, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r2	@ _48, cam_pivot_dx_Angles[_38], _41
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	ip, ip, r3	@ _51, cam_pivot_dy_Angles[_38], _45
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r0, #8	@ _52,
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r2, [fp, #44]	@ _41, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [fp, #72]	@ _48, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [fp, #48]	@ _45, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	ip, [fp, #76]	@ _51, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L106		@,
@ arm/soar_wram.arm.c:55: 	if (gKeyState.pressedKeys & L_BUTTON){
	tst	r0, #512	@ _52,
	bne	.L16		@,
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	ldr	r7, [fp, #88]	@ prephitmp_549, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	cmp	r7, #0	@ prephitmp_549,
	bne	.L17		@,
.L99:
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	mov	r1, #1	@ prephitmp_568,
.L18:
@ arm/soar_wram.arm.c:73: 	if (gKeyState.pressedKeys & R_BUTTON){
	tst	r0, #256	@ _52,
@ arm/soar_wram.arm.c:74: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [fp, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	eorne	r0, r0, #1	@ tmp583, CurrentProc_112(D)->ShowMap,
	strne	r0, [fp, #68]	@ tmp583, CurrentProc_112(D)->ShowMap
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _63,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	addne	r2, r6, r2	@ tmp590, _40, _41
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	addne	r3, r5, r3	@ tmp591, _44, _45
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r2, [fp, #44]	@ tmp590, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r3, [fp, #48]	@ tmp591, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:81: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _63,
	beq	.L24		@,
@ arm/soar_wram.arm.c:82: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [fp, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
	sub	r3, r3, r6	@ tmp596, CurrentProc_112(D)->sPlayerPosX, _40
	str	r3, [fp, #44]	@ tmp596, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:83: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [fp, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
	sub	r3, r3, r5	@ tmp598, CurrentProc_112(D)->sPlayerPosY, _44
	str	r3, [fp, #48]	@ tmp598, CurrentProc_112(D)->sPlayerPosY
.L24:
@ arm/soar_wram.arm.c:85: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _63,
	movne	r3, #0	@, tmp604
	andeq	r3, r1, #1	@,, tmp604, prephitmp_568
	cmp	r3, #0	@ tmp604,
	bne	.L1		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r2, lr, ip	@ tmp605, _48, _51
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ tmp605,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L111+52	@ tmp606,
@ arm/soar_wram.arm.c:90: 	int camera_terrain_ht = getPtHeight(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	add	r1, fp, #44	@,,
	ldm	r1, {r1, r2}	@,,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r3, r3, lr	@ tmp608, tmp606, _48
	ldrbcc	r3, [r3, ip, lsl #10]	@ zero_extendqisi2	@ _225, heightMap[_223]
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp610, _74, _75
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp610,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r1, #0	@ _214,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L111+52	@ tmp611,
	addcc	r1, ip, r1	@ tmp613, tmp611, _74
	ldrbcc	r1, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _214, heightMap[_212]
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r1, r3	@ _214, _225
	movge	lr, r1	@ tmp615, _214
	movlt	lr, r3	@ tmp615, _225
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r2, fp, #52	@,,
	ldm	r2, {r2, r10}	@,,
@ arm/soar_wram.arm.c:91: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r2, #48	@ camera_ht, _76,
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp615
	bge	.L27		@,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r2, r2, #48	@ tmp616, _76,
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r10, r10, #1	@ prephitmp_574, prephitmp_574,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r2, [fp, #52]	@ tmp616, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	str	r10, [fp, #56]	@ prephitmp_574, CurrentProc_112(D)->sPlayerStepZ
.L28:
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _63,
	beq	.L29		@,
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [fp, #52]	@ _89, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _89,
	blt	.L107		@,
.L29:
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r3, [fp, #44]	@ _93, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _93,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #28]	@ _93, %sfp
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L30		@,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp644,
	str	r3, [sp, #28]	@ tmp644, %sfp
	str	r3, [fp, #44]	@ tmp644, CurrentProc_112(D)->sPlayerPosX
.L31:
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r3, [fp, #48]	@ _94, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _94,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #32]	@ _94, %sfp
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L32		@,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp646,
	str	r3, [sp, #32]	@ tmp646, %sfp
	str	r3, [fp, #48]	@ tmp646, CurrentProc_112(D)->sPlayerPosY
.L33:
@ arm/soar_wram.arm.c:278: 	int sunsetVal = CurrentProc->sunsetVal;
	ldr	r3, [fp, #84]	@ sunsetVal, CurrentProc_112(D)->sunsetVal
	mov	r2, r3	@ sunsetVal, sunsetVal
@ arm/soar_wram.arm.c:273: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [fp, #60]	@ angle, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:278: 	int sunsetVal = CurrentProc->sunsetVal;
	str	r3, [sp, #60]	@ sunsetVal, %sfp
@ arm/soar_wram.arm.c:281: 	sky = skies[(sunsetVal)>>1];
	ldr	r3, .L111+56	@ tmp657,
@ arm/soar_wram.arm.c:281: 	sky = skies[(sunsetVal)>>1];
	asr	r6, r2, #1	@ _234, sunsetVal,
@ arm/soar_wram.arm.c:283: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r3, r6, lsl #2]	@ skies[_234], skies[_234]
	add	r3, r5, r5, lsl #2	@ tmp652, angle, angle,
	lsl	r3, r3, #9	@ tmp654, tmp652,
	add	r3, r3, r10, lsl #1	@ tmp655, tmp654, prephitmp_574,
	sub	r0, r0, #400	@ tmp658, skies[_234],
	add	r0, r0, r3, lsl #2	@, tmp658, tmp655,
	mov	r2, #10240	@,
	ldr	r1, [fp, #64]	@, CurrentProc_112(D)->vid_page
	ldr	r7, .L111+60	@ tmp661,
	mov	lr, pc
	bx	r7		@ tmp661
@ arm/soar_wram.arm.c:289: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp662,
	ldr	r2, .L111+64	@,
	add	r1, sp, #80	@,,
	add	r0, sp, #76	@,,
	str	r3, [sp, #76]	@ tmp662, tmp
	mov	lr, pc
	bx	r7		@ tmp661
@ arm/soar_wram.arm.c:295: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r10, #4	@ tmp670, prephitmp_574,
@ arm/soar_wram.arm.c:295: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _267, tmp670,
	add	r2, r3, #3	@ _267, _267,
@ arm/soar_wram.arm.c:283: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, r10, #1	@ _240, prephitmp_574,
@ arm/soar_wram.arm.c:294: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r9, r3, #24	@ zdist, _240,
@ arm/soar_wram.arm.c:292: 	fogclr = fogClrs[sunsetVal>>1];
	ldr	r3, .L111+68	@ tmp667,
	lsl	r6, r6, #1	@ tmp668, _234,
	ldrh	r3, [r3, r6]	@ fogclr, fogClrs[_234]
@ arm/soar_wram.arm.c:274: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp648, angle,
@ arm/soar_wram.arm.c:295: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r9, r2	@ zdist, _267
	str	r2, [sp, #40]	@ _267, %sfp
@ arm/soar_wram.arm.c:292: 	fogclr = fogClrs[sunsetVal>>1];
	str	r3, [sp, #68]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:274: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp648,
@ arm/soar_wram.arm.c:295: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L49		@,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp678, angle
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _580, tmp678,
	lsl	r3, r3, #9	@ tmp795, _580,
	str	r3, [sp, #52]	@ tmp795, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	rsb	r3, r4, #0	@ tmp679, tangent
	lsl	r2, r5, #9	@ tmp792, angle,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	and	r3, r3, #15	@ _582, tmp679,
	str	r2, [sp, #44]	@ tmp792, %sfp
	lsl	r3, r3, #9	@ tmp797, _582,
	lsl	r2, r4, #9	@ tmp793, tangent,
	str	r2, [sp, #48]	@ tmp793, %sfp
	str	r3, [sp, #56]	@ tmp797, %sfp
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	str	fp, [sp, #24]	@ CurrentProc, %sfp
.L48:
@ arm/soar_wram.arm.c:306: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, #0	@ i,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp792, %sfp
	ldr	r1, .L111+72	@ tmp858,
	add	r3, r3, r9	@ tmp682, tmp792, zdist
	lsl	r3, r3, #1	@ tmp683, tmp682,
	ldrsh	r8, [r1, r3]	@ _253, pleftmatrix[angle_229][zdist_489]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp795, %sfp
	add	r3, r3, r9	@ tmp687, tmp795, zdist
	lsl	r3, r3, #1	@ tmp688, tmp687,
	ldrsh	r2, [r1, r3]	@ _258, pleftmatrix[_580][zdist_489]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp793, %sfp
	add	r3, r3, r9	@ tmp692, tmp793, zdist
	lsl	r3, r3, #1	@ tmp693, tmp692,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[tangent_231][zdist_489], pleftmatrix[tangent_231][zdist_489]
@ arm/soar_wram.arm.c:302: 		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r8	@ dx, pleftmatrix[tangent_231][zdist_489], _253
	str	r3, [sp, #16]	@ dx, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #28]	@ _93, %sfp
	add	r8, r8, r3	@ _254, _253, _93
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp797, %sfp
	add	r3, r3, r9	@ tmp698, tmp797, zdist
	lsl	r3, r3, #1	@ tmp699, tmp698,
	ldrsh	r3, [r1, r3]	@ pleftmatrix[_582][zdist_489], pleftmatrix[_582][zdist_489]
@ arm/soar_wram.arm.c:303: 		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ dy, pleftmatrix[_582][zdist_489], _258
	str	r3, [sp, #20]	@ dy, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
	ldr	r3, [sp, #32]	@ _94, %sfp
	add	r3, r2, r3	@ _259, _258, _94
	str	r3, [sp, #12]	@ _259, %sfp
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r9, #256	@ tmp702, zdist,
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _290, tmp702,
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	fp, r9, #1	@ _279, zdist,
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	str	r3, [sp, #36]	@ _290, %sfp
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r3, fp, #8	@ tmp800, _279,
.L47:
@ arm/soar_wram.arm.c:314: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	add	r2, r4, #208	@ tmp899, i,
	add	r5, sp, r2	@ tmp790,, tmp899
	ldrb	r0, [r5, #-128]	@ zero_extendqisi2	@ _277, yBuffer[i_498]
@ arm/soar_wram.arm.c:314: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r0, #159	@ _277,
	bhi	.L35		@,
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r1, [sp, #16]	@ tmp706, %sfp
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	r2, [sp, #20]	@ tmp708, %sfp
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	mul	r1, r4, r1	@ tmp706, i, tmp706
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	mul	r2, r4, r2	@ tmp708, i, tmp708
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	ldr	ip, [sp, #12]	@ _259, %sfp
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	add	r1, r8, r1, asr #7	@ _273, _254, tmp706,
@ arm/soar_wram.arm.c:308: 			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
	add	r2, ip, r2, asr #7	@ _276, _259, tmp708,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ _276,
	cmplt	r1, #1024	@, _273,
	movge	lr, #1	@ _337,
	movlt	lr, #0	@ _337,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r7, #0	@ _344,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L36		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	ip, r1, r2	@ tmp812, _273, _276
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r7, lr	@ _344, _337
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	ip, .L111+52	@ tmp875,
	addpl	ip, ip, r1	@ tmp718, tmp875, _273
	ldrbpl	r7, [ip, r2, lsl #10]	@ zero_extendqisi2	@ _344, heightMap[_342]
.L36:
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r10, r10, lsl #8	@ tmp726, prephitmp_574, prephitmp_574,
	rsb	r6, r6, r6, lsl #8	@ tmp728, tmp726, tmp726,
	sub	ip, r3, fp	@ tmp723, tmp800, _279
	add	ip, ip, r6	@ tmp729, tmp723, tmp728
	ldr	r6, .L111+76	@ tmp876,
	add	ip, r6, ip	@ tmp730, tmp876, tmp729
	ldrb	r6, [ip, r7]	@ zero_extendqisi2	@ _280, hosTables[prephitmp_576][_279][_345]
@ arm/soar_wram.arm.c:317: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	cmp	r6, #0	@ _280,
@ arm/soar_wram.arm.c:317: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	addeq	r4, r4, #4	@ i, i,
@ arm/soar_wram.arm.c:317: 				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
	beq	.L35		@,
@ arm/soar_wram.arm.c:319: 					int ylen = height_on_screen - yBuffer[i];
	sub	r7, r6, r0	@ ylen, _280, _283
@ arm/soar_wram.arm.c:320: 					if (ylen>0){ //only draw if that line has been higher this screen
	cmp	r7, #0	@ ylen,
@ arm/soar_wram.arm.c:319: 					int ylen = height_on_screen - yBuffer[i];
	mov	ip, r0	@ _283, _277
@ arm/soar_wram.arm.c:320: 					if (ylen>0){ //only draw if that line has been higher this screen
	bgt	.L108		@,
@ arm/soar_wram.arm.c:332: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r6, r0, r6	@ tmp772, _277, _280
@ arm/soar_wram.arm.c:332: 					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r6, #6	@ tmp772,
	ble	.L35		@,
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r2, r0, r4, lsl #5	@ tmp775, _277, i,
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	mov	r0, #0	@ tmp782,
	ldr	r1, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	add	r2, r2, r4, lsl #7	@ tmp776, tmp775, i,
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	ldr	r1, [r1, #64]	@ CurrentProc_112(D)->vid_page, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	sub	r2, r2, #-2147483647	@ tmp777, tmp776,
@ arm/soar_wram.arm.c:333: 						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
	lsl	r2, r2, #1	@ tmp779, tmp777,
	strh	r0, [r1, r2]	@ movhi	@ tmp782, *_319
.L35:
@ arm/soar_wram.arm.c:306: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:306: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #127	@ i,
	ble	.L47		@,
@ arm/soar_wram.arm.c:296: 		zdist+=INC_ZSTEP){
	asr	r3, r9, #7	@ tmp784, zdist,
	add	r3, r3, r9, asr #6	@ tmp785, tmp784, zdist,
	asr	r2, r9, #8	@ tmp786, zdist,
	add	r3, r3, r2, lsl #2	@ tmp788, tmp785, tmp786,
	add	r3, r3, #2	@ _328, tmp788,
@ arm/soar_wram.arm.c:296: 		zdist+=INC_ZSTEP){
	add	r9, r9, r3	@ zdist, zdist, _328
@ arm/soar_wram.arm.c:295: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #40]	@ _267, %sfp
	cmp	r3, r9	@ _267, zdist
	bge	.L48		@,
	ldr	fp, [sp, #24]	@ CurrentProc, %sfp
.L49:
@ arm/soar_wram.arm.c:345: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, .L111+80	@ tmp673,
	ldr	r0, [fp, #64]	@, CurrentProc_112(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp673
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	ldr	r2, .L111+84	@ tmp674,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp676, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:345: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [fp, #64]	@ tmp809, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp676, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L103:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [fp, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_112(D)->ShowMap,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r3, #170	@ _596, posY,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L109		@,
.L10:
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L111+88	@ tmp448,
@ arm/soar_wram.arm.c:182: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r5, #6	@ posY, _596,
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp452, tmp448, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_196][posX_194]
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L111+28	@ tmp454,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_199], translatedLocations[_199]
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [fp, #80]	@ translatedLocations[_199], CurrentProc_112(D)->location
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:187: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp460, loc,
	add	r3, r3, #-905969664	@ tmp463, tmp460,
	add	r3, r3, #3932160	@ tmp463, tmp463,
	lsr	r3, r3, r2	@ tmp462, tmp463,
	str	r3, [sp]	@ tmp462,
	mov	r0, #8	@,
	ldr	r3, .L111+92	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp794
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L111+32	@ tmp791,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L104:
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [fp, #60]	@ _3, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp471, _3,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp480, _3,
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L111+36	@ tmp796,
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L111+40	@ tmp789,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp480,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [fp, #60]	@ _10, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp482, _10,
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r0, [r6, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r1, [r6, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [fp, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r5, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp489, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, ip, asr #2	@ tmp490, tmp489, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [fp, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp490, newy
@ arm/soar_wram.arm.c:22: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [fp, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r0, #3	@ tmp499, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, r0, asr #2	@ tmp500, tmp499, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r1	@ newx, tmp500, newx
@ arm/soar_wram.arm.c:21: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [fp, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:23: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	ldr	r3, .L111+96	@ tmp502,
	mov	lr, pc
	bx	r3		@ tmp502
	b	.L12		@
.L105:
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [fp, #60]	@ _20, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r1, r3, #1	@ tmp508, _20,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp517, _20,
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L111+36	@ tmp796,
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L111+40	@ tmp789,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp517,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [fp, #60]	@ _27, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp519, _27,
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r0, [r6, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r1]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [fp, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r1, [r5, r1]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp526, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, ip, asr #2	@ tmp527, tmp526, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [fp, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r1	@ newy, tmp527, newy
@ arm/soar_wram.arm.c:32: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [fp, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r0, #3	@ tmp536, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, r0, asr #2	@ tmp537, tmp536, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newx, tmp537, newx
@ arm/soar_wram.arm.c:31: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [fp, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:33: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	ldr	r3, .L111+96	@ tmp539,
	mov	lr, pc
	bx	r3		@ tmp539
	b	.L12		@
.L108:
@ arm/soar_wram.arm.c:323: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r9, #40	@ zdist,
	bne	.L39		@,
@ arm/soar_wram.arm.c:323: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r0, r4, #61	@ tmp732, i,
@ arm/soar_wram.arm.c:323: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	cmp	r0, #6	@ tmp732,
@ arm/soar_wram.arm.c:322: 						u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:323: 						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bls	.L40		@,
.L39:
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	ldr	ip, [sp, #60]	@ sunsetVal, %sfp
	sub	r0, ip, #1	@ tmp733, sunsetVal,
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r0, #6	@ tmp733,
	bhi	.L41		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _337,
	bne	.L60		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp813, _273, _276
	bmi	.L60		@,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ _355, _273, _276,
	str	r3, [sp, #64]	@ tmp800, %sfp
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r3, .L111+100	@ tmp878,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r0, r2, #1	@ tmp737, _355,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r3, r0]	@, colourMap_sunset[_355]
	ldr	r3, .L111+104	@ tmp879,
	mov	r2, ip	@, sunsetVal
	ldrh	r0, [r3, r0]	@, colourMap[_355]
	ldr	r3, .L111+108	@ tmp880,
	mov	lr, pc
	bx	r3		@ tmp880
	ldr	r3, [sp, #64]	@ tmp800, %sfp
.L42:
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r9, #256	@ zdist,
	bgt	.L44		@,
.L110:
@ arm/soar_wram.arm.c:328: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	ip, [r5, #-128]	@ zero_extendqisi2	@ _283, yBuffer[i_498]
.L40:
@ arm/soar_wram.arm.c:353: 	u16* base = vid_page + (offset);
	ldr	r2, [sp, #24]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:352: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r4, r4, lsl #2	@ tmp764, i, i,
@ arm/soar_wram.arm.c:353: 	u16* base = vid_page + (offset);
	ldr	r2, [r2, #64]	@ CurrentProc_112(D)->vid_page, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:352: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	ip, ip, r1, lsl #5	@ offset, _283, tmp764,
@ arm/soar_wram.arm.c:353: 	u16* base = vid_page + (offset);
	add	r2, r2, ip, lsl #1	@ base, CurrentProc_112(D)->vid_page, offset,
@ arm/soar_wram.arm.c:354: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r7, r2, r7, lsl #1	@ _490, base, ylen,
@ arm/soar_wram.arm.c:354: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r7	@ base, _490
	bcs	.L46		@,
.L45:
@ arm/soar_wram.arm.c:354: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r2], #2	@ movhi	@ clr, MEM[(u16 *)i_465]
@ arm/soar_wram.arm.c:354: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r7	@ base, _490
	bcc	.L45		@,
.L46:
@ arm/soar_wram.arm.c:329: 					    yBuffer[i] = height_on_screen;
	strb	r6, [r5, #-128]	@ _280, yBuffer[i_498]
	b	.L35		@
.L41:
@ arm/soar_wram.arm.c:129: 	if (sunsetVal){
	ldr	r0, [sp, #60]	@ sunsetVal, %sfp
	cmp	r0, #0	@ sunsetVal,
	beq	.L43		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	lr, #0	@ _337,
	bne	.L58		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r0, r1, r2	@ tmp814, _273, _276
	bmi	.L58		@,
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp749, _273, _276,
	ldr	r1, .L111+100	@ tmp882,
	lsl	r2, r2, #1	@ tmp750, tmp749,
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	cmp	r9, #256	@ zdist,
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrh	r0, [r1, r2]	@ clr,
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ble	.L110		@,
.L44:
	str	r3, [sp, #64]	@ tmp800, %sfp
@ arm/soar_wram.arm.c:326: 						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r3, .L111+108	@ tmp884,
	ldr	r1, [sp, #68]	@, %sfp
	mov	lr, pc
	bx	r3		@ tmp884
@ arm/soar_wram.arm.c:328: 					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
	ldrb	ip, [r5, #-128]	@ zero_extendqisi2	@ _283, yBuffer[i_498]
	ldr	r3, [sp, #64]	@ tmp800, %sfp
	b	.L40		@
.L60:
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L42		@
.L43:
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	lr, #0	@ _337,
	bne	.L60		@,
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r0, r1, r2	@ tmp815, _273, _276
	bmi	.L60		@,
@ arm/soar_wram.arm.c:135: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r1, r2, lsl #10	@ tmp755, _273, _276,
	ldr	r1, .L111+104	@ tmp883,
	lsl	r2, r2, #1	@ tmp756, tmp755,
	ldrh	r0, [r1, r2]	@ clr,
	b	.L42		@
.L16:
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r1, [fp, #84]	@ _53, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r1, #0	@ _53,
	beq	.L19		@,
	mvn	r7, #0	@ tmp572,
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	sub	r1, r1, #1	@ tmp573, _53,
	str	r1, [fp, #84]	@ tmp573, CurrentProc_112(D)->sunsetVal
	str	r7, [fp, #88]	@ tmp572, CurrentProc_112(D)->sunTransition
.L17:
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r1, [fp, #84]	@ _101, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	sub	r8, r1, #1	@ tmp576, _101,
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r8, #6	@ tmp576,
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	movhi	r1, #0	@ tmp578,
	strhi	r1, [fp, #88]	@ tmp578, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	bhi	.L99		@,
	b	.L20		@
.L102:
@ arm/soar_wram.arm.c:166: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L111+112	@ tmp419,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp419,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L111+116	@,
	mov	lr, pc
	bx	r4		@ tmp794
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L111+84	@ tmp422,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp425, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp425, tmp425,
	lsl	r1, r1, #16	@ tmp427, tmp425,
	lsr	r1, r1, #16	@ tmp427, tmp427,
	str	r1, [sp]	@ tmp427,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L111+120	@,
	mov	lr, pc
	bx	r4		@ tmp794
	b	.L6		@
.L101:
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp399,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L111+12	@,
	ldr	r4, .L111+16	@ tmp794,
	str	ip, [sp]	@ tmp399,
	mov	lr, pc
	bx	r4		@ tmp794
	b	.L3		@
.L58:
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L42		@
.L27:
@ arm/soar_wram.arm.c:96: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _63,
	beq	.L28		@,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp621, _225,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp626, camera_ht
	movge	r3, #0	@ tmp626,
	movlt	r3, #1	@ tmp626,
	cmp	r2, #64	@ _76,
	movle	r3, #0	@ tmp626,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r1, r1, #48	@ tmp627, _214,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r1, ip	@ tmp627, camera_ht
	movge	r3, #0	@, tmp633
	andlt	r3, r3, #1	@,, tmp633, tmp626
	cmp	r3, #0	@ tmp633,
	beq	.L28		@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r3, r10, #1	@ tmp634, prephitmp_574,
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [fp, #56]	@ tmp634, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:98: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [fp, #52]	@ camera_ht, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	ldr	r3, .L111+96	@ tmp635,
	mov	lr, pc
	bx	r3		@ tmp635
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r10, [fp, #56]	@ prephitmp_574, CurrentProc_112(D)->sPlayerStepZ
	b	.L28		@
.L32:
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	ldr	r3, [sp, #32]	@ _94, %sfp
	cmp	r3, #0	@ _94,
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp647,
	strlt	r3, [sp, #32]	@ tmp647, %sfp
	strlt	r3, [fp, #48]	@ tmp647, CurrentProc_112(D)->sPlayerPosY
	b	.L33		@
.L30:
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	ldr	r3, [sp, #28]	@ _93, %sfp
	cmp	r3, #0	@ _93,
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp645,
	strlt	r3, [sp, #28]	@ tmp645, %sfp
	strlt	r3, [fp, #44]	@ tmp645, CurrentProc_112(D)->sPlayerPosX
	b	.L31		@
.L106:
@ arm/soar_wram.arm.c:51: 		EndLoop(CurrentProc);
	mov	r0, fp	@, CurrentProc
	ldr	r3, .L111+124	@ tmp567,
	mov	lr, pc
	bx	r3		@ tmp567
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L19:
	mov	r1, #1	@ tmp574,
@ arm/soar_wram.arm.c:57: 		else CurrentProc->sunTransition = 1;
	mov	r7, r1	@ prephitmp_549, _101
	str	r1, [fp, #88]	@ tmp574, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	str	r1, [fp, #84]	@ tmp574, CurrentProc_112(D)->sunsetVal
.L20:
@ arm/soar_wram.arm.c:65: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	add	r1, r1, r7	@ tmp577, _101, prephitmp_549
	str	r1, [fp, #84]	@ tmp577, CurrentProc_112(D)->sunsetVal
	mov	r1, #0	@ prephitmp_568,
	b	.L18		@
.L107:
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	add	r2, r10, #1	@ tmp642, prephitmp_574,
@ arm/soar_wram.arm.c:105: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r3, r3, #48	@ tmp641, _89,
	str	r3, [fp, #52]	@ tmp641, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	str	r2, [fp, #56]	@ tmp642, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	ldr	r3, .L111+96	@ tmp643,
	mov	lr, pc
	bx	r3		@ tmp643
@ arm/soar_wram.arm.c:275: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r10, [fp, #56]	@ prephitmp_574, CurrentProc_112(D)->sPlayerStepZ
	b	.L29		@
.L109:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp441, posX,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L111+128	@ tmp446,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp438, _596,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp443, tmp441,
	lsl	r2, r2, #16	@, tmp438,
	lsl	r1, r1, #16	@, tmp443,
	str	r3, [sp]	@ tmp446,
	mov	r0, #8	@,
	ldr	r3, .L111+120	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp794
	b	.L10		@
.L94:
@ arm/soar_wram.arm.c:36: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	ldr	r3, .L111+96	@ tmp547,
	mov	lr, pc
	bx	r3		@ tmp547
	b	.L98		@
.L112:
	.align	2
.L111:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	682
	.word	1022
	.word	translatedLocations
	.word	gKeyState
	.word	cam_pivot_dx_Angles
	.word	cam_pivot_dy_Angles
	.word	cam_dx_Angles
	.word	cam_dy_Angles
	.word	heightMap
	.word	skies
	.word	CpuFastSet
	.word	16777248
	.word	fogClrs
	.word	pleftmatrix
	.word	hosTables
	.word	vid_flip
	.word	33812480
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	BumpScreen
	.word	colourMap_sunset
	.word	colourMap
	.word	iwram_clr_blend_asm
	.word	10848
	.word	gObj_64x64
	.word	gObj_8x8
	.word	EndLoop
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
