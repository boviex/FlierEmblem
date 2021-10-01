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
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp410,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _193, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _193,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	r10, r0	@ CurrentProc, tmp834
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L105		@,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _193,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L114	@ tmp421,
@ arm/soar_wram.arm.c:160: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L101		@,
@ arm/soar_wram.arm.c:158: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp423, _193,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp423,
@ arm/soar_wram.arm.c:161: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L114+4	@ tmp428,
@ arm/soar_wram.arm.c:162: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L114+8	@ tmp431,
.L101:
	str	r3, [sp]	@ tmp431,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L114+12	@,
	ldr	r4, .L114+16	@ tmp814,
	mov	lr, pc
	bx	r4		@ tmp814
.L3:
@ arm/soar_wram.arm.c:164: 	if (CurrentProc->ShowMap)
	ldr	r3, [r10, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_112(D)->ShowMap,
	bne	.L106		@,
.L6:
@ arm/soar_wram.arm.c:175: 	int posY = CurrentProc->sFocusPtY;
	ldr	r5, [r10, #76]	@ posY, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L114+20	@ tmp447,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp446, posY,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp446, tmp447
@ arm/soar_wram.arm.c:174: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r10, #72]	@ posX, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:179: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L114+24	@ tmp451,
	sub	r2, r6, #1	@ tmp450, posX,
	cmp	r2, r3	@ tmp450, tmp451
	bls	.L107		@,
.L9:
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L114+28	@ tmp448,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r10, #80]	@ translatedLocations[0], CurrentProc_112(D)->location
.L8:
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L114+32	@ tmp819,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L108		@,
.L11:
@ arm/soar_wram.arm.c:25: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L109		@,
@ arm/soar_wram.arm.c:35: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L99		@,
.L102:
	ldr	r5, .L114+36	@ tmp823,
	ldr	r6, .L114+40	@ tmp818,
.L12:
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r10, #60]	@ _38, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L114+44	@ tmp564,
	lsl	r3, r3, #1	@ tmp565, _38,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	ip, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldrsh	r6, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L114+48	@ tmp567,
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r8, [r10, #44]	@ _37, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r7, [r10, #48]	@ _42, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r5, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r0, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r8, r6	@ prephitmp_663, _37, _40
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r7, r5	@ prephitmp_665, _42, _44
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r1	@ _48, cam_pivot_dx_Angles[_38], prephitmp_663
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	ip, ip, r2	@ _51, cam_pivot_dy_Angles[_38], prephitmp_665
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r0, #8	@ _52,
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r10, #44]	@ prephitmp_663, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r10, #72]	@ _48, CurrentProc_112(D)->sFocusPtX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r10, #48]	@ prephitmp_665, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	ip, [r10, #76]	@ _51, CurrentProc_112(D)->sFocusPtY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L110		@,
@ arm/soar_wram.arm.c:55: 	if (gKeyState.pressedKeys & L_BUTTON){
	tst	r0, #512	@ _52,
	bne	.L16		@,
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	ldr	r9, [r10, #88]	@ prephitmp_353, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	cmp	r9, #0	@ prephitmp_353,
	bne	.L17		@,
.L103:
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	mov	r3, #1	@ prephitmp_662,
.L18:
@ arm/soar_wram.arm.c:73: 	if (gKeyState.pressedKeys & R_BUTTON){
	tst	r0, #256	@ _52,
@ arm/soar_wram.arm.c:74: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [r10, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	eorne	r0, r0, #1	@ tmp597, CurrentProc_112(D)->ShowMap,
	strne	r0, [r10, #68]	@ tmp597, CurrentProc_112(D)->ShowMap
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _63,
	beq	.L23		@,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	add	r6, r6, r1	@ _64, _40, prephitmp_663
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r5, r5, r2	@ _65, _44, prephitmp_665
	mov	r7, r2	@ _42, prephitmp_665
	mov	r8, r1	@ _37, prephitmp_663
	mov	r2, r5	@ prephitmp_665, _65
	mov	r1, r6	@ prephitmp_663, _64
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r6, [r10, #44]	@ _64, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r5, [r10, #48]	@ _65, CurrentProc_112(D)->sPlayerPosY
.L23:
@ arm/soar_wram.arm.c:81: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _63,
@ arm/soar_wram.arm.c:83: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	movne	r1, r8	@ prephitmp_663, _37
	movne	r2, r7	@ prephitmp_665, _42
@ arm/soar_wram.arm.c:82: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r8, [r10, #44]	@ _37, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:83: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r7, [r10, #48]	@ _42, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:85: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _63,
	movne	r3, #0	@, tmp612
	andeq	r3, r3, #1	@,, tmp612, prephitmp_662
	cmp	r3, #0	@ tmp612,
	bne	.L1		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r5, lr, ip	@ tmp613, _48, _51
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r5, #1024	@ tmp613,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L114+52	@ tmp614,
	addcc	r3, r3, lr	@ tmp616, tmp614, _48
	ldrbcc	r3, [r3, ip, lsl #10]	@ zero_extendqisi2	@ _181, heightMap[_179]
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp618, prephitmp_663, prephitmp_665
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp618,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _170,
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L114+52	@ tmp619,
	addcc	r1, ip, r1	@ tmp621, tmp619, prephitmp_663
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _170, heightMap[_168]
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _170, _181
	movge	lr, r2	@ tmp623, _170
	movlt	lr, r3	@ tmp623, _181
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r10, #52	@,,
	ldm	r1, {r1, r9}	@,,
@ arm/soar_wram.arm.c:91: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _76,
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp623
	bge	.L27		@,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp624, _76,
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r9, r9, #1	@ prephitmp_677, prephitmp_677,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r10, #52]	@ tmp624, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	str	r9, [r10, #56]	@ prephitmp_677, CurrentProc_112(D)->sPlayerStepZ
.L28:
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _63,
	beq	.L29		@,
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r10, #52]	@ _89, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _89,
	blt	.L111		@,
.L29:
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r3, [r10, #44]	@ _93, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _93,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #36]	@ _93, %sfp
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L30		@,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp652,
	str	r3, [sp, #36]	@ tmp652, %sfp
	str	r3, [r10, #44]	@ tmp652, CurrentProc_112(D)->sPlayerPosX
.L31:
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r3, [r10, #48]	@ _94, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _94,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #40]	@ _94, %sfp
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L32		@,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp654,
	str	r3, [sp, #40]	@ tmp654, %sfp
	str	r3, [r10, #48]	@ tmp654, CurrentProc_112(D)->sPlayerPosY
.L33:
@ arm/soar_wram.arm.c:283: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	ldr	r3, [r10, #84]	@ CurrentProc_112(D)->sunsetVal, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:274: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r10, #60]	@ angle, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:283: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	ldr	r2, .L114+56	@ tmp658,
@ arm/soar_wram.arm.c:283: 	sky = skies[(CurrentProc->sunsetVal)>>1];
	asr	r3, r3, #1	@ tmp659, CurrentProc_112(D)->sunsetVal,
@ arm/soar_wram.arm.c:285: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r0, [r2, r3, lsl #2]	@ skies[_232], skies[_232]
	add	r3, r5, r5, lsl #2	@ tmp665, angle, angle,
	lsl	r3, r3, #9	@ tmp667, tmp665,
	add	r3, r3, r9, lsl #1	@ tmp668, tmp667, prephitmp_677,
	sub	r0, r0, #400	@ tmp661, skies[_232],
	add	r0, r0, r3, lsl #2	@, tmp661, tmp668,
	mov	r2, #10240	@,
	ldr	r1, [r10, #64]	@, CurrentProc_112(D)->vid_page
	ldr	r6, .L114+60	@ tmp671,
	mov	lr, pc
	bx	r6		@ tmp671
@ arm/soar_wram.arm.c:289: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp672,
	ldr	r2, .L114+64	@,
	add	r1, sp, #72	@,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp672, tmp
	mov	lr, pc
	bx	r6		@ tmp671
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r9, #4	@ tmp677, prephitmp_677,
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _267, tmp677,
	add	r2, r3, #3	@ _267, _267,
@ arm/soar_wram.arm.c:285: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, r9, #1	@ _238, prephitmp_677,
@ arm/soar_wram.arm.c:293: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r3, r3, #24	@ zdist, _238,
@ arm/soar_wram.arm.c:275: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp656, angle,
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r3, r2	@ zdist, _267
	str	r2, [sp, #44]	@ _267, %sfp
@ arm/soar_wram.arm.c:293: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	str	r3, [sp, #12]	@ zdist, %sfp
@ arm/soar_wram.arm.c:275: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp656,
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L52		@,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp685, angle
	and	r3, r3, #15	@ _700, tmp685,
	lsl	r3, r3, #9	@ tmp820, _700,
	str	r3, [sp, #56]	@ tmp820, %sfp
	rsb	r3, r4, #0	@ tmp686, tangent
	lsl	r2, r5, #9	@ tmp816, angle,
	and	r3, r3, #15	@ _704, tmp686,
	str	r2, [sp, #48]	@ tmp816, %sfp
	lsl	r3, r3, #9	@ tmp821, _704,
	lsl	r2, r4, #9	@ tmp817, tangent,
	mov	fp, r9	@ prephitmp_677, prephitmp_677
	str	r2, [sp, #52]	@ tmp817, %sfp
	str	r3, [sp, #60]	@ tmp821, %sfp
	b	.L51		@
.L37:
@ arm/soar_wram.arm.c:328: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r4, r1, r4	@ tmp796, _279, _292
@ arm/soar_wram.arm.c:328: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r4, #6	@ tmp796,
	bgt	.L112		@,
.L35:
@ arm/soar_wram.arm.c:305: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	ldr	r3, [sp, #28]	@ _580, %sfp
@ arm/soar_wram.arm.c:305: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r5, r5, #1	@ i, i,
@ arm/soar_wram.arm.c:305: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r9, r9, r3	@ ivtmp.59, ivtmp.59, _580
	ldr	r3, [sp, #32]	@ _582, %sfp
	cmp	r5, #128	@ i,
	add	r6, r6, r3	@ ivtmp.60, ivtmp.60, _582
	bne	.L50		@,
@ arm/soar_wram.arm.c:295: 		zdist+=INC_ZSTEP){
	ldr	r1, [sp, #12]	@ zdist, %sfp
	asr	r3, r1, #7	@ tmp809, zdist,
	asr	r2, r1, #8	@ tmp811, zdist,
	add	r3, r3, r1, asr #6	@ tmp810, tmp809, zdist,
	add	r3, r3, r2, lsl #2	@ tmp813, tmp810, tmp811,
	add	r3, r3, #2	@ _339, tmp813,
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r2, [sp, #44]	@ _267, %sfp
@ arm/soar_wram.arm.c:295: 		zdist+=INC_ZSTEP){
	add	r3, r1, r3	@ zdist, zdist, _339
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r3	@ _267, zdist
@ arm/soar_wram.arm.c:295: 		zdist+=INC_ZSTEP){
	str	r3, [sp, #12]	@ zdist, %sfp
@ arm/soar_wram.arm.c:294: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	blt	.L52		@,
.L51:
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r6, #0	@ ivtmp.60,
	add	r3, sp, #71	@ tmp884,,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #12]	@ zdist, %sfp
	str	r3, [sp, #8]	@ tmp884, %sfp
	ldr	r3, [sp, #48]	@ tmp816, %sfp
	ldr	ip, .L114+68	@ tmp887,
	add	r3, r3, r0	@ tmp689, tmp816, zdist
	lsl	r3, r3, #1	@ tmp690, tmp689,
	ldrsh	r1, [ip, r3]	@ _250, pleftmatrix[angle_227][zdist_487]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp820, %sfp
	add	r3, r3, r0	@ tmp694, tmp820, zdist
	lsl	r3, r3, #1	@ tmp695, tmp694,
	ldrsh	r2, [ip, r3]	@ _256, pleftmatrix[_700][zdist_487]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp817, %sfp
	add	r3, r3, r0	@ tmp700, tmp817, zdist
	lsl	r3, r3, #1	@ tmp701, tmp700,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_229][zdist_487], pleftmatrix[tangent_229][zdist_487]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	lr, [sp, #36]	@ _93, %sfp
@ arm/soar_wram.arm.c:301: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp704, pleftmatrix[tangent_229][zdist_487], _250
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r1, lr	@ _251, _250, _93
	str	r1, [sp, #20]	@ _251, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	mov	r1, r0	@ zdist, zdist
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r8, r6	@ ivtmp.59, ivtmp.60
@ arm/soar_wram.arm.c:305: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r5, r6	@ i, ivtmp.60
	mov	r9, r6	@ ivtmp.59, ivtmp.59
@ arm/soar_wram.arm.c:301: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _580, tmp704,
	str	r3, [sp, #28]	@ _580, %sfp
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp821, %sfp
	add	r3, r3, r0	@ tmp707, tmp821, zdist
	lsl	r3, r3, #1	@ tmp708, tmp707,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_704][zdist_487], pleftmatrix[_704][zdist_487]
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #40]	@ _94, %sfp
@ arm/soar_wram.arm.c:302: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp711, pleftmatrix[_704][zdist_487], _256
@ arm/soar_wram.arm.c:302: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _582, tmp711,
@ arm/soar_wram.arm.c:200: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r2, r0	@ _257, _256, _94
	str	r2, [sp, #24]	@ _257, %sfp
@ arm/soar_wram.arm.c:302: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #32]	@ _582, %sfp
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r7, r1, #1	@ _290, zdist,
.L50:
@ arm/soar_wram.arm.c:313: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldr	r3, [sp, #8]	@ ivtmp.55, %sfp
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2	@ _279, MEM[(unsigned char *)_584]
@ arm/soar_wram.arm.c:313: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r1, #159	@ _279,
@ arm/soar_wram.arm.c:313: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	str	r3, [sp, #8]	@ ivtmp.55, %sfp
@ arm/soar_wram.arm.c:313: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	bhi	.L35		@,
@ arm/soar_wram.arm.c:307: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #20]	@ _251, %sfp
	add	r0, r3, r9, asr #8	@ _275, _251, ivtmp.59,
@ arm/soar_wram.arm.c:307: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #24]	@ _257, %sfp
	add	lr, r3, r6, asr #8	@ _278, _257, ivtmp.60,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	lr, #1024	@ _278,
	cmplt	r0, #1024	@, _275,
	movge	r8, #1	@ _282,
	movlt	r8, #0	@ _282,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r4, #0	@ _289,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L36		@,
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r3, r0, lr	@ tmp838, _275, _278
@ arm/soar_wram.arm.c:140: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r4, r8	@ _289, _282
@ arm/soar_wram.arm.c:141: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r3, .L114+52	@ tmp907,
	addpl	r3, r3, r0	@ tmp724, tmp907, _275
	ldrbpl	r4, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _289, heightMap[_287]
.L36:
@ arm/soar_wram.arm.c:150: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	ip, fp, fp, lsl #8	@ tmp732, prephitmp_677, prephitmp_677,
	rsb	ip, ip, ip, lsl #8	@ tmp734, tmp732, tmp732,
	rsb	r2, r7, r7, lsl #8	@ tmp729, _290, _290,
	add	r2, r2, ip	@ tmp735, tmp729, tmp734
	ldr	ip, .L114+72	@ tmp908,
	add	r2, ip, r2	@ tmp736, tmp908, tmp735
	ldrb	r4, [r2, r4]	@ zero_extendqisi2	@ _292, hosTables[prephitmp_695][_290][_291]
@ arm/soar_wram.arm.c:316: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r1, r4	@ _294, _292
@ arm/soar_wram.arm.c:316: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r3, r1	@ _294, _279
@ arm/soar_wram.arm.c:316: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	bcs	.L37		@,
@ arm/soar_wram.arm.c:319: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r2, [sp, #12]	@ zdist, %sfp
	cmp	r2, #40	@ zdist,
	bne	.L38		@,
@ arm/soar_wram.arm.c:319: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r2, r5, #61	@ tmp738, i,
	cmp	r2, #6	@ tmp738,
@ arm/soar_wram.arm.c:318: 					u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:319: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bhi	.L38		@,
.L39:
@ arm/soar_wram.arm.c:324: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldr	lr, [r10, #64]	@ _305, CurrentProc_112(D)->vid_page
	add	ip, r5, r5, lsl #2	@ tmp770, i, i,
@ arm/soar_wram.arm.c:347: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	ip, r3, ip, lsl #5	@ offset, _294, tmp770,
@ arm/soar_wram.arm.c:348: 	u16* base = vid_page + (offset);
	add	r1, lr, ip, lsl #1	@ tmp.37, _305, offset,
@ arm/soar_wram.arm.c:324: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r3, r4, r3	@ tmp774, _292, _294
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r8, r1, r3, lsl #1	@ _450, tmp.37, tmp774,
@ arm/soar_wram.arm.c:348: 	u16* base = vid_page + (offset);
	lsl	r2, ip, #1	@ tmp773, offset,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r1, r8	@ tmp.37, _450
@ arm/soar_wram.arm.c:348: 	u16* base = vid_page + (offset);
	str	r2, [sp, #16]	@ tmp773, %sfp
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r3, r3, #1	@ _489, tmp774,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L48		@,
	sub	r3, r3, #1	@ _727, _489,
	cmp	r3, #11	@ _727,
	lsr	r3, r3, #1	@ tmp776, _727,
	add	r3, r3, #1	@ niters.31, tmp776,
	lsr	r2, r1, #1	@ tmp779, tmp.37,
	str	r3, [sp, #16]	@ niters.31, %sfp
	and	r2, r2, #1	@ prolog_loop_niters.33, tmp779,
	bls	.L44		@,
	cmp	r2, #0	@ prolog_loop_niters.33,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lslne	r3, ip, #1	@ tmp773, offset,
	strhne	r0, [lr, r3]	@ movhi	@ clr, *base_312
	ldr	r3, [sp, #16]	@ niters.31, %sfp
	sub	r3, r3, r2	@ niters.34, niters.31, prolog_loop_niters.33
	add	r2, r2, ip	@ tmp786, prolog_loop_niters.33, offset
	add	r2, lr, r2, lsl #1	@ vectp.39, _305, tmp786,
	lsl	ip, r0, #16	@ tmp782, clr,
	lsr	lr, r3, #1	@ bnd.35, niters.34,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	addne	r1, r1, #2	@ tmp.37, tmp.37,
	orr	ip, ip, ip, lsr #16	@ vect_cst__670, tmp782, tmp782,
	add	lr, r2, lr, lsl #2	@ _573, vectp.39, bnd.35,
.L46:
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	str	ip, [r2], #4	@ vect_cst__670, MEM <vector(2) short unsigned int> [(u16 *)vectp.38_650]
	cmp	lr, r2	@ _573, vectp.39
	bne	.L46		@,
	bic	r2, r3, #1	@ niters_vector_mult_vf.36, niters.34,
	cmp	r2, r3	@ niters_vector_mult_vf.36, niters.34
	add	r1, r1, r2, lsl #1	@ tmp.37, tmp.37, niters_vector_mult_vf.36,
	beq	.L48		@,
.L44:
	mov	r3, r1	@ i, tmp.37
	strh	r0, [r3], #2	@ movhi	@ clr, *i_683
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _450, i
	bls	.L48		@,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, r1, #4	@ i, tmp.37,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _450, i
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r1, #2]	@ movhi	@ clr, MEM[(u16 *)i_683 + 2B]
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L48		@,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, r1, #6	@ i, tmp.37,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _450, i
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r1, #4]	@ movhi	@ clr, MEM[(u16 *)i_683 + 4B]
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L48		@,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, r1, #8	@ i, tmp.37,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _450, i
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r1, #6]	@ movhi	@ clr, MEM[(u16 *)i_683 + 6B]
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L48		@,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, r1, #10	@ i, tmp.37,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _450, i
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r1, #8]	@ movhi	@ clr, MEM[(u16 *)i_683 + 8B]
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r0, [r1, #10]	@ movhi	@ clr, MEM[(u16 *)i_683 + 10B]
.L48:
@ arm/soar_wram.arm.c:325: 				    yBuffer[i] = height_on_screen;
	ldr	r3, [sp, #8]	@ ivtmp.55, %sfp
	strb	r4, [r3]	@ _292, MEM[(unsigned char *)_584]
	b	.L35		@
.L107:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r10, #68]	@ CurrentProc_112(D)->ShowMap, CurrentProc_112(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_112(D)->ShowMap,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _744, posY,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L113		@,
.L10:
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L114+76	@ tmp464,
@ arm/soar_wram.arm.c:182: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _744,
@ arm/soar_wram.arm.c:183: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp468, tmp464, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_216][posX_214]
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L114+28	@ tmp470,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_219], translatedLocations[_219]
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:185: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r10, #80]	@ translatedLocations[_219], CurrentProc_112(D)->location
@ arm/soar_wram.arm.c:186: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:187: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp476, loc,
	add	r3, r3, #-905969664	@ tmp479, tmp476,
	add	r3, r3, #3932160	@ tmp479, tmp479,
	lsr	r3, r3, r2	@ tmp478, tmp479,
	str	r3, [sp]	@ tmp478,
	mov	r0, #8	@,
	ldr	r3, .L114+80	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp814
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L114+32	@ tmp819,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L108:
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r10, #60]	@ _3, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp487, _3,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp496, _3,
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L114+36	@ tmp823,
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L114+40	@ tmp818,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp496,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r10, #60]	@ _10, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp498, _10,
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r10, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp505, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp506, tmp505, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r10, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp506, newy
@ arm/soar_wram.arm.c:22: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r10, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp515, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp516, tmp515, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp516, newx
@ arm/soar_wram.arm.c:21: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r10, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:23: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	ldr	r3, .L114+84	@ tmp518,
	mov	lr, pc
	bx	r3		@ tmp518
	b	.L12		@
.L109:
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r10, #60]	@ _20, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp524, _20,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp533, _20,
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L114+36	@ tmp823,
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L114+40	@ tmp818,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp533,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r10, #60]	@ _27, CurrentProc_112(D)->sPlayerYaw
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp535, _27,
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r10, #48]	@ CurrentProc_112(D)->sPlayerPosY, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp542, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp543, tmp542, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r10, #44]	@ CurrentProc_112(D)->sPlayerPosX, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp543, newy
@ arm/soar_wram.arm.c:32: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r10, #48]	@ newy, CurrentProc_112(D)->sPlayerPosY
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp552, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp553, tmp552, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp553, newx
@ arm/soar_wram.arm.c:31: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r10, #44]	@ newx, CurrentProc_112(D)->sPlayerPosX
@ arm/soar_wram.arm.c:33: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	ldr	r3, .L114+84	@ tmp555,
	mov	lr, pc
	bx	r3		@ tmp555
	b	.L12		@
.L112:
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	mov	r3, #0	@ tmp807,
@ arm/soar_wram.arm.c:348: 	u16* base = vid_page + (offset);
	add	r2, r5, r5, lsl #2	@ tmp799, i, i,
	add	r1, r1, r2, lsl #5	@ tmp801, _279, tmp799,
	sub	r1, r1, #1	@ tmp802, tmp801,
@ arm/soar_wram.arm.c:349: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldr	r2, [r10, #64]	@ CurrentProc_112(D)->vid_page, CurrentProc_112(D)->vid_page
	lsl	r1, r1, #1	@ tmp804, tmp802,
	strh	r3, [r2, r1]	@ movhi	@ tmp807, *base_328
	b	.L35		@
.L38:
@ arm/soar_wram.arm.c:321: 						clr = getPointColour(offsetPoint.x, offsetPoint.y, CurrentProc->sunsetVal); //if not in shadow
	ldr	r2, [r10, #84]	@ _297, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	sub	r1, r2, #1	@ tmp739, _297,
@ arm/soar_wram.arm.c:122: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r1, #6	@ tmp739,
	bhi	.L40		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r8, #0	@ _282,
	bne	.L63		@,
@ arm/soar_wram.arm.c:124: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r0, lr	@ tmp839, _275, _278
	bmi	.L63		@,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ _355, _275, _278,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L114+88	@ tmp910,
	ldr	r0, .L114+92	@ tmp911,
@ arm/soar_wram.arm.c:125: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp743, _355,
@ arm/soar_wram.arm.c:127: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_355]
	ldrh	r0, [r0, r3]	@, colourMap[_355]
	ldr	r3, .L114+96	@ tmp912,
	mov	lr, pc
	bx	r3		@ tmp912
@ arm/soar_wram.arm.c:324: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldr	r3, [sp, #8]	@ ivtmp.55, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _294, MEM[(unsigned char *)_584]
.L41:
@ arm/soar_wram.arm.c:322: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	ldr	r2, [sp, #12]	@ zdist, %sfp
	cmp	r2, #384	@ zdist,
@ arm/soar_wram.arm.c:322: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	orrgt	r0, r0, #15552	@ tmp765, clr,
	orrgt	r0, r0, #35	@ tmp765, tmp765,
	lslgt	r0, r0, #16	@ clr, tmp765,
	lsrgt	r0, r0, #16	@ clr, clr,
	b	.L39		@
.L40:
@ arm/soar_wram.arm.c:129: 	if (sunsetVal){
	cmp	r2, #0	@ _297,
	beq	.L42		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	r8, #0	@ _282,
	bne	.L61		@,
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r2, r0, lr	@ tmp840, _275, _278
	bmi	.L61		@,
@ arm/soar_wram.arm.c:131: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r0, lr, lsl #10	@ tmp755, _275, _278,
	ldr	r1, .L114+88	@ tmp914,
	lsl	r2, r2, #1	@ tmp756, tmp755,
	ldrh	r0, [r1, r2]	@ clr,
	b	.L41		@
.L63:
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L41		@
.L42:
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r8, #0	@ _282,
	bne	.L63		@,
@ arm/soar_wram.arm.c:134: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r2, r0, lr	@ tmp841, _275, _278
	bmi	.L63		@,
@ arm/soar_wram.arm.c:135: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r2, r0, lr, lsl #10	@ tmp761, _275, _278,
	ldr	r1, .L114+92	@ tmp915,
	lsl	r2, r2, #1	@ tmp762, tmp761,
	ldrh	r0, [r1, r2]	@ clr,
	b	.L41		@
.L61:
@ arm/soar_wram.arm.c:130: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L41		@
.L52:
@ arm/soar_wram.arm.c:340: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, .L114+100	@ tmp680,
	ldr	r0, [r10, #64]	@, CurrentProc_112(D)->vid_page
	mov	lr, pc
	bx	r3		@ tmp680
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	ldr	r2, .L114+104	@ tmp681,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp683, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:340: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r10, #64]	@ tmp835, CurrentProc_112(D)->vid_page
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp683, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L16:
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r3, [r10, #84]	@ _53, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r3, #0	@ _53,
	beq	.L19		@,
	mvn	r9, #0	@ tmp586,
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	sub	r3, r3, #1	@ tmp587, _53,
	str	r3, [r10, #84]	@ tmp587, CurrentProc_112(D)->sunsetVal
	str	r9, [r10, #88]	@ tmp586, CurrentProc_112(D)->sunTransition
.L17:
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r3, [r10, #84]	@ _101, CurrentProc_112(D)->sunsetVal
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	sub	fp, r3, #1	@ tmp590, _101,
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	fp, #6	@ tmp590,
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	movhi	r3, #0	@ tmp592,
	strhi	r3, [r10, #88]	@ tmp592, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	bhi	.L103		@,
	b	.L20		@
.L106:
@ arm/soar_wram.arm.c:166: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L114+108	@ tmp435,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp435,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L114+112	@,
	mov	lr, pc
	bx	r4		@ tmp814
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L114+104	@ tmp438,
@ arm/soar_wram.arm.c:168: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp441, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp441, tmp441,
	lsl	r1, r1, #16	@ tmp443, tmp441,
	lsr	r1, r1, #16	@ tmp443, tmp443,
	str	r1, [sp]	@ tmp443,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L114+116	@,
	mov	lr, pc
	bx	r4		@ tmp814
	b	.L6		@
.L105:
@ arm/soar_wram.arm.c:159: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp415,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L114+12	@,
	ldr	r4, .L114+16	@ tmp814,
	str	ip, [sp]	@ tmp415,
	mov	lr, pc
	bx	r4		@ tmp814
	b	.L3		@
.L27:
@ arm/soar_wram.arm.c:96: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _63,
	beq	.L28		@,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp629, _181,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp634, camera_ht
	movge	r3, #0	@ tmp634,
	movlt	r3, #1	@ tmp634,
	cmp	r1, #64	@ _76,
	movle	r3, #0	@ tmp634,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp635, _170,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp635, camera_ht
	movge	r3, #0	@, tmp641
	andlt	r3, r3, #1	@,, tmp641, tmp634
	cmp	r3, #0	@ tmp641,
	beq	.L28		@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r3, r9, #1	@ tmp642, prephitmp_677,
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r10, #56]	@ tmp642, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:98: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r10, #52]	@ camera_ht, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	ldr	r3, .L114+84	@ tmp643,
	mov	lr, pc
	bx	r3		@ tmp643
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r9, [r10, #56]	@ prephitmp_677, CurrentProc_112(D)->sPlayerStepZ
	b	.L28		@
.L32:
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	cmp	r3, #0	@ _94,
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp655,
	strlt	r3, [sp, #40]	@ tmp655, %sfp
	strlt	r3, [r10, #48]	@ tmp655, CurrentProc_112(D)->sPlayerPosY
	b	.L33		@
.L30:
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	cmp	r3, #0	@ _93,
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp653,
	strlt	r3, [sp, #36]	@ tmp653, %sfp
	strlt	r3, [r10, #44]	@ tmp653, CurrentProc_112(D)->sPlayerPosX
	b	.L31		@
.L110:
@ arm/soar_wram.arm.c:51: 		EndLoop(CurrentProc);
	mov	r0, r10	@, CurrentProc
	ldr	r3, .L114+120	@ tmp581,
	mov	lr, pc
	bx	r3		@ tmp581
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L19:
	mov	r3, #1	@ tmp588,
@ arm/soar_wram.arm.c:57: 		else CurrentProc->sunTransition = 1;
	mov	r9, r3	@ prephitmp_353, _101
	str	r3, [r10, #88]	@ tmp588, CurrentProc_112(D)->sunTransition
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	str	r3, [r10, #84]	@ tmp588, CurrentProc_112(D)->sunsetVal
.L20:
@ arm/soar_wram.arm.c:65: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	add	r3, r3, r9	@ tmp591, _101, prephitmp_353
	str	r3, [r10, #84]	@ tmp591, CurrentProc_112(D)->sunsetVal
	mov	r3, #0	@ prephitmp_662,
	b	.L18		@
.L113:
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp457, posX,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L114+124	@ tmp462,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp454, _744,
@ arm/soar_wram.arm.c:180: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp459, tmp457,
	lsl	r2, r2, #16	@, tmp454,
	lsl	r1, r1, #16	@, tmp459,
	str	r3, [sp]	@ tmp462,
	mov	r0, #8	@,
	ldr	r3, .L114+116	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp814
	b	.L10		@
.L111:
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	add	r2, r9, #1	@ tmp650, prephitmp_677,
@ arm/soar_wram.arm.c:105: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r3, r3, #48	@ tmp649, _89,
	str	r3, [r10, #52]	@ tmp649, CurrentProc_112(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	str	r2, [r10, #56]	@ tmp650, CurrentProc_112(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	ldr	r3, .L114+84	@ tmp651,
	mov	lr, pc
	bx	r3		@ tmp651
@ arm/soar_wram.arm.c:276: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r9, [r10, #56]	@ prephitmp_677, CurrentProc_112(D)->sPlayerStepZ
	b	.L29		@
.L99:
@ arm/soar_wram.arm.c:36: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	ldr	r3, .L114+84	@ tmp563,
	mov	lr, pc
	bx	r3		@ tmp563
	b	.L102		@
.L115:
	.align	2
.L114:
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
