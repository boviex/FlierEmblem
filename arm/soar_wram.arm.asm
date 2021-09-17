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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:5: void NewWMLoop(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp360
@ arm/soar_wram.arm.c:7: 	UpdateSprites(CurrentProc);
	bl	UpdateSprites		@
@ arm/soar_wram.arm.c:9: 	if (CurrentProc->firstdraw){
	ldr	lr, [r4, #64]	@ _1, CurrentProc_83(D)->firstdraw
@ arm/soar_wram.arm.c:9: 	if (CurrentProc->firstdraw){
	cmp	lr, #0	@ _1,
	bne	.L36		@,
@ arm/soar_wram.arm.c:17: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r6, .L39	@ tmp352,
	ldrh	ip, [r6, #4]	@ pretmp_203, gKeyState.heldKeys
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, [r4, #44]	@ vect_pretmp_230.29, MEM[(int *)CurrentProc_83(D) + 44B]
	ldr	r7, [r4, #48]	@ vect_pretmp_230.30, MEM[(int *)CurrentProc_83(D) + 48B]
@ arm/soar_wram.arm.c:17: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	ip, #32	@ pretmp_203,
	mov	r2, r5	@ newx, vect_pretmp_230.29
	mov	r3, r7	@ newy, vect_pretmp_230.30
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r1, [r4, #56]	@ cstore_157, CurrentProc_83(D)->sPlayerYaw
@ arm/soar_wram.arm.c:17: 	if (gKeyState.heldKeys & DPAD_LEFT){
	beq	.L4		@,
@ arm/soar_wram.arm.c:20: 		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
	cmp	r1, #0	@ cstore_157,
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r0, r1, #1	@ tmp190, cstore_157,
@ arm/soar_wram.arm.c:20: 		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
	moveq	r1, #15	@ cstore_157,
@ arm/soar_wram.arm.c:19: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, .L39+4	@ tmp356,
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, .L39+8	@ tmp354,
@ arm/soar_wram.arm.c:301: 			g_REG_BG2Y=0x180;	//offset horizontal
	mov	r10, #384	@ tmp220,
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	ip, [r2, r0]	@ cam_pivot_dx_Angles[pretmp_231], cam_pivot_dx_Angles[pretmp_231]
@ arm/soar_wram.arm.c:19: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r3, r0]	@ cam_pivot_dy_Angles[pretmp_231], cam_pivot_dy_Angles[pretmp_231]
@ arm/soar_wram.arm.c:18: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	ip, ip, r5	@ newx, cam_pivot_dx_Angles[pretmp_231], vect_pretmp_230.29
@ arm/soar_wram.arm.c:19: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, r7	@ newy, cam_pivot_dy_Angles[pretmp_231], vect_pretmp_230.30
@ arm/soar_wram.arm.c:303: 			g_REG_BG2PA=0x000E; 
	mov	r9, #14	@ tmp225,
@ arm/soar_wram.arm.c:304: 			g_REG_BG2PB=0xFF1C;
	mvn	r8, #227	@ tmp228,
@ arm/soar_wram.arm.c:305: 			g_REG_BG2PC=0x0080;
	mov	r7, #128	@ tmp231,
@ arm/soar_wram.arm.c:306: 			g_REG_BG2PD=0x0008;
	mov	r5, #8	@ tmp234,
@ arm/soar_wram.arm.c:21: 		else CurrentProc->sPlayerYaw--;
	subne	r1, r1, #1	@ cstore_157, cstore_157,
	str	r1, [r4, #56]	@ cstore_157, CurrentProc_83(D)->sPlayerYaw
@ arm/soar_wram.arm.c:22: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r1, r1, #1	@ tmp355, cstore_157,
@ arm/soar_wram.arm.c:22: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r2, [r2, r1]	@ cam_pivot_dx_Angles[cstore_157], cam_pivot_dx_Angles[cstore_157]
@ arm/soar_wram.arm.c:23: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	fp, [r3, r1]	@ cam_pivot_dy_Angles[cstore_157], cam_pivot_dy_Angles[cstore_157]
@ arm/soar_wram.arm.c:22: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r2, #3	@ tmp205, cam_pivot_dx_Angles[cstore_157],
	rsb	r2, r3, r2, asr #2	@ tmp206, tmp205, cam_pivot_dx_Angles[cstore_157],
@ arm/soar_wram.arm.c:23: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, fp, #3	@ tmp216, cam_pivot_dy_Angles[cstore_157],
	rsb	r3, r3, fp, asr #2	@ tmp217, tmp216, cam_pivot_dy_Angles[cstore_157],
@ arm/soar_wram.arm.c:23: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newy, tmp217, newy
@ arm/soar_wram.arm.c:301: 			g_REG_BG2Y=0x180;	//offset horizontal
	ldr	r0, .L39+12	@ tmp219,
@ arm/soar_wram.arm.c:22: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r2, r2, ip	@ newx, tmp206, newx
@ arm/soar_wram.arm.c:301: 			g_REG_BG2Y=0x180;	//offset horizontal
	str	r10, [r0, #212]	@ tmp220, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:302: 			g_REG_BG2X=0x9280;
	ldr	ip, .L39+16	@ tmp222,
.L34:
@ arm/soar_wram.arm.c:310: 			g_REG_BG2X=0x9c40;
	str	ip, [r0, #208]	@ tmp273,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PA=0xFFF2; 
	strh	r9, [r0, #200]	@ movhi	@ tmp276,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PB=0xFF1C;
	strh	r8, [r0, #202]	@ movhi	@ tmp279,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PC=0x0080;
	strh	r7, [r0, #204]	@ movhi	@ tmp282,
@ arm/soar_wram.arm.c:314: 			g_REG_BG2PD=0xFFF8;
	strh	r5, [r0, #206]	@ movhi	@ tmp285,
	mov	r7, r3	@ vect_pretmp_230.30, newy
	mov	r5, r2	@ vect_pretmp_230.29, newx
@ arm/soar_wram.arm.c:58: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	ip, [r6, #4]	@ pretmp_203, gKeyState.heldKeys
.L6:
@ arm/soar_wram.arm.c:54: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r0, .L39+20	@ tmp311,
@ arm/soar_wram.arm.c:55: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r8, .L39+24	@ tmp315,
@ arm/soar_wram.arm.c:54: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldrsh	r0, [r0, r1]	@ _47, cam_dx_Angles[prephitmp_212]
@ arm/soar_wram.arm.c:55: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r1, [r8, r1]	@ _51, cam_dy_Angles[prephitmp_212]
@ arm/soar_wram.arm.c:54: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r2, r0, r2	@ _48, _47, newx
@ arm/soar_wram.arm.c:55: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r1, r3	@ _52, _51, newy
@ arm/soar_wram.arm.c:58: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	ip, #1	@ pretmp_203,
@ arm/soar_wram.arm.c:54: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r2, [r4, #44]	@ _48, CurrentProc_83(D)->sPlayerPosX
@ arm/soar_wram.arm.c:55: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ _52, CurrentProc_83(D)->sPlayerPosY
@ arm/soar_wram.arm.c:58: 	if (gKeyState.heldKeys & A_BUTTON){
	beq	.L9		@,
@ arm/soar_wram.arm.c:59: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r8, [r4, #52]	@ _54, CurrentProc_83(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:59: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r8, #304	@ _54,
@ arm/soar_wram.arm.c:59: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addlt	r8, r8, #48	@ tmp323, _54,
	strlt	r8, [r4, #52]	@ tmp323, CurrentProc_83(D)->sPlayerPosZ
.L9:
@ arm/soar_wram.arm.c:63: 	if (gKeyState.heldKeys & B_BUTTON){
	tst	ip, #2	@ pretmp_203,
	beq	.L10		@,
@ arm/soar_wram.arm.c:64: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	ldr	r8, [r4, #52]	@ _56, CurrentProc_83(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:64: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	cmp	r8, #64	@ _56,
@ arm/soar_wram.arm.c:64: 		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subgt	r8, r8, #48	@ tmp328, _56,
	strgt	r8, [r4, #52]	@ tmp328, CurrentProc_83(D)->sPlayerPosZ
.L10:
@ arm/soar_wram.arm.c:68: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r6, [r6, #8]	@ gKeyState.pressedKeys, gKeyState.pressedKeys
	tst	r6, #8	@ gKeyState.pressedKeys,
	bne	.L37		@,
@ arm/soar_wram.arm.c:73: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	ip, #64	@ pretmp_203,
	beq	.L12		@,
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r5, r2	@ vect_pretmp_230.29, _48
	mov	r7, r3	@ vect_pretmp_230.30, _52
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	add	r0, r0, r2	@ tmp340, _47, _48
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r1, r1, r3	@ tmp341, _51, _52
@ arm/soar_wram.arm.c:74: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r0, [r4, #44]	@ tmp340, CurrentProc_83(D)->sPlayerPosX
@ arm/soar_wram.arm.c:75: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r1, [r4, #48]	@ tmp341, CurrentProc_83(D)->sPlayerPosY
.L12:
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	ip, #128	@ pretmp_203,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r5, [r4, #44]	@ vect_pretmp_230.29, MEM[(int *)CurrentProc_83(D) + 44B]
	strne	r7, [r4, #48]	@ vect_pretmp_230.30, MEM[(int *)CurrentProc_83(D) + 48B]
@ arm/soar_wram.arm.c:82: 	Point playerpos = {CurrentProc->sFocusPtX, CurrentProc->sFocusPtY};
	add	r1, r4, #68	@,,
	ldm	r1, {r1, r2}	@,,
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r0, r1, r2	@ tmp346, _65, _66
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r0, #1024	@ tmp346,
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L39+28	@ tmp347,
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ _67, CurrentProc_83(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r1, ip, r1	@ tmp349, tmp347, _65
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldrbcc	lr, [r1, r2, lsl #10]	@ zero_extendqisi2	@ _1, heightMap[_127]
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	sub	r0, r3, #47	@ _68, _67,
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	cmp	r0, lr	@ _68, _1
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	addle	r3, r3, #48	@ tmp351, _67,
@ arm/soar_wram.arm.c:86: 	Render(CurrentProc); //draw and then flip
	mov	r0, r4	@, CurrentProc
@ arm/soar_wram.arm.c:84: 	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	strle	r3, [r4, #52]	@ tmp351, CurrentProc_83(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:86: 	Render(CurrentProc); //draw and then flip
	bl	Render		@
@ arm/soar_wram.arm.c:87: };
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L4:
@ arm/soar_wram.arm.c:28: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	ip, #16	@ pretmp_203,
	bne	.L38		@,
@ arm/soar_wram.arm.c:39: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r0, [r6, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r0, #48	@ gKeyState.prevKeys,
	lsl	r1, r1, #1	@ tmp355, cstore_157,
	beq	.L6		@,
@ arm/soar_wram.arm.c:42: 		g_REG_BG2PC=0x85; //
	mov	r9, #133	@ tmp302,
@ arm/soar_wram.arm.c:41: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	mvn	r10, #243	@ tmp299,
@ arm/soar_wram.arm.c:45: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	mov	r8, #384	@ tmp309,
@ arm/soar_wram.arm.c:40: 		g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r0, .L39+12	@ tmp294,
	strh	lr, [r0, #200]	@ movhi	@ _1, MEM[(volatile vu16 *)50344136B]
@ arm/soar_wram.arm.c:41: 		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	strh	r10, [r0, #202]	@ movhi	@ tmp299, MEM[(volatile vu16 *)50344138B]
@ arm/soar_wram.arm.c:42: 		g_REG_BG2PC=0x85; //
	strh	r9, [r0, #204]	@ movhi	@ tmp302, MEM[(volatile vu16 *)50344140B]
@ arm/soar_wram.arm.c:44: 		g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r9, .L39+32	@ tmp307,
@ arm/soar_wram.arm.c:43: 		g_REG_BG2PD=0x00;	//
	strh	lr, [r0, #206]	@ movhi	@ _1, MEM[(volatile vu16 *)50344142B]
@ arm/soar_wram.arm.c:44: 		g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	str	r9, [r0, #208]	@ tmp307, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:45: 		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	str	r8, [r0, #212]	@ tmp309, MEM[(volatile vu32 *)50344148B]
	b	.L6		@
.L36:
@ arm/soar_wram.arm.c:10: 		CurrentProc->firstdraw = FALSE;
	mov	r3, #0	@ tmp183,
@ arm/soar_wram.arm.c:11:     	Render(CurrentProc);
	mov	r0, r4	@, CurrentProc
@ arm/soar_wram.arm.c:10: 		CurrentProc->firstdraw = FALSE;
	str	r3, [r4, #64]	@ tmp183, CurrentProc_83(D)->firstdraw
@ arm/soar_wram.arm.c:11:     	Render(CurrentProc);
	bl	Render		@
@ arm/soar_wram.arm.c:87: };
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L38:
@ arm/soar_wram.arm.c:31: 		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
	cmp	r1, #15	@ cstore_157,
@ arm/soar_wram.arm.c:29: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r0, r1, #1	@ tmp241, cstore_157,
@ arm/soar_wram.arm.c:31: 		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
	moveq	r1, lr	@ cstore_157, _1
@ arm/soar_wram.arm.c:309: 			g_REG_BG2Y=0x0500;	//offset horizontal
	mov	r10, #1280	@ tmp271,
@ arm/soar_wram.arm.c:29: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, .L39+8	@ tmp354,
@ arm/soar_wram.arm.c:32: 		else CurrentProc->sPlayerYaw++;
	addne	r1, r1, #1	@ cstore_157, cstore_157,
@ arm/soar_wram.arm.c:30: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, .L39+4	@ tmp356,
	str	r1, [r4, #56]	@ cstore_157, CurrentProc_83(D)->sPlayerYaw
@ arm/soar_wram.arm.c:33: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r1, r1, #1	@ tmp355, cstore_157,
@ arm/soar_wram.arm.c:29: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	ip, [r2, r0]	@ cam_pivot_dx_Angles[pretmp_231], cam_pivot_dx_Angles[pretmp_231]
@ arm/soar_wram.arm.c:33: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r2, [r2, r1]	@ cam_pivot_dx_Angles[cstore_159], cam_pivot_dx_Angles[cstore_159]
@ arm/soar_wram.arm.c:34: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	fp, [r3, r1]	@ cam_pivot_dy_Angles[cstore_159], cam_pivot_dy_Angles[cstore_159]
@ arm/soar_wram.arm.c:30: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r3, r0]	@ cam_pivot_dy_Angles[pretmp_231], cam_pivot_dy_Angles[pretmp_231]
@ arm/soar_wram.arm.c:33: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r2, #3	@ tmp256, cam_pivot_dx_Angles[cstore_159],
	rsb	r2, r3, r2, asr #2	@ tmp257, tmp256, cam_pivot_dx_Angles[cstore_159],
@ arm/soar_wram.arm.c:34: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, fp, #3	@ tmp267, cam_pivot_dy_Angles[cstore_159],
@ arm/soar_wram.arm.c:30: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, r7	@ newy, cam_pivot_dy_Angles[pretmp_231], vect_pretmp_230.30
@ arm/soar_wram.arm.c:34: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, fp, asr #2	@ tmp268, tmp267, cam_pivot_dy_Angles[cstore_159],
@ arm/soar_wram.arm.c:34: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newy, tmp268, newy
@ arm/soar_wram.arm.c:309: 			g_REG_BG2Y=0x0500;	//offset horizontal
	ldr	r0, .L39+12	@ tmp270,
@ arm/soar_wram.arm.c:29: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	ip, ip, r5	@ newx, cam_pivot_dx_Angles[pretmp_231], vect_pretmp_230.29
@ arm/soar_wram.arm.c:33: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r2, r2, ip	@ newx, tmp257, newx
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PA=0xFFF2; 
	mvn	r9, #13	@ tmp276,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PB=0xFF1C;
	mvn	r8, #227	@ tmp279,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PC=0x0080;
	mov	r7, #128	@ tmp282,
@ arm/soar_wram.arm.c:314: 			g_REG_BG2PD=0xFFF8;
	mvn	r5, #7	@ tmp285,
@ arm/soar_wram.arm.c:309: 			g_REG_BG2Y=0x0500;	//offset horizontal
	str	r10, [r0, #212]	@ tmp271, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:310: 			g_REG_BG2X=0x9c40;
	ldr	ip, .L39+36	@ tmp273,
	b	.L34		@
.L37:
@ arm/soar_wram.arm.c:69: 		EndLoop(CurrentProc);
	mov	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:87: };
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L40:
	.align	2
.L39:
	.word	gKeyState
	.word	cam_pivot_dy_Angles
	.word	cam_pivot_dx_Angles
	.word	50343936
	.word	37504
	.word	cam_dx_Angles
	.word	cam_dy_Angles
	.word	heightMap
	.word	40512
	.word	40000
	.size	NewWMLoop, .-NewWMLoop
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
@ arm/soar_wram.arm.c:91: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:91: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:92: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, r0, r1, lsl #10	@ tmp123, ptx, pty,
	ldrcc	r3, .L44	@ tmp121,
	lslcc	r0, r0, #1	@ tmp124, tmp123,
	ldrhcc	r0, [r3, r0]	@ <retval>, colourMap[_8]
@ arm/soar_wram.arm.c:91: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	movcs	r0, #6208	@ <retval>,
@ arm/soar_wram.arm.c:93: };
	bx	lr	@
.L45:
	.align	2
.L44:
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
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, r0, r1	@ tmp120, ptx, pty
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp120,
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L49	@ tmp121,
	addcc	r3, r3, r0	@ tmp123, tmp121, ptx
	ldrbcc	r0, [r3, r1, lsl #10]	@ zero_extendqisi2	@ <retval>, heightMap[_8]
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r0, #0	@ <retval>,
@ arm/soar_wram.arm.c:98: }
	bx	lr	@
.L50:
	.align	2
.L49:
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
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	ip, r0, r1	@ tmp128, ptx, pty
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	ip, #1024	@ tmp128,
	movcs	r1, #0	@ _12,
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	ip, .L54	@ tmp129,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, r3, #1	@ tmp135, zdist,
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	addcc	r0, ip, r0	@ tmp131, tmp129, ptx
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp141, altitude, altitude,
@ arm/soar_wram.arm.c:101: 	int height = getPtHeight(ptx, pty);
	ldrbcc	r1, [r0, r1, lsl #10]	@ zero_extendqisi2	@ _12, heightMap[_18]
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r2, r2, r2, lsl #8	@ tmp143, tmp141, tmp141,
	rsb	r3, r3, r3, lsl #8	@ tmp138, tmp135, tmp135,
	add	r3, r3, r2	@ tmp144, tmp138, tmp143
	add	r3, r3, r1	@ tmp145, tmp144, _12
	ldr	r2, .L54+4	@ tmp134,
	lsl	r3, r3, #1	@ tmp146, tmp145,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldrsh	r0, [r2, r3]	@ height, hosTables[altitude_10(D)][_1][prephitmp_14]
@ arm/soar_wram.arm.c:110: }
	cmp	r0, #160	@ height,
	movge	r0, #160	@ height,
	bic	r0, r0, r0, asr #31	@, height
	bx	lr	@
.L55:
	.align	2
.L54:
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
	push	{r4, r5, r6, r7, lr}	@
@ arm/soar_wram.arm.c:113: 	int animClock = GetGameClock() & 0x3F;
	ldr	r3, .L71	@ tmp141,
@ arm/soar_wram.arm.c:112: void UpdateSprites(SoarProc* CurrentProc){
	sub	sp, sp, #12	@,,
@ arm/soar_wram.arm.c:112: void UpdateSprites(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp195
@ arm/soar_wram.arm.c:113: 	int animClock = GetGameClock() & 0x3F;
	mov	lr, pc
	bx	r3		@ tmp141
@ arm/soar_wram.arm.c:114: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //the same as eirika's map sprite?
	tst	r0, #48	@ _1,
	beq	.L69		@,
@ arm/soar_wram.arm.c:115: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10); //the same as eirika's map sprite?
	tst	r0, #32	@ _1,
@ arm/soar_wram.arm.c:115: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10); //the same as eirika's map sprite?
	ldreq	r3, .L71+4	@ tmp148,
@ arm/soar_wram.arm.c:115: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10); //the same as eirika's map sprite?
	beq	.L68		@,
@ arm/soar_wram.arm.c:113: 	int animClock = GetGameClock() & 0x3F;
	and	r3, r0, #63	@ animClock, _1,
@ arm/soar_wram.arm.c:116: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca20); //the same as eirika's map sprite?
	cmp	r3, #47	@ animClock,
@ arm/soar_wram.arm.c:116: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca20); //the same as eirika's map sprite?
	ldrle	r3, .L71+8	@ tmp152,
@ arm/soar_wram.arm.c:117: 	else ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca30); //the same as eirika's map sprite?
	ldrgt	r3, .L71+12	@ tmp155,
.L68:
	str	r3, [sp]	@ tmp155,
	mov	r2, #96	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L71+16	@,
	ldr	r5, .L71+20	@ tmp194,
	mov	lr, pc
	bx	r5		@ tmp194
.L58:
@ arm/soar_wram.arm.c:119: 	ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //change this palette
	ldr	r3, .L71+24	@ tmp158,
	mov	r2, #0	@,
	mov	r1, #176	@,
	str	r3, [sp]	@ tmp158,
	mov	r0, #8	@,
	ldr	r3, .L71+28	@,
	mov	lr, pc
	bx	r5		@ tmp194
@ arm/soar_wram.arm.c:123: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [r4, #72]	@ posY, CurrentProc_30(D)->sFocusPtY
@ arm/soar_wram.arm.c:127: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	ldr	r2, .L71+32	@ tmp161,
@ arm/soar_wram.arm.c:127: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	sub	r1, r3, #171	@ tmp160, posY,
@ arm/soar_wram.arm.c:127: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	cmp	r1, r2	@ tmp160, tmp161
@ arm/soar_wram.arm.c:122: 	int posX = CurrentProc->sFocusPtX;
	ldr	r7, [r4, #68]	@ posX, CurrentProc_30(D)->sFocusPtX
@ arm/soar_wram.arm.c:127: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	bhi	.L63		@,
@ arm/soar_wram.arm.c:127: 	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
	ldr	r2, .L71+36	@ tmp165,
	sub	r1, r7, #1	@ tmp164, posX,
	cmp	r1, r2	@ tmp164, tmp165
	bls	.L70		@,
.L63:
@ arm/soar_wram.arm.c:134: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L71+40	@ tmp162,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r4, #76]	@ translatedLocations[0], CurrentProc_30(D)->location
.L56:
@ arm/soar_wram.arm.c:140: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L69:
@ arm/soar_wram.arm.c:114: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //the same as eirika's map sprite?
	mov	ip, #51712	@ tmp144,
	mov	r2, #96	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L71+16	@,
	ldr	r5, .L71+20	@ tmp194,
	str	ip, [sp]	@ tmp144,
	mov	lr, pc
	bx	r5		@ tmp194
	b	.L58		@
.L70:
@ arm/soar_wram.arm.c:128: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60);
	sub	r6, r3, #170	@ _9, posY,
@ arm/soar_wram.arm.c:128: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60);
	asr	r1, r7, #4	@ tmp170, posX,
@ arm/soar_wram.arm.c:128: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60);
	ldr	r3, .L71+44	@ tmp175,
@ arm/soar_wram.arm.c:128: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60);
	asr	r2, r6, #4	@ tmp167, _9,
@ arm/soar_wram.arm.c:128: 		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60);
	add	r1, r1, #176	@ tmp172, tmp170,
	lsl	r2, r2, #16	@, tmp167,
	lsl	r1, r1, #16	@, tmp172,
	str	r3, [sp]	@ tmp175,
	lsr	r2, r2, #16	@,,
	ldr	r3, .L71+48	@,
	mov	r0, #8	@,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r5		@ tmp194
@ arm/soar_wram.arm.c:131: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L71+52	@ tmp177,
@ arm/soar_wram.arm.c:130: 		posY = (posY-170)>>6;
	asr	r3, r6, #6	@ posY, _9,
@ arm/soar_wram.arm.c:131: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp181, tmp177, posY,
	ldrb	r3, [r3, r7, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_36][posX_35]
@ arm/soar_wram.arm.c:134: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L71+40	@ tmp183,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_12], translatedLocations[_12]
@ arm/soar_wram.arm.c:136: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:134: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r4, #76]	@ translatedLocations[_12], CurrentProc_30(D)->location
@ arm/soar_wram.arm.c:136: 	if (loc>0) {
	beq	.L56		@,
@ arm/soar_wram.arm.c:137: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp189, loc,
	add	r3, r3, #-905969664	@ tmp192, tmp189,
	add	r3, r3, #3932160	@ tmp192, tmp192,
	lsr	r3, r3, r2	@ tmp191, tmp192,
	str	r3, [sp]	@ tmp191,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L71+56	@,
	mov	lr, pc
	bx	r5		@ tmp194
@ arm/soar_wram.arm.c:140: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L72:
	.align	2
.L71:
	.word	GetGameClock
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
@ arm/soar_wram.arm.c:142: Point getPLeft(int camera_x, int camera_y, int angle, int zdist){
	ldr	lr, [sp, #12]	@ zdist, zdist
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	ip, r3, #0	@ tmp129, angle
	and	ip, ip, #15	@ tmp130, tmp129,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r5, .L75	@ tmp128,
	add	ip, lr, ip, lsl #9	@ tmp132, zdist, tmp130,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	lr, lr, r3, lsl #9	@ tmp138, zdist, angle,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	ip, ip, #1	@ tmp133, tmp132,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	lsl	lr, lr, #1	@ tmp139, tmp138,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	r3, [r5, ip]	@ pleftmatrix[_7][zdist_13(D)], pleftmatrix[_7][zdist_13(D)]
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldrsh	ip, [r5, lr]	@ pleftmatrix[angle_12(D)][zdist_13(D)], pleftmatrix[angle_12(D)][zdist_13(D)]
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r3, r3, r2	@ _10, pleftmatrix[_7][zdist_13(D)], tmp145
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	ip, ip, r1	@ tmp142, pleftmatrix[angle_12(D)][zdist_13(D)], tmp144
@ arm/soar_wram.arm.c:218: 	return pleft;
	str	ip, [r0]	@ tmp142, <retval>.x
	str	r3, [r0, #4]	@ _10, <retval>.y
@ arm/soar_wram.arm.c:219: };
	pop	{r4, r5, lr}	@
	bx	lr	@
.L76:
	.align	2
.L75:
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
	mov	r3, r0	@ tmp350, CurrentProc
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	mov	r7, r3	@ CurrentProc, tmp350
	sub	sp, sp, #196	@,,
@ arm/soar_wram.arm.c:225: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r6, [r3, #56]	@ angle, CurrentProc_39(D)->sPlayerYaw
@ arm/soar_wram.arm.c:222: void Render(SoarProc* CurrentProc){
	str	r3, [sp, #20]	@ CurrentProc, %sfp
@ arm/soar_wram.arm.c:223: 	int posX = CurrentProc->sPlayerPosX;
	ldr	r3, [r3, #44]	@ posX, CurrentProc_39(D)->sPlayerPosX
	str	r3, [sp, #28]	@ posX, %sfp
@ arm/soar_wram.arm.c:227: 	int altitude = (CurrentProc->sPlayerPosZ);
	ldr	r3, [r7, #52]	@ altitude, CurrentProc_39(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:233: 	altitude /= CAMERA_Z_STEP;
	ldr	r2, .L112	@ tmp221,
@ arm/soar_wram.arm.c:232: 	altitude -= CAMERA_MIN_HEIGHT;
	sub	r3, r3, #64	@ altitude, altitude,
@ arm/soar_wram.arm.c:233: 	altitude /= CAMERA_Z_STEP;
	smull	r1, r2, r3, r2	@ tmp352, tmp220, altitude, tmp220
	asr	r3, r3, #31	@ tmp223, altitude,
	rsb	r4, r3, r2, asr #3	@ altitude, tmp223, tmp220,
@ arm/soar_wram.arm.c:224: 	int posY = CurrentProc->sPlayerPosY;
	ldr	r3, [r7, #48]	@ posY, CurrentProc_39(D)->sPlayerPosY
@ arm/soar_wram.arm.c:236: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	ldr	r1, [r7, #60]	@, CurrentProc_39(D)->vid_page
	ldr	r0, .L112+4	@,
@ arm/soar_wram.arm.c:241: 	for (int zdist = MIN_Z_DISTANCE; zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	mov	fp, #8	@ zdist,
@ arm/soar_wram.arm.c:224: 	int posY = CurrentProc->sPlayerPosY;
	str	r3, [sp, #32]	@ posY, %sfp
@ arm/soar_wram.arm.c:236: 	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	bl	LZ77UnCompVram		@
@ arm/soar_wram.arm.c:237: 	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp227,
	ldr	r2, .L112+8	@,
	strh	r3, [sp, #58]	@ movhi	@ tmp227, tmp
@ arm/soar_wram.arm.c:226: 	int tangent = (angle+4)&0xF;
	add	r5, r6, #4	@ tmp219, angle,
@ arm/soar_wram.arm.c:237: 	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	ldr	r3, .L112+12	@ tmp373,
	add	r1, sp, #64	@ tmp372,,
	add	r0, sp, #58	@,,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r4, r4, r4, lsl fp	@ tmp288, altitude, altitude,
@ arm/soar_wram.arm.c:237: 	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	lr, pc
	bx	r3		@ tmp373
@ arm/soar_wram.arm.c:226: 	int tangent = (angle+4)&0xF;
	and	r5, r5, #15	@ tangent, tmp219,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	rsb	r3, r4, r4, lsl fp	@ tmp290, tmp288, tmp288,
	str	r3, [sp, #36]	@ tmp290, %sfp
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp232, tangent
	and	r3, r3, #15	@ _204, tmp232,
	lsl	r3, r3, #9	@ tmp339, _204,
	str	r3, [sp, #48]	@ tmp339, %sfp
	rsb	r3, r6, #0	@ tmp233, angle
	lsl	r2, r5, #9	@ tmp335, tangent,
	and	r3, r3, #15	@ _208, tmp233,
	lsl	r3, r3, #9	@ tmp340, _208,
	str	r2, [sp, #44]	@ tmp335, %sfp
	lsl	r2, r6, #9	@ tmp334, angle,
	str	r3, [sp, #52]	@ tmp340, %sfp
	str	r2, [sp, #40]	@ tmp334, %sfp
@ arm/soar_wram.arm.c:271: 			    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldr	r3, [r7, #60]	@ prephitmp_244, CurrentProc_39(D)->vid_page
.L91:
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r7, #0	@ ivtmp.59,
@ arm/soar_wram.arm.c:250: 		if (zdist < (MAX_Z_DISTANCE-(MAX_Z_DISTANCE>>3))) fogmask = 0; //change fog dist from >>1 to >>2
	ldr	r2, .L112+16	@ tmp343,
	cmp	fp, #448	@ zdist,
	movge	lr, r2	@ prephitmp_209, tmp343
	movlt	lr, r7	@ prephitmp_209,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #40]	@ tmp334, %sfp
	ldr	ip, .L112+20	@ tmp383,
	add	r2, r2, fp	@ tmp236, tmp334, zdist
	lsl	r2, r2, #1	@ tmp237, tmp236,
	ldrsh	r0, [ip, r2]	@ _74, pleftmatrix[angle_42][zdist_181]
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #52]	@ tmp340, %sfp
	add	r2, r2, fp	@ tmp241, tmp340, zdist
	lsl	r2, r2, #1	@ tmp242, tmp241,
	ldrsh	r1, [ip, r2]	@ _81, pleftmatrix[_208][zdist_181]
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #44]	@ tmp335, %sfp
	add	r2, r2, fp	@ tmp246, tmp335, zdist
	lsl	r2, r2, #1	@ tmp247, tmp246,
	ldrsh	r2, [ip, r2]	@ pleftmatrix[tangent_43][zdist_181], pleftmatrix[tangent_43][zdist_181]
@ arm/soar_wram.arm.c:247: 		int dx = ((pright.x - pleft.x)<<8)>>7; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r2, r2, r0	@ tmp250, pleftmatrix[tangent_43][zdist_181], _74
@ arm/soar_wram.arm.c:247: 		int dx = ((pright.x - pleft.x)<<8)>>7; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r2, r2, #1	@ dx, tmp250,
	str	r2, [sp, #4]	@ dx, %sfp
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #48]	@ tmp339, %sfp
	add	r2, r2, fp	@ tmp254, tmp339, zdist
	lsl	r2, r2, #1	@ tmp255, tmp254,
	ldrsh	r10, [ip, r2]	@ pleftmatrix[_204][zdist_181], pleftmatrix[_204][zdist_181]
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r2, [sp, #32]	@ posY, %sfp
	add	r2, r2, r1	@ _82, posY, _81
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r4, [sp, #28]	@ posX, %sfp
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r2, [sp, #12]	@ _82, %sfp
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r9, fp, #1	@ _110, zdist,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #36]	@ tmp290, %sfp
	rsb	r9, r9, r9, lsl #8	@ tmp285, _110, _110,
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r0, r4, r0	@ _75, posX, _74
@ arm/soar_wram.arm.c:248: 		int dy = ((pright.y - pleft.y)<<8)>>7; //TODO optimise out the division.
	sub	r10, r10, r1	@ tmp258, pleftmatrix[_204][zdist_181], _81
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r9, r9, r2	@ tmp291, tmp285, tmp290
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	orr	r2, lr, #6208	@ tmp344, prephitmp_209,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r8, r7	@ ivtmp.58, ivtmp.59
@ arm/soar_wram.arm.c:256: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	mov	r5, r7	@ i, ivtmp.59
@ arm/soar_wram.arm.c:250: 		if (zdist < (MAX_Z_DISTANCE-(MAX_Z_DISTANCE>>3))) fogmask = 0; //change fog dist from >>1 to >>2
	str	lr, [sp, #16]	@ prephitmp_209, %sfp
@ arm/soar_wram.arm.c:151: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r0, [sp, #8]	@ _75, %sfp
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	str	r2, [sp, #24]	@ tmp344, %sfp
	add	r6, sp, #64	@ tmp381,,
@ arm/soar_wram.arm.c:248: 		int dy = ((pright.y - pleft.y)<<8)>>7; //TODO optimise out the division.
	lsl	r10, r10, #1	@ dy, tmp258,
	b	.L90		@
.L82:
@ arm/soar_wram.arm.c:97: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r2, .L112+24	@ tmp404,
	add	r0, r2, r0	@ tmp280, tmp404, _9
@ arm/soar_wram.arm.c:101: 	int height = getPtHeight(ptx, pty);
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ _222, heightMap[_106]
.L84:
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r1, .L112+28	@ tmp405,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	add	r2, r9, r2	@ tmp292, tmp291, _222
	lsl	r2, r2, #1	@ tmp293, tmp292,
@ arm/soar_wram.arm.c:106: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldrsh	r4, [r1, r2]	@ height, hosTables[altitude_46][_110][prephitmp_223]
@ arm/soar_wram.arm.c:107: 	if (height<0) return 0;
	cmp	r4, #0	@ height,
@ arm/soar_wram.arm.c:270: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	ldrb	r0, [r6]	@ zero_extendqisi2	@ _250, MEM[(unsigned char *)_229]
@ arm/soar_wram.arm.c:107: 	if (height<0) return 0;
	blt	.L97		@,
	cmp	r4, #160	@ height,
	movge	r4, #160	@ _113,
@ arm/soar_wram.arm.c:270: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r4, r0	@ _113, _250
	ble	.L86		@,
@ arm/soar_wram.arm.c:285: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	subs	r2, r4, r0	@ _17, _113, _250
	bmi	.L87		@,
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r5, r5, lsl #2	@ tmp300, i, i,
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r0, r1, lsl #5	@ offset, _250, tmp300,
@ arm/soar_wram.arm.c:289: 	CpuFill16(color, base, (ylen<<1));
	add	r1, r3, r1, lsl #1	@, prephitmp_244, offset,
	orr	r2, r2, #16777216	@, _17,
	ldr	r3, .L112+12	@ tmp406,
	add	r0, sp, #60	@,,
	strh	lr, [sp, #60]	@ movhi	@ clr, tmp
	mov	lr, pc
	bx	r3		@ tmp406
@ arm/soar_wram.arm.c:281: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	ldr	r3, [r3, #60]	@ prephitmp_244, CurrentProc_39(D)->vid_page
.L87:
@ arm/soar_wram.arm.c:272: 			    yBuffer[i] = height_on_screen;
	strb	r4, [r6]	@ _113, MEM[(unsigned char *)_229]
.L88:
@ arm/soar_wram.arm.c:256: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	ldr	r2, [sp, #4]	@ dx, %sfp
@ arm/soar_wram.arm.c:256: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	add	r5, r5, #1	@ i, i,
@ arm/soar_wram.arm.c:256: 		for (int i=0; i<(MODE5_HEIGHT); i++){
	cmp	r5, #128	@ i,
	add	r8, r8, r2	@ ivtmp.58, ivtmp.58, dx
	add	r7, r7, r10	@ ivtmp.59, ivtmp.59, dy
	add	r6, r6, #1	@ ivtmp.60, ivtmp.60,
	beq	.L110		@,
.L90:
@ arm/soar_wram.arm.c:257: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #8]	@ _75, %sfp
	add	r0, r2, r8, asr #8	@ _9, _75, ivtmp.58,
@ arm/soar_wram.arm.c:257: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #12]	@ _82, %sfp
	add	ip, r2, r7, asr #8	@ _12, _82, ivtmp.59,
@ arm/soar_wram.arm.c:91: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	ip, #1024	@ _12,
	cmplt	r0, #1024	@, _9,
	movge	r2, #1	@ _85,
	movlt	r2, #0	@ _85,
	bge	.L79		@,
@ arm/soar_wram.arm.c:91: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r4, r0, ip	@ tmp341, _9, _12
	bmi	.L80		@,
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	ldr	lr, .L112+32	@ tmp400,
@ arm/soar_wram.arm.c:92: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r1, r0, ip, lsl #10	@ tmp270, _9, _12,
	lsl	r1, r1, #1	@ tmp271, tmp270,
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	ldrh	lr, [lr, r1]	@ colourMap[_90], colourMap[_90]
	ldr	r1, [sp, #16]	@ prephitmp_209, %sfp
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #28	@ zdist,
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	orr	lr, r1, lr	@ clr, prephitmp_209, colourMap[_90]
@ arm/soar_wram.arm.c:92: 	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r1, ip, #10	@ tmp331, _12,
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	bne	.L82		@,
.L81:
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	sub	r1, r5, #61	@ tmp328, i,
	cmp	r1, #6	@ tmp328,
	bls	.L92		@,
.L93:
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r4, #0	@ tmp341,
	blt	.L99		@,
	lsl	r1, ip, #10	@ tmp331, _12,
	b	.L82		@
.L79:
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #28	@ zdist,
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	ldr	lr, [sp, #24]	@ clr, %sfp
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	beq	.L111		@,
.L99:
	mov	r2, #0	@ _222,
	b	.L84		@
.L97:
@ arm/soar_wram.arm.c:270: 			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r4, r0	@ _232, _250
.L85:
@ arm/soar_wram.arm.c:275: 			else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r4, #6	@ _232,
	ble	.L88		@,
@ arm/soar_wram.arm.c:276: 				DrawVerticalLine(i, yBuffer[i]-1, 1, 0x0000, CurrentProc->vid_page); //draw a black border if not
	sub	r1, r0, #1	@ _21, _250,
@ arm/soar_wram.arm.c:285: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	cmp	r1, #160	@ _21,
	bgt	.L88		@,
@ arm/soar_wram.arm.c:286: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	cmp	r0, #160	@ _250,
@ arm/soar_wram.arm.c:289: 	CpuFill16(color, base, (ylen<<1));
	mov	r0, #0	@ tmp312,
	strh	r0, [sp, #62]	@ movhi	@ tmp312, tmp
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r0, r5, r5, lsl #2	@ tmp315, i, i,
@ arm/soar_wram.arm.c:289: 	CpuFill16(color, base, (ylen<<1));
	rsbgt	r2, r1, #160	@ tmp310, _21,
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r0, lsl #5	@ offset, _21, tmp315,
@ arm/soar_wram.arm.c:289: 	CpuFill16(color, base, (ylen<<1));
	add	r1, r3, r1, lsl #1	@, prephitmp_244, offset,
	ldrle	r2, .L112+36	@ _240,
	ldr	r3, .L112+12	@ tmp408,
	orrgt	r2, r2, #16777216	@ _240, tmp310,
	add	r0, sp, #62	@,,
	mov	lr, pc
	bx	r3		@ tmp408
@ arm/soar_wram.arm.c:281: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	ldr	r3, [r3, #60]	@ prephitmp_244, CurrentProc_39(D)->vid_page
	b	.L88		@
.L86:
@ arm/soar_wram.arm.c:275: 			else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r4, r0, r4	@ _232, _250, _113
	b	.L85		@
.L111:
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	sub	r1, r5, #61	@ tmp327, i,
	cmp	r1, #6	@ tmp327,
	bhi	.L99		@,
.L92:
@ arm/soar_wram.arm.c:263: 				if (i==(MODE5_HEIGHT>>1)){
	cmp	r5, #64	@ i,
@ arm/soar_wram.arm.c:264: 					CurrentProc->sFocusPtX = offsetPoint.x;
	ldreq	r1, [sp, #20]	@ CurrentProc, %sfp
	streq	r0, [r1, #68]	@ _9, CurrentProc_39(D)->sFocusPtX
@ arm/soar_wram.arm.c:265: 					CurrentProc->sFocusPtY = offsetPoint.y;
	streq	ip, [r1, #72]	@ _12, CurrentProc_39(D)->sFocusPtY
@ arm/soar_wram.arm.c:96: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #0	@ _85,
	movne	r2, #0	@ _222,
	movne	lr, r2	@ clr, _222
	bne	.L84		@,
	mov	lr, r2	@ clr, _85
	orr	r4, r0, ip	@ tmp341, _9, _12
	b	.L93		@
.L80:
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	cmp	fp, #28	@ zdist,
@ arm/soar_wram.arm.c:260: 			clr |= fogmask;
	ldr	lr, [sp, #24]	@ clr, %sfp
@ arm/soar_wram.arm.c:261: 			if ((zdist == (MIN_Z_DISTANCE*3.5)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
	bne	.L84		@,
	b	.L81		@
.L110:
@ arm/soar_wram.arm.c:241: 	for (int zdist = MIN_Z_DISTANCE; zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	asr	r2, fp, #7	@ tmp323, zdist,
	add	r2, r2, fp, asr #6	@ tmp324, tmp323, zdist,
	add	r2, r2, #2	@ _26, tmp324,
@ arm/soar_wram.arm.c:241: 	for (int zdist = MIN_Z_DISTANCE; zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	add	fp, fp, r2	@ zdist, zdist, _26
@ arm/soar_wram.arm.c:241: 	for (int zdist = MIN_Z_DISTANCE; zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	cmp	fp, #512	@ zdist,
	blt	.L91		@,
@ arm/soar_wram.arm.c:281: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	mov	r0, r3	@, prephitmp_244
	bl	vid_flip		@
@ arm/soar_wram.arm.c:281: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r3, [sp, #20]	@ CurrentProc, %sfp
	str	r0, [r3, #60]	@ tmp351, CurrentProc_39(D)->vid_page
@ arm/soar_wram.arm.c:282: };
	add	sp, sp, #196	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L113:
	.align	2
.L112:
	.word	715827883
	.word	SkyBG
	.word	16777280
	.word	CpuSet
	.word	7267
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
@ arm/soar_wram.arm.c:285: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	cmp	r1, #160	@ ystart,
	movle	ip, #0	@ tmp137,
	movgt	ip, #1	@ tmp137,
@ arm/soar_wram.arm.c:285: 	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	orrs	ip, ip, r2, lsr #31	@, tmp164, tmp137, ylen,
	bxne	lr	@
@ arm/soar_wram.arm.c:284: void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	push	{r4, lr}	@
@ arm/soar_wram.arm.c:286: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	add	ip, r2, r1	@ tmp142, ylen, ystart
@ arm/soar_wram.arm.c:286: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	cmp	ip, #160	@ tmp142,
@ arm/soar_wram.arm.c:284: void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	sub	sp, sp, #8	@,,
@ arm/soar_wram.arm.c:286: 	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	rsbgt	r2, r1, #160	@ ylen, ystart,
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r0, r0, r0, lsl #2	@ tmp153, xcoord, xcoord,
@ arm/soar_wram.arm.c:287: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r1, r1, r0, lsl #5	@ offset, ystart, tmp153,
@ arm/soar_wram.arm.c:289: 	CpuFill16(color, base, (ylen<<1));
	bic	r2, r2, #-16777216	@ tmp148, ylen,
	ldr	r0, [sp, #16]	@ tmp166, vid_page
	bic	r2, r2, #14680064	@ tmp148, tmp148,
	add	r1, r0, r1, lsl #1	@, tmp166, offset,
	ldr	r4, .L121	@ tmp159,
	orr	r2, r2, #16777216	@, tmp148,
	add	r0, sp, #6	@,,
	strh	r3, [sp, #6]	@ movhi	@ color, tmp
	mov	lr, pc
	bx	r4		@ tmp159
@ arm/soar_wram.arm.c:290: }
	add	sp, sp, #8	@,,
	@ sp needed	@
	pop	{r4, lr}	@
	bx	lr	@
.L122:
	.align	2
.L121:
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
@ arm/soar_wram.arm.c:293: 	switch (direction){
	cmp	r0, #2	@ direction,
@ arm/soar_wram.arm.c:292: void BumpScreen(int direction){
	str	lr, [sp, #-4]!	@,
@ arm/soar_wram.arm.c:293: 	switch (direction){
	beq	.L124		@,
	cmp	r0, #3	@ direction,
	bne	.L123		@,
@ arm/soar_wram.arm.c:309: 			g_REG_BG2Y=0x0500;	//offset horizontal
	mov	lr, #1280	@ tmp131,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PA=0xFFF2; 
	mvn	ip, #13	@ tmp136,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PB=0xFF1C;
	mvn	r0, #227	@ tmp139,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PC=0x0080;
	mov	r1, #128	@ tmp142,
@ arm/soar_wram.arm.c:314: 			g_REG_BG2PD=0xFFF8;
	mvn	r2, #7	@ tmp145,
@ arm/soar_wram.arm.c:309: 			g_REG_BG2Y=0x0500;	//offset horizontal
	ldr	r3, .L129	@ tmp130,
	str	lr, [r3, #212]	@ tmp131, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:310: 			g_REG_BG2X=0x9c40;
	ldr	lr, .L129+4	@ tmp133,
.L128:
	str	lr, [r3, #208]	@ tmp133,
@ arm/soar_wram.arm.c:311: 			g_REG_BG2PA=0xFFF2; 
	strh	ip, [r3, #200]	@ movhi	@ tmp136,
@ arm/soar_wram.arm.c:312: 			g_REG_BG2PB=0xFF1C;
	strh	r0, [r3, #202]	@ movhi	@ tmp139,
@ arm/soar_wram.arm.c:313: 			g_REG_BG2PC=0x0080;
	strh	r1, [r3, #204]	@ movhi	@ tmp142,
@ arm/soar_wram.arm.c:314: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3, #206]	@ movhi	@ tmp145,
.L123:
@ arm/soar_wram.arm.c:317: };
	ldr	lr, [sp], #4	@,
	bx	lr	@
.L124:
@ arm/soar_wram.arm.c:301: 			g_REG_BG2Y=0x180;	//offset horizontal
	mov	lr, #384	@ tmp115,
	ldr	r3, .L129	@ tmp114,
@ arm/soar_wram.arm.c:303: 			g_REG_BG2PA=0x000E; 
	mov	ip, #14	@ tmp120,
@ arm/soar_wram.arm.c:301: 			g_REG_BG2Y=0x180;	//offset horizontal
	str	lr, [r3, #212]	@ tmp115, MEM[(volatile vu32 *)50344148B]
@ arm/soar_wram.arm.c:304: 			g_REG_BG2PB=0xFF1C;
	mvn	r0, #227	@ tmp123,
@ arm/soar_wram.arm.c:305: 			g_REG_BG2PC=0x0080;
	mov	r1, #128	@ tmp126,
@ arm/soar_wram.arm.c:306: 			g_REG_BG2PD=0x0008;
	mov	r2, #8	@ tmp129,
@ arm/soar_wram.arm.c:302: 			g_REG_BG2X=0x9280;
	add	lr, lr, #37120	@ tmp117, tmp117,
	b	.L128		@
.L130:
	.align	2
.L129:
	.word	50343936
	.word	40000
	.size	BumpScreen, .-BumpScreen
	.ident	"GCC: (devkitARM release 56) 11.1.0"
