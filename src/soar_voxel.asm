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
@ src/soar_voxel.c:283: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r3, #128	@ tmp122,
@ src/soar_voxel.c:282: static inline int getPtHeight_thumb(int ptx, int pty){
	push	{r4, lr}	@
@ src/soar_voxel.c:283: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r4, r0	@ tmp121, ptx
@ src/soar_voxel.c:282: static inline int getPtHeight_thumb(int ptx, int pty){
	movs	r2, r0	@ ptx, tmp127
@ src/soar_voxel.c:283: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r4, r1	@ tmp121, pty
@ src/soar_voxel.c:283: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:283: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	lsls	r3, r3, #3	@ tmp122, tmp122,
	cmp	r4, r3	@ tmp121, tmp122
	bcs	.L1		@,
@ src/soar_voxel.c:284: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r3, .L4	@ tmp123,
@ src/soar_voxel.c:284: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsls	r1, r1, #10	@ tmp124, pty,
@ src/soar_voxel.c:284: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	adds	r3, r3, r2	@ tmp125, tmp123, ptx
	ldrb	r0, [r3, r1]	@ <retval>, heightMap
.L1:
@ src/soar_voxel.c:285: };
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
@ src/soar_voxel.c:70: 	*(u16*)(0x3007ff8) = 1;
	movs	r2, #1	@ tmp127,
	ldr	r3, .L16	@ tmp126,
@ src/soar_voxel.c:69: {
	push	{r4, lr}	@
@ src/soar_voxel.c:70: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp127, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:71: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:72: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:73: 	SyncLoOAM();
	ldr	r3, .L16+4	@ tmp129,
	bl	.L18		@
@ src/soar_voxel.c:74: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L16+8	@ tmp130,
@ src/soar_voxel.c:74: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L7		@,
@ src/soar_voxel.c:76: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp133,
	strb	r2, [r3]	@ tmp133, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:77: 		ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L16+12	@ tmp135,
@ src/soar_voxel.c:77: 		ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L16+16	@ tmp136,
	bl	.L18		@
@ src/soar_voxel.c:78: 		SyncLCDControl();
	ldr	r3, .L16+20	@ tmp137,
	bl	.L18		@
@ src/soar_voxel.c:79: 		SyncBgAndPals();
	ldr	r3, .L16+24	@ tmp138,
	bl	.L18		@
@ src/soar_voxel.c:80: 		SyncRegisteredTiles();
	ldr	r3, .L16+28	@ tmp139,
	bl	.L18		@
@ src/soar_voxel.c:81: 		SyncHiOAM();
	ldr	r3, .L16+32	@ tmp140,
	bl	.L18		@
.L7:
@ src/soar_voxel.c:83: 	m4aSoundMain();
	bl	m4aSoundMain		@
	movs	r2, #63	@ tmp145,
@ src/soar_voxel.c:85: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L16+36	@ tmp141,
	ldrb	r3, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ands	r3, r2	@ _1, tmp145
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	movs	r1, r3	@ tmp147, _1
	subs	r1, r1, #16	@ tmp147,
	ldr	r2, .L16+40	@ tmp159,
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	cmp	r1, #32	@ tmp147,
	bls	.L8		@,
@ src/soar_voxel.c:86: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	ldr	r1, [r2]	@ _8, MEM[(volatile vu32 *)50344144B]
	subs	r1, r1, #48	@ _9,
.L15:
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	str	r1, [r2]	@ _12,
.L9:
@ src/soar_voxel.c:89: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	cmp	r3, #32	@ _1,
	bne	.L10		@,
@ src/soar_voxel.c:89: 	if (animClock == 0x20) m4aSongNumStart(0xa6);
	movs	r0, #166	@,
	ldr	r3, .L16+44	@ tmp154,
	bl	.L18		@
.L6:
@ src/soar_voxel.c:98: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r0, [r2]	@ _10, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, .L16+48	@ tmp151,
	cmp	r0, r1	@ _10, tmp151
	bhi	.L9		@,
@ src/soar_voxel.c:87: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, [r2]	@ _11, MEM[(volatile vu32 *)50344144B]
	adds	r1, r1, #48	@ _12,
	b	.L15		@
.L10:
@ src/soar_voxel.c:92: 	if (animClock == 0) //resets once per 63 frames so close enough
	cmp	r3, #0	@ _1,
	bne	.L6		@,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L16+52	@ tmp155,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r1, .L16+56	@ tmp156,
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r2]	@ _13, MEM[(int *)33816568B]
@ src/soar_voxel.c:94: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r1]	@ _13, MEM[(int *)33816572B]
@ src/soar_voxel.c:95: 		FPS_COUNTER = 0;
	str	r3, [r2]	@ _1, MEM[(int *)33816568B]
@ src/soar_voxel.c:98: };
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
	ldr	r2, .L20	@ tmp128,
@ src/soar_voxel.c:216: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:216: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:217: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L20+4	@ tmp127,
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L20+8	@ tmp130,
@ src/soar_voxel.c:217: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:218: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L20+12	@ tmp131,
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:219: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:220: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L21:
	.align	2
.L20:
	.word	136339656
	.word	136339658
	.word	50352776
	.word	50352780
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
@ src/soar_voxel.c:273: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp114,
@ src/soar_voxel.c:280: };
	@ sp needed	@
@ src/soar_voxel.c:274: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp117,
@ src/soar_voxel.c:273: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L23	@ tmp113,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:274: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L23+4	@ tmp116,
	rsbs	r1, r1, #0	@ tmp117, tmp117
	strh	r1, [r2]	@ tmp117, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:275: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L23+8	@ tmp119,
	adds	r1, r1, #122	@ tmp120,
	adds	r1, r1, #255	@ tmp120,
	strh	r1, [r2]	@ tmp120, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:276: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L23+12	@ tmp122,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:277: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L23+16	@ tmp125,
	ldr	r2, .L23+20	@ tmp126,
	str	r2, [r3]	@ tmp126, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:278: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp128,
	ldr	r3, .L23+24	@ tmp127,
	lsls	r2, r2, #1	@ tmp128, tmp128,
	str	r2, [r3]	@ tmp128, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:280: };
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
@ src/soar_voxel.c:51: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	movs	r3, #160	@ tmp119,
@ src/soar_voxel.c:55: }
	@ sp needed	@
@ src/soar_voxel.c:51: 	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	lsls	r3, r3, #8	@ tmp119, tmp119,
	eors	r0, r3	@ _2, tmp119
@ src/soar_voxel.c:52: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	movs	r3, #16	@ tmp125,
	ldr	r2, .L26	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:55: }
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
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L29	@ tmp117,
@ src/soar_voxel.c:62: };
	@ sp needed	@
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L29+4	@,
	bl	.L18		@
@ src/soar_voxel.c:59: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L29+8	@ tmp118,
@ src/soar_voxel.c:58: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:59: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L29+12	@ tmp119,
	bl	.L18		@
@ src/soar_voxel.c:62: };
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
	ldr	r1, .L33	@,
@ src/soar_voxel.c:162: };
	@ sp needed	@
@ src/soar_voxel.c:155: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L33+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:156: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L33+8	@,
	ldr	r0, .L33+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:157: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L33+16	@,
	ldr	r0, .L33+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:158: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L33+24	@,
	ldr	r0, .L33+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:159: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L33+32	@,
	ldr	r0, .L33+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:160: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:161: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp126,
	movs	r2, #32	@,
	ldr	r0, .L33+40	@ tmp124,
	ldr	r3, .L33+44	@ tmp125,
	lsls	r1, r1, #2	@, tmp126,
	bl	.L18		@
@ src/soar_voxel.c:162: };
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
	ldr	r3, .L36	@ tmp123,
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
	ldr	r3, .L36+4	@ tmp130,
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
	ldr	r3, .L36+8	@ tmp145,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerYaw = a_SE;
	str	r2, [r4, #60]	@ tmp140, CurrentProc_11(D)->sPlayerYaw
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp137,
@ src/soar_voxel.c:121: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	adds	r2, r2, #163	@ tmp188,
	ldr	r1, .L36+12	@,
@ src/soar_voxel.c:111: 	CurrentProc->sunsetVal = 0;
	str	r5, [r4, #84]	@ tmp143, CurrentProc_11(D)->sunsetVal
@ src/soar_voxel.c:112: 	CurrentProc->sunTransition = 0;
	str	r5, [r4, #88]	@ tmp143, CurrentProc_11(D)->sunTransition
@ src/soar_voxel.c:105: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r4, #48]	@ tmp137, CurrentProc_11(D)->sPlayerPosY
@ src/soar_voxel.c:115: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r4, #64]	@ tmp145, CurrentProc_11(D)->vid_page
@ src/soar_voxel.c:121: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	ldr	r0, .L36+16	@ tmp148,
	ldr	r4, .L36+20	@ tmp149,
	lsls	r2, r2, #2	@, tmp188,
	bl	.L38		@
@ src/soar_voxel.c:123: 	VBlankIntrWait();
	ldr	r3, .L36+24	@ tmp150,
	bl	.L18		@
@ src/soar_voxel.c:125: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L36+28	@ tmp151,
	ldr	r2, .L36+32	@ tmp152,
	strh	r2, [r3]	@ tmp152, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:137: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp158,
@ src/soar_voxel.c:136: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L36+36	@ tmp154,
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:137: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L36+40	@ tmp157,
	rsbs	r2, r2, #0	@ tmp158, tmp158
	strh	r2, [r3]	@ tmp158, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:138: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L36+44	@ tmp160,
	adds	r2, r2, #122	@ tmp161,
	adds	r2, r2, #255	@ tmp161,
	strh	r2, [r3]	@ tmp161, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:139: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L36+48	@ tmp163,
@ src/soar_voxel.c:140: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L36+52	@ tmp167,
@ src/soar_voxel.c:139: 	g_REG_BG2PD=0x00;	//
	strh	r5, [r3]	@ tmp143, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:140: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L36+56	@ tmp166,
	str	r2, [r3]	@ tmp167, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:141: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp169,
	ldr	r3, .L36+60	@ tmp168,
	lsls	r2, r2, #1	@ tmp169, tmp169,
	str	r2, [r3]	@ tmp169, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:144: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L36+64	@ tmp170,
	bl	.L18		@
@ src/soar_voxel.c:145: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:146: 	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	ldr	r6, .L36+68	@ tmp171,
	movs	r0, #78	@,
	bl	.L39		@
@ src/soar_voxel.c:147: 	m4aSongNumStart(0x58); //unused slot
	movs	r0, #88	@,
	bl	.L39		@
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp174,
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@ tmp191,
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	ldr	r3, .L36+72	@ tmp173,
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	lsls	r1, r1, #19	@, tmp191,
@ src/soar_voxel.c:148: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp174, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:149: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	add	r0, sp, #4	@,,
	ldr	r2, .L36+76	@,
	str	r5, [sp, #4]	@ tmp143, tmp
	bl	.L38		@
@ src/soar_voxel.c:151: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L36+80	@ tmp181,
	ldr	r3, .L36+84	@ tmp182,
	bl	.L18		@
@ src/soar_voxel.c:152: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L37:
	.align	2
.L36:
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
	ldr	r2, .L41	@,
	ldr	r3, .L41+4	@ tmp119,
	bl	.L18		@
@ src/soar_voxel.c:224: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp121,
	ldr	r3, .L41+8	@ tmp120,
	lsls	r2, r2, #5	@ tmp121, tmp121,
	strh	r2, [r3]	@ tmp121, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:238: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	ldr	r3, .L41+12	@ tmp123,
	bl	.L18		@
@ src/soar_voxel.c:239: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L41+16	@ tmp125,
	ldr	r0, .L41+20	@,
	bl	.L18		@
	movs	r4, r0	@ wmproc, tmp130
@ src/soar_voxel.c:240: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L41+24	@ tmp126,
	bl	.L18		@
@ src/soar_voxel.c:241: 	LoadObjUIGfx();
	bl	LoadObjUIGfx		@
@ src/soar_voxel.c:242: 	RefreshWMProc(wmproc);
	movs	r0, r4	@, wmproc
	bl	RefreshWMProc		@
@ src/soar_voxel.c:245: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L41+28	@ tmp127,
	ldr	r3, .L41+32	@ tmp128,
	bl	.L18		@
@ src/soar_voxel.c:246: };
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L42:
	.align	2
.L41:
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
	push	{r4, lr}	@
@ src/soar_voxel.c:249: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L44		@,
	bgt	.L45		@,
	cmp	r0, #1	@ direction,
	bls	.L43		@,
.L46:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:280: };
	b	.L43		@
.L45:
@ src/soar_voxel.c:249: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L46		@,
@ src/soar_voxel.c:265: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L50	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:266: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L50+4	@ tmp133,
	ldr	r2, .L50+8	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:267: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L50+12	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:268: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L50+16	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:269: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L50+20	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:270: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L50+24	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L49		@
.L44:
@ src/soar_voxel.c:257: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L50	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:258: 			g_REG_BG2X=0x9280;
	ldr	r3, .L50+4	@ tmp117,
	ldr	r2, .L50+28	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:259: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L50+12	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:260: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L50+16	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:261: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L50+20	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:262: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L50+24	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L49:
@ src/soar_voxel.c:270: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L43:
@ src/soar_voxel.c:280: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L51:
	.align	2
.L50:
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
	movs	r4, r0	@ CurrentProc, tmp452
@ src/soar_voxel.c:292: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r3, .L124	@ tmp220,
	ldrh	r5, [r3, #4]	@ _1,
	mov	ip, r3	@ tmp220, tmp220
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r0, #44]	@ pretmp_184, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:288: {
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	str	r3, [sp, #4]	@ pretmp_184, %sfp
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r0, #60]	@ pretmp_183, CurrentProc_105(D)->sPlayerYaw
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r1, .L124+4	@ tmp221,
	lsls	r0, r3, #1	@ tmp222, pretmp_183,
	ldrsh	r7, [r0, r1]	@ _182, cam_pivot_dx_Angles
@ src/soar_voxel.c:294: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r0, r1, r0	@ tmp225, tmp221, tmp222
@ src/soar_voxel.c:294: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r6, [r4, #48]	@ pretmp_203, CurrentProc_105(D)->sPlayerPosY
@ src/soar_voxel.c:294: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r2, #32	@ tmp491,
	ldrsh	r0, [r0, r2]	@ _205, tmp225, tmp491
@ src/soar_voxel.c:292: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r2, r5, #26	@ tmp480, _1,
	bpl	.L53		@,
@ src/soar_voxel.c:295: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	movs	r5, #15	@ tmp233,
@ src/soar_voxel.c:295: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	subs	r3, r3, #1	@ tmp232,
@ src/soar_voxel.c:295: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	ands	r3, r5	@ _10, tmp233
@ src/soar_voxel.c:295: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _10, CurrentProc_105(D)->sPlayerYaw
@ src/soar_voxel.c:297: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp235, _10,
	adds	r5, r1, r3	@ tmp236, tmp221, tmp235
@ src/soar_voxel.c:294: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r0, r6, r0	@ newy, pretmp_203, _205
@ src/soar_voxel.c:297: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r6, #32	@ tmp492,
	ldrsh	r5, [r5, r6]	@ tmp238, tmp236, tmp492
	asrs	r5, r5, #2	@ tmp240, tmp238,
@ src/soar_voxel.c:297: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r6, r5, #2	@ tmp242, tmp240,
	subs	r5, r5, r6	@ tmp243, tmp240, tmp242
@ src/soar_voxel.c:297: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r5, r5, r0	@ newy, tmp243, newy
@ src/soar_voxel.c:300: 		BumpScreen(bump_left);
	movs	r0, #2	@,
@ src/soar_voxel.c:296: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r1]	@ tmp246, cam_pivot_dx_Angles
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [sp, #4]	@ pretmp_184, %sfp
@ src/soar_voxel.c:296: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r3, r3, #2	@ tmp248, tmp246,
@ src/soar_voxel.c:296: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r1, r3, #2	@ tmp250, tmp248,
@ src/soar_voxel.c:293: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r7, r2	@ newx, _182, pretmp_184
@ src/soar_voxel.c:296: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	subs	r3, r3, r1	@ tmp251, tmp248, tmp250
@ src/soar_voxel.c:296: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp251, newx
@ src/soar_voxel.c:298: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:299: 		CurrentProc->sPlayerPosY = newy;
	str	r5, [r4, #48]	@ newy, CurrentProc_105(D)->sPlayerPosY
.L121:
@ src/soar_voxel.c:310: 		BumpScreen(bump_right);
	bl	BumpScreen		@
.L54:
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r1, .L124+4	@ tmp287,
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r5, [r4, #60]	@ _38, CurrentProc_105(D)->sPlayerYaw
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	adds	r3, r1, #2	@ tmp288, tmp287,
	lsls	r5, r5, #1	@ tmp289, _38,
	adds	r3, r3, r5	@ tmp290, tmp288, tmp289
	movs	r2, #62	@ tmp496,
	ldrsh	r3, [r3, r2]	@ _40, tmp290, tmp496
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [r4, #44]	@ CurrentProc_105(D)->sPlayerPosX, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r3, [sp, #4]	@ _40, %sfp
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	adds	r2, r3, r2	@ _41, _40, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:322: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r3, r1	@ tmp296, tmp287
	adds	r3, r3, #96	@ tmp296,
	ldrsh	r3, [r5, r3]	@ _44, cam_dy_Angles
	mov	ip, r3	@ _44, _44
@ src/soar_voxel.c:323: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r5, r1]	@ tmp301, cam_pivot_dx_Angles
@ src/soar_voxel.c:322: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #48]	@ CurrentProc_105(D)->sPlayerPosY, CurrentProc_105(D)->sPlayerPosY
@ src/soar_voxel.c:324: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r1, r5	@ tmp304, tmp287, tmp289
	movs	r5, #32	@ tmp499,
	ldrsh	r1, [r1, r5]	@ tmp306, tmp304, tmp499
@ src/soar_voxel.c:322: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, ip	@ _45, _44
@ src/soar_voxel.c:324: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r1, r3	@ _51, tmp306, _45
@ src/soar_voxel.c:323: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r0, r0, r2	@ _48, tmp301, _41
@ src/soar_voxel.c:321: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r2, [r4, #44]	@ _41, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:322: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ _45, CurrentProc_105(D)->sPlayerPosY
@ src/soar_voxel.c:323: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r0, [r4, #72]	@ _48, CurrentProc_105(D)->sFocusPtX
@ src/soar_voxel.c:324: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [sp, #8]	@ _51, %sfp
@ src/soar_voxel.c:324: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #76]	@ _51, CurrentProc_105(D)->sFocusPtY
@ src/soar_voxel.c:327: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldr	r5, .L124	@ tmp307,
	ldrh	r5, [r5, #8]	@ _52,
@ src/soar_voxel.c:327: 	if (gKeyState.pressedKeys & START_BUTTON){
	lsls	r6, r5, #28	@ tmp482, _52,
	bpl	.L56		@,
@ src/soar_voxel.c:328: 		EndLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	bl	EndLoop		@
.L52:
@ src/soar_voxel.c:395: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L53:
@ src/soar_voxel.c:302: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	lsls	r5, r5, #27	@ tmp481, _1,
	bpl	.L55		@,
@ src/soar_voxel.c:305: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	movs	r5, #15	@ tmp259,
@ src/soar_voxel.c:305: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	adds	r3, r3, #1	@ tmp258,
@ src/soar_voxel.c:305: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	ands	r3, r5	@ _27, tmp259
@ src/soar_voxel.c:305: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _27, CurrentProc_105(D)->sPlayerYaw
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp261, _27,
	adds	r5, r1, r3	@ tmp262, tmp221, tmp261
@ src/soar_voxel.c:304: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r0, r6, r0	@ newy, pretmp_203, _205
@ src/soar_voxel.c:306: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r1]	@ tmp272, cam_pivot_dx_Angles
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r6, #32	@ tmp494,
	ldrsh	r5, [r5, r6]	@ tmp264, tmp262, tmp494
@ src/soar_voxel.c:306: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r3, r3, #2	@ tmp274, tmp272,
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r5, r5, #2	@ tmp266, tmp264,
@ src/soar_voxel.c:303: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [sp, #4]	@ pretmp_184, %sfp
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r6, r5, #2	@ tmp268, tmp266,
@ src/soar_voxel.c:306: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r1, r3, #2	@ tmp276, tmp274,
@ src/soar_voxel.c:303: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r7, r2	@ newx, _182, pretmp_184
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	subs	r5, r5, r6	@ tmp269, tmp266, tmp268
@ src/soar_voxel.c:306: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	subs	r3, r3, r1	@ tmp277, tmp274, tmp276
@ src/soar_voxel.c:307: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r5, r5, r0	@ newy, tmp269, newy
@ src/soar_voxel.c:306: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp277, newx
@ src/soar_voxel.c:310: 		BumpScreen(bump_right);
	movs	r0, #3	@,
@ src/soar_voxel.c:308: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:309: 		CurrentProc->sPlayerPosY = newy;
	str	r5, [r4, #48]	@ newy, CurrentProc_105(D)->sPlayerPosY
	b	.L121		@
.L55:
@ src/soar_voxel.c:312: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	mov	r3, ip	@ tmp220, tmp220
	ldrh	r2, [r3, #10]	@ tmp281,
	movs	r3, #48	@ tmp283,
	tst	r2, r3	@ tmp281, tmp283
	beq	.L54		@,
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:280: };
	b	.L54		@
.L56:
@ src/soar_voxel.c:332: 	if (gKeyState.pressedKeys & L_BUTTON){
	lsls	r6, r5, #22	@ tmp483, _52,
	bpl	.L58		@,
@ src/soar_voxel.c:333: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r6, [r4, #84]	@ _53, CurrentProc_105(D)->sunsetVal
@ src/soar_voxel.c:334: 		else CurrentProc->sunTransition = 1;
	movs	r7, #1	@ cstore_180,
@ src/soar_voxel.c:333: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r6, #0	@ _53,
	beq	.L59		@,
@ src/soar_voxel.c:333: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	subs	r7, r7, #2	@ cstore_180,
.L59:
@ src/soar_voxel.c:335: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r6, r6, r7	@ tmp318, _53, cstore_180
	str	r7, [r4, #88]	@ cstore_180, CurrentProc_105(D)->sunTransition
	str	r6, [r4, #84]	@ tmp318, CurrentProc_105(D)->sunsetVal
.L58:
@ src/soar_voxel.c:338: 	if (CurrentProc->sunTransition!=0)
	ldr	r6, [r4, #88]	@ _56, CurrentProc_105(D)->sunTransition
@ src/soar_voxel.c:338: 	if (CurrentProc->sunTransition!=0)
	cmp	r6, #0	@ _56,
	beq	.L60		@,
@ src/soar_voxel.c:340: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r7, [r4, #84]	@ _57, CurrentProc_105(D)->sunsetVal
@ src/soar_voxel.c:340: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	subs	r1, r7, #1	@ tmp319, _57,
@ src/soar_voxel.c:340: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r1, #6	@ tmp319,
	bhi	.L61		@,
@ src/soar_voxel.c:342: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r6, r6, r7	@ tmp320, _56, _57
	str	r6, [r4, #84]	@ tmp320, CurrentProc_105(D)->sunsetVal
.L60:
@ src/soar_voxel.c:350: 	if (gKeyState.pressedKeys & R_BUTTON){
	lsls	r5, r5, #23	@ tmp484, _52,
	bpl	.L62		@,
@ src/soar_voxel.c:351: 		CurrentProc->ShowMap ^= 1;
	movs	r5, #1	@ tmp329,
	ldr	r6, [r4, #68]	@ CurrentProc_105(D)->ShowMap, CurrentProc_105(D)->ShowMap
	eors	r5, r6	@ tmp327, CurrentProc_105(D)->ShowMap
	str	r5, [r4, #68]	@ tmp327, CurrentProc_105(D)->ShowMap
.L62:
@ src/soar_voxel.c:354: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldr	r5, .L124	@ tmp330,
	ldrh	r5, [r5, #4]	@ _63,
@ src/soar_voxel.c:354: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	lsls	r6, r5, #25	@ tmp485, _63,
	bpl	.L63		@,
@ src/soar_voxel.c:355: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [sp, #4]	@ _40, %sfp
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	add	r3, r3, ip	@ tmp337, _44
@ src/soar_voxel.c:355: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r2, r1, r2	@ tmp336, _40, _41
	str	r2, [r4, #44]	@ tmp336, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ tmp337, CurrentProc_105(D)->sPlayerPosY
.L63:
@ src/soar_voxel.c:358: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	lsls	r3, r5, #24	@ tmp486, _63,
	bpl	.L64		@,
@ src/soar_voxel.c:359: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #44]	@ CurrentProc_105(D)->sPlayerPosX, CurrentProc_105(D)->sPlayerPosX
	ldr	r2, [sp, #4]	@ _40, %sfp
	subs	r3, r3, r2	@ tmp343, CurrentProc_105(D)->sPlayerPosX, _40
@ src/soar_voxel.c:360: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	mov	r2, ip	@ _44, _44
@ src/soar_voxel.c:359: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #44]	@ tmp343, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:360: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #48]	@ CurrentProc_105(D)->sPlayerPosY, CurrentProc_105(D)->sPlayerPosY
	subs	r3, r3, r2	@ tmp345, CurrentProc_105(D)->sPlayerPosY, _44
	str	r3, [r4, #48]	@ tmp345, CurrentProc_105(D)->sPlayerPosY
.L64:
@ src/soar_voxel.c:362: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return; //don't bother rendering if only holding down
	ldr	r3, [r4, #88]	@ CurrentProc_105(D)->sunTransition, CurrentProc_105(D)->sunTransition
@ src/soar_voxel.c:362: 	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return; //don't bother rendering if only holding down
	cmp	r3, #0	@ CurrentProc_105(D)->sunTransition,
	bne	.L65		@,
	cmp	r5, #128	@ _63,
	beq	.L52		@,
.L65:
@ src/soar_voxel.c:366: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldr	r1, [sp, #8]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:367: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r3, [r4, #48]	@ _75, CurrentProc_105(D)->sPlayerPosY
	str	r3, [sp, #4]	@ _75, %sfp
@ src/soar_voxel.c:368: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	ldr	r3, [r4, #52]	@ _76, CurrentProc_105(D)->sPlayerPosZ
@ src/soar_voxel.c:368: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	movs	r6, r3	@ camera_ht, _76
	subs	r6, r6, #48	@ camera_ht,
@ src/soar_voxel.c:366: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	str	r0, [sp, #12]	@ tmp453, %sfp
@ src/soar_voxel.c:367: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r7, [r4, #44]	@ _74, CurrentProc_105(D)->sPlayerPosX
@ src/soar_voxel.c:368: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	str	r3, [sp, #8]	@ _76, %sfp
@ src/soar_voxel.c:369: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r6	@ player_terrain_ht, camera_ht
	bgt	.L66		@,
@ src/soar_voxel.c:367: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	movs	r0, r7	@, _74
	ldr	r1, [sp, #4]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:369: 	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r6	@ camera_terrain_ht, camera_ht
	ble	.L67		@,
.L66:
@ src/soar_voxel.c:370: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [sp, #8]	@ _76, %sfp
	adds	r3, r3, #48	@ _76,
	str	r3, [r4, #52]	@ tmp359, CurrentProc_105(D)->sPlayerPosZ
@ src/soar_voxel.c:371: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_105(D)->sPlayerStepZ, CurrentProc_105(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp360,
.L122:
@ src/soar_voxel.c:376: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r4, #56]	@ tmp388, CurrentProc_105(D)->sPlayerStepZ
.L68:
@ src/soar_voxel.c:380: 	if (gKeyState.heldKeys & A_BUTTON){
	lsls	r5, r5, #31	@ tmp488, _63,
	bpl	.L72		@,
@ src/soar_voxel.c:381: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	movs	r2, #152	@ tmp395,
@ src/soar_voxel.c:381: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r4, #52]	@ _88, CurrentProc_105(D)->sPlayerPosZ
@ src/soar_voxel.c:381: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	lsls	r2, r2, #1	@ tmp395, tmp395,
	cmp	r3, r2	@ _88, tmp395
	bge	.L72		@,
@ src/soar_voxel.c:382: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r3, r3, #48	@ tmp396,
	str	r3, [r4, #52]	@ tmp396, CurrentProc_105(D)->sPlayerPosZ
@ src/soar_voxel.c:383: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_105(D)->sPlayerStepZ, CurrentProc_105(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp397,
	str	r3, [r4, #56]	@ tmp397, CurrentProc_105(D)->sPlayerStepZ
.L72:
@ src/soar_voxel.c:389: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	movs	r3, #128	@ tmp405,
	lsls	r3, r3, #3	@ tmp405, tmp405,
	cmp	r7, r3	@ _74, tmp405
	ble	.L73		@,
@ src/soar_voxel.c:389: 	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	str	r3, [r4, #44]	@ tmp405, CurrentProc_105(D)->sPlayerPosX
.L74:
@ src/soar_voxel.c:391: 	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	ldr	r2, [sp, #4]	@ _75, %sfp
	cmp	r2, r3	@ _75, tmp405
	ble	.L75		@,
.L123:
@ src/soar_voxel.c:392: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	str	r3, [r4, #48]	@ tmp404, CurrentProc_105(D)->sPlayerPosY
	b	.L52		@
.L61:
@ src/soar_voxel.c:346: 			CurrentProc->sunTransition = 0;
	movs	r6, #0	@ tmp321,
	str	r6, [r4, #88]	@ tmp321, CurrentProc_105(D)->sunTransition
	b	.L60		@
.L67:
@ src/soar_voxel.c:373: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	lsls	r3, r5, #30	@ tmp487, _63,
	bpl	.L68		@,
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	ldr	r3, [sp, #12]	@ player_terrain_ht, %sfp
	adds	r3, r3, #48	@ player_terrain_ht,
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r2, #1	@ tmp368,
	cmp	r3, r6	@ tmp367, camera_ht
	blt	.L69		@,
	movs	r2, #0	@ tmp368,
.L69:
	ldr	r1, [sp, #8]	@ _76, %sfp
	movs	r3, #1	@ tmp372,
	cmp	r1, #64	@ _76,
	bgt	.L70		@,
	movs	r3, #0	@ tmp372,
.L70:
	ands	r3, r2	@ tmp376, tmp368
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp380, tmp376,
	beq	.L68		@,
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	adds	r0, r0, #48	@ tmp381,
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r3, #1	@ tmp382,
	cmp	r0, r6	@ tmp381, camera_ht
	blt	.L71		@,
	movs	r3, #0	@ tmp382,
.L71:
@ src/soar_voxel.c:374: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp387, tmp382,
	beq	.L68		@,
@ src/soar_voxel.c:376: 			CurrentProc->sPlayerStepZ -= 1;
	ldr	r3, [r4, #56]	@ CurrentProc_105(D)->sPlayerStepZ, CurrentProc_105(D)->sPlayerStepZ
@ src/soar_voxel.c:375: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ camera_ht, CurrentProc_105(D)->sPlayerPosZ
@ src/soar_voxel.c:376: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r3, r3, #1	@ tmp388,
	b	.L122		@
.L73:
@ src/soar_voxel.c:390: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	cmp	r7, #0	@ _74,
	bge	.L74		@,
@ src/soar_voxel.c:390: 	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;
	movs	r2, #0	@ tmp401,
	str	r2, [r4, #44]	@ tmp401, CurrentProc_105(D)->sPlayerPosX
	b	.L74		@
.L75:
@ src/soar_voxel.c:392: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	ldr	r3, [sp, #4]	@ _75, %sfp
	cmp	r3, #0	@ _75,
	blt	.LCB961	@
	b	.L52	@long jump	@
.LCB961:
@ src/soar_voxel.c:392: 	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;
	movs	r3, #0	@ tmp404,
	b	.L123		@
.L125:
	.align	2
.L124:
	.word	gKeyState
	.word	.LANCHOR0
	.size	thumb_loop, .-thumb_loop
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
.LC36:
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
	.word	.LC36
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
.L18:
	bx	r3
.L38:
	bx	r4
.L39:
	bx	r6
