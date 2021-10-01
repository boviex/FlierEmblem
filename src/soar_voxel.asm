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
@ src/soar_voxel.c:70: 	*(u16*)(0x3007ff8) = 1;
	movs	r2, #1	@ tmp127,
	ldr	r3, .L11	@ tmp126,
@ src/soar_voxel.c:69: {
	push	{r4, lr}	@
@ src/soar_voxel.c:70: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp127, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:71: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:72: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:73: 	ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L11+4	@ tmp129,
@ src/soar_voxel.c:73: 	ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L11+8	@ tmp130,
	bl	.L13		@
@ src/soar_voxel.c:74: 	SyncLoOAM();
	ldr	r3, .L11+12	@ tmp131,
	bl	.L13		@
@ src/soar_voxel.c:75: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L11+16	@ tmp132,
@ src/soar_voxel.c:75: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L2		@,
@ src/soar_voxel.c:77: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp135,
	strb	r2, [r3]	@ tmp135, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:78: 		SyncLCDControl();
	ldr	r3, .L11+20	@ tmp137,
	bl	.L13		@
@ src/soar_voxel.c:79: 		SyncBgAndPals();
	ldr	r3, .L11+24	@ tmp138,
	bl	.L13		@
@ src/soar_voxel.c:80: 		SyncRegisteredTiles();
	ldr	r3, .L11+28	@ tmp139,
	bl	.L13		@
@ src/soar_voxel.c:81: 		SyncHiOAM();
	ldr	r3, .L11+32	@ tmp140,
	bl	.L13		@
.L2:
@ src/soar_voxel.c:83: 	m4aSoundMain();
	bl	m4aSoundMain		@
	movs	r2, #63	@ tmp145,
@ src/soar_voxel.c:85: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L11+36	@ tmp141,
	ldrb	r3, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ands	r3, r2	@ _1, tmp145
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	movs	r1, r3	@ tmp147, _1
	subs	r1, r1, #16	@ tmp147,
	ldr	r2, .L11+40	@ tmp159,
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	cmp	r1, #32	@ tmp147,
	bls	.L3		@,
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	ldr	r1, [r2]	@ _8, MEM[(volatile vu32 *)50344144B]
	subs	r1, r1, #48	@ _9,
.L10:
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	str	r1, [r2]	@ _12,
.L4:
@ src/soar_voxel.c:89: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	cmp	r3, #32	@ _1,
	bne	.L5		@,
@ src/soar_voxel.c:89: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	movs	r0, #166	@,
	ldr	r3, .L11+44	@ tmp154,
	bl	.L13		@
.L1:
@ src/soar_voxel.c:98: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r0, [r2]	@ _10, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, .L11+48	@ tmp151,
	cmp	r0, r1	@ _10, tmp151
	bhi	.L4		@,
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, [r2]	@ _11, MEM[(volatile vu32 *)50344144B]
	adds	r1, r1, #48	@ _12,
	b	.L10		@
.L5:
@ src/soar_voxel.c:92: 	if (animClock == 0) //resets once per 63 frames so close enough
	cmp	r3, #0	@ _1,
	bne	.L1		@,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L11+52	@ tmp155,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r1, .L11+56	@ tmp156,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r2]	@ _13, MEM[(int *)33816568B]
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r1]	@ _13, MEM[(int *)33816572B]
@ src/soar_voxel.c:95: 		FPS_COUNTER = 0;
	str	r3, [r2]	@ _1, MEM[(int *)33816568B]
@ src/soar_voxel.c:98: };
	b	.L1		@
.L12:
	.align	2
.L11:
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
	.word	m4aSongNumStart
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
@ src/soar_voxel.c:214: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r2, #1	@ tmp133,
@ src/soar_voxel.c:206: void MoveLord(SoarProc* CurrentProc){
	push	{r4, lr}	@
@ src/soar_voxel.c:213: 	int location = CurrentProc->location;
	ldr	r4, [r0, #80]	@ location, CurrentProc_11(D)->location
@ src/soar_voxel.c:220: };
	@ sp needed	@
@ src/soar_voxel.c:214: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r3, r4	@, location
	movs	r1, #1	@,
	rsbs	r2, r2, #0	@, tmp133
	movs	r0, #0	@,
	bl	GM_PutCharUnit		@
@ src/soar_voxel.c:215: 	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	movs	r0, #0	@,
	bl	RefreshWMSprite		@
@ src/soar_voxel.c:216: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldr	r2, .L15	@ tmp128,
@ src/soar_voxel.c:216: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:216: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:217: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L15+4	@ tmp127,
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L15+8	@ tmp130,
@ src/soar_voxel.c:217: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L15+12	@ tmp131,
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:220: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L16:
	.align	2
.L15:
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
@ src/soar_voxel.c:51: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	movs	r3, #160	@ tmp119,
@ src/soar_voxel.c:55: }
	@ sp needed	@
@ src/soar_voxel.c:51: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	lsls	r3, r3, #8	@ tmp119, tmp119,
	eors	r0, r3	@ _2, tmp119
@ src/soar_voxel.c:52: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	movs	r3, #16	@ tmp125,
	ldr	r2, .L18	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:55: }
	bx	lr
.L19:
	.align	2
.L18:
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
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L21	@ tmp117,
@ src/soar_voxel.c:62: };
	@ sp needed	@
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L21+4	@,
	bl	.L13		@
@ src/soar_voxel.c:59: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L21+8	@ tmp118,
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:59: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L21+12	@ tmp119,
	bl	.L13		@
@ src/soar_voxel.c:62: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
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
@ src/soar_voxel.c:66: };
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
@ src/soar_voxel.c:155: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L25	@,
@ src/soar_voxel.c:162: };
	@ sp needed	@
@ src/soar_voxel.c:155: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L25+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:156: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L25+8	@,
	ldr	r0, .L25+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:157: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L25+16	@,
	ldr	r0, .L25+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:158: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L25+24	@,
	ldr	r0, .L25+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:159: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L25+32	@,
	ldr	r0, .L25+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:160: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:161: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp126,
	movs	r2, #32	@,
	ldr	r0, .L25+40	@ tmp124,
	ldr	r3, .L25+44	@ tmp125,
	lsls	r1, r1, #2	@, tmp126,
	bl	.L13		@
@ src/soar_voxel.c:162: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L26:
	.align	2
.L25:
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
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:152: };
	@ sp needed	@
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L28	@ tmp123,
@ src/soar_voxel.c:102: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp183
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp124, _1,
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp129, tmp184,
@ src/soar_voxel.c:104: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r4, #44]	@ tmp129, CurrentProc_11(D)->sPlayerPosX
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L28+4	@ tmp130,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #10	@ tmp131, _5,
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:106: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	movs	r3, #112	@ tmp138,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerYaw = a_SE;
	movs	r2, #6	@ tmp140,
@ src/soar_voxel.c:111: 	CurrentProc->sunsetVal = 0;
	movs	r5, #0	@ tmp143,
@ src/soar_voxel.c:106: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp138, CurrentProc_11(D)->sPlayerPosZ
@ src/soar_voxel.c:107: 	CurrentProc->sPlayerStepZ = 1;
	subs	r3, r3, #111	@ tmp139,
	str	r3, [r4, #56]	@ tmp139, CurrentProc_11(D)->sPlayerStepZ
@ src/soar_voxel.c:109: 	CurrentProc->ShowMap = TRUE;
	str	r3, [r4, #68]	@ tmp139, CurrentProc_11(D)->ShowMap
@ src/soar_voxel.c:110: 	CurrentProc->location = Frelia;
	str	r3, [r4, #80]	@ tmp139, CurrentProc_11(D)->location
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp136, tmp185,
@ src/soar_voxel.c:115: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L28+8	@ tmp145,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerYaw = a_SE;
	str	r2, [r4, #60]	@ tmp140, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp137,
@ src/soar_voxel.c:121: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	adds	r2, r2, #163	@ tmp188,
	ldr	r1, .L28+12	@,
@ src/soar_voxel.c:111: 	CurrentProc->sunsetVal = 0;
	str	r5, [r4, #84]	@ tmp143, CurrentProc_11(D)->sunsetVal
@ src/soar_voxel.c:112: 	CurrentProc->sunTransition = 0;
	str	r5, [r4, #88]	@ tmp143, CurrentProc_11(D)->sunTransition
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r4, #48]	@ tmp137, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:115: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #64]	@ tmp145, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:121: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L28+16	@ tmp148,
	ldr	r4, .L28+20	@ tmp149,
	lsls	r2, r2, #2	@, tmp188,
	bl	.L30		@
@ src/soar_voxel.c:123: 	VBlankIntrWait();
	ldr	r3, .L28+24	@ tmp150,
	bl	.L13		@
@ src/soar_voxel.c:125: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L28+28	@ tmp151,
	ldr	r2, .L28+32	@ tmp152,
	strh	r2, [r3]	@ tmp152, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:137: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp158,
@ src/soar_voxel.c:136: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L28+36	@ tmp154,
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:137: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L28+40	@ tmp157,
	rsbs	r2, r2, #0	@ tmp158, tmp158
	strh	r2, [r3]	@ tmp158, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:138: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L28+44	@ tmp160,
	adds	r2, r2, #122	@ tmp161,
	adds	r2, r2, #255	@ tmp161,
	strh	r2, [r3]	@ tmp161, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:139: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L28+48	@ tmp163,
@ src/soar_voxel.c:140: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L28+52	@ tmp167,
@ src/soar_voxel.c:139: 	g_REG_BG2PD=0x00;	//
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:140: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L28+56	@ tmp166,
	str	r2, [r3]	@ tmp167, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:141: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp169,
	ldr	r3, .L28+60	@ tmp168,
	lsls	r2, r2, #1	@ tmp169, tmp169,
	str	r2, [r3]	@ tmp169, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:144: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L28+64	@ tmp170,
	bl	.L13		@
@ src/soar_voxel.c:145: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:146: 	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	ldr	r6, .L28+68	@ tmp171,
	movs	r0, #78	@,
	bl	.L31		@
@ src/soar_voxel.c:147: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	bl	.L31		@
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp174,
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp191,
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	ldr	r3, .L28+72	@ tmp173,
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp191,
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp174, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #4	@,,
	ldr	r2, .L28+76	@,
	str	r5, [sp, #4]	@ tmp143, tmp
	bl	.L30		@
@ src/soar_voxel.c:151: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L28+80	@ tmp181,
	ldr	r3, .L28+84	@ tmp182,
	bl	.L13		@
@ src/soar_voxel.c:152: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L29:
	.align	2
.L28:
	.word	50352776
	.word	50352780
	.word	100704256
	.word	50360320
	.word	NewWMLoop
	.word	CpuFastSet
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
@ src/soar_voxel.c:223:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r3, #0	@ tmp115,
@ src/soar_voxel.c:246: };
	@ sp needed	@
@ src/soar_voxel.c:223:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp131,
@ src/soar_voxel.c:222: void EndLoop(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp129
@ src/soar_voxel.c:223:   	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp131,
	str	r3, [sp, #4]	@ tmp115, tmp
	add	r0, sp, #4	@,,
	ldr	r2, .L33	@,
	ldr	r3, .L33+4	@ tmp119,
	bl	.L13		@
@ src/soar_voxel.c:224: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp121,
	ldr	r3, .L33+8	@ tmp120,
	lsls	r2, r2, #5	@ tmp121, tmp121,
	strh	r2, [r3]	@ tmp121, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:238: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	ldr	r3, .L33+12	@ tmp123,
	bl	.L13		@
@ src/soar_voxel.c:239: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L33+16	@ tmp125,
	ldr	r0, .L33+20	@,
	bl	.L13		@
	movs	r4, r0	@ wmproc, tmp130
@ src/soar_voxel.c:240: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L33+24	@ tmp126,
	bl	.L13		@
@ src/soar_voxel.c:241: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:242: 	RefreshWMProc(wmproc);
	movs	r0, r4	@, wmproc
	bl	RefreshWMProc		@
@ src/soar_voxel.c:245: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L33+28	@ tmp127,
	ldr	r3, .L33+32	@ tmp128,
	bl	.L13		@
@ src/soar_voxel.c:246: };
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L34:
	.align	2
.L33:
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
@ src/soar_voxel.c:249: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L36		@,
	bgt	.L37		@,
	cmp	r0, #1	@ direction,
	bls	.L35		@,
.L38:
@ src/soar_voxel.c:273: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp148,
@ src/soar_voxel.c:274: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp151,
@ src/soar_voxel.c:273: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L42	@ tmp147,
	strh	r3, [r2]	@ tmp148, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:274: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L42+4	@ tmp150,
	rsbs	r1, r1, #0	@ tmp151, tmp151
	strh	r1, [r2]	@ tmp151, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:275: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L42+8	@ tmp153,
	adds	r1, r1, #122	@ tmp154,
	adds	r1, r1, #255	@ tmp154,
	strh	r1, [r2]	@ tmp154, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:276: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L42+12	@ tmp156,
	strh	r3, [r2]	@ tmp148, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:277: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L42+16	@ tmp159,
	ldr	r2, .L42+20	@ tmp160,
	str	r2, [r3]	@ tmp160, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:278: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp162,
	ldr	r3, .L42+24	@ tmp161,
	lsls	r2, r2, #1	@ tmp162, tmp162,
	str	r2, [r3]	@ tmp162, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:280: };
	b	.L35		@
.L37:
@ src/soar_voxel.c:249: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L38		@,
@ src/soar_voxel.c:265: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L42+24	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:266: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L42+16	@ tmp133,
	ldr	r2, .L42+28	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:267: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L42	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:268: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L42+4	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:269: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L42+8	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:270: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L42+12	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L41		@
.L36:
@ src/soar_voxel.c:257: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L42+24	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:258: 			g_REG_BG2X=0x9280;
	ldr	r3, .L42+16	@ tmp117,
	ldr	r2, .L42+32	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:259: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L42	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:260: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L42+4	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:261: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L42+8	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:262: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L42+12	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L41:
@ src/soar_voxel.c:270: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L35:
@ src/soar_voxel.c:280: };
	@ sp needed	@
	bx	lr
.L43:
	.align	2
.L42:
	.word	50344136
	.word	50344138
	.word	50344140
	.word	50344142
	.word	50344144
	.word	40512
	.word	50344148
	.word	40000
	.word	37504
	.size	BumpScreen, .-BumpScreen
	.global	translatedLocations
	.global	WorldMapNodes
	.global	gObj_64x64
	.global	gObj_32x8
	.global	PkOamData
	.global	cam_pivot_dy_Angles
	.global	cam_pivot_dx_Angles
	.global	cam_dy_Angles
	.global	cam_dx_Angles
	.global	fogClrs
	.global	skies
	.global	Proc_Soaring
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC31:
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
	.type	fogClrs, %object
	.size	fogClrs, 10
fogClrs:
	.short	32628
	.short	32628
	.short	27277
	.short	20935
	.short	13536
	.space	2
	.type	skies, %object
	.size	skies, 20
skies:
	.word	SkyBG
	.word	SkyBG
	.word	SkyBG_lighter
	.word	SkyBG_darker
	.word	SkyBG_sunset
	.type	Proc_Soaring, %object
	.size	Proc_Soaring, 144
Proc_Soaring:
@ type:
	.short	1
@ sArg:
	.short	0
@ lArg:
	.word	.LC31
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
.L13:
	bx	r3
.L30:
	bx	r4
.L31:
	bx	r6
