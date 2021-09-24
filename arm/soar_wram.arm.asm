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
@ arm/soar_wram.arm.c:128: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp371,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:128: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _164, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _164,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #28]	@ tmp739, %sfp
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L94		@,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _164,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L103	@ tmp382,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L91		@,
@ arm/soar_wram.arm.c:128: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp384, _164,
@ arm/soar_wram.arm.c:131: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp384,
@ arm/soar_wram.arm.c:131: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L103+4	@ tmp389,
@ arm/soar_wram.arm.c:132: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L103+8	@ tmp392,
.L91:
	str	r3, [sp]	@ tmp392,
	mov	r2, #88	@,
	ldr	r3, .L103+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L103+16	@ tmp711,
	mov	lr, pc
	bx	r4		@ tmp711
@ arm/soar_wram.arm.c:134: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
	bne	.L95		@,
.L6:
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L103+20	@ tmp399,
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp402, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp402, tmp402,
	lsl	r1, r1, #16	@ tmp404, tmp402,
	lsr	r1, r1, #16	@ tmp404, tmp404,
	ldr	r3, .L103+24	@,
	str	r1, [sp]	@ tmp404,
	mov	r0, #8	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp711
@ arm/soar_wram.arm.c:145: 	int posY = CurrentProc->sFocusPtY;
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r1, #76]	@ posY, CurrentProc_93(D)->sFocusPtY
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L103+28	@ tmp408,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp407, posY,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp407, tmp408
@ arm/soar_wram.arm.c:144: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r1, #72]	@ posX, CurrentProc_93(D)->sFocusPtX
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L103+32	@ tmp412,
	sub	r2, r6, #1	@ tmp411, posX,
	cmp	r2, r3	@ tmp411, tmp412
	bls	.L96		@,
.L9:
@ arm/soar_wram.arm.c:155: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L103+36	@ tmp409,
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_93(D)->location
.L8:
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L103+40	@ tmp716,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L97		@,
.L11:
@ arm/soar_wram.arm.c:23: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L98		@,
@ arm/soar_wram.arm.c:33: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L89		@,
.L92:
	ldr	r5, .L103+44	@ tmp720,
	ldr	r6, .L103+48	@ tmp723,
.L12:
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r8, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r8, #60]	@ _38, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L103+52	@ tmp522,
	lsl	r3, r3, #1	@ tmp523, _38,
	ldrsh	ip, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L103+56	@ tmp525,
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r7, [r8, #44]	@ _37, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r5, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r6, [r8, #48]	@ _42, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r0, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r7, ip	@ prephitmp_529, _37, _40
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r6, r3	@ prephitmp_531, _42, _44
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	r5, r5, r1	@ _48, cam_pivot_dx_Angles[_38], prephitmp_529
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r2	@ _51, cam_pivot_dy_Angles[_38], prephitmp_531
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r0, #8	@ _52,
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r8, #44]	@ prephitmp_529, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r5, [r8, #72]	@ _48, CurrentProc_93(D)->sFocusPtX
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r8, #48]	@ prephitmp_531, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r8, #76]	@ _51, CurrentProc_93(D)->sFocusPtY
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L99		@,
@ arm/soar_wram.arm.c:53: 	if (gKeyState.pressedKeys & SELECT_BUTTON){
	tst	r0, #4	@ _52,
@ arm/soar_wram.arm.c:54: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [r8, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	eorne	r0, r0, #1	@ tmp543, CurrentProc_93(D)->ShowMap,
	strne	r0, [r8, #68]	@ tmp543, CurrentProc_93(D)->ShowMap
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _55,
	beq	.L17		@,
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, r2	@ _57, _44, prephitmp_531
	mov	r6, r2	@ _42, prephitmp_531
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	add	ip, ip, r1	@ _56, _40, prephitmp_529
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r7, r1	@ _37, prephitmp_529
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	ip, [r2, #44]	@ _56, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r2, #48]	@ _57, CurrentProc_93(D)->sPlayerPosY
	mov	r1, ip	@ prephitmp_529, _56
	mov	r2, r3	@ prephitmp_531, _57
.L17:
@ arm/soar_wram.arm.c:61: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _55,
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldrne	r3, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	movne	r1, r7	@ prephitmp_529, _37
	movne	r2, r6	@ prephitmp_531, _42
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r7, [r3, #44]	@ _37, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r6, [r3, #48]	@ _42, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:65: 	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _55,
	beq	.L1		@,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r5, lr	@ tmp554, _48, _51
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp554,
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L103+60	@ tmp555,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp559, prephitmp_529, prephitmp_531
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r3, r3, r5	@ tmp557, tmp555, _48
	ldrbcc	r3, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _153, heightMap[_151]
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r3, #0	@ _153,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp559,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _142,
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L103+60	@ tmp560,
	addcc	r1, ip, r1	@ tmp562, tmp560, prephitmp_529
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _142, heightMap[_140]
@ arm/soar_wram.arm.c:72: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _142, _153
	movge	lr, r2	@ tmp564, _142
	movlt	lr, r3	@ tmp564, _153
@ arm/soar_wram.arm.c:71: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r5, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r5, #52	@,,
	ldm	r1, {r1, r6}	@,,
@ arm/soar_wram.arm.c:71: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _64,
@ arm/soar_wram.arm.c:72: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp564
	bge	.L21		@,
@ arm/soar_wram.arm.c:73: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp565, _64,
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ prephitmp_541, prephitmp_541,
@ arm/soar_wram.arm.c:73: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r5, #52]	@ tmp565, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	str	r6, [r5, #56]	@ prephitmp_541, CurrentProc_93(D)->sPlayerStepZ
.L22:
@ arm/soar_wram.arm.c:83: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _55,
	beq	.L23		@,
@ arm/soar_wram.arm.c:84: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #52]	@ _77, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:84: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _77,
	blt	.L100		@,
.L23:
@ arm/soar_wram.arm.c:244: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r8, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:242: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r8, #44]	@ posX, CurrentProc_93(D)->sPlayerPosX
	str	r3, [sp, #32]	@ posX, %sfp
@ arm/soar_wram.arm.c:243: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r8, #48]	@ posY, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:252: 	CpuFastCopy(&SkyBG, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	r2, #10240	@,
	ldr	r1, [r8, #64]	@, CurrentProc_93(D)->vid_page
	ldr	r0, .L103+64	@,
	ldr	r7, .L103+68	@ tmp594,
@ arm/soar_wram.arm.c:244: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r8, #60]	@ angle, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:243: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #36]	@ posY, %sfp
@ arm/soar_wram.arm.c:252: 	CpuFastCopy(&SkyBG, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	mov	lr, pc
	bx	r7		@ tmp594
@ arm/soar_wram.arm.c:254: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp595,
	ldr	r2, .L103+72	@,
	add	r1, sp, #72	@ tmp821,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp595, tmp
	mov	lr, pc
	bx	r7		@ tmp594
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	lsl	r3, r6, #4	@ tmp601, prephitmp_541,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	add	r3, r3, #380	@ _225, tmp601,
	add	r2, r3, #3	@ _225, _225,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	lsl	r3, r6, #1	@ tmp600, prephitmp_541,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	add	fp, r3, #24	@ zdist, tmp600,
@ arm/soar_wram.arm.c:245: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp591, angle,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	cmp	fp, r2	@ zdist, _225
	str	r2, [sp, #40]	@ _225, %sfp
@ arm/soar_wram.arm.c:245: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp591,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	bgt	.L24		@,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r6, r6, lsl #8	@ tmp730, prephitmp_541, prephitmp_541,
	rsb	r3, r6, r6, lsl #8	@ tmp732, tmp730, tmp730,
	str	r3, [sp, #60]	@ tmp732, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp603, angle
	and	r3, r3, #15	@ _578, tmp603,
	lsl	r3, r3, #9	@ tmp721, _578,
	str	r3, [sp, #52]	@ tmp721, %sfp
	rsb	r3, r4, #0	@ tmp604, tangent
	lsl	r2, r5, #9	@ tmp714, angle,
	and	r3, r3, #15	@ _582, tmp604,
	str	r2, [sp, #44]	@ tmp714, %sfp
	lsl	r3, r3, #9	@ tmp722, _582,
	lsl	r2, r4, #9	@ tmp715, tangent,
	str	r2, [sp, #48]	@ tmp715, %sfp
	str	r3, [sp, #56]	@ tmp722, %sfp
@ arm/soar_wram.arm.c:298: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r10, [r8, #64]	@ prephitmp_612, CurrentProc_93(D)->vid_page
	b	.L40		@
.L27:
@ arm/soar_wram.arm.c:286: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r1, r2, r1	@ tmp694, _237, _250
@ arm/soar_wram.arm.c:286: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r1, #6	@ tmp694,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	movgt	r3, #0	@ tmp700,
@ arm/soar_wram.arm.c:306: 	u16* base = vid_page + (offset);
	addgt	r2, r2, r5	@ tmp695, _237, ivtmp.54
	subgt	r2, r2, #1	@ tmp696, tmp695,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lslgt	r2, r2, #1	@ tmp697, tmp696,
	strhgt	r3, [r10, r2]	@ movhi	@ tmp700, *base_290
.L25:
@ arm/soar_wram.arm.c:267: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r3, sp, #199	@ tmp855,,
	cmp	r0, r3	@ ivtmp.52, tmp855
	ldr	r3, [sp, #16]	@ _468, %sfp
	add	r4, r4, r3	@ ivtmp.56, ivtmp.56, _468
	ldr	r3, [sp, #20]	@ _469, %sfp
	add	r5, r5, #160	@ ivtmp.54, ivtmp.54,
	add	lr, lr, r3	@ ivtmp.57, ivtmp.57, _469
	bne	.L39		@,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	ldr	fp, [sp, #24]	@ zdist, %sfp
	asr	r3, fp, #7	@ tmp702, zdist,
	add	r3, r3, fp, asr #6	@ tmp703, tmp702, zdist,
	add	r3, r3, fp, asr #8	@ tmp705, tmp703, zdist,
	add	r3, r3, #2	@ _300, tmp705,
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	add	fp, fp, r3	@ zdist, zdist, _300
@ arm/soar_wram.arm.c:258: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE - (MAX_Z_DISTANCE>>2))+((altitude)<<4)); zdist+=INC_ZSTEP){
	ldr	r3, [sp, #40]	@ _225, %sfp
	cmp	r3, fp	@ _225, zdist
	blt	.L41		@,
.L40:
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	lr, #0	@ ivtmp.57,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp714, %sfp
	ldr	ip, .L103+76	@ tmp834,
	add	r3, r3, fp	@ tmp607, tmp714, zdist
	lsl	r3, r3, #1	@ tmp608, tmp607,
	ldrsh	r1, [ip, r3]	@ _207, pleftmatrix[angle_198][zdist_395]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp721, %sfp
	add	r3, r3, fp	@ tmp612, tmp721, zdist
	lsl	r3, r3, #1	@ tmp613, tmp612,
	ldrsh	r2, [ip, r3]	@ _214, pleftmatrix[_578][zdist_395]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp715, %sfp
	add	r3, r3, fp	@ tmp618, tmp715, zdist
	lsl	r3, r3, #1	@ tmp619, tmp618,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #32]	@ posX, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_200][zdist_395], pleftmatrix[tangent_200][zdist_395]
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r5, lr	@ ivtmp.54, ivtmp.57
@ arm/soar_wram.arm.c:264: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp622, pleftmatrix[tangent_200][zdist_395], _207
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r4, r1	@ _208, posX, _207
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r4, lr	@ ivtmp.56, ivtmp.57
@ arm/soar_wram.arm.c:264: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _468, tmp622,
	str	r3, [sp, #16]	@ _468, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp722, %sfp
	add	r3, r3, fp	@ tmp625, tmp722, zdist
	lsl	r3, r3, #1	@ tmp626, tmp625,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_582][zdist_395], pleftmatrix[_582][zdist_395]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r1, [sp, #8]	@ _208, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r1, [sp, #36]	@ posY, %sfp
@ arm/soar_wram.arm.c:265: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp629, pleftmatrix[_582][zdist_395], _214
@ arm/soar_wram.arm.c:265: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _469, tmp629,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r1, r2	@ _215, posY, _214
	str	r2, [sp, #12]	@ _215, %sfp
@ arm/soar_wram.arm.c:265: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #20]	@ _469, %sfp
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #60]	@ tmp732, %sfp
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, fp, #1	@ _248, zdist,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r3, r3, r3, lsl #8	@ tmp728, _248, _248,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	fp, [sp, #24]	@ zdist, %sfp
	add	r0, sp, #71	@ tmp832,,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r9, r3, r2	@ tmp733, tmp728, tmp732
.L39:
@ arm/soar_wram.arm.c:271: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ _237, MEM[(unsigned char *)_472]
@ arm/soar_wram.arm.c:271: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r2, #159	@ _237,
	bhi	.L25		@,
@ arm/soar_wram.arm.c:269: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #8]	@ _208, %sfp
	add	ip, r3, r4, asr #8	@ _233, _208, ivtmp.56,
@ arm/soar_wram.arm.c:269: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #12]	@ _215, %sfp
	add	r3, r3, lr, asr #8	@ _236, _215, ivtmp.57,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _236,
	cmplt	ip, #1024	@, _233,
	movge	r6, #1	@ _240,
	movlt	r6, #0	@ _240,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r1, #0	@ _247,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L26		@,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, ip, r3	@ tmp743, _233, _236
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r1, r6	@ _247, _240
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L103+60	@ tmp640,
	addpl	r1, r1, ip	@ tmp642, tmp640, _233
	ldrbpl	r1, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _247, heightMap[_245]
.L26:
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r7, .L103+80	@ tmp850,
	add	r1, r9, r1	@ tmp654, tmp733, _247
	lsl	r1, r1, #1	@ tmp655, tmp654,
	ldrsh	r1, [r7, r1]	@ _250, hosTables[prephitmp_546][_248][_249]
@ arm/soar_wram.arm.c:274: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r1, r2	@ _250, _237
	ble	.L27		@,
@ arm/soar_wram.arm.c:277: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r7, [sp, #24]	@ zdist, %sfp
	cmp	r7, #40	@ zdist,
	beq	.L101		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _240,
	bne	.L48		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp744, _233, _236
	bmi	.L48		@,
.L42:
@ arm/soar_wram.arm.c:106: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, ip, r3, lsl #10	@ tmp663, _233, _236,
	ldr	ip, .L103+84	@ tmp853,
	lsl	r3, r3, #1	@ tmp664, tmp663,
	ldrh	r6, [ip, r3]	@ clr, colourMap[_259]
.L31:
@ arm/soar_wram.arm.c:280: 					    if (zdist > (((int)(FOG_DISTANCE)<<1)+0)) clr |= fogmask; //if in fog
	ldr	r3, [sp, #24]	@ zdist, %sfp
	cmp	r3, #408	@ zdist,
@ arm/soar_wram.arm.c:280: 					    if (zdist > (((int)(FOG_DISTANCE)<<1)+0)) clr |= fogmask; //if in fog
	orrgt	r6, r6, #15552	@ clr, clr,
	orrgt	r6, r6, #35	@ clr, clr,
.L30:
@ arm/soar_wram.arm.c:305: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r3, r5, r2	@ _594, ivtmp.54, _237
@ arm/soar_wram.arm.c:306: 	u16* base = vid_page + (offset);
	add	ip, r10, r3, lsl #1	@ tmp.34, prephitmp_612, _594,
@ arm/soar_wram.arm.c:282: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r2, r1, r2	@ tmp672, _250, _237
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r8, ip, r2, lsl #1	@ _397, tmp.34, tmp672,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, r8	@ tmp.34, _397
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r2, #1	@ _400, tmp672,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L37		@,
	sub	r7, r2, #1	@ _601, _400,
	cmp	r7, #11	@ _601,
	lsr	r2, ip, #1	@ tmp676, tmp.34,
	lsr	r7, r7, #1	@ _600, _601,
	and	r2, r2, #1	@ prolog_loop_niters.30, tmp676,
	bls	.L33		@,
	cmp	r2, #0	@ prolog_loop_niters.30,
	add	r3, r2, r3	@ tmp684, prolog_loop_niters.30, _594
	rsb	r2, r2, #1	@ tmp678, prolog_loop_niters.30,
	add	r2, r2, r7	@ niters.31, tmp678, _600
	add	r3, r10, r3, lsl #1	@ vectp.36, prephitmp_612, tmp684,
	lsr	r7, r2, #1	@ bnd.32, niters.31,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhne	r6, [ip], #2	@ movhi	@ clr, *base_273
	add	r7, r3, r7, lsl #2	@ _458, vectp.36, bnd.32,
	orr	fp, r6, r6, lsl #16	@ vect_cst__553, clr, clr,
.L35:
	str	fp, [r3], #4	@ vect_cst__553, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_543]
	cmp	r7, r3	@ _458, vectp.36
	bne	.L35		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L37		@,
.L33:
	mov	r3, ip	@ i, tmp.34
	strh	r6, [r3], #2	@ movhi	@ clr, *i_560
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _397, i
	bls	.L37		@,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _397, i
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_560 + 2B]
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _397, i
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_560 + 4B]
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _397, i
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_560 + 6B]
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _397, i
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_560 + 8B]
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:307: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r6, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_560 + 10B]
.L37:
@ arm/soar_wram.arm.c:283: 				    yBuffer[i] = height_on_screen;
	strb	r1, [r0]	@ _250, MEM[(unsigned char *)_472]
	b	.L25		@
.L96:
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r1, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _620, posY,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L102		@,
.L10:
@ arm/soar_wram.arm.c:153: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L103+88	@ tmp425,
@ arm/soar_wram.arm.c:152: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _620,
@ arm/soar_wram.arm.c:153: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp429, tmp425, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_187][posX_185]
@ arm/soar_wram.arm.c:155: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L103+36	@ tmp431,
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_190], translatedLocations[_190]
@ arm/soar_wram.arm.c:156: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:155: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r1, #80]	@ translatedLocations[_190], CurrentProc_93(D)->location
@ arm/soar_wram.arm.c:156: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:157: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp437, loc,
	add	r3, r3, #-905969664	@ tmp440, tmp437,
	add	r3, r3, #3932160	@ tmp440, tmp440,
	lsr	r3, r3, r2	@ tmp439, tmp440,
	str	r3, [sp]	@ tmp439,
	mov	r0, #8	@,
	ldr	r3, .L103+92	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp711
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L103+40	@ tmp716,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L97:
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _3, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp448, _3,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp457, _3,
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L103+44	@ tmp720,
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L103+48	@ tmp723,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp457,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _10, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp459, _10,
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_93(D)->sPlayerPosY, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp466, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp467, tmp466, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_93(D)->sPlayerPosX, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp467, newy
@ arm/soar_wram.arm.c:20: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp476, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp477, tmp476, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp477, newx
@ arm/soar_wram.arm.c:19: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:21: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	bl	BumpScreen		@
	b	.L12		@
.L98:
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _20, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp484, _20,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp493, _20,
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L103+44	@ tmp720,
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L103+48	@ tmp723,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp493,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _27, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp495, _27,
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r7, #48]	@ CurrentProc_93(D)->sPlayerPosY, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp502, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp503, tmp502, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_93(D)->sPlayerPosX, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp503, newy
@ arm/soar_wram.arm.c:30: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp512, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp513, tmp512, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp513, newx
@ arm/soar_wram.arm.c:29: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:31: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	bl	BumpScreen		@
	b	.L12		@
.L101:
@ arm/soar_wram.arm.c:277: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	add	r7, sp, #72	@ tmp852,,
	sub	r7, r0, r7	@ tmp658, ivtmp.52, tmp852
	sub	r7, r7, #61	@ tmp659, tmp658,
	cmp	r7, #6	@ tmp659,
	bhi	.L29		@,
@ arm/soar_wram.arm.c:276: 					u16 clr = 0; //default to shadow
	mov	r6, #0	@ clr,
	b	.L30		@
.L48:
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L31		@
.L24:
@ arm/soar_wram.arm.c:298: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r10, [r3, #64]	@ prephitmp_612, CurrentProc_93(D)->vid_page
.L41:
	mov	r0, r10	@, prephitmp_612
	bl	vid_flip		@
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	ldr	r2, .L103+20	@ tmp706,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:298: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	add	r3, r3, #1	@ tmp708, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:298: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r1, #64]	@ tmp740, CurrentProc_93(D)->vid_page
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp708, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:93: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L21:
@ arm/soar_wram.arm.c:76: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _55,
	beq	.L22		@,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp570, _153,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp575, camera_ht
	movge	r3, #0	@ tmp575,
	movlt	r3, #1	@ tmp575,
	cmp	r1, #64	@ _64,
	movle	r3, #0	@ tmp575,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp576, _142,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp576, camera_ht
	movge	r3, #0	@, tmp582
	andlt	r3, r3, #1	@,, tmp582, tmp575
	cmp	r3, #0	@ tmp582,
	beq	.L22		@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r6, r6, #1	@ tmp583, prephitmp_541,
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	str	r6, [r5, #56]	@ tmp583, CurrentProc_93(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:78: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r5, #52]	@ camera_ht, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:83: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r6, [r5, #56]	@ prephitmp_541, CurrentProc_93(D)->sPlayerStepZ
	b	.L22		@
.L94:
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp376,
	ldr	r3, .L103+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L103+16	@ tmp711,
	str	ip, [sp]	@ tmp376,
	mov	lr, pc
	bx	r4		@ tmp711
@ arm/soar_wram.arm.c:134: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
	beq	.L6		@,
.L95:
@ arm/soar_wram.arm.c:136: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r3, .L103+96	@ tmp396,
	mov	r2, #0	@,
	str	r3, [sp]	@ tmp396,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L103+100	@,
	mov	lr, pc
	bx	r4		@ tmp711
	b	.L6		@
.L99:
@ arm/soar_wram.arm.c:49: 		EndLoop(CurrentProc);
	mov	r0, r8	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:93: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L102:
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp418, posX,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L103+104	@ tmp423,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp415, _620,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp420, tmp418,
	lsl	r2, r2, #16	@, tmp415,
	lsl	r1, r1, #16	@, tmp420,
	str	r3, [sp]	@ tmp423,
	mov	r0, #8	@,
	ldr	r3, .L103+24	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp711
	b	.L10		@
.L100:
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r4, [sp, #28]	@ CurrentProc, %sfp
	add	r3, r3, #48	@ tmp589, _77,
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ tmp590, prephitmp_541,
	str	r6, [r4, #56]	@ tmp590, CurrentProc_93(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp589, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:246: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r6, [r4, #56]	@ prephitmp_541, CurrentProc_93(D)->sPlayerStepZ
	b	.L23		@
.L89:
@ arm/soar_wram.arm.c:34: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	bl	BumpScreen		@
	b	.L92		@
.L29:
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _240,
	bne	.L50		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp745, _233, _236
	bpl	.L42		@,
.L50:
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L30		@
.L104:
	.align	2
.L103:
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
