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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ arm/soar_wram.arm.c:56: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	mov	r3, #50331648	@ tmp161,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ arm/soar_wram.arm.c:56: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldrb	r3, [r3, #20]	@ zero_extendqisi2	@ _11, MEM[(u8 *)50331668B]
@ arm/soar_wram.arm.c:57: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	tst	r3, #48	@ _11,
@ arm/soar_wram.arm.c:9: void NewWMLoop(SoarProc* CurrentProc){
	mov	r4, r0	@ CurrentProc, tmp252
	sub	sp, sp, #12	@,,
@ arm/soar_wram.arm.c:57: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	beq	.L35		@,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	tst	r3, #32	@ _11,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	ldreq	r3, .L40	@ tmp172,
@ arm/soar_wram.arm.c:58: 	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	beq	.L33		@,
@ arm/soar_wram.arm.c:56: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	and	r3, r3, #63	@ tmp174, _11,
@ arm/soar_wram.arm.c:59: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	cmp	r3, #47	@ tmp174,
@ arm/soar_wram.arm.c:59: 	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	ldrls	r3, .L40+4	@ tmp179,
@ arm/soar_wram.arm.c:60: 	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);
	ldrhi	r3, .L40+8	@ tmp182,
.L33:
	str	r3, [sp]	@ tmp182,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L40+12	@,
	ldr	r5, .L40+16	@ tmp251,
	mov	lr, pc
	bx	r5		@ tmp251
.L3:
@ arm/soar_wram.arm.c:62: 	if (CurrentProc->ShowMap)
	ldr	r3, [r4, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r3, #0	@ CurrentProc_6(D)->ShowMap,
	bne	.L36		@,
.L6:
@ arm/soar_wram.arm.c:70: 	if (CurrentProc->sunsetVal < 3)
	ldr	r3, [r4, #84]	@ CurrentProc_6(D)->sunsetVal, CurrentProc_6(D)->sunsetVal
	cmp	r3, #2	@ CurrentProc_6(D)->sunsetVal,
	bgt	.L7		@,
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r3, .L40+20	@ tmp198,
	ldr	r3, [r3, #208]	@ _23, MEM[(volatile vu32 *)50344144B]
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #40448	@ tmp199, _23,
@ arm/soar_wram.arm.c:75: 		switch(CurrentProc->sPlayerYaw){
	ldr	r2, [r4, #60]	@ _28, CurrentProc_6(D)->sPlayerYaw
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, #64	@ tmp199, tmp199,
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	ldr	r1, [r4, #56]	@ CurrentProc_6(D)->sPlayerStepZ, CurrentProc_6(D)->sPlayerStepZ
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	lsr	r3, r3, #10	@ tmp201, tmp199,
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	rsb	r3, r3, #80	@ tmp202, tmp201,
@ arm/soar_wram.arm.c:75: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #11	@ _28,
@ arm/soar_wram.arm.c:74: 		int flarey = 80 - (CurrentProc->sPlayerStepZ<<2) - ((g_REG_BG2X - 0x9e40)>>10);
	sub	r3, r3, r1, lsl #2	@ _27, tmp202, CurrentProc_6(D)->sPlayerStepZ,
@ arm/soar_wram.arm.c:75: 		switch(CurrentProc->sPlayerYaw){
	beq	.L17		@,
	bgt	.L9		@,
	cmp	r2, #9	@ _28,
	beq	.L18		@,
	cmp	r2, #10	@ _28,
	moveq	r1, #96	@ prephitmp_81,
	bne	.L7		@,
.L10:
@ arm/soar_wram.arm.c:85: 			ObjInsertSafe(9, flarex, flarey, &gObj_aff32x32, 0x3aa1+31);
	mov	ip, #15040	@ tmp208,
	lsl	r2, r3, #16	@, _27,
	mov	r0, #9	@,
	ldr	r3, .L40+24	@,
	str	ip, [sp]	@ tmp208,
	lsr	r2, r2, #16	@,,
	mov	lr, pc
	bx	r5		@ tmp251
.L7:
@ arm/soar_wram.arm.c:91: 	int posY = CurrentProc->sFocusPtY;
	ldr	r3, [r4, #76]	@ posY, CurrentProc_6(D)->sFocusPtY
@ arm/soar_wram.arm.c:95: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L40+28	@ tmp211,
@ arm/soar_wram.arm.c:95: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	sub	r1, r3, #171	@ tmp210, posY,
@ arm/soar_wram.arm.c:95: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	cmp	r1, r2	@ tmp210, tmp211
@ arm/soar_wram.arm.c:90: 	int posX = CurrentProc->sFocusPtX;
	ldr	r7, [r4, #72]	@ posX, CurrentProc_6(D)->sFocusPtX
@ arm/soar_wram.arm.c:95: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	bhi	.L14		@,
@ arm/soar_wram.arm.c:95: 	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
	ldr	r2, .L40+32	@ tmp215,
	sub	r1, r7, #1	@ tmp214, posX,
	cmp	r1, r2	@ tmp214, tmp215
	bls	.L37		@,
.L14:
@ arm/soar_wram.arm.c:101: 	CurrentProc->location = translatedLocations[loc];
	ldr	r3, .L40+36	@ tmp212,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ translatedLocations[0], translatedLocations[0]
	str	r3, [r4, #80]	@ translatedLocations[0], CurrentProc_6(D)->location
.L13:
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	mov	r0, r4	@, CurrentProc
	ldr	r3, .L40+40	@ tmp245,
	mov	lr, pc
	bx	r3		@ tmp245
@ arm/soar_wram.arm.c:12: 	if (thumb_loop(CurrentProc)){
	cmp	r0, #0	@ tmp253,
	bne	.L38		@,
@ arm/soar_wram.arm.c:17: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L9:
@ arm/soar_wram.arm.c:75: 		switch(CurrentProc->sPlayerYaw){
	cmp	r2, #12	@ _28,
	moveq	r1, #160	@ prephitmp_81,
	beq	.L10		@,
	b	.L7		@
.L37:
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r2, [r4, #68]	@ CurrentProc_6(D)->ShowMap, CurrentProc_6(D)->ShowMap
	cmp	r2, #0	@ CurrentProc_6(D)->ShowMap,
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	sub	r6, r3, #170	@ _107, posY,
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	bne	.L39		@,
.L15:
@ arm/soar_wram.arm.c:99: 		loc = WorldMapNodes[posY][posX];
	ldr	r2, .L40+44	@ tmp228,
@ arm/soar_wram.arm.c:98: 		posY = (posY-MAP_YOFS)>>6;
	asr	r3, r6, #6	@ posY, _107,
@ arm/soar_wram.arm.c:99: 		loc = WorldMapNodes[posY][posX];
	add	r3, r2, r3, lsl #4	@ tmp232, tmp228, posY,
	ldrb	r3, [r3, r7, asr #6]	@ zero_extendqisi2	@ loc, WorldMapNodes[posY_51][posX_49]
@ arm/soar_wram.arm.c:101: 	CurrentProc->location = translatedLocations[loc];
	ldr	r2, .L40+36	@ tmp234,
	ldrb	r2, [r2, r3]	@ zero_extendqisi2	@ translatedLocations[_54], translatedLocations[_54]
@ arm/soar_wram.arm.c:102: 	if (loc>0) {
	cmp	r3, #0	@ loc,
@ arm/soar_wram.arm.c:101: 	CurrentProc->location = translatedLocations[loc];
	str	r2, [r4, #80]	@ translatedLocations[_54], CurrentProc_6(D)->location
@ arm/soar_wram.arm.c:102: 	if (loc>0) {
	beq	.L13		@,
@ arm/soar_wram.arm.c:103: 		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	mov	r2, #16	@,
	lsl	r3, r3, #18	@ tmp240, loc,
	add	r3, r3, #-905969664	@ tmp243, tmp240,
	add	r3, r3, #3932160	@ tmp243, tmp243,
	lsr	r3, r3, r2	@ tmp242, tmp243,
	str	r3, [sp]	@ tmp242,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L40+48	@,
	mov	lr, pc
	bx	r5		@ tmp251
	b	.L13		@
.L36:
@ arm/soar_wram.arm.c:64: 		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	ldr	r0, .L40+52	@ tmp186,
	mov	r2, #0	@,
	str	r0, [sp]	@ tmp186,
	mov	r1, #176	@,
	mov	r0, #8	@,
	ldr	r3, .L40+56	@,
	mov	lr, pc
	bx	r5		@ tmp251
@ arm/soar_wram.arm.c:66: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	mov	r2, #0	@,
@ arm/soar_wram.arm.c:66: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, .L40+60	@ tmp189,
@ arm/soar_wram.arm.c:66: 	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	ldr	r1, [r1, #4092]	@ MEM[(int *)33816572B], MEM[(int *)33816572B]
	sub	r1, r1, #13632	@ tmp192, MEM[(int *)33816572B],
	sub	r1, r1, #31	@ tmp192, tmp192,
	lsl	r1, r1, #16	@ tmp194, tmp192,
	lsr	r1, r1, #16	@ tmp194, tmp194,
	str	r1, [sp]	@ tmp194,
	mov	r0, #8	@,
	mov	r1, r2	@,
	ldr	r3, .L40+64	@,
	mov	lr, pc
	bx	r5		@ tmp251
	b	.L6		@
.L35:
@ arm/soar_wram.arm.c:57: 	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	mov	ip, #51712	@ tmp166,
	mov	r2, #88	@,
	mov	r1, #104	@,
	mov	r0, #8	@,
	ldr	r3, .L40+12	@,
	ldr	r5, .L40+16	@ tmp251,
	str	ip, [sp]	@ tmp166,
	mov	lr, pc
	bx	r5		@ tmp251
	b	.L3		@
.L38:
@ arm/soar_wram.arm.c:13: 		iwram_Render_arm(CurrentProc);
	mov	r0, r4	@, CurrentProc
	ldr	r3, .L40+68	@ tmp246,
	mov	lr, pc
	bx	r3		@ tmp246
@ arm/soar_wram.arm.c:15: 		FPS_COUNTER += 1;
	ldr	r2, .L40+60	@ tmp247,
	ldr	r3, [r2, #4088]	@ MEM[(int *)33816568B], MEM[(int *)33816568B]
	add	r3, r3, #1	@ tmp249, MEM[(int *)33816568B],
	str	r3, [r2, #4088]	@ tmp249, MEM[(int *)33816568B]
@ arm/soar_wram.arm.c:17: };
	add	sp, sp, #12	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7, lr}	@
	bx	lr	@
.L18:
@ arm/soar_wram.arm.c:75: 		switch(CurrentProc->sPlayerYaw){
	mov	r1, #64	@ prephitmp_81,
	b	.L10		@
.L17:
	mov	r1, #128	@ prephitmp_81,
	b	.L10		@
.L39:
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r1, r7, #4	@ tmp221, posX,
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	ldr	r3, .L40+72	@ tmp226,
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	asr	r2, r6, #4	@ tmp218, _107,
@ arm/soar_wram.arm.c:96: 		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
	add	r1, r1, #176	@ tmp223, tmp221,
	lsl	r2, r2, #16	@, tmp218,
	lsl	r1, r1, #16	@, tmp223,
	str	r3, [sp]	@ tmp226,
	mov	r0, #8	@,
	ldr	r3, .L40+64	@,
	lsr	r2, r2, #16	@,,
	lsr	r1, r1, #16	@,,
	mov	lr, pc
	bx	r5		@ tmp251
	b	.L15		@
.L41:
	.align	2
.L40:
	.word	51728
	.word	51744
	.word	51760
	.word	gObj_32x32
	.word	ObjInsertSafe
	.word	50343936
	.word	gObj_aff32x32
	.word	682
	.word	1022
	.word	translatedLocations
	.word	thumb_loop
	.word	WorldMapNodes
	.word	gObj_32x8
	.word	10848
	.word	gObj_64x64
	.word	33812480
	.word	gObj_8x8
	.word	iwram_Render_arm
	.word	51808
	.size	NewWMLoop, .-NewWMLoop
	.ident	"GCC: (devkitARM release 56) 11.1.0"
