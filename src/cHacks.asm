	.cpu arm7tdmi
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"cHacks.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -march=armv4t -Os -fomit-frame-pointer -ffast-math -fno-jump-tables
	.text
	.align	1
	.global	NewWMLoop
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NewWMLoop, %function
NewWMLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ src/cHacks.c:118: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r2, .L32	@ tmp147,
@ src/cHacks.c:118: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldrh	r3, [r2, #4]	@ tmp149,
@ src/cHacks.c:113: void NewWMLoop(Proc* CurrentProc){
	movs	r5, r0	@ CurrentProc, tmp255
	ldr	r1, .L32+4	@ tmp254,
@ src/cHacks.c:118: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r3, r3, #26	@ tmp256, tmp149,
	bpl	.L2		@,
@ src/cHacks.c:119: 		sPlayerYaw = sPlayerYaw-1;
	ldrb	r3, [r1]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:119: 		sPlayerYaw = sPlayerYaw-1;
	subs	r3, r3, #1	@ tmp159,
	lsls	r3, r3, #24	@ _5, tmp159,
	lsrs	r3, r3, #24	@ _5, _5,
@ src/cHacks.c:119: 		sPlayerYaw = sPlayerYaw-1;
	strb	r3, [r1]	@ _5, MEM[(volatile u8 *)50351900B]
.L2:
@ src/cHacks.c:121: 	if (gKeyState.heldKeys & DPAD_RIGHT){
	ldrh	r3, [r2, #4]	@ tmp165,
	lsls	r3, r3, #27	@ tmp257, tmp165,
	bpl	.L3		@,
@ src/cHacks.c:122: 		sPlayerYaw = sPlayerYaw+1;
	ldrb	r3, [r1]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:122: 		sPlayerYaw = sPlayerYaw+1;
	adds	r3, r3, #1	@ tmp175,
	lsls	r3, r3, #24	@ _10, tmp175,
	lsrs	r3, r3, #24	@ _10, _10,
@ src/cHacks.c:122: 		sPlayerYaw = sPlayerYaw+1;
	strb	r3, [r1]	@ _10, MEM[(volatile u8 *)50351900B]
.L3:
@ src/cHacks.c:124: 	if (gKeyState.heldKeys & DPAD_UP){
	ldrh	r0, [r2, #4]	@ _11,
@ src/cHacks.c:124: 	if (gKeyState.heldKeys & DPAD_UP){
	lsls	r3, r0, #25	@ tmp258, _11,
	bpl	.L4		@,
@ src/cHacks.c:125: 		sPlayerPosZ += 0x10;
	ldr	r4, .L32+8	@ tmp185,
	ldr	r3, [r4]	@ _13, MEM[(volatile s32 *)50351896B]
	adds	r3, r3, #16	@ _15,
	str	r3, [r4]	@ _15, MEM[(volatile s32 *)50351896B]
.L4:
@ src/cHacks.c:127: 	if (gKeyState.heldKeys & DPAD_DOWN){
	lsls	r3, r0, #24	@ tmp259, _11,
	bpl	.L5		@,
@ src/cHacks.c:128: 		if (sPlayerPosZ > 0) sPlayerPosZ-= 0x10;
	ldr	r3, .L32+8	@ tmp192,
	ldr	r4, [r3]	@ _16, MEM[(volatile s32 *)50351896B]
@ src/cHacks.c:128: 		if (sPlayerPosZ > 0) sPlayerPosZ-= 0x10;
	cmp	r4, #0	@ _16,
	ble	.L5		@,
@ src/cHacks.c:128: 		if (sPlayerPosZ > 0) sPlayerPosZ-= 0x10;
	ldr	r4, [r3]	@ _17, MEM[(volatile s32 *)50351896B]
	subs	r4, r4, #16	@ _18,
	str	r4, [r3]	@ _18, MEM[(volatile s32 *)50351896B]
.L5:
@ src/cHacks.c:131:     sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldrb	r3, [r1]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:132:     cosYaw = COS_LOOKUP(sPlayerYaw);
	ldrb	r1, [r1]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:134:     if (gKeyState.heldKeys & A_BUTTON){
	lsls	r0, r0, #31	@ tmp260, _11,
	bpl	.L6		@,
@ src/cHacks.c:132:     cosYaw = COS_LOOKUP(sPlayerYaw);
	ldr	r0, .L32+12	@ tmp208,
	lsls	r1, r1, #1	@ tmp209, _22,
	ldrsh	r1, [r1, r0]	@ _24, gCosLookup
@ src/cHacks.c:131:     sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldr	r0, .L32+16	@ tmp211,
	lsls	r3, r3, #1	@ tmp212, _19,
@ src/cHacks.c:131:     sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldrsh	r7, [r3, r0]	@ sinYaw, gSinLookup
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	movs	r0, #7	@ tmp219,
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	ldr	r4, .L32+20	@ tmp210,
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	asrs	r3, r7, #31	@ tmp217, sinYaw,
	ands	r3, r0	@ tmp218, tmp219
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	ldr	r6, [r4]	@ _25, MEM[(volatile s32 *)50351888B]
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	adds	r3, r3, r7	@ tmp220, tmp218, sinYaw
	asrs	r3, r3, #3	@ tmp221, tmp220,
@ src/cHacks.c:135: 	    sPlayerPosX += sinYaw / 8;
	adds	r3, r3, r6	@ _27, tmp221, _25
	str	r3, [r4]	@ _27, MEM[(volatile s32 *)50351888B]
@ src/cHacks.c:136: 	    sPlayerPosY -= cosYaw / 8;
	ldr	r6, .L32+24	@ tmp223,
@ src/cHacks.c:136: 	    sPlayerPosY -= cosYaw / 8;
	asrs	r3, r1, #31	@ tmp227, _24,
	ands	r3, r0	@ tmp228, tmp219
@ src/cHacks.c:136: 	    sPlayerPosY -= cosYaw / 8;
	ldr	r4, [r6]	@ _28, MEM[(volatile s32 *)50351892B]
@ src/cHacks.c:136: 	    sPlayerPosY -= cosYaw / 8;
	adds	r3, r3, r1	@ tmp230, tmp228, _24
	asrs	r3, r3, #3	@ tmp231, tmp230,
@ src/cHacks.c:136: 	    sPlayerPosY -= cosYaw / 8;
	subs	r4, r4, r3	@ _30, _28, tmp231
	str	r4, [r6]	@ _30, MEM[(volatile s32 *)50351892B]
.L6:
@ src/cHacks.c:139: 	if (gKeyState.pressedKeys & B_BUTTON){
	ldrh	r3, [r2, #8]	@ tmp235,
	lsls	r3, r3, #30	@ tmp261, tmp235,
	bpl	.L1		@,
@ src/cHacks.c:140: 		g_LCDIOBuffer = 0;
	movs	r4, #0	@ tmp242,
	ldr	r3, .L32+28	@ tmp241,
@ src/cHacks.c:141: 		SetColorEffectsParameters(3,0,0,0x10);
	movs	r2, r4	@, tmp242
	movs	r1, r4	@, tmp242
	movs	r0, #3	@,
@ src/cHacks.c:140: 		g_LCDIOBuffer = 0;
	strh	r4, [r3]	@ tmp242, MEM[(volatile vu16 *)50344064B]
@ src/cHacks.c:141: 		SetColorEffectsParameters(3,0,0,0x10);
	ldr	r6, .L32+32	@ tmp244,
	movs	r3, #16	@,
	bl	.L34		@
@ src/cHacks.c:142: 		SetColorEffectsFirstTarget(0,0,0,0,0);
	movs	r2, r4	@, tmp242
	movs	r1, r4	@, tmp242
	movs	r3, r4	@, tmp242
	movs	r0, r4	@, tmp242
	str	r4, [sp]	@ tmp242,
	ldr	r6, .L32+36	@ tmp246,
	bl	.L34		@
@ src/cHacks.c:143: 		SetColorEffectBackdropFirstTarget(1);
	movs	r0, #1	@,
	ldr	r3, .L32+40	@ tmp247,
	bl	.L35		@
@ src/cHacks.c:144: 		gPaletteBuffer[0] = 0;
	ldr	r3, .L32+44	@ tmp248,
	strh	r4, [r3]	@ tmp242, gPaletteBuffer[0]
@ src/cHacks.c:145: 		EnablePaletteSync();
	ldr	r3, .L32+48	@ tmp251,
	bl	.L35		@
@ src/cHacks.c:146: 		BreakProcLoop(CurrentProc);
	movs	r0, r5	@, CurrentProc
	ldr	r3, .L32+52	@ tmp252,
	bl	.L35		@
.L1:
@ src/cHacks.c:148: };
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L33:
	.align	2
.L32:
	.word	gKeyState
	.word	50351900
	.word	50351896
	.word	gCosLookup
	.word	gSinLookup
	.word	50351888
	.word	50351892
	.word	50344064
	.word	SetColorEffectsParameters
	.word	SetColorEffectsFirstTarget
	.word	SetColorEffectBackdropFirstTarget
	.word	gPaletteBuffer
	.word	EnablePaletteSync
	.word	BreakProcLoop
	.size	NewWMLoop, .-NewWMLoop
	.align	1
	.global	SetUpNewWMGraphics
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetUpNewWMGraphics, %function
SetUpNewWMGraphics:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/cHacks.c:156: 	VBlankIntrWait();
	ldr	r3, .L37	@ tmp113,
@ src/cHacks.c:185: };
	@ sp needed	@
@ src/cHacks.c:156: 	VBlankIntrWait();
	bl	.L35		@
@ src/cHacks.c:157: 	ApplyPalettes(&wmPal, 0, 4); //copy 4 palettes to buffer
	movs	r2, #128	@,
	ldr	r3, .L37+4	@ tmp115,
	movs	r1, #0	@,
	ldr	r0, .L37+8	@ tmp114,
	bl	.L35		@
@ src/cHacks.c:158: 	LZ77UnCompVram(&wmTiles, CHARBLOCK(m7_charbase)); //let's try a different charbase
	ldr	r1, .L37+12	@,
	ldr	r0, .L37+16	@ tmp117,
	bl	LZ77UnCompVram		@
@ src/cHacks.c:159: 	LZ77UnCompVram(&wmMap, SCRBLOCK(m7_screenbase)); //screenbase
	ldr	r0, .L37+20	@ tmp119,
	ldr	r1, .L37+24	@,
	bl	LZ77UnCompVram		@
@ src/cHacks.c:163: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L37+28	@ tmp120,
	ldr	r2, .L37+32	@ tmp121,
	strh	r2, [r3]	@ tmp121, MEM[(volatile vu16 *)50344064B]
@ src/cHacks.c:169: 	g_REG_BG2PA=0xa0;	//escalado horizontal;
	movs	r2, #160	@ tmp124,
	ldr	r3, .L37+36	@ tmp123,
	strh	r2, [r3]	@ tmp124, MEM[(volatile vu16 *)50344136B]
@ src/cHacks.c:170: 	g_REG_BG2PD=0xbe;	//escalado vertical;
	ldr	r3, .L37+40	@ tmp126,
	adds	r2, r2, #30	@ tmp127,
	strh	r2, [r3]	@ tmp127, MEM[(volatile vu16 *)50344142B]
@ src/cHacks.c:171: 	g_REG_BG2X=0x1f4;	//desp horizontal
	ldr	r3, .L37+44	@ tmp129,
	adds	r2, r2, #55	@ tmp130,
	adds	r2, r2, #255	@ tmp130,
	str	r2, [r3]	@ tmp130, MEM[(volatile vu32 *)50344144B]
@ src/cHacks.c:172: 	g_REG_BG2Y=0x3c0;		//desp vert
	ldr	r3, .L37+48	@ tmp131,
	adds	r2, r2, #205	@ tmp132,
	adds	r2, r2, #255	@ tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/cHacks.c:177:     sPlayerPosX = Q_8_8(8, 0);
	movs	r3, #128	@ tmp134,
	ldr	r2, .L37+52	@ tmp133,
	lsls	r3, r3, #4	@ tmp134, tmp134,
	str	r3, [r2]	@ tmp134, MEM[(volatile s32 *)50351888B]
@ src/cHacks.c:178:     sPlayerPosY = Q_8_8(8, 0);
	ldr	r2, .L37+56	@ tmp135,
	str	r3, [r2]	@ tmp134, MEM[(volatile s32 *)50351892B]
@ src/cHacks.c:179:     sPlayerPosZ = Q_8_8(4, 0);
	movs	r2, #128	@ tmp138,
	ldr	r3, .L37+60	@ tmp137,
	lsls	r2, r2, #3	@ tmp138, tmp138,
	str	r2, [r3]	@ tmp138, MEM[(volatile s32 *)50351896B]
@ src/cHacks.c:180:     sPlayerYaw = 0;
	movs	r2, #0	@ tmp140,
	ldr	r3, .L37+64	@ tmp139,
	strb	r2, [r3]	@ tmp140, MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:185: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L38:
	.align	2
.L37:
	.word	VBlankIntrWait
	.word	CopyToPaletteBuffer
	.word	wmPal
	.word	100696064
	.word	wmTiles
	.word	wmMap
	.word	100710400
	.word	50344064
	.word	1029
	.word	50344136
	.word	50344142
	.word	50344144
	.word	50344148
	.word	50351888
	.word	50351892
	.word	50351896
	.word	50351900
	.size	SetUpNewWMGraphics, .-SetUpNewWMGraphics
	.align	1
	.global	CreateNewWorldMap
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CreateNewWorldMap, %function
CreateNewWorldMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/cHacks.c:41: 	START_PROC_BLOCKING(ProcWorldMap_new, CurrentProc); //create new proc with wm parent
	ldr	r3, .L40	@ tmp114,
@ src/cHacks.c:43: };
	@ sp needed	@
@ src/cHacks.c:40: void CreateNewWorldMap(Proc* CurrentProc){
	movs	r1, r0	@ CurrentProc, tmp117
@ src/cHacks.c:41: 	START_PROC_BLOCKING(ProcWorldMap_new, CurrentProc); //create new proc with wm parent
	movs	r0, r3	@ tmp114, tmp114
	ldr	r3, .L40+4	@ tmp115,
	bl	.L35		@
@ src/cHacks.c:42: 	m4aSongNumStart(0x6b);
	movs	r0, #107	@,
	ldr	r3, .L40+8	@ tmp116,
	bl	.L35		@
@ src/cHacks.c:43: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.word	ProcStartBlocking
	.word	m4aSongNumStart
	.size	CreateNewWorldMap, .-CreateNewWorldMap
	.global	__aeabi_uidiv
	.global	__aeabi_idiv
	.align	1
	.global	m7HblCallBack
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	m7HblCallBack, %function
m7HblCallBack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/cHacks.c:68: 	int currScanline = REG_VCOUNT;
	ldr	r3, .L46	@ tmp150,
	ldrh	r1, [r3]	@ MEM[(volatile vu16 *)67108870B], MEM[(volatile vu16 *)67108870B]
@ src/cHacks.c:66: void m7HblCallBack(){
	push	{r4, r5, r6, lr}	@
@ src/cHacks.c:72: 	if (currScanline > 159){
	cmp	r1, #159	@ currScanline,
	ble	.L43		@,
@ src/cHacks.c:73: 		REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
	ldr	r2, .L46+4	@ tmp155,
	subs	r3, r3, #6	@ tmp154,
	str	r2, [r3]	@ tmp155, MEM[(volatile u32 *)67108864B]
@ src/cHacks.c:74: 		REG_BG2CNT = BGCNT_PRIORITY(3) | BGCNT_256COLOR | BGCNT_CHARBASE(m7_charbase) | BGCNT_SCREENBASE(m7_screenbase) | BGCNT_WRAP | BGCNT_AFF1024x1024;
	ldr	r3, .L46+8	@ tmp156,
	ldr	r2, .L46+12	@ tmp157,
	strh	r2, [r3]	@ tmp157, MEM[(volatile vu16 *)67108876B]
.L42:
@ src/cHacks.c:103: };
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L43:
@ src/cHacks.c:78: 	if (currScanline < HORIZON) return;
	cmp	r1, #33	@ currScanline,
	ble	.L42		@,
@ src/cHacks.c:80: 	if (currScanline == HORIZON) REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON | DISPCNT_BG2_ON ;
	cmp	r1, #34	@ currScanline,
	bne	.L45		@,
@ src/cHacks.c:80: 	if (currScanline == HORIZON) REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON | DISPCNT_BG2_ON ;
	movs	r3, #128	@ tmp159,
	ldr	r2, .L46+16	@ tmp160,
	lsls	r3, r3, #19	@ tmp159, tmp159,
	str	r2, [r3]	@ tmp160, MEM[(volatile u32 *)67108864B]
.L45:
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	movs	r0, #128	@,
@ src/cHacks.c:84: 	int sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldr	r3, .L46+20	@ tmp161,
	ldrb	r5, [r3]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:85: 	int cosYaw = COS_LOOKUP(sPlayerYaw);
	ldrb	r6, [r3]	@ MEM[(volatile u8 *)50351900B], MEM[(volatile u8 *)50351900B]
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	ldr	r3, .L46+24	@ tmp169,
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	subs	r1, r1, #34	@ tmp170,
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	lsls	r0, r0, #9	@,,
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	ldr	r4, [r3]	@ _8, MEM[(volatile s32 *)50351896B]
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	bl	__aeabi_idiv		@
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	muls	r4, r0	@ tmp179, tmp208
@ src/cHacks.c:85: 	int cosYaw = COS_LOOKUP(sPlayerYaw);
	ldr	r3, .L46+28	@ tmp180,
	lsls	r6, r6, #1	@ tmp181, _5,
@ src/cHacks.c:85: 	int cosYaw = COS_LOOKUP(sPlayerYaw);
	ldrsh	r3, [r6, r3]	@ cosYaw, gCosLookup
@ src/cHacks.c:87: 	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
	asrs	r4, r4, #12	@ lam, tmp179,
@ src/cHacks.c:84: 	int sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldr	r2, .L46+32	@ tmp183,
@ src/cHacks.c:88:     lcf= lam*cosYaw>>8;                     // .12*.8 /.8 = .12
	muls	r3, r4	@ _12, lam
@ src/cHacks.c:84: 	int sinYaw = SIN_LOOKUP(sPlayerYaw);
	lsls	r5, r5, #1	@ tmp184, _2,
@ src/cHacks.c:84: 	int sinYaw = SIN_LOOKUP(sPlayerYaw);
	ldrsh	r0, [r5, r2]	@ sinYaw, gSinLookup
@ src/cHacks.c:89:     lsf= lam*sinYaw>>8;                     // .12*.8 /.8 = .12
	muls	r0, r4	@ _13, lam
@ src/cHacks.c:91:     REG_BG2PA= lcf>>4;
	asrs	r2, r3, #12	@ _14, _12,
@ src/cHacks.c:91:     REG_BG2PA= lcf>>4;
	ldr	r4, .L46+36	@ tmp187,
	lsls	r1, r2, #16	@ _15, _14,
	lsrs	r1, r1, #16	@ _15, _15,
	strh	r1, [r4]	@ _15, MEM[(volatile vu16 *)67108896B]
@ src/cHacks.c:92:     REG_BG2PC= lsf>>4;
	asrs	r4, r0, #12	@ _16, _13,
@ src/cHacks.c:92:     REG_BG2PC= lsf>>4;
	ldr	r5, .L46+40	@ tmp190,
	lsls	r1, r4, #16	@ _17, _16,
	lsrs	r1, r1, #16	@ _17, _17,
	strh	r1, [r5]	@ _17, MEM[(volatile vu16 *)67108900B]
@ src/cHacks.c:97:     REG_BG2X= sPlayerPosX - lxr + lyr;
	ldr	r1, .L46+44	@ tmp192,
	ldr	r5, [r1]	@ _19, MEM[(volatile s32 *)50351888B]
@ src/cHacks.c:95:     lxr= 120*(lcf>>4);
	movs	r1, #120	@ tmp196,
	muls	r2, r1	@ lxr, tmp196
@ src/cHacks.c:100:     lxr= 120*(lsf>>4);
	muls	r1, r4	@ lxr, _16
@ src/cHacks.c:89:     lsf= lam*sinYaw>>8;                     // .12*.8 /.8 = .12
	asrs	r0, r0, #8	@ lsf, _13,
@ src/cHacks.c:97:     REG_BG2X= sPlayerPosX - lxr + lyr;
	subs	r2, r5, r2	@ tmp198, _19, lxr
@ src/cHacks.c:96:     lyr= (M7_D*lsf)>>4;
	lsls	r0, r0, #3	@ lyr, lsf,
@ src/cHacks.c:97:     REG_BG2X= sPlayerPosX - lxr + lyr;
	adds	r0, r0, r2	@ _22, lyr, tmp198
@ src/cHacks.c:97:     REG_BG2X= sPlayerPosX - lxr + lyr;
	ldr	r2, .L46+48	@ tmp199,
	str	r0, [r2]	@ _22, MEM[(volatile vu32 *)67108904B]
@ src/cHacks.c:102:     REG_BG2Y= sPlayerPosY - lxr - lyr;
	ldr	r2, .L46+52	@ tmp200,
	ldr	r2, [r2]	@ _24, MEM[(volatile s32 *)50351892B]
@ src/cHacks.c:88:     lcf= lam*cosYaw>>8;                     // .12*.8 /.8 = .12
	asrs	r3, r3, #8	@ lcf, _12,
@ src/cHacks.c:102:     REG_BG2Y= sPlayerPosY - lxr - lyr;
	subs	r2, r2, r1	@ tmp203, _24, lxr
@ src/cHacks.c:101:     lyr= (M7_D*lcf)>>4; 
	lsls	r3, r3, #3	@ lyr, lcf,
@ src/cHacks.c:102:     REG_BG2Y= sPlayerPosY - lxr - lyr;
	subs	r3, r2, r3	@ _27, tmp203, lyr
@ src/cHacks.c:102:     REG_BG2Y= sPlayerPosY - lxr - lyr;
	ldr	r2, .L46+56	@ tmp207,
	str	r3, [r2]	@ _27, MEM[(volatile vu32 *)67108908B]
	b	.L42		@
.L47:
	.align	2
.L46:
	.word	67108870
	.word	4865
	.word	67108876
	.word	-2165
	.word	5889
	.word	50351900
	.word	50351896
	.word	gCosLookup
	.word	gSinLookup
	.word	67108896
	.word	67108900
	.word	50351888
	.word	67108904
	.word	50351892
	.word	67108908
	.size	m7HblCallBack, .-m7HblCallBack
	.align	1
	.global	SoarUsability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SoarUsability, %function
SoarUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/cHacks.c:107: }
	movs	r0, #1	@,
	@ sp needed	@
	bx	lr
	.size	SoarUsability, .-SoarUsability
	.align	1
	.global	SoarEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SoarEffect, %function
SoarEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/cHacks.c:110: 	m4aSongNumStart(0x6b); 
	movs	r0, #107	@,
@ src/cHacks.c:111: }
	@ sp needed	@
@ src/cHacks.c:110: 	m4aSongNumStart(0x6b); 
	ldr	r3, .L50	@ tmp113,
	bl	.L35		@
@ src/cHacks.c:111: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L51:
	.align	2
.L50:
	.word	m4aSongNumStart
	.size	SoarEffect, .-SoarEffect
	.global	ProcWorldMap_new
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC20:
	.ascii	"NewWorldMap\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ProcWorldMap_new, %object
	.size	ProcWorldMap_new, 80
ProcWorldMap_new:
@ type:
	.short	1
@ sArg:
	.short	0
@ lArg:
	.word	.LC20
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	LockGameLogic
@ type:
	.short	24
@ sArg:
	.short	8
@ lArg:
	.word	NewFadeIn
@ type:
	.short	20
@ sArg:
	.short	0
@ lArg:
	.word	FadeInExists
@ type:
	.short	14
@ sArg:
	.short	1
@ lArg:
	.word	0
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	SetUpNewWMGraphics
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144957284
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144957060
@ type:
	.short	3
@ sArg:
	.short	0
@ lArg:
	.word	NewWMLoop
@ type:
	.short	0
@ sArg:
	.short	0
@ lArg:
	.word	0
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L35:
	bx	r3
.L34:
	bx	r6
