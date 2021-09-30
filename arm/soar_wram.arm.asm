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
@ options passed: -mcpu=arm7tdmi -marm -mthumb-interwork -mtune=arm7tdmi -march=armv4t -O2 -fomit-frame-pointer -ffast-math -fno-jump-tables -fno-toplevel-reorder
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
@ arm/soar_wram.arm.c:176: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp389,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
@ arm/soar_wram.arm.c:176: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _169, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:177: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _169,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	r9, r0	@ CurrentProc, tmp786
	sub	sp, sp, #204	@,,
@ arm/soar_wram.arm.c:177: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L109		@,
@ arm/soar_wram.arm.c:178: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _169,
@ arm/soar_wram.arm.c:178: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L118	@ tmp400,
@ arm/soar_wram.arm.c:178: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L106		@,
@ arm/soar_wram.arm.c:176: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp402, _169,
@ arm/soar_wram.arm.c:179: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp402,
@ arm/soar_wram.arm.c:179: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L118+4	@ tmp407,
@ arm/soar_wram.arm.c:180: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L118+8	@ tmp410,
.L106:
	str	r3, [sp]	@ tmp410,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L118+12	@,
	ldr	r4, .L118+16	@ tmp775,
	mov	lr, pc
	bx	r4		@ tmp775
.L3:
@ arm/soar_wram.arm.c:182: 	if (CurrentProc->ShowMap)
	ldr	r3, [r9, #68]	@ CurrentProc_108(D)->ShowMap, CurrentProc_108(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_108(D)->ShowMap,
	bne	.L110		@,
.L6:
@ arm/soar_wram.arm.c:193: 	int posY = CurrentProc->sFocusPtY;
	ldr	r5, [r9, #76]	@ posY, CurrentProc_108(D)->sFocusPtY
@ arm/soar_wram.arm.c:197: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L118+20	@ tmp426,
@ arm/soar_wram.arm.c:197: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r2, r5, #171	@ tmp425, posY,
@ arm/soar_wram.arm.c:197: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r2, r3	@ tmp425, tmp426
@ arm/soar_wram.arm.c:192: 	int posX = CurrentProc->sFocusPtX;
	ldr	r6, [r9, #72]	@ posX, CurrentProc_108(D)->sFocusPtX
@ arm/soar_wram.arm.c:197: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L9		@,
@ arm/soar_wram.arm.c:197: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r3, .L118+24	@ tmp430,
	sub	r2, r6, #1	@ tmp429, posX,
	cmp	r2, r3	@ tmp429, tmp430
	bls	.L111		@,
.L9:
@ arm/soar_wram.arm.c:203: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L118+28	@ tmp427,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r9, #80]	@ translatedLocations[0], CurrentProc_108(D)->location
.L8:
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L118+32	@ tmp770,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	bne	.L112		@,
.L11:
@ arm/soar_wram.arm.c:25: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	tst	r3, #16	@ _1,
	bne	.L113		@,
@ arm/soar_wram.arm.c:35: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldrh	r3, [r4, #10]	@ gKeyState.prevKeys, gKeyState.prevKeys
	tst	r3, #48	@ gKeyState.prevKeys,
	bne	.L101		@,
.L107:
	ldr	r5, .L118+36	@ tmp774,
	ldr	r6, .L118+40	@ tmp773,
.L12:
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r9, #60]	@ _38, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L118+44	@ tmp540,
	lsl	r3, r3, #1	@ tmp541, _38,
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	lr, [r5, r3]	@ cam_pivot_dx_Angles[_38], cam_pivot_dx_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldrsh	r5, [r2, r3]	@ _40, cam_dx_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, .L118+48	@ tmp544,
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	ip, [r6, r3]	@ cam_pivot_dy_Angles[_38], cam_pivot_dy_Angles[_38]
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r1, [r9, #44]	@ CurrentProc_108(D)->sPlayerPosX, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r6, [r2, r3]	@ _44, cam_dy_Angles[_38]
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r9, #48]	@ CurrentProc_108(D)->sPlayerPosY, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r7, [r4, #8]	@ _52, gKeyState.pressedKeys
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	add	r1, r5, r1	@ _41, _40, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r2, r6, r2	@ _45, _44, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	lr, lr, r1	@ _48, cam_pivot_dx_Angles[_38], _41
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	add	ip, ip, r2	@ _51, cam_pivot_dy_Angles[_38], _45
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	tst	r7, #8	@ _52,
@ arm/soar_wram.arm.c:44: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r9, #44]	@ _41, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:46: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	lr, [r9, #72]	@ _48, CurrentProc_108(D)->sFocusPtX
@ arm/soar_wram.arm.c:45: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r9, #48]	@ _45, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:47: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	ip, [r9, #76]	@ _51, CurrentProc_108(D)->sFocusPtY
@ arm/soar_wram.arm.c:50: 	if (gKeyState.pressedKeys & START_BUTTON){
	bne	.L114		@,
@ arm/soar_wram.arm.c:55: 	if (gKeyState.pressedKeys & L_BUTTON){
	tst	r7, #512	@ _52,
	bne	.L16		@,
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	ldr	r0, [r9, #88]	@ prephitmp_523, CurrentProc_108(D)->sunTransition
@ arm/soar_wram.arm.c:61: 	if (CurrentProc->sunTransition!=0)
	cmp	r0, #0	@ prephitmp_523,
	bne	.L17		@,
.L18:
@ arm/soar_wram.arm.c:73: 	if (gKeyState.pressedKeys & R_BUTTON){
	tst	r7, #256	@ _52,
@ arm/soar_wram.arm.c:74: 		CurrentProc->ShowMap ^= 1;
	ldrne	r3, [r9, #68]	@ CurrentProc_108(D)->ShowMap, CurrentProc_108(D)->ShowMap
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:74: 		CurrentProc->ShowMap ^= 1;
	eorne	r3, r3, #1	@ tmp574, CurrentProc_108(D)->ShowMap,
	strne	r3, [r9, #68]	@ tmp574, CurrentProc_108(D)->ShowMap
@ arm/soar_wram.arm.c:77: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	tst	r0, #64	@ _63,
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	addne	r1, r5, r1	@ tmp581, _40, _41
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	addne	r2, r6, r2	@ tmp582, _44, _45
@ arm/soar_wram.arm.c:78: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	strne	r1, [r9, #44]	@ tmp581, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:79: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	strne	r2, [r9, #48]	@ tmp582, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:81: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	tst	r0, #128	@ _63,
	beq	.L24		@,
@ arm/soar_wram.arm.c:82: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r9, #44]	@ CurrentProc_108(D)->sPlayerPosX, CurrentProc_108(D)->sPlayerPosX
	sub	r3, r3, r5	@ tmp587, CurrentProc_108(D)->sPlayerPosX, _40
	str	r3, [r9, #44]	@ tmp587, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:83: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r9, #48]	@ CurrentProc_108(D)->sPlayerPosY, CurrentProc_108(D)->sPlayerPosY
	sub	r3, r3, r6	@ tmp589, CurrentProc_108(D)->sPlayerPosY, _44
	str	r3, [r9, #48]	@ tmp589, CurrentProc_108(D)->sPlayerPosY
.L24:
@ arm/soar_wram.arm.c:85: 	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down
	cmp	r0, #128	@ _63,
	beq	.L1		@,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r3, lr, ip	@ tmp591, _48, _51
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r3, #1024	@ tmp591,
@ arm/soar_wram.arm.c:159: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r3, .L118+52	@ tmp592,
	addcc	r3, r3, lr	@ tmp594, tmp592, _48
	ldrbcc	r3, [r3, ip, lsl #10]	@ zero_extendqisi2	@ _221, heightMap[_219]
@ arm/soar_wram.arm.c:90: 	int camera_terrain_ht = getPtHeight(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [r9, #48]	@ _71, CurrentProc_108(D)->sPlayerPosY
	ldr	ip, [r9, #44]	@ _70, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orr	r2, ip, r1	@ tmp596, _70, _71
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r3, #0	@ _221,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	r2, #1024	@ tmp596,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movcs	r2, #0	@ _210,
@ arm/soar_wram.arm.c:159: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrcc	r2, .L118+52	@ tmp597,
	addcc	r2, r2, ip	@ tmp599, tmp597, _70
	ldrbcc	r2, [r2, r1, lsl #10]	@ zero_extendqisi2	@ _210, heightMap[_208]
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r2, r3	@ _210, _221
	movge	lr, r2	@ tmp601, _210
	movlt	lr, r3	@ tmp601, _221
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r1, r9, #52	@,,
	ldm	r1, {r1, r8}	@,,
@ arm/soar_wram.arm.c:91: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	sub	ip, r1, #48	@ camera_ht, _72,
@ arm/soar_wram.arm.c:92: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	ip, lr	@ camera_ht, tmp601
	bge	.L27		@,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r1, r1, #48	@ tmp602, _72,
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	add	r8, r8, #1	@ prephitmp_560, prephitmp_560,
@ arm/soar_wram.arm.c:93: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r1, [r9, #52]	@ tmp602, CurrentProc_108(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:94: 		CurrentProc->sPlayerStepZ += 1;
	str	r8, [r9, #56]	@ prephitmp_560, CurrentProc_108(D)->sPlayerStepZ
.L28:
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	tst	r0, #1	@ _63,
	beq	.L29		@,
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r9, #52]	@ _85, CurrentProc_108(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:104: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	cmp	r3, #304	@ _85,
	blt	.L115		@,
.L29:
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ldr	r3, [r9, #44]	@ _89, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _89,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [sp, #36]	@ _89, %sfp
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	ble	.L30		@,
@ arm/soar_wram.arm.c:112: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp628,
	str	r3, [sp, #36]	@ tmp628, %sfp
	str	r3, [r9, #44]	@ tmp628, CurrentProc_108(D)->sPlayerPosX
.L31:
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r3, [r9, #48]	@ _90, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	cmp	r3, #1024	@ _90,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [sp, #40]	@ _90, %sfp
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ble	.L32		@,
@ arm/soar_wram.arm.c:114: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	mov	r3, #1024	@ tmp630,
	str	r3, [sp, #40]	@ tmp630, %sfp
	str	r3, [r9, #48]	@ tmp630, CurrentProc_108(D)->sPlayerPosY
.L33:
@ arm/soar_wram.arm.c:292: 	int angle = CurrentProc->sPlayerYaw;
	ldr	r5, [r9, #60]	@ angle, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	ldr	r3, [r9, #84]	@ _229, CurrentProc_108(D)->sunsetVal
@ arm/soar_wram.arm.c:293: 	int tangent = (angle+4)&0xF;
	add	r4, r5, #4	@ tmp632, angle,
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	cmp	r3, #4	@ _229,
@ arm/soar_wram.arm.c:293: 	int tangent = (angle+4)&0xF;
	and	r4, r4, #15	@ tangent, tmp632,
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	bgt	.L34		@,
	cmp	r3, #2	@ _229,
	bgt	.L35		@,
@ arm/soar_wram.arm.c:305: 			sky = (int)(&SkyBG);
	ldrls	r3, .L118+56	@ sky,
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	bhi	.L36		@,
.L39:
@ arm/soar_wram.arm.c:318: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	add	r2, r5, r5, lsl #2	@ tmp637, angle, angle,
	lsl	r2, r2, #9	@ tmp639, tmp637,
	add	r2, r2, r8, lsl #1	@ tmp640, tmp639, prephitmp_560,
	add	r3, r3, r2, lsl #2	@ tmp642, sky, tmp640,
	sub	r0, r3, #400	@, tmp642,
	mov	r2, #10240	@,
	ldr	r1, [r9, #64]	@, CurrentProc_108(D)->vid_page
	ldr	r6, .L118+60	@ tmp644,
	mov	lr, pc
	bx	r6		@ tmp644
@ arm/soar_wram.arm.c:322: 	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer
	mov	r3, #0	@ tmp645,
	ldr	r2, .L118+64	@,
	add	r1, sp, #72	@,,
	add	r0, sp, #68	@,,
	str	r3, [sp, #68]	@ tmp645, tmp
	mov	lr, pc
	bx	r6		@ tmp644
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	lsl	r3, r8, #4	@ tmp650, prephitmp_560,
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	add	r3, r3, #380	@ _268, tmp650,
	add	r2, r3, #3	@ _268, _268,
@ arm/soar_wram.arm.c:318: 	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	lsl	r3, r8, #1	@ _238, prephitmp_560,
@ arm/soar_wram.arm.c:326: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	add	r3, r3, #24	@ zdist, _238,
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r3, r2	@ zdist, _268
	str	r2, [sp, #44]	@ _268, %sfp
@ arm/soar_wram.arm.c:326: 	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
	str	r3, [sp, #32]	@ zdist, %sfp
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	bgt	.L53		@,
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	rsb	r3, r5, #0	@ tmp657, angle
	and	r3, r3, #15	@ _567, tmp657,
	lsl	r3, r3, #9	@ tmp771, _567,
	str	r3, [sp, #56]	@ tmp771, %sfp
	rsb	r3, r4, #0	@ tmp658, tangent
	lsl	r2, r5, #9	@ tmp767, angle,
	and	r3, r3, #15	@ _571, tmp658,
	str	r2, [sp, #48]	@ tmp767, %sfp
	lsl	r3, r3, #9	@ tmp772, _571,
	lsl	r2, r4, #9	@ tmp768, tangent,
	str	r2, [sp, #52]	@ tmp768, %sfp
	str	r3, [sp, #60]	@ tmp772, %sfp
	b	.L52		@
.L43:
@ arm/soar_wram.arm.c:361: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	sub	r10, r3, r10	@ tmp749, _280, _283
@ arm/soar_wram.arm.c:361: 				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
	cmp	r10, #6	@ tmp749,
	bgt	.L116		@,
.L41:
@ arm/soar_wram.arm.c:338: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	ldr	r3, [sp, #28]	@ _546, %sfp
@ arm/soar_wram.arm.c:338: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r4, r4, #1	@ i, i,
@ arm/soar_wram.arm.c:338: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	add	r6, r6, r3	@ ivtmp.47, ivtmp.47, _546
	ldr	r3, [sp, #24]	@ _543, %sfp
	cmp	r4, #128	@ i,
	add	r5, r5, r3	@ ivtmp.48, ivtmp.48, _543
	bne	.L51		@,
@ arm/soar_wram.arm.c:328: 		zdist+=INC_ZSTEP){
	ldr	r1, [sp, #32]	@ zdist, %sfp
	asr	r3, r1, #7	@ tmp762, zdist,
	asr	r2, r1, #8	@ tmp764, zdist,
	add	r3, r3, r1, asr #6	@ tmp763, tmp762, zdist,
	add	r3, r3, r2, lsl #2	@ tmp766, tmp763, tmp764,
	add	r3, r3, #2	@ _330, tmp766,
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	ldr	r2, [sp, #44]	@ _268, %sfp
@ arm/soar_wram.arm.c:328: 		zdist+=INC_ZSTEP){
	add	r3, r1, r3	@ zdist, zdist, _330
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	cmp	r2, r3	@ _268, zdist
@ arm/soar_wram.arm.c:328: 		zdist+=INC_ZSTEP){
	str	r3, [sp, #32]	@ zdist, %sfp
@ arm/soar_wram.arm.c:327: 		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
	blt	.L53		@,
.L52:
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r5, #0	@ ivtmp.48,
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #32]	@ zdist, %sfp
	ldr	r3, [sp, #48]	@ tmp767, %sfp
	ldr	ip, .L118+68	@ tmp834,
	add	r3, r3, r0	@ tmp661, tmp767, zdist
	lsl	r3, r3, #1	@ tmp662, tmp661,
	ldrsh	r1, [ip, r3]	@ _251, pleftmatrix[angle_225][zdist_485]
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #56]	@ tmp771, %sfp
	add	r3, r3, r0	@ tmp666, tmp771, zdist
	lsl	r3, r3, #1	@ tmp667, tmp666,
	ldrsh	r2, [ip, r3]	@ _257, pleftmatrix[_567][zdist_485]
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #52]	@ tmp768, %sfp
	add	r3, r3, r0	@ tmp672, tmp768, zdist
	lsl	r3, r3, #1	@ tmp673, tmp672,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[tangent_227][zdist_485], pleftmatrix[tangent_227][zdist_485]
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	lr, [sp, #36]	@ _89, %sfp
@ arm/soar_wram.arm.c:334: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	sub	r3, r3, r1	@ tmp676, pleftmatrix[tangent_227][zdist_485], _251
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r1, r1, lr	@ _252, _251, _89
	str	r1, [sp, #12]	@ _252, %sfp
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	mov	r1, r0	@ zdist, zdist
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	mov	r6, r5	@ ivtmp.47, ivtmp.48
@ arm/soar_wram.arm.c:338: 		for (int i=0; i<(MODE5_HEIGHT); i++)
	mov	r4, r5	@ i, ivtmp.48
@ arm/soar_wram.arm.c:334: 		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
	lsl	r3, r3, #1	@ _546, tmp676,
	str	r3, [sp, #28]	@ _546, %sfp
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r3, [sp, #60]	@ tmp772, %sfp
	add	r3, r3, r0	@ tmp679, tmp772, zdist
	lsl	r3, r3, #1	@ tmp680, tmp679,
	ldrsh	r3, [ip, r3]	@ pleftmatrix[_571][zdist_485], pleftmatrix[_571][zdist_485]
@ arm/soar_wram.arm.c:335: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	sub	r3, r3, r2	@ tmp683, pleftmatrix[_571][zdist_485], _257
@ arm/soar_wram.arm.c:335: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	lsl	r3, r3, #1	@ _543, tmp683,
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	ldr	r0, [sp, #40]	@ _90, %sfp
@ arm/soar_wram.arm.c:335: 		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
	str	r3, [sp, #24]	@ _543, %sfp
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	asr	r3, r1, #1	@ _282, zdist,
	mov	fp, r3	@ _282, _282
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	add	r2, r2, r0	@ _258, _257, _90
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	lsl	r3, r3, #8	@ tmp778, _282,
@ arm/soar_wram.arm.c:218: 	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	str	r2, [sp, #16]	@ _258, %sfp
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	str	r3, [sp, #20]	@ tmp778, %sfp
	add	r7, sp, #71	@ tmp831,,
.L51:
@ arm/soar_wram.arm.c:346: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2	@ _280, MEM[(unsigned char *)_542]
@ arm/soar_wram.arm.c:346: 			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
	cmp	r3, #159	@ _280,
	bhi	.L41		@,
@ arm/soar_wram.arm.c:340: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #12]	@ _252, %sfp
	add	r0, r2, r6, asr #8	@ _276, _252, ivtmp.47,
@ arm/soar_wram.arm.c:340: 			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
	ldr	r2, [sp, #16]	@ _258, %sfp
	add	lr, r2, r5, asr #8	@ _279, _258, ivtmp.48,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	cmp	lr, #1024	@ _279,
	cmplt	r0, #1024	@, _276,
	movge	r2, #1	@ _339,
	movlt	r2, #0	@ _339,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movge	r10, #0	@ _346,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	str	r2, [sp, #8]	@ _339, %sfp
	bge	.L42		@,
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r2, r0, lr	@ tmp789, _276, _279
@ arm/soar_wram.arm.c:159: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldrpl	r2, .L118+52	@ tmp856,
	addpl	r2, r2, r0	@ tmp696, tmp856, _276
	ldrbpl	r10, [r2, lr, lsl #10]	@ zero_extendqisi2	@ _346, heightMap[_344]
@ arm/soar_wram.arm.c:158: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	ldrmi	r10, [sp, #8]	@ _346, %sfp
.L42:
@ arm/soar_wram.arm.c:168: 	height = (int)(hosTables[altitude][zdist>>1][height]);
	ldr	r2, [sp, #20]	@ tmp778, %sfp
	rsb	ip, r8, r8, lsl #8	@ tmp704, prephitmp_560, prephitmp_560,
	rsb	ip, ip, ip, lsl #8	@ tmp706, tmp704, tmp704,
	sub	r2, r2, fp	@ tmp701, tmp778, _282
	add	r2, r2, ip	@ tmp707, tmp701, tmp706
	ldr	ip, .L118+72	@ tmp859,
	add	r2, ip, r2	@ tmp708, tmp859, tmp707
	ldrb	r10, [r2, r10]	@ zero_extendqisi2	@ _283, hosTables[prephitmp_562][_282][_347]
@ arm/soar_wram.arm.c:349: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	cmp	r3, r10	@ _285, _283
@ arm/soar_wram.arm.c:349: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	mov	r1, r3	@ _285, _280
@ arm/soar_wram.arm.c:349: 				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
	bcs	.L43		@,
@ arm/soar_wram.arm.c:352: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	ldr	r3, [sp, #32]	@ zdist, %sfp
	cmp	r3, #40	@ zdist,
	bne	.L44		@,
@ arm/soar_wram.arm.c:352: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	sub	r3, r4, #61	@ tmp710, i,
	cmp	r3, #6	@ tmp710,
@ arm/soar_wram.arm.c:351: 					u16 clr = 0; //default to shadow
	movls	r0, #0	@ clr,
@ arm/soar_wram.arm.c:352: 					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
	bhi	.L44		@,
.L45:
@ arm/soar_wram.arm.c:381: 	u16* base = vid_page + (offset);
	ldr	r3, [r9, #64]	@ CurrentProc_108(D)->vid_page, CurrentProc_108(D)->vid_page
@ arm/soar_wram.arm.c:380: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r2, r4, r4, lsl #2	@ tmp741, i, i,
@ arm/soar_wram.arm.c:380: 	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	add	r2, r1, r2, lsl #5	@ offset, _285, tmp741,
@ arm/soar_wram.arm.c:381: 	u16* base = vid_page + (offset);
	add	r3, r3, r2, lsl #1	@ base, CurrentProc_108(D)->vid_page, offset,
@ arm/soar_wram.arm.c:357: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	sub	r1, r10, r1	@ tmp746, _283, _285
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	add	r1, r3, r1, lsl #1	@ _450, base, tmp746,
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r3, r1	@ base, _450
	bcs	.L50		@,
.L49:
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	strh	r0, [r3], #2	@ movhi	@ clr, MEM[(u16 *)i_484]
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	cmp	r3, r1	@ base, _450
	bcc	.L49		@,
.L50:
@ arm/soar_wram.arm.c:358: 				    yBuffer[i] = height_on_screen;
	strb	r10, [r7]	@ _283, MEM[(unsigned char *)_542]
	b	.L41		@
.L111:
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, [r9, #68]	@ CurrentProc_108(D)->ShowMap, CurrentProc_108(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_108(D)->ShowMap,
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r5, r5, #170	@ _586, posY,
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L117		@,
.L10:
@ arm/soar_wram.arm.c:201: 		loc = WorldMapNodes[posY][posX];
	ldr	r3, .L118+76	@ tmp443,
@ arm/soar_wram.arm.c:200: 		posY = (posY-MAP_YOFS)>>6;
	asr	r5, r5, #6	@ posY, _586,
@ arm/soar_wram.arm.c:201: 		loc = WorldMapNodes[posY][posX];
	add	r3, r3, r5, lsl #4	@ tmp447, tmp443, posY,
	ldrb	r3, [r3, r6, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_192][posX_190]
@ arm/soar_wram.arm.c:203: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L118+28	@ tmp449,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_195], translatedLocations[_195]
@ arm/soar_wram.arm.c:204: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:203: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r9, #80]	@ translatedLocations[_195], CurrentProc_108(D)->location
@ arm/soar_wram.arm.c:204: 	if (loc>0) {
	beq	.L8		@,
@ arm/soar_wram.arm.c:205: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp455, loc,
	add	r3, r3, #-905969664	@ tmp458, tmp455,
	add	r3, r3, #3932160	@ tmp458, tmp458,
	lsr	r3, r3, r2	@ tmp457, tmp458,
	str	r3, [sp]	@ tmp457,
	mov	r0, #8	@,
	ldr	r3, .L118+80	@,
	mov	r1, r2	@,
	mov	lr, pc
	bx	r4		@ tmp775
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r4, .L118+32	@ tmp770,
	ldrh	r3, [r4, #4]	@ _1, gKeyState.heldKeys
@ arm/soar_wram.arm.c:15: 	if (gKeyState.heldKeys & DPAD_LEFT){
	tst	r3, #32	@ _1,
	beq	.L11		@,
.L112:
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #60]	@ _3, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp466, _3,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	sub	r3, r3, #1	@ tmp475, _3,
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L118+36	@ tmp774,
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L118+40	@ tmp773,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _10, tmp475,
@ arm/soar_wram.arm.c:18: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r9, #60]	@ _10, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp477, _10,
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_10], cam_pivot_dx_Angles[_10]
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_10], cam_pivot_dy_Angles[_10]
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_3], cam_pivot_dx_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #48]	@ CurrentProc_108(D)->sPlayerPosY, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_3], cam_pivot_dy_Angles[_3]
@ arm/soar_wram.arm.c:17: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_3], CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp484, cam_pivot_dy_Angles[_10],
	rsb	r3, r3, r1, asr #2	@ tmp485, tmp484, cam_pivot_dy_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r9, #44]	@ CurrentProc_108(D)->sPlayerPosX, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:20: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp485, newy
@ arm/soar_wram.arm.c:22: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r9, #48]	@ newy, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp494, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:16: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_3], CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp495, tmp494, cam_pivot_dx_Angles[_10],
@ arm/soar_wram.arm.c:19: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp495, newx
@ arm/soar_wram.arm.c:21: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r9, #44]	@ newx, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:23: 		BumpScreen(bump_left);
	mov	r0, #2	@,
	bl	BumpScreen		@
	b	.L12		@
.L113:
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #60]	@ _20, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsl	r2, r3, #1	@ tmp502, _20,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	add	r3, r3, #1	@ tmp511, _20,
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L118+36	@ tmp774,
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, .L118+40	@ tmp773,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	and	r3, r3, #15	@ _27, tmp511,
@ arm/soar_wram.arm.c:28: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r9, #60]	@ _27, CurrentProc_108(D)->sPlayerYaw
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsl	r3, r3, #1	@ tmp513, _27,
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	ip, [r5, r3]	@ cam_pivot_dx_Angles[_27], cam_pivot_dx_Angles[_27]
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r1, [r6, r3]	@ cam_pivot_dy_Angles[_27], cam_pivot_dy_Angles[_27]
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r0, [r5, r2]	@ cam_pivot_dx_Angles[_20], cam_pivot_dx_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r9, #48]	@ CurrentProc_108(D)->sPlayerPosY, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r2, [r6, r2]	@ cam_pivot_dy_Angles[_20], cam_pivot_dy_Angles[_20]
@ arm/soar_wram.arm.c:27: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r2, r2, r3	@ newy, cam_pivot_dy_Angles[_20], CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, r1, #3	@ tmp520, cam_pivot_dy_Angles[_27],
	rsb	r3, r3, r1, asr #2	@ tmp521, tmp520, cam_pivot_dy_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	lr, [r9, #44]	@ CurrentProc_108(D)->sPlayerPosX, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:30: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r2	@ newy, tmp521, newy
@ arm/soar_wram.arm.c:32: 		CurrentProc->sPlayerPosY = newy;
	str	r3, [r9, #48]	@ newy, CurrentProc_108(D)->sPlayerPosY
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	bic	r3, ip, #3	@ tmp530, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:26: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r0, r0, lr	@ newx, cam_pivot_dx_Angles[_20], CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	rsb	r3, r3, ip, asr #2	@ tmp531, tmp530, cam_pivot_dx_Angles[_27],
@ arm/soar_wram.arm.c:29: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	add	r3, r3, r0	@ newx, tmp531, newx
@ arm/soar_wram.arm.c:31: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r9, #44]	@ newx, CurrentProc_108(D)->sPlayerPosX
@ arm/soar_wram.arm.c:33: 		BumpScreen(bump_right);
	mov	r0, #3	@,
	bl	BumpScreen		@
	b	.L12		@
.L116:
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	mov	r2, #0	@ tmp760,
@ arm/soar_wram.arm.c:381: 	u16* base = vid_page + (offset);
	add	r1, r4, r4, lsl #2	@ tmp752, i, i,
	add	r3, r3, r1, lsl #5	@ tmp754, _280, tmp752,
	sub	r3, r3, #1	@ tmp755, tmp754,
@ arm/soar_wram.arm.c:382: 	for (u16* i = base; i < base+ylen; i++) *i = color;
	ldr	r1, [r9, #64]	@ CurrentProc_108(D)->vid_page, CurrentProc_108(D)->vid_page
	lsl	r3, r3, #1	@ tmp757, tmp755,
	strh	r2, [r1, r3]	@ movhi	@ tmp760, *base_319
	b	.L41		@
.L44:
@ arm/soar_wram.arm.c:354: 						clr = getPointColour(offsetPoint.x, offsetPoint.y, CurrentProc->sunsetVal); //if not in shadow
	ldr	r2, [r9, #84]	@ _288, CurrentProc_108(D)->sunsetVal
@ arm/soar_wram.arm.c:140: 	if ((sunsetVal > 0) & (sunsetVal<8))
	sub	r3, r2, #1	@ tmp711, _288,
@ arm/soar_wram.arm.c:140: 	if ((sunsetVal > 0) & (sunsetVal<8))
	cmp	r3, #6	@ tmp711,
@ arm/soar_wram.arm.c:142: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	ldr	r3, [sp, #8]	@ _339, %sfp
@ arm/soar_wram.arm.c:140: 	if ((sunsetVal > 0) & (sunsetVal<8))
	bhi	.L46		@,
@ arm/soar_wram.arm.c:142: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #0	@ _339,
	bne	.L64		@,
@ arm/soar_wram.arm.c:142: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, r0, lr	@ tmp790, _276, _279
	bmi	.L64		@,
@ arm/soar_wram.arm.c:143: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ _357, _276, _279,
@ arm/soar_wram.arm.c:145: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldr	r1, .L118+84	@ tmp861,
	ldr	r0, .L118+88	@ tmp862,
@ arm/soar_wram.arm.c:143: 		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsl	r3, r3, #1	@ tmp715, _357,
@ arm/soar_wram.arm.c:145: 		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	ldrh	r1, [r1, r3]	@, colourMap_sunset[_357]
	ldrh	r0, [r0, r3]	@, colourMap[_357]
	bl	iwram_clr_blend_asm		@
@ arm/soar_wram.arm.c:357: 				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
	ldrb	r1, [r7]	@ zero_extendqisi2	@ _285, MEM[(unsigned char *)_542]
.L47:
@ arm/soar_wram.arm.c:355: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	ldr	r3, [sp, #32]	@ zdist, %sfp
	cmp	r3, #384	@ zdist,
@ arm/soar_wram.arm.c:355: 					    if (zdist > (FOG_DISTANCE+180)) clr |= fogmask; //if in fog
	orrgt	r0, r0, #15552	@ tmp736, clr,
	orrgt	r0, r0, #35	@ tmp736, tmp736,
	lslgt	r0, r0, #16	@ clr, tmp736,
	lsrgt	r0, r0, #16	@ clr, clr,
	b	.L45		@
.L46:
@ arm/soar_wram.arm.c:147: 	if (sunsetVal){
	cmp	r2, #0	@ _288,
	beq	.L48		@,
@ arm/soar_wram.arm.c:148: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	cmp	r3, #0	@ _339,
	bne	.L62		@,
@ arm/soar_wram.arm.c:148: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	orrs	r3, r0, lr	@ tmp791, _276, _279
	bmi	.L62		@,
@ arm/soar_wram.arm.c:149: 		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ tmp726, _276, _279,
	ldr	r2, .L118+84	@ tmp863,
	lsl	r3, r3, #1	@ tmp727, tmp726,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L47		@
.L64:
@ arm/soar_wram.arm.c:152: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	mov	r0, #6208	@ clr,
	b	.L47		@
.L48:
@ arm/soar_wram.arm.c:152: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	cmp	r3, #0	@ _339,
	bne	.L64		@,
@ arm/soar_wram.arm.c:152: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	orrs	r3, r0, lr	@ tmp792, _276, _279
	bmi	.L64		@,
@ arm/soar_wram.arm.c:153: 		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	add	r3, r0, lr, lsl #10	@ tmp732, _276, _279,
	ldr	r2, .L118+88	@ tmp864,
	lsl	r3, r3, #1	@ tmp733, tmp732,
	ldrh	r0, [r2, r3]	@ clr,
	b	.L47		@
.L62:
@ arm/soar_wram.arm.c:148: 		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
	mov	r0, #2080	@ clr,
	b	.L47		@
.L53:
@ arm/soar_wram.arm.c:373: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	ldr	r0, [r9, #64]	@, CurrentProc_108(D)->vid_page
	bl	vid_flip		@
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	ldr	r2, .L118+92	@ tmp653,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp655, MEM[(int *)33816568B],
@ arm/soar_wram.arm.c:373: 	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
	str	r0, [r9, #64]	@ tmp787, CurrentProc_108(D)->vid_page
@ arm/soar_wram.arm.c:118: 	FPS_COUNTER += 1;
	str	r3, [r2, #4088]	@ tmp655, MEM[(int *)33816568B]
.L1:
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L34:
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	sub	r3, r3, #5	@ tmp633, _229,
	cmp	r3, #1	@ tmp633,
@ arm/soar_wram.arm.c:313: 			sky = (int)(&SkyBG_darker);
	ldrls	r3, .L118+96	@ sky,
@ arm/soar_wram.arm.c:301: 	switch (CurrentProc->sunsetVal){
	bls	.L39		@,
.L36:
@ arm/soar_wram.arm.c:316: 			sky = (int)(&SkyBG_sunset);
	ldr	r3, .L118+100	@ sky,
	b	.L39		@
.L16:
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r3, [r9, #84]	@ _53, CurrentProc_108(D)->sunsetVal
@ arm/soar_wram.arm.c:56: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r3, #0	@ _53,
	beq	.L19		@,
	mvn	r0, #0	@ tmp563,
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	sub	r3, r3, #1	@ tmp564, _53,
	str	r3, [r9, #84]	@ tmp564, CurrentProc_108(D)->sunsetVal
	str	r0, [r9, #88]	@ tmp563, CurrentProc_108(D)->sunTransition
.L17:
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r3, [r9, #84]	@ _97, CurrentProc_108(D)->sunsetVal
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	sub	r8, r3, #1	@ tmp567, _97,
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r8, #6	@ tmp567,
@ arm/soar_wram.arm.c:69: 			CurrentProc->sunTransition = 0;
	movhi	r3, #0	@ tmp569,
	strhi	r3, [r9, #88]	@ tmp569, CurrentProc_108(D)->sunTransition
@ arm/soar_wram.arm.c:63: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	bhi	.L18		@,
	b	.L20		@
.L110:
@ arm/soar_wram.arm.c:184: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L118+104	@ tmp414,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp414,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L118+108	@,
	mov	lr, pc
	bx	r4		@ tmp775
@ arm/soar_wram.arm.c:186: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:186: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L118+92	@ tmp417,
@ arm/soar_wram.arm.c:186: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp420, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp420, tmp420,
	lsl	r1, r1, #16	@ tmp422, tmp420,
	lsr	r1, r1, #16	@ tmp422, tmp422,
	str	r1, [sp]	@ tmp422,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L118+112	@,
	mov	lr, pc
	bx	r4		@ tmp775
	b	.L6		@
.L32:
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	ldr	r3, [sp, #40]	@ _90, %sfp
	cmp	r3, #0	@ _90,
@ arm/soar_wram.arm.c:115: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movlt	r3, #0	@ tmp631,
	strlt	r3, [sp, #40]	@ tmp631, %sfp
	strlt	r3, [r9, #48]	@ tmp631, CurrentProc_108(D)->sPlayerPosY
	b	.L33		@
.L30:
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	ldr	r3, [sp, #36]	@ _89, %sfp
	cmp	r3, #0	@ _89,
@ arm/soar_wram.arm.c:113: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movlt	r3, #0	@ tmp629,
	strlt	r3, [sp, #36]	@ tmp629, %sfp
	strlt	r3, [r9, #44]	@ tmp629, CurrentProc_108(D)->sPlayerPosX
	b	.L31		@
.L27:
@ arm/soar_wram.arm.c:96: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	tst	r0, #2	@ _63,
	beq	.L28		@,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r3, r3, #48	@ tmp607, _221,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r3, ip	@ tmp612, camera_ht
	movge	r3, #0	@ tmp612,
	movlt	r3, #1	@ tmp612,
	cmp	r1, #64	@ _72,
	movle	r3, #0	@ tmp612,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	add	r2, r2, #48	@ tmp613, _210,
@ arm/soar_wram.arm.c:97: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	cmp	r2, ip	@ tmp613, camera_ht
	movge	r3, #0	@, tmp619
	andlt	r3, r3, #1	@,, tmp619, tmp612
	cmp	r3, #0	@ tmp619,
	beq	.L28		@,
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	sub	r3, r8, #1	@ tmp620, prephitmp_560,
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	mov	r0, #1	@,
@ arm/soar_wram.arm.c:98: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	ip, [r9, #52]	@ camera_ht, CurrentProc_108(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:99: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r9, #56]	@ tmp620, CurrentProc_108(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:100: 			BumpScreen(bump_down);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:103: 	if (gKeyState.heldKeys & A_BUTTON){
	ldrh	r0, [r4, #4]	@ _63, gKeyState.heldKeys
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r8, [r9, #56]	@ prephitmp_560, CurrentProc_108(D)->sPlayerStepZ
	b	.L28		@
.L109:
@ arm/soar_wram.arm.c:177: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp394,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L118+12	@,
	ldr	r4, .L118+16	@ tmp775,
	str	ip, [sp]	@ tmp394,
	mov	lr, pc
	bx	r4		@ tmp775
	b	.L3		@
.L114:
@ arm/soar_wram.arm.c:51: 		EndLoop(CurrentProc);
	mov	r0, r9	@, CurrentProc
	bl	EndLoop		@
@ arm/soar_wram.arm.c:119: };
	add	sp, sp, #204	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	bx	lr	@
.L19:
	mov	r3, #1	@ tmp565,
@ arm/soar_wram.arm.c:57: 		else CurrentProc->sunTransition = 1;
	mov	r0, r3	@ prephitmp_523, _97
	str	r3, [r9, #88]	@ tmp565, CurrentProc_108(D)->sunTransition
@ arm/soar_wram.arm.c:58: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	str	r3, [r9, #84]	@ tmp565, CurrentProc_108(D)->sunsetVal
.L20:
@ arm/soar_wram.arm.c:65: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	add	r3, r3, r0	@ tmp568, _97, prephitmp_523
	str	r3, [r9, #84]	@ tmp568, CurrentProc_108(D)->sunsetVal
	b	.L18		@
.L117:
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r6, #4	@ tmp436, posX,
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L118+116	@ tmp441,
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r5, #4	@ tmp433, _586,
@ arm/soar_wram.arm.c:198: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp438, tmp436,
	lsl	r2, r2, #16	@, tmp433,
	lsl	r1, r1, #16	@, tmp438,
	str	r3, [sp]	@ tmp441,
	mov	r0, #8	@,
	ldr	r3, .L118+112	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r4		@ tmp775
	b	.L10		@
.L35:
@ arm/soar_wram.arm.c:309: 			sky = (int)(&SkyBG_lighter);
	ldr	r3, .L118+120	@ sky,
@ arm/soar_wram.arm.c:310: 			break;
	b	.L39		@
.L101:
@ arm/soar_wram.arm.c:36: 		BumpScreen(4); //reset
	mov	r0, #4	@,
	bl	BumpScreen		@
	b	.L107		@
.L115:
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	add	r2, r8, #1	@ tmp627, prephitmp_560,
@ arm/soar_wram.arm.c:105: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	add	r3, r3, #48	@ tmp626, _85,
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	mov	r0, #0	@,
@ arm/soar_wram.arm.c:105: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r3, [r9, #52]	@ tmp626, CurrentProc_108(D)->sPlayerPosZ
@ arm/soar_wram.arm.c:106: 			CurrentProc->sPlayerStepZ += 1;
	str	r2, [r9, #56]	@ tmp627, CurrentProc_108(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:107: 			BumpScreen(bump_up);
	bl	BumpScreen		@
@ arm/soar_wram.arm.c:294: 	int altitude = (CurrentProc->sPlayerStepZ);
	ldr	r8, [r9, #56]	@ prephitmp_560, CurrentProc_108(D)->sPlayerStepZ
	b	.L29		@
.L119:
	.align	2
.L118:
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
	.word	SkyBG
	.word	CpuFastSet
	.word	16777248
	.word	pleftmatrix
	.word	hosTables
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	colourMap_sunset
	.word	colourMap
	.word	33812480
	.word	SkyBG_darker
	.word	SkyBG_sunset
	.word	10848
	.word	gObj_64x64
	.word	gObj_8x8
	.word	51808
	.word	SkyBG_lighter
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
	.global	alphamasks
	.align	2
	.type	alphamasks, %object
	.size	alphamasks, 12
alphamasks:
	.short	0
	.short	1057
	.short	3171
	.short	7399
	.short	15855
	.short	32767
	.ident	"GCC: (devkitARM release 56) 11.1.0"
