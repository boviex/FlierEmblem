	.cpu arm7tdmi
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"soar_voxel.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -march=armv4t -Os -fomit-frame-pointer -ffast-math -fno-jump-tables
	.text
	.align	1
	.global	SoarVBlankInterrupt
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SoarVBlankInterrupt, %function
SoarVBlankInterrupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:61: 	*(u16*)(0x3007ff8) = 1;
	movs	r2, #1	@ tmp126,
	ldr	r3, .L10	@ tmp125,
@ src/soar_voxel.c:60: {
	push	{r4, lr}	@
@ src/soar_voxel.c:61: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp126, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:62: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:63: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:64: 	ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L10+4	@ tmp128,
@ src/soar_voxel.c:64: 	ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L10+8	@ tmp129,
	bl	.L12		@
@ src/soar_voxel.c:65: 	SyncLoOAM();
	ldr	r3, .L10+12	@ tmp130,
	bl	.L12		@
@ src/soar_voxel.c:66: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L10+16	@ tmp131,
@ src/soar_voxel.c:66: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L2		@,
@ src/soar_voxel.c:68: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp134,
	strb	r2, [r3]	@ tmp134, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:69: 		SyncLCDControl();
	ldr	r3, .L10+20	@ tmp136,
	bl	.L12		@
@ src/soar_voxel.c:70: 		SyncBgAndPals();
	ldr	r3, .L10+24	@ tmp137,
	bl	.L12		@
@ src/soar_voxel.c:71: 		SyncRegisteredTiles();
	ldr	r3, .L10+28	@ tmp138,
	bl	.L12		@
@ src/soar_voxel.c:72: 		SyncHiOAM();
	ldr	r3, .L10+32	@ tmp139,
	bl	.L12		@
.L2:
@ src/soar_voxel.c:74: 	m4aSoundMain();
	bl	m4aSoundMain		@
@ src/soar_voxel.c:76: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L10+36	@ tmp140,
	ldrb	r2, [r3]	@ _5, MEM[(u8 *)50331668B]
	ldr	r3, .L10+40	@ tmp161,
@ src/soar_voxel.c:77: 	if (animClock < 0x20)	g_REG_BG2X-=0x18; //the same as eirika's map sprite?
	lsls	r1, r2, #26	@ tmp162, _5,
	bmi	.L3		@,
@ src/soar_voxel.c:77: 	if (animClock < 0x20)	g_REG_BG2X-=0x18; //the same as eirika's map sprite?
	ldr	r1, [r3]	@ _6,
	subs	r1, r1, #24	@ _7,
	str	r1, [r3]	@ _7, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:81: 	if (animClock == 0) //resets once per 63 frames so close enough
	movs	r3, #63	@ tmp149,
	movs	r1, r2	@ tmp151, _5
	ands	r1, r3	@ tmp151, tmp149
	tst	r2, r3	@ _5, tmp149
	beq	.L4		@,
.L1:
@ src/soar_voxel.c:87: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r1, [r3]	@ _8,
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r2, .L10+44	@ tmp154,
	cmp	r1, r2	@ _8, tmp154
	bhi	.L1		@,
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r2, [r3]	@ _9, MEM[(volatile vu32 *)50344144B]
	adds	r2, r2, #24	@ _10,
	str	r2, [r3]	@ _10, MEM[(volatile vu32 *)50344144B]
	b	.L1		@
.L4:
@ src/soar_voxel.c:83: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r3, .L10+48	@ tmp157,
@ src/soar_voxel.c:83: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L10+52	@ tmp158,
@ src/soar_voxel.c:83: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r3]	@ _11, MEM[(int *)33816568B]
@ src/soar_voxel.c:83: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r2]	@ _11, MEM[(int *)33816572B]
@ src/soar_voxel.c:84: 		FPS_COUNTER = 0;
	str	r1, [r3]	@ tmp151, MEM[(int *)33816568B]
@ src/soar_voxel.c:87: };
	b	.L1		@
.L11:
	.align	2
.L10:
	.word	50364408
	.word	33712752
	.word	ExecProc
	.word	SyncLoOAM
	.word	gGameState
	.word	SyncLCDControl
	.word	SyncBgAndPals
	.word	SyncRegisteredTiles
	.word	SyncHiOAM
	.word	50331668
	.word	50344144
	.word	40911
	.word	33816568
	.word	33816572
	.size	SoarVBlankInterrupt, .-SoarVBlankInterrupt
	.align	1
	.global	MoveLord
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MoveLord, %function
MoveLord:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:200: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r2, #1	@ tmp133,
@ src/soar_voxel.c:191: void MoveLord(SoarProc* CurrentProc){
	push	{r4, lr}	@
@ src/soar_voxel.c:199: 	int location = CurrentProc->location;
	ldr	r4, [r0, #76]	@ location, CurrentProc_11(D)->location
@ src/soar_voxel.c:206: };
	@ sp needed	@
@ src/soar_voxel.c:200: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r3, r4	@, location
	movs	r1, #1	@,
	rsbs	r2, r2, #0	@, tmp133
	movs	r0, #0	@,
	bl	GM_PutCharUnit		@
@ src/soar_voxel.c:201: 	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	movs	r0, #0	@,
	bl	RefreshWMSprite		@
@ src/soar_voxel.c:202: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldr	r2, .L14	@ tmp128,
@ src/soar_voxel.c:202: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:202: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:203: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L14+4	@ tmp127,
@ src/soar_voxel.c:204: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L14+8	@ tmp130,
@ src/soar_voxel.c:203: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:204: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:204: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:205: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L14+12	@ tmp131,
@ src/soar_voxel.c:205: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:205: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:206: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L15:
	.align	2
.L14:
	.word	136339656
	.word	136339658
	.word	50352776
	.word	50352780
	.size	MoveLord, .-MoveLord
	.align	1
	.global	vid_flip
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	vid_flip, %function
vid_flip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/soar_voxel.c:42: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	movs	r3, #160	@ tmp119,
@ src/soar_voxel.c:46: }
	@ sp needed	@
@ src/soar_voxel.c:42: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	lsls	r3, r3, #8	@ tmp119, tmp119,
	eors	r0, r3	@ _2, tmp119
@ src/soar_voxel.c:43: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	movs	r3, #16	@ tmp125,
	ldr	r2, .L17	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:46: }
	bx	lr
.L18:
	.align	2
.L17:
	.word	50344064
	.size	vid_flip, .-vid_flip
	.align	1
	.global	StartSoaring
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	StartSoaring, %function
StartSoaring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:49: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L20	@ tmp117,
@ src/soar_voxel.c:53: };
	@ sp needed	@
@ src/soar_voxel.c:49: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L20+4	@,
	bl	.L12		@
@ src/soar_voxel.c:50: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L20+8	@ tmp118,
@ src/soar_voxel.c:49: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:50: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L20+12	@ tmp119,
	bl	.L12		@
@ src/soar_voxel.c:53: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L21:
	.align	2
.L20:
	.word	ProcFind
	.word	144955208
	.word	Proc_Soaring
	.word	ProcStartBlocking
	.size	StartSoaring, .-StartSoaring
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
@ src/soar_voxel.c:57: };
	movs	r0, #1	@,
	@ sp needed	@
	bx	lr
	.size	SoarUsability, .-SoarUsability
	.align	1
	.global	LoadSprite
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LoadSprite, %function
LoadSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:140: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L24	@,
@ src/soar_voxel.c:147: };
	@ sp needed	@
@ src/soar_voxel.c:140: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L24+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:141: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L24+8	@,
	ldr	r0, .L24+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:142: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L24+16	@,
	ldr	r0, .L24+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:143: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L24+24	@,
	ldr	r0, .L24+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:144: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L24+32	@,
	ldr	r0, .L24+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:145: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:146: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp126,
	movs	r2, #32	@,
	ldr	r0, .L24+40	@ tmp124,
	ldr	r3, .L24+44	@ tmp125,
	lsls	r1, r1, #2	@, tmp126,
	bl	.L12		@
@ src/soar_voxel.c:147: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L25:
	.align	2
.L24:
	.word	100745216
	.word	pkSprite
	.word	100747264
	.word	locationSprites
	.word	100748288
	.word	miniCursorSprite
	.word	100748320
	.word	minimapSprite
	.word	100750368
	.word	fpsSprite
	.word	minimapPal
	.word	CopyToPaletteBuffer
	.size	LoadSprite, .-LoadSprite
	.global	__aeabi_idiv
	.align	1
	.global	SetUpNewWMGraphics
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetUpNewWMGraphics, %function
SetUpNewWMGraphics:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}	@
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:137: };
	@ sp needed	@
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L27	@ tmp123,
@ src/soar_voxel.c:91: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp180
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp124, _1,
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp129, tmp181,
@ src/soar_voxel.c:93: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r4, #44]	@ tmp129, CurrentProc_11(D)->sPlayerPosX
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L27+4	@ tmp130,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #10	@ tmp131, _5,
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:95: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	movs	r3, #112	@ tmp138,
@ src/soar_voxel.c:107: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	movs	r2, #169	@ tmp185,
@ src/soar_voxel.c:95: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp138, CurrentProc_11(D)->sPlayerPosZ
@ src/soar_voxel.c:96: 	CurrentProc->sPlayerYaw = a_SE;
	subs	r3, r3, #106	@ tmp139,
	str	r3, [r4, #56]	@ tmp139, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:97: 	CurrentProc->ShowMap = TRUE;
	subs	r3, r3, #5	@ tmp140,
	str	r3, [r4, #64]	@ tmp140, CurrentProc_11(D)->ShowMap
@ src/soar_voxel.c:98: 	CurrentProc->location = Frelia;
	str	r3, [r4, #76]	@ tmp140, CurrentProc_11(D)->location
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp136, tmp182,
@ src/soar_voxel.c:101: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L27+8	@ tmp142,
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp137,
@ src/soar_voxel.c:107: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r1, .L27+12	@,
	ldr	r5, .L27+16	@ tmp146,
@ src/soar_voxel.c:94: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r4, #48]	@ tmp137, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:101: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #60]	@ tmp142, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:107: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L27+20	@ tmp145,
	lsls	r2, r2, #2	@, tmp185,
	bl	.L29		@
@ src/soar_voxel.c:109: 	VBlankIntrWait();
	ldr	r3, .L27+24	@ tmp147,
	bl	.L12		@
@ src/soar_voxel.c:111: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L27+28	@ tmp148,
	ldr	r2, .L27+32	@ tmp149,
@ src/soar_voxel.c:122: 	g_REG_BG2PA=0x00;	//rotate and stretch
	movs	r4, #0	@ tmp152,
@ src/soar_voxel.c:111: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	strh	r2, [r3]	@ tmp149, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:123: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp155,
@ src/soar_voxel.c:122: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L27+36	@ tmp151,
	strh	r4, [r3]	@ tmp152, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:123: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L27+40	@ tmp154,
	rsbs	r2, r2, #0	@ tmp155, tmp155
	strh	r2, [r3]	@ tmp155, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:124: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L27+44	@ tmp157,
	adds	r2, r2, #122	@ tmp158,
	adds	r2, r2, #255	@ tmp158,
	strh	r2, [r3]	@ tmp158, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:125: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L27+48	@ tmp160,
@ src/soar_voxel.c:126: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L27+52	@ tmp164,
@ src/soar_voxel.c:125: 	g_REG_BG2PD=0x00;	//
	strh	r4, [r3]	@ tmp152, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:126: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L27+56	@ tmp163,
	str	r2, [r3]	@ tmp164, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:127: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp166,
	ldr	r3, .L27+60	@ tmp165,
	lsls	r2, r2, #1	@ tmp166, tmp166,
	str	r2, [r3]	@ tmp166, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:129: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L27+64	@ tmp167,
	bl	.L12		@
@ src/soar_voxel.c:130: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:131: 	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	ldr	r6, .L27+68	@ tmp168,
	movs	r0, #78	@,
	bl	.L30		@
@ src/soar_voxel.c:132: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	bl	.L30		@
@ src/soar_voxel.c:133: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp171,
@ src/soar_voxel.c:134: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp188,
@ src/soar_voxel.c:133: 	gCurrentMusic = 0x58;
	ldr	r3, .L27+72	@ tmp170,
@ src/soar_voxel.c:134: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp188,
@ src/soar_voxel.c:133: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp171, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:134: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #4	@,,
	ldr	r2, .L27+76	@,
	str	r4, [sp, #4]	@ tmp152, tmp
	bl	.L29		@
@ src/soar_voxel.c:136: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L27+80	@ tmp178,
	ldr	r3, .L27+84	@ tmp179,
	bl	.L12		@
@ src/soar_voxel.c:137: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L28:
	.align	2
.L27:
	.word	50352776
	.word	50352780
	.word	100704256
	.word	50360320
	.word	CpuFastSet
	.word	NewWMLoop
	.word	VBlankIntrWait
	.word	50344064
	.word	5189
	.word	50344136
	.word	50344138
	.word	50344140
	.word	50344142
	.word	40512
	.word	50344144
	.word	50344148
	.word	Sound_FadeSongOut
	.word	m4aSongNumStart
	.word	33705568
	.word	16787456
	.word	SoarVBlankInterrupt
	.word	SetInterrupt_LCDVBlank
	.size	SetUpNewWMGraphics, .-SetUpNewWMGraphics
	.align	1
	.global	EndLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EndLoop, %function
EndLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
@ src/soar_voxel.c:209:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r3, #0	@ tmp115,
@ src/soar_voxel.c:232: };
	@ sp needed	@
@ src/soar_voxel.c:209:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp131,
@ src/soar_voxel.c:208: void EndLoop(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp129
@ src/soar_voxel.c:209:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp131,
	str	r3, [sp, #4]	@ tmp115, tmp
	add	r0, sp, #4	@,,
	ldr	r2, .L32	@,
	ldr	r3, .L32+4	@ tmp119,
	bl	.L12		@
@ src/soar_voxel.c:210: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp121,
	ldr	r3, .L32+8	@ tmp120,
	lsls	r2, r2, #5	@ tmp121, tmp121,
	strh	r2, [r3]	@ tmp121, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:224: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	ldr	r3, .L32+12	@ tmp123,
	bl	.L12		@
@ src/soar_voxel.c:225: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L32+16	@ tmp125,
	ldr	r0, .L32+20	@,
	bl	.L12		@
	movs	r4, r0	@ wmproc, tmp130
@ src/soar_voxel.c:226: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L32+24	@ tmp126,
	bl	.L12		@
@ src/soar_voxel.c:227: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:228: 	RefreshWMProc(wmproc);
	movs	r0, r4	@, wmproc
	bl	RefreshWMProc		@
@ src/soar_voxel.c:231: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L32+28	@ tmp127,
	ldr	r3, .L32+32	@ tmp128,
	bl	.L12		@
@ src/soar_voxel.c:232: };
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L33:
	.align	2
.L32:
	.word	16787456
	.word	CpuFastSet
	.word	50344064
	.word	BreakProcLoop
	.word	ProcFind
	.word	144955208
	.word	ProcGoto
	.word	OnVBlankMain
	.word	SetInterrupt_LCDVBlank
	.size	EndLoop, .-EndLoop
	.align	1
	.global	BumpScreen
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BumpScreen, %function
BumpScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/soar_voxel.c:235: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L35		@,
	cmp	r0, #3	@ direction,
	beq	.L36		@,
.L34:
@ src/soar_voxel.c:259: };
	@ sp needed	@
	bx	lr
.L35:
@ src/soar_voxel.c:243: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp115,
	ldr	r3, .L39	@ tmp114,
	lsls	r2, r2, #1	@ tmp115, tmp115,
	str	r2, [r3]	@ tmp115, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:244: 			g_REG_BG2X=0x9280;
	ldr	r3, .L39+4	@ tmp116,
	ldr	r2, .L39+8	@ tmp117,
	str	r2, [r3]	@ tmp117, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:245: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp119,
	ldr	r3, .L39+12	@ tmp118,
	strh	r2, [r3]	@ tmp119, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:246: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L39+16	@ tmp121,
	subs	r2, r2, #242	@ tmp122,
	strh	r2, [r3]	@ tmp122, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:247: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L39+20	@ tmp124,
	adds	r2, r2, #101	@ tmp125,
	adds	r2, r2, #255	@ tmp125,
	strh	r2, [r3]	@ tmp125, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:248: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L39+24	@ tmp127,
	subs	r2, r2, #120	@ tmp128,
.L38:
@ src/soar_voxel.c:256: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp144,
@ src/soar_voxel.c:259: };
	b	.L34		@
.L36:
@ src/soar_voxel.c:251: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp131,
	ldr	r3, .L39	@ tmp130,
	lsls	r2, r2, #3	@ tmp131, tmp131,
	str	r2, [r3]	@ tmp131, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:252: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L39+4	@ tmp132,
	ldr	r2, .L39+28	@ tmp133,
	str	r2, [r3]	@ tmp133, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:253: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp135,
	ldr	r3, .L39+12	@ tmp134,
	rsbs	r2, r2, #0	@ tmp135, tmp135
	strh	r2, [r3]	@ tmp135, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:254: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L39+16	@ tmp137,
	subs	r2, r2, #214	@ tmp138,
	strh	r2, [r3]	@ tmp138, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:255: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L39+20	@ tmp140,
	adds	r2, r2, #101	@ tmp141,
	adds	r2, r2, #255	@ tmp141,
	strh	r2, [r3]	@ tmp141, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:256: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L39+24	@ tmp143,
	subs	r2, r2, #136	@ tmp144,
	b	.L38		@
.L40:
	.align	2
.L39:
	.word	50344148
	.word	50344144
	.word	37504
	.word	50344136
	.word	50344138
	.word	50344140
	.word	50344142
	.word	40000
	.size	BumpScreen, .-BumpScreen
	.global	translatedLocations
	.global	WorldMapNodes
	.global	gObj_64x64
	.global	gObj_32x8
	.global	PkOamData
	.global	Proc_Soaring
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC30:
	.ascii	"NewWorldMap\000"
	.section	.rodata
	.align	2
	.type	translatedLocations, %object
	.size	translatedLocations, 8
translatedLocations:
	.ascii	"\001\001\023\022\024\027\032\033"
	.type	WorldMapNodes, %object
	.size	WorldMapNodes, 176
WorldMapNodes:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\001\001\006\006\000\000\000\000\000\000\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\001\001\006\006\000\000\000\000\000\000\005"
	.ascii	"\005\000\000"
	.ascii	"\000\000\001\001\000\000\000\000\000\000\000\000\005"
	.ascii	"\005\000\000"
	.ascii	"\000\000\000\000\000\000\004\004\000\000\000\000\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\000\000\000\000\004\004\000\002\002\002\007"
	.ascii	"\007\007\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\002\002\002\007"
	.ascii	"\007\007\000"
	.ascii	"\000\000\000\000\000\000\000\003\003\002\002\002\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\003\003\003\000\000\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\003\003\003\000\000\000"
	.ascii	"\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000"
	.type	gObj_64x64, %object
	.size	gObj_64x64, 6
gObj_64x64:
	.short	1
	.short	0
	.short	-16384
	.type	gObj_32x8, %object
	.size	gObj_32x8, 6
gObj_32x8:
	.short	1
	.short	16384
	.short	16384
	.type	PkOamData, %object
	.size	PkOamData, 4
PkOamData:
	.space	4
	.type	Proc_Soaring, %object
	.size	Proc_Soaring, 144
Proc_Soaring:
@ type:
	.short	1
@ sArg:
	.short	0
@ lArg:
	.word	.LC30
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
	.word	144957060
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144957332
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144958564
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144958024
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144958144
@ type:
	.short	9
@ sArg:
	.short	0
@ lArg:
	.word	144957284
@ type:
	.short	14
@ sArg:
	.short	8
@ lArg:
	.word	0
@ type:
	.short	3
@ sArg:
	.short	0
@ lArg:
	.word	50360320
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	134848105
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	MoveLord
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	UnlockGameLogic
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
.L12:
	bx	r3
.L29:
	bx	r5
.L30:
	bx	r6
