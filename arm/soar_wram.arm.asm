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
@ arm/soar_wram.arm.c:134: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp383,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:134: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _172, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:135: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _172,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #28]	@ tmp767, %sfp
@ arm/soar_wram.arm.c:135: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L98		@,
@ arm/soar_wram.arm.c:136: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _172,
@ arm/soar_wram.arm.c:136: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L107	@ tmp394,
@ arm/soar_wram.arm.c:136: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L95		@,
@ arm/soar_wram.arm.c:134: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp396, _172,
@ arm/soar_wram.arm.c:137: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp396,
@ arm/soar_wram.arm.c:137: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L107+4	@ tmp401,
@ arm/soar_wram.arm.c:138: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L107+8	@ tmp404,
.L95:
	str	r3, [sp]	@ tmp404,
	mov	r2, #88	@,
	ldr	r3, .L107+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L107+16	@ tmp747,
	mov	lr, pc
	bx	r4		@ tmp747
@ arm/soar_wram.arm.c:140: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_97(D)->ShowMap, CurrentProc_97(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_97(D)->ShowMap,
	bne	.L99		@,
.L6:
@ arm/soar_wram.arm.c:146: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:146: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L107+20	@ tmp411,
@ arm/soar_wram.arm.c:146: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp414, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp414, tmp414,
	lsl	r1, r1, #16	@ tmp416, tmp414,
	lsr	r1, r1, #16	@ tmp416, tmp416,
	ldr	r3, .L107+24	@,
	str	r1, [sp]	@ tmp416,
	mov	r0, #8	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp747
@ arm/soar_wram.arm.c:151: 	int posY = CurrentProc->sFocusPtY;
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r1, #76]	@ posY, CurrentProc_97(D)->sFocusPtY
@ arm/soar_wram.arm.c:155: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L107+28	@ tmp420,
@ arm/soar_wram.arm.c:155: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp419, posY,
@ arm/soar_wram.arm.c:155: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp419, tmp420
@ arm/soar_wram.arm.c:150: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r1, #72]	@ posX, CurrentProc_97(D)->sFocusPtX
@ arm/soar_wram.arm.c:155: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:155: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L107+32	@ tmp424,
	sub	r2, r6, #1	@ tmp423, posX,
	cmp	r2, r3	@ tmp423, tmp424
	bls	.L100		@,
.L9:
@ arm/soar_wram.arm.c:161: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L107+36	@ tmp421,
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_97(D)->location
.L8:
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L107+40	@ tmp740,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L101		@,
.L11:
@ arm/soar_wram.arm.c:23: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L102		@,
@ arm/soar_wram.arm.c:33: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L93		@,
.L96:
	ldr	r5, .L107+44	@ tmp739,
	ldr	r6, .L107+48	@ tmp751,
.L12:
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r8, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r8, #60]	@ _38, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L107+52	@ tmp534,
	lsl	r3, r3, #1	@ tmp535, _38,
	ldrsh	ip, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L107+56	@ tmp537,
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r7, [r8, #44]	@ _37, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r5, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r6, [r8, #48]	@ _42, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r0, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r7, ip	@ prephitmp_573, _37, _40
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r6, r3	@ prephitmp_575, _42, _44
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	r5, r5, r1	@ _48, cam_pivot_dx_Angles[_38], prephitmp_573
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r2	@ _51, cam_pivot_dy_Angles[_38], prephitmp_575
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r0, #8	@ _52,
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r8, #44]	@ prephitmp_573, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r5, [r8, #72]	@ _48, CurrentProc_97(D)->sFocusPtX
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r8, #48]	@ prephitmp_575, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r8, #76]	@ _51, CurrentProc_97(D)->sFocusPtY
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L103		@,
@ arm/soar_wram.arm.c:53: 	if (gKeyState.pressedKeys & SELECT_BUTTON){
	tst	r0, #4	@ _52,
@ arm/soar_wram.arm.c:54: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [r8, #68]	@ CurrentProc_97(D)->ShowMap, CurrentProc_97(D)->ShowMap
	eorne	r0, r0, #1	@ tmp555, CurrentProc_97(D)->ShowMap,
	strne	r0, [r8, #68]	@ tmp555, CurrentProc_97(D)->ShowMap
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _55,
	beq	.L17		@,
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, r2	@ _57, _44, prephitmp_575
	mov	r6, r2	@ _42, prephitmp_575
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	add	ip, ip, r1	@ _56, _40, prephitmp_573
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r7, r1	@ _37, prephitmp_573
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	ip, [r2, #44]	@ _56, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r2, #48]	@ _57, CurrentProc_97(D)->sPlayerPosY
	mov	r1, ip	@ prephitmp_573, _56
	mov	r2, r3	@ prephitmp_575, _57
.L17:
@ arm/soar_wram.arm.c:61: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _55,
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldrne	r3, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	movne	r1, r7	@ prephitmp_573, _37
	movne	r2, r6	@ prephitmp_575, _42
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r7, [r3, #44]	@ _37, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r6, [r3, #48]	@ _42, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:65: 	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _55,
	beq	.L1		@,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r5, lr	@ tmp566, _48, _51
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp566,
@ arm/soar_wram.arm.c:117: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L107+60	@ tmp567,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp571, prephitmp_573, prephitmp_575
@ arm/soar_wram.arm.c:117: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r3, r3, r5	@ tmp569, tmp567, _48
	ldrbcc	r3, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _161, heightMap[_159]
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r3, #0	@ _161,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp571,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _150,
@ arm/soar_wram.arm.c:117: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L107+60	@ tmp572,
	addcc	r1, ip, r1	@ tmp574, tmp572, prephitmp_573
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _150, heightMap[_148]
@ arm/soar_wram.arm.c:72: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _150, _161
	movge	lr, r2	@ tmp576, _150
	movlt	lr, r3	@ tmp576, _161
@ arm/soar_wram.arm.c:71: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r5, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r5, #52	@,,
	ldm	r1, {r1, r6}	@,,
@ arm/soar_wram.arm.c:71: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _64,
@ arm/soar_wram.arm.c:72: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp576
	bge	.L21		@,
@ arm/soar_wram.arm.c:73: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp577, _64,
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ prephitmp_585, prephitmp_585,
@ arm/soar_wram.arm.c:73: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r5, #52]	@ tmp577, CurrentProc_97(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	str	r6, [r5, #56]	@ prephitmp_585, CurrentProc_97(D)->sPlayerStepZ
.L22:
@ arm/soar_wram.arm.c:83: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _55,
	beq	.L23		@,
@ arm/soar_wram.arm.c:84: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #52]	@ _77, CurrentProc_97(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:84: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _77,
	blt	.L104		@,
.L23:
@ arm/soar_wram.arm.c:92: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r2, #44]	@ _81, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:92: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _81,
@ arm/soar_wram.arm.c:92: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #32]	@ _81, %sfp
@ arm/soar_wram.arm.c:92: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L24		@,
@ arm/soar_wram.arm.c:92: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp603,
	str	r3, [sp, #32]	@ tmp603, %sfp
	str	r3, [r2, #44]	@ tmp603, CurrentProc_97(D)->sPlayerPosX
.L25:
@ arm/soar_wram.arm.c:94: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r2, #48]	@ _82, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:94: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _82,
@ arm/soar_wram.arm.c:94: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #36]	@ _82, %sfp
@ arm/soar_wram.arm.c:94: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L26		@,
@ arm/soar_wram.arm.c:94: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp605,
	str	r3, [sp, #36]	@ tmp605, %sfp
	str	r3, [r2, #48]	@ tmp605, CurrentProc_97(D)->sPlayerPosY
.L27:
@ arm/soar_wram.arm.c:250: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r8, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r8, #60]	@ angle, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:257: 	CpuFastCopy(&SkyBG + ((angle<<5) + (angle<<7)<<4) + (altitude<<2) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r3, r5, r5, lsl #2	@ tmp611, angle, angle,
	lsl	r3, r3, #9	@ tmp613, tmp611,
	add	r3, r3, #1073741824	@ tmp614, tmp613,
	ldr	r0, .L107+64	@ tmp620,
	sub	r3, r3, #100	@ tmp614, tmp614,
	add	r3, r3, r6, lsl #2	@ tmp617, tmp614, prephitmp_585,
	add	r0, r0, r3, lsl #2	@, tmp620, tmp617,
	mov	r2, #10240	@,
	ldr	r1, [r8, #64]	@, CurrentProc_97(D)->vid_page
	ldr	r7, .L107+68	@ tmp621,
	mov	lr, pc
	bx	r7		@ tmp621
@ arm/soar_wram.arm.c:259: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp622,
	ldr	r2, .L107+72	@,
	add	r1, sp, #72	@ tmp857,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp622, tmp
	mov	lr, pc
	bx	r7		@ tmp621
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	lsl	r3, r6, #4	@ tmp628, prephitmp_585,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	r3, r3, #512	@ tmp629, tmp628,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	asr	r3, r3, #1	@ tmp630, tmp629,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	r2, r3, #31	@ _248, tmp630,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	lsl	r3, r6, #1	@ tmp627, prephitmp_585,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	fp, r3, #24	@ zdist, tmp627,
@ arm/soar_wram.arm.c:251: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp607, angle,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	cmp	fp, r2	@ zdist, _248
	str	r2, [sp, #40]	@ _248, %sfp
@ arm/soar_wram.arm.c:251: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp607,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	bgt	.L28		@,
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r6, r6, lsl #8	@ tmp758, prephitmp_585, prephitmp_585,
	rsb	r3, r6, r6, lsl #8	@ tmp760, tmp758, tmp758,
	str	r3, [sp, #60]	@ tmp760, %sfp
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp631, angle
	and	r3, r3, #15	@ _607, tmp631,
	lsl	r3, r3, #9	@ tmp742, _607,
	str	r3, [sp, #44]	@ tmp742, %sfp
	rsb	r3, r4, #0	@ tmp632, tangent
	lsl	r2, r5, #9	@ tmp748, angle,
	and	r3, r3, #15	@ _611, tmp632,
	str	r2, [sp, #52]	@ tmp748, %sfp
	lsl	r3, r3, #9	@ tmp743, _611,
	lsl	r2, r4, #9	@ tmp749, tangent,
	str	r2, [sp, #56]	@ tmp749, %sfp
	str	r3, [sp, #48]	@ tmp743, %sfp
@ arm/soar_wram.arm.c:303: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r10, [r8, #64]	@ prephitmp_641, CurrentProc_97(D)->vid_page
	b	.L44		@
.L31:
@ arm/soar_wram.arm.c:291: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r1, r2, r1	@ tmp722, _255, _268
@ arm/soar_wram.arm.c:291: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r1, #6	@ tmp722,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	movgt	r3, #0	@ tmp728,
@ arm/soar_wram.arm.c:311: 	u16* base = vid_page + (offset);
	addgt	r2, r2, r5	@ tmp723, _255, ivtmp.54
	subgt	r2, r2, #1	@ tmp724, tmp723,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lslgt	r2, r2, #1	@ tmp725, tmp724,
	strhgt	r3, [r10, r2]	@ movhi	@ tmp728, *base_308
.L29:
@ arm/soar_wram.arm.c:272: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r3, sp, #199	@ tmp889,,
	cmp	r0, r3	@ ivtmp.52, tmp889
	ldr	r3, [sp, #16]	@ _492, %sfp
	add	r4, r4, r3	@ ivtmp.56, ivtmp.56, _492
	ldr	r3, [sp, #20]	@ _494, %sfp
	add	r5, r5, #160	@ ivtmp.54, ivtmp.54,
	add	lr, lr, r3	@ ivtmp.57, ivtmp.57, _494
	bne	.L43		@,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	ldr	fp, [sp, #24]	@ zdist, %sfp
	asr	r3, fp, #7	@ tmp730, zdist,
	add	r3, r3, fp, asr #6	@ tmp731, tmp730, zdist,
	add	r3, r3, fp, asr #8	@ tmp733, tmp731, zdist,
	add	r3, r3, #2	@ _318, tmp733,
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	fp, fp, r3	@ zdist, zdist, _318
@ arm/soar_wram.arm.c:263: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	ldr	r3, [sp, #40]	@ _248, %sfp
	cmp	r3, fp	@ _248, zdist
	blt	.L45		@,
.L44:
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	lr, #0	@ ivtmp.57,
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp748, %sfp
	ldr	ip, .L107+76	@ tmp868,
	add	r3, r3, fp	@ tmp635, tmp748, zdist
	lsl	r3, r3, #1	@ tmp636, tmp635,
	ldrsh	r1, [ip, r3]	@ _226, pleftmatrix[angle_206][zdist_424]
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp742, %sfp
	add	r3, r3, fp	@ tmp640, tmp742, zdist
	lsl	r3, r3, #1	@ tmp641, tmp640,
	ldrsh	r2, [ip, r3]	@ _232, pleftmatrix[_607][zdist_424]
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp749, %sfp
	add	r3, r3, fp	@ tmp646, tmp749, zdist
	lsl	r3, r3, #1	@ tmp647, tmp646,
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #32]	@ _81, %sfp
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_208][zdist_424], pleftmatrix[tangent_208][zdist_424]
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r5, lr	@ ivtmp.54, ivtmp.57
@ arm/soar_wram.arm.c:269: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp650, pleftmatrix[tangent_208][zdist_424], _226
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r1, r4	@ _227, _226, _81
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r4, lr	@ ivtmp.56, ivtmp.57
@ arm/soar_wram.arm.c:269: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _492, tmp650,
	str	r3, [sp, #16]	@ _492, %sfp
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp743, %sfp
	add	r3, r3, fp	@ tmp653, tmp743, zdist
	lsl	r3, r3, #1	@ tmp654, tmp653,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_611][zdist_424], pleftmatrix[_611][zdist_424]
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r1, [sp, #8]	@ _227, %sfp
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r1, [sp, #36]	@ _82, %sfp
@ arm/soar_wram.arm.c:270: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp657, pleftmatrix[_611][zdist_424], _232
@ arm/soar_wram.arm.c:270: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _494, tmp657,
@ arm/soar_wram.arm.c:176: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r2, r1	@ _233, _232, _82
	str	r2, [sp, #12]	@ _233, %sfp
@ arm/soar_wram.arm.c:270: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #20]	@ _494, %sfp
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #60]	@ tmp760, %sfp
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, fp, #1	@ _266, zdist,
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r3, r3, r3, lsl #8	@ tmp756, _266, _266,
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	fp, [sp, #24]	@ zdist, %sfp
	add	r0, sp, #71	@ tmp866,,
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r9, r3, r2	@ tmp761, tmp756, tmp760
.L43:
@ arm/soar_wram.arm.c:276: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ _255, MEM[(unsigned char *)_496]
@ arm/soar_wram.arm.c:276: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r2, #159	@ _255,
	bhi	.L29		@,
@ arm/soar_wram.arm.c:274: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #8]	@ _227, %sfp
	add	ip, r3, r4, asr #8	@ _251, _227, ivtmp.56,
@ arm/soar_wram.arm.c:274: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #12]	@ _233, %sfp
	add	r3, r3, lr, asr #8	@ _254, _233, ivtmp.57,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _254,
	cmplt	ip, #1024	@, _251,
	movge	r6, #1	@ _258,
	movlt	r6, #0	@ _258,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r1, #0	@ _265,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L30		@,
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, ip, r3	@ tmp771, _251, _254
@ arm/soar_wram.arm.c:116: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r1, r6	@ _265, _258
@ arm/soar_wram.arm.c:117: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L107+60	@ tmp668,
	addpl	r1, r1, ip	@ tmp670, tmp668, _251
	ldrbpl	r1, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _265, heightMap[_263]
.L30:
@ arm/soar_wram.arm.c:126: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r7, .L107+80	@ tmp884,
	add	r1, r9, r1	@ tmp682, tmp761, _265
	lsl	r1, r1, #1	@ tmp683, tmp682,
	ldrsh	r1, [r7, r1]	@ _268, hosTables[prephitmp_602][_266][_267]
@ arm/soar_wram.arm.c:279: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r1, r2	@ _268, _255
	ble	.L31		@,
@ arm/soar_wram.arm.c:282: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r7, [sp, #24]	@ zdist, %sfp
	cmp	r7, #40	@ zdist,
	beq	.L105		@,
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _258,
	bne	.L52		@,
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp772, _251, _254
	bmi	.L52		@,
.L46:
@ arm/soar_wram.arm.c:112: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, ip, r3, lsl #10	@ tmp691, _251, _254,
	ldr	ip, .L107+84	@ tmp887,
	lsl	r3, r3, #1	@ tmp692, tmp691,
	ldrh	r6, [ip, r3]	@ clr, colourMap[_277]
.L35:
@ arm/soar_wram.arm.c:285: 					    if (zdist > (FOG_DISTANCE+64)) clr |= fogmask; //if in fog
	ldr	r3, [sp, #24]	@ zdist, %sfp
	cmp	r3, #268	@ zdist,
@ arm/soar_wram.arm.c:285: 					    if (zdist > (FOG_DISTANCE+64)) clr |= fogmask; //if in fog
	orrgt	r6, r6, #15552	@ clr, clr,
	orrgt	r6, r6, #35	@ clr, clr,
.L34:
@ arm/soar_wram.arm.c:310: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r3, r5, r2	@ _623, ivtmp.54, _255
@ arm/soar_wram.arm.c:311: 	u16* base = vid_page + (offset);
	add	ip, r10, r3, lsl #1	@ tmp.34, prephitmp_641, _623,
@ arm/soar_wram.arm.c:287: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r2, r1, r2	@ tmp700, _268, _255
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r8, ip, r2, lsl #1	@ _425, tmp.34, tmp700,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, r8	@ tmp.34, _425
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r2, #1	@ _421, tmp700,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L41		@,
	sub	r7, r2, #1	@ _630, _421,
	cmp	r7, #11	@ _630,
	lsr	r2, ip, #1	@ tmp704, tmp.34,
	lsr	r7, r7, #1	@ _629, _630,
	and	r2, r2, #1	@ prolog_loop_niters.30, tmp704,
	bls	.L37		@,
	cmp	r2, #0	@ prolog_loop_niters.30,
	add	r3, r2, r3	@ tmp712, prolog_loop_niters.30, _623
	rsb	r2, r2, #1	@ tmp706, prolog_loop_niters.30,
	add	r2, r2, r7	@ niters.31, tmp706, _629
	add	r3, r10, r3, lsl #1	@ vectp.36, prephitmp_641, tmp712,
	lsr	r7, r2, #1	@ bnd.32, niters.31,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhne	r6, [ip], #2	@ movhi	@ clr, *base_291
	add	r7, r3, r7, lsl #2	@ _482, vectp.36, bnd.32,
	orr	fp, r6, r6, lsl #16	@ vect_cst__567, clr, clr,
.L39:
	str	fp, [r3], #4	@ vect_cst__567, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_559]
	cmp	r7, r3	@ _482, vectp.36
	bne	.L39		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L41		@,
.L37:
	mov	r3, ip	@ i, tmp.34
	strh	r6, [r3], #2	@ movhi	@ clr, *i_586
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _425, i
	bls	.L41		@,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _425, i
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_586 + 2B]
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L41		@,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _425, i
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_586 + 4B]
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L41		@,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _425, i
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_586 + 6B]
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L41		@,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _425, i
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_586 + 8B]
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:312: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r6, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_586 + 10B]
.L41:
@ arm/soar_wram.arm.c:288: 				    yBuffer[i] = height_on_screen;
	strb	r1, [r0]	@ _268, MEM[(unsigned char *)_496]
	b	.L29		@
.L100:
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r1, #68]	@ CurrentProc_97(D)->ShowMap, CurrentProc_97(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_97(D)->ShowMap,
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _649, posY,
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L106		@,
.L10:
@ arm/soar_wram.arm.c:159: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L107+88	@ tmp437,
@ arm/soar_wram.arm.c:158: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _649,
@ arm/soar_wram.arm.c:159: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp441, tmp437, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_195][posX_193]
@ arm/soar_wram.arm.c:161: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L107+36	@ tmp443,
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_198], translatedLocations[_198]
@ arm/soar_wram.arm.c:162: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:161: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_198], CurrentProc_97(D)->location
@ arm/soar_wram.arm.c:162: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:163: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp449, loc,
	add	r3, r3, #-905969664	@ tmp452, tmp449,
	add	r3, r3, #3932160	@ tmp452, tmp452,
	lsr	r3, r3, r2	@ tmp451, tmp452,
	str	r3, [sp]	@ tmp451,
	mov	r0, #8	@,
	ldr	r3, .L107+92	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp747
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L107+40	@ tmp740,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L101:
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _3, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp460, _3,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp469, _3,
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L107+44	@ tmp739,
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L107+48	@ tmp751,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp469,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _10, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp471, _10,
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_97(D)->sPlayerPosY, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp478, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp479, tmp478, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_97(D)->sPlayerPosX, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp479, newy
@ arm/soar_wram.arm.c:20: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp488, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp489, tmp488, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp489, newx
@ arm/soar_wram.arm.c:19: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:21: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	bl	BumpScreen		@
	b	.L12		@
.L102:
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _20, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp496, _20,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp505, _20,
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L107+44	@ tmp739,
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L107+48	@ tmp751,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp505,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _27, CurrentProc_97(D)->sPlayerYaw
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp507, _27,
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_97(D)->sPlayerPosY, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp514, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp515, tmp514, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_97(D)->sPlayerPosX, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp515, newy
@ arm/soar_wram.arm.c:30: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_97(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp524, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp525, tmp524, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp525, newx
@ arm/soar_wram.arm.c:29: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_97(D)->sPlayerPosX
@ arm/soar_wram.arm.c:31: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	bl	BumpScreen		@
	b	.L12		@
.L105:
@ arm/soar_wram.arm.c:282: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	add	r7, sp, #72	@ tmp886,,
	sub	r7, r0, r7	@ tmp686, ivtmp.52, tmp886
	sub	r7, r7, #61	@ tmp687, tmp686,
	cmp	r7, #6	@ tmp687,
	bhi	.L33		@,
@ arm/soar_wram.arm.c:281: 					u16 clr = 0; //default to shadow
	mov	r6, #0	@ clr,
	b	.L34		@
.L52:
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L35		@
.L28:
@ arm/soar_wram.arm.c:303: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r10, [r3, #64]	@ prephitmp_641, CurrentProc_97(D)->vid_page
.L45:
	mov	r0, r10	@, prephitmp_641
	bl	vid_flip		@
@ arm/soar_wram.arm.c:98: 	FPS_COUNTER += 1;
	ldr	r2, .L107+20	@ tmp734,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:303: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:98: 	FPS_COUNTER += 1;
	add	r3, r3, #1	@ tmp736, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:303: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r1, #64]	@ tmp768, CurrentProc_97(D)->vid_page
@ arm/soar_wram.arm.c:98: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp736, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:99: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L26:
@ arm/soar_wram.arm.c:95: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	cmp	r3, #0	@ _82,
@ arm/soar_wram.arm.c:95: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp606,
	strlt	r3, [sp, #36]	@ tmp606, %sfp
	strlt	r3, [r2, #48]	@ tmp606, CurrentProc_97(D)->sPlayerPosY
	b	.L27		@
.L24:
@ arm/soar_wram.arm.c:93: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	cmp	r3, #0	@ _81,
@ arm/soar_wram.arm.c:93: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp604,
	strlt	r3, [sp, #32]	@ tmp604, %sfp
	strlt	r3, [r2, #44]	@ tmp604, CurrentProc_97(D)->sPlayerPosX
	b	.L25		@
.L21:
@ arm/soar_wram.arm.c:76: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _55,
	beq	.L22		@,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp582, _161,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp587, camera_ht
	movge	r3, #0	@ tmp587,
	movlt	r3, #1	@ tmp587,
	cmp	r1, #64	@ _64,
	movle	r3, #0	@ tmp587,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp588, _150,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp588, camera_ht
	movge	r3, #0	@, tmp594
	andlt	r3, r3, #1	@,, tmp594, tmp587
	cmp	r3, #0	@ tmp594,
	beq	.L22		@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r6, r6, #1	@ tmp595, prephitmp_585,
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	str	r6, [r5, #56]	@ tmp595, CurrentProc_97(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:78: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r5, #52]	@ camera_ht, CurrentProc_97(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:83: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r6, [r5, #56]	@ prephitmp_585, CurrentProc_97(D)->sPlayerStepZ
	b	.L22		@
.L98:
@ arm/soar_wram.arm.c:135: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp388,
	ldr	r3, .L107+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L107+16	@ tmp747,
	str	ip, [sp]	@ tmp388,
	mov	lr, pc
	bx	r4		@ tmp747
@ arm/soar_wram.arm.c:140: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_97(D)->ShowMap, CurrentProc_97(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_97(D)->ShowMap,
	beq	.L6		@,
.L99:
@ arm/soar_wram.arm.c:142: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r3, .L107+96	@ tmp408,
	mov	r2, #0	@,
	str	r3, [sp]	@ tmp408,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L107+100	@,
	mov	lr, pc
	bx	r4		@ tmp747
	b	.L6		@
.L103:
@ arm/soar_wram.arm.c:49: 		EndLoop(CurrentProc);
	mov	r0, r8	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:99: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L106:
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp430, posX,
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L107+104	@ tmp435,
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp427, _649,
@ arm/soar_wram.arm.c:156: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp432, tmp430,
	lsl	r2, r2, #16	@, tmp427,
	lsl	r1, r1, #16	@, tmp432,
	str	r3, [sp]	@ tmp435,
	mov	r0, #8	@,
	ldr	r3, .L107+24	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp747
	b	.L10		@
.L104:
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r4, [sp, #28]	@ CurrentProc, %sfp
	add	r3, r3, #48	@ tmp601, _77,
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ tmp602, prephitmp_585,
	str	r6, [r4, #56]	@ tmp602, CurrentProc_97(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp601, CurrentProc_97(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:252: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r6, [r4, #56]	@ prephitmp_585, CurrentProc_97(D)->sPlayerStepZ
	b	.L23		@
.L93:
@ arm/soar_wram.arm.c:34: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	bl	BumpScreen		@
	b	.L96		@
.L33:
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _258,
	bne	.L54		@,
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp773, _251, _254
	bpl	.L46		@,
.L54:
@ arm/soar_wram.arm.c:111: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L34		@
.L108:
	.align	2
.L107:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	33812480
	.word	gObj_8x8
	.word	682
	.word	1022
	.word	translatedLocations
	.word	gKeyState
	.word	cam_pivot_dx_Angles
	.word	cam_pivot_dy_Angles
	.word	cam_dx_Angles
	.word	cam_dy_Angles
	.word	heightMap
	.word	SkyBG
	.word	CpuFastSet
	.word	16777248
	.word	pleftmatrix
	.word	hosTables
	.word	colourMap
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	10848
	.word	gObj_64x64
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
