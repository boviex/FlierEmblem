	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"soar_voxel.c"
@ GNU C17 (devkitARM release 58) version 12.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -march=armv4t -Os -fomit-frame-pointer -ffast-math -fno-jump-tables
	.text
	.align	1
	.global	SoarVBlankInterrupt
	.syntax unified
	.code	16
	.thumb_func
	.type	SoarVBlankInterrupt, %function
SoarVBlankInterrupt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:74: 	*(u16*)(0x3007ff8) = 1;
	movs	r2, #1	@ tmp129,
	ldr	r3, .L18	@ tmp128,
@ src/soar_voxel.c:73: {
	push	{r4, lr}	@
@ src/soar_voxel.c:74: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp129, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:75: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:76: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:77: 	SyncLoOAM();
	ldr	r3, .L18+4	@ tmp131,
	bl	.L20		@
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L18+8	@ tmp132,
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L2		@,
@ src/soar_voxel.c:80: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp135,
	strb	r2, [r3]	@ tmp135, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L18+12	@ tmp137,
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L18+16	@ tmp138,
	bl	.L20		@
@ src/soar_voxel.c:82: 		SyncLCDControl();
	ldr	r3, .L18+20	@ tmp139,
	bl	.L20		@
@ src/soar_voxel.c:83: 		SyncBgAndPals();
	ldr	r3, .L18+24	@ tmp140,
	bl	.L20		@
@ src/soar_voxel.c:84: 		SyncRegisteredTiles();
	ldr	r3, .L18+28	@ tmp141,
	bl	.L20		@
@ src/soar_voxel.c:85: 		SyncHiOAM();
	ldr	r3, .L18+32	@ tmp142,
	bl	.L20		@
.L2:
@ src/soar_voxel.c:87: 	m4aSoundMain();
	bl	m4aSoundMain		@
	movs	r2, #63	@ tmp147,
@ src/soar_voxel.c:89: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L18+36	@ tmp143,
	ldrb	r3, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ands	r3, r2	@ _1, tmp147
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	movs	r1, r3	@ tmp149, _1
	subs	r1, r1, #16	@ tmp149,
	ldr	r2, .L18+40	@ tmp172,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	cmp	r1, #32	@ tmp149,
	bls	.L3		@,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	ldr	r1, [r2]	@ _8, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	subs	r1, r1, #48	@ _9,
	str	r1, [r2]	@ _9, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:96: 	if (animClock == 0) //resets once per 63 frames so close enough
	cmp	r3, #0	@ _1,
	beq	.L4		@,
.L1:
@ src/soar_voxel.c:102: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r0, [r2]	@ _10, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, .L18+44	@ tmp153,
	cmp	r0, r1	@ _10, tmp153
	bhi	.L17		@,
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, [r2]	@ _11, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	adds	r1, r1, #48	@ _12,
	str	r1, [r2]	@ _12, MEM[(volatile vu32 *)50344144B]
.L17:
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	cmp	r3, #32	@ _1,
	bne	.L1		@,
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	ldr	r3, .L18+48	@ tmp159,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	lsls	r3, r3, #30	@ tmp173, gChapterData,
	bmi	.L1		@,
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	movs	r0, #166	@,
	ldr	r3, .L18+52	@ tmp167,
	bl	.L20		@
	b	.L1		@
.L4:
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L18+56	@ tmp168,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r1, .L18+60	@ tmp169,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r2]	@ _15, MEM[(int *)33816568B]
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r1]	@ _15, MEM[(int *)33816572B]
@ src/soar_voxel.c:99: 		FPS_COUNTER = 0;
	str	r3, [r2]	@ _1, MEM[(int *)33816568B]
@ src/soar_voxel.c:102: };
	b	.L1		@
.L19:
	.align	2
.L18:
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
	.word	40911
	.word	gChapterData+65
	.word	m4aSongNumStart
	.word	33816568
	.word	33816572
	.size	SoarVBlankInterrupt, .-SoarVBlankInterrupt
	.align	1
	.global	MoveLord
	.syntax unified
	.code	16
	.thumb_func
	.type	MoveLord, %function
MoveLord:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ src/soar_voxel.c:226: 	VBlankIntrWait();
	ldr	r6, .L22	@ tmp127,
@ src/soar_voxel.c:253: };
	@ sp needed	@
@ src/soar_voxel.c:224: void MoveLord(SoarProc* CurrentProc){
	movs	r5, r0	@ CurrentProc, tmp141
@ src/soar_voxel.c:226: 	VBlankIntrWait();
	bl	.L24		@
@ src/soar_voxel.c:227: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L22+4	@ tmp129,
	ldr	r0, .L22+8	@,
	bl	.L20		@
	movs	r4, r0	@ wmproc, tmp142
@ src/soar_voxel.c:228: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L22+12	@ tmp130,
	bl	.L20		@
@ src/soar_voxel.c:229: 	VBlankIntrWait();
	bl	.L24		@
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
	ldr	r2, .L22+16	@ tmp134,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L22+20	@ tmp133,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L22+24	@ tmp136,
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L22+28	@ tmp137,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:246: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp139,
	ldr	r3, .L22+32	@ tmp138,
	lsls	r2, r2, #5	@ tmp139, tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:253: };
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L23:
	.align	2
.L22:
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
	.type	getPtHeight_thumb, %function
getPtHeight_thumb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r2, #128	@ tmp124,
@ src/soar_voxel.c:311: static inline int getPtHeight_thumb(int ptx, int pty){
	push	{r4, lr}	@
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r4, r0	@ tmp123, ptx
@ src/soar_voxel.c:311: static inline int getPtHeight_thumb(int ptx, int pty){
	movs	r3, r0	@ ptx, tmp131
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r4, r1	@ tmp123, pty
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	lsls	r2, r2, #2	@ tmp124, tmp124,
	cmp	r4, r2	@ tmp123, tmp124
	bcs	.L25		@,
@ src/soar_voxel.c:313: 	return heightMap[((pty>>1)<<(MAP_DIMENSIONS_LOG2-1))+(ptx>>1)];
	ldr	r2, .L28	@ tmp125,
@ src/soar_voxel.c:313: 	return heightMap[((pty>>1)<<(MAP_DIMENSIONS_LOG2-1))+(ptx>>1)];
	asrs	r1, r1, #1	@ tmp126, pty,
@ src/soar_voxel.c:313: 	return heightMap[((pty>>1)<<(MAP_DIMENSIONS_LOG2-1))+(ptx>>1)];
	lsls	r1, r1, #8	@ tmp127, tmp126,
@ src/soar_voxel.c:313: 	return heightMap[((pty>>1)<<(MAP_DIMENSIONS_LOG2-1))+(ptx>>1)];
	asrs	r3, r3, #1	@ tmp128, ptx,
@ src/soar_voxel.c:313: 	return heightMap[((pty>>1)<<(MAP_DIMENSIONS_LOG2-1))+(ptx>>1)];
	adds	r2, r2, r1	@ tmp129, tmp125, tmp127
	ldrb	r0, [r2, r3]	@ <retval>, heightMap
.L25:
@ src/soar_voxel.c:314: };
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L29:
	.align	2
.L28:
	.word	heightMap
	.size	getPtHeight_thumb, .-getPtHeight_thumb
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.type	BumpScreen.part.0, %function
BumpScreen.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ src/soar_voxel.c:302: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp114,
@ src/soar_voxel.c:309: };
	@ sp needed	@
@ src/soar_voxel.c:303: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp117,
@ src/soar_voxel.c:302: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L31	@ tmp113,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:303: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L31+4	@ tmp116,
	rsbs	r1, r1, #0	@ tmp117, tmp117
	strh	r1, [r2]	@ tmp117, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:304: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L31+8	@ tmp119,
	adds	r1, r1, #122	@ tmp120,
	adds	r1, r1, #255	@ tmp120,
	strh	r1, [r2]	@ tmp120, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:305: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L31+12	@ tmp122,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:306: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L31+16	@ tmp125,
	ldr	r2, .L31+20	@ tmp126,
	str	r2, [r3]	@ tmp126, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:307: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp128,
	ldr	r3, .L31+24	@ tmp127,
	lsls	r2, r2, #1	@ tmp128, tmp128,
	str	r2, [r3]	@ tmp128, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:309: };
	bx	lr
.L32:
	.align	2
.L31:
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
@ src/soar_voxel.c:56: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	ldr	r2, .L34	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:56: 	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:59: }
	bx	lr
.L35:
	.align	2
.L34:
	.word	50344064
	.size	vid_flip, .-vid_flip
	.align	1
	.global	StartSoaring
	.syntax unified
	.code	16
	.thumb_func
	.type	StartSoaring, %function
StartSoaring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L37	@ tmp117,
@ src/soar_voxel.c:66: };
	@ sp needed	@
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L37+4	@,
	bl	.L20		@
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L37+8	@ tmp118,
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L37+12	@ tmp119,
	bl	.L20		@
@ src/soar_voxel.c:66: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L38:
	.align	2
.L37:
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
	.type	LoadSprite, %function
LoadSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r1, .L41	@,
@ src/soar_voxel.c:174: };
	@ sp needed	@
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L41+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:166: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L41+8	@,
	ldr	r0, .L41+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:167: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L41+16	@,
	ldr	r0, .L41+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:168: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L41+24	@,
	ldr	r0, .L41+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:169: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L41+32	@,
	ldr	r0, .L41+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:170: 	LZ77UnCompVram(&lensFlareSprite, &tile_mem[5][193]);
	ldr	r1, .L41+40	@,
	ldr	r0, .L41+44	@ tmp124,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:171: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:172: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp131,
	ldr	r4, .L41+48	@ tmp127,
	movs	r2, #32	@,
	ldr	r0, .L41+52	@ tmp126,
	lsls	r1, r1, #2	@, tmp131,
	bl	.L43		@
@ src/soar_voxel.c:173: 	ApplyPalette(&lensFlarePal, 0x13);
	movs	r1, #152	@ tmp132,
	movs	r2, #32	@,
	ldr	r0, .L41+56	@ tmp129,
	lsls	r1, r1, #2	@, tmp132,
	bl	.L43		@
@ src/soar_voxel.c:174: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L42:
	.align	2
.L41:
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
	.type	SetUpNewWMGraphics, %function
SetUpNewWMGraphics:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L48	@ tmp129,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r7, r0	@ CurrentProc, tmp216
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	sub	sp, sp, #28	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #9	@ tmp130, _1,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp135, tmp217,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r7, #44]	@ tmp135, CurrentProc_15(D)->sPlayerPosX
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L48+4	@ tmp136,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #9	@ tmp137, _5,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	movs	r3, #160	@ tmp146,
@ src/soar_voxel.c:116: 	CurrentProc->sunsetVal = 0;
	movs	r4, #0	@ tmp145,
@ src/soar_voxel.c:115: 	CurrentProc->location = Frelia;
	movs	r5, #1	@ tmp144,
@ src/soar_voxel.c:111: 	CurrentProc->sPlayerStepZ = 2;
	movs	r6, #2	@ tmp147,
@ src/soar_voxel.c:117: 	CurrentProc->sunTransition = 0;
	movs	r2, #128	@ tmp158,
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	str	r3, [r7, #52]	@ tmp146, CurrentProc_15(D)->sPlayerPosZ
@ src/soar_voxel.c:112: 	CurrentProc->sPlayerYaw = a_SE;
	subs	r3, r3, #154	@ tmp148,
	str	r3, [r7, #60]	@ tmp148, CurrentProc_15(D)->sPlayerYaw
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp142, tmp218,
@ src/soar_voxel.c:122: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L48+8	@ tmp149,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #85	@ tmp143,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	str	r0, [r7, #48]	@ tmp143, CurrentProc_15(D)->sPlayerPosY
@ src/soar_voxel.c:122: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	str	r3, [r7, #64]	@ tmp149, CurrentProc_15(D)->vid_page
@ src/soar_voxel.c:115: 	CurrentProc->location = Frelia;
	str	r5, [r7, #80]	@ tmp144, CurrentProc_15(D)->location
@ src/soar_voxel.c:116: 	CurrentProc->sunsetVal = 0;
	str	r4, [r7, #84]	@ tmp145, CurrentProc_15(D)->sunsetVal
@ src/soar_voxel.c:111: 	CurrentProc->sPlayerStepZ = 2;
	str	r6, [r7, #56]	@ tmp147, CurrentProc_15(D)->sPlayerStepZ
@ src/soar_voxel.c:117: 	CurrentProc->sunTransition = 0;
	adds	r7, r7, #6	@ tmp150,
	ldrh	r3, [r7, #62]	@ MEM <unsigned short> [(void *)CurrentProc_15(D) + 68B], MEM <unsigned short> [(void *)CurrentProc_15(D) + 68B]
	lsrs	r3, r3, #12	@ tmp155, MEM <unsigned short> [(void *)CurrentProc_15(D) + 68B],
	lsls	r2, r2, #3	@ tmp158, tmp158,
	lsls	r3, r3, #12	@ tmp154, tmp155,
	orrs	r3, r2	@ tmp157, tmp158
	strh	r3, [r7, #62]	@ tmp157, MEM <unsigned short> [(void *)CurrentProc_15(D) + 68B]
@ src/soar_voxel.c:128: 	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);
	subs	r2, r2, #129	@,
	ldr	r3, .L48+12	@ tmp163,
	ldr	r0, .L48+16	@ tmp162,
	ldr	r1, .L48+20	@,
	subs	r2, r2, #255	@,
	str	r3, [sp, #12]	@ tmp163, %sfp
	bl	.L20		@
@ src/soar_voxel.c:130: 	VBlankIntrWait();
	ldr	r3, .L48+24	@ tmp164,
	bl	.L20		@
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L48+28	@ tmp165,
	ldr	r2, .L48+32	@ tmp166,
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r1, #4	@,
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	strh	r2, [r3]	@ tmp166, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r0, #3	@,
	movs	r3, r4	@, tmp145
	movs	r2, #16	@,
	ldr	r7, .L48+36	@ tmp168,
	bl	.L50		@
@ src/soar_voxel.c:141: 	SetColorEffectsFirstTarget(0,0,0,0,0);
	movs	r1, r4	@, tmp145
	movs	r2, r4	@, tmp145
	movs	r3, r4	@, tmp145
	movs	r0, r4	@, tmp145
	str	r4, [sp]	@ tmp145,
	ldr	r7, .L48+40	@ tmp170,
	bl	.L50		@
@ src/soar_voxel.c:142: 	SetColorEffectBackdropFirstTarget(1);
	movs	r0, r5	@, tmp144
	ldr	r3, .L48+44	@ tmp171,
	bl	.L20		@
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp176,
@ src/soar_voxel.c:147: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L48+48	@ tmp172,
	strh	r4, [r3]	@ tmp145, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L48+52	@ tmp175,
	rsbs	r2, r2, #0	@ tmp176, tmp176
	strh	r2, [r3]	@ tmp176, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:149: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L48+56	@ tmp178,
	adds	r2, r2, #122	@ tmp179,
	adds	r2, r2, #255	@ tmp179,
	strh	r2, [r3]	@ tmp179, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L48+60	@ tmp181,
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L48+64	@ tmp185,
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	strh	r4, [r3]	@ tmp145, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L48+68	@ tmp184,
	str	r2, [r3]	@ tmp185, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:152: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp187,
	ldr	r3, .L48+72	@ tmp186,
	lsls	r2, r2, #1	@ tmp187, tmp187,
@ src/soar_voxel.c:154: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
@ src/soar_voxel.c:152: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	str	r2, [r3]	@ tmp187, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:154: 	Sound_FadeSongOut(10);
	ldr	r3, .L48+76	@ tmp188,
	bl	.L20		@
@ src/soar_voxel.c:155: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	ldr	r3, .L48+80	@ tmp192,
	ldrb	r3, [r3]	@ _10, gChapterData
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	movs	r0, #88	@,
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	tst	r3, r5	@ _10, tmp144
	beq	.L47		@,
@ src/soar_voxel.c:157: 	else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x4e); //windy (play if sfx but no music)
	tst	r3, r6	@ _10, tmp147
	bne	.L46		@,
@ src/soar_voxel.c:157: 	else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x4e); //windy (play if sfx but no music)
	movs	r0, #78	@,
.L47:
	ldr	r3, .L48+84	@ tmp204,
	bl	.L20		@
.L46:
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp206,
	ldr	r3, .L48+88	@ tmp205,
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@,
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp206, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r3, #0	@ tmp208,
	ldr	r2, .L48+92	@,
	str	r3, [sp, #20]	@ tmp208, tmp
	lsls	r1, r1, #19	@,,
	ldr	r3, [sp, #12]	@ tmp163, %sfp
	add	r0, sp, #20	@,,
	bl	.L20		@
@ src/soar_voxel.c:161: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L48+96	@ tmp213,
	ldr	r3, .L48+100	@ tmp214,
	bl	.L20		@
@ src/soar_voxel.c:162: };
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L49:
	.align	2
.L48:
	.word	50352776
	.word	50352780
	.word	100704256
	.word	CpuFastSet
	.word	NewWMLoop
	.word	50360320
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
	.word	gChapterData+65
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
	.type	EndLoop, %function
EndLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}	@
@ src/soar_voxel.c:255: void EndLoop(SoarProc* CurrentProc){
	movs	r4, r0	@ CurrentProc, tmp129
@ src/soar_voxel.c:275: };
	@ sp needed	@
@ src/soar_voxel.c:256: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L52	@ tmp116,
	ldr	r3, .L52+4	@ tmp117,
	bl	.L20		@
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	ldr	r5, .L52+8	@ tmp118,
@ src/soar_voxel.c:257: 	int vid_page = CurrentProc->vid_page;
	ldr	r6, [r4, #64]	@ _1, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	bl	.L54		@
@ src/soar_voxel.c:259:   	CpuFastFill(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r3, #0	@ tmp119,
	movs	r1, r6	@, _1
	ldr	r2, .L52+12	@,
	str	r3, [sp, #4]	@ tmp119, tmp
	add	r0, sp, #4	@,,
	ldr	r3, .L52+16	@ tmp122,
	bl	.L20		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	movs	r0, r6	@, _1
	bl	vid_flip		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	str	r0, [r4, #64]	@ tmp130, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:262:   	VBlankIntrWait();
	bl	.L54		@
@ src/soar_voxel.c:263: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	movs	r2, #5	@ tmp125,
	ldr	r3, .L52+20	@ tmp124,
@ src/soar_voxel.c:272: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
@ src/soar_voxel.c:263: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	strh	r2, [r3]	@ tmp125, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:272: 	BreakProcLoop(CurrentProc);
	ldr	r3, .L52+24	@ tmp127,
	bl	.L20		@
@ src/soar_voxel.c:274: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L52+28	@ tmp128,
	bl	.L20		@
@ src/soar_voxel.c:275: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L53:
	.align	2
.L52:
	.word	OnVBlankMain
	.word	SetInterrupt_LCDVBlank
	.word	VBlankIntrWait
	.word	16787456
	.word	CpuFastSet
	.word	50344064
	.word	BreakProcLoop
	.word	Sound_FadeSongOut
	.size	EndLoop, .-EndLoop
	.align	1
	.global	BumpScreen
	.syntax unified
	.code	16
	.thumb_func
	.type	BumpScreen, %function
BumpScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:278: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L56		@,
	bgt	.L57		@,
	cmp	r0, #1	@ direction,
	bls	.L55		@,
.L58:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:309: };
	b	.L55		@
.L57:
@ src/soar_voxel.c:278: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L58		@,
@ src/soar_voxel.c:294: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L62	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:295: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L62+4	@ tmp133,
	ldr	r2, .L62+8	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:296: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L62+12	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:297: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L62+16	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:298: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L62+20	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:299: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L62+24	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L61		@
.L56:
@ src/soar_voxel.c:286: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L62	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:287: 			g_REG_BG2X=0x9280;
	ldr	r3, .L62+4	@ tmp117,
	ldr	r2, .L62+28	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:288: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L62+12	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:289: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L62+16	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:290: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L62+20	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:291: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L62+24	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L61:
@ src/soar_voxel.c:299: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L55:
@ src/soar_voxel.c:309: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L63:
	.align	2
.L62:
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
	.type	thumb_loop, %function
thumb_loop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	ldr	r5, [r0, #56]	@ _3, CurrentProc_141(D)->sPlayerStepZ
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r6, r0	@ tmp269, CurrentProc
@ src/soar_voxel.c:317: {
	movs	r4, r0	@ CurrentProc, tmp647
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r7, #0	@ tmp278,
	movs	r0, #1	@ tmp276,
	lsrs	r2, r5, #31	@ tmp277, _3,
	cmp	r0, r5	@ tmp276, _3
	adcs	r2, r2, r7	@ tmp275, tmp277, tmp278
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	adds	r6, r6, #69	@ tmp269,
	ldrb	r3, [r6]	@ *CurrentProc_141(D), *CurrentProc_141(D)
	lsls	r1, r3, #29	@ tmp273, *CurrentProc_141(D),
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsrs	r1, r1, #31	@ tmp283, tmp273,
@ src/soar_voxel.c:317: {
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:322: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	tst	r1, r2	@ tmp283, tmp275
	beq	.L65		@,
@ src/soar_voxel.c:324: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r6, [r4, #52]	@ _5, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:324: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_141(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_141(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:324: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	movs	r3, r6	@ tmp284, _5
	subs	r3, r3, #63	@ tmp284,
@ src/soar_voxel.c:324: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp284, tmp648
	bgt	.L66		@,
@ src/soar_voxel.c:326: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r6, r6, #64	@ tmp285,
@ src/soar_voxel.c:327: 			CurrentProc->sPlayerStepZ += 1;
	adds	r5, r5, #1	@ tmp286,
@ src/soar_voxel.c:326: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ tmp285, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:327: 			CurrentProc->sPlayerStepZ += 1;
	str	r5, [r4, #56]	@ tmp286, CurrentProc_141(D)->sPlayerStepZ
.L66:
@ src/soar_voxel.c:329: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ CurrentProc_141(D)->sPlayerPosZ, CurrentProc_141(D)->sPlayerPosZ
	adds	r3, r3, #64	@ tmp287,
	str	r3, [r4, #52]	@ tmp287, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:330: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_141(D)->sPlayerStepZ, CurrentProc_141(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp289,
	str	r3, [r4, #56]	@ tmp289, CurrentProc_141(D)->sPlayerStepZ
.L67:
@ src/soar_voxel.c:331: 		return 1;
	movs	r0, #1	@ <retval>,
	b	.L64		@
.L65:
@ src/soar_voxel.c:333: 	else CurrentProc->takeOffTransition = 0;
	movs	r2, #4	@ tmp299,
	bics	r3, r2	@ tmp298, tmp299
	strb	r3, [r6]	@ tmp298, CurrentProc_141(D)->takeOffTransition
@ src/soar_voxel.c:335: 	if (CurrentProc->landingTransition)
	lsls	r3, r3, #28	@ tmp671, tmp298,
	bpl	.L68		@,
@ src/soar_voxel.c:337: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r6, [r4, #52]	@ _18, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:337: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_141(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_141(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:337: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	movs	r3, r6	@ tmp311, _18
	subs	r3, r3, #127	@ tmp311,
@ src/soar_voxel.c:337: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp311, tmp649
	bgt	.L69		@,
@ src/soar_voxel.c:339: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	ldr	r3, .L132	@ tmp315,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:339: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	lsls	r3, r3, #30	@ tmp672, gChapterData,
	bmi	.L70		@,
@ src/soar_voxel.c:339: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	movs	r0, #115	@,
	ldr	r3, .L132+4	@ tmp323,
	bl	.L20		@
.L70:
@ src/soar_voxel.c:340: 			EndLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ src/soar_voxel.c:341: 			return 0;
	movs	r0, #0	@ <retval>,
.L64:
@ src/soar_voxel.c:462: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L69:
@ src/soar_voxel.c:345: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r6, r6, #64	@ tmp324,
@ src/soar_voxel.c:346: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r5, r5, #1	@ tmp325,
@ src/soar_voxel.c:345: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ tmp324, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:346: 			CurrentProc->sPlayerStepZ -= 1;
	str	r5, [r4, #56]	@ tmp325, CurrentProc_141(D)->sPlayerStepZ
@ src/soar_voxel.c:347: 			return 1;
	b	.L67		@
.L68:
@ src/soar_voxel.c:353: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r3, .L132+8	@ tmp326,
	str	r3, [sp, #4]	@ tmp326, %sfp
	ldrh	r3, [r3, #4]	@ _27,
	ldr	r0, .L132+12	@ tmp624,
@ src/soar_voxel.c:353: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r2, r3, #26	@ tmp673, _27,
	bmi	.LCB818	@
	b	.L72	@long jump	@
.LCB818:
@ src/soar_voxel.c:354: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #60]	@ _29, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:354: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsls	r2, r3, #1	@ tmp333, _29,
	ldrsh	r1, [r0, r2]	@ tmp334, cam_pivot_dx_Angles
@ src/soar_voxel.c:354: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, [r4, #44]	@ CurrentProc_141(D)->sPlayerPosX, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:355: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r0, r2	@ tmp338, tmp624, tmp333
@ src/soar_voxel.c:354: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r1, r1, r5	@ newx, tmp334, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:355: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r5, #32	@ tmp340,
	ldrsh	r5, [r2, r5]	@ tmp340, tmp338, tmp340
@ src/soar_voxel.c:355: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [r4, #48]	@ CurrentProc_141(D)->sPlayerPosY, CurrentProc_141(D)->sPlayerPosY
	adds	r5, r5, r2	@ newy, tmp340, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	movs	r2, #15	@ tmp343,
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	subs	r3, r3, #1	@ tmp342,
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	ands	r3, r2	@ _36, tmp343
@ src/soar_voxel.c:356: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _36, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:358: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp345, _36,
	adds	r2, r0, r3	@ tmp346, tmp624, tmp345
@ src/soar_voxel.c:357: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r0, r3]	@ tmp356, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp358, tmp356,
@ src/soar_voxel.c:357: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp360, tmp358,
	subs	r3, r3, r0	@ tmp361, tmp358, tmp360
@ src/soar_voxel.c:361: 		BumpScreen(bump_left);
	movs	r0, #2	@,
@ src/soar_voxel.c:358: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp686,
	ldrsh	r2, [r2, r7]	@ tmp348, tmp346, tmp686
	asrs	r2, r2, #2	@ tmp350, tmp348,
@ src/soar_voxel.c:358: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r2, #2	@ tmp352, tmp350,
	subs	r2, r2, r7	@ tmp353, tmp350, tmp352
@ src/soar_voxel.c:358: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r2, r2, r5	@ newy, tmp353, newy
@ src/soar_voxel.c:357: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r1	@ newx, tmp361, newx
@ src/soar_voxel.c:359: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:360: 		CurrentProc->sPlayerPosY = newy;
	str	r2, [r4, #48]	@ newy, CurrentProc_141(D)->sPlayerPosY
.L130:
@ src/soar_voxel.c:371: 		BumpScreen(bump_right);
	bl	BumpScreen		@
.L73:
@ src/soar_voxel.c:382: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r4, #60]	@ _64, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:382: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, .L132+16	@ tmp408,
	lsls	r3, r3, #1	@ tmp409, _64,
	adds	r2, r2, r3	@ tmp410, tmp408, tmp409
	ldr	r5, .L132+12	@ tmp407,
	movs	r1, #62	@ tmp412,
	ldrsh	r1, [r2, r1]	@ tmp412, tmp410, tmp412
@ src/soar_voxel.c:382: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [r4, #44]	@ CurrentProc_141(D)->sPlayerPosX, CurrentProc_141(D)->sPlayerPosX
	adds	r1, r1, r2	@ _67, tmp412, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:383: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r5	@ tmp417, tmp407
	adds	r2, r2, #96	@ tmp417,
	ldrsh	r2, [r3, r2]	@ tmp419, cam_dy_Angles
@ src/soar_voxel.c:383: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ CurrentProc_141(D)->sPlayerPosY, CurrentProc_141(D)->sPlayerPosY
	adds	r2, r2, r0	@ _71, tmp419, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:384: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r3, r5]	@ tmp423, cam_pivot_dx_Angles
@ src/soar_voxel.c:382: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r4, #44]	@ _67, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:385: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r5, r3	@ tmp427, tmp407, tmp409
@ src/soar_voxel.c:384: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r0, r1	@ tmp424, tmp423, _67
@ src/soar_voxel.c:384: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #72]	@ tmp424, CurrentProc_141(D)->sFocusPtX
@ src/soar_voxel.c:385: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	movs	r1, #32	@ tmp695,
	ldrsh	r3, [r3, r1]	@ tmp429, tmp427, tmp695
@ src/soar_voxel.c:385: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r3, r2	@ tmp430, tmp429, _71
@ src/soar_voxel.c:385: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r3, [r4, #76]	@ tmp430, CurrentProc_141(D)->sFocusPtY
@ src/soar_voxel.c:383: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #48]	@ _71, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:388: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldr	r3, [sp, #4]	@ tmp326, %sfp
	ldrh	r2, [r3, #8]	@ tmp433,
	movs	r3, #8	@ tmp435,
	tst	r2, r3	@ tmp433, tmp435
	beq	.L75		@,
@ src/soar_voxel.c:389: 		if (CurrentProc->location)
	ldr	r2, [r4, #80]	@ CurrentProc_141(D)->location, CurrentProc_141(D)->location
	cmp	r2, #0	@ CurrentProc_141(D)->location,
	bne	.LCB886	@
	b	.L76	@long jump	@
.LCB886:
@ src/soar_voxel.c:391: 			CurrentProc->landingTransition = TRUE;
	ldrb	r2, [r6]	@ CurrentProc_141(D)->landingTransition, CurrentProc_141(D)->landingTransition
	orrs	r3, r2	@ tmp447, CurrentProc_141(D)->landingTransition
	strb	r3, [r6]	@ tmp447, CurrentProc_141(D)->landingTransition
.L75:
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	ldr	r3, [sp, #4]	@ tmp326, %sfp
	ldrh	r1, [r3, #8]	@ _82,
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	lsls	r3, r1, #29	@ tmp676, _82,
	bpl	.L77		@,
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	movs	r2, #1	@ tmp480,
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	ldrb	r3, [r6]	@ *CurrentProc_141(D), *CurrentProc_141(D)
	lsls	r0, r3, #30	@ tmp478, *CurrentProc_141(D),
	lsrs	r0, r0, #31	@ tmp477, tmp478,
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	bics	r2, r0	@ tmp487, tmp477
	movs	r0, #2	@ tmp494,
	lsls	r2, r2, #1	@ tmp490, tmp487,
	bics	r3, r0	@ tmp493, tmp494
	orrs	r3, r2	@ tmp497, tmp490
	strb	r3, [r6]	@ tmp497, CurrentProc_141(D)->ShowFPS
.L77:
@ src/soar_voxel.c:416: 	if (gKeyState.pressedKeys & R_BUTTON){
	lsls	r1, r1, #23	@ tmp677, _82,
	bpl	.L78		@,
@ src/soar_voxel.c:417: 		CurrentProc->ShowMap ^= 1;
	movs	r1, #1	@ tmp516,
	movs	r0, r1	@ tmp523, tmp516
@ src/soar_voxel.c:417: 		CurrentProc->ShowMap ^= 1;
	ldrb	r3, [r6]	@ *CurrentProc_141(D), *CurrentProc_141(D)
	lsls	r2, r3, #31	@ tmp514, *CurrentProc_141(D),
	lsrs	r2, r2, #31	@ tmp513, tmp514,
@ src/soar_voxel.c:417: 		CurrentProc->ShowMap ^= 1;
	bics	r0, r2	@ tmp523, tmp513
	bics	r3, r1	@ tmp527, tmp516
	orrs	r3, r0	@ tmp531, tmp523
	strb	r3, [r6]	@ tmp531, CurrentProc_141(D)->ShowMap
.L78:
@ src/soar_voxel.c:420: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldr	r3, [sp, #4]	@ tmp326, %sfp
	ldrh	r6, [r3, #4]	@ _87,
@ src/soar_voxel.c:420: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	lsls	r3, r6, #25	@ tmp678, _87,
	bpl	.L79		@,
@ src/soar_voxel.c:421: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #60]	@ _89, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:421: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r2, r5, #2	@ tmp540, tmp407,
	lsls	r3, r3, #1	@ tmp541, _89,
	adds	r2, r2, r3	@ tmp542, tmp540, tmp541
	movs	r0, #62	@ tmp544,
	ldrsh	r0, [r2, r0]	@ tmp544, tmp542, tmp544
@ src/soar_voxel.c:421: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #44]	@ CurrentProc_141(D)->sPlayerPosX, CurrentProc_141(D)->sPlayerPosX
	adds	r2, r2, r0	@ tmp545, CurrentProc_141(D)->sPlayerPosX, tmp544
	str	r2, [r4, #44]	@ tmp545, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:422: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r5	@ tmp550, tmp407
	adds	r2, r2, #96	@ tmp550,
@ src/soar_voxel.c:433: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [r4, #48]	@ pretmp_256, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:422: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r3, r2]	@ tmp552, cam_dy_Angles
@ src/soar_voxel.c:422: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, r1	@ tmp553, tmp552, pretmp_256
	str	r3, [r4, #48]	@ tmp553, CurrentProc_141(D)->sPlayerPosY
.L79:
@ src/soar_voxel.c:424: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	lsls	r3, r6, #24	@ tmp679, _87,
	bpl	.L80		@,
@ src/soar_voxel.c:425: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, [r4, #60]	@ _98, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:425: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r1, r5, #2	@ tmp560, tmp407,
	lsls	r3, r3, #1	@ tmp561, _98,
	adds	r1, r1, r3	@ tmp562, tmp560, tmp561
	movs	r0, #62	@ tmp564,
	ldrsh	r0, [r1, r0]	@ tmp564, tmp562, tmp564
@ src/soar_voxel.c:425: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #44]	@ CurrentProc_141(D)->sPlayerPosX, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:426: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r5, r5, #96	@ tmp570,
@ src/soar_voxel.c:425: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	subs	r1, r1, r0	@ tmp565, CurrentProc_141(D)->sPlayerPosX, tmp564
@ src/soar_voxel.c:433: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r2, [r4, #48]	@ pretmp_254, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:425: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	str	r1, [r4, #44]	@ tmp565, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:426: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r3, r5]	@ tmp572, cam_dy_Angles
@ src/soar_voxel.c:426: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	subs	r3, r2, r3	@ tmp573, pretmp_254, tmp572
	str	r3, [r4, #48]	@ tmp573, CurrentProc_141(D)->sPlayerPosY
.L80:
@ src/soar_voxel.c:432: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldr	r1, [r4, #76]	@, CurrentProc_141(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_141(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:434: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	ldr	r5, [r4, #52]	@ _110, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:434: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	movs	r7, r5	@ camera_ht, _110
@ src/soar_voxel.c:433: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r3, [r4, #44]	@ _108, CurrentProc_141(D)->sPlayerPosX
	str	r3, [sp, #4]	@ _108, %sfp
	ldr	r3, [r4, #48]	@ _109, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:434: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	subs	r7, r7, #74	@ camera_ht,
@ src/soar_voxel.c:432: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	str	r0, [sp, #12]	@ tmp650, %sfp
@ src/soar_voxel.c:433: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	str	r3, [sp, #8]	@ _109, %sfp
@ src/soar_voxel.c:435: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ player_terrain_ht, camera_ht
	bgt	.L81		@,
@ src/soar_voxel.c:433: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [sp, #8]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:435: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ camera_terrain_ht, camera_ht
	ble	.L82		@,
.L81:
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_141(D)->sPlayerStepZ, CurrentProc_141(D)->sPlayerStepZ
@ src/soar_voxel.c:436: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r5, r5, #64	@ tmp574,
	str	r5, [r4, #52]	@ tmp574, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:437: 		CurrentProc->sPlayerStepZ += 1;
	adds	r3, r3, #1	@ tmp575,
.L131:
@ src/soar_voxel.c:442: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r4, #56]	@ tmp604, CurrentProc_141(D)->sPlayerStepZ
.L83:
@ src/soar_voxel.c:446: 	if (gKeyState.heldKeys & A_BUTTON){
	lsls	r6, r6, #31	@ tmp681, _87,
	bpl	.L87		@,
@ src/soar_voxel.c:447: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	movs	r2, #144	@ tmp611,
@ src/soar_voxel.c:447: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r4, #52]	@ _123, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:447: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	lsls	r2, r2, #1	@ tmp611, tmp611,
	cmp	r3, r2	@ _123, tmp611
	bge	.L87		@,
@ src/soar_voxel.c:448: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r3, r3, #64	@ tmp612,
	str	r3, [r4, #52]	@ tmp612, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:449: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_141(D)->sPlayerStepZ, CurrentProc_141(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp613,
	str	r3, [r4, #56]	@ tmp613, CurrentProc_141(D)->sPlayerStepZ
.L87:
@ src/soar_voxel.c:455: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	movs	r3, #251	@ tmp626,
	ldr	r2, [sp, #4]	@ _108, %sfp
	lsls	r3, r3, #1	@ tmp626, tmp626,
	cmp	r2, r3	@ _108, tmp626
	ble	.L88		@,
@ src/soar_voxel.c:455: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	str	r3, [r4, #44]	@ tmp626, CurrentProc_141(D)->sPlayerPosX
.L89:
@ src/soar_voxel.c:458: 	if (CurrentProc->sPlayerPosY > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosY = MAP_DIMENSIONS-10;
	ldr	r2, [sp, #8]	@ _109, %sfp
	cmp	r2, r3	@ _109, tmp626
	ble	.L90		@,
.L129:
@ src/soar_voxel.c:459: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	str	r3, [r4, #48]	@ tmp620, CurrentProc_141(D)->sPlayerPosY
	b	.L67		@
.L72:
@ src/soar_voxel.c:363: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	lsls	r3, r3, #27	@ tmp674, _27,
	bpl	.L74		@,
@ src/soar_voxel.c:364: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #60]	@ _46, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:364: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	lsls	r2, r3, #1	@ tmp369, _46,
	ldrsh	r1, [r0, r2]	@ tmp370, cam_pivot_dx_Angles
@ src/soar_voxel.c:364: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, [r4, #44]	@ CurrentProc_141(D)->sPlayerPosX, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:365: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r0, r2	@ tmp374, tmp624, tmp369
@ src/soar_voxel.c:364: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r1, r1, r5	@ newx, tmp370, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:365: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r5, #32	@ tmp376,
	ldrsh	r5, [r2, r5]	@ tmp376, tmp374, tmp376
@ src/soar_voxel.c:365: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r2, [r4, #48]	@ CurrentProc_141(D)->sPlayerPosY, CurrentProc_141(D)->sPlayerPosY
	adds	r5, r5, r2	@ newy, tmp376, CurrentProc_141(D)->sPlayerPosY
@ src/soar_voxel.c:366: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	movs	r2, #15	@ tmp379,
@ src/soar_voxel.c:366: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	adds	r3, r3, #1	@ tmp378,
@ src/soar_voxel.c:366: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	ands	r3, r2	@ _53, tmp379
@ src/soar_voxel.c:366: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _53, CurrentProc_141(D)->sPlayerYaw
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp381, _53,
	adds	r2, r0, r3	@ tmp382, tmp624, tmp381
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp690,
	ldrsh	r2, [r2, r7]	@ tmp384, tmp382, tmp690
@ src/soar_voxel.c:367: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r0, r3]	@ tmp392, cam_pivot_dx_Angles
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r2, r2, #2	@ tmp386, tmp384,
@ src/soar_voxel.c:367: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	asrs	r3, r3, #2	@ tmp394, tmp392,
@ src/soar_voxel.c:367: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp396, tmp394,
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r2, #2	@ tmp388, tmp386,
@ src/soar_voxel.c:367: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	subs	r3, r3, r0	@ tmp397, tmp394, tmp396
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	subs	r2, r2, r7	@ tmp389, tmp386, tmp388
@ src/soar_voxel.c:368: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r2, r2, r5	@ newy, tmp389, newy
@ src/soar_voxel.c:367: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r1	@ newx, tmp397, newx
@ src/soar_voxel.c:371: 		BumpScreen(bump_right);
	movs	r0, #3	@,
@ src/soar_voxel.c:369: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_141(D)->sPlayerPosX
@ src/soar_voxel.c:370: 		CurrentProc->sPlayerPosY = newy;
	str	r2, [r4, #48]	@ newy, CurrentProc_141(D)->sPlayerPosY
	b	.L130		@
.L74:
@ src/soar_voxel.c:373: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	ldr	r3, [sp, #4]	@ tmp326, %sfp
	ldrh	r2, [r3, #10]	@ tmp401,
	movs	r3, #48	@ tmp403,
	tst	r2, r3	@ tmp401, tmp403
	bne	.LCB1086	@
	b	.L73	@long jump	@
.LCB1086:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:309: };
	b	.L73		@
.L76:
@ src/soar_voxel.c:393: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	ldr	r3, .L132	@ tmp453,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:393: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	lsls	r3, r3, #30	@ tmp675, gChapterData,
	bpl	.LCB1100	@
	b	.L75	@long jump	@
.LCB1100:
@ src/soar_voxel.c:393: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	movs	r0, #108	@,
	ldr	r3, .L132+4	@ tmp461,
	bl	.L20		@
	b	.L75		@
.L82:
@ src/soar_voxel.c:439: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	lsls	r3, r6, #30	@ tmp680, _87,
	bpl	.L83		@,
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	ldr	r3, [sp, #12]	@ player_terrain_ht, %sfp
	adds	r3, r3, #64	@ player_terrain_ht,
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r2, #1	@ tmp583,
	cmp	r3, r7	@ tmp582, camera_ht
	blt	.L84		@,
	movs	r2, #0	@ tmp583,
.L84:
	movs	r3, #1	@ tmp587,
	cmp	r5, #32	@ _110,
	bgt	.L85		@,
	movs	r3, #0	@ tmp587,
.L85:
	ands	r3, r2	@ tmp591, tmp583
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp595, tmp591,
	beq	.L83		@,
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	adds	r0, r0, #64	@ tmp596,
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r3, #1	@ tmp597,
	cmp	r0, r7	@ tmp596, camera_ht
	blt	.L86		@,
	movs	r3, #0	@ tmp597,
.L86:
@ src/soar_voxel.c:440: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp602, tmp597,
	beq	.L83		@,
@ src/soar_voxel.c:442: 			CurrentProc->sPlayerStepZ -= 1;
	ldr	r3, [r4, #56]	@ CurrentProc_141(D)->sPlayerStepZ, CurrentProc_141(D)->sPlayerStepZ
@ src/soar_voxel.c:441: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r5, r5, #64	@ tmp603,
	str	r5, [r4, #52]	@ tmp603, CurrentProc_141(D)->sPlayerPosZ
@ src/soar_voxel.c:442: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r3, r3, #1	@ tmp604,
	b	.L131		@
.L88:
@ src/soar_voxel.c:456: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	ldr	r2, [sp, #4]	@ _108, %sfp
	cmp	r2, #9	@ _108,
	bgt	.L89		@,
@ src/soar_voxel.c:456: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	movs	r2, #10	@ tmp617,
	str	r2, [r4, #44]	@ tmp617, CurrentProc_141(D)->sPlayerPosX
	b	.L89		@
.L90:
@ src/soar_voxel.c:459: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	ldr	r3, [sp, #8]	@ _109, %sfp
	cmp	r3, #9	@ _109,
	ble	.LCB1164	@
	b	.L67	@long jump	@
.LCB1164:
@ src/soar_voxel.c:459: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	movs	r3, #10	@ tmp620,
	b	.L129		@
.L133:
	.align	2
.L132:
	.word	gChapterData+65
	.word	m4aSongNumStart
	.word	gKeyState
	.word	.LANCHOR0
	.word	.LANCHOR0+2
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
.LC51:
	.ascii	"NewWorldMap\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cam_pivot_dx_Angles, %object
	.size	cam_pivot_dx_Angles, 32
cam_pivot_dx_Angles:
	.short	0
	.short	12
	.short	22
	.short	29
	.short	32
	.short	29
	.short	22
	.short	12
	.short	0
	.short	-12
	.short	-22
	.short	-29
	.short	-32
	.short	-29
	.short	-22
	.short	-12
	.type	cam_pivot_dy_Angles, %object
	.size	cam_pivot_dy_Angles, 32
cam_pivot_dy_Angles:
	.short	-32
	.short	-29
	.short	-22
	.short	-12
	.short	0
	.short	12
	.short	22
	.short	29
	.short	32
	.short	29
	.short	22
	.short	12
	.short	0
	.short	-12
	.short	-22
	.short	-29
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
	.space	16
	.type	Proc_Soaring, %object
	.size	Proc_Soaring, 168
Proc_Soaring:
@ type:
	.short	1
@ sArg:
	.short	0
@ lArg:
	.word	.LC51
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
	.ident	"GCC: (devkitARM release 58) 12.1.0"
	.text
	.code 16
	.align	1
.L20:
	bx	r3
.L43:
	bx	r4
.L54:
	bx	r5
.L24:
	bx	r6
.L50:
	bx	r7
