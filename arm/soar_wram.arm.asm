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
@ arm/soar_wram.arm.c:5: void NewWMLoop(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp351
@ arm/soar_wram.arm.c:7: 	UpdateSprites(CurrentProc);
	bl	UpdateSprites		@
@ arm/soar_wram.arm.c:11: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	ip, .L37	@ tmp347,
	ldrh	r3, [ip, #4]	@ pretmp_217, gKeyState.heldKeys
@ arm/soar_wram.arm.c:11: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ands	lr, r3, #32	@ tmp184, pretmp_217,
	beq	.L2		@,
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [r4, #56]	@ _3, CurrentProc_81(D)->sPlayerYaw
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L37+4	@ tmp186,
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, .L37+8	@ tmp191,
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r3, r0, #1	@ tmp187, _3,
	ldrsh	r1, [r6, r3]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [lr, r3]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #44]	@ CurrentProc_81(D)->sPlayerPosX, CurrentProc_81(D)->sPlayerPosX
	add	r1, r1, r3	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_81(D)->sPlayerPosX
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #48]	@ CurrentProc_81(D)->sPlayerPosY, CurrentProc_81(D)->sPlayerPosY
@ arm/soar_wram.arm.c:14: 		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
	cmp	r0, #0	@ _3,
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_81(D)->sPlayerPosY
@ arm/soar_wram.arm.c:14: 		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
	beq	.L15		@,
@ arm/soar_wram.arm.c:15: 		else CurrentProc->sPlayerYaw--;
	sub	r0, r0, #1	@ cstore_154, _3,
@ arm/soar_wram.arm.c:16: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r5, r0, #1	@ tmp345, cstore_154,
@ arm/soar_wram.arm.c:16: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r6, r5]	@ cam_pivot_dx_Angles[_9], cam_pivot_dx_Angles[_9]
@ arm/soar_wram.arm.c:17: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r6, [lr, r5]	@ cam_pivot_dy_Angles[_9], cam_pivot_dy_Angles[_9]
@ arm/soar_wram.arm.c:16: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	lr, r3, #3	@ tmp204, cam_pivot_dx_Angles[_9],
	rsb	lr, lr, r3, asr #2	@ _207, tmp204, cam_pivot_dx_Angles[_9],
@ arm/soar_wram.arm.c:17: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r6, #3	@ tmp214, cam_pivot_dy_Angles[_9],
	rsb	r3, r3, r6, asr #2	@ _215, tmp214, cam_pivot_dy_Angles[_9],
.L3:
@ arm/soar_wram.arm.c:300: 			g_REG_BG2Y=0x180;	//offset horizontal
	mov	r8, #384	@ tmp217,
	str	r0, [r4, #56]	@ cstore_154, CurrentProc_81(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r1, r1, lr	@ prephitmp_223, newx, _207
@ arm/soar_wram.arm.c:302: 			g_REG_BG2PA=0x000E; 
	mov	r7, #14	@ tmp222,
@ arm/soar_wram.arm.c:303: 			g_REG_BG2PB=0xFF1C;
	mvn	r6, #227	@ tmp225,
@ arm/soar_wram.arm.c:304: 			g_REG_BG2PC=0x0080;
	mov	lr, #128	@ tmp228,
@ arm/soar_wram.arm.c:305: 			g_REG_BG2PD=0x0008;
	mov	r0, #8	@ tmp231,
@ arm/soar_wram.arm.c:17: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r2, r2, r3	@ prephitmp_229, newy, _215
@ arm/soar_wram.arm.c:300: 			g_REG_BG2Y=0x180;	//offset horizontal
	ldr	r3, .L37+12	@ tmp216,
	str	r8, [r3, #212]	@ tmp217, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:301: 			g_REG_BG2X=0x9280;
	add	r8, r8, #37120	@ tmp219, tmp219,
.L34:
@ arm/soar_wram.arm.c:309: 			g_REG_BG2X=0x9c40;
	str	r8, [r3, #208]	@ tmp268,
@ arm/soar_wram.arm.c:310: 			g_REG_BG2PA=0xFFF2; 
	strh	r7, [r3, #200]	@ movhi	@ tmp271,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PB=0xFF1C;
	strh	r6, [r3, #202]	@ movhi	@ tmp274,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PC=0x0080;
	strh	lr, [r3, #204]	@ movhi	@ tmp277,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PD=0xFFF8;
	strh	r0, [r3, #206]	@ movhi	@ tmp280,
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r3, [ip, #4]	@ pretmp_217, gKeyState.heldKeys
.L4:
@ arm/soar_wram.arm.c:47: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r0, .L37+16	@ tmp306,
	ldrsh	lr, [r0, r5]	@ _46, cam_dx_Angles[prephitmp_226]
@ arm/soar_wram.arm.c:48: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, .L37+20	@ tmp309,
	ldrsh	r0, [r0, r5]	@ _50, cam_dy_Angles[prephitmp_226]
@ arm/soar_wram.arm.c:47: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r6, lr, r1	@ _47, _46, prephitmp_223
@ arm/soar_wram.arm.c:48: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r5, r0, r2	@ _51, _50, prephitmp_229
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r3, #1	@ pretmp_217,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r6, [r4, #44]	@ _47, CurrentProc_81(D)->sPlayerPosX
@ arm/soar_wram.arm.c:48: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r5, [r4, #48]	@ _51, CurrentProc_81(D)->sPlayerPosY
@ arm/soar_wram.arm.c:51: 	if (gKeyState.heldKeys & A_BUTTON){
	beq	.L7		@,
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r7, [r4, #52]	@ _53, CurrentProc_81(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r7, #304	@ _53,
@ arm/soar_wram.arm.c:52: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addlt	r7, r7, #48	@ tmp316, _53,
	strlt	r7, [r4, #52]	@ tmp316, CurrentProc_81(D)->sPlayerPosZ
.L7:
@ arm/soar_wram.arm.c:56: 	if (gKeyState.heldKeys & B_BUTTON){
	tst	r3, #2	@ pretmp_217,
	beq	.L8		@,
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	ldr	r7, [r4, #52]	@ _55, CurrentProc_81(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	cmp	r7, #64	@ _55,
@ arm/soar_wram.arm.c:57: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subgt	r7, r7, #48	@ tmp321, _55,
	strgt	r7, [r4, #52]	@ tmp321, CurrentProc_81(D)->sPlayerPosZ
.L8:
@ arm/soar_wram.arm.c:61: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	ip, [ip, #8]	@ gKeyState.pressedKeys, gKeyState.pressedKeys
	tst	ip, #8	@ gKeyState.pressedKeys,
	bne	.L36		@,
@ arm/soar_wram.arm.c:66: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r3, #64	@ pretmp_217,
	beq	.L11		@,
@ arm/soar_wram.arm.c:68: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r1, r6	@ prephitmp_223, _47
	mov	r2, r5	@ prephitmp_229, _51
@ arm/soar_wram.arm.c:67: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	add	lr, lr, r6	@ tmp333, _46, _47
@ arm/soar_wram.arm.c:68: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r0, r0, r5	@ tmp334, _50, _51
@ arm/soar_wram.arm.c:67: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	lr, [r4, #44]	@ tmp333, CurrentProc_81(D)->sPlayerPosX
@ arm/soar_wram.arm.c:68: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r0, [r4, #48]	@ tmp334, CurrentProc_81(D)->sPlayerPosY
.L11:
@ arm/soar_wram.arm.c:70: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r3, #128	@ pretmp_217,
@ arm/soar_wram.arm.c:71: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r1, [r4, #44]	@ prephitmp_223, CurrentProc_81(D)->sPlayerPosX
@ arm/soar_wram.arm.c:75: 	Point playerpos = {CurrentProc->sFocusPtX, CurrentProc->sFocusPtY};
	add	r1, r4, #64	@,,
@ arm/soar_wram.arm.c:72: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r2, [r4, #48]	@ prephitmp_229, CurrentProc_81(D)->sPlayerPosY
@ arm/soar_wram.arm.c:75: 	Point playerpos = {CurrentProc->sFocusPtX, CurrentProc->sFocusPtY};
	ldm	r1, {r1, r2}	@,,
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r1, r2	@ tmp339, _64, _65
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp339,
	movcs	r2, #0	@ _236,
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L37+24	@ tmp340,
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ _66, CurrentProc_81(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r1, ip, r1	@ tmp342, tmp340, _64
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldrbcc	r2, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _236, heightMap[_123]
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	sub	r0, r3, #47	@ _67, _66,
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r0, r2	@ _67, _236
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addle	r3, r3, #48	@ tmp344, _66,
@ arm/soar_wram.arm.c:79: 	Render(CurrentProc); //draw and then flip
	mov	r0, r4	@, CurrentProc
@ arm/soar_wram.arm.c:77: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	strle	r3, [r4, #52]	@ tmp344, CurrentProc_81(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:79: 	Render(CurrentProc); //draw and then flip
	bl	Render		@
@ arm/soar_wram.arm.c:80: };
	pop	{r4, r5, r6, r7, r8, lr}	@
	bx	lr	@
.L15:
	mov	r3, #27	@ _215,
	mov	lr, #12	@ _207,
@ arm/soar_wram.arm.c:14: 		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
	mov	r0, #15	@ cstore_154,
	mov	r5, #30	@ tmp345,
	b	.L3		@
.L2:
@ arm/soar_wram.arm.c:22: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	ands	r6, r3, #16	@ tmp235, pretmp_217,
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r1, [r4, #44]	@ prephitmp_223, CurrentProc_81(D)->sPlayerPosX
@ arm/soar_wram.arm.c:12: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [r4, #56]	@ cstore_154, CurrentProc_81(D)->sPlayerYaw
@ arm/soar_wram.arm.c:13: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [r4, #48]	@ prephitmp_229, CurrentProc_81(D)->sPlayerPosY
@ arm/soar_wram.arm.c:22: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	beq	.L5		@,
@ arm/soar_wram.arm.c:23: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, .L37+4	@ tmp237,
@ arm/soar_wram.arm.c:24: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L37+8	@ tmp241,
@ arm/soar_wram.arm.c:23: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r3, r0, #1	@ tmp238, cstore_154,
	ldrsh	r5, [r7, r3]	@ cam_pivot_dx_Angles[pretmp_242], cam_pivot_dx_Angles[pretmp_242]
@ arm/soar_wram.arm.c:24: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r3, [r6, r3]	@ cam_pivot_dy_Angles[pretmp_242], cam_pivot_dy_Angles[pretmp_242]
@ arm/soar_wram.arm.c:25: 		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
	cmp	r0, #15	@ cstore_154,
@ arm/soar_wram.arm.c:23: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, r5	@ prephitmp_223, prephitmp_223, cam_pivot_dx_Angles[pretmp_242]
@ arm/soar_wram.arm.c:24: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r3, r3, r2	@ newy, cam_pivot_dy_Angles[pretmp_242], prephitmp_229
@ arm/soar_wram.arm.c:25: 		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
	beq	.L16		@,
@ arm/soar_wram.arm.c:26: 		else CurrentProc->sPlayerYaw++;
	add	r0, r0, #1	@ cstore_154, cstore_154,
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r5, r0, #1	@ tmp345, cstore_154,
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r7, [r7, r5]	@ cam_pivot_dx_Angles[_26], cam_pivot_dx_Angles[_26]
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	lr, [r6, r5]	@ cam_pivot_dy_Angles[_26], cam_pivot_dy_Angles[_26]
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r2, r7, #3	@ tmp263, cam_pivot_dx_Angles[_26],
	rsb	r2, r2, r7, asr #2	@ tmp264, tmp263, cam_pivot_dx_Angles[_26],
@ arm/soar_wram.arm.c:27: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r1, r1, r2	@ prephitmp_223, prephitmp_223, tmp264
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r2, lr, #3	@ tmp253, cam_pivot_dy_Angles[_26],
	rsb	r2, r2, lr, asr #2	@ _197, tmp253, cam_pivot_dy_Angles[_26],
.L6:
@ arm/soar_wram.arm.c:308: 			g_REG_BG2Y=0x0500;	//offset horizontal
	mov	r8, #1280	@ tmp266,
@ arm/soar_wram.arm.c:28: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r2, r3, r2	@ prephitmp_229, newy, _197
@ arm/soar_wram.arm.c:308: 			g_REG_BG2Y=0x0500;	//offset horizontal
	ldr	r3, .L37+12	@ tmp265,
	str	r0, [r4, #56]	@ cstore_154, CurrentProc_81(D)->sPlayerYaw
@ arm/soar_wram.arm.c:310: 			g_REG_BG2PA=0xFFF2; 
	mvn	r7, #13	@ tmp271,
@ arm/soar_wram.arm.c:308: 			g_REG_BG2Y=0x0500;	//offset horizontal
	str	r8, [r3, #212]	@ tmp266, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PB=0xFF1C;
	mvn	r6, #227	@ tmp274,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PC=0x0080;
	mov	lr, #128	@ tmp277,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PD=0xFFF8;
	mvn	r0, #7	@ tmp280,
@ arm/soar_wram.arm.c:309: 			g_REG_BG2X=0x9c40;
	ldr	r8, .L37+28	@ tmp268,
	b	.L34		@
.L5:
@ arm/soar_wram.arm.c:33: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	lr, [ip, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	lr, #48	@ gKeyState.prevKeys,
	lsl	r5, r0, #1	@ tmp345, cstore_154,
	beq	.L4		@,
@ arm/soar_wram.arm.c:35: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	mvn	r8, #243	@ tmp294,
@ arm/soar_wram.arm.c:36: 		g_REG_BG2PC=0x85; //
	mov	r7, #133	@ tmp297,
@ arm/soar_wram.arm.c:39: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	mov	lr, #384	@ tmp304,
@ arm/soar_wram.arm.c:34: 		g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r0, .L37+12	@ tmp289,
	strh	r6, [r0, #200]	@ movhi	@ tmp235, MEM[(volatile vu16 *)50344136B]
@ arm/soar_wram.arm.c:35: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	strh	r8, [r0, #202]	@ movhi	@ tmp294, MEM[(volatile vu16 *)50344138B]
@ arm/soar_wram.arm.c:36: 		g_REG_BG2PC=0x85; //
	strh	r7, [r0, #204]	@ movhi	@ tmp297, MEM[(volatile vu16 *)50344140B]
@ arm/soar_wram.arm.c:37: 		g_REG_BG2PD=0x00;	//
	strh	r6, [r0, #206]	@ movhi	@ tmp235, MEM[(volatile vu16 *)50344142B]
@ arm/soar_wram.arm.c:38: 		g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r6, .L37+32	@ tmp302,
	str	r6, [r0, #208]	@ tmp302, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:39: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	str	lr, [r0, #212]	@ tmp304, MEM[(volatile vu32 *)50344148B]
	b	.L4		@
.L36:
@ arm/soar_wram.arm.c:62: 		EndLoop(CurrentProc);
	mov	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:80: };
	pop	{r4, r5, r6, r7, r8, lr}	@
	bx	lr	@
.L16:
@ arm/soar_wram.arm.c:25: 		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
	mov	r0, lr	@ cstore_154, tmp184
	mov	r2, #30	@ _197,
	mov	r5, lr	@ tmp345, cstore_154
	b	.L6		@
.L38:
	.align	2
.L37:
	.word	gKeyState
	.word	cam_pivot_dx_Angles
	.word	cam_pivot_dy_Angles
	.word	50343936
	.word	cam_dx_Angles
	.word	cam_dy_Angles
	.word	heightMap
	.word	40000
	.word	40512
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
	.short	15
	.short	28
	.short	36
	.short	40
	.short	36
	.short	28
	.short	15
	.short	0
	.short	-15
	.short	-28
	.short	-36
	.short	-40
	.short	-36
	.short	-28
	.short	-15
	.global	cam_pivot_dy_Angles
	.align	2
	.type	cam_pivot_dy_Angles, %object
	.size	cam_pivot_dy_Angles, 32
cam_pivot_dy_Angles:
	.short	-40
	.short	-36
	.short	-28
	.short	-15
	.short	0
	.short	15
	.short	28
	.short	36
	.short	40
	.short	36
	.short	28
	.short	15
	.short	0
	.short	-15
	.short	-28
	.short	-36
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
@ arm/soar_wram.arm.c:92: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:92: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:93: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, r0, r1, lsl #10	@ tmp123, ptx, pty,
	ldrcc	r3, .L42	@ tmp121,
	lslcc	r0, r0, #1	@ tmp124, tmp123,
	ldrhcc	r0, [r3, r0]	@ <retval>, colourMap[_8]
@ arm/soar_wram.arm.c:92: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	movcs	r0, #6208	@ <retval>,
@ arm/soar_wram.arm.c:94: };
	bx	lr	@
.L43:
	.align	2
.L42:
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
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L47	@ tmp121,
	addcc	r3, r3, r0	@ tmp123, tmp121, ptx
	ldrbcc	r0, [r3, r1, lsl #10]	@ zero_extendqisi2	@ <retval>, heightMap[_8]
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r0, #0	@ <retval>,
@ arm/soar_wram.arm.c:99: }
	bx	lr	@
.L48:
	.align	2
.L47:
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
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r0, r1	@ tmp128, ptx, pty
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp128,
	movcs	r1, #0	@ _12,
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L52	@ tmp129,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, r3, #1	@ tmp135, zdist,
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, ip, r0	@ tmp131, tmp129, ptx
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp141, altitude, altitude,
@ arm/soar_wram.arm.c:102: 	int height = getPtHeight(ptx, pty);
	ldrbcc	r1, [r0, r1, lsl #10]	@ zero_extendqisi2	@ _12, heightMap[_18]
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp143, tmp141, tmp141,
	rsb	r3, r3, r3, lsl #8	@ tmp138, tmp135, tmp135,
	add	r3, r3, r2	@ tmp144, tmp138, tmp143
	add	r3, r3, r1	@ tmp145, tmp144, _12
	ldr	r2, .L52+4	@ tmp134,
	lsl	r3, r3, #1	@ tmp146, tmp145,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldrsh	r0, [r2, r3]	@ height, hosTables[altitude_10(D)][_1][prephitmp_14]
@ arm/soar_wram.arm.c:111: }
	cmp	r0, #160	@ height,
	movge	r0, #160	@ height,
	bic	r0, r0, r0, asr #31	@, height
	bx	lr	@
.L53:
	.align	2
.L52:
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
@ arm/soar_wram.arm.c:115: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp141,
@ arm/soar_wram.arm.c:113: void UpdateSprites(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ arm/soar_wram.arm.c:115: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _2, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:116: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _2,
@ arm/soar_wram.arm.c:113: void UpdateSprites(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp202
	sub	sp, sp, #12	@,,
@ arm/soar_wram.arm.c:116: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //player frames
	beq	.L67		@,
@ arm/soar_wram.arm.c:117: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _2,
@ arm/soar_wram.arm.c:117: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10);
	ldreq	r3, .L69	@ tmp152,
@ arm/soar_wram.arm.c:117: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10);
	beq	.L66		@,
@ arm/soar_wram.arm.c:115: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp154, _2,
@ arm/soar_wram.arm.c:118: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp154,
@ arm/soar_wram.arm.c:118: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca20);
	ldrls	r3, .L69+4	@ tmp159,
@ arm/soar_wram.arm.c:119: 	else ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca30);
	ldrhi	r3, .L69+8	@ tmp162,
.L66:
	str	r3, [sp]	@ tmp162,
	mov	r2, #96	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L69+12	@,
	ldr	r5, .L69+16	@ tmp201,
	mov	lr, pc
	bx	r5		@ tmp201
.L56:
@ arm/soar_wram.arm.c:121: 	ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r3, .L69+20	@ tmp165,
	mov	r2, #0	@,
	mov	r1, #176	@,
	str	r3, [sp]	@ tmp165,
	mov	r0, #8	@,
	ldr	r3, .L69+24	@,
	mov	lr, pc
	bx	r5		@ tmp201
@ arm/soar_wram.arm.c:125: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [r4, #68]	@ posY, CurrentProc_30(D)->sFocusPtY
@ arm/soar_wram.arm.c:129: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	ldr	r2, .L69+28	@ tmp168,
@ arm/soar_wram.arm.c:129: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	sub	r1, r3, #171	@ tmp167, posY,
@ arm/soar_wram.arm.c:129: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	cmp	r1, r2	@ tmp167, tmp168
@ arm/soar_wram.arm.c:124: 	int posX = CurrentProc->sFocusPtX;
	ldr	r7, [r4, #64]	@ posX, CurrentProc_30(D)->sFocusPtX
@ arm/soar_wram.arm.c:129: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	bhi	.L61		@,
@ arm/soar_wram.arm.c:129: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	ldr	r2, .L69+32	@ tmp172,
	sub	r1, r7, #1	@ tmp171, posX,
	cmp	r1, r2	@ tmp171, tmp172
	bls	.L68		@,
.L61:
@ arm/soar_wram.arm.c:135: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L69+36	@ tmp169,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r4, #72]	@ translatedLocations[0], CurrentProc_30(D)->location
.L54:
@ arm/soar_wram.arm.c:139: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L67:
@ arm/soar_wram.arm.c:116: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp146,
	mov	r2, #96	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L69+12	@,
	ldr	r5, .L69+16	@ tmp201,
	str	ip, [sp]	@ tmp146,
	mov	lr, pc
	bx	r5		@ tmp201
	b	.L56		@
.L68:
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r6, r3, #170	@ _10, posY,
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r7, #4	@ tmp177, posX,
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L69+40	@ tmp182,
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r6, #4	@ tmp174, _10,
@ arm/soar_wram.arm.c:130: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp179, tmp177,
	lsl	r2, r2, #16	@, tmp174,
	lsl	r1, r1, #16	@, tmp179,
	str	r3, [sp]	@ tmp182,
	lsr	r2, r2, #16	@,,
	ldr	r3, .L69+44	@,
	mov	r0, #8	@,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r5		@ tmp201
@ arm/soar_wram.arm.c:133: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L69+48	@ tmp184,
@ arm/soar_wram.arm.c:132: 		posY = (posY-170)>>6;
	asr	r3, r6, #6	@ posY, _10,
@ arm/soar_wram.arm.c:133: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp188, tmp184, posY,
	ldrb	r3, [r3, r7, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_36][posX_35]
@ arm/soar_wram.arm.c:135: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L69+36	@ tmp190,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_13], translatedLocations[_13]
@ arm/soar_wram.arm.c:136: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:135: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r4, #72]	@ translatedLocations[_13], CurrentProc_30(D)->location
@ arm/soar_wram.arm.c:136: 	if (loc>0) {
	beq	.L54		@,
@ arm/soar_wram.arm.c:137: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp196, loc,
	add	r3, r3, #-905969664	@ tmp199, tmp196,
	add	r3, r3, #3932160	@ tmp199, tmp199,
	lsr	r3, r3, r2	@ tmp198, tmp199,
	str	r3, [sp]	@ tmp198,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L69+52	@,
	mov	lr, pc
	bx	r5		@ tmp201
@ arm/soar_wram.arm.c:139: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L70:
	.align	2
.L69:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	10848
	.word	gObj_64x64
	.word	682
	.word	1022
	.word	translatedLocations
	.word	51808
	.word	gObj_8x8
	.word	WorldMapNodes
	.word	gObj_32x8
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
@ arm/soar_wram.arm.c:141: Point getPLeft(int camera_x, int camera_y, int angle, int zdist){
	ldr	lr, [sp, #12]	@ zdist, zdist
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	ip, r3, #0	@ tmp129, angle
	and	ip, ip, #15	@ tmp130, tmp129,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r5, .L73	@ tmp128,
	add	ip, lr, ip, lsl #9	@ tmp132, zdist, tmp130,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	lr, lr, r3, lsl #9	@ tmp138, zdist, angle,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	ip, ip, #1	@ tmp133, tmp132,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	lr, lr, #1	@ tmp139, tmp138,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [r5, ip]	@ pleftmatrix[_7][zdist_13(D)], pleftmatrix[_7][zdist_13(D)]
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	ip, [r5, lr]	@ pleftmatrix[angle_12(D)][zdist_13(D)], pleftmatrix[angle_12(D)][zdist_13(D)]
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r3, r3, r2	@ _10, pleftmatrix[_7][zdist_13(D)], tmp145
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	ip, ip, r1	@ tmp142, pleftmatrix[angle_12(D)][zdist_13(D)], tmp144
@ arm/soar_wram.arm.c:217: 	return pleft;
	str	ip, [r0]	@ tmp142, <retval>.x
	str	r3, [r0, #4]	@ _10, <retval>.y
@ arm/soar_wram.arm.c:218: };
	pop	{r4, r5, lr}	@
	bx	lr	@
.L74:
	.align	2
.L73:
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
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0	@ tmp353, CurrentProc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	mov	r7, r3	@ CurrentProc, tmp353
	sub	sp, sp, #196	@,,
@ arm/soar_wram.arm.c:221: void Render(SoarProc* CurrentProc){
	str	r3, [sp, #20]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:224: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r4, [r3, #56]	@ angle, CurrentProc_40(D)->sPlayerYaw
@ arm/soar_wram.arm.c:222: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r3, #44]	@ posX, CurrentProc_40(D)->sPlayerPosX
	str	r3, [sp, #28]	@ posX, %sfp
@ arm/soar_wram.arm.c:226: 	int altitude = (CurrentProc->sPlayerPosZ);
	ldr	r3, [r7, #52]	@ altitude, CurrentProc_40(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:232: 	altitude /= CAMERA_Z_STEP;
	ldr	r2, .L111	@ tmp222,
@ arm/soar_wram.arm.c:231: 	altitude -= CAMERA_MIN_HEIGHT;
	sub	r3, r3, #64	@ altitude, altitude,
@ arm/soar_wram.arm.c:232: 	altitude /= CAMERA_Z_STEP;
	smull	r1, r2, r3, r2	@ tmp355, tmp221, altitude, tmp221
	asr	r3, r3, #31	@ tmp224, altitude,
	rsb	r5, r3, r2, asr #3	@ altitude, tmp224, tmp221,
@ arm/soar_wram.arm.c:223: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r7, #48]	@ posY, CurrentProc_40(D)->sPlayerPosY
@ arm/soar_wram.arm.c:235: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	ldr	r1, [r7, #60]	@, CurrentProc_40(D)->vid_page
	ldr	r0, .L111+4	@,
@ arm/soar_wram.arm.c:223: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #32]	@ posY, %sfp
@ arm/soar_wram.arm.c:235: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	bl	LZ77UnCompVram		@
@ arm/soar_wram.arm.c:236: 	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp228,
	ldr	r2, .L111+8	@,
	strh	r3, [sp, #58]	@ movhi	@ tmp228, tmp
	add	r1, sp, #64	@ tmp375,,
	ldr	r3, .L111+12	@ tmp376,
	add	r0, sp, #58	@,,
	mov	lr, pc
	bx	r3		@ tmp376
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	lsl	r3, r5, #2	@ tmp233, altitude,
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	add	fp, r3, #8	@ zdist, tmp233,
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	cmp	fp, #512	@ zdist,
	bge	.L76		@,
	add	r6, r4, #4	@ tmp220, angle,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r5, r5, r5, lsl #8	@ tmp289, altitude, altitude,
	and	r6, r6, #15	@ tangent, tmp220,
	rsb	r3, r5, r5, lsl #8	@ tmp291, tmp289, tmp289,
	str	r3, [sp, #36]	@ tmp291, %sfp
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r6, #0	@ tmp234, tangent
	and	r3, r3, #15	@ _211, tmp234,
	lsl	r3, r3, #9	@ tmp338, _211,
	str	r3, [sp, #40]	@ tmp338, %sfp
	rsb	r3, r4, #0	@ tmp235, angle
	lsl	r2, r6, #9	@ tmp344, tangent,
	and	r3, r3, #15	@ _215, tmp235,
	lsl	r3, r3, #9	@ tmp339, _215,
	str	r2, [sp, #52]	@ tmp344, %sfp
	lsl	r2, r4, #9	@ tmp343, angle,
	str	r3, [sp, #44]	@ tmp339, %sfp
	str	r2, [sp, #48]	@ tmp343, %sfp
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [r7, #60]	@ prephitmp_251, CurrentProc_40(D)->vid_page
.L90:
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r7, #0	@ ivtmp.52,
@ arm/soar_wram.arm.c:249: 		if (zdist < (MAX_Z_DISTANCE*0.8)) fogmask = 0; //change fog dist from >>1 to >>2
	ldr	r2, .L111+16	@ tmp260,
	cmp	fp, r2	@ zdist, tmp260
	ldr	r1, .L111+20	@ tmp346,
	movle	r1, r7	@ tmp346,
	mov	lr, r1	@ prephitmp_216, tmp346
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #48]	@ tmp343, %sfp
	ldr	ip, .L111+24	@ tmp386,
	add	r2, r2, fp	@ tmp238, tmp343, zdist
	lsl	r2, r2, #1	@ tmp239, tmp238,
	ldrsh	r0, [ip, r2]	@ _76, pleftmatrix[angle_43][zdist_129]
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #44]	@ tmp339, %sfp
	add	r2, r2, fp	@ tmp243, tmp339, zdist
	lsl	r2, r2, #1	@ tmp244, tmp243,
@ arm/soar_wram.arm.c:249: 		if (zdist < (MAX_Z_DISTANCE*0.8)) fogmask = 0; //change fog dist from >>1 to >>2
	str	r1, [sp, #16]	@ prephitmp_216, %sfp
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r1, [ip, r2]	@ _83, pleftmatrix[_215][zdist_129]
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #52]	@ tmp344, %sfp
	add	r2, r2, fp	@ tmp248, tmp344, zdist
	lsl	r2, r2, #1	@ tmp249, tmp248,
	ldrsh	r2, [ip, r2]	@ pleftmatrix[tangent_44][zdist_129], pleftmatrix[tangent_44][zdist_129]
@ arm/soar_wram.arm.c:246: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r2, r2, r0	@ tmp252, pleftmatrix[tangent_44][zdist_129], _76
@ arm/soar_wram.arm.c:246: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r2, r2, #1	@ dx, tmp252,
	str	r2, [sp, #4]	@ dx, %sfp
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #40]	@ tmp338, %sfp
	add	r2, r2, fp	@ tmp255, tmp338, zdist
	lsl	r2, r2, #1	@ tmp256, tmp255,
	ldrsh	r10, [ip, r2]	@ pleftmatrix[_211][zdist_129], pleftmatrix[_211][zdist_129]
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #32]	@ posY, %sfp
	add	r2, r2, r1	@ _84, posY, _83
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #28]	@ posX, %sfp
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r2, [sp, #12]	@ _84, %sfp
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r9, fp, #1	@ _112, zdist,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #36]	@ tmp291, %sfp
	rsb	r9, r9, r9, lsl #8	@ tmp286, _112, _112,
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r0, r4, r0	@ _77, posX, _76
@ arm/soar_wram.arm.c:247: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r10, r10, r1	@ tmp259, pleftmatrix[_211][zdist_129], _83
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r9, r9, r2	@ tmp292, tmp286, tmp291
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	orr	r2, lr, #6208	@ tmp347, prephitmp_216,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r8, r7	@ ivtmp.51, ivtmp.52
@ arm/soar_wram.arm.c:255: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	mov	r5, r7	@ i, ivtmp.52
@ arm/soar_wram.arm.c:150: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r0, [sp, #8]	@ _77, %sfp
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	str	r2, [sp, #24]	@ tmp347, %sfp
	add	r6, sp, #64	@ tmp384,,
@ arm/soar_wram.arm.c:247: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r10, r10, #1	@ dy, tmp259,
	b	.L89		@
.L81:
@ arm/soar_wram.arm.c:98: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r2, .L111+28	@ tmp407,
	add	r0, r2, r0	@ tmp281, tmp407, _8
@ arm/soar_wram.arm.c:102: 	int height = getPtHeight(ptx, pty);
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ _229, heightMap[_108]
.L83:
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r1, .L111+32	@ tmp408,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r2, r9, r2	@ tmp293, tmp292, _229
	lsl	r2, r2, #1	@ tmp294, tmp293,
@ arm/soar_wram.arm.c:107: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldrsh	r4, [r1, r2]	@ height, hosTables[altitude_47][_112][prephitmp_230]
@ arm/soar_wram.arm.c:108: 	if (height<0) return 0;
	cmp	r4, #0	@ height,
@ arm/soar_wram.arm.c:269: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	ldrb	r0, [r6]	@ zero_extendqisi2	@ _259, MEM[(unsigned char *)_252]
@ arm/soar_wram.arm.c:108: 	if (height<0) return 0;
	blt	.L98		@,
	cmp	r4, #160	@ height,
	movge	r4, #160	@ _115,
@ arm/soar_wram.arm.c:269: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r4, r0	@ _115, _259
	ble	.L85		@,
@ arm/soar_wram.arm.c:284: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	subs	r2, r4, r0	@ _16, _115, _259
	bmi	.L86		@,
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r5, r5, lsl #2	@ tmp301, i, i,
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r0, r1, lsl #5	@ offset, _259, tmp301,
@ arm/soar_wram.arm.c:288: 	CpuFill16(color, base, (ylen<<1));
	add	r1, r3, r1, lsl #1	@, prephitmp_251, offset,
	orr	r2, r2, #16777216	@, _16,
	ldr	r3, .L111+12	@ tmp409,
	add	r0, sp, #60	@,,
	strh	lr, [sp, #60]	@ movhi	@ clr, tmp
	mov	lr, pc
	bx	r3		@ tmp409
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	ldr	r3, [r3, #60]	@ prephitmp_251, CurrentProc_40(D)->vid_page
.L86:
@ arm/soar_wram.arm.c:271: 			    yBuffer[i] = height_on_screen;
	strb	r4, [r6]	@ _115, MEM[(unsigned char *)_252]
.L87:
@ arm/soar_wram.arm.c:255: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	ldr	r2, [sp, #4]	@ dx, %sfp
@ arm/soar_wram.arm.c:255: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	add	r5, r5, #1	@ i, i,
@ arm/soar_wram.arm.c:255: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	cmp	r5, #128	@ i,
	add	r8, r8, r2	@ ivtmp.51, ivtmp.51, dx
	add	r7, r7, r10	@ ivtmp.52, ivtmp.52, dy
	add	r6, r6, #1	@ ivtmp.53, ivtmp.53,
	beq	.L110		@,
.L89:
@ arm/soar_wram.arm.c:256: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #8]	@ _77, %sfp
	add	r0, r2, r8, asr #8	@ _8, _77, ivtmp.51,
@ arm/soar_wram.arm.c:256: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #12]	@ _84, %sfp
	add	ip, r2, r7, asr #8	@ _11, _84, ivtmp.52,
@ arm/soar_wram.arm.c:92: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #1024	@ _11,
	cmplt	r0, #1024	@, _8,
	movge	r2, #1	@ _87,
	movlt	r2, #0	@ _87,
	bge	.L78		@,
@ arm/soar_wram.arm.c:92: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r4, r0, ip	@ tmp336, _8, _11
	bmi	.L79		@,
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	ldr	lr, .L111+36	@ tmp403,
@ arm/soar_wram.arm.c:93: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r1, r0, ip, lsl #10	@ tmp271, _8, _11,
	lsl	r1, r1, #1	@ tmp272, tmp271,
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	ldrh	lr, [lr, r1]	@ colourMap[_92], colourMap[_92]
	ldr	r1, [sp, #16]	@ prephitmp_216, %sfp
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #32	@ zdist,
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	orr	lr, r1, lr	@ clr, prephitmp_216, colourMap[_92]
@ arm/soar_wram.arm.c:93: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r1, ip, #10	@ tmp340, _11,
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	bne	.L81		@,
.L80:
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	sub	r1, r5, #61	@ tmp330, i,
	cmp	r1, #6	@ tmp330,
	bls	.L93		@,
.L94:
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r4, #0	@ tmp336,
	blt	.L97		@,
	lsl	r1, ip, #10	@ tmp340, _11,
	b	.L81		@
.L78:
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #32	@ zdist,
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	ldr	lr, [sp, #24]	@ clr, %sfp
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	beq	.L92		@,
.L97:
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	mov	r2, #0	@ _229,
	b	.L83		@
.L98:
@ arm/soar_wram.arm.c:269: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r4, r0	@ _239, _259
.L84:
@ arm/soar_wram.arm.c:274: 			else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r4, #6	@ _239,
	ble	.L87		@,
@ arm/soar_wram.arm.c:275: 				DrawVerticalLine(i, yBuffer[i]-1, 1, 0x0000, CurrentProc->vid_page); //draw a black border if not
	sub	r1, r0, #1	@ _20, _259,
@ arm/soar_wram.arm.c:284: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	cmp	r1, #160	@ _20,
	bgt	.L87		@,
@ arm/soar_wram.arm.c:285: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	cmp	r0, #160	@ _259,
@ arm/soar_wram.arm.c:288: 	CpuFill16(color, base, (ylen<<1));
	mov	r0, #0	@ tmp313,
	strh	r0, [sp, #62]	@ movhi	@ tmp313, tmp
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r0, r5, r5, lsl #2	@ tmp316, i, i,
@ arm/soar_wram.arm.c:288: 	CpuFill16(color, base, (ylen<<1));
	rsbgt	r2, r1, #160	@ tmp311, _20,
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r0, lsl #5	@ offset, _20, tmp316,
@ arm/soar_wram.arm.c:288: 	CpuFill16(color, base, (ylen<<1));
	add	r1, r3, r1, lsl #1	@, prephitmp_251, offset,
	ldrle	r2, .L111+40	@ _247,
	ldr	r3, .L111+12	@ tmp411,
	orrgt	r2, r2, #16777216	@ _247, tmp311,
	add	r0, sp, #62	@,,
	mov	lr, pc
	bx	r3		@ tmp411
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	ldr	r3, [r3, #60]	@ prephitmp_251, CurrentProc_40(D)->vid_page
	b	.L87		@
.L85:
@ arm/soar_wram.arm.c:274: 			else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r4, r0, r4	@ _239, _259, _115
	b	.L84		@
.L92:
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	sub	r1, r5, #61	@ tmp331, i,
	cmp	r1, #6	@ tmp331,
	bhi	.L97		@,
.L93:
@ arm/soar_wram.arm.c:262: 				if (i==(MODE5_HEIGHT>>1)){
	cmp	r5, #64	@ i,
@ arm/soar_wram.arm.c:263: 					CurrentProc->sFocusPtX = offsetPoint.x;
	ldreq	r1, [sp, #20]	@ CurrentProc, %sfp
	streq	r0, [r1, #64]	@ _8, CurrentProc_40(D)->sFocusPtX
@ arm/soar_wram.arm.c:264: 					CurrentProc->sFocusPtY = offsetPoint.y;
	streq	ip, [r1, #68]	@ _11, CurrentProc_40(D)->sFocusPtY
@ arm/soar_wram.arm.c:97: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #0	@ _87,
	movne	r2, #0	@ _229,
	movne	lr, r2	@ clr, _229
	bne	.L83		@,
	mov	lr, r2	@ clr, _87
	orr	r4, r0, ip	@ tmp336, _8, _11
	b	.L94		@
.L79:
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #32	@ zdist,
@ arm/soar_wram.arm.c:259: 			clr |= fogmask;
	ldr	lr, [sp, #24]	@ clr, %sfp
@ arm/soar_wram.arm.c:260: 			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	bne	.L83		@,
	b	.L80		@
.L110:
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	asr	r2, fp, #7	@ tmp324, zdist,
	add	r2, r2, fp, asr #6	@ tmp325, tmp324, zdist,
	add	r2, r2, fp, asr #8	@ tmp327, tmp325, zdist,
	add	r2, r2, #2	@ _27, tmp327,
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	add	fp, fp, r2	@ zdist, zdist, _27
@ arm/soar_wram.arm.c:240: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	cmp	fp, #512	@ zdist,
	blt	.L90		@,
.L91:
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	mov	r0, r3	@, prephitmp_251
	bl	vid_flip		@
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	str	r0, [r3, #60]	@ tmp354, CurrentProc_40(D)->vid_page
@ arm/soar_wram.arm.c:281: };
	add	sp, sp, #196	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L76:
@ arm/soar_wram.arm.c:280: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	ldr	r3, [r3, #60]	@ prephitmp_251, CurrentProc_40(D)->vid_page
	b	.L91		@
.L112:
	.align	2
.L111:
	.word	715827883
	.word	SkyBG
	.word	16777280
	.word	CpuSet
	.word	409
	.word	15587
	.word	pleftmatrix
	.word	heightMap
	.word	hosTables
	.word	colourMap
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
@ arm/soar_wram.arm.c:284: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	cmp	r1, #160	@ ystart,
	movle	ip, #0	@ tmp137,
	movgt	ip, #1	@ tmp137,
@ arm/soar_wram.arm.c:284: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	orrs	ip, ip, r2, lsr #31	@, tmp164, tmp137, ylen,
	bxne	lr	@
@ arm/soar_wram.arm.c:283: void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	push	{r4, lr}	@
@ arm/soar_wram.arm.c:285: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	add	ip, r2, r1	@ tmp142, ylen, ystart
@ arm/soar_wram.arm.c:285: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	cmp	ip, #160	@ tmp142,
@ arm/soar_wram.arm.c:283: void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	sub	sp, sp, #8	@,,
@ arm/soar_wram.arm.c:285: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	rsbgt	r2, r1, #160	@ ylen, ystart,
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r0, r0, r0, lsl #2	@ tmp153, xcoord, xcoord,
@ arm/soar_wram.arm.c:286: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r0, lsl #5	@ offset, ystart, tmp153,
@ arm/soar_wram.arm.c:288: 	CpuFill16(color, base, (ylen<<1));
	bic	r2, r2, #-16777216	@ tmp148, ylen,
	ldr	r0, [sp, #16]	@ tmp166, vid_page
	bic	r2, r2, #14680064	@ tmp148, tmp148,
	add	r1, r0, r1, lsl #1	@, tmp166, offset,
	ldr	r4, .L120	@ tmp159,
	orr	r2, r2, #16777216	@, tmp148,
	add	r0, sp, #6	@,,
	strh	r3, [sp, #6]	@ movhi	@ color, tmp
	mov	lr, pc
	bx	r4		@ tmp159
@ arm/soar_wram.arm.c:289: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	pop	{r4, lr}	@
	bx	lr	@
.L121:
	.align	2
.L120:
	.word	CpuSet
	.size	DrawVerticalLine, .-DrawVerticalLine
	.align	2
	.global	BumpScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	BumpScreen, %function
BumpScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:292: 	switch (direction){
	cmp	r0, #2	@ direction,
@ arm/soar_wram.arm.c:291: void BumpScreen(int direction){
	str	lr, [sp, #-4]!	@,
@ arm/soar_wram.arm.c:292: 	switch (direction){
	beq	.L123		@,
	cmp	r0, #3	@ direction,
	bne	.L122		@,
@ arm/soar_wram.arm.c:308: 			g_REG_BG2Y=0x0500;	//offset horizontal
	mov	lr, #1280	@ tmp131,
@ arm/soar_wram.arm.c:310: 			g_REG_BG2PA=0xFFF2; 
	mvn	ip, #13	@ tmp136,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PB=0xFF1C;
	mvn	r0, #227	@ tmp139,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PC=0x0080;
	mov	r1, #128	@ tmp142,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PD=0xFFF8;
	mvn	r2, #7	@ tmp145,
@ arm/soar_wram.arm.c:308: 			g_REG_BG2Y=0x0500;	//offset horizontal
	ldr	r3, .L128	@ tmp130,
	str	lr, [r3, #212]	@ tmp131, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:309: 			g_REG_BG2X=0x9c40;
	ldr	lr, .L128+4	@ tmp133,
.L127:
	str	lr, [r3, #208]	@ tmp133,
@ arm/soar_wram.arm.c:310: 			g_REG_BG2PA=0xFFF2; 
	strh	ip, [r3, #200]	@ movhi	@ tmp136,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PB=0xFF1C;
	strh	r0, [r3, #202]	@ movhi	@ tmp139,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PC=0x0080;
	strh	r1, [r3, #204]	@ movhi	@ tmp142,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3, #206]	@ movhi	@ tmp145,
.L122:
@ arm/soar_wram.arm.c:316: };
	ldr	lr, [sp], #4	@,
	bx	lr	@
.L123:
@ arm/soar_wram.arm.c:300: 			g_REG_BG2Y=0x180;	//offset horizontal
	mov	lr, #384	@ tmp115,
	ldr	r3, .L128	@ tmp114,
@ arm/soar_wram.arm.c:302: 			g_REG_BG2PA=0x000E; 
	mov	ip, #14	@ tmp120,
@ arm/soar_wram.arm.c:300: 			g_REG_BG2Y=0x180;	//offset horizontal
	str	lr, [r3, #212]	@ tmp115, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:303: 			g_REG_BG2PB=0xFF1C;
	mvn	r0, #227	@ tmp123,
@ arm/soar_wram.arm.c:304: 			g_REG_BG2PC=0x0080;
	mov	r1, #128	@ tmp126,
@ arm/soar_wram.arm.c:305: 			g_REG_BG2PD=0x0008;
	mov	r2, #8	@ tmp129,
@ arm/soar_wram.arm.c:301: 			g_REG_BG2X=0x9280;
	add	lr, lr, #37120	@ tmp117, tmp117,
	b	.L127		@
.L129:
	.align	2
.L128:
	.word	50343936
	.word	40000
	.size	BumpScreen, .-BumpScreen
	.ident	"GCC: (devkitARM release 56) 11.1.0"
