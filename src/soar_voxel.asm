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
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	getPtHeight_thumb, %function
getPtHeight_thumb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:315: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r3, #128	@ tmp122,
@ src/soar_voxel.c:314: static inline int getPtHeight_thumb(int ptx, int pty){
	push	{r4, lr}	@
@ src/soar_voxel.c:315: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r4, r0	@ tmp121, ptx
@ src/soar_voxel.c:314: static inline int getPtHeight_thumb(int ptx, int pty){
	movs	r2, r0	@ ptx, tmp127
@ src/soar_voxel.c:315: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r4, r1	@ tmp121, pty
@ src/soar_voxel.c:315: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:315: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	lsls	r3, r3, #3	@ tmp122, tmp122,
	cmp	r4, r3	@ tmp121, tmp122
	bcs	.L1		@,
@ src/soar_voxel.c:316: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r3, .L4	@ tmp123,
@ src/soar_voxel.c:316: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsls	r1, r1, #10	@ tmp124, pty,
@ src/soar_voxel.c:316: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	adds	r3, r3, r2	@ tmp125, tmp123, ptx
	ldrb	r0, [r3, r1]	@ <retval>, heightMap
.L1:
@ src/soar_voxel.c:317: };
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
	.word	heightMap
	.size	getPtHeight_thumb, .-getPtHeight_thumb
	.align	1
	.global	SoarVBlankInterrupt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SoarVBlankInterrupt, %function
SoarVBlankInterrupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:74: 	*(u16*)(0x3007ff8) = 1;
	movs	r2, #1	@ tmp127,
	ldr	r3, .L16	@ tmp126,
@ src/soar_voxel.c:73: {
	push	{r4, lr}	@
@ src/soar_voxel.c:74: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp127, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:75: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:76: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:77: 	SyncLoOAM();
	ldr	r3, .L16+4	@ tmp129,
	bl	.L18		@
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L16+8	@ tmp130,
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L7		@,
@ src/soar_voxel.c:80: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp133,
	strb	r2, [r3]	@ tmp133, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L16+12	@ tmp135,
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L16+16	@ tmp136,
	bl	.L18		@
@ src/soar_voxel.c:82: 		SyncLCDControl();
	ldr	r3, .L16+20	@ tmp137,
	bl	.L18		@
@ src/soar_voxel.c:83: 		SyncBgAndPals();
	ldr	r3, .L16+24	@ tmp138,
	bl	.L18		@
@ src/soar_voxel.c:84: 		SyncRegisteredTiles();
	ldr	r3, .L16+28	@ tmp139,
	bl	.L18		@
@ src/soar_voxel.c:85: 		SyncHiOAM();
	ldr	r3, .L16+32	@ tmp140,
	bl	.L18		@
.L7:
@ src/soar_voxel.c:87: 	m4aSoundMain();
	bl	m4aSoundMain		@
	movs	r2, #63	@ tmp145,
@ src/soar_voxel.c:89: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L16+36	@ tmp141,
	ldrb	r3, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ands	r3, r2	@ _1, tmp145
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	movs	r1, r3	@ tmp147, _1
	subs	r1, r1, #16	@ tmp147,
	ldr	r2, .L16+40	@ tmp159,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	cmp	r1, #32	@ tmp147,
	bls	.L8		@,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	ldr	r1, [r2]	@ _8, MEM[(volatile vu32 *)50344144B]
	subs	r1, r1, #48	@ _9,
.L15:
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	str	r1, [r2]	@ _12,
.L9:
@ src/soar_voxel.c:93: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	cmp	r3, #32	@ _1,
	bne	.L10		@,
@ src/soar_voxel.c:93: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	movs	r0, #166	@,
	ldr	r3, .L16+44	@ tmp154,
	bl	.L18		@
.L6:
@ src/soar_voxel.c:102: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r0, [r2]	@ _10, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, .L16+48	@ tmp151,
	cmp	r0, r1	@ _10, tmp151
	bhi	.L9		@,
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, [r2]	@ _11, MEM[(volatile vu32 *)50344144B]
	adds	r1, r1, #48	@ _12,
	b	.L15		@
.L10:
@ src/soar_voxel.c:96: 	if (animClock == 0) //resets once per 63 frames so close enough
	cmp	r3, #0	@ _1,
	bne	.L6		@,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L16+52	@ tmp155,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r1, .L16+56	@ tmp156,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r2]	@ _13, MEM[(int *)33816568B]
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r1]	@ _13, MEM[(int *)33816572B]
@ src/soar_voxel.c:99: 		FPS_COUNTER = 0;
	str	r3, [r2]	@ _1, MEM[(int *)33816568B]
@ src/soar_voxel.c:102: };
	b	.L6		@
.L17:
	.align	2
.L16:
	.word	50364408
	.word	SyncLoOAM
	.word	gGameState
	.word	33712752
	.word	ExecProc
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
	push	{r4, lr}	@
@ src/soar_voxel.c:224: 	VBlankIntrWait();
	ldr	r3, .L20	@ tmp127,
@ src/soar_voxel.c:248: };
	@ sp needed	@
@ src/soar_voxel.c:222: void MoveLord(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp139
@ src/soar_voxel.c:224: 	VBlankIntrWait();
	bl	.L18		@
@ src/soar_voxel.c:225: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L20+4	@ tmp129,
	ldr	r0, .L20+8	@,
	bl	.L18		@
@ src/soar_voxel.c:226: 	RefreshWMProc(wmproc);
	bl	RefreshWMProc		@
@ src/soar_voxel.c:234: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r2, #1	@ tmp141,
@ src/soar_voxel.c:233: 	int location = CurrentProc->location;
	ldr	r4, [r4, #80]	@ location, CurrentProc_15(D)->location
@ src/soar_voxel.c:234: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r1, #1	@,
	movs	r3, r4	@, location
	rsbs	r2, r2, #0	@, tmp141
	movs	r0, #0	@,
	bl	GM_PutCharUnit		@
@ src/soar_voxel.c:235: 	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	movs	r0, #0	@,
	bl	RefreshWMSprite		@
@ src/soar_voxel.c:236: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldr	r2, .L20+12	@ tmp132,
@ src/soar_voxel.c:236: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:236: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:237: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L20+16	@ tmp131,
@ src/soar_voxel.c:238: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L20+20	@ tmp134,
@ src/soar_voxel.c:237: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:238: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:238: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:239: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L20+24	@ tmp135,
@ src/soar_voxel.c:239: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:239: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:241: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp137,
	ldr	r3, .L20+28	@ tmp136,
	lsls	r2, r2, #5	@ tmp137, tmp137,
	strh	r2, [r3]	@ tmp137, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:248: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L21:
	.align	2
.L20:
	.word	VBlankIntrWait
	.word	ProcFind
	.word	144955208
	.word	136339656
	.word	136339658
	.word	50352776
	.word	50352780
	.word	50344064
	.size	MoveLord, .-MoveLord
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BumpScreen.part.0, %function
BumpScreen.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/soar_voxel.c:305: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp114,
@ src/soar_voxel.c:312: };
	@ sp needed	@
@ src/soar_voxel.c:306: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp117,
@ src/soar_voxel.c:305: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L23	@ tmp113,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:306: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L23+4	@ tmp116,
	rsbs	r1, r1, #0	@ tmp117, tmp117
	strh	r1, [r2]	@ tmp117, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:307: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L23+8	@ tmp119,
	adds	r1, r1, #122	@ tmp120,
	adds	r1, r1, #255	@ tmp120,
	strh	r1, [r2]	@ tmp120, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:308: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L23+12	@ tmp122,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:309: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L23+16	@ tmp125,
	ldr	r2, .L23+20	@ tmp126,
	str	r2, [r3]	@ tmp126, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:310: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp128,
	ldr	r3, .L23+24	@ tmp127,
	lsls	r2, r2, #1	@ tmp128, tmp128,
	str	r2, [r3]	@ tmp128, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:312: };
	bx	lr
.L24:
	.align	2
.L23:
	.word	50344136
	.word	50344138
	.word	50344140
	.word	50344142
	.word	50344144
	.word	40512
	.word	50344148
	.size	BumpScreen.part.0, .-BumpScreen.part.0
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
@ src/soar_voxel.c:55: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	movs	r3, #160	@ tmp119,
@ src/soar_voxel.c:59: }
	@ sp needed	@
@ src/soar_voxel.c:55: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	lsls	r3, r3, #8	@ tmp119, tmp119,
	eors	r0, r3	@ _2, tmp119
@ src/soar_voxel.c:56: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	movs	r3, #16	@ tmp125,
	ldr	r2, .L26	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:59: }
	bx	lr
.L27:
	.align	2
.L26:
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
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L29	@ tmp117,
@ src/soar_voxel.c:66: };
	@ sp needed	@
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L29+4	@,
	bl	.L18		@
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L29+8	@ tmp118,
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L29+12	@ tmp119,
	bl	.L18		@
@ src/soar_voxel.c:66: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L30:
	.align	2
.L29:
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
@ src/soar_voxel.c:70: };
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
@ src/soar_voxel.c:163: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L33	@,
@ src/soar_voxel.c:172: };
	@ sp needed	@
@ src/soar_voxel.c:163: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L33+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:164: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L33+8	@,
	ldr	r0, .L33+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L33+16	@,
	ldr	r0, .L33+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:166: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L33+24	@,
	ldr	r0, .L33+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:167: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L33+32	@,
	ldr	r0, .L33+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:168: 	LZ77UnCompVram(&lensFlareSprite, &tile_mem[5][193]);
	ldr	r1, .L33+40	@,
	ldr	r0, .L33+44	@ tmp124,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:169: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:170: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp131,
	ldr	r4, .L33+48	@ tmp127,
	movs	r2, #32	@,
	ldr	r0, .L33+52	@ tmp126,
	lsls	r1, r1, #2	@, tmp131,
	bl	.L35		@
@ src/soar_voxel.c:171: 	ApplyPalette(&lensFlarePal, 0x13);
	movs	r1, #152	@ tmp132,
	movs	r2, #32	@,
	ldr	r0, .L33+56	@ tmp129,
	lsls	r1, r1, #2	@, tmp132,
	bl	.L35		@
@ src/soar_voxel.c:172: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L34:
	.align	2
.L33:
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
	.word	100751392
	.word	lensFlareSprite
	.word	CopyToPaletteBuffer
	.word	minimapPal
	.word	lensFlarePal
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
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L37	@ tmp123,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp187
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp124, _1,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp129, tmp188,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r4, #44]	@ tmp129, CurrentProc_11(D)->sPlayerPosX
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L37+4	@ tmp130,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #10	@ tmp131, _5,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	movs	r3, #112	@ tmp138,
@ src/soar_voxel.c:115: 	CurrentProc->sunsetVal = 0;
	movs	r5, #0	@ tmp143,
@ src/soar_voxel.c:111: 	CurrentProc->sPlayerStepZ = 1;
	movs	r6, #1	@ tmp139,
@ src/soar_voxel.c:125: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	movs	r2, #128	@ tmp192,
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+CAMERA_Z_STEP;
	str	r3, [r4, #52]	@ tmp138, CurrentProc_11(D)->sPlayerPosZ
@ src/soar_voxel.c:112: 	CurrentProc->sPlayerYaw = a_SE;
	subs	r3, r3, #106	@ tmp140,
	str	r3, [r4, #60]	@ tmp140, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp136, tmp189,
@ src/soar_voxel.c:119: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L37+8	@ tmp145,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp137,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r4, #48]	@ tmp137, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:111: 	CurrentProc->sPlayerStepZ = 1;
	str	r6, [r4, #56]	@ tmp139, CurrentProc_11(D)->sPlayerStepZ
@ src/soar_voxel.c:113: 	CurrentProc->ShowMap = TRUE;
	str	r6, [r4, #68]	@ tmp139, CurrentProc_11(D)->ShowMap
@ src/soar_voxel.c:114: 	CurrentProc->location = Frelia;
	str	r6, [r4, #80]	@ tmp139, CurrentProc_11(D)->location
@ src/soar_voxel.c:115: 	CurrentProc->sunsetVal = 0;
	str	r5, [r4, #84]	@ tmp143, CurrentProc_11(D)->sunsetVal
@ src/soar_voxel.c:116: 	CurrentProc->sunTransition = 0;
	str	r5, [r4, #88]	@ tmp143, CurrentProc_11(D)->sunTransition
@ src/soar_voxel.c:119: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #64]	@ tmp145, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:125: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L37+12	@ tmp148,
	ldr	r1, .L37+16	@,
	ldr	r4, .L37+20	@ tmp149,
	lsls	r2, r2, #2	@, tmp192,
	bl	.L35		@
@ src/soar_voxel.c:127: 	VBlankIntrWait();
	ldr	r3, .L37+24	@ tmp150,
	bl	.L18		@
@ src/soar_voxel.c:129: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L37+28	@ tmp151,
	ldr	r2, .L37+32	@ tmp152,
@ src/soar_voxel.c:137: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r1, #4	@,
@ src/soar_voxel.c:129: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	strh	r2, [r3]	@ tmp152, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:137: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r0, #3	@,
	movs	r3, r5	@, tmp143
	movs	r2, #16	@,
	ldr	r7, .L37+36	@ tmp154,
	bl	.L39		@
@ src/soar_voxel.c:138: 	SetColorEffectsFirstTarget(0,0,0,0,0);
	movs	r1, r5	@, tmp143
	movs	r2, r5	@, tmp143
	movs	r3, r5	@, tmp143
	movs	r0, r5	@, tmp143
	str	r5, [sp]	@ tmp143,
	ldr	r7, .L37+40	@ tmp156,
	bl	.L39		@
@ src/soar_voxel.c:139: 	SetColorEffectBackdropFirstTarget(1);
	movs	r0, r6	@, tmp139
	ldr	r3, .L37+44	@ tmp157,
	bl	.L18		@
@ src/soar_voxel.c:145: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp162,
@ src/soar_voxel.c:144: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L37+48	@ tmp158,
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:145: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L37+52	@ tmp161,
	rsbs	r2, r2, #0	@ tmp162, tmp162
	strh	r2, [r3]	@ tmp162, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:146: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L37+56	@ tmp164,
	adds	r2, r2, #122	@ tmp165,
	adds	r2, r2, #255	@ tmp165,
	strh	r2, [r3]	@ tmp165, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:147: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L37+60	@ tmp167,
@ src/soar_voxel.c:148: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L37+64	@ tmp171,
@ src/soar_voxel.c:147: 	g_REG_BG2PD=0x00;	//
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:148: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L37+68	@ tmp170,
	str	r2, [r3]	@ tmp171, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:149: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp173,
	ldr	r3, .L37+72	@ tmp172,
	lsls	r2, r2, #1	@ tmp173, tmp173,
	str	r2, [r3]	@ tmp173, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:152: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L37+76	@ tmp174,
	bl	.L18		@
@ src/soar_voxel.c:153: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:154: 	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	ldr	r6, .L37+80	@ tmp175,
	movs	r0, #78	@,
	bl	.L40		@
@ src/soar_voxel.c:155: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	bl	.L40		@
@ src/soar_voxel.c:156: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp178,
@ src/soar_voxel.c:157: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp195,
@ src/soar_voxel.c:156: 	gCurrentMusic = 0x58;
	ldr	r3, .L37+84	@ tmp177,
@ src/soar_voxel.c:157: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp195,
@ src/soar_voxel.c:156: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp178, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:157: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #12	@,,
	ldr	r2, .L37+88	@,
	str	r5, [sp, #12]	@ tmp143, tmp
	bl	.L35		@
@ src/soar_voxel.c:159: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L37+92	@ tmp185,
	ldr	r3, .L37+96	@ tmp186,
	bl	.L18		@
@ src/soar_voxel.c:160: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L38:
	.align	2
.L37:
	.word	50352776
	.word	50352780
	.word	100704256
	.word	NewWMLoop
	.word	50360320
	.word	CpuFastSet
	.word	VBlankIntrWait
	.word	50344064
	.word	5189
	.word	SetColorEffectsParameters
	.word	SetColorEffectsFirstTarget
	.word	SetColorEffectBackdropFirstTarget
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	movs	r5, r0	@ CurrentProc, tmp141
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:251: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L42	@ tmp119,
	ldr	r3, .L42+4	@ tmp120,
	bl	.L18		@
@ src/soar_voxel.c:253: 	VBlankIntrWait();
	ldr	r4, .L42+8	@ tmp121,
@ src/soar_voxel.c:252: 	int vid_page = CurrentProc->vid_page;
	ldr	r6, [r5, #64]	@ _1, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:253: 	VBlankIntrWait();
	bl	.L35		@
@ src/soar_voxel.c:254:   	CpuFastFill16(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r3, #0	@ tmp145,
	ldr	r7, .L42+12	@ tmp123,
	str	r3, [sp, #8]	@ tmp145, tmp
	ldr	r3, .L42+16	@ tmp125,
	movs	r2, r7	@, tmp123
	movs	r1, r6	@, _1
	add	r0, sp, #8	@,,
	str	r3, [sp, #4]	@ tmp125, %sfp
	bl	.L18		@
@ src/soar_voxel.c:255:   	vid_flip(vid_page);
	movs	r0, r6	@, _1
	bl	vid_flip		@
@ src/soar_voxel.c:257:   	VBlankIntrWait();
	bl	.L35		@
@ src/soar_voxel.c:258:   	CpuFastFill16(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r3, #0	@ tmp148,
	str	r3, [sp, #12]	@ tmp148, tmp
@ src/soar_voxel.c:256:   	vid_page ^= 0xa000;
	movs	r3, #160	@ tmp128,
	lsls	r3, r3, #8	@ tmp128, tmp128,
	eors	r6, r3	@ vid_page.4_2, tmp128
@ src/soar_voxel.c:258:   	CpuFastFill16(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r1, r6	@, vid_page.4_2
	movs	r2, r7	@, tmp123
	ldr	r3, [sp, #4]	@ tmp125, %sfp
	add	r0, sp, #12	@,,
	bl	.L18		@
@ src/soar_voxel.c:259:   	vid_flip(vid_page);
	movs	r0, r6	@, vid_page.4_2
	bl	vid_flip		@
@ src/soar_voxel.c:261:   	VBlankIntrWait();
	bl	.L35		@
@ src/soar_voxel.c:262: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	movs	r2, #5	@ tmp134,
	ldr	r3, .L42+20	@ tmp133,
@ src/soar_voxel.c:271: 	BreakProcLoop(CurrentProc);
	movs	r0, r5	@, CurrentProc
@ src/soar_voxel.c:262: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	strh	r2, [r3]	@ tmp134, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:271: 	BreakProcLoop(CurrentProc);
	ldr	r3, .L42+24	@ tmp136,
	bl	.L18		@
@ src/soar_voxel.c:272: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L42+28	@ tmp138,
	ldr	r0, .L42+32	@,
	bl	.L18		@
@ src/soar_voxel.c:273: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L42+36	@ tmp139,
	bl	.L18		@
@ src/soar_voxel.c:274: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:275: 	VBlankIntrWait();
	bl	.L35		@
@ src/soar_voxel.c:278: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L43:
	.align	2
.L42:
	.word	OnVBlankMain
	.word	SetInterrupt_LCDVBlank
	.word	VBlankIntrWait
	.word	16787456
	.word	CpuFastSet
	.word	50344064
	.word	BreakProcLoop
	.word	ProcFind
	.word	144955208
	.word	ProcGoto
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
	push	{r4, lr}	@
@ src/soar_voxel.c:281: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L45		@,
	bgt	.L46		@,
	cmp	r0, #1	@ direction,
	bls	.L44		@,
.L47:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:312: };
	b	.L44		@
.L46:
@ src/soar_voxel.c:281: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L47		@,
@ src/soar_voxel.c:297: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L51	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:298: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L51+4	@ tmp133,
	ldr	r2, .L51+8	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:299: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L51+12	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:300: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L51+16	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:301: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L51+20	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:302: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L51+24	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L50		@
.L45:
@ src/soar_voxel.c:289: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L51	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:290: 			g_REG_BG2X=0x9280;
	ldr	r3, .L51+4	@ tmp117,
	ldr	r2, .L51+28	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:291: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L51+12	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:292: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L51+16	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:293: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L51+20	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:294: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L51+24	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L50:
@ src/soar_voxel.c:302: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L44:
@ src/soar_voxel.c:312: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L52:
	.align	2
.L51:
	.word	50344148
	.word	50344144
	.word	40000
	.word	50344136
	.word	50344138
	.word	50344140
	.word	50344142
	.word	37504
	.size	BumpScreen, .-BumpScreen
	.align	1
	.global	thumb_loop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	thumb_loop, %function
thumb_loop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	movs	r4, r0	@ CurrentProc, tmp508
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #60]	@ pretmp_223, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsls	r2, r3, #1	@ tmp239, pretmp_223,
	mov	ip, r2	@ tmp239, tmp239
	ldr	r6, .L128	@ tmp238,
@ src/soar_voxel.c:324: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r5, .L128+4	@ tmp237,
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldrsh	r1, [r2, r6]	@ _225, cam_pivot_dx_Angles
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [r4, #48]	@ pretmp_226, CurrentProc_123(D)->sPlayerPosY
@ src/soar_voxel.c:320: {
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	ip, ip, r6	@ tmp242, tmp238
@ src/soar_voxel.c:324: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldrh	r0, [r5, #4]	@ _1,
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	str	r2, [sp, #8]	@ pretmp_226, %sfp
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	mov	r2, ip	@ tmp242, tmp242
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	str	r1, [sp, #4]	@ _225, %sfp
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r1, #32	@ tmp547,
	ldrsh	r2, [r2, r1]	@ _228, tmp242, tmp547
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [r4, #44]	@ pretmp_201, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	mov	ip, r2	@ _228, _228
@ src/soar_voxel.c:324: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r2, r0, #26	@ tmp536, _1,
	bpl	.L54		@,
@ src/soar_voxel.c:327: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	movs	r0, #15	@ tmp250,
@ src/soar_voxel.c:327: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	subs	r3, r3, #1	@ tmp249,
@ src/soar_voxel.c:327: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	ands	r3, r0	@ _10, tmp250
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [sp, #4]	@ _225, %sfp
@ src/soar_voxel.c:327: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _10, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:329: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp252, _10,
	adds	r0, r6, r3	@ tmp253, tmp238, tmp252
@ src/soar_voxel.c:325: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r7, r2	@ newx, pretmp_201, _225
@ src/soar_voxel.c:329: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp548,
	ldrsh	r0, [r0, r7]	@ tmp255, tmp253, tmp548
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r1, [sp, #8]	@ pretmp_226, %sfp
@ src/soar_voxel.c:329: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r0, r0, #2	@ tmp257, tmp255,
@ src/soar_voxel.c:329: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r0, #2	@ tmp259, tmp257,
	subs	r0, r0, r7	@ tmp260, tmp257, tmp259
@ src/soar_voxel.c:326: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, ip	@ pretmp_226, _228
@ src/soar_voxel.c:329: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r0, r1	@ newy, tmp260, newy
@ src/soar_voxel.c:328: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r6]	@ tmp263, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp265, tmp263,
@ src/soar_voxel.c:328: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp267, tmp265,
	subs	r3, r3, r0	@ tmp268, tmp265, tmp267
@ src/soar_voxel.c:332: 		BumpScreen(bump_left);
	movs	r0, #2	@,
@ src/soar_voxel.c:328: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp268, newx
@ src/soar_voxel.c:330: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:331: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_123(D)->sPlayerPosY
.L126:
@ src/soar_voxel.c:342: 		BumpScreen(bump_right);
	bl	BumpScreen		@
.L55:
@ src/soar_voxel.c:353: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r4, #60]	@ _38, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:353: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	adds	r2, r6, #2	@ tmp305, tmp238,
	lsls	r3, r3, #1	@ tmp306, _38,
	adds	r2, r2, r3	@ tmp307, tmp305, tmp306
	movs	r1, #62	@ tmp309,
	ldrsh	r1, [r2, r1]	@ tmp309, tmp307, tmp309
@ src/soar_voxel.c:353: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [r4, #44]	@ CurrentProc_123(D)->sPlayerPosX, CurrentProc_123(D)->sPlayerPosX
	adds	r1, r1, r2	@ _41, tmp309, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:354: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r6	@ tmp314, tmp238
	adds	r2, r2, #96	@ tmp314,
	ldrsh	r2, [r3, r2]	@ tmp316, cam_dy_Angles
@ src/soar_voxel.c:354: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ CurrentProc_123(D)->sPlayerPosY, CurrentProc_123(D)->sPlayerPosY
	adds	r2, r2, r0	@ _45, tmp316, CurrentProc_123(D)->sPlayerPosY
@ src/soar_voxel.c:355: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r6, r3]	@ tmp320, cam_pivot_dx_Angles
@ src/soar_voxel.c:353: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r4, #44]	@ _41, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:356: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r6, r3	@ tmp324, tmp238, tmp306
@ src/soar_voxel.c:355: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r0, r1	@ tmp321, tmp320, _41
@ src/soar_voxel.c:355: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #72]	@ tmp321, CurrentProc_123(D)->sFocusPtX
@ src/soar_voxel.c:356: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	movs	r1, #32	@ tmp555,
	ldrsh	r3, [r3, r1]	@ tmp326, tmp324, tmp555
@ src/soar_voxel.c:356: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r3, r2	@ tmp327, tmp326, _45
@ src/soar_voxel.c:354: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #48]	@ _45, CurrentProc_123(D)->sPlayerPosY
@ src/soar_voxel.c:356: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r3, [r4, #76]	@ tmp327, CurrentProc_123(D)->sFocusPtY
@ src/soar_voxel.c:359: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r3, [r5, #8]	@ tmp330,
	lsls	r3, r3, #28	@ tmp538, tmp330,
	bpl	.L57		@,
@ src/soar_voxel.c:360: 		if (CurrentProc->location)
	ldr	r2, [r4, #80]	@ CurrentProc_123(D)->location, CurrentProc_123(D)->location
	ldr	r3, .L128+8	@ tmp461,
	cmp	r2, #0	@ CurrentProc_123(D)->location,
	beq	.L58		@,
@ src/soar_voxel.c:362: 			m4aSongNumStart(0x73);
	movs	r0, #115	@,
	bl	.L18		@
@ src/soar_voxel.c:363: 			EndLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ src/soar_voxel.c:364: 			return 0;
	movs	r0, #0	@ <retval>,
.L53:
@ src/soar_voxel.c:432: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L54:
@ src/soar_voxel.c:334: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	lsls	r0, r0, #27	@ tmp537, _1,
	bpl	.L56		@,
@ src/soar_voxel.c:336: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r1, [sp, #8]	@ pretmp_226, %sfp
	add	r1, r1, ip	@ pretmp_226, _228
	movs	r0, r1	@ newy, pretmp_226
@ src/soar_voxel.c:337: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	movs	r1, #15	@ tmp276,
@ src/soar_voxel.c:337: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	adds	r3, r3, #1	@ tmp275,
@ src/soar_voxel.c:337: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	ands	r3, r1	@ _27, tmp276
@ src/soar_voxel.c:335: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [sp, #4]	@ _225, %sfp
@ src/soar_voxel.c:337: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _27, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:339: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp278, _27,
	adds	r1, r6, r3	@ tmp279, tmp238, tmp278
@ src/soar_voxel.c:335: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r7, r2	@ newx, pretmp_201, _225
@ src/soar_voxel.c:339: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp550,
	ldrsh	r1, [r1, r7]	@ tmp281, tmp279, tmp550
	asrs	r1, r1, #2	@ tmp283, tmp281,
@ src/soar_voxel.c:339: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r1, #2	@ tmp285, tmp283,
	subs	r1, r1, r7	@ tmp286, tmp283, tmp285
@ src/soar_voxel.c:339: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r1, r0	@ newy, tmp286, newy
@ src/soar_voxel.c:338: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r6]	@ tmp289, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp291, tmp289,
@ src/soar_voxel.c:338: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp293, tmp291,
	subs	r3, r3, r0	@ tmp294, tmp291, tmp293
@ src/soar_voxel.c:338: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp294, newx
@ src/soar_voxel.c:342: 		BumpScreen(bump_right);
	movs	r0, #3	@,
@ src/soar_voxel.c:340: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:341: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_123(D)->sPlayerPosY
	b	.L126		@
.L56:
@ src/soar_voxel.c:344: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	movs	r3, #48	@ tmp300,
	ldrh	r2, [r5, #10]	@ tmp298,
	tst	r2, r3	@ tmp298, tmp300
	beq	.L55		@,
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:312: };
	b	.L55		@
.L58:
@ src/soar_voxel.c:366: 		else m4aSongNumStart(0x6c); //invalid sfx
	movs	r0, #108	@,
	bl	.L18		@
.L57:
@ src/soar_voxel.c:369: 	if (gKeyState.pressedKeys & L_BUTTON){
	ldrh	r2, [r5, #8]	@ _54,
@ src/soar_voxel.c:369: 	if (gKeyState.pressedKeys & L_BUTTON){
	lsls	r3, r2, #22	@ tmp539, _54,
	bpl	.L60		@,
@ src/soar_voxel.c:370: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r3, [r4, #84]	@ _55, CurrentProc_123(D)->sunsetVal
@ src/soar_voxel.c:371: 		else CurrentProc->sunTransition = 1;
	movs	r1, #1	@ cstore_199,
@ src/soar_voxel.c:370: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r3, #0	@ _55,
	beq	.L61		@,
@ src/soar_voxel.c:370: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	subs	r1, r1, #2	@ cstore_199,
.L61:
@ src/soar_voxel.c:372: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r1	@ tmp345, _55, cstore_199
	str	r1, [r4, #88]	@ cstore_199, CurrentProc_123(D)->sunTransition
	str	r3, [r4, #84]	@ tmp345, CurrentProc_123(D)->sunsetVal
.L60:
@ src/soar_voxel.c:375: 	if (CurrentProc->sunTransition!=0)
	ldr	r3, [r4, #88]	@ _58, CurrentProc_123(D)->sunTransition
@ src/soar_voxel.c:375: 	if (CurrentProc->sunTransition!=0)
	cmp	r3, #0	@ _58,
	beq	.L62		@,
@ src/soar_voxel.c:377: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r1, [r4, #84]	@ _59, CurrentProc_123(D)->sunsetVal
@ src/soar_voxel.c:377: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	subs	r0, r1, #1	@ tmp346, _59,
@ src/soar_voxel.c:377: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r0, #6	@ tmp346,
	bhi	.L63		@,
@ src/soar_voxel.c:379: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r1	@ tmp347, _58, _59
	str	r3, [r4, #84]	@ tmp347, CurrentProc_123(D)->sunsetVal
.L62:
@ src/soar_voxel.c:387: 	if (gKeyState.pressedKeys & R_BUTTON){
	lsls	r2, r2, #23	@ tmp540, _54,
	bpl	.L64		@,
@ src/soar_voxel.c:388: 		CurrentProc->ShowMap ^= 1;
	movs	r3, #1	@ tmp356,
	ldr	r2, [r4, #68]	@ CurrentProc_123(D)->ShowMap, CurrentProc_123(D)->ShowMap
	eors	r3, r2	@ tmp354, CurrentProc_123(D)->ShowMap
	str	r3, [r4, #68]	@ tmp354, CurrentProc_123(D)->ShowMap
.L64:
@ src/soar_voxel.c:391: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r5, [r5, #4]	@ _65,
@ src/soar_voxel.c:391: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	lsls	r3, r5, #25	@ tmp541, _65,
	bpl	.L65		@,
@ src/soar_voxel.c:392: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #60]	@ _67, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:392: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r2, r6, #2	@ tmp364, tmp238,
	lsls	r3, r3, #1	@ tmp365, _67,
	adds	r2, r2, r3	@ tmp366, tmp364, tmp365
	movs	r1, #62	@ tmp368,
	ldrsh	r1, [r2, r1]	@ tmp368, tmp366, tmp368
@ src/soar_voxel.c:392: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #44]	@ CurrentProc_123(D)->sPlayerPosX, CurrentProc_123(D)->sPlayerPosX
	adds	r2, r2, r1	@ tmp369, CurrentProc_123(D)->sPlayerPosX, tmp368
	str	r2, [r4, #44]	@ tmp369, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:393: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r6	@ tmp374, tmp238
	adds	r2, r2, #96	@ tmp374,
	ldrsh	r2, [r3, r2]	@ tmp376, cam_dy_Angles
@ src/soar_voxel.c:393: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #48]	@ CurrentProc_123(D)->sPlayerPosY, CurrentProc_123(D)->sPlayerPosY
	adds	r3, r3, r2	@ tmp377, CurrentProc_123(D)->sPlayerPosY, tmp376
	str	r3, [r4, #48]	@ tmp377, CurrentProc_123(D)->sPlayerPosY
.L65:
@ src/soar_voxel.c:395: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	lsls	r3, r5, #24	@ tmp542, _65,
	bpl	.L66		@,
@ src/soar_voxel.c:396: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #60]	@ _76, CurrentProc_123(D)->sPlayerYaw
@ src/soar_voxel.c:396: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r2, r6, #2	@ tmp385, tmp238,
	lsls	r3, r3, #1	@ tmp386, _76,
	adds	r2, r2, r3	@ tmp387, tmp385, tmp386
	movs	r1, #62	@ tmp389,
	ldrsh	r1, [r2, r1]	@ tmp389, tmp387, tmp389
@ src/soar_voxel.c:396: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #44]	@ CurrentProc_123(D)->sPlayerPosX, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:397: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r6, r6, #96	@ tmp395,
@ src/soar_voxel.c:396: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	subs	r2, r2, r1	@ tmp390, CurrentProc_123(D)->sPlayerPosX, tmp389
	str	r2, [r4, #44]	@ tmp390, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:397: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r2, [r3, r6]	@ tmp397, cam_dy_Angles
@ src/soar_voxel.c:397: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #48]	@ CurrentProc_123(D)->sPlayerPosY, CurrentProc_123(D)->sPlayerPosY
	subs	r3, r3, r2	@ tmp398, CurrentProc_123(D)->sPlayerPosY, tmp397
	str	r3, [r4, #48]	@ tmp398, CurrentProc_123(D)->sPlayerPosY
.L66:
@ src/soar_voxel.c:399: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return 0; //don't bother rendering if only holding down
	ldr	r3, [r4, #88]	@ CurrentProc_123(D)->sunTransition, CurrentProc_123(D)->sunTransition
@ src/soar_voxel.c:399: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return 0; //don't bother rendering if only holding down
	cmp	r3, #0	@ CurrentProc_123(D)->sunTransition,
	bne	.L81		@,
@ src/soar_voxel.c:399: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return 0; //don't bother rendering if only holding down
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:399: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return 0; //don't bother rendering if only holding down
	cmp	r5, #128	@ _65,
	bne	.LCB940	@
	b	.L53	@long jump	@
.LCB940:
.L81:
@ src/soar_voxel.c:403: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldr	r1, [r4, #76]	@, CurrentProc_123(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_123(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:404: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r3, [r4, #48]	@ _91, CurrentProc_123(D)->sPlayerPosY
	str	r3, [sp, #4]	@ _91, %sfp
@ src/soar_voxel.c:405: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r3, [r4, #52]	@ _92, CurrentProc_123(D)->sPlayerPosZ
@ src/soar_voxel.c:405: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	movs	r6, r3	@ camera_ht, _92
	subs	r6, r6, #48	@ camera_ht,
@ src/soar_voxel.c:403: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	str	r0, [sp, #12]	@ tmp509, %sfp
@ src/soar_voxel.c:404: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r7, [r4, #44]	@ _90, CurrentProc_123(D)->sPlayerPosX
@ src/soar_voxel.c:405: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	str	r3, [sp, #8]	@ _92, %sfp
@ src/soar_voxel.c:406: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r6	@ player_terrain_ht, camera_ht
	bgt	.L68		@,
@ src/soar_voxel.c:404: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	movs	r0, r7	@, _90
	ldr	r1, [sp, #4]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:406: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r6	@ camera_terrain_ht, camera_ht
	ble	.L69		@,
.L68:
@ src/soar_voxel.c:407: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [sp, #8]	@ _92, %sfp
	adds	r3, r3, #48	@ _92,
	str	r3, [r4, #52]	@ tmp412, CurrentProc_123(D)->sPlayerPosZ
@ src/soar_voxel.c:408: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_123(D)->sPlayerStepZ, CurrentProc_123(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp413,
.L127:
@ src/soar_voxel.c:413: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r4, #56]	@ tmp441, CurrentProc_123(D)->sPlayerStepZ
.L70:
@ src/soar_voxel.c:417: 	if (gKeyState.heldKeys & A_BUTTON){
	lsls	r5, r5, #31	@ tmp544, _65,
	bpl	.L74		@,
@ src/soar_voxel.c:418: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	movs	r2, #152	@ tmp448,
@ src/soar_voxel.c:418: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r4, #52]	@ _104, CurrentProc_123(D)->sPlayerPosZ
@ src/soar_voxel.c:418: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	lsls	r2, r2, #1	@ tmp448, tmp448,
	cmp	r3, r2	@ _104, tmp448
	bge	.L74		@,
@ src/soar_voxel.c:419: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r3, r3, #48	@ tmp449,
	str	r3, [r4, #52]	@ tmp449, CurrentProc_123(D)->sPlayerPosZ
@ src/soar_voxel.c:420: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_123(D)->sPlayerStepZ, CurrentProc_123(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp450,
	str	r3, [r4, #56]	@ tmp450, CurrentProc_123(D)->sPlayerStepZ
.L74:
@ src/soar_voxel.c:426: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	movs	r3, #128	@ tmp462,
	lsls	r3, r3, #3	@ tmp462, tmp462,
	cmp	r7, r3	@ _90, tmp462
	ble	.L75		@,
@ src/soar_voxel.c:426: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [r4, #44]	@ tmp462, CurrentProc_123(D)->sPlayerPosX
.L76:
@ src/soar_voxel.c:428: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r2, [sp, #4]	@ _91, %sfp
	cmp	r2, r3	@ _91, tmp462
	ble	.L77		@,
@ src/soar_voxel.c:431: 	return 1;
	movs	r0, #1	@ <retval>,
@ src/soar_voxel.c:428: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	str	r3, [r4, #48]	@ tmp462, CurrentProc_123(D)->sPlayerPosY
	b	.L53		@
.L63:
@ src/soar_voxel.c:383: 			CurrentProc->sunTransition = 0;
	movs	r3, #0	@ tmp348,
	str	r3, [r4, #88]	@ tmp348, CurrentProc_123(D)->sunTransition
	b	.L62		@
.L69:
@ src/soar_voxel.c:410: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	lsls	r3, r5, #30	@ tmp543, _65,
	bpl	.L70		@,
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	ldr	r3, [sp, #12]	@ player_terrain_ht, %sfp
	adds	r3, r3, #48	@ player_terrain_ht,
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r2, #1	@ tmp421,
	cmp	r3, r6	@ tmp420, camera_ht
	blt	.L71		@,
	movs	r2, #0	@ tmp421,
.L71:
	ldr	r1, [sp, #8]	@ _92, %sfp
	movs	r3, #1	@ tmp425,
	cmp	r1, #64	@ _92,
	bgt	.L72		@,
	movs	r3, #0	@ tmp425,
.L72:
	ands	r3, r2	@ tmp429, tmp421
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp433, tmp429,
	beq	.L70		@,
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	adds	r0, r0, #48	@ tmp434,
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r3, #1	@ tmp435,
	cmp	r0, r6	@ tmp434, camera_ht
	blt	.L73		@,
	movs	r3, #0	@ tmp435,
.L73:
@ src/soar_voxel.c:411: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp440, tmp435,
	beq	.L70		@,
@ src/soar_voxel.c:413: 			CurrentProc->sPlayerStepZ -= 1;
	ldr	r3, [r4, #56]	@ CurrentProc_123(D)->sPlayerStepZ, CurrentProc_123(D)->sPlayerStepZ
@ src/soar_voxel.c:412: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ camera_ht, CurrentProc_123(D)->sPlayerPosZ
@ src/soar_voxel.c:413: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r3, r3, #1	@ tmp441,
	b	.L127		@
.L75:
@ src/soar_voxel.c:427: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	cmp	r7, #0	@ _90,
	bge	.L76		@,
@ src/soar_voxel.c:427: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movs	r2, #0	@ tmp454,
	str	r2, [r4, #44]	@ tmp454, CurrentProc_123(D)->sPlayerPosX
	b	.L76		@
.L77:
@ src/soar_voxel.c:429: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	ldr	r3, [sp, #4]	@ _91, %sfp
@ src/soar_voxel.c:431: 	return 1;
	movs	r0, #1	@ <retval>,
@ src/soar_voxel.c:429: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	cmp	r3, #0	@ _91,
	blt	.LCB1067	@
	b	.L53	@long jump	@
.LCB1067:
@ src/soar_voxel.c:429: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movs	r3, #0	@ tmp457,
	str	r3, [r4, #48]	@ tmp457, CurrentProc_123(D)->sPlayerPosY
	b	.L53		@
.L129:
	.align	2
.L128:
	.word	.LANCHOR0
	.word	gKeyState
	.word	m4aSongNumStart
	.size	thumb_loop, .-thumb_loop
	.global	translatedLocations
	.global	WorldMapNodes
	.global	gObj_aff32x32
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
.LC45:
	.ascii	"NewWorldMap\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
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
	.type	translatedLocations, %object
	.size	translatedLocations, 8
translatedLocations:
	.ascii	"\000\001\023\022\024\027\032\033"
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
	.type	gObj_aff32x32, %object
	.size	gObj_aff32x32, 6
gObj_aff32x32:
	.short	1
	.short	1024
	.short	-32768
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
	.space	2
	.type	PkOamData, %object
	.size	PkOamData, 4
PkOamData:
	.space	4
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
	.size	Proc_Soaring, 168
Proc_Soaring:
@ type:
	.short	1
@ sArg:
	.short	0
@ lArg:
	.word	.LC45
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
	.word	MoveLord
@ type:
	.short	2
@ sArg:
	.short	0
@ lArg:
	.word	134848105
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
.L18:
	bx	r3
.L35:
	bx	r4
.L40:
	bx	r6
.L39:
	bx	r7
