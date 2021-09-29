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
@ options passed: -mcpu=arm7tdmi -marm -mthumb-interwork -mtune=arm7tdmi -march=armv4t -Ofast -fomit-frame-pointer -ffast-math -fno-jump-tables -fno-toplevel-reorder
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
@ arm/soar_wram.arm.c:144: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp388,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:144: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _177, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:145: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _177,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #28]	@ tmp785, %sfp
@ arm/soar_wram.arm.c:145: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L104		@,
@ arm/soar_wram.arm.c:146: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _177,
@ arm/soar_wram.arm.c:146: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L113	@ tmp399,
@ arm/soar_wram.arm.c:146: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L101		@,
@ arm/soar_wram.arm.c:144: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp401, _177,
@ arm/soar_wram.arm.c:147: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp401,
@ arm/soar_wram.arm.c:147: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L113+4	@ tmp406,
@ arm/soar_wram.arm.c:148: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L113+8	@ tmp409,
.L101:
	str	r3, [sp]	@ tmp409,
	mov	r2, #88	@,
	ldr	r3, .L113+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L113+16	@ tmp765,
	mov	lr, pc
	bx	r4		@ tmp765
@ arm/soar_wram.arm.c:150: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_100(D)->ShowMap, CurrentProc_100(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_100(D)->ShowMap,
	bne	.L105		@,
.L6:
@ arm/soar_wram.arm.c:161: 	int posY = CurrentProc->sFocusPtY;
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r1, #76]	@ posY, CurrentProc_100(D)->sFocusPtY
@ arm/soar_wram.arm.c:165: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L113+20	@ tmp425,
@ arm/soar_wram.arm.c:165: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp424, posY,
@ arm/soar_wram.arm.c:165: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp424, tmp425
@ arm/soar_wram.arm.c:160: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r1, #72]	@ posX, CurrentProc_100(D)->sFocusPtX
@ arm/soar_wram.arm.c:165: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:165: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L113+24	@ tmp429,
	sub	r2, r6, #1	@ tmp428, posX,
	cmp	r2, r3	@ tmp428, tmp429
	bls	.L106		@,
.L9:
@ arm/soar_wram.arm.c:171: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L113+28	@ tmp426,
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_100(D)->location
.L8:
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L113+32	@ tmp764,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L107		@,
.L11:
@ arm/soar_wram.arm.c:23: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L108		@,
@ arm/soar_wram.arm.c:33: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L99		@,
.L102:
	ldr	r5, .L113+36	@ tmp760,
	ldr	r6, .L113+40	@ tmp757,
.L12:
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r0, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r0, #60]	@ _38, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L113+44	@ tmp539,
	lsl	r3, r3, #1	@ tmp540, _38,
	ldrsh	ip, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L113+48	@ tmp542,
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r7, [r0, #44]	@ _37, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r5, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r6, [r0, #48]	@ _42, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r8, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r7, ip	@ prephitmp_619, _37, _40
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r6, r3	@ prephitmp_621, _42, _44
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	r5, r5, r1	@ _48, cam_pivot_dx_Angles[_38], prephitmp_619
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r2	@ _51, cam_pivot_dy_Angles[_38], prephitmp_621
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r8, #8	@ _52,
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r0, #44]	@ prephitmp_619, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r5, [r0, #72]	@ _48, CurrentProc_100(D)->sFocusPtX
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r0, #48]	@ prephitmp_621, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r0, #76]	@ _51, CurrentProc_100(D)->sFocusPtY
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L109		@,
@ arm/soar_wram.arm.c:53: 	if (gKeyState.pressedKeys & L_BUTTON){
	tst	r8, #512	@ _52,
	movne	r9, r0	@ CurrentProc, CurrentProc
@ arm/soar_wram.arm.c:54: 		CurrentProc->isSunset ^= 1;
	ldrne	r0, [r9, #84]	@ CurrentProc_100(D)->isSunset, CurrentProc_100(D)->isSunset
	eorne	r0, r0, #1	@ tmp560, CurrentProc_100(D)->isSunset,
	strne	r0, [r9, #84]	@ tmp560, CurrentProc_100(D)->isSunset
@ arm/soar_wram.arm.c:57: 	if (gKeyState.pressedKeys & R_BUTTON){
	tst	r8, #256	@ _52,
@ arm/soar_wram.arm.c:58: 		CurrentProc->ShowMap ^= 1;
	ldrne	r8, [sp, #28]	@ CurrentProc, %sfp
	ldrne	r0, [r8, #68]	@ CurrentProc_100(D)->ShowMap, CurrentProc_100(D)->ShowMap
	eorne	r0, r0, #1	@ tmp566, CurrentProc_100(D)->ShowMap,
	strne	r0, [r8, #68]	@ tmp566, CurrentProc_100(D)->ShowMap
@ arm/soar_wram.arm.c:61: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _57, gKeyState.heldKeys
@ arm/soar_wram.arm.c:61: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _57,
	beq	.L18		@,
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, r2	@ _59, _44, prephitmp_621
	mov	r6, r2	@ _42, prephitmp_621
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	add	ip, ip, r1	@ _58, _40, prephitmp_619
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r7, r1	@ _37, prephitmp_619
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	ip, [r2, #44]	@ _58, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r2, #48]	@ _59, CurrentProc_100(D)->sPlayerPosY
	mov	r1, ip	@ prephitmp_619, _58
	mov	r2, r3	@ prephitmp_621, _59
.L18:
@ arm/soar_wram.arm.c:65: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _57,
@ arm/soar_wram.arm.c:66: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldrne	r3, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:67: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	movne	r1, r7	@ prephitmp_619, _37
	movne	r2, r6	@ prephitmp_621, _42
@ arm/soar_wram.arm.c:66: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r7, [r3, #44]	@ _37, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:67: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r6, [r3, #48]	@ _42, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:69: 	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _57,
	beq	.L1		@,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r5, lr	@ tmp577, _48, _51
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp577,
@ arm/soar_wram.arm.c:127: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L113+52	@ tmp578,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp582, prephitmp_619, prephitmp_621
@ arm/soar_wram.arm.c:127: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r3, r3, r5	@ tmp580, tmp578, _48
	ldrbcc	r3, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _165, heightMap[_163]
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r3, #0	@ _165,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp582,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _154,
@ arm/soar_wram.arm.c:127: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L113+52	@ tmp583,
	addcc	r1, ip, r1	@ tmp585, tmp583, prephitmp_619
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _154, heightMap[_152]
@ arm/soar_wram.arm.c:76: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _154, _165
	movge	lr, r2	@ tmp587, _154
	movlt	lr, r3	@ tmp587, _165
@ arm/soar_wram.arm.c:75: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r5, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r5, #52	@,,
	ldm	r1, {r1, r6}	@,,
@ arm/soar_wram.arm.c:75: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _66,
@ arm/soar_wram.arm.c:76: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp587
	bge	.L22		@,
@ arm/soar_wram.arm.c:77: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp588, _66,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ prephitmp_631, prephitmp_631,
@ arm/soar_wram.arm.c:77: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r5, #52]	@ tmp588, CurrentProc_100(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerStepZ += 1;
	str	r6, [r5, #56]	@ prephitmp_631, CurrentProc_100(D)->sPlayerStepZ
.L23:
@ arm/soar_wram.arm.c:87: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _57,
	beq	.L24		@,
@ arm/soar_wram.arm.c:88: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #52]	@ _79, CurrentProc_100(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:88: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _79,
	blt	.L110		@,
.L24:
@ arm/soar_wram.arm.c:96: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r2, #44]	@ _83, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:96: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _83,
@ arm/soar_wram.arm.c:96: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #32]	@ _83, %sfp
@ arm/soar_wram.arm.c:96: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L25		@,
@ arm/soar_wram.arm.c:96: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp614,
	str	r3, [sp, #32]	@ tmp614, %sfp
	str	r3, [r2, #44]	@ tmp614, CurrentProc_100(D)->sPlayerPosX
.L26:
@ arm/soar_wram.arm.c:98: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r2, #48]	@ _84, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:98: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _84,
@ arm/soar_wram.arm.c:98: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #36]	@ _84, %sfp
@ arm/soar_wram.arm.c:98: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L27		@,
@ arm/soar_wram.arm.c:98: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp616,
	str	r3, [sp, #36]	@ tmp616, %sfp
	str	r3, [r2, #48]	@ tmp616, CurrentProc_100(D)->sPlayerPosY
.L28:
@ arm/soar_wram.arm.c:260: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r2, #60]	@ angle, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:265: 	if (CurrentProc->isSunset) CpuFastCopy(&SkyBG_sunset + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldr	r3, [r2, #84]	@ CurrentProc_100(D)->isSunset, CurrentProc_100(D)->isSunset
	cmp	r3, #0	@ CurrentProc_100(D)->isSunset,
@ arm/soar_wram.arm.c:265: 	if (CurrentProc->isSunset) CpuFastCopy(&SkyBG_sunset + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r3, r5, r5, lsl #2	@ tmp621, angle, angle,
	lsl	r3, r3, #9	@ tmp623, tmp621,
	add	r3, r3, #1073741824	@ tmp624, tmp623,
	sub	r3, r3, #100	@ tmp624, tmp624,
	ldrne	r0, .L113+56	@ tmp629,
@ arm/soar_wram.arm.c:266: 	else CpuFastCopy(&SkyBG + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	ldreq	r0, .L113+60	@ tmp632,
@ arm/soar_wram.arm.c:265: 	if (CurrentProc->isSunset) CpuFastCopy(&SkyBG_sunset + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r3, r3, r6, lsl #1	@ tmp626, tmp624, prephitmp_631,
	lsl	r3, r3, #2	@ _702, tmp626,
	ldr	r1, [r2, #64]	@ pretmp_703, CurrentProc_100(D)->vid_page
@ arm/soar_wram.arm.c:266: 	else CpuFastCopy(&SkyBG + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r0, r0, r3	@, tmp632, _702
	mov	r2, #10240	@,
	ldr	r8, .L113+64	@ tmp763,
	mov	lr, pc
	bx	r8		@ tmp763
@ arm/soar_wram.arm.c:269: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp634,
	ldr	r2, .L113+68	@,
	add	r1, sp, #72	@ tmp878,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp634, tmp
	mov	lr, pc
	bx	r8		@ tmp763
@ arm/soar_wram.arm.c:274: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r6, #4	@ tmp639, prephitmp_631,
@ arm/soar_wram.arm.c:265: 	if (CurrentProc->isSunset) CpuFastCopy(&SkyBG_sunset + ((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r10, r6, #1	@ _698, prephitmp_631,
@ arm/soar_wram.arm.c:274: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _262, tmp639,
	add	r3, r3, #3	@ _262, _262,
@ arm/soar_wram.arm.c:273: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r10, r10, #24	@ zdist, _698,
@ arm/soar_wram.arm.c:261: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp618, angle,
@ arm/soar_wram.arm.c:274: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r10, r3	@ zdist, _262
	str	r3, [sp, #40]	@ _262, %sfp
@ arm/soar_wram.arm.c:261: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp618,
@ arm/soar_wram.arm.c:274: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L31		@,
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r6, r6, lsl #8	@ tmp775, prephitmp_631, prephitmp_631,
	rsb	r3, r6, r6, lsl #8	@ tmp777, tmp775, tmp775,
	str	r3, [sp, #60]	@ tmp777, %sfp
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp641, angle
	and	r3, r3, #15	@ _651, tmp641,
	lsl	r3, r3, #9	@ tmp767, _651,
	str	r3, [sp, #52]	@ tmp767, %sfp
	rsb	r3, r4, #0	@ tmp642, tangent
	and	r3, r3, #15	@ _655, tmp642,
	lsl	r3, r3, #9	@ tmp768, _655,
	lsl	r2, r5, #9	@ tmp761, angle,
	str	r3, [sp, #56]	@ tmp768, %sfp
@ arm/soar_wram.arm.c:320: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	str	r2, [sp, #44]	@ tmp761, %sfp
	lsl	r2, r4, #9	@ tmp762, tangent,
	str	r2, [sp, #48]	@ tmp762, %sfp
	ldr	r9, [r3, #64]	@ prephitmp_688, CurrentProc_100(D)->vid_page
	b	.L47		@
.L34:
@ arm/soar_wram.arm.c:308: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r1, r2, r1	@ tmp738, _274, _287
@ arm/soar_wram.arm.c:308: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r1, #6	@ tmp738,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	movgt	r3, #0	@ tmp744,
@ arm/soar_wram.arm.c:328: 	u16* base = vid_page + (offset);
	addgt	r2, r2, r5	@ tmp739, _274, ivtmp.54
	subgt	r2, r2, #1	@ tmp740, tmp739,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lslgt	r2, r2, #1	@ tmp741, tmp740,
	strhgt	r3, [r9, r2]	@ movhi	@ tmp744, *base_321
.L32:
@ arm/soar_wram.arm.c:285: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r3, sp, #199	@ tmp914,,
	cmp	r0, r3	@ ivtmp.52, tmp914
	ldr	r3, [sp, #16]	@ _537, %sfp
	add	r4, r4, r3	@ ivtmp.56, ivtmp.56, _537
	ldr	r3, [sp, #20]	@ _539, %sfp
	add	r5, r5, #160	@ ivtmp.54, ivtmp.54,
	add	lr, lr, r3	@ ivtmp.57, ivtmp.57, _539
	bne	.L46		@,
@ arm/soar_wram.arm.c:275: 		zdist+=INC_ZSTEP){
	ldr	r10, [sp, #24]	@ zdist, %sfp
	asr	r3, r10, #7	@ tmp746, zdist,
	add	r3, r3, r10, asr #6	@ tmp747, tmp746, zdist,
	asr	r2, r10, #8	@ tmp748, zdist,
	add	r3, r3, r2, lsl #2	@ tmp750, tmp747, tmp748,
	add	r3, r3, #2	@ _332, tmp750,
@ arm/soar_wram.arm.c:275: 		zdist+=INC_ZSTEP){
	add	r10, r10, r3	@ zdist, zdist, _332
@ arm/soar_wram.arm.c:274: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r3, [sp, #40]	@ _262, %sfp
	cmp	r3, r10	@ _262, zdist
	blt	.L48		@,
.L47:
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	lr, #0	@ ivtmp.57,
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp761, %sfp
	ldr	ip, .L113+72	@ tmp891,
	add	r3, r3, r10	@ tmp645, tmp761, zdist
	lsl	r3, r3, #1	@ tmp646, tmp645,
	ldrsh	r1, [ip, r3]	@ _244, pleftmatrix[angle_211][zdist_459]
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp767, %sfp
	add	r3, r3, r10	@ tmp650, tmp767, zdist
	lsl	r3, r3, #1	@ tmp651, tmp650,
	ldrsh	r2, [ip, r3]	@ _251, pleftmatrix[_651][zdist_459]
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp762, %sfp
	add	r3, r3, r10	@ tmp656, tmp762, zdist
	lsl	r3, r3, #1	@ tmp657, tmp656,
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #32]	@ _83, %sfp
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_213][zdist_459], pleftmatrix[tangent_213][zdist_459]
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r5, lr	@ ivtmp.54, ivtmp.57
@ arm/soar_wram.arm.c:281: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp660, pleftmatrix[tangent_213][zdist_459], _244
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r1, r4	@ _245, _244, _83
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r4, lr	@ ivtmp.56, ivtmp.57
@ arm/soar_wram.arm.c:281: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _537, tmp660,
	str	r3, [sp, #16]	@ _537, %sfp
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp768, %sfp
	add	r3, r3, r10	@ tmp663, tmp768, zdist
	lsl	r3, r3, #1	@ tmp664, tmp663,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_655][zdist_459], pleftmatrix[_655][zdist_459]
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r1, [sp, #8]	@ _245, %sfp
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r1, [sp, #36]	@ _84, %sfp
@ arm/soar_wram.arm.c:282: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp667, pleftmatrix[_655][zdist_459], _251
@ arm/soar_wram.arm.c:282: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _539, tmp667,
@ arm/soar_wram.arm.c:186: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r2, r1	@ _252, _251, _84
	str	r2, [sp, #12]	@ _252, %sfp
@ arm/soar_wram.arm.c:282: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #20]	@ _539, %sfp
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #60]	@ tmp777, %sfp
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, r10, #1	@ _285, zdist,
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r3, r3, r3, lsl #8	@ tmp773, _285, _285,
	add	r3, r3, r2	@ tmp778, tmp773, tmp777
	ldr	r2, .L113+76	@ tmp905,
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	r10, [sp, #24]	@ zdist, %sfp
	add	r0, sp, #71	@ tmp889,,
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	fp, r2, r3	@ tmp779, tmp905, tmp778
.L46:
@ arm/soar_wram.arm.c:293: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ _274, MEM[(unsigned char *)_541]
@ arm/soar_wram.arm.c:293: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r2, #159	@ _274,
	bhi	.L32		@,
@ arm/soar_wram.arm.c:287: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r1, [sp, #12]	@ _252, %sfp
@ arm/soar_wram.arm.c:287: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #8]	@ _245, %sfp
@ arm/soar_wram.arm.c:287: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	add	ip, r1, lr, asr #8	@ _273, _252, ivtmp.57,
@ arm/soar_wram.arm.c:287: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	add	r3, r3, r4, asr #8	@ _270, _245, ivtmp.56,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ _273,
	cmplt	r3, #1024	@, _270,
	movge	r6, #1	@ _277,
	movlt	r6, #0	@ _277,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r1, #0	@ _284,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L33		@,
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, r3, ip	@ tmp789, _270, _273
@ arm/soar_wram.arm.c:126: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r1, r6	@ _284, _277
@ arm/soar_wram.arm.c:127: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L113+52	@ tmp678,
	addpl	r1, r1, r3	@ tmp680, tmp678, _270
	ldrbpl	r1, [r1, ip, lsl #10]	@ zero_extendqisi2	@ _284, heightMap[_282]
.L33:
@ arm/soar_wram.arm.c:136: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldrb	r1, [fp, r1]	@ zero_extendqisi2	@ _287, hosTables[prephitmp_644][_285][_286]
@ arm/soar_wram.arm.c:296: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r2, r1	@ _274, _287
	bcs	.L34		@,
@ arm/soar_wram.arm.c:299: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r7, [sp, #24]	@ zdist, %sfp
	cmp	r7, #40	@ zdist,
	beq	.L111		@,
.L35:
@ arm/soar_wram.arm.c:115: 	if (isSunset){
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r7, [r7, #84]	@ CurrentProc_100(D)->isSunset, CurrentProc_100(D)->isSunset
	cmp	r7, #0	@ CurrentProc_100(D)->isSunset,
	beq	.L37		@,
@ arm/soar_wram.arm.c:116: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	r6, #0	@ _277,
	bne	.L55		@,
@ arm/soar_wram.arm.c:116: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r6, r3, ip	@ tmp790, _270, _273
	bmi	.L55		@,
@ arm/soar_wram.arm.c:117: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r3, ip, lsl #10	@ tmp701, _270, _273,
	ldr	ip, .L113+80	@ tmp911,
	lsl	r3, r3, #1	@ tmp702, tmp701,
	ldrh	r6, [ip, r3]	@ clr,
.L38:
@ arm/soar_wram.arm.c:302: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	ldr	r3, [sp, #24]	@ zdist, %sfp
	cmp	r3, #384	@ zdist,
@ arm/soar_wram.arm.c:302: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	orrgt	r6, r6, #15552	@ clr, clr,
	orrgt	r6, r6, #35	@ clr, clr,
.L36:
@ arm/soar_wram.arm.c:327: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r3, r5, r2	@ _670, ivtmp.54, _274
@ arm/soar_wram.arm.c:328: 	u16* base = vid_page + (offset);
	add	ip, r9, r3, lsl #1	@ tmp.34, prephitmp_688, _670,
@ arm/soar_wram.arm.c:304: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r2, r1, r2	@ tmp716, _287, _274
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r8, ip, r2, lsl #1	@ _427, tmp.34, tmp716,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, r8	@ tmp.34, _427
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r2, #1	@ _460, tmp716,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L44		@,
	sub	r7, r2, #1	@ _677, _460,
	cmp	r7, #11	@ _677,
	lsr	r2, ip, #1	@ tmp720, tmp.34,
	lsr	r7, r7, #1	@ _676, _677,
	and	r2, r2, #1	@ prolog_loop_niters.30, tmp720,
	bls	.L40		@,
	cmp	r2, #0	@ prolog_loop_niters.30,
	add	r3, r2, r3	@ tmp728, prolog_loop_niters.30, _670
	rsb	r2, r2, #1	@ tmp722, prolog_loop_niters.30,
	add	r2, r2, r7	@ niters.31, tmp722, _676
	add	r3, r9, r3, lsl #1	@ vectp.36, prephitmp_688, tmp728,
	lsr	r7, r2, #1	@ bnd.32, niters.31,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhne	r6, [ip], #2	@ movhi	@ clr, *base_305
	add	r7, r3, r7, lsl #2	@ _527, vectp.36, bnd.32,
	orr	r10, r6, r6, lsl #16	@ vect_cst__612, clr, clr,
.L42:
	str	r10, [r3], #4	@ vect_cst__612, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_604]
	cmp	r7, r3	@ _527, vectp.36
	bne	.L42		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L44		@,
.L40:
	mov	r3, ip	@ i, tmp.34
	strh	r6, [r3], #2	@ movhi	@ clr, *i_625
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _427, i
	bls	.L44		@,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _427, i
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_625 + 2B]
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L44		@,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _427, i
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_625 + 4B]
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L44		@,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _427, i
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_625 + 6B]
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L44		@,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _427, i
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_625 + 8B]
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:329: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r6, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_625 + 10B]
.L44:
@ arm/soar_wram.arm.c:305: 				    yBuffer[i] = height_on_screen;
	strb	r1, [r0]	@ _287, MEM[(unsigned char *)_541]
	b	.L32		@
.L106:
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r1, #68]	@ CurrentProc_100(D)->ShowMap, CurrentProc_100(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_100(D)->ShowMap,
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _707, posY,
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L112		@,
.L10:
@ arm/soar_wram.arm.c:169: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L113+84	@ tmp442,
@ arm/soar_wram.arm.c:168: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _707,
@ arm/soar_wram.arm.c:169: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp446, tmp442, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_200][posX_198]
@ arm/soar_wram.arm.c:171: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L113+28	@ tmp448,
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_203], translatedLocations[_203]
@ arm/soar_wram.arm.c:172: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:171: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_203], CurrentProc_100(D)->location
@ arm/soar_wram.arm.c:172: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:173: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp454, loc,
	add	r3, r3, #-905969664	@ tmp457, tmp454,
	add	r3, r3, #3932160	@ tmp457, tmp457,
	lsr	r3, r3, r2	@ tmp456, tmp457,
	str	r3, [sp]	@ tmp456,
	mov	r0, #8	@,
	ldr	r3, .L113+88	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp765
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L113+32	@ tmp764,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L107:
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _3, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp465, _3,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp474, _3,
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L113+36	@ tmp760,
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L113+40	@ tmp757,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp474,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _10, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp476, _10,
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_100(D)->sPlayerPosY, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp483, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp484, tmp483, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_100(D)->sPlayerPosX, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp484, newy
@ arm/soar_wram.arm.c:20: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp493, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp494, tmp493, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp494, newx
@ arm/soar_wram.arm.c:19: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:21: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	bl	BumpScreen		@
	b	.L12		@
.L108:
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _20, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp501, _20,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp510, _20,
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L113+36	@ tmp760,
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L113+40	@ tmp757,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp510,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _27, CurrentProc_100(D)->sPlayerYaw
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp512, _27,
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_100(D)->sPlayerPosY, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp519, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp520, tmp519, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_100(D)->sPlayerPosX, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp520, newy
@ arm/soar_wram.arm.c:30: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_100(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp529, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp530, tmp529, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp530, newx
@ arm/soar_wram.arm.c:29: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_100(D)->sPlayerPosX
@ arm/soar_wram.arm.c:31: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	bl	BumpScreen		@
	b	.L12		@
.L111:
@ arm/soar_wram.arm.c:299: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	add	r7, sp, #72	@ tmp909,,
	sub	r7, r0, r7	@ tmp695, ivtmp.52, tmp909
	sub	r7, r7, #61	@ tmp696, tmp695,
	cmp	r7, #6	@ tmp696,
@ arm/soar_wram.arm.c:298: 					u16 clr = 0; //default to shadow
	movls	r6, #0	@ clr,
@ arm/soar_wram.arm.c:299: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bls	.L36		@,
	b	.L35		@
.L37:
@ arm/soar_wram.arm.c:120: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _277,
	bne	.L57		@,
@ arm/soar_wram.arm.c:120: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, r3, ip	@ tmp791, _270, _273
	bmi	.L57		@,
@ arm/soar_wram.arm.c:121: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r3, ip, lsl #10	@ tmp707, _270, _273,
	ldr	ip, .L113+92	@ tmp912,
	lsl	r3, r3, #1	@ tmp708, tmp707,
	ldrh	r6, [ip, r3]	@ clr,
	b	.L38		@
.L55:
@ arm/soar_wram.arm.c:116: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r6, #2080	@ clr,
	b	.L38		@
.L57:
@ arm/soar_wram.arm.c:120: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L38		@
.L31:
@ arm/soar_wram.arm.c:320: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r9, [r3, #64]	@ prephitmp_688, CurrentProc_100(D)->vid_page
.L48:
	mov	r0, r9	@, prephitmp_688
	bl	vid_flip		@
@ arm/soar_wram.arm.c:102: 	FPS_COUNTER += 1;
	ldr	r2, .L113+96	@ tmp751,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:320: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:102: 	FPS_COUNTER += 1;
	add	r3, r3, #1	@ tmp753, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:320: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r1, #64]	@ tmp786, CurrentProc_100(D)->vid_page
@ arm/soar_wram.arm.c:102: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp753, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:103: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L27:
@ arm/soar_wram.arm.c:99: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	cmp	r3, #0	@ _84,
@ arm/soar_wram.arm.c:99: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp617,
	strlt	r3, [sp, #36]	@ tmp617, %sfp
	strlt	r3, [r2, #48]	@ tmp617, CurrentProc_100(D)->sPlayerPosY
	b	.L28		@
.L25:
@ arm/soar_wram.arm.c:97: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	cmp	r3, #0	@ _83,
@ arm/soar_wram.arm.c:97: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp615,
	strlt	r3, [sp, #32]	@ tmp615, %sfp
	strlt	r3, [r2, #44]	@ tmp615, CurrentProc_100(D)->sPlayerPosX
	b	.L26		@
.L22:
@ arm/soar_wram.arm.c:80: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _57,
	beq	.L23		@,
@ arm/soar_wram.arm.c:81: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp593, _165,
@ arm/soar_wram.arm.c:81: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp598, camera_ht
	movge	r3, #0	@ tmp598,
	movlt	r3, #1	@ tmp598,
	cmp	r1, #64	@ _66,
	movle	r3, #0	@ tmp598,
@ arm/soar_wram.arm.c:81: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp599, _154,
@ arm/soar_wram.arm.c:81: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp599, camera_ht
	movge	r3, #0	@, tmp605
	andlt	r3, r3, #1	@,, tmp605, tmp598
	cmp	r3, #0	@ tmp605,
	beq	.L23		@,
@ arm/soar_wram.arm.c:83: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r6, r6, #1	@ tmp606, prephitmp_631,
@ arm/soar_wram.arm.c:84: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:83: 			CurrentProc->sPlayerStepZ -= 1;
	str	r6, [r5, #56]	@ tmp606, CurrentProc_100(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:82: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r5, #52]	@ camera_ht, CurrentProc_100(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:84: 			BumpScreen(bump_down);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:87: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _57, gKeyState.heldKeys
@ arm/soar_wram.arm.c:90: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r6, [r5, #56]	@ prephitmp_631, CurrentProc_100(D)->sPlayerStepZ
	b	.L23		@
.L104:
@ arm/soar_wram.arm.c:145: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp393,
	ldr	r3, .L113+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L113+16	@ tmp765,
	str	ip, [sp]	@ tmp393,
	mov	lr, pc
	bx	r4		@ tmp765
@ arm/soar_wram.arm.c:150: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_100(D)->ShowMap, CurrentProc_100(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_100(D)->ShowMap,
	beq	.L6		@,
.L105:
@ arm/soar_wram.arm.c:152: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L113+100	@ tmp413,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp413,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L113+104	@,
	mov	lr, pc
	bx	r4		@ tmp765
@ arm/soar_wram.arm.c:154: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:154: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L113+96	@ tmp416,
@ arm/soar_wram.arm.c:154: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp419, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp419, tmp419,
	lsl	r1, r1, #16	@ tmp421, tmp419,
	lsr	r1, r1, #16	@ tmp421, tmp421,
	str	r1, [sp]	@ tmp421,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L113+108	@,
	mov	lr, pc
	bx	r4		@ tmp765
	b	.L6		@
.L109:
@ arm/soar_wram.arm.c:49: 		EndLoop(CurrentProc);
	bl	EndLoop		@
@ arm/soar_wram.arm.c:103: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L112:
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp435, posX,
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L113+112	@ tmp440,
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp432, _707,
@ arm/soar_wram.arm.c:166: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp437, tmp435,
	lsl	r2, r2, #16	@, tmp432,
	lsl	r1, r1, #16	@, tmp437,
	str	r3, [sp]	@ tmp440,
	mov	r0, #8	@,
	ldr	r3, .L113+108	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp765
	b	.L10		@
.L110:
@ arm/soar_wram.arm.c:89: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r4, [sp, #28]	@ CurrentProc, %sfp
	add	r3, r3, #48	@ tmp612, _79,
@ arm/soar_wram.arm.c:90: 			CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ tmp613, prephitmp_631,
	str	r6, [r4, #56]	@ tmp613, CurrentProc_100(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:91: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:89: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp612, CurrentProc_100(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:91: 			BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:262: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r6, [r4, #56]	@ prephitmp_631, CurrentProc_100(D)->sPlayerStepZ
	b	.L24		@
.L99:
@ arm/soar_wram.arm.c:34: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	bl	BumpScreen		@
	b	.L102		@
.L114:
	.align	2
.L113:
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
	.word	SkyBG_sunset
	.word	SkyBG
	.word	CpuFastSet
	.word	16777248
	.word	pleftmatrix
	.word	hosTables
	.word	colourMap_sunset
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	colourMap
	.word	33812480
	.word	10848
	.word	gObj_64x64
	.word	gObj_8x8
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.global	cam_dx_Angles
	.section	.rodata
	.align	2
	.type	cam_dx_Angles, %object
	.size	cam_dx_Angles, 32
cam_dx_Angles:
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	3
	.short	2
	.short	1
	.short	0
	.short	-1
	.short	-2
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	-1
	.global	cam_dy_Angles
	.align	2
	.type	cam_dy_Angles, %object
	.size	cam_dy_Angles, 32
cam_dy_Angles:
	.short	-4
	.short	-3
	.short	-2
	.short	-1
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	3
	.short	2
	.short	1
	.short	0
	.short	-1
	.short	-2
	.short	-3
	.global	cam_pivot_dx_Angles
	.align	2
	.type	cam_pivot_dx_Angles, %object
	.size	cam_pivot_dx_Angles, 32
cam_pivot_dx_Angles:
	.short	0
	.short	24
	.short	45
	.short	58
	.short	64
	.short	58
	.short	45
	.short	24
	.short	0
	.short	-24
	.short	-45
	.short	-58
	.short	-64
	.short	-58
	.short	-45
	.short	-24
	.global	cam_pivot_dy_Angles
	.align	2
	.type	cam_pivot_dy_Angles, %object
	.size	cam_pivot_dy_Angles, 32
cam_pivot_dy_Angles:
	.short	-64
	.short	-58
	.short	-45
	.short	-24
	.short	0
	.short	24
	.short	45
	.short	58
	.short	64
	.short	58
	.short	45
	.short	24
	.short	0
	.short	-24
	.short	-45
	.short	-58
	.ident	"GCC: (devkitARM release 56) 11.1.0"
