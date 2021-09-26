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
	mov	r3, #50331648	@ tmp383,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:128: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _164, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _164,
@ arm/soar_wram.arm.c:7: void NewWMLoop(SoarProc* CurrentProc){
	str	r0, [sp, #28]	@ tmp763, %sfp
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L94		@,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _164,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L103	@ tmp394,
@ arm/soar_wram.arm.c:130: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L91		@,
@ arm/soar_wram.arm.c:128: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp396, _164,
@ arm/soar_wram.arm.c:131: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp396,
@ arm/soar_wram.arm.c:131: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L103+4	@ tmp401,
@ arm/soar_wram.arm.c:132: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L103+8	@ tmp404,
.L91:
	str	r3, [sp]	@ tmp404,
	mov	r2, #88	@,
	ldr	r3, .L103+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L103+16	@ tmp742,
	mov	lr, pc
	bx	r4		@ tmp742
@ arm/soar_wram.arm.c:134: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
	bne	.L95		@,
.L6:
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L103+20	@ tmp411,
@ arm/soar_wram.arm.c:140: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp414, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp414, tmp414,
	lsl	r1, r1, #16	@ tmp416, tmp414,
	lsr	r1, r1, #16	@ tmp416, tmp416,
	ldr	r3, .L103+24	@,
	str	r1, [sp]	@ tmp416,
	mov	r0, #8	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp742
@ arm/soar_wram.arm.c:145: 	int posY = CurrentProc->sFocusPtY;
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
	ldr	r5, [r1, #76]	@ posY, CurrentProc_93(D)->sFocusPtY
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L103+28	@ tmp420,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp419, posY,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp419, tmp420
@ arm/soar_wram.arm.c:144: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r1, #72]	@ posX, CurrentProc_93(D)->sFocusPtX
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:149: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L103+32	@ tmp424,
	sub	r2, r6, #1	@ tmp423, posX,
	cmp	r2, r3	@ tmp423, tmp424
	bls	.L96		@,
.L9:
@ arm/soar_wram.arm.c:155: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L103+36	@ tmp421,
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r2, #80]	@ translatedLocations[0], CurrentProc_93(D)->location
.L8:
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L103+40	@ tmp736,
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
	ldr	r5, .L103+44	@ tmp745,
	ldr	r6, .L103+48	@ tmp739,
.L12:
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r8, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r8, #60]	@ _38, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L103+52	@ tmp534,
	lsl	r3, r3, #1	@ tmp535, _38,
	ldrsh	ip, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L103+56	@ tmp537,
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
	add	r1, r7, ip	@ prephitmp_565, _37, _40
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r6, r3	@ prephitmp_567, _42, _44
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	r5, r5, r1	@ _48, cam_pivot_dx_Angles[_38], prephitmp_565
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r2	@ _51, cam_pivot_dy_Angles[_38], prephitmp_567
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r0, #8	@ _52,
@ arm/soar_wram.arm.c:42: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r8, #44]	@ prephitmp_565, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:44: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r5, [r8, #72]	@ _48, CurrentProc_93(D)->sFocusPtX
@ arm/soar_wram.arm.c:43: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r8, #48]	@ prephitmp_567, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:45: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r8, #76]	@ _51, CurrentProc_93(D)->sFocusPtY
@ arm/soar_wram.arm.c:48: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L99		@,
@ arm/soar_wram.arm.c:53: 	if (gKeyState.pressedKeys & SELECT_BUTTON){
	tst	r0, #4	@ _52,
@ arm/soar_wram.arm.c:54: 		CurrentProc->ShowMap ^= 1;
	ldrne	r0, [r8, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	eorne	r0, r0, #1	@ tmp555, CurrentProc_93(D)->ShowMap,
	strne	r0, [r8, #68]	@ tmp555, CurrentProc_93(D)->ShowMap
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:57: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _55,
	beq	.L17		@,
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, r2	@ _57, _44, prephitmp_567
	mov	r6, r2	@ _42, prephitmp_567
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [sp, #28]	@ CurrentProc, %sfp
	add	ip, ip, r1	@ _56, _40, prephitmp_565
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r7, r1	@ _37, prephitmp_565
@ arm/soar_wram.arm.c:58: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	ip, [r2, #44]	@ _56, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:59: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r2, #48]	@ _57, CurrentProc_93(D)->sPlayerPosY
	mov	r1, ip	@ prephitmp_565, _56
	mov	r2, r3	@ prephitmp_567, _57
.L17:
@ arm/soar_wram.arm.c:61: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _55,
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldrne	r3, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	movne	r1, r7	@ prephitmp_565, _37
	movne	r2, r6	@ prephitmp_567, _42
@ arm/soar_wram.arm.c:62: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r7, [r3, #44]	@ _37, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:63: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r6, [r3, #48]	@ _42, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:65: 	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _55,
	beq	.L1		@,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r5, lr	@ tmp566, _48, _51
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp566,
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L103+60	@ tmp567,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp571, prephitmp_565, prephitmp_567
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r3, r3, r5	@ tmp569, tmp567, _48
	ldrbcc	r3, [r3, lr, lsl #10]	@ zero_extendqisi2	@ _153, heightMap[_151]
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r3, #0	@ _153,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp571,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _142,
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L103+60	@ tmp572,
	addcc	r1, ip, r1	@ tmp574, tmp572, prephitmp_565
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _142, heightMap[_140]
@ arm/soar_wram.arm.c:72: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _142, _153
	movge	lr, r2	@ tmp576, _142
	movlt	lr, r3	@ tmp576, _153
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
	add	r6, r6, #1	@ prephitmp_577, prephitmp_577,
@ arm/soar_wram.arm.c:73: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r5, #52]	@ tmp577, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerStepZ += 1;
	str	r6, [r5, #56]	@ prephitmp_577, CurrentProc_93(D)->sPlayerStepZ
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
@ arm/soar_wram.arm.c:244: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r8, #60]	@ angle, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:242: 	int posX = CurrentProc->sPlayerPosX;
	str	r3, [sp, #32]	@ posX, %sfp
@ arm/soar_wram.arm.c:243: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r8, #48]	@ posY, CurrentProc_93(D)->sPlayerPosY
	str	r3, [sp, #36]	@ posY, %sfp
@ arm/soar_wram.arm.c:251: 	CpuFastCopy(&SkyBG + ((angle<<5) + (angle<<7)<<4) + (altitude<<2) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r3, r5, r5, lsl #2	@ tmp607, angle, angle,
	lsl	r3, r3, #9	@ tmp609, tmp607,
	add	r3, r3, #1073741824	@ tmp610, tmp609,
	ldr	r0, .L103+64	@ tmp616,
	sub	r3, r3, #100	@ tmp610, tmp610,
	add	r3, r3, r6, lsl #2	@ tmp613, tmp610, prephitmp_577,
	add	r0, r0, r3, lsl #2	@, tmp616, tmp613,
	mov	r2, #10240	@,
	ldr	r1, [r8, #64]	@, CurrentProc_93(D)->vid_page
	ldr	r7, .L103+68	@ tmp617,
	mov	lr, pc
	bx	r7		@ tmp617
@ arm/soar_wram.arm.c:253: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp618,
	ldr	r2, .L103+72	@,
	add	r1, sp, #72	@ tmp845,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp618, tmp
	mov	lr, pc
	bx	r7		@ tmp617
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	lsl	r3, r6, #4	@ tmp624, prephitmp_577,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	r3, r3, #512	@ tmp625, tmp624,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	asr	r3, r3, #1	@ tmp626, tmp625,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	r2, r3, #31	@ _240, tmp626,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	lsl	r3, r6, #1	@ tmp623, prephitmp_577,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	fp, r3, #24	@ zdist, tmp623,
@ arm/soar_wram.arm.c:245: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp603, angle,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	cmp	fp, r2	@ zdist, _240
	str	r2, [sp, #40]	@ _240, %sfp
@ arm/soar_wram.arm.c:245: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp603,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	bgt	.L24		@,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r6, r6, lsl #8	@ tmp754, prephitmp_577, prephitmp_577,
	rsb	r3, r6, r6, lsl #8	@ tmp756, tmp754, tmp754,
	str	r3, [sp, #60]	@ tmp756, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp627, angle
	and	r3, r3, #15	@ _624, tmp627,
	lsl	r3, r3, #9	@ tmp737, _624,
	str	r3, [sp, #44]	@ tmp737, %sfp
	rsb	r3, r4, #0	@ tmp628, tangent
	lsl	r2, r5, #9	@ tmp743, angle,
	and	r3, r3, #15	@ _628, tmp628,
	str	r2, [sp, #52]	@ tmp743, %sfp
	lsl	r3, r3, #9	@ tmp738, _628,
	lsl	r2, r4, #9	@ tmp744, tangent,
	str	r2, [sp, #56]	@ tmp744, %sfp
	str	r3, [sp, #48]	@ tmp738, %sfp
@ arm/soar_wram.arm.c:297: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r10, [r8, #64]	@ prephitmp_658, CurrentProc_93(D)->vid_page
	b	.L40		@
.L27:
@ arm/soar_wram.arm.c:285: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r1, r2, r1	@ tmp718, _247, _260
@ arm/soar_wram.arm.c:285: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r1, #6	@ tmp718,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	movgt	r3, #0	@ tmp724,
@ arm/soar_wram.arm.c:305: 	u16* base = vid_page + (offset);
	addgt	r2, r2, r5	@ tmp719, _247, ivtmp.54
	subgt	r2, r2, #1	@ tmp720, tmp719,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lslgt	r2, r2, #1	@ tmp721, tmp720,
	strhgt	r3, [r10, r2]	@ movhi	@ tmp724, *base_300
.L25:
@ arm/soar_wram.arm.c:266: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r3, sp, #199	@ tmp877,,
	cmp	r0, r3	@ ivtmp.52, tmp877
	ldr	r3, [sp, #16]	@ _513, %sfp
	add	r4, r4, r3	@ ivtmp.56, ivtmp.56, _513
	ldr	r3, [sp, #20]	@ _515, %sfp
	add	r5, r5, #160	@ ivtmp.54, ivtmp.54,
	add	lr, lr, r3	@ ivtmp.57, ivtmp.57, _515
	bne	.L39		@,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	ldr	fp, [sp, #24]	@ zdist, %sfp
	asr	r3, fp, #7	@ tmp726, zdist,
	add	r3, r3, fp, asr #6	@ tmp727, tmp726, zdist,
	add	r3, r3, fp, asr #8	@ tmp729, tmp727, zdist,
	add	r3, r3, #2	@ _310, tmp729,
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	add	fp, fp, r3	@ zdist, zdist, _310
@ arm/soar_wram.arm.c:257: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	ldr	r3, [sp, #40]	@ _240, %sfp
	cmp	r3, fp	@ _240, zdist
	blt	.L41		@,
.L40:
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	lr, #0	@ ivtmp.57,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp743, %sfp
	ldr	ip, .L103+76	@ tmp856,
	add	r3, r3, fp	@ tmp631, tmp743, zdist
	lsl	r3, r3, #1	@ tmp632, tmp631,
	ldrsh	r1, [ip, r3]	@ _218, pleftmatrix[angle_198][zdist_410]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp737, %sfp
	add	r3, r3, fp	@ tmp636, tmp737, zdist
	lsl	r3, r3, #1	@ tmp637, tmp636,
	ldrsh	r2, [ip, r3]	@ _224, pleftmatrix[_624][zdist_410]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp744, %sfp
	add	r3, r3, fp	@ tmp642, tmp744, zdist
	lsl	r3, r3, #1	@ tmp643, tmp642,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #32]	@ posX, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_200][zdist_410], pleftmatrix[tangent_200][zdist_410]
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r5, lr	@ ivtmp.54, ivtmp.57
@ arm/soar_wram.arm.c:263: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp646, pleftmatrix[tangent_200][zdist_410], _218
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r4, r1	@ _219, posX, _218
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r4, lr	@ ivtmp.56, ivtmp.57
@ arm/soar_wram.arm.c:263: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _513, tmp646,
	str	r3, [sp, #16]	@ _513, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #48]	@ tmp738, %sfp
	add	r3, r3, fp	@ tmp649, tmp738, zdist
	lsl	r3, r3, #1	@ tmp650, tmp649,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_628][zdist_410], pleftmatrix[_628][zdist_410]
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r1, [sp, #8]	@ _219, %sfp
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r1, [sp, #36]	@ posY, %sfp
@ arm/soar_wram.arm.c:264: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp653, pleftmatrix[_628][zdist_410], _224
@ arm/soar_wram.arm.c:264: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _515, tmp653,
@ arm/soar_wram.arm.c:170: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r1, r2	@ _225, posY, _224
	str	r2, [sp, #12]	@ _225, %sfp
@ arm/soar_wram.arm.c:264: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #20]	@ _515, %sfp
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #60]	@ tmp756, %sfp
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, fp, #1	@ _258, zdist,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r3, r3, r3, lsl #8	@ tmp752, _258, _258,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	fp, [sp, #24]	@ zdist, %sfp
	add	r0, sp, #71	@ tmp854,,
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r9, r3, r2	@ tmp757, tmp752, tmp756
.L39:
@ arm/soar_wram.arm.c:270: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ _247, MEM[(unsigned char *)_517]
@ arm/soar_wram.arm.c:270: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r2, #159	@ _247,
	bhi	.L25		@,
@ arm/soar_wram.arm.c:268: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #8]	@ _219, %sfp
	add	ip, r3, r4, asr #8	@ _243, _219, ivtmp.56,
@ arm/soar_wram.arm.c:268: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp, #12]	@ _225, %sfp
	add	r3, r3, lr, asr #8	@ _246, _225, ivtmp.57,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _246,
	cmplt	ip, #1024	@, _243,
	movge	r6, #1	@ _250,
	movlt	r6, #0	@ _250,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r1, #0	@ _257,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	bge	.L26		@,
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, ip, r3	@ tmp767, _243, _246
@ arm/soar_wram.arm.c:110: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movmi	r1, r6	@ _257, _250
@ arm/soar_wram.arm.c:111: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L103+60	@ tmp664,
	addpl	r1, r1, ip	@ tmp666, tmp664, _243
	ldrbpl	r1, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _257, heightMap[_255]
.L26:
@ arm/soar_wram.arm.c:120: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r7, .L103+80	@ tmp872,
	add	r1, r9, r1	@ tmp678, tmp757, _257
	lsl	r1, r1, #1	@ tmp679, tmp678,
	ldrsh	r1, [r7, r1]	@ _260, hosTables[prephitmp_594][_258][_259]
@ arm/soar_wram.arm.c:273: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r1, r2	@ _260, _247
	ble	.L27		@,
@ arm/soar_wram.arm.c:276: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r7, [sp, #24]	@ zdist, %sfp
	cmp	r7, #40	@ zdist,
	beq	.L101		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _250,
	bne	.L48		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp768, _243, _246
	bmi	.L48		@,
.L42:
@ arm/soar_wram.arm.c:106: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, ip, r3, lsl #10	@ tmp687, _243, _246,
	ldr	ip, .L103+84	@ tmp875,
	lsl	r3, r3, #1	@ tmp688, tmp687,
	ldrh	r6, [ip, r3]	@ clr, colourMap[_269]
.L31:
@ arm/soar_wram.arm.c:279: 					    if (zdist > (FOG_DISTANCE+64)) clr |= fogmask; //if in fog
	ldr	r3, [sp, #24]	@ zdist, %sfp
	cmp	r3, #268	@ zdist,
@ arm/soar_wram.arm.c:279: 					    if (zdist > (FOG_DISTANCE+64)) clr |= fogmask; //if in fog
	orrgt	r6, r6, #15552	@ clr, clr,
	orrgt	r6, r6, #35	@ clr, clr,
.L30:
@ arm/soar_wram.arm.c:304: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r3, r5, r2	@ _640, ivtmp.54, _247
@ arm/soar_wram.arm.c:305: 	u16* base = vid_page + (offset);
	add	ip, r10, r3, lsl #1	@ tmp.34, prephitmp_658, _640,
@ arm/soar_wram.arm.c:281: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r2, r1, r2	@ tmp696, _260, _247
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r8, ip, r2, lsl #1	@ _411, tmp.34, tmp696,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	ip, r8	@ tmp.34, _411
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	lsl	r2, r2, #1	@ _407, tmp696,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bcs	.L37		@,
	sub	r7, r2, #1	@ _647, _407,
	cmp	r7, #11	@ _647,
	lsr	r2, ip, #1	@ tmp700, tmp.34,
	lsr	r7, r7, #1	@ _646, _647,
	and	r2, r2, #1	@ prolog_loop_niters.30, tmp700,
	bls	.L33		@,
	cmp	r2, #0	@ prolog_loop_niters.30,
	add	r3, r2, r3	@ tmp708, prolog_loop_niters.30, _640
	rsb	r2, r2, #1	@ tmp702, prolog_loop_niters.30,
	add	r2, r2, r7	@ niters.31, tmp702, _646
	add	r3, r10, r3, lsl #1	@ vectp.36, prephitmp_658, tmp708,
	lsr	r7, r2, #1	@ bnd.32, niters.31,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhne	r6, [ip], #2	@ movhi	@ clr, *base_283
	add	r7, r3, r7, lsl #2	@ _501, vectp.36, bnd.32,
	orr	fp, r6, r6, lsl #16	@ vect_cst__600, clr, clr,
.L35:
	str	fp, [r3], #4	@ vect_cst__600, MEM <vector(2) short unsigned int> [(u16 *)vectp.35_590]
	cmp	r7, r3	@ _501, vectp.36
	bne	.L35		@,
	bic	r3, r2, #1	@ niters_vector_mult_vf.33, niters.31,
	cmp	r3, r2	@ niters_vector_mult_vf.33, niters.31
	add	ip, ip, r3, lsl #1	@ tmp.34, tmp.34, niters_vector_mult_vf.33,
	beq	.L37		@,
.L33:
	mov	r3, ip	@ i, tmp.34
	strh	r6, [r3], #2	@ movhi	@ clr, *i_607
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _411, i
	bls	.L37		@,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #4	@ i, tmp.34,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _411, i
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #2]	@ movhi	@ clr, MEM[(u16 *)i_607 + 2B]
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #6	@ i, tmp.34,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _411, i
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #4]	@ movhi	@ clr, MEM[(u16 *)i_607 + 4B]
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #8	@ i, tmp.34,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _411, i
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #6]	@ movhi	@ clr, MEM[(u16 *)i_607 + 6B]
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	bls	.L37		@,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r3, ip, #10	@ i, tmp.34,
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r8, r3	@ _411, i
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r6, [ip, #8]	@ movhi	@ clr, MEM[(u16 *)i_607 + 8B]
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
@ arm/soar_wram.arm.c:306: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strhhi	r6, [ip, #10]	@ movhi	@ clr, MEM[(u16 *)i_607 + 10B]
.L37:
@ arm/soar_wram.arm.c:282: 				    yBuffer[i] = height_on_screen;
	strb	r1, [r0]	@ _260, MEM[(unsigned char *)_517]
	b	.L25		@
.L96:
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r1, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _666, posY,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L102		@,
.L10:
@ arm/soar_wram.arm.c:153: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L103+88	@ tmp437,
@ arm/soar_wram.arm.c:152: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _666,
@ arm/soar_wram.arm.c:153: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp441, tmp437, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_187][posX_185]
@ arm/soar_wram.arm.c:155: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L103+36	@ tmp443,
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
	lsl	r3, r3, #18	@ tmp449, loc,
	add	r3, r3, #-905969664	@ tmp452, tmp449,
	add	r3, r3, #3932160	@ tmp452, tmp452,
	lsr	r3, r3, r2	@ tmp451, tmp452,
	str	r3, [sp]	@ tmp451,
	mov	r0, #8	@,
	ldr	r3, .L103+92	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp742
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L103+40	@ tmp736,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:13: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L97:
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r7, #60]	@ _3, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp460, _3,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp469, _3,
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L103+44	@ tmp745,
@ arm/soar_wram.arm.c:15: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L103+48	@ tmp739,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp469,
@ arm/soar_wram.arm.c:16: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _10, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp471, _10,
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
	bic	r3, r1, #3	@ tmp478, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp479, tmp478, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_93(D)->sPlayerPosX, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:18: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp479, newy
@ arm/soar_wram.arm.c:20: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp488, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:14: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp489, tmp488, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:17: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp489, newx
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
	lsl	r2, r3, #1	@ tmp496, _20,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp505, _20,
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L103+44	@ tmp745,
@ arm/soar_wram.arm.c:25: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L103+48	@ tmp739,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp505,
@ arm/soar_wram.arm.c:26: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r7, #60]	@ _27, CurrentProc_93(D)->sPlayerYaw
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp507, _27,
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
	bic	r3, r1, #3	@ tmp514, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp515, tmp514, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r7, #44]	@ CurrentProc_93(D)->sPlayerPosX, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp515, newy
@ arm/soar_wram.arm.c:30: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r7, #48]	@ newy, CurrentProc_93(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp524, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:24: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp525, tmp524, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp525, newx
@ arm/soar_wram.arm.c:29: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r7, #44]	@ newx, CurrentProc_93(D)->sPlayerPosX
@ arm/soar_wram.arm.c:31: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	bl	BumpScreen		@
	b	.L12		@
.L101:
@ arm/soar_wram.arm.c:276: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	add	r7, sp, #72	@ tmp874,,
	sub	r7, r0, r7	@ tmp682, ivtmp.52, tmp874
	sub	r7, r7, #61	@ tmp683, tmp682,
	cmp	r7, #6	@ tmp683,
	bhi	.L29		@,
@ arm/soar_wram.arm.c:275: 					u16 clr = 0; //default to shadow
	mov	r6, #0	@ clr,
	b	.L30		@
.L48:
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r6, #6208	@ clr,
	b	.L31		@
.L24:
@ arm/soar_wram.arm.c:297: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r10, [r3, #64]	@ prephitmp_658, CurrentProc_93(D)->vid_page
.L41:
	mov	r0, r10	@, prephitmp_658
	bl	vid_flip		@
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	ldr	r2, .L103+20	@ tmp730,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:297: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r1, [sp, #28]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	add	r3, r3, #1	@ tmp732, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:297: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r1, #64]	@ tmp764, CurrentProc_93(D)->vid_page
@ arm/soar_wram.arm.c:92: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp732, MEM[(int *)33816568B]
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
	add	r3, r3, #48	@ tmp582, _153,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp587, camera_ht
	movge	r3, #0	@ tmp587,
	movlt	r3, #1	@ tmp587,
	cmp	r1, #64	@ _64,
	movle	r3, #0	@ tmp587,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp588, _142,
@ arm/soar_wram.arm.c:77: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp588, camera_ht
	movge	r3, #0	@, tmp594
	andlt	r3, r3, #1	@,, tmp594, tmp587
	cmp	r3, #0	@ tmp594,
	beq	.L22		@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r6, r6, #1	@ tmp595, prephitmp_577,
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:79: 			CurrentProc->sPlayerStepZ -= 1;
	str	r6, [r5, #56]	@ tmp595, CurrentProc_93(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:78: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r5, #52]	@ camera_ht, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:80: 			BumpScreen(bump_down);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:83: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _55, gKeyState.heldKeys
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r6, [r5, #56]	@ prephitmp_577, CurrentProc_93(D)->sPlayerStepZ
	b	.L22		@
.L94:
@ arm/soar_wram.arm.c:129: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp388,
	ldr	r3, .L103+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r4, .L103+16	@ tmp742,
	str	ip, [sp]	@ tmp388,
	mov	lr, pc
	bx	r4		@ tmp742
@ arm/soar_wram.arm.c:134: 	if (CurrentProc->ShowMap)
	ldr	r3, [sp, #28]	@ CurrentProc, %sfp
	ldr	r3, [r3, #68]	@ CurrentProc_93(D)->ShowMap, CurrentProc_93(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_93(D)->ShowMap,
	beq	.L6		@,
.L95:
@ arm/soar_wram.arm.c:136: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r3, .L103+96	@ tmp408,
	mov	r2, #0	@,
	str	r3, [sp]	@ tmp408,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L103+100	@,
	mov	lr, pc
	bx	r4		@ tmp742
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
	asr	r1, r6, #4	@ tmp430, posX,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L103+104	@ tmp435,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp427, _666,
@ arm/soar_wram.arm.c:150: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp432, tmp430,
	lsl	r2, r2, #16	@, tmp427,
	lsl	r1, r1, #16	@, tmp432,
	str	r3, [sp]	@ tmp435,
	mov	r0, #8	@,
	ldr	r3, .L103+24	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp742
	b	.L10		@
.L100:
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r4, [sp, #28]	@ CurrentProc, %sfp
	add	r3, r3, #48	@ tmp601, _77,
@ arm/soar_wram.arm.c:86: 			CurrentProc->sPlayerStepZ += 1;
	add	r6, r6, #1	@ tmp602, prephitmp_577,
	str	r6, [r4, #56]	@ tmp602, CurrentProc_93(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:85: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp601, CurrentProc_93(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:87: 			BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:246: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r6, [r4, #56]	@ prephitmp_577, CurrentProc_93(D)->sPlayerStepZ
	b	.L23		@
.L89:
@ arm/soar_wram.arm.c:34: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	bl	BumpScreen		@
	b	.L92		@
.L29:
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r6, #0	@ _250,
	bne	.L50		@,
@ arm/soar_wram.arm.c:105: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r6, ip, r3	@ tmp769, _243, _246
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
