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
	movs	r2, #1	@ tmp124,
	ldr	r3, .L9	@ tmp123,
@ src/soar_voxel.c:60: {
	push	{r4, lr}	@
@ src/soar_voxel.c:61: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp124, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:62: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:63: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:64: 	ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L9+4	@ tmp126,
@ src/soar_voxel.c:64: 	ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L9+8	@ tmp127,
	bl	.L11		@
@ src/soar_voxel.c:65: 	SyncLoOAM();
	ldr	r3, .L9+12	@ tmp128,
	bl	.L11		@
@ src/soar_voxel.c:66: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L9+16	@ tmp129,
@ src/soar_voxel.c:66: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L2		@,
@ src/soar_voxel.c:68: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp132,
	strb	r2, [r3]	@ tmp132, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:69: 		SyncLCDControl();
	ldr	r3, .L9+20	@ tmp134,
	bl	.L11		@
@ src/soar_voxel.c:70: 		SyncBgAndPals();
	ldr	r3, .L9+24	@ tmp135,
	bl	.L11		@
@ src/soar_voxel.c:71: 		SyncRegisteredTiles();
	ldr	r3, .L9+28	@ tmp136,
	bl	.L11		@
@ src/soar_voxel.c:72: 		SyncHiOAM();
	ldr	r3, .L9+32	@ tmp137,
	bl	.L11		@
.L2:
@ src/soar_voxel.c:74: 	m4aSoundMain();
	bl	m4aSoundMain		@
@ src/soar_voxel.c:76: 	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L9+36	@ tmp138,
@ src/soar_voxel.c:77: 	if (animClock < 0x20)	g_REG_BG2X-=0x18; //the same as eirika's map sprite?
	ldrb	r2, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ldr	r3, .L9+40	@ tmp152,
	lsls	r2, r2, #26	@ tmp153, MEM[(u8 *)50331668B],
	bmi	.L3		@,
@ src/soar_voxel.c:77: 	if (animClock < 0x20)	g_REG_BG2X-=0x18; //the same as eirika's map sprite?
	ldr	r2, [r3]	@ _6, MEM[(volatile vu32 *)50344144B]
	subs	r2, r2, #24	@ _7,
.L8:
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	str	r2, [r3]	@ _10,
.L1:
@ src/soar_voxel.c:79: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r1, [r3]	@ _8, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r2, .L9+44	@ tmp149,
	cmp	r1, r2	@ _8, tmp149
	bhi	.L1		@,
@ src/soar_voxel.c:78: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x18;
	ldr	r2, [r3]	@ _9, MEM[(volatile vu32 *)50344144B]
	adds	r2, r2, #24	@ _10,
	b	.L8		@
.L10:
	.align	2
.L9:
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
@ src/soar_voxel.c:190: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r2, #1	@ tmp133,
@ src/soar_voxel.c:181: void MoveLord(SoarProc* CurrentProc){
	push	{r4, lr}	@
@ src/soar_voxel.c:189: 	int location = CurrentProc->location;
	ldr	r4, [r0, #72]	@ location, CurrentProc_11(D)->location
@ src/soar_voxel.c:196: };
	@ sp needed	@
@ src/soar_voxel.c:190: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r3, r4	@, location
	movs	r1, #1	@,
	rsbs	r2, r2, #0	@, tmp133
	movs	r0, #0	@,
	bl	GM_PutCharUnit		@
@ src/soar_voxel.c:191: 	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	movs	r0, #0	@,
	bl	RefreshWMSprite		@
@ src/soar_voxel.c:192: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldr	r2, .L13	@ tmp128,
@ src/soar_voxel.c:192: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:192: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:193: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L13+4	@ tmp127,
@ src/soar_voxel.c:194: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L13+8	@ tmp130,
@ src/soar_voxel.c:193: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:194: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:194: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:195: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L13+12	@ tmp131,
@ src/soar_voxel.c:195: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:195: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:196: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L14:
	.align	2
.L13:
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
	ldr	r2, .L16	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:46: }
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L19	@ tmp117,
@ src/soar_voxel.c:53: };
	@ sp needed	@
@ src/soar_voxel.c:49: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L19+4	@,
	bl	.L11		@
@ src/soar_voxel.c:50: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L19+8	@ tmp118,
@ src/soar_voxel.c:49: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:50: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L19+12	@ tmp119,
	bl	.L11		@
@ src/soar_voxel.c:53: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L20:
	.align	2
.L19:
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
@ src/soar_voxel.c:131: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L23	@,
@ src/soar_voxel.c:137: };
	@ sp needed	@
@ src/soar_voxel.c:131: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L23+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:132: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L23+8	@,
	ldr	r0, .L23+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:133: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L23+16	@,
	ldr	r0, .L23+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:134: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L23+24	@,
	ldr	r0, .L23+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:135: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:136: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp124,
	movs	r2, #32	@,
	ldr	r0, .L23+32	@ tmp122,
	ldr	r3, .L23+36	@ tmp123,
	lsls	r1, r1, #2	@, tmp124,
	bl	.L11		@
@ src/soar_voxel.c:137: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L24:
	.align	2
.L23:
	.word	100745216
	.word	pkSprite
	.word	100747264
	.word	locationSprites
	.word	100748288
	.word	miniCursorSprite
	.word	100748320
	.word	minimapSprite
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
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:128: };
	@ sp needed	@
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L26	@ tmp123,
@ src/soar_voxel.c:82: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp182
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp124, _1,
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	movs	r1, #240	@,
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp129, tmp183,
@ src/soar_voxel.c:84: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*1024/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r4, #44]	@ tmp129, CurrentProc_11(D)->sPlayerPosX
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	ldr	r3, .L26+4	@ tmp130,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	lsls	r0, r0, #10	@ tmp131, _5,
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:86: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	movs	r3, #112	@ tmp138,
@ src/soar_voxel.c:98: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	movs	r2, #169	@ tmp187,
@ src/soar_voxel.c:86: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp138, CurrentProc_11(D)->sPlayerPosZ
@ src/soar_voxel.c:87: 	CurrentProc->sPlayerYaw = a_SE;
	subs	r3, r3, #106	@ tmp139,
	str	r3, [r4, #56]	@ tmp139, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:89: 	CurrentProc->location = Frelia;
	subs	r3, r3, #5	@ tmp140,
	str	r3, [r4, #72]	@ tmp140, CurrentProc_11(D)->location
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	asrs	r0, r0, #8	@ tmp136, tmp184,
@ src/soar_voxel.c:92: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L26+8	@ tmp141,
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	adds	r0, r0, #170	@ tmp137,
@ src/soar_voxel.c:98: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r1, .L26+12	@,
	ldr	r5, .L26+16	@ tmp145,
@ src/soar_voxel.c:85: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*1024/480)>>8)+ 170;
	str	r0, [r4, #48]	@ tmp137, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:92: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #60]	@ tmp141, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:98: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L26+20	@ tmp144,
	lsls	r2, r2, #2	@, tmp187,
	bl	.L28		@
@ src/soar_voxel.c:100: 	VBlankIntrWait();
	ldr	r3, .L26+24	@ tmp146,
	bl	.L11		@
@ src/soar_voxel.c:102: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L26+28	@ tmp147,
	ldr	r2, .L26+32	@ tmp148,
	strh	r2, [r3]	@ tmp148, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:110: 	REG_WAITCNT = 0x45bb; //orig 0x45b7, we change ws0 from 3 to 2
	ldr	r3, .L26+36	@ tmp150,
	ldr	r2, .L26+40	@ tmp151,
@ src/soar_voxel.c:113: 	g_REG_BG2PA=0x00;	//rotate and stretch
	movs	r4, #0	@ tmp154,
@ src/soar_voxel.c:110: 	REG_WAITCNT = 0x45bb; //orig 0x45b7, we change ws0 from 3 to 2
	strh	r2, [r3]	@ tmp151, MEM[(volatile vu16 *)67109380B]
@ src/soar_voxel.c:114: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp157,
@ src/soar_voxel.c:113: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L26+44	@ tmp153,
	strh	r4, [r3]	@ tmp154, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:114: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L26+48	@ tmp156,
	rsbs	r2, r2, #0	@ tmp157, tmp157
	strh	r2, [r3]	@ tmp157, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:115: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L26+52	@ tmp159,
	adds	r2, r2, #122	@ tmp160,
	adds	r2, r2, #255	@ tmp160,
	strh	r2, [r3]	@ tmp160, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:116: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L26+56	@ tmp162,
@ src/soar_voxel.c:117: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L26+60	@ tmp166,
@ src/soar_voxel.c:116: 	g_REG_BG2PD=0x00;	//
	strh	r4, [r3]	@ tmp154, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:117: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L26+64	@ tmp165,
	str	r2, [r3]	@ tmp166, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:118: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp168,
	ldr	r3, .L26+68	@ tmp167,
	lsls	r2, r2, #1	@ tmp168, tmp168,
	str	r2, [r3]	@ tmp168, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:120: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L26+72	@ tmp169,
	bl	.L11		@
@ src/soar_voxel.c:121: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:122: 	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	ldr	r6, .L26+76	@ tmp170,
	movs	r0, #78	@,
	bl	.L29		@
@ src/soar_voxel.c:123: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	bl	.L29		@
@ src/soar_voxel.c:124: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp173,
@ src/soar_voxel.c:125: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp190,
@ src/soar_voxel.c:124: 	gCurrentMusic = 0x58;
	ldr	r3, .L26+80	@ tmp172,
@ src/soar_voxel.c:125: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp190,
@ src/soar_voxel.c:124: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp173, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:125: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #4	@,,
	ldr	r2, .L26+84	@,
	str	r4, [sp, #4]	@ tmp154, tmp
	bl	.L28		@
@ src/soar_voxel.c:127: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L26+88	@ tmp180,
	ldr	r3, .L26+92	@ tmp181,
	bl	.L11		@
@ src/soar_voxel.c:128: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L27:
	.align	2
.L26:
	.word	50352776
	.word	50352780
	.word	100704256
	.word	50360320
	.word	CpuFastSet
	.word	NewWMLoop
	.word	VBlankIntrWait
	.word	50344064
	.word	5189
	.word	67109380
	.word	17851
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
@ src/soar_voxel.c:199:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r3, #0	@ tmp115,
@ src/soar_voxel.c:222: };
	@ sp needed	@
@ src/soar_voxel.c:199:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp134,
@ src/soar_voxel.c:198: void EndLoop(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp132
@ src/soar_voxel.c:199:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp134,
	str	r3, [sp, #4]	@ tmp115, tmp
	add	r0, sp, #4	@,,
	ldr	r2, .L31	@,
	ldr	r3, .L31+4	@ tmp119,
	bl	.L11		@
@ src/soar_voxel.c:200: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp121,
	ldr	r3, .L31+8	@ tmp120,
	lsls	r2, r2, #5	@ tmp121, tmp121,
	strh	r2, [r3]	@ tmp121, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:214: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	ldr	r3, .L31+12	@ tmp123,
	bl	.L11		@
@ src/soar_voxel.c:215: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L31+16	@ tmp125,
	ldr	r0, .L31+20	@,
	bl	.L11		@
	movs	r4, r0	@ wmproc, tmp133
@ src/soar_voxel.c:216: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L31+24	@ tmp126,
	bl	.L11		@
@ src/soar_voxel.c:217: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:218: 	RefreshWMProc(wmproc);
	movs	r0, r4	@, wmproc
	bl	RefreshWMProc		@
@ src/soar_voxel.c:220: 	REG_WAITCNT = 0x45b7; //restore this
	ldr	r2, .L31+28	@ tmp128,
	ldr	r3, .L31+32	@ tmp127,
@ src/soar_voxel.c:221: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L31+36	@ tmp130,
@ src/soar_voxel.c:220: 	REG_WAITCNT = 0x45b7; //restore this
	strh	r2, [r3]	@ tmp128, MEM[(volatile vu16 *)67109380B]
@ src/soar_voxel.c:221: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r3, .L31+40	@ tmp131,
	bl	.L11		@
@ src/soar_voxel.c:222: };
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L32:
	.align	2
.L31:
	.word	16787456
	.word	CpuFastSet
	.word	50344064
	.word	BreakProcLoop
	.word	ProcFind
	.word	144955208
	.word	ProcGoto
	.word	17847
	.word	67109380
	.word	OnVBlankMain
	.word	SetInterrupt_LCDVBlank
	.size	EndLoop, .-EndLoop
	.global	translatedLocations
	.global	WorldMapNodes
	.global	gObj_64x64
	.global	gObj_32x8
	.global	PkOamData
	.global	Proc_Soaring
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC29:
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
	.word	.LC29
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
.L11:
	bx	r3
.L28:
	bx	r5
.L29:
	bx	r6
