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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
@ arm/soar_wram.arm.c:11: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r5, .L44	@ tmp404,
@ arm/soar_wram.arm.c:5: void NewWMLoop(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp415
@ arm/soar_wram.arm.c:7: 	UpdateSprites(CurrentProc);
	bl	UpdateSprites		@
@ arm/soar_wram.arm.c:11: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldrh	r2, [r5, #4]	@ prephitmp_260, gKeyState.heldKeys
@ arm/soar_wram.arm.c:11: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r2, #32	@ prephitmp_260,
	bne	.L41		@,
@ arm/soar_wram.arm.c:21: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	ands	r0, r2, #16	@ tmp262, prephitmp_260,
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r8, [r4, #44]	@ CurrentProc_107(D)->sPlayerPosX, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #56]	@ _44, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r4, #48]	@ CurrentProc_107(D)->sPlayerPosY, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:21: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	bne	.L42		@,
@ arm/soar_wram.arm.c:31: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r1, [r5, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r1, #48	@ gKeyState.prevKeys,
	beq	.L39		@,
@ arm/soar_wram.arm.c:33: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	mvn	r7, #243	@ tmp307,
@ arm/soar_wram.arm.c:34: 		g_REG_BG2PC=0x85; //
	mov	r6, #133	@ tmp310,
@ arm/soar_wram.arm.c:37: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	mov	ip, #384	@ tmp317,
@ arm/soar_wram.arm.c:32: 		g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r1, .L44+4	@ tmp302,
	strh	r0, [r1, #200]	@ movhi	@ tmp262, MEM[(volatile vu16 *)50344136B]
@ arm/soar_wram.arm.c:33: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	strh	r7, [r1, #202]	@ movhi	@ tmp307, MEM[(volatile vu16 *)50344138B]
@ arm/soar_wram.arm.c:34: 		g_REG_BG2PC=0x85; //
	strh	r6, [r1, #204]	@ movhi	@ tmp310, MEM[(volatile vu16 *)50344140B]
@ arm/soar_wram.arm.c:35: 		g_REG_BG2PD=0x00;	//
	strh	r0, [r1, #206]	@ movhi	@ tmp262, MEM[(volatile vu16 *)50344142B]
@ arm/soar_wram.arm.c:36: 		g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r0, .L44+8	@ tmp315,
	str	r0, [r1, #208]	@ tmp315, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:37: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	str	ip, [r1, #212]	@ tmp317, MEM[(volatile vu32 *)50344148B]
.L39:
	ldr	r6, .L44+12	@ tmp409,
	ldr	r7, .L44+16	@ tmp407,
.L3:
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	lsl	r3, r3, #1	@ tmp320, _44,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	ip, [r6, r3]	@ cam_pivot_dx_Angles[_44], cam_pivot_dx_Angles[_44]
@ arm/soar_wram.arm.c:48: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r7, r3]	@ cam_pivot_dy_Angles[_44], cam_pivot_dy_Angles[_44]
@ arm/soar_wram.arm.c:46: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r6, .L44+20	@ tmp406,
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r7, .L44+24	@ tmp408,
	ldrsh	r1, [r7, r3]	@ cam_dx_Angles[_44], cam_dx_Angles[_44]
@ arm/soar_wram.arm.c:46: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r6, r3]	@ cam_dy_Angles[_44], cam_dy_Angles[_44]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r1, r8	@ _47, cam_dx_Angles[_44], CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, lr	@ _51, cam_dy_Angles[_44], CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	ip, ip, r1	@ tmp333, cam_pivot_dx_Angles[_44], _47
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r4, #44]	@ _47, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r2, #1	@ prephitmp_260,
@ arm/soar_wram.arm.c:48: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	r1, r0, r3	@ tmp338, cam_pivot_dy_Angles[_44], _51
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	ip, [r4, #68]	@ tmp333, CurrentProc_107(D)->sFocusPtX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ _51, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:48: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #72]	@ tmp338, CurrentProc_107(D)->sFocusPtY
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	beq	.L5		@,
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ _59, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r3, #304	@ _59,
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addlt	r3, r3, #48	@ tmp343, _59,
@ arm/soar_wram.arm.c:53: 		BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	strlt	r3, [r4, #52]	@ tmp343, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:53: 		BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:56: 	if (gKeyState.heldKeys & B_BUTTON){
	ldrh	r2, [r5, #4]	@ prephitmp_260, gKeyState.heldKeys
.L5:
@ arm/soar_wram.arm.c:56: 	if (gKeyState.heldKeys & B_BUTTON){
	tst	r2, #2	@ prephitmp_260,
	beq	.L7		@,
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ _62, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	cmp	r3, #64	@ _62,
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subgt	r3, r3, #48	@ tmp349, _62,
@ arm/soar_wram.arm.c:58: 		BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	strgt	r3, [r4, #52]	@ tmp349, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:58: 		BumpScreen(bump_down);
	bl	BumpScreen		@
.L7:
@ arm/soar_wram.arm.c:61: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r3, [r5, #8]	@ _64, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:61: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r3, #8	@ _64,
	bne	.L43		@,
@ arm/soar_wram.arm.c:66: 	if (gKeyState.pressedKeys & SELECT_BUTTON){
	tst	r3, #4	@ _64,
@ arm/soar_wram.arm.c:67: 		CurrentProc->ShowMap ^= 1;
	ldrne	r3, [r4, #64]	@ CurrentProc_107(D)->ShowMap, CurrentProc_107(D)->ShowMap
@ arm/soar_wram.arm.c:70: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r1, [r5, #4]	@ _67, gKeyState.heldKeys
@ arm/soar_wram.arm.c:67: 		CurrentProc->ShowMap ^= 1;
	eorne	r3, r3, #1	@ tmp359, CurrentProc_107(D)->ShowMap,
	strne	r3, [r4, #64]	@ tmp359, CurrentProc_107(D)->ShowMap
@ arm/soar_wram.arm.c:70: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r1, #64	@ _67,
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #44]	@ prephitmp_270, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:72: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #48]	@ prephitmp_272, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:70: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	beq	.L12		@,
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #56]	@ _69, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	lsl	r0, r0, #1	@ tmp367, _69,
	ldrsh	ip, [r7, r0]	@ cam_dx_Angles[_69], cam_dx_Angles[_69]
@ arm/soar_wram.arm.c:72: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r0, [r6, r0]	@ cam_dy_Angles[_69], cam_dy_Angles[_69]
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	add	r2, r2, ip	@ prephitmp_270, prephitmp_270, cam_dx_Angles[_69]
@ arm/soar_wram.arm.c:72: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, r0	@ prephitmp_272, prephitmp_272, cam_dy_Angles[_69]
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #44]	@ prephitmp_270, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:72: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ prephitmp_272, CurrentProc_107(D)->sPlayerPosY
.L12:
@ arm/soar_wram.arm.c:74: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r1, #128	@ _67,
	beq	.L13		@,
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #56]	@ _78, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	lsl	r1, r1, #1	@ tmp379, _78,
	ldrsh	r0, [r7, r1]	@ cam_dx_Angles[_78], cam_dx_Angles[_78]
@ arm/soar_wram.arm.c:76: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r1, [r6, r1]	@ cam_dy_Angles[_78], cam_dy_Angles[_78]
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	sub	r2, r2, r0	@ prephitmp_270, prephitmp_270, cam_dx_Angles[_78]
@ arm/soar_wram.arm.c:76: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	sub	r3, r3, r1	@ prephitmp_272, prephitmp_272, cam_dy_Angles[_78]
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #44]	@ prephitmp_270, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:76: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ prephitmp_272, CurrentProc_107(D)->sPlayerPosY
.L13:
@ arm/soar_wram.arm.c:80: 	int player_terrain_ht = getPtHeight(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	add	r0, r4, #68	@,,
	ldm	r0, {r0, r1}	@,,
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r0, r1	@ tmp386, _86, _87
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp386,
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L44+28	@ tmp387,
	addcc	r0, ip, r0	@ tmp389, tmp387, _86
@ arm/soar_wram.arm.c:80: 	int player_terrain_ht = getPtHeight(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldrbcc	r1, [r0, r1, lsl #10]	@ zero_extendqisi2	@ _281, heightMap[_168]
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r0, r2, r3	@ tmp391, prephitmp_270, prephitmp_272
	movcs	r1, #0	@ _281,
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r0, #1024	@ tmp391,
	movcs	r3, #0	@ _283,
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r0, .L44+28	@ tmp392,
	addcc	r2, r0, r2	@ tmp394, tmp392, prephitmp_270
@ arm/soar_wram.arm.c:81: 	int camera_terrain_ht = getPtHeight(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldrbcc	r3, [r2, r3, lsl #10]	@ zero_extendqisi2	@ _283, heightMap[_158]
@ arm/soar_wram.arm.c:83: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r1, r3	@ _281, _283
	movlt	r1, r3	@ tmp396, _283
@ arm/soar_wram.arm.c:82: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r3, [r4, #52]	@ _92, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:82: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	r2, r3, #48	@ camera_ht, _92,
@ arm/soar_wram.arm.c:83: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r1, r2	@ tmp396, camera_ht
@ arm/soar_wram.arm.c:83: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addgt	r3, r3, #48	@ tmp398, _92,
	strgt	r3, [r4, #52]	@ tmp398, CurrentProc_107(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:85: 	Render(CurrentProc); //draw and then flip
	mov	r0, r4	@, CurrentProc
	bl	Render		@
@ arm/soar_wram.arm.c:86: 	FPS_COUNTER += 1;
	ldr	r2, .L44+32	@ tmp399,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp401, MEM[(int *)33816568B],
	str	r3, [r2, #4088]	@ tmp401, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:87: };
	pop	{r4, r5, r6, r7, r8, lr}	@
	bx	lr	@
.L42:
@ arm/soar_wram.arm.c:24: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r2, r3, #1	@ tmp272, _44,
@ arm/soar_wram.arm.c:23: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, .L44+16	@ tmp407,
@ arm/soar_wram.arm.c:24: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r2, r2, #15	@ _27, tmp272,
@ arm/soar_wram.arm.c:24: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r2, [r4, #56]	@ _27, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:26: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r2, r2, #1	@ tmp274, _27,
@ arm/soar_wram.arm.c:26: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r7, r2]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:22: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r3, r3, #1	@ tmp265, _44,
	ldr	r6, .L44+12	@ tmp409,
@ arm/soar_wram.arm.c:23: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r1, [r7, r3]	@ cam_pivot_dy_Angles[pretmp_288], cam_pivot_dy_Angles[pretmp_288]
@ arm/soar_wram.arm.c:25: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r0, [r6, r2]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:22: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r3]	@ cam_pivot_dx_Angles[pretmp_288], cam_pivot_dx_Angles[pretmp_288]
@ arm/soar_wram.arm.c:26: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp281, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:23: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, lr	@ newy, cam_pivot_dy_Angles[pretmp_288], CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:26: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp282, tmp281, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r1	@ newy, tmp282, newy
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r4, #48]	@ newy, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:25: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r0, #3	@ tmp291, cam_pivot_dx_Angles[_27],
	rsb	r3, r3, r0, asr #2	@ tmp292, tmp291, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:29: 		BumpScreen(bump_right);
	mov	r0, #3	@,
@ arm/soar_wram.arm.c:22: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r8	@ newx, cam_pivot_dx_Angles[pretmp_288], CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:25: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newx, tmp292, newx
@ arm/soar_wram.arm.c:27: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_107(D)->sPlayerPosX
.L38:
	add	r8, r4, #44	@,,
@ arm/soar_wram.arm.c:29: 		BumpScreen(bump_right);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r2, [r5, #4]	@ prephitmp_260, gKeyState.heldKeys
	ldr	r3, [r4, #56]	@ _44, CurrentProc_107(D)->sPlayerYaw
	ldm	r8, {r8, lr}	@,,
	b	.L3		@
.L41:
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #56]	@ _3, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp228, _3,
@ arm/soar_wram.arm.c:14: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp237, _3,
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L44+12	@ tmp409,
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, .L44+16	@ tmp407,
@ arm/soar_wram.arm.c:14: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp237,
@ arm/soar_wram.arm.c:14: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #56]	@ _10, CurrentProc_107(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp239, _10,
@ arm/soar_wram.arm.c:15: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r6, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:16: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r7, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r6, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #48]	@ CurrentProc_107(D)->sPlayerPosY, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r7, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:16: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp246, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp247, tmp246, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r4, #44]	@ CurrentProc_107(D)->sPlayerPosX, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:16: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp247, newy
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r4, #48]	@ newy, CurrentProc_107(D)->sPlayerPosY
@ arm/soar_wram.arm.c:15: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp256, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:15: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp257, tmp256, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:15: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp257, newx
@ arm/soar_wram.arm.c:17: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_107(D)->sPlayerPosX
@ arm/soar_wram.arm.c:19: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	b	.L38		@
.L43:
@ arm/soar_wram.arm.c:62: 		EndLoop(CurrentProc);
	mov	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:87: };
	pop	{r4, r5, r6, r7, r8, lr}	@
	bx	lr	@
.L45:
	.align	2
.L44:
	.word	gKeyState
	.word	50343936
	.word	40512
	.word	cam_pivot_dx_Angles
	.word	cam_pivot_dy_Angles
	.word	cam_dy_Angles
	.word	cam_dx_Angles
	.word	heightMap
	.word	33812480
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
	.text
	.align	2
	.global	getPointColour
	.syntax unified
	.arm
	.fpu softvfp
	.type	getPointColour, %function
getPointColour:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:100: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, r0, r1, lsl #10	@ tmp123, ptx, pty,
	ldrcc	r3, .L49	@ tmp121,
	lslcc	r0, r0, #1	@ tmp124, tmp123,
	ldrhcc	r0, [r3, r0]	@ <retval>, colourMap[_8]
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	movcs	r0, #6208	@ <retval>,
@ arm/soar_wram.arm.c:101: };
	bx	lr	@
.L50:
	.align	2
.L49:
	.word	colourMap
	.size	getPointColour, .-getPointColour
	.align	2
	.global	getPtHeight
	.syntax unified
	.arm
	.fpu softvfp
	.type	getPtHeight, %function
getPtHeight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L54	@ tmp121,
	addcc	r3, r3, r0	@ tmp123, tmp121, ptx
	ldrbcc	r0, [r3, r1, lsl #10]	@ zero_extendqisi2	@ <retval>, heightMap[_8]
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r0, #0	@ <retval>,
@ arm/soar_wram.arm.c:106: }
	bx	lr	@
.L55:
	.align	2
.L54:
	.word	heightMap
	.size	getPtHeight, .-getPtHeight
	.align	2
	.global	getScrHeight
	.syntax unified
	.arm
	.fpu softvfp
	.type	getScrHeight, %function
getScrHeight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r0, r1	@ tmp126, ptx, pty
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp126,
	movcs	r1, #0	@ prephitmp_6,
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L59	@ tmp127,
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, r3, #1	@ tmp133, zdist,
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, ip, r0	@ tmp129, tmp127, ptx
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp139, altitude, altitude,
@ arm/soar_wram.arm.c:109: 	int height = getPtHeight(ptx, pty);
	ldrbcc	r1, [r0, r1, lsl #10]	@ zero_extendqisi2	@ prephitmp_6, heightMap[_17]
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp141, tmp139, tmp139,
	rsb	r3, r3, r3, lsl #8	@ tmp136, tmp133, tmp133,
	add	r3, r3, r2	@ tmp142, tmp136, tmp141
	add	r3, r3, r1	@ tmp143, tmp142, prephitmp_6
	ldr	r2, .L59+4	@ tmp132,
	lsl	r3, r3, #1	@ tmp144, tmp143,
@ arm/soar_wram.arm.c:118: }
	ldrsh	r0, [r2, r3]	@, hosTables[altitude_9(D)][_1][prephitmp_6]
	bx	lr	@
.L60:
	.align	2
.L59:
	.word	heightMap
	.word	hosTables
	.size	getScrHeight, .-getScrHeight
	.align	2
	.global	UpdateSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	UpdateSprites, %function
UpdateSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:122: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp146,
@ arm/soar_wram.arm.c:120: void UpdateSprites(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ arm/soar_wram.arm.c:122: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _2, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:123: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _2,
@ arm/soar_wram.arm.c:120: void UpdateSprites(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp218
	sub	sp, sp, #12	@,,
@ arm/soar_wram.arm.c:123: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L82		@,
@ arm/soar_wram.arm.c:124: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _2,
@ arm/soar_wram.arm.c:124: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L86	@ tmp157,
@ arm/soar_wram.arm.c:124: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L81		@,
@ arm/soar_wram.arm.c:122: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp159, _2,
@ arm/soar_wram.arm.c:125: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp159,
@ arm/soar_wram.arm.c:125: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L86+4	@ tmp164,
@ arm/soar_wram.arm.c:126: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L86+8	@ tmp167,
.L81:
	str	r3, [sp]	@ tmp167,
	mov	r2, #88	@,
	ldr	r3, .L86+12	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r5, .L86+16	@ tmp217,
	mov	lr, pc
	bx	r5		@ tmp217
@ arm/soar_wram.arm.c:128: 	if (CurrentProc->ShowMap)
	ldr	r3, [r4, #64]	@ CurrentProc_38(D)->ShowMap, CurrentProc_38(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_38(D)->ShowMap,
	bne	.L83		@,
.L66:
@ arm/soar_wram.arm.c:134: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:134: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L86+20	@ tmp174,
@ arm/soar_wram.arm.c:134: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp177, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp177, tmp177,
	lsl	r1, r1, #16	@ tmp179, tmp177,
	lsr	r1, r1, #16	@ tmp179, tmp179,
	ldr	r3, .L86+24	@,
	str	r1, [sp]	@ tmp179,
	mov	r0, #8	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r5		@ tmp217
@ arm/soar_wram.arm.c:139: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [r4, #72]	@ posY, CurrentProc_38(D)->sFocusPtY
@ arm/soar_wram.arm.c:143: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L86+28	@ tmp183,
@ arm/soar_wram.arm.c:143: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp182, posY,
@ arm/soar_wram.arm.c:143: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp182, tmp183
@ arm/soar_wram.arm.c:138: 	int posX = CurrentProc->sFocusPtX;
	ldr	r7, [r4, #68]	@ posX, CurrentProc_38(D)->sFocusPtX
@ arm/soar_wram.arm.c:143: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L69		@,
@ arm/soar_wram.arm.c:143: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L86+32	@ tmp187,
	sub	r1, r7, #1	@ tmp186, posX,
	cmp	r1, r2	@ tmp186, tmp187
	bls	.L84		@,
.L69:
@ arm/soar_wram.arm.c:149: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L86+36	@ tmp184,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r4, #76]	@ translatedLocations[0], CurrentProc_38(D)->location
.L61:
@ arm/soar_wram.arm.c:153: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L84:
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [r4, #64]	@ CurrentProc_38(D)->ShowMap, CurrentProc_38(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_38(D)->ShowMap,
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r6, r3, #170	@ _67, posY,
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L85		@,
.L70:
@ arm/soar_wram.arm.c:147: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L86+40	@ tmp200,
@ arm/soar_wram.arm.c:146: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r6, #6	@ posY, _67,
@ arm/soar_wram.arm.c:147: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp204, tmp200, posY,
	ldrb	r3, [r3, r7, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_45][posX_44]
@ arm/soar_wram.arm.c:149: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L86+36	@ tmp206,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_20], translatedLocations[_20]
@ arm/soar_wram.arm.c:150: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:149: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r4, #76]	@ translatedLocations[_20], CurrentProc_38(D)->location
@ arm/soar_wram.arm.c:150: 	if (loc>0) {
	beq	.L61		@,
@ arm/soar_wram.arm.c:151: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp212, loc,
	add	r3, r3, #-905969664	@ tmp215, tmp212,
	add	r3, r3, #3932160	@ tmp215, tmp215,
	lsr	r3, r3, r2	@ tmp214, tmp215,
	str	r3, [sp]	@ tmp214,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L86+44	@,
	mov	lr, pc
	bx	r5		@ tmp217
@ arm/soar_wram.arm.c:153: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L82:
@ arm/soar_wram.arm.c:123: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp151,
	ldr	r3, .L86+12	@,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r5, .L86+16	@ tmp217,
	str	ip, [sp]	@ tmp151,
	mov	lr, pc
	bx	r5		@ tmp217
@ arm/soar_wram.arm.c:128: 	if (CurrentProc->ShowMap)
	ldr	r3, [r4, #64]	@ CurrentProc_38(D)->ShowMap, CurrentProc_38(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_38(D)->ShowMap,
	beq	.L66		@,
.L83:
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r3, .L86+48	@ tmp171,
	mov	r2, #0	@,
	str	r3, [sp]	@ tmp171,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L86+52	@,
	mov	lr, pc
	bx	r5		@ tmp217
	b	.L66		@
.L85:
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r7, #4	@ tmp193, posX,
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L86+56	@ tmp198,
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r6, #4	@ tmp190, _67,
@ arm/soar_wram.arm.c:144: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp195, tmp193,
	lsl	r2, r2, #16	@, tmp190,
	lsl	r1, r1, #16	@, tmp195,
	str	r3, [sp]	@ tmp198,
	mov	r0, #8	@,
	ldr	r3, .L86+24	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r5		@ tmp217
	b	.L70		@
.L87:
	.align	2
.L86:
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
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	10848
	.word	gObj_64x64
	.word	51808
	.size	UpdateSprites, .-UpdateSprites
	.align	2
	.global	getPLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	getPLeft, %function
getPLeft:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
@ arm/soar_wram.arm.c:155: Point getPLeft(int camera_x, int camera_y, int angle, int zdist){
	ldr	lr, [sp, #12]	@ zdist, zdist
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	ip, r3, #0	@ tmp129, angle
	and	ip, ip, #15	@ tmp130, tmp129,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r5, .L90	@ tmp128,
	add	ip, lr, ip, lsl #9	@ tmp132, zdist, tmp130,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	lr, lr, r3, lsl #9	@ tmp138, zdist, angle,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	ip, ip, #1	@ tmp133, tmp132,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	lr, lr, #1	@ tmp139, tmp138,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [r5, ip]	@ pleftmatrix[_7][zdist_13(D)], pleftmatrix[_7][zdist_13(D)]
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	ip, [r5, lr]	@ pleftmatrix[angle_12(D)][zdist_13(D)], pleftmatrix[angle_12(D)][zdist_13(D)]
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r3, r3, r2	@ _10, pleftmatrix[_7][zdist_13(D)], tmp145
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	ip, ip, r1	@ tmp142, pleftmatrix[angle_12(D)][zdist_13(D)], tmp144
@ arm/soar_wram.arm.c:231: 	return pleft;
	str	ip, [r0]	@ tmp142, <retval>.x
	str	r3, [r0, #4]	@ _10, <retval>.y
@ arm/soar_wram.arm.c:232: };
	pop	{r4, r5, lr}	@
	bx	lr	@
.L91:
	.align	2
.L90:
	.word	pleftmatrix
	.size	getPLeft, .-getPLeft
	.align	2
	.global	Render
	.syntax unified
	.arm
	.fpu softvfp
	.type	Render, %function
Render:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ tmp352, CurrentProc
	mov	ip, r3	@ CurrentProc, tmp352
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	sub	sp, sp, #188	@,,
@ arm/soar_wram.arm.c:235: void Render(SoarProc* CurrentProc){
	str	r3, [sp, #12]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:238: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r4, [r3, #56]	@ angle, CurrentProc_43(D)->sPlayerYaw
@ arm/soar_wram.arm.c:236: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r3, #44]	@ posX, CurrentProc_43(D)->sPlayerPosX
	str	r3, [sp, #16]	@ posX, %sfp
@ arm/soar_wram.arm.c:240: 	int altitude = (CurrentProc->sPlayerPosZ);
	ldr	r3, [ip, #52]	@ altitude, CurrentProc_43(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:246: 	altitude /= CAMERA_Z_STEP;
	ldr	r2, .L119	@ tmp220,
@ arm/soar_wram.arm.c:245: 	altitude -= CAMERA_MIN_HEIGHT;
	sub	r3, r3, #64	@ altitude, altitude,
@ arm/soar_wram.arm.c:246: 	altitude /= CAMERA_Z_STEP;
	smull	r1, r2, r3, r2	@ tmp354, tmp219, altitude, tmp219
	asr	r3, r3, #31	@ tmp222, altitude,
	rsb	r6, r3, r2, asr #3	@ altitude, tmp222, tmp219,
@ arm/soar_wram.arm.c:237: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [ip, #48]	@ posY, CurrentProc_43(D)->sPlayerPosY
@ arm/soar_wram.arm.c:249: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	ldr	r1, [ip, #60]	@, CurrentProc_43(D)->vid_page
	ldr	r0, .L119+4	@,
@ arm/soar_wram.arm.c:237: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #20]	@ posY, %sfp
@ arm/soar_wram.arm.c:249: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	bl	LZ77UnCompVram		@
@ arm/soar_wram.arm.c:250: 	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp226,
	ldr	r2, .L119+8	@,
	strh	r3, [sp, #50]	@ movhi	@ tmp226, tmp
	add	r1, sp, #56	@ tmp376,,
	ldr	r3, .L119+12	@ tmp377,
	add	r0, sp, #50	@,,
	mov	lr, pc
	bx	r3		@ tmp377
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	lsl	r3, r6, #3	@ tmp231, altitude,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	add	r2, r3, #24	@ zdist, tmp231,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	lsl	r3, r6, #4	@ tmp232, altitude,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	add	r3, r3, #512	@ tmp233, tmp232,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	cmp	r2, r3, asr #1	@ zdist, tmp233,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	asr	r3, r3, #1	@ _150, tmp233,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	str	r2, [sp, #8]	@ zdist, %sfp
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	str	r3, [sp, #24]	@ _150, %sfp
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	bge	.L115		@,
	add	r5, r4, #4	@ tmp218, angle,
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r6, r6, r6, lsl #8	@ tmp279, altitude, altitude,
	and	r5, r5, #15	@ tangent, tmp218,
	rsb	r3, r6, r6, lsl #8	@ tmp281, tmp279, tmp279,
	str	r3, [sp, #28]	@ tmp281, %sfp
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp235, tangent
	and	r3, r3, #15	@ _192, tmp235,
	lsl	r3, r3, #9	@ tmp339, _192,
	str	r3, [sp, #32]	@ tmp339, %sfp
	rsb	r3, r4, #0	@ tmp236, angle
	and	r3, r3, #15	@ _196, tmp236,
	lsl	r3, r3, #9	@ tmp340, _196,
	lsl	r2, r5, #9	@ tmp344, tangent,
	str	r3, [sp, #36]	@ tmp340, %sfp
	ldr	r3, [sp, #12]	@ CurrentProc, %sfp
	str	r2, [sp, #44]	@ tmp344, %sfp
	lsl	r2, r4, #9	@ tmp343, angle,
	str	r2, [sp, #40]	@ tmp343, %sfp
	ldr	lr, [r3, #60]	@ pretmp_222, CurrentProc_43(D)->vid_page
.L102:
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r7, #0	@ ivtmp.49,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r1, [sp, #8]	@ zdist, %sfp
	ldr	r3, [sp, #40]	@ tmp343, %sfp
	ldr	r0, .L119+16	@ tmp392,
	add	r3, r3, r1	@ tmp239, tmp343, zdist
	lsl	r3, r3, #1	@ tmp240, tmp239,
	ldrsh	r2, [r0, r3]	@ _75, pleftmatrix[angle_46][zdist_149]
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #36]	@ tmp340, %sfp
	add	r3, r3, r1	@ tmp244, tmp340, zdist
	lsl	r3, r3, #1	@ tmp245, tmp244,
	ldrsh	r10, [r0, r3]	@ _82, pleftmatrix[_196][zdist_149]
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #44]	@ tmp344, %sfp
	add	r3, r3, r1	@ tmp249, tmp344, zdist
	lsl	r3, r3, #1	@ tmp250, tmp249,
	ldrsh	r3, [r0, r3]	@ pleftmatrix[tangent_47][zdist_149], pleftmatrix[tangent_47][zdist_149]
@ arm/soar_wram.arm.c:260: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r2	@ tmp253, pleftmatrix[tangent_47][zdist_149], _75
@ arm/soar_wram.arm.c:260: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _213, tmp253,
	str	r3, [sp, #4]	@ _213, %sfp
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #32]	@ tmp339, %sfp
	add	r3, r3, r1	@ tmp256, tmp339, zdist
	lsl	r3, r3, #1	@ tmp257, tmp256,
	ldrsh	r9, [r0, r3]	@ pleftmatrix[_192][zdist_149], pleftmatrix[_192][zdist_149]
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #20]	@ posY, %sfp
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	ip, [sp, #16]	@ posX, %sfp
@ arm/soar_wram.arm.c:261: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r9, r9, r10	@ tmp260, pleftmatrix[_192][zdist_149], _82
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r8, r1, #1	@ _95, zdist,
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r10, r3, r10	@ _83, posY, _82
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r3, [sp, #28]	@ tmp281, %sfp
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, ip, r2	@ _76, posX, _75
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r8, r8, r8, lsl #8	@ tmp276, _95, _95,
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	fp, r7	@ ivtmp.48, ivtmp.49
@ arm/soar_wram.arm.c:263: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, r7	@ i, ivtmp.49
@ arm/soar_wram.arm.c:164: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r2, [sp]	@ _76, %sfp
	add	r6, sp, #56	@ tmp389,,
@ arm/soar_wram.arm.c:261: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r9, r9, #1	@ _210, tmp260,
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r8, r8, r3	@ tmp282, tmp276, tmp281
	b	.L101		@
.L118:
@ arm/soar_wram.arm.c:273: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r1, [sp, #8]	@ zdist, %sfp
	cmp	r1, #40	@ zdist,
	beq	.L116		@,
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _86,
	bne	.L108		@,
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp356, _8, _11
	bmi	.L108		@,
.L104:
@ arm/soar_wram.arm.c:100: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r2, r3, lsl #10	@ tmp290, _8, _11,
	ldr	r2, .L119+20	@ tmp412,
	lsl	r3, r3, #1	@ tmp291, tmp290,
	ldrh	r3, [r2, r3]	@ clr, colourMap[_102]
.L99:
@ arm/soar_wram.arm.c:276: 					    if (zdist > (FOG_DISTANCE+32)) clr |= fogmask; //if in fog
	ldr	r2, [sp, #8]	@ zdist, %sfp
	cmp	r2, #236	@ zdist,
@ arm/soar_wram.arm.c:276: 					    if (zdist > (FOG_DISTANCE+32)) clr |= fogmask; //if in fog
	orrgt	r3, r3, #15552	@ clr, clr,
	orrgt	r3, r3, #35	@ clr, clr,
.L98:
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	strh	r3, [sp, #52]	@ movhi	@ clr, tmp
@ arm/soar_wram.arm.c:278: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r2, r5, r0	@ tmp297, _96, _13
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	ldr	r3, .L119+24	@ tmp414,
	ror	r2, r2, #31	@ tmp301, tmp297,
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r4, r4, lsl #2	@ tmp308, i, i,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	and	r2, r3, r2, asr #1	@ tmp303, tmp414, tmp301,
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r0, r1, lsl #5	@ offset, _13, tmp308,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	ldr	r3, .L119+12	@ tmp415,
	add	r1, lr, r1, lsl #1	@, pretmp_222, offset,
	orr	r2, r2, #16777216	@, tmp303,
	add	r0, sp, #52	@,,
	mov	lr, pc
	bx	r3		@ tmp415
	ldr	r3, [sp, #12]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:279: 				    yBuffer[i] = height_on_screen;
	strb	r5, [r6]	@ _96, MEM[(unsigned char *)_201]
	ldr	lr, [r3, #60]	@ pretmp_222, CurrentProc_43(D)->vid_page
.L100:
@ arm/soar_wram.arm.c:263: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	ldr	r3, [sp, #4]	@ _213, %sfp
@ arm/soar_wram.arm.c:263: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:263: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	cmp	r4, #128	@ i,
	add	fp, fp, r3	@ ivtmp.48, ivtmp.48, _213
	add	r7, r7, r9	@ ivtmp.49, ivtmp.49, _210
	add	r6, r6, #1	@ ivtmp.51, ivtmp.51,
	beq	.L117		@,
.L101:
@ arm/soar_wram.arm.c:265: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r3, [sp]	@ _76, %sfp
	add	r2, r3, fp, asr #8	@ _8, _76, ivtmp.48,
@ arm/soar_wram.arm.c:265: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	add	r3, r10, r7, asr #8	@ _11, _83, ivtmp.49,
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ _11,
	cmplt	r2, #1024	@, _8,
	movge	ip, #1	@ _86,
	movlt	ip, #0	@ _86,
	movge	r1, #0	@ _207,
	bge	.L94		@,
@ arm/soar_wram.arm.c:104: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r1, r2, r3	@ tmp355, _8, _11
	movmi	r1, ip	@ _207, _86
@ arm/soar_wram.arm.c:105: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r1, .L119+28	@ tmp409,
	addpl	r1, r1, r2	@ tmp271, tmp409, _8
@ arm/soar_wram.arm.c:109: 	int height = getPtHeight(ptx, pty);
	ldrbpl	r1, [r1, r3, lsl #10]	@ zero_extendqisi2	@ _207, heightMap[_91]
.L94:
@ arm/soar_wram.arm.c:114: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r0, .L119+32	@ tmp410,
	add	r1, r8, r1	@ tmp283, tmp282, _207
	lsl	r1, r1, #1	@ tmp284, tmp283,
	ldrsh	r5, [r0, r1]	@ _96, hosTables[altitude_50][_95][prephitmp_208]
@ arm/soar_wram.arm.c:270: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	ldrb	r0, [r6]	@ zero_extendqisi2	@ _13, MEM[(unsigned char *)_201]
@ arm/soar_wram.arm.c:270: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r0, r5	@ _13, _96
	blt	.L118		@,
@ arm/soar_wram.arm.c:282: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r5, r0, r5	@ tmp316, _13, _96
@ arm/soar_wram.arm.c:282: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r5, #6	@ tmp316,
	ble	.L100		@,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	mov	r3, #0	@ tmp318,
@ arm/soar_wram.arm.c:283: 					DrawVerticalLine(i, yBuffer[i]-1, 1, 0x0000, CurrentProc->vid_page); //draw a black border if not
	sub	r1, r0, #1	@ tmp320, _13,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	strh	r3, [sp, #54]	@ movhi	@ tmp318, tmp
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r3, r4, r4, lsl #2	@ tmp323, i, i,
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r3, lsl #5	@ offset, tmp320, tmp323,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	add	r1, lr, r1, lsl #1	@, pretmp_222, offset,
	ldr	r3, .L119+12	@ tmp417,
	ldr	r2, .L119+36	@,
	add	r0, sp, #54	@,,
	mov	lr, pc
	bx	r3		@ tmp417
	ldr	r3, [sp, #12]	@ CurrentProc, %sfp
	ldr	lr, [r3, #60]	@ pretmp_222, CurrentProc_43(D)->vid_page
@ arm/soar_wram.arm.c:298: }
	b	.L100		@
.L116:
@ arm/soar_wram.arm.c:273: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r1, r4, #61	@ tmp286, i,
	cmp	r1, #6	@ tmp286,
	bhi	.L97		@,
@ arm/soar_wram.arm.c:272: 					u16 clr = 0; //default to shadow
	mov	r3, #0	@ clr,
	b	.L98		@
.L108:
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r3, #6208	@ clr,
	b	.L99		@
.L117:
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	ldr	r2, [sp, #8]	@ zdist, %sfp
	asr	r3, r2, #7	@ tmp331, zdist,
	add	r3, r3, r2, asr #6	@ tmp332, tmp331, zdist,
	add	r3, r3, r2, asr #8	@ tmp334, tmp332, zdist,
	add	r3, r3, #2	@ _29, tmp334,
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	add	r3, r2, r3	@ zdist, zdist, _29
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	ldr	r2, [sp, #24]	@ _150, %sfp
	cmp	r3, r2	@ zdist, _150
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	str	r3, [sp, #8]	@ zdist, %sfp
@ arm/soar_wram.arm.c:254: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<3); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1); zdist+=INC_ZSTEP){
	blt	.L102		@,
.L103:
@ arm/soar_wram.arm.c:289: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	mov	r0, lr	@, pretmp_222
	bl	vid_flip		@
@ arm/soar_wram.arm.c:289: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #12]	@ CurrentProc, %sfp
	str	r0, [r3, #60]	@ tmp353, CurrentProc_43(D)->vid_page
@ arm/soar_wram.arm.c:290: };
	add	sp, sp, #188	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L115:
	ldr	r3, [sp, #12]	@ CurrentProc, %sfp
	ldr	lr, [r3, #60]	@ pretmp_222, CurrentProc_43(D)->vid_page
	b	.L103		@
.L97:
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #0	@ _86,
	bne	.L110		@,
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r1, r2, r3	@ tmp357, _8, _11
	bpl	.L104		@,
.L110:
@ arm/soar_wram.arm.c:99: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r3, #6208	@ clr,
	b	.L98		@
.L120:
	.align	2
.L119:
	.word	715827883
	.word	SkyBG
	.word	16777280
	.word	CpuSet
	.word	pleftmatrix
	.word	colourMap
	.word	2097151
	.word	heightMap
	.word	hosTables
	.word	16777217
	.size	Render, .-Render
	.align	2
	.global	DrawVerticalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	DrawVerticalLine, %function
DrawVerticalLine:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, r0	@ tmp147, xcoord
	push	{r4, lr}	@
	sub	sp, sp, #8	@,,
@ arm/soar_wram.arm.c:292: void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	ldr	lr, [sp, #16]	@ vid_page, vid_page
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	ip, ip, ip, lsl #2	@ tmp140, tmp147, tmp147,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	bic	r2, r2, #-16777216	@ tmp135, tmp149,
@ arm/soar_wram.arm.c:295: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, ip, lsl #5	@ offset, tmp148, tmp140,
@ arm/soar_wram.arm.c:297: 	CpuFill16(color, base, (ylen<<1));
	bic	r2, r2, #14680064	@ tmp135, tmp135,
	ldr	r4, .L123	@ tmp146,
	add	r0, sp, #6	@,,
	add	r1, lr, r1, lsl #1	@, vid_page, offset,
	orr	r2, r2, #16777216	@, tmp135,
	strh	r3, [sp, #6]	@ movhi	@ color, tmp
	mov	lr, pc
	bx	r4		@ tmp146
@ arm/soar_wram.arm.c:298: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	pop	{r4, lr}	@
	bx	lr	@
.L124:
	.align	2
.L123:
	.word	CpuSet
	.size	DrawVerticalLine, .-DrawVerticalLine
	.ident	"GCC: (devkitARM release 56) 11.1.0"
