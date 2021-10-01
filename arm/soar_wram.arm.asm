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
	mov	r3, #50331648	@ tmp397,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _173, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _173,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	r9, r0	@ CurrentProc, tmp814
	sub	sp, sp, #212	@,,
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L101		@,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _173,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L110	@ tmp408,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L96		@,
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp410, _173,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp410,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L110+4	@ tmp415,
@ arm/soar_wram.arm.c:162: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L110+8	@ tmp418,
.L96:
	str	r3, [sp]	@ tmp418,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L110+12	@,
	ldr	r4, .L110+16	@ tmp800,
	mov	lr, pc
	bx	r4		@ tmp800
.L3:
@ arm/soar_wram.arm.c:164: 	if (CurrentProc->ShowMap)
	ldr	r3, [r9, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_112(D)->ShowMap,
	bne	.L102		@,
.L6:
@ arm/soar_wram.arm.c:175: 	int posY = CurrentProc->sFocusPtY;
	ldr	r5, [r9, #76]	@ posY, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L110+20	@ tmp434,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp433, posY,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp433, tmp434
@ arm/soar_wram.arm.c:174: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r9, #72]	@ posX, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L110+24	@ tmp438,
	sub	r2, r6, #1	@ tmp437, posX,
	cmp	r2, r3	@ tmp437, tmp438
	bls	.L103		@,
.L9:
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L110+28	@ tmp435,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r9, #80]	@ translatedLocations[0], CurrentProc_112(D)->location
.L8:
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L110+32	@ tmp797,
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
	bne	.L93		@,
.L97:
	ldr	r5, .L110+36	@ tmp801,
	ldr	r6, .L110+40	@ tmp795,
.L12:
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r9, #60]	@ _38, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L110+44	@ tmp551,
	lsl	r3, r3, #1	@ tmp552, _38,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	ip, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldrsh	r6, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L110+48	@ tmp555,
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r1, [r9, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r5, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r9, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r7, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r6, r1	@ _41, _40, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r5, r2	@ _45, _44, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r1	@ _48, cam_pivot_dx_Angles[_38], _41
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	ip, ip, r2	@ _51, cam_pivot_dy_Angles[_38], _45
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r7, #8	@ _52,
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r9, #44]	@ _41, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r9, #72]	@ _48, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r9, #48]	@ _45, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	ip, [r9, #76]	@ _51, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L106		@,
@ arm/soar_wram.arm.c:55: 	if (gKeyState.pressedKeys & L_BUTTON){
	tst	r7, #512	@ _52,
	bne	.L16		@,
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	ldr	r0, [r9, #88]	@ prephitmp_380, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	cmp	r0, #0	@ prephitmp_380,
	bne	.L17		@,
.L98:
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	mov	r3, #1	@ prephitmp_579,
.L18:
@ arm/soar_wram.arm.c:73: 	if (gKeyState.pressedKeys & R_BUTTON){
	tst	r7, #256	@ _52,
@ arm/soar_wram.arm.c:74: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [r9, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	eorne	r0, r0, #1	@ tmp586, CurrentProc_112(D)->ShowMap,
	strne	r0, [r9, #68]	@ tmp586, CurrentProc_112(D)->ShowMap
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _63,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	addne	r1, r6, r1	@ tmp593, _40, _41
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	addne	r2, r5, r2	@ tmp594, _44, _45
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r1, [r9, #44]	@ tmp593, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r2, [r9, #48]	@ tmp594, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:81: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _63,
	beq	.L24		@,
@ arm/soar_wram.arm.c:82: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r9, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
	sub	r2, r2, r6	@ tmp599, CurrentProc_112(D)->sPlayerPosX, _40
	str	r2, [r9, #44]	@ tmp599, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:83: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r9, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
	sub	r2, r2, r5	@ tmp601, CurrentProc_112(D)->sPlayerPosY, _44
	str	r2, [r9, #48]	@ tmp601, CurrentProc_112(D)->sPlayerPosY
.L24:
@ arm/soar_wram.arm.c:85: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _63,
	movne	r3, #0	@, tmp607
	andeq	r3, r3, #1	@,, tmp607, prephitmp_579
	cmp	r3, #0	@ tmp607,
	bne	.L1		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r2, lr, ip	@ tmp608, _48, _51
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ tmp608,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L110+52	@ tmp609,
	addcc	r3, r3, lr	@ tmp611, tmp609, _48
	ldrbcc	r3, [r3, ip, lsl #10]	@ zero_extendqisi2	@ _225, heightMap[_223]
@ arm/soar_wram.arm.c:90: 	int camera_terrain_ht = getPtHeight(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [r9, #48]	@ _75, CurrentProc_112(D)->sPlayerPosY
	ldr	ip, [r9, #44]	@ _74, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r2, ip, r1	@ tmp613, _74, _75
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ tmp613,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _214,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r2, .L110+52	@ tmp614,
	addcc	r2, r2, ip	@ tmp616, tmp614, _74
	ldrbcc	r2, [r2, r1, lsl #10]	@ zero_extendqisi2	@ _214, heightMap[_212]
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _214, _225
	movge	lr, r2	@ tmp618, _214
	movlt	lr, r3	@ tmp618, _225
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r9, #52	@,,
	ldm	r1, {r1, r8}	@,,
@ arm/soar_wram.arm.c:91: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _76,
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp618
	bge	.L27		@,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp619, _76,
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r8, r8, #1	@ prephitmp_585, prephitmp_585,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r9, #52]	@ tmp619, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	str	r8, [r9, #56]	@ prephitmp_585, CurrentProc_112(D)->sPlayerStepZ
.L28:
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _63,
	beq	.L29		@,
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r9, #52]	@ _89, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _89,
	blt	.L107		@,
.L29:
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r3, [r9, #44]	@ _93, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _93,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #44]	@ _93, %sfp
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L30		@,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp647,
	str	r3, [sp, #44]	@ tmp647, %sfp
	str	r3, [r9, #44]	@ tmp647, CurrentProc_112(D)->sPlayerPosX
.L31:
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r3, [r9, #48]	@ _94, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _94,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #48]	@ _94, %sfp
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L32		@,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp649,
	str	r3, [sp, #48]	@ tmp649, %sfp
	str	r3, [r9, #48]	@ tmp649, CurrentProc_112(D)->sPlayerPosY
.L33:
@ arm/soar_wram.arm.c:284: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	ldr	r3, [r9, #84]	@ CurrentProc_112(D)->sunsetVal, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:274: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r9, #60]	@ angle, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:284: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	ldr	r2, .L110+56	@ tmp653,
@ arm/soar_wram.arm.c:284: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	asr	r3, r3, #1	@ tmp654, CurrentProc_112(D)->sunsetVal,
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r2, r3, lsl #2]	@ skies[_234], skies[_234]
	add	r3, r5, r5, lsl #2	@ tmp660, angle, angle,
	lsl	r3, r3, #9	@ tmp662, tmp660,
	add	r3, r3, r8, lsl #1	@ tmp663, tmp662, prephitmp_585,
	sub	r0, r0, #400	@ tmp656, skies[_234],
	add	r0, r0, r3, lsl #2	@, tmp656, tmp663,
	mov	r2, #10240	@,
	ldr	r1, [r9, #64]	@, CurrentProc_112(D)->vid_page
	ldr	r6, .L110+60	@ tmp666,
	mov	lr, pc
	bx	r6		@ tmp666
@ arm/soar_wram.arm.c:290: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp667,
	ldr	r2, .L110+64	@,
	add	r1, sp, #80	@,,
	add	r0, sp, #76	@,,
	str	r3, [sp, #76]	@ tmp667, tmp
	mov	lr, pc
	bx	r6		@ tmp666
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r8, #4	@ tmp677, prephitmp_585,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _272, tmp677,
@ arm/soar_wram.arm.c:286: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r2, r8, #1	@ _240, prephitmp_585,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r1, r3, #3	@ _272, _272,
@ arm/soar_wram.arm.c:295: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r2, r2, #24	@ zdist, _240,
@ arm/soar_wram.arm.c:293: 	fogclr = fogClrs[CurrentProc->sunsetVal>>1];
	ldr	r3, [r9, #84]	@ CurrentProc_112(D)->sunsetVal, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:295: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	str	r2, [sp, #12]	@ zdist, %sfp
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r1	@ zdist, _272
@ arm/soar_wram.arm.c:293: 	fogclr = fogClrs[CurrentProc->sunsetVal>>1];
	ldr	r2, .L110+68	@ tmp672,
	bic	r3, r3, #1	@ tmp675, CurrentProc_112(D)->sunsetVal,
	ldrh	r3, [r2, r3]	@ fogclr, fogClrs[_250]
@ arm/soar_wram.arm.c:275: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp651, angle,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	str	r1, [sp, #52]	@ _272, %sfp
@ arm/soar_wram.arm.c:293: 	fogclr = fogClrs[CurrentProc->sunsetVal>>1];
	str	r3, [sp, #40]	@ fogclr, %sfp
@ arm/soar_wram.arm.c:275: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp651,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L48		@,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp685, angle
	and	r3, r3, #15	@ _592, tmp685,
	lsl	r3, r3, #9	@ tmp802, _592,
	str	r3, [sp, #64]	@ tmp802, %sfp
	rsb	r3, r4, #0	@ tmp686, tangent
	lsl	r2, r5, #9	@ tmp798, angle,
	and	r3, r3, #15	@ _596, tmp686,
	str	r2, [sp, #56]	@ tmp798, %sfp
	lsl	r3, r3, #9	@ tmp803, _596,
	lsl	r2, r4, #9	@ tmp799, tangent,
	str	r2, [sp, #60]	@ tmp799, %sfp
	str	r3, [sp, #68]	@ tmp803, %sfp
	b	.L47		@
.L37:
@ arm/soar_wram.arm.c:330: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r10, r1, r10	@ tmp777, _284, _287
@ arm/soar_wram.arm.c:330: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r10, #6	@ tmp777,
	bgt	.L108		@,
.L35:
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	ldr	r3, [sp, #32]	@ _567, %sfp
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r7, r7, r3	@ ivtmp.46, ivtmp.46, _567
	ldr	r3, [sp, #28]	@ _564, %sfp
	cmp	r4, #128	@ i,
	add	r5, r5, r3	@ ivtmp.47, ivtmp.47, _564
	bne	.L46		@,
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	ldr	r1, [sp, #12]	@ zdist, %sfp
	asr	r3, r1, #7	@ tmp790, zdist,
	asr	r2, r1, #8	@ tmp792, zdist,
	add	r3, r3, r1, asr #6	@ tmp791, tmp790, zdist,
	add	r3, r3, r2, lsl #2	@ tmp794, tmp791, tmp792,
	add	r3, r3, #2	@ _335, tmp794,
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r2, [sp, #52]	@ _272, %sfp
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	add	r3, r1, r3	@ zdist, zdist, _335
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r3	@ _272, zdist
@ arm/soar_wram.arm.c:297: 		zdist+=INC_ZSTEP){
	str	r3, [sp, #12]	@ zdist, %sfp
@ arm/soar_wram.arm.c:296: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	blt	.L48		@,
.L47:
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #12]	@ zdist, %sfp
	ldr	r3, [sp, #56]	@ tmp798, %sfp
	ldr	ip, .L110+72	@ tmp864,
	add	r3, r3, r0	@ tmp689, tmp798, zdist
	lsl	r3, r3, #1	@ tmp690, tmp689,
	ldrsh	r1, [ip, r3]	@ _255, pleftmatrix[angle_229][zdist_491]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #64]	@ tmp802, %sfp
	add	r3, r3, r0	@ tmp694, tmp802, zdist
	lsl	r3, r3, #1	@ tmp695, tmp694,
	ldrsh	r2, [ip, r3]	@ _261, pleftmatrix[_592][zdist_491]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp799, %sfp
	add	r3, r3, r0	@ tmp701, tmp799, zdist
	lsl	r3, r3, #1	@ tmp702, tmp701,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_231][zdist_491], pleftmatrix[tangent_231][zdist_491]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	lr, [sp, #44]	@ _93, %sfp
@ arm/soar_wram.arm.c:303: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp705, pleftmatrix[tangent_231][zdist_491], _255
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r1, lr	@ _256, _255, _93
	str	r1, [sp, #16]	@ _256, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	mov	r1, r0	@ zdist, zdist
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	mov	r5, #0	@ ivtmp.47,
@ arm/soar_wram.arm.c:303: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _567, tmp705,
	str	r3, [sp, #32]	@ _567, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #68]	@ tmp803, %sfp
	add	r3, r3, r0	@ tmp708, tmp803, zdist
	lsl	r3, r3, #1	@ tmp709, tmp708,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_596][zdist_491], pleftmatrix[_596][zdist_491]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #48]	@ _94, %sfp
@ arm/soar_wram.arm.c:304: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp712, pleftmatrix[_596][zdist_491], _261
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r2, r0	@ _262, _261, _94
	str	r2, [sp, #20]	@ _262, %sfp
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r2, r1, #1	@ _286, zdist,
	mov	fp, r2	@ _286, _286
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	mov	r7, r5	@ ivtmp.46, ivtmp.47
@ arm/soar_wram.arm.c:307: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, r5	@ i, ivtmp.47
@ arm/soar_wram.arm.c:304: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _564, tmp712,
	str	r3, [sp, #28]	@ _564, %sfp
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	sub	r3, r1, #256	@ tmp697, zdist,
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	asr	r3, r3, #5	@ _296, tmp697,
	str	r3, [sp, #36]	@ _296, %sfp
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r3, r2, #8	@ tmp806, _286,
	str	r3, [sp, #24]	@ tmp806, %sfp
	add	r6, sp, #79	@ tmp861,,
.L46:
@ arm/soar_wram.arm.c:315: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r1, [r6, #1]!	@ zero_extendqisi2	@ _284, MEM[(unsigned char *)_563]
@ arm/soar_wram.arm.c:315: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r1, #159	@ _284,
	bhi	.L35		@,
@ arm/soar_wram.arm.c:309: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #16]	@ _256, %sfp
	add	r0, r3, r7, asr #8	@ _280, _256, ivtmp.46,
@ arm/soar_wram.arm.c:309: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #20]	@ _262, %sfp
	add	lr, r3, r5, asr #8	@ _283, _262, ivtmp.47,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	lr, #1024	@ _283,
	cmplt	r0, #1024	@, _280,
	movge	r3, #1	@ _344,
	movlt	r3, #0	@ _344,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r10, #0	@ _351,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	str	r3, [sp, #8]	@ _344, %sfp
	bge	.L36		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r3, r0, lr	@ tmp818, _280, _283
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r3, .L110+52	@ tmp888,
	addpl	r3, r3, r0	@ tmp725, tmp888, _280
	ldrbpl	r10, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _351, heightMap[_349]
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	ldrmi	r10, [sp, #8]	@ _351, %sfp
.L36:
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #24]	@ tmp806, %sfp
	rsb	ip, r8, r8, lsl #8	@ tmp733, prephitmp_585, prephitmp_585,
	rsb	ip, ip, ip, lsl #8	@ tmp735, tmp733, tmp733,
	sub	r2, r2, fp	@ tmp730, tmp806, _286
	add	r2, r2, ip	@ tmp736, tmp730, tmp735
	ldr	ip, .L110+76	@ tmp891,
	add	r2, ip, r2	@ tmp737, tmp891, tmp736
	ldrb	r10, [r2, r10]	@ zero_extendqisi2	@ _287, hosTables[prephitmp_587][_286][_352]
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r1, r10	@ _289, _287
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r3, r1	@ _289, _284
@ arm/soar_wram.arm.c:318: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	bcs	.L37		@,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r2, [sp, #12]	@ zdist, %sfp
	cmp	r2, #40	@ zdist,
	bne	.L38		@,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r2, r4, #61	@ tmp739, i,
	cmp	r2, #6	@ tmp739,
@ arm/soar_wram.arm.c:320: 					u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:321: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bhi	.L38		@,
.L39:
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	ldr	r2, [r9, #64]	@ CurrentProc_112(D)->vid_page, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:349: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r4, r4, lsl #2	@ tmp769, i, i,
@ arm/soar_wram.arm.c:349: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r3, r1, lsl #5	@ offset, _289, tmp769,
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	add	r2, r2, r1, lsl #1	@ i, CurrentProc_112(D)->vid_page, offset,
@ arm/soar_wram.arm.c:326: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r3, r10, r3	@ tmp774, _287, _289
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, r2, r3, lsl #1	@ _455, i, tmp774,
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r3	@ i, _455
	bcs	.L45		@,
.L44:
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r2], #2	@ movhi	@ clr, MEM[(u16 *)i_490]
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r2, r3	@ i, _455
	bcc	.L44		@,
.L45:
@ arm/soar_wram.arm.c:327: 				    yBuffer[i] = height_on_screen;
	strb	r10, [r6]	@ _287, MEM[(unsigned char *)_563]
	b	.L35		@
.L103:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r9, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_112(D)->ShowMap,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _611, posY,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L109		@,
.L10:
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L110+80	@ tmp451,
@ arm/soar_wram.arm.c:182: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _611,
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp455, tmp451, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_196][posX_194]
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L110+28	@ tmp457,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_199], translatedLocations[_199]
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r9, #80]	@ translatedLocations[_199], CurrentProc_112(D)->location
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:187: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp463, loc,
	add	r3, r3, #-905969664	@ tmp466, tmp463,
	add	r3, r3, #3932160	@ tmp466, tmp466,
	lsr	r3, r3, r2	@ tmp465, tmp466,
	str	r3, [sp]	@ tmp465,
	mov	r0, #8	@,
	ldr	r3, .L110+84	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp800
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L110+32	@ tmp797,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L104:
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #60]	@ _3, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp474, _3,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp483, _3,
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L110+36	@ tmp801,
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L110+40	@ tmp795,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp483,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r9, #60]	@ _10, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp485, _10,
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp492, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp493, tmp492, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r9, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp493, newy
@ arm/soar_wram.arm.c:22: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r9, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp502, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp503, tmp502, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp503, newx
@ arm/soar_wram.arm.c:21: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r9, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:23: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	ldr	r3, .L110+88	@ tmp505,
	mov	lr, pc
	bx	r3		@ tmp505
	b	.L12		@
.L105:
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #60]	@ _20, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp511, _20,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp520, _20,
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L110+36	@ tmp801,
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L110+40	@ tmp795,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp520,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r9, #60]	@ _27, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp522, _27,
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp529, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp530, tmp529, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r9, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp530, newy
@ arm/soar_wram.arm.c:32: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r9, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp539, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp540, tmp539, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp540, newx
@ arm/soar_wram.arm.c:31: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r9, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:33: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	ldr	r3, .L110+88	@ tmp542,
	mov	lr, pc
	bx	r3		@ tmp542
	b	.L12		@
.L108:
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	mov	r3, #0	@ tmp788,
@ arm/soar_wram.arm.c:350: 	u16* base = vid_page + (offset);
	add	r2, r4, r4, lsl #2	@ tmp780, i, i,
	add	r1, r1, r2, lsl #5	@ tmp782, _284, tmp780,
	sub	r1, r1, #1	@ tmp783, tmp782,
@ arm/soar_wram.arm.c:351: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldr	r2, [r9, #64]	@ CurrentProc_112(D)->vid_page, CurrentProc_112(D)->vid_page
	lsl	r1, r1, #1	@ tmp785, tmp783,
	strh	r3, [r2, r1]	@ movhi	@ tmp788, *base_324
	b	.L35		@
.L38:
@ arm/soar_wram.arm.c:323: 						clr = getPointColour(offsetPoint.x, offsetPoint.y, CurrentProc->sunsetVal); //if not in shadow
	ldr	r2, [r9, #84]	@ _292, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	sub	r3, r2, #1	@ tmp740, _292,
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r3, #6	@ tmp740,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	ldr	r3, [sp, #8]	@ _344, %sfp
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	bhi	.L40		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #0	@ _344,
	bne	.L59		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, r0, lr	@ tmp819, _280, _283
	bmi	.L59		@,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ _362, _280, _283,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L110+92	@ tmp893,
	ldr	r0, .L110+96	@ tmp894,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp744, _362,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_362]
	ldrh	r0, [r0, r3]	@, colourMap[_362]
	ldr	r3, .L110+100	@ tmp895,
	mov	lr, pc
	bx	r3		@ tmp895
.L41:
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r3, [sp, #12]	@ zdist, %sfp
	cmp	r3, #256	@ zdist,
	bgt	.L43		@,
.L99:
@ arm/soar_wram.arm.c:326: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldrb	r3, [r6]	@ zero_extendqisi2	@ _289, MEM[(unsigned char *)_563]
	b	.L39		@
.L40:
@ arm/soar_wram.arm.c:129: 	if (sunsetVal){
	cmp	r2, #0	@ _292,
	beq	.L42		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	r3, #0	@ _344,
	bne	.L57		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r3, r0, lr	@ tmp820, _280, _283
	bmi	.L57		@,
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ tmp756, _280, _283,
	ldr	r2, .L110+92	@ tmp896,
	lsl	r3, r3, #1	@ tmp757, tmp756,
	ldrh	r0, [r2, r3]	@ clr,
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r3, [sp, #12]	@ zdist, %sfp
	cmp	r3, #256	@ zdist,
	ble	.L99		@,
.L43:
@ arm/soar_wram.arm.c:324: 					    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r3, .L110+100	@ tmp899,
	mov	lr, pc
	bx	r3		@ tmp899
	b	.L99		@
.L59:
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L41		@
.L42:
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #0	@ _344,
	bne	.L59		@,
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, r0, lr	@ tmp821, _280, _283
	bmi	.L59		@,
@ arm/soar_wram.arm.c:135: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ tmp762, _280, _283,
	ldr	r2, .L110+96	@ tmp897,
	lsl	r3, r3, #1	@ tmp763, tmp762,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L41		@
.L57:
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L41		@
.L48:
@ arm/soar_wram.arm.c:342: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, .L110+104	@ tmp680,
	ldr	r0, [r9, #64]	@, CurrentProc_112(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp680
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	ldr	r2, .L110+108	@ tmp681,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp683, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:342: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r9, #64]	@ tmp815, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp683, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L16:
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r3, [r9, #84]	@ _53, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r3, #0	@ _53,
	beq	.L19		@,
	mvn	r0, #0	@ tmp575,
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	sub	r3, r3, #1	@ tmp576, _53,
	str	r3, [r9, #84]	@ tmp576, CurrentProc_112(D)->sunsetVal
	str	r0, [r9, #88]	@ tmp575, CurrentProc_112(D)->sunTransition
.L17:
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r3, [r9, #84]	@ _101, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	sub	r8, r3, #1	@ tmp579, _101,
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r8, #6	@ tmp579,
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	movhi	r3, #0	@ tmp581,
	strhi	r3, [r9, #88]	@ tmp581, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	bhi	.L98		@,
	b	.L20		@
.L102:
@ arm/soar_wram.arm.c:166: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L110+112	@ tmp422,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp422,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L110+116	@,
	mov	lr, pc
	bx	r4		@ tmp800
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L110+108	@ tmp425,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp428, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp428, tmp428,
	lsl	r1, r1, #16	@ tmp430, tmp428,
	lsr	r1, r1, #16	@ tmp430, tmp430,
	str	r1, [sp]	@ tmp430,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L110+120	@,
	mov	lr, pc
	bx	r4		@ tmp800
	b	.L6		@
.L101:
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp402,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L110+12	@,
	ldr	r4, .L110+16	@ tmp800,
	str	ip, [sp]	@ tmp402,
	mov	lr, pc
	bx	r4		@ tmp800
	b	.L3		@
.L27:
@ arm/soar_wram.arm.c:96: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _63,
	beq	.L28		@,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp624, _225,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp629, camera_ht
	movge	r3, #0	@ tmp629,
	movlt	r3, #1	@ tmp629,
	cmp	r1, #64	@ _76,
	movle	r3, #0	@ tmp629,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp630, _214,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp630, camera_ht
	movge	r3, #0	@, tmp636
	andlt	r3, r3, #1	@,, tmp636, tmp629
	cmp	r3, #0	@ tmp636,
	beq	.L28		@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r3, r8, #1	@ tmp637, prephitmp_585,
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r9, #56]	@ tmp637, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:98: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r9, #52]	@ camera_ht, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	ldr	r3, .L110+88	@ tmp638,
	mov	lr, pc
	bx	r3		@ tmp638
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r8, [r9, #56]	@ prephitmp_585, CurrentProc_112(D)->sPlayerStepZ
	b	.L28		@
.L32:
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	ldr	r3, [sp, #48]	@ _94, %sfp
	cmp	r3, #0	@ _94,
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp650,
	strlt	r3, [sp, #48]	@ tmp650, %sfp
	strlt	r3, [r9, #48]	@ tmp650, CurrentProc_112(D)->sPlayerPosY
	b	.L33		@
.L30:
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	ldr	r3, [sp, #44]	@ _93, %sfp
	cmp	r3, #0	@ _93,
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp648,
	strlt	r3, [sp, #44]	@ tmp648, %sfp
	strlt	r3, [r9, #44]	@ tmp648, CurrentProc_112(D)->sPlayerPosX
	b	.L31		@
.L106:
@ arm/soar_wram.arm.c:51: 		EndLoop(CurrentProc);
	mov	r0, r9	@, CurrentProc
	ldr	r3, .L110+124	@ tmp570,
	mov	lr, pc
	bx	r3		@ tmp570
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #212	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L19:
	mov	r3, #1	@ tmp577,
@ arm/soar_wram.arm.c:57: 		else CurrentProc->sunTransition = 1;
	mov	r0, r3	@ prephitmp_380, _101
	str	r3, [r9, #88]	@ tmp577, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	str	r3, [r9, #84]	@ tmp577, CurrentProc_112(D)->sunsetVal
.L20:
@ arm/soar_wram.arm.c:65: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	add	r3, r3, r0	@ tmp580, _101, prephitmp_380
	str	r3, [r9, #84]	@ tmp580, CurrentProc_112(D)->sunsetVal
	mov	r3, #0	@ prephitmp_579,
	b	.L18		@
.L109:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp444, posX,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L110+128	@ tmp449,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp441, _611,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp446, tmp444,
	lsl	r2, r2, #16	@, tmp441,
	lsl	r1, r1, #16	@, tmp446,
	str	r3, [sp]	@ tmp449,
	mov	r0, #8	@,
	ldr	r3, .L110+120	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp800
	b	.L10		@
.L107:
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	add	r2, r8, #1	@ tmp645, prephitmp_585,
@ arm/soar_wram.arm.c:105: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r3, r3, #48	@ tmp644, _89,
	str	r3, [r9, #52]	@ tmp644, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	str	r2, [r9, #56]	@ tmp645, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	ldr	r3, .L110+88	@ tmp646,
	mov	lr, pc
	bx	r3		@ tmp646
@ arm/soar_wram.arm.c:276: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r8, [r9, #56]	@ prephitmp_585, CurrentProc_112(D)->sPlayerStepZ
	b	.L29		@
.L93:
@ arm/soar_wram.arm.c:36: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	ldr	r3, .L110+88	@ tmp550,
	mov	lr, pc
	bx	r3		@ tmp550
	b	.L97		@
.L111:
	.align	2
.L110:
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
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	BumpScreen
	.word	colourMap_sunset
	.word	colourMap
	.word	iwram_clr_blend_asm
	.word	vid_flip
	.word	33812480
	.word	10848
	.word	gObj_64x64
	.word	gObj_8x8
	.word	EndLoop
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
