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
@ src/soar_voxel.c:320: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r3, #128	@ tmp122,
@ src/soar_voxel.c:319: static inline int getPtHeight_thumb(int ptx, int pty){
	push	{r4, lr}	@
@ src/soar_voxel.c:320: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r4, r0	@ tmp121, ptx
@ src/soar_voxel.c:319: static inline int getPtHeight_thumb(int ptx, int pty){
	movs	r2, r0	@ ptx, tmp127
@ src/soar_voxel.c:320: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r4, r1	@ tmp121, pty
@ src/soar_voxel.c:320: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:320: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	lsls	r3, r3, #3	@ tmp122, tmp122,
	cmp	r4, r3	@ tmp121, tmp122
	bcs	.L1		@,
@ src/soar_voxel.c:321: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r3, .L4	@ tmp123,
@ src/soar_voxel.c:321: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsls	r1, r1, #10	@ tmp124, pty,
@ src/soar_voxel.c:321: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	adds	r3, r3, r2	@ tmp125, tmp123, ptx
	ldrb	r0, [r3, r1]	@ <retval>, heightMap
.L1:
@ src/soar_voxel.c:322: };
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
	push	{r4, r5, r6, lr}	@
@ src/soar_voxel.c:226: 	VBlankIntrWait();
	ldr	r6, .L20	@ tmp127,
@ src/soar_voxel.c:253: };
	@ sp needed	@
@ src/soar_voxel.c:224: void MoveLord(SoarProc* CurrentProc){
	movs	r5, r0	@ CurrentProc, tmp141
@ src/soar_voxel.c:226: 	VBlankIntrWait();
	bl	.L22		@
@ src/soar_voxel.c:227: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L20+4	@ tmp129,
	ldr	r0, .L20+8	@,
	bl	.L18		@
	movs	r4, r0	@ wmproc, tmp142
@ src/soar_voxel.c:228: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L20+12	@ tmp130,
	bl	.L18		@
@ src/soar_voxel.c:229: 	VBlankIntrWait();
	bl	.L22		@
@ src/soar_voxel.c:230: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:231: 	RefreshWMProc(wmproc);
	movs	r0, r4	@, wmproc
	bl	RefreshWMProc		@
@ src/soar_voxel.c:239: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r2, #1	@ tmp143,
@ src/soar_voxel.c:238: 	int location = CurrentProc->location;
	ldr	r4, [r5, #80]	@ location, CurrentProc_18(D)->location
@ src/soar_voxel.c:239: 	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	movs	r1, #1	@,
	movs	r3, r4	@, location
	rsbs	r2, r2, #0	@, tmp143
	movs	r0, #0	@,
	bl	GM_PutCharUnit		@
@ src/soar_voxel.c:240: 	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	movs	r0, #0	@,
	bl	RefreshWMSprite		@
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldr	r2, .L20+16	@ tmp134,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L20+20	@ tmp133,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L20+24	@ tmp136,
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L20+28	@ tmp137,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:246: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp139,
	ldr	r3, .L20+32	@ tmp138,
	lsls	r2, r2, #5	@ tmp139, tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:253: };
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L21:
	.align	2
.L20:
	.word	VBlankIntrWait
	.word	ProcFind
	.word	144955208
	.word	ProcGoto
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
@ src/soar_voxel.c:310: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp114,
@ src/soar_voxel.c:317: };
	@ sp needed	@
@ src/soar_voxel.c:311: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp117,
@ src/soar_voxel.c:310: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L24	@ tmp113,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:311: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L24+4	@ tmp116,
	rsbs	r1, r1, #0	@ tmp117, tmp117
	strh	r1, [r2]	@ tmp117, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:312: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L24+8	@ tmp119,
	adds	r1, r1, #122	@ tmp120,
	adds	r1, r1, #255	@ tmp120,
	strh	r1, [r2]	@ tmp120, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:313: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L24+12	@ tmp122,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:314: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L24+16	@ tmp125,
	ldr	r2, .L24+20	@ tmp126,
	str	r2, [r3]	@ tmp126, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:315: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp128,
	ldr	r3, .L24+24	@ tmp127,
	lsls	r2, r2, #1	@ tmp128, tmp128,
	str	r2, [r3]	@ tmp128, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:317: };
	bx	lr
.L25:
	.align	2
.L24:
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
	ldr	r2, .L27	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:59: }
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r3, .L30	@ tmp117,
@ src/soar_voxel.c:66: };
	@ sp needed	@
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L30+4	@,
	bl	.L18		@
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L30+8	@ tmp118,
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L30+12	@ tmp119,
	bl	.L18		@
@ src/soar_voxel.c:66: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L31:
	.align	2
.L30:
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
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L34	@,
@ src/soar_voxel.c:174: };
	@ sp needed	@
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L34+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:166: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L34+8	@,
	ldr	r0, .L34+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:167: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L34+16	@,
	ldr	r0, .L34+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:168: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L34+24	@,
	ldr	r0, .L34+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:169: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L34+32	@,
	ldr	r0, .L34+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:170: 	LZ77UnCompVram(&lensFlareSprite, &tile_mem[5][193]);
	ldr	r1, .L34+40	@,
	ldr	r0, .L34+44	@ tmp124,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:171: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:172: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp131,
	ldr	r4, .L34+48	@ tmp127,
	movs	r2, #32	@,
	ldr	r0, .L34+52	@ tmp126,
	lsls	r1, r1, #2	@, tmp131,
	bl	.L36		@
@ src/soar_voxel.c:173: 	ApplyPalette(&lensFlarePal, 0x13);
	movs	r1, #152	@ tmp132,
	movs	r2, #32	@,
	ldr	r0, .L34+56	@ tmp129,
	lsls	r1, r1, #2	@, tmp132,
	bl	.L36		@
@ src/soar_voxel.c:174: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L35:
	.align	2
.L34:
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
	ldr	r3, .L38	@ tmp126,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp197
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp127, _1,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp132, tmp198,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r4, #44]	@ tmp132, CurrentProc_11(D)->sPlayerPosX
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L38+4	@ tmp133,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #10	@ tmp134, _5,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	movs	r3, #96	@ tmp143,
@ src/soar_voxel.c:116: 	CurrentProc->sunsetVal = 0;
	movs	r5, #0	@ tmp142,
@ src/soar_voxel.c:115: 	CurrentProc->location = Frelia;
	movs	r6, #1	@ tmp141,
@ src/soar_voxel.c:117: 	CurrentProc->sunTransition = 0;
	movs	r2, #128	@ tmp155,
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	str	r3, [r4, #52]	@ tmp143, CurrentProc_11(D)->sPlayerPosZ
@ src/soar_voxel.c:111: 	CurrentProc->sPlayerStepZ = 2;
	subs	r3, r3, #94	@ tmp144,
	str	r3, [r4, #56]	@ tmp144, CurrentProc_11(D)->sPlayerStepZ
@ src/soar_voxel.c:112: 	CurrentProc->sPlayerYaw = a_SE;
	adds	r3, r3, #4	@ tmp145,
	str	r3, [r4, #60]	@ tmp145, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp139, tmp199,
@ src/soar_voxel.c:122: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L38+8	@ tmp146,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp140,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r4, #48]	@ tmp140, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:115: 	CurrentProc->location = Frelia;
	str	r6, [r4, #80]	@ tmp141, CurrentProc_11(D)->location
@ src/soar_voxel.c:116: 	CurrentProc->sunsetVal = 0;
	str	r5, [r4, #84]	@ tmp142, CurrentProc_11(D)->sunsetVal
@ src/soar_voxel.c:122: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #64]	@ tmp146, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:117: 	CurrentProc->sunTransition = 0;
	adds	r4, r4, #6	@ tmp147,
	ldrh	r3, [r4, #62]	@ MEM <unsigned short> [(void *)CurrentProc_11(D) + 68B], MEM <unsigned short> [(void *)CurrentProc_11(D) + 68B]
	lsrs	r3, r3, #12	@ tmp152, MEM <unsigned short> [(void *)CurrentProc_11(D) + 68B],
	lsls	r2, r2, #3	@ tmp155, tmp155,
	lsls	r3, r3, #12	@ tmp151, tmp152,
	orrs	r3, r2	@ tmp154, tmp155
@ src/soar_voxel.c:128: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	movs	r2, #160	@ tmp203,
@ src/soar_voxel.c:117: 	CurrentProc->sunTransition = 0;
	strh	r3, [r4, #62]	@ tmp154, MEM <unsigned short> [(void *)CurrentProc_11(D) + 68B]
@ src/soar_voxel.c:128: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L38+12	@ tmp159,
	ldr	r1, .L38+16	@,
	ldr	r4, .L38+20	@ tmp160,
	lsls	r2, r2, #2	@, tmp203,
	bl	.L36		@
@ src/soar_voxel.c:130: 	VBlankIntrWait();
	ldr	r3, .L38+24	@ tmp161,
	bl	.L18		@
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L38+28	@ tmp162,
	ldr	r2, .L38+32	@ tmp163,
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r1, #4	@,
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	strh	r2, [r3]	@ tmp163, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r0, #3	@,
	movs	r3, r5	@, tmp142
	movs	r2, #16	@,
	ldr	r7, .L38+36	@ tmp165,
	bl	.L40		@
@ src/soar_voxel.c:141: 	SetColorEffectsFirstTarget(0,0,0,0,0);
	movs	r1, r5	@, tmp142
	movs	r2, r5	@, tmp142
	movs	r3, r5	@, tmp142
	movs	r0, r5	@, tmp142
	str	r5, [sp]	@ tmp142,
	ldr	r7, .L38+40	@ tmp167,
	bl	.L40		@
@ src/soar_voxel.c:142: 	SetColorEffectBackdropFirstTarget(1);
	movs	r0, r6	@, tmp141
	ldr	r3, .L38+44	@ tmp168,
	bl	.L18		@
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp173,
@ src/soar_voxel.c:147: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L38+48	@ tmp169,
	strh	r5, [r3]	@ tmp142, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L38+52	@ tmp172,
	rsbs	r2, r2, #0	@ tmp173, tmp173
	strh	r2, [r3]	@ tmp173, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:149: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L38+56	@ tmp175,
	adds	r2, r2, #122	@ tmp176,
	adds	r2, r2, #255	@ tmp176,
	strh	r2, [r3]	@ tmp176, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L38+60	@ tmp178,
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L38+64	@ tmp182,
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	strh	r5, [r3]	@ tmp142, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L38+68	@ tmp181,
	str	r2, [r3]	@ tmp182, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:152: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp184,
	ldr	r3, .L38+72	@ tmp183,
	lsls	r2, r2, #1	@ tmp184, tmp184,
	str	r2, [r3]	@ tmp184, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:154: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L38+76	@ tmp185,
	bl	.L18		@
@ src/soar_voxel.c:155: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:157: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	ldr	r3, .L38+80	@ tmp186,
	bl	.L18		@
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp188,
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp206,
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	ldr	r3, .L38+84	@ tmp187,
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp206,
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp188, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #12	@,,
	ldr	r2, .L38+88	@,
	str	r5, [sp, #12]	@ tmp142, tmp
	bl	.L36		@
@ src/soar_voxel.c:161: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L38+92	@ tmp195,
	ldr	r3, .L38+96	@ tmp196,
	bl	.L18		@
@ src/soar_voxel.c:162: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L39:
	.align	2
.L38:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}	@
@ src/soar_voxel.c:255: void EndLoop(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp128
@ src/soar_voxel.c:283: };
	@ sp needed	@
@ src/soar_voxel.c:256: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L42	@ tmp116,
	ldr	r3, .L42+4	@ tmp117,
	bl	.L18		@
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	ldr	r5, .L42+8	@ tmp118,
@ src/soar_voxel.c:257: 	int vid_page = CurrentProc->vid_page;
	ldr	r6, [r4, #64]	@ _1, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	bl	.L44		@
@ src/soar_voxel.c:259:   	CpuFastFill(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r3, #0	@ tmp119,
	movs	r1, r6	@, _1
	ldr	r2, .L42+12	@,
	str	r3, [sp, #4]	@ tmp119, tmp
	add	r0, sp, #4	@,,
	ldr	r3, .L42+16	@ tmp122,
	bl	.L18		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	movs	r0, r6	@, _1
	bl	vid_flip		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	str	r0, [r4, #64]	@ tmp129, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:266:   	VBlankIntrWait();
	bl	.L44		@
@ src/soar_voxel.c:267: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	movs	r2, #5	@ tmp125,
	ldr	r3, .L42+20	@ tmp124,
@ src/soar_voxel.c:276: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
@ src/soar_voxel.c:267: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	strh	r2, [r3]	@ tmp125, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:276: 	BreakProcLoop(CurrentProc);
	ldr	r3, .L42+24	@ tmp127,
	bl	.L18		@
@ src/soar_voxel.c:283: };
	pop	{r0, r1, r4, r5, r6}
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
@ src/soar_voxel.c:286: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L46		@,
	bgt	.L47		@,
	cmp	r0, #1	@ direction,
	bls	.L45		@,
.L48:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:317: };
	b	.L45		@
.L47:
@ src/soar_voxel.c:286: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L48		@,
@ src/soar_voxel.c:302: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L52	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:303: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L52+4	@ tmp133,
	ldr	r2, .L52+8	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:304: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L52+12	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:305: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L52+16	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:306: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L52+20	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:307: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L52+24	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L51		@
.L46:
@ src/soar_voxel.c:294: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L52	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:295: 			g_REG_BG2X=0x9280;
	ldr	r3, .L52+4	@ tmp117,
	ldr	r2, .L52+28	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:296: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L52+12	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:297: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L52+16	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:298: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L52+20	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:299: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L52+24	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L51:
@ src/soar_voxel.c:307: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L45:
@ src/soar_voxel.c:317: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L53:
	.align	2
.L52:
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
@ src/soar_voxel.c:327: 	if (CurrentProc->oceanClock & 1)
	movs	r1, r0	@ tmp269, CurrentProc
@ src/soar_voxel.c:325: {
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:327: 	if (CurrentProc->oceanClock & 1)
	adds	r1, r1, #70	@ tmp269,
	ldrb	r2, [r1]	@ _1,
@ src/soar_voxel.c:325: {
	movs	r4, r0	@ CurrentProc, tmp690
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:327: 	if (CurrentProc->oceanClock & 1)
	lsls	r3, r2, #31	@ tmp741, _1,
	bpl	.L55		@,
@ src/soar_voxel.c:330: 		else CurrentProc->oceanClock -= 1;
	subs	r3, r2, #1	@ tmp279, _1,
	lsls	r3, r3, #24	@ _289, tmp279,
	lsrs	r3, r3, #24	@ _289, _289,
@ src/soar_voxel.c:329: 		if (CurrentProc->oceanClock < (0x41-4))	CurrentProc->oceanClock+=4;
	cmp	r2, #60	@ _1,
	bhi	.L57		@,
@ src/soar_voxel.c:329: 		if (CurrentProc->oceanClock < (0x41-4))	CurrentProc->oceanClock+=4;
	adds	r2, r2, #4	@ tmp277,
.L133:
@ src/soar_voxel.c:334: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	lsls	r3, r2, #24	@ _289, tmp283,
	lsrs	r3, r3, #24	@ _289, _289,
.L57:
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r7, r4	@ tmp297, CurrentProc
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r6, #0	@ tmp306,
	movs	r0, #6	@ tmp304,
@ src/soar_voxel.c:330: 		else CurrentProc->oceanClock -= 1;
	strb	r3, [r1]	@ _289, CurrentProc_155(D)->oceanClock
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	adds	r7, r7, #69	@ tmp297,
	ldrb	r3, [r7]	@ *CurrentProc_155(D), *CurrentProc_155(D)
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	ldr	r5, [r4, #56]	@ _7, CurrentProc_155(D)->sPlayerStepZ
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsls	r1, r3, #29	@ tmp301, *CurrentProc_155(D),
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsrs	r2, r5, #31	@ tmp305, _7,
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsrs	r1, r1, #31	@ tmp311, tmp301,
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	cmp	r0, r5	@ tmp304, _7
	adcs	r2, r2, r6	@ tmp303, tmp305, tmp306
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r6, r1	@ tmp310, tmp311
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	str	r7, [sp, #4]	@ tmp297, %sfp
@ src/soar_voxel.c:338: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	ands	r6, r2	@ tmp310, tmp303
	tst	r1, r2	@ tmp311, tmp303
	beq	.L59		@,
@ src/soar_voxel.c:340: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r6, [r4, #52]	@ _9, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:340: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_155(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_155(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:340: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	movs	r3, r6	@ tmp312, _9
	subs	r3, r3, #31	@ tmp312,
@ src/soar_voxel.c:340: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp312, tmp691
	bgt	.L60		@,
@ src/soar_voxel.c:342: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r6, r6, #32	@ tmp313,
@ src/soar_voxel.c:343: 			CurrentProc->sPlayerStepZ += 1;
	adds	r5, r5, #1	@ tmp314,
@ src/soar_voxel.c:342: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ tmp313, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:343: 			CurrentProc->sPlayerStepZ += 1;
	str	r5, [r4, #56]	@ tmp314, CurrentProc_155(D)->sPlayerStepZ
.L60:
@ src/soar_voxel.c:345: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ CurrentProc_155(D)->sPlayerPosZ, CurrentProc_155(D)->sPlayerPosZ
	adds	r3, r3, #32	@ tmp315,
	str	r3, [r4, #52]	@ tmp315, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:346: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_155(D)->sPlayerStepZ, CurrentProc_155(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp317,
	str	r3, [r4, #56]	@ tmp317, CurrentProc_155(D)->sPlayerStepZ
.L136:
@ src/soar_voxel.c:363: 			return 1;
	movs	r0, #1	@ <retval>,
	b	.L54		@
.L55:
@ src/soar_voxel.c:335: 		else CurrentProc->oceanClock += 1;
	adds	r3, r2, #1	@ tmp285, _1,
	lsls	r3, r3, #24	@ _289, tmp285,
	lsrs	r3, r3, #24	@ _289, _289,
@ src/soar_voxel.c:334: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	cmp	r2, #4	@ _1,
	bls	.L57		@,
@ src/soar_voxel.c:334: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	subs	r2, r2, #4	@ tmp283,
	b	.L133		@
.L59:
@ src/soar_voxel.c:349: 	else CurrentProc->takeOffTransition = 0;
	movs	r2, #4	@ tmp327,
	bics	r3, r2	@ tmp326, tmp327
	ldr	r2, [sp, #4]	@ tmp297, %sfp
	strb	r3, [r2]	@ tmp326, CurrentProc_155(D)->takeOffTransition
@ src/soar_voxel.c:351: 	if (CurrentProc->landingTransition)
	lsls	r3, r3, #28	@ tmp742, tmp326,
	bpl	.L62		@,
@ src/soar_voxel.c:353: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r7, [r4, #52]	@ _22, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:353: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_155(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_155(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:353: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	movs	r3, r7	@ tmp339, _22
	subs	r3, r3, #63	@ tmp339,
@ src/soar_voxel.c:353: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp339, tmp692
	bgt	.L63		@,
@ src/soar_voxel.c:355: 			m4aSongNumStart(0x73);
	movs	r0, #115	@,
	ldr	r3, .L137	@ tmp340,
	bl	.L18		@
@ src/soar_voxel.c:356: 			EndLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ src/soar_voxel.c:357: 			return 0;
	movs	r0, r6	@ <retval>, tmp310
.L54:
@ src/soar_voxel.c:478: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L63:
@ src/soar_voxel.c:361: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r7, r7, #32	@ tmp341,
@ src/soar_voxel.c:362: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r5, r5, #1	@ tmp342,
@ src/soar_voxel.c:361: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	r7, [r4, #52]	@ tmp341, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:362: 			CurrentProc->sPlayerStepZ -= 1;
	str	r5, [r4, #56]	@ tmp342, CurrentProc_155(D)->sPlayerStepZ
	b	.L136		@
.L62:
@ src/soar_voxel.c:370: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #44]	@ pretmp_234, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:369: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r6, .L137+4	@ tmp343,
	ldrh	r0, [r6, #4]	@ _29,
@ src/soar_voxel.c:370: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	str	r3, [sp, #8]	@ pretmp_234, %sfp
@ src/soar_voxel.c:370: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #60]	@ pretmp_264, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:370: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L137+8	@ tmp344,
	lsls	r1, r3, #1	@ tmp345, pretmp_264,
	ldrsh	r7, [r1, r5]	@ _263, cam_pivot_dx_Angles
	str	r7, [sp, #12]	@ _263, %sfp
@ src/soar_voxel.c:371: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [r4, #48]	@ pretmp_232, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:371: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r1, r5, r1	@ tmp348, tmp344, tmp345
@ src/soar_voxel.c:371: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	mov	ip, r7	@ pretmp_232, pretmp_232
@ src/soar_voxel.c:371: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r2, #32	@ tmp754,
	ldrsh	r1, [r1, r2]	@ _230, tmp348, tmp754
@ src/soar_voxel.c:369: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r2, r0, #26	@ tmp743, _29,
	bmi	.LCB818	@
	b	.L64	@long jump	@
.LCB818:
@ src/soar_voxel.c:370: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [sp, #12]	@ _263, %sfp
	ldr	r2, [sp, #8]	@ pretmp_234, %sfp
	adds	r2, r2, r0	@ newx, pretmp_234, _263
@ src/soar_voxel.c:372: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	movs	r0, #15	@ tmp356,
@ src/soar_voxel.c:372: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	subs	r3, r3, #1	@ tmp355,
@ src/soar_voxel.c:372: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	ands	r3, r0	@ _38, tmp356
@ src/soar_voxel.c:372: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _38, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:374: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp358, _38,
	adds	r0, r5, r3	@ tmp359, tmp344, tmp358
@ src/soar_voxel.c:374: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp755,
	ldrsh	r0, [r0, r7]	@ tmp361, tmp359, tmp755
	asrs	r0, r0, #2	@ tmp363, tmp361,
@ src/soar_voxel.c:374: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r0, #2	@ tmp365, tmp363,
	subs	r0, r0, r7	@ tmp366, tmp363, tmp365
@ src/soar_voxel.c:371: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, ip	@ newy, pretmp_232
@ src/soar_voxel.c:374: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r0, r1	@ newy, tmp366, newy
@ src/soar_voxel.c:373: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r5]	@ tmp369, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp371, tmp369,
@ src/soar_voxel.c:373: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp373, tmp371,
	subs	r3, r3, r0	@ tmp374, tmp371, tmp373
@ src/soar_voxel.c:377: 		BumpScreen(bump_left);
	movs	r0, #2	@,
@ src/soar_voxel.c:373: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp374, newx
@ src/soar_voxel.c:375: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:376: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_155(D)->sPlayerPosY
.L134:
@ src/soar_voxel.c:387: 		BumpScreen(bump_right);
	bl	BumpScreen		@
.L65:
@ src/soar_voxel.c:398: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r4, #60]	@ _66, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:398: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	adds	r2, r5, #2	@ tmp411, tmp344,
	lsls	r3, r3, #1	@ tmp412, _66,
	adds	r2, r2, r3	@ tmp413, tmp411, tmp412
	movs	r1, #62	@ tmp415,
	ldrsh	r1, [r2, r1]	@ tmp415, tmp413, tmp415
@ src/soar_voxel.c:398: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [r4, #44]	@ CurrentProc_155(D)->sPlayerPosX, CurrentProc_155(D)->sPlayerPosX
	adds	r1, r1, r2	@ _69, tmp415, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:399: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r5	@ tmp420, tmp344
	adds	r2, r2, #96	@ tmp420,
	ldrsh	r2, [r3, r2]	@ tmp422, cam_dy_Angles
@ src/soar_voxel.c:399: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ CurrentProc_155(D)->sPlayerPosY, CurrentProc_155(D)->sPlayerPosY
	adds	r2, r2, r0	@ _73, tmp422, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:400: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r5, r3]	@ tmp426, cam_pivot_dx_Angles
@ src/soar_voxel.c:398: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r4, #44]	@ _69, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:401: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r5, r5, r3	@ tmp430, tmp344, tmp412
@ src/soar_voxel.c:400: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r0, r1	@ tmp427, tmp426, _69
@ src/soar_voxel.c:400: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #72]	@ tmp427, CurrentProc_155(D)->sFocusPtX
@ src/soar_voxel.c:401: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	movs	r1, #32	@ tmp762,
	ldrsh	r3, [r5, r1]	@ tmp432, tmp430, tmp762
@ src/soar_voxel.c:401: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r3, r2	@ tmp433, tmp432, _73
@ src/soar_voxel.c:401: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r3, [r4, #76]	@ tmp433, CurrentProc_155(D)->sFocusPtY
@ src/soar_voxel.c:404: 	if (gKeyState.pressedKeys & START_BUTTON){
	movs	r3, #8	@ tmp438,
@ src/soar_voxel.c:399: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #48]	@ _73, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:404: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r2, [r6, #8]	@ tmp436,
	tst	r2, r3	@ tmp436, tmp438
	beq	.L67		@,
@ src/soar_voxel.c:405: 		if (CurrentProc->location)
	ldr	r2, [r4, #80]	@ CurrentProc_155(D)->location, CurrentProc_155(D)->location
	cmp	r2, #0	@ CurrentProc_155(D)->location,
	bne	.LCB879	@
	b	.L68	@long jump	@
.LCB879:
@ src/soar_voxel.c:407: 			CurrentProc->landingTransition = TRUE;
	movs	r2, r4	@ tmp445, CurrentProc
	adds	r2, r2, #69	@ tmp445,
	ldrb	r1, [r2]	@ CurrentProc_155(D)->landingTransition, CurrentProc_155(D)->landingTransition
	orrs	r3, r1	@ tmp450, CurrentProc_155(D)->landingTransition
	strb	r3, [r2]	@ tmp450, CurrentProc_155(D)->landingTransition
.L67:
@ src/soar_voxel.c:412: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	ldrh	r1, [r6, #8]	@ _82,
@ src/soar_voxel.c:412: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	lsls	r3, r1, #29	@ tmp745, _82,
	bpl	.L69		@,
@ src/soar_voxel.c:412: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	movs	r2, #1	@ tmp472,
	ldr	r3, [sp, #4]	@ tmp297, %sfp
	ldrb	r3, [r3]	@ *CurrentProc_155(D), *CurrentProc_155(D)
	lsls	r0, r3, #30	@ tmp470, *CurrentProc_155(D),
	lsrs	r0, r0, #31	@ tmp469, tmp470,
	bics	r2, r0	@ tmp479, tmp469
	movs	r0, #2	@ tmp486,
	lsls	r2, r2, #1	@ tmp482, tmp479,
	bics	r3, r0	@ tmp485, tmp486
	orrs	r3, r2	@ tmp489, tmp482
	ldr	r2, [sp, #4]	@ tmp297, %sfp
	strb	r3, [r2]	@ tmp489, CurrentProc_155(D)->ShowFPS
.L69:
	movs	r2, r4	@ tmp642, CurrentProc
	adds	r2, r2, #68	@ tmp642,
@ src/soar_voxel.c:414: 	if ((gKeyState.pressedKeys & L_BUTTON) && (CurrentProc->sunTransition==0)){
	lsls	r3, r1, #22	@ tmp746, _82,
	bpl	.L70		@,
@ src/soar_voxel.c:414: 	if ((gKeyState.pressedKeys & L_BUTTON) && (CurrentProc->sunTransition==0)){
	movs	r3, #0	@ tmp499,
	ldrsb	r3, [r2, r3]	@ tmp499,
	cmp	r3, #0	@ tmp499,
	bne	.L70		@,
@ src/soar_voxel.c:415: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r0, [r4, #84]	@ _86, CurrentProc_155(D)->sunsetVal
@ src/soar_voxel.c:416: 		else CurrentProc->sunTransition = 1;
	adds	r3, r3, #1	@ cstore_259,
@ src/soar_voxel.c:415: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r0, #0	@ _86,
	beq	.L71		@,
@ src/soar_voxel.c:415: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	subs	r3, r3, #2	@ cstore_259,
.L71:
	strb	r3, [r2]	@ cstore_259, CurrentProc_155(D)->sunTransition
@ src/soar_voxel.c:417: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r0	@ tmp504, cstore_259, _86
	str	r3, [r4, #84]	@ tmp504, CurrentProc_155(D)->sunsetVal
.L70:
@ src/soar_voxel.c:420: 	if (CurrentProc->sunTransition!=0)
	movs	r3, #0	@ _90,
	ldrsb	r3, [r2, r3]	@ _90,* _90
@ src/soar_voxel.c:420: 	if (CurrentProc->sunTransition!=0)
	cmp	r3, #0	@ _90,
	beq	.L72		@,
@ src/soar_voxel.c:422: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r0, [r4, #84]	@ _91, CurrentProc_155(D)->sunsetVal
@ src/soar_voxel.c:422: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	subs	r5, r0, #1	@ tmp508, _91,
@ src/soar_voxel.c:422: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r5, #6	@ tmp508,
	bls	.LCB940	@
	b	.L73	@long jump	@
.LCB940:
@ src/soar_voxel.c:424: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r0	@ tmp509, _90, _91
	str	r3, [r4, #84]	@ tmp509, CurrentProc_155(D)->sunsetVal
.L72:
@ src/soar_voxel.c:432: 	if (gKeyState.pressedKeys & R_BUTTON){
	lsls	r1, r1, #23	@ tmp747, _82,
	bpl	.L74		@,
@ src/soar_voxel.c:433: 		CurrentProc->ShowMap ^= 1;
	movs	r0, #1	@ tmp532,
	movs	r1, r4	@ tmp526, CurrentProc
	movs	r5, r0	@ tmp539, tmp532
	adds	r1, r1, #69	@ tmp526,
	ldrb	r3, [r1]	@ *CurrentProc_155(D), *CurrentProc_155(D)
	lsls	r2, r3, #31	@ tmp530, *CurrentProc_155(D),
	lsrs	r2, r2, #31	@ tmp529, tmp530,
	bics	r5, r2	@ tmp539, tmp529
	bics	r3, r0	@ tmp543, tmp532
	orrs	r3, r5	@ tmp547, tmp539
	strb	r3, [r1]	@ tmp547, CurrentProc_155(D)->ShowMap
.L74:
@ src/soar_voxel.c:436: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r6, [r6, #4]	@ _98,
@ src/soar_voxel.c:436: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	lsls	r3, r6, #25	@ tmp748, _98,
	bpl	.L75		@,
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, .L137+8	@ tmp555,
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #60]	@ _100, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r1, r3, #2	@ tmp556, tmp555,
	lsls	r2, r2, #1	@ tmp557, _100,
	adds	r1, r1, r2	@ tmp558, tmp556, tmp557
@ src/soar_voxel.c:438: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, #96	@ tmp566,
@ src/soar_voxel.c:438: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ pretmp_238, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	movs	r5, #62	@ tmp560,
	ldrsh	r5, [r1, r5]	@ tmp560, tmp558, tmp560
@ src/soar_voxel.c:438: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ tmp568, cam_dy_Angles
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #44]	@ CurrentProc_155(D)->sPlayerPosX, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:438: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, r0	@ tmp569, tmp568, pretmp_238
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r1, r1, r5	@ tmp561, CurrentProc_155(D)->sPlayerPosX, tmp560
	str	r1, [r4, #44]	@ tmp561, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:438: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ tmp569, CurrentProc_155(D)->sPlayerPosY
.L75:
@ src/soar_voxel.c:440: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	lsls	r3, r6, #24	@ tmp749, _98,
	bpl	.L76		@,
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, .L137+8	@ tmp575,
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #60]	@ _109, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r0, r3, #2	@ tmp576, tmp575,
	lsls	r2, r2, #1	@ tmp577, _109,
	adds	r0, r0, r2	@ tmp578, tmp576, tmp577
@ src/soar_voxel.c:442: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, #96	@ tmp586,
@ src/soar_voxel.c:442: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #48]	@ pretmp_271, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	movs	r5, #62	@ tmp580,
	ldrsh	r5, [r0, r5]	@ tmp580, tmp578, tmp580
@ src/soar_voxel.c:442: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ tmp588, cam_dy_Angles
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #44]	@ CurrentProc_155(D)->sPlayerPosX, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:442: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	subs	r3, r1, r3	@ tmp589, pretmp_271, tmp588
@ src/soar_voxel.c:441: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	subs	r0, r0, r5	@ tmp581, CurrentProc_155(D)->sPlayerPosX, tmp580
	str	r0, [r4, #44]	@ tmp581, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:442: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ tmp589, CurrentProc_155(D)->sPlayerPosY
.L76:
@ src/soar_voxel.c:448: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldr	r1, [r4, #76]	@, CurrentProc_155(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_155(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:450: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	ldr	r5, [r4, #52]	@ _121, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:450: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	movs	r7, r5	@ camera_ht, _121
@ src/soar_voxel.c:449: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r3, [r4, #44]	@ _119, CurrentProc_155(D)->sPlayerPosX
	str	r3, [sp, #4]	@ _119, %sfp
	ldr	r3, [r4, #48]	@ _120, CurrentProc_155(D)->sPlayerPosY
@ src/soar_voxel.c:450: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	subs	r7, r7, #42	@ camera_ht,
@ src/soar_voxel.c:448: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	str	r0, [sp, #12]	@ tmp693, %sfp
@ src/soar_voxel.c:449: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	str	r3, [sp, #8]	@ _120, %sfp
@ src/soar_voxel.c:451: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ player_terrain_ht, camera_ht
	bgt	.L77		@,
@ src/soar_voxel.c:449: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [sp, #8]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:451: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ camera_terrain_ht, camera_ht
	ble	.L78		@,
.L77:
@ src/soar_voxel.c:453: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_155(D)->sPlayerStepZ, CurrentProc_155(D)->sPlayerStepZ
@ src/soar_voxel.c:452: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r5, r5, #32	@ tmp590,
	str	r5, [r4, #52]	@ tmp590, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:453: 		CurrentProc->sPlayerStepZ += 1;
	adds	r3, r3, #1	@ tmp591,
.L135:
@ src/soar_voxel.c:458: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r4, #56]	@ tmp620, CurrentProc_155(D)->sPlayerStepZ
.L79:
@ src/soar_voxel.c:462: 	if (gKeyState.heldKeys & A_BUTTON){
	lsls	r6, r6, #31	@ tmp751, _98,
	bpl	.L83		@,
@ src/soar_voxel.c:463: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	movs	r2, #160	@ tmp627,
@ src/soar_voxel.c:463: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r4, #52]	@ _134, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:463: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	lsls	r2, r2, #1	@ tmp627, tmp627,
	cmp	r3, r2	@ _134, tmp627
	bge	.L83		@,
@ src/soar_voxel.c:464: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r3, r3, #32	@ tmp628,
	str	r3, [r4, #52]	@ tmp628, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:465: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_155(D)->sPlayerStepZ, CurrentProc_155(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp629,
	str	r3, [r4, #56]	@ tmp629, CurrentProc_155(D)->sPlayerStepZ
.L83:
@ src/soar_voxel.c:471: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	ldr	r3, .L137+12	@ tmp643,
	ldr	r2, [sp, #4]	@ _119, %sfp
	cmp	r2, r3	@ _119, tmp643
	ble	.L84		@,
@ src/soar_voxel.c:471: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	str	r3, [r4, #44]	@ tmp643, CurrentProc_155(D)->sPlayerPosX
.L85:
@ src/soar_voxel.c:474: 	if (CurrentProc->sPlayerPosY > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosY = MAP_DIMENSIONS-10;
	ldr	r2, [sp, #8]	@ _120, %sfp
	cmp	r2, r3	@ _120, tmp643
	ble	.L86		@,
@ src/soar_voxel.c:474: 	if (CurrentProc->sPlayerPosY > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosY = MAP_DIMENSIONS-10;
	str	r3, [r4, #48]	@ tmp643, CurrentProc_155(D)->sPlayerPosY
	b	.L136		@
.L64:
@ src/soar_voxel.c:379: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	lsls	r0, r0, #27	@ tmp744, _29,
	bpl	.L66		@,
@ src/soar_voxel.c:380: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [sp, #12]	@ _263, %sfp
	ldr	r2, [sp, #8]	@ pretmp_234, %sfp
@ src/soar_voxel.c:381: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, ip	@ _230, pretmp_232
@ src/soar_voxel.c:380: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r2, r0	@ newx, pretmp_234, _263
@ src/soar_voxel.c:381: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r0, r1	@ newy, _230
@ src/soar_voxel.c:382: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	movs	r1, #15	@ tmp382,
@ src/soar_voxel.c:382: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	adds	r3, r3, #1	@ tmp381,
@ src/soar_voxel.c:382: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	ands	r3, r1	@ _55, tmp382
@ src/soar_voxel.c:382: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _55, CurrentProc_155(D)->sPlayerYaw
@ src/soar_voxel.c:384: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp384, _55,
	adds	r1, r5, r3	@ tmp385, tmp344, tmp384
@ src/soar_voxel.c:384: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp757,
	ldrsh	r1, [r1, r7]	@ tmp387, tmp385, tmp757
	asrs	r1, r1, #2	@ tmp389, tmp387,
@ src/soar_voxel.c:384: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r1, #2	@ tmp391, tmp389,
	subs	r1, r1, r7	@ tmp392, tmp389, tmp391
@ src/soar_voxel.c:384: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r1, r0	@ newy, tmp392, newy
@ src/soar_voxel.c:383: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r5]	@ tmp395, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp397, tmp395,
@ src/soar_voxel.c:383: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp399, tmp397,
	subs	r3, r3, r0	@ tmp400, tmp397, tmp399
@ src/soar_voxel.c:383: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp400, newx
@ src/soar_voxel.c:387: 		BumpScreen(bump_right);
	movs	r0, #3	@,
@ src/soar_voxel.c:385: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_155(D)->sPlayerPosX
@ src/soar_voxel.c:386: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_155(D)->sPlayerPosY
	b	.L134		@
.L66:
@ src/soar_voxel.c:389: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	movs	r3, #48	@ tmp406,
	ldrh	r2, [r6, #10]	@ tmp404,
	tst	r2, r3	@ tmp404, tmp406
	bne	.LCB1113	@
	b	.L65	@long jump	@
.LCB1113:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:317: };
	b	.L65		@
.L68:
@ src/soar_voxel.c:409: 		else m4aSongNumStart(0x6c); //invalid sfx
	movs	r0, #108	@,
	ldr	r3, .L137	@ tmp453,
	bl	.L18		@
	b	.L67		@
.L73:
@ src/soar_voxel.c:428: 			CurrentProc->sunTransition = 0;
	movs	r3, #0	@ tmp513,
	strb	r3, [r2]	@ tmp513, CurrentProc_155(D)->sunTransition
	b	.L72		@
.L78:
@ src/soar_voxel.c:455: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	lsls	r3, r6, #30	@ tmp750, _98,
	bpl	.L79		@,
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	ldr	r3, [sp, #12]	@ player_terrain_ht, %sfp
	adds	r3, r3, #32	@ player_terrain_ht,
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r2, #1	@ tmp599,
	cmp	r3, r7	@ tmp598, camera_ht
	blt	.L80		@,
	movs	r2, #0	@ tmp599,
.L80:
	movs	r3, #1	@ tmp603,
	cmp	r5, #32	@ _121,
	bgt	.L81		@,
	movs	r3, #0	@ tmp603,
.L81:
	ands	r3, r2	@ tmp607, tmp599
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp611, tmp607,
	beq	.L79		@,
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	adds	r0, r0, #32	@ tmp612,
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r3, #1	@ tmp613,
	cmp	r0, r7	@ tmp612, camera_ht
	blt	.L82		@,
	movs	r3, #0	@ tmp613,
.L82:
@ src/soar_voxel.c:456: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp618, tmp613,
	beq	.L79		@,
@ src/soar_voxel.c:458: 			CurrentProc->sPlayerStepZ -= 1;
	ldr	r3, [r4, #56]	@ CurrentProc_155(D)->sPlayerStepZ, CurrentProc_155(D)->sPlayerStepZ
@ src/soar_voxel.c:457: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r5, r5, #32	@ tmp619,
	str	r5, [r4, #52]	@ tmp619, CurrentProc_155(D)->sPlayerPosZ
@ src/soar_voxel.c:458: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r3, r3, #1	@ tmp620,
	b	.L135		@
.L84:
@ src/soar_voxel.c:472: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	ldr	r2, [sp, #4]	@ _119, %sfp
	cmp	r2, #9	@ _119,
	bgt	.L85		@,
@ src/soar_voxel.c:472: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	movs	r2, #10	@ tmp633,
	str	r2, [r4, #44]	@ tmp633, CurrentProc_155(D)->sPlayerPosX
	b	.L85		@
.L86:
@ src/soar_voxel.c:475: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	ldr	r3, [sp, #8]	@ _120, %sfp
@ src/soar_voxel.c:477: 	return 1;
	movs	r0, #1	@ <retval>,
@ src/soar_voxel.c:475: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	cmp	r3, #9	@ _120,
	ble	.LCB1189	@
	b	.L54	@long jump	@
.LCB1189:
@ src/soar_voxel.c:475: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	movs	r3, #10	@ tmp636,
	str	r3, [r4, #48]	@ tmp636, CurrentProc_155(D)->sPlayerPosY
	b	.L54		@
.L138:
	.align	2
.L137:
	.word	m4aSongNumStart
	.word	gKeyState
	.word	.LANCHOR0
	.word	1014
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
.LC44:
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
	.word	.LC44
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
.L36:
	bx	r4
.L44:
	bx	r5
.L22:
	bx	r6
.L40:
	bx	r7
