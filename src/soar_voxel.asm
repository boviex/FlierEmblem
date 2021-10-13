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
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r3, #128	@ tmp122,
@ src/soar_voxel.c:311: static inline int getPtHeight_thumb(int ptx, int pty){
	push	{r4, lr}	@
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r4, r0	@ tmp121, ptx
@ src/soar_voxel.c:311: static inline int getPtHeight_thumb(int ptx, int pty){
	movs	r2, r0	@ ptx, tmp127
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	orrs	r4, r1	@ tmp121, pty
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	movs	r0, #0	@ <retval>,
@ src/soar_voxel.c:312: 	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	lsls	r3, r3, #3	@ tmp122, tmp122,
	cmp	r4, r3	@ tmp121, tmp122
	bcs	.L1		@,
@ src/soar_voxel.c:313: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	ldr	r3, .L4	@ tmp123,
@ src/soar_voxel.c:313: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	lsls	r1, r1, #10	@ tmp124, pty,
@ src/soar_voxel.c:313: 	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	adds	r3, r3, r2	@ tmp125, tmp123, ptx
	ldrb	r0, [r3, r1]	@ <retval>, heightMap
.L1:
@ src/soar_voxel.c:314: };
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
	movs	r2, #1	@ tmp129,
	ldr	r3, .L17	@ tmp128,
@ src/soar_voxel.c:73: {
	push	{r4, lr}	@
@ src/soar_voxel.c:74: 	*(u16*)(0x3007ff8) = 1;
	strh	r2, [r3]	@ tmp129, MEM[(u16 *)50364408B]
@ src/soar_voxel.c:75: 	IncrementGameClock();
	bl	IncrementGameClock		@
@ src/soar_voxel.c:76: 	m4aSoundVSync();
	bl	m4aSoundVSync		@
@ src/soar_voxel.c:77: 	SyncLoOAM();
	ldr	r3, .L17+4	@ tmp131,
	bl	.L19		@
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldr	r3, .L17+8	@ tmp132,
@ src/soar_voxel.c:78: 	if(gGameState.boolMainLoopEnded)
	ldrb	r2, [r3]	@ gGameState, gGameState
	cmp	r2, #0	@ gGameState,
	beq	.L7		@,
@ src/soar_voxel.c:80: 		gGameState.boolMainLoopEnded = 0;
	movs	r2, #0	@ tmp135,
	strb	r2, [r3]	@ tmp135, gGameState.boolMainLoopEnded
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r3, .L17+12	@ tmp137,
@ src/soar_voxel.c:81: 		ExecProc(*(int*)(0x2026A70));
	ldr	r0, [r3]	@, MEM[(int *)33712752B]
	ldr	r3, .L17+16	@ tmp138,
	bl	.L19		@
@ src/soar_voxel.c:82: 		SyncLCDControl();
	ldr	r3, .L17+20	@ tmp139,
	bl	.L19		@
@ src/soar_voxel.c:83: 		SyncBgAndPals();
	ldr	r3, .L17+24	@ tmp140,
	bl	.L19		@
@ src/soar_voxel.c:84: 		SyncRegisteredTiles();
	ldr	r3, .L17+28	@ tmp141,
	bl	.L19		@
@ src/soar_voxel.c:85: 		SyncHiOAM();
	ldr	r3, .L17+32	@ tmp142,
	bl	.L19		@
.L7:
@ src/soar_voxel.c:87: 	m4aSoundMain();
	bl	m4aSoundMain		@
	movs	r2, #63	@ tmp147,
@ src/soar_voxel.c:89: 	int animClock = *(u8*)(0x3000014) & 0x3F;
	ldr	r3, .L17+36	@ tmp143,
	ldrb	r3, [r3]	@ MEM[(u8 *)50331668B], MEM[(u8 *)50331668B]
	ands	r3, r2	@ _1, tmp147
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	movs	r1, r3	@ tmp149, _1
	subs	r1, r1, #16	@ tmp149,
	ldr	r2, .L17+40	@ tmp172,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	cmp	r1, #32	@ tmp149,
	bls	.L8		@,
@ src/soar_voxel.c:90: 	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	ldr	r1, [r2]	@ _8, MEM[(volatile vu32 *)50344144B]
	subs	r1, r1, #48	@ _9,
.L16:
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	str	r1, [r2]	@ _12,
.L9:
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	cmp	r3, #32	@ _1,
	bne	.L10		@,
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	ldr	r3, .L17+44	@ tmp156,
	adds	r3, r3, #65	@ tmp159,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	lsls	r3, r3, #30	@ tmp173, gChapterData,
	bmi	.L6		@,
@ src/soar_voxel.c:93: 	if ((animClock == 0x20) && (gChapterData.muteSfxOption == 0)) m4aSongNumStart(0xa6);
	movs	r0, #166	@,
	ldr	r3, .L17+48	@ tmp167,
	bl	.L19		@
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
	ldr	r1, .L17+52	@ tmp153,
	cmp	r0, r1	@ _10, tmp153
	bhi	.L9		@,
@ src/soar_voxel.c:91: 	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;
	ldr	r1, [r2]	@ _11, MEM[(volatile vu32 *)50344144B]
	adds	r1, r1, #48	@ _12,
	b	.L16		@
.L10:
@ src/soar_voxel.c:96: 	if (animClock == 0) //resets once per 63 frames so close enough
	cmp	r3, #0	@ _1,
	bne	.L6		@,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r2, .L17+56	@ tmp168,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r1, .L17+60	@ tmp169,
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	ldr	r0, [r2]	@ _15, MEM[(int *)33816568B]
@ src/soar_voxel.c:98: 		FPS_CURRENT = FPS_COUNTER;
	str	r0, [r1]	@ _15, MEM[(int *)33816572B]
@ src/soar_voxel.c:99: 		FPS_COUNTER = 0;
	str	r3, [r2]	@ _1, MEM[(int *)33816568B]
@ src/soar_voxel.c:102: };
	b	.L6		@
.L18:
	.align	2
.L17:
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
	.word	gChapterData
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
	ldr	r6, .L21	@ tmp127,
@ src/soar_voxel.c:253: };
	@ sp needed	@
@ src/soar_voxel.c:224: void MoveLord(SoarProc* CurrentProc){
	movs	r5, r0	@ CurrentProc, tmp141
@ src/soar_voxel.c:226: 	VBlankIntrWait();
	bl	.L23		@
@ src/soar_voxel.c:227: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r3, .L21+4	@ tmp129,
	ldr	r0, .L21+8	@,
	bl	.L19		@
	movs	r4, r0	@ wmproc, tmp142
@ src/soar_voxel.c:228: 	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	movs	r1, #23	@,
	ldr	r3, .L21+12	@ tmp130,
	bl	.L19		@
@ src/soar_voxel.c:229: 	VBlankIntrWait();
	bl	.L23		@
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
	ldr	r2, .L21+16	@ tmp134,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	lsls	r4, r4, #5	@ _1, location,
@ src/soar_voxel.c:241: 	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	ldrh	r2, [r4, r2]	@ cursorX, *_3
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldr	r3, .L21+20	@ tmp133,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	ldr	r1, .L21+24	@ tmp136,
@ src/soar_voxel.c:242: 	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	ldrh	r3, [r4, r3]	@ cursorY, *_6
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	lsls	r2, r2, #8	@ _8, cursorX,
@ src/soar_voxel.c:243: 	WM_CURSOR[0] = cursorX<<8;
	str	r2, [r1]	@ _8, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	ldr	r2, .L21+28	@ tmp137,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	lsls	r3, r3, #8	@ _9, cursorY,
@ src/soar_voxel.c:244: 	WM_CURSOR[1] = cursorY<<8;
	str	r3, [r2]	@ _9, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:246: 	g_LCDIOBuffer = DISPCNT_MODE_0
	movs	r2, #248	@ tmp139,
	ldr	r3, .L21+32	@ tmp138,
	lsls	r2, r2, #5	@ tmp139, tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:253: };
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L22:
	.align	2
.L21:
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
@ src/soar_voxel.c:302: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	movs	r3, #0	@ tmp114,
@ src/soar_voxel.c:309: };
	@ sp needed	@
@ src/soar_voxel.c:303: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r1, #244	@ tmp117,
@ src/soar_voxel.c:302: 			g_REG_BG2PA=0x00;	//rotate and stretch	
	ldr	r2, .L25	@ tmp113,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:303: 			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r2, .L25+4	@ tmp116,
	rsbs	r1, r1, #0	@ tmp117, tmp117
	strh	r1, [r2]	@ tmp117, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:304: 			g_REG_BG2PC=0x85; //
	ldr	r2, .L25+8	@ tmp119,
	adds	r1, r1, #122	@ tmp120,
	adds	r1, r1, #255	@ tmp120,
	strh	r1, [r2]	@ tmp120, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:305: 			g_REG_BG2PD=0x00;	//
	ldr	r2, .L25+12	@ tmp122,
	strh	r3, [r2]	@ tmp114, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:306: 			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L25+16	@ tmp125,
	ldr	r2, .L25+20	@ tmp126,
	str	r2, [r3]	@ tmp126, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:307: 			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp128,
	ldr	r3, .L25+24	@ tmp127,
	lsls	r2, r2, #1	@ tmp128, tmp128,
	str	r2, [r3]	@ tmp128, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:309: };
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r2, .L28	@ tmp120,
	ldrh	r1, [r2]	@ MEM[(volatile vu16 *)50344064B], MEM[(volatile vu16 *)50344064B]
	eors	r3, r1	@ _4, MEM[(volatile vu16 *)50344064B]
	strh	r3, [r2]	@ _4, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:59: }
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L31	@ tmp117,
@ src/soar_voxel.c:66: };
	@ sp needed	@
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ldr	r0, .L31+4	@,
	bl	.L19		@
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	ldr	r3, .L31+8	@ tmp118,
@ src/soar_voxel.c:62: 	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	movs	r1, r0	@ wmproc, tmp121
@ src/soar_voxel.c:63: 	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	movs	r0, r3	@ tmp118, tmp118
	ldr	r3, .L31+12	@ tmp119,
	bl	.L19		@
@ src/soar_voxel.c:66: };
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L32:
	.align	2
.L31:
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
	ldr	r1, .L35	@,
@ src/soar_voxel.c:174: };
	@ sp needed	@
@ src/soar_voxel.c:165: 	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	ldr	r0, .L35+4	@ tmp114,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:166: 	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	ldr	r1, .L35+8	@,
	ldr	r0, .L35+12	@ tmp116,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:167: 	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	ldr	r1, .L35+16	@,
	ldr	r0, .L35+20	@ tmp118,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:168: 	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	ldr	r1, .L35+24	@,
	ldr	r0, .L35+28	@ tmp120,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:169: 	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	ldr	r1, .L35+32	@,
	ldr	r0, .L35+36	@ tmp122,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:170: 	LZ77UnCompVram(&lensFlareSprite, &tile_mem[5][193]);
	ldr	r1, .L35+40	@,
	ldr	r0, .L35+44	@ tmp124,
	bl	LZ77UnCompVram		@
@ src/soar_voxel.c:171: 	LoadMapSpritePalettes(); //puts in palette 0xc
	bl	LoadMapSpritePalettes		@
@ src/soar_voxel.c:172: 	ApplyPalette(&minimapPal, 0x12);
	movs	r1, #144	@ tmp131,
	ldr	r4, .L35+48	@ tmp127,
	movs	r2, #32	@,
	ldr	r0, .L35+52	@ tmp126,
	lsls	r1, r1, #2	@, tmp131,
	bl	.L37		@
@ src/soar_voxel.c:173: 	ApplyPalette(&lensFlarePal, 0x13);
	movs	r1, #152	@ tmp132,
	movs	r2, #32	@,
	ldr	r0, .L35+56	@ tmp129,
	lsls	r1, r1, #2	@, tmp132,
	bl	.L37		@
@ src/soar_voxel.c:174: };
	pop	{r4}
	pop	{r0}
	bx	r0
.L36:
	.align	2
.L35:
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	movs	r1, #240	@,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r3, .L42	@ tmp129,
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	movs	r7, r0	@ CurrentProc, tmp216
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	ldr	r0, [r3]	@ _1, MEM[(volatile int *)50352776B]
@ src/soar_voxel.c:106: void SetUpNewWMGraphics(SoarProc* CurrentProc){
	sub	sp, sp, #28	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	lsls	r0, r0, #10	@ tmp130, _1,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	movs	r1, #240	@,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	asrs	r0, r0, #8	@ tmp135, tmp217,
@ src/soar_voxel.c:108: 	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	str	r0, [r7, #44]	@ tmp135, CurrentProc_15(D)->sPlayerPosX
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	ldr	r3, .L42+4	@ tmp136,
	ldr	r0, [r3]	@ _5, MEM[(volatile int *)50352780B]
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r1, r1, #1	@,,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	lsls	r0, r0, #10	@ tmp137, _5,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	bl	__aeabi_idiv		@
@ src/soar_voxel.c:110: 	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	movs	r3, #96	@ tmp146,
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
	subs	r3, r3, #90	@ tmp148,
	str	r3, [r7, #60]	@ tmp148, CurrentProc_15(D)->sPlayerYaw
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	asrs	r0, r0, #8	@ tmp142, tmp218,
@ src/soar_voxel.c:122: 	    CurrentProc->vid_page = (u16*)(0x600A000);
	ldr	r3, .L42+8	@ tmp149,
@ src/soar_voxel.c:109: 	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	adds	r0, r0, #170	@ tmp143,
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
	ldr	r3, .L42+12	@ tmp163,
	ldr	r0, .L42+16	@ tmp162,
	ldr	r1, .L42+20	@,
	subs	r2, r2, #255	@,
	str	r3, [sp, #12]	@ tmp163, %sfp
	bl	.L19		@
@ src/soar_voxel.c:130: 	VBlankIntrWait();
	ldr	r3, .L42+24	@ tmp164,
	bl	.L19		@
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	ldr	r3, .L42+28	@ tmp165,
	ldr	r2, .L42+32	@ tmp166,
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r1, #4	@,
@ src/soar_voxel.c:132: 	g_LCDIOBuffer = DISPCNT_MODE_5 
	strh	r2, [r3]	@ tmp166, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:140: 	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	movs	r0, #3	@,
	movs	r3, r4	@, tmp145
	movs	r2, #16	@,
	ldr	r7, .L42+36	@ tmp168,
	bl	.L44		@
@ src/soar_voxel.c:141: 	SetColorEffectsFirstTarget(0,0,0,0,0);
	movs	r1, r4	@, tmp145
	movs	r2, r4	@, tmp145
	movs	r3, r4	@, tmp145
	movs	r0, r4	@, tmp145
	str	r4, [sp]	@ tmp145,
	ldr	r7, .L42+40	@ tmp170,
	bl	.L44		@
@ src/soar_voxel.c:142: 	SetColorEffectBackdropFirstTarget(1);
	movs	r0, r5	@, tmp144
	ldr	r3, .L42+44	@ tmp171,
	bl	.L19		@
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	movs	r2, #244	@ tmp176,
@ src/soar_voxel.c:147: 	g_REG_BG2PA=0x00;	//rotate and stretch
	ldr	r3, .L42+48	@ tmp172,
	strh	r4, [r3]	@ tmp145, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:148: 	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	ldr	r3, .L42+52	@ tmp175,
	rsbs	r2, r2, #0	@ tmp176, tmp176
	strh	r2, [r3]	@ tmp176, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:149: 	g_REG_BG2PC=0x85; //
	ldr	r3, .L42+56	@ tmp178,
	adds	r2, r2, #122	@ tmp179,
	adds	r2, r2, #255	@ tmp179,
	strh	r2, [r3]	@ tmp179, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	ldr	r3, .L42+60	@ tmp181,
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r2, .L42+64	@ tmp185,
@ src/soar_voxel.c:150: 	g_REG_BG2PD=0x00;	//
	strh	r4, [r3]	@ tmp145, MEM[(volatile vu16 *)50344142B]
@ src/soar_voxel.c:151: 	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	ldr	r3, .L42+68	@ tmp184,
	str	r2, [r3]	@ tmp185, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:152: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	movs	r2, #192	@ tmp187,
	ldr	r3, .L42+72	@ tmp186,
	lsls	r2, r2, #1	@ tmp187, tmp187,
@ src/soar_voxel.c:154: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
@ src/soar_voxel.c:152: 	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	str	r2, [r3]	@ tmp187, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:154: 	Sound_FadeSongOut(10);
	ldr	r3, .L42+76	@ tmp188,
	bl	.L19		@
@ src/soar_voxel.c:155: 	LoadSprite();
	bl	LoadSprite		@
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	ldr	r3, .L42+80	@ tmp189,
	adds	r3, r3, #65	@ tmp192,
	ldrb	r3, [r3]	@ _10, gChapterData
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	movs	r0, #88	@,
@ src/soar_voxel.c:156: 	if (gChapterData.unk41_1 == 0) m4aSongNumStart(0x58); //unused slot //if muted option is false
	tst	r3, r5	@ _10, tmp144
	beq	.L41		@,
@ src/soar_voxel.c:157: 	else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x4e); //windy (play if sfx but no music)
	tst	r3, r6	@ _10, tmp147
	bne	.L40		@,
@ src/soar_voxel.c:157: 	else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x4e); //windy (play if sfx but no music)
	movs	r0, #78	@,
.L41:
	ldr	r3, .L42+84	@ tmp204,
	bl	.L19		@
.L40:
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	movs	r2, #88	@ tmp206,
	ldr	r3, .L42+88	@ tmp205,
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r1, #192	@,
@ src/soar_voxel.c:158: 	gCurrentMusic = 0x58;
	strh	r2, [r3]	@ tmp206, MEM[(volatile u16 *)33705568B]
@ src/soar_voxel.c:159: 	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black
	movs	r3, #0	@ tmp208,
	ldr	r2, .L42+92	@,
	str	r3, [sp, #20]	@ tmp208, tmp
	lsls	r1, r1, #19	@,,
	ldr	r3, [sp, #12]	@ tmp163, %sfp
	add	r0, sp, #20	@,,
	bl	.L19		@
@ src/soar_voxel.c:161: 	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
	ldr	r0, .L42+96	@ tmp213,
	ldr	r3, .L42+100	@ tmp214,
	bl	.L19		@
@ src/soar_voxel.c:162: };
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L43:
	.align	2
.L42:
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
	.word	gChapterData
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
	movs	r4, r0	@ CurrentProc, tmp129
@ src/soar_voxel.c:275: };
	@ sp needed	@
@ src/soar_voxel.c:256: 	SetInterrupt_LCDVBlank(OnVBlankMain);
	ldr	r0, .L46	@ tmp116,
	ldr	r3, .L46+4	@ tmp117,
	bl	.L19		@
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	ldr	r5, .L46+8	@ tmp118,
@ src/soar_voxel.c:257: 	int vid_page = CurrentProc->vid_page;
	ldr	r6, [r4, #64]	@ _1, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:258: 	VBlankIntrWait();
	bl	.L48		@
@ src/soar_voxel.c:259:   	CpuFastFill(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
	movs	r3, #0	@ tmp119,
	movs	r1, r6	@, _1
	ldr	r2, .L46+12	@,
	str	r3, [sp, #4]	@ tmp119, tmp
	add	r0, sp, #4	@,,
	ldr	r3, .L46+16	@ tmp122,
	bl	.L19		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	movs	r0, r6	@, _1
	bl	vid_flip		@
@ src/soar_voxel.c:260:   	CurrentProc->vid_page = vid_flip(vid_page);
	str	r0, [r4, #64]	@ tmp130, CurrentProc_5(D)->vid_page
@ src/soar_voxel.c:262:   	VBlankIntrWait();
	bl	.L48		@
@ src/soar_voxel.c:263: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	movs	r2, #5	@ tmp125,
	ldr	r3, .L46+20	@ tmp124,
@ src/soar_voxel.c:272: 	BreakProcLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
@ src/soar_voxel.c:263: 	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	strh	r2, [r3]	@ tmp125, MEM[(volatile vu16 *)50344064B]
@ src/soar_voxel.c:272: 	BreakProcLoop(CurrentProc);
	ldr	r3, .L46+24	@ tmp127,
	bl	.L19		@
@ src/soar_voxel.c:274: 	Sound_FadeSongOut(10);
	movs	r0, #10	@,
	ldr	r3, .L46+28	@ tmp128,
	bl	.L19		@
@ src/soar_voxel.c:275: };
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L47:
	.align	2
.L46:
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
	.fpu softvfp
	.type	BumpScreen, %function
BumpScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ src/soar_voxel.c:278: 	switch (direction){
	cmp	r0, #2	@ direction,
	beq	.L50		@,
	bgt	.L51		@,
	cmp	r0, #1	@ direction,
	bls	.L49		@,
.L52:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:309: };
	b	.L49		@
.L51:
@ src/soar_voxel.c:278: 	switch (direction){
	cmp	r0, #3	@ direction,
	bne	.L52		@,
@ src/soar_voxel.c:294: 			g_REG_BG2Y=0x0500;	//offset horizontal
	movs	r2, #160	@ tmp132,
	ldr	r3, .L56	@ tmp131,
	lsls	r2, r2, #3	@ tmp132, tmp132,
	str	r2, [r3]	@ tmp132, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:295: 			g_REG_BG2X=0x9c40;
	ldr	r3, .L56+4	@ tmp133,
	ldr	r2, .L56+8	@ tmp134,
	str	r2, [r3]	@ tmp134, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:296: 			g_REG_BG2PA=0xFFF2; 
	movs	r2, #14	@ tmp136,
	ldr	r3, .L56+12	@ tmp135,
	rsbs	r2, r2, #0	@ tmp136, tmp136
	strh	r2, [r3]	@ tmp136, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:297: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L56+16	@ tmp138,
	subs	r2, r2, #214	@ tmp139,
	strh	r2, [r3]	@ tmp139, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:298: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L56+20	@ tmp141,
	adds	r2, r2, #101	@ tmp142,
	adds	r2, r2, #255	@ tmp142,
	strh	r2, [r3]	@ tmp142, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:299: 			g_REG_BG2PD=0xFFF8;
	ldr	r3, .L56+24	@ tmp144,
	subs	r2, r2, #136	@ tmp145,
	b	.L55		@
.L50:
@ src/soar_voxel.c:286: 			g_REG_BG2Y=0x180;	//offset horizontal
	movs	r2, #192	@ tmp116,
	ldr	r3, .L56	@ tmp115,
	lsls	r2, r2, #1	@ tmp116, tmp116,
	str	r2, [r3]	@ tmp116, MEM[(volatile vu32 *)50344148B]
@ src/soar_voxel.c:287: 			g_REG_BG2X=0x9280;
	ldr	r3, .L56+4	@ tmp117,
	ldr	r2, .L56+28	@ tmp118,
	str	r2, [r3]	@ tmp118, MEM[(volatile vu32 *)50344144B]
@ src/soar_voxel.c:288: 			g_REG_BG2PA=0x000E; 
	movs	r2, #14	@ tmp120,
	ldr	r3, .L56+12	@ tmp119,
	strh	r2, [r3]	@ tmp120, MEM[(volatile vu16 *)50344136B]
@ src/soar_voxel.c:289: 			g_REG_BG2PB=0xFF1C;
	ldr	r3, .L56+16	@ tmp122,
	subs	r2, r2, #242	@ tmp123,
	strh	r2, [r3]	@ tmp123, MEM[(volatile vu16 *)50344138B]
@ src/soar_voxel.c:290: 			g_REG_BG2PC=0x0080;
	ldr	r3, .L56+20	@ tmp125,
	adds	r2, r2, #101	@ tmp126,
	adds	r2, r2, #255	@ tmp126,
	strh	r2, [r3]	@ tmp126, MEM[(volatile vu16 *)50344140B]
@ src/soar_voxel.c:291: 			g_REG_BG2PD=0x0008;
	ldr	r3, .L56+24	@ tmp128,
	subs	r2, r2, #120	@ tmp129,
.L55:
@ src/soar_voxel.c:299: 			g_REG_BG2PD=0xFFF8;
	strh	r2, [r3]	@ tmp145,
.L49:
@ src/soar_voxel.c:309: };
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L57:
	.align	2
.L56:
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
@ src/soar_voxel.c:319: 	if (CurrentProc->oceanClock & 1)
	movs	r1, r0	@ tmp273, CurrentProc
@ src/soar_voxel.c:317: {
	push	{r4, r5, r6, r7, lr}	@
@ src/soar_voxel.c:319: 	if (CurrentProc->oceanClock & 1)
	adds	r1, r1, #70	@ tmp273,
	ldrb	r2, [r1]	@ _1,
@ src/soar_voxel.c:317: {
	movs	r4, r0	@ CurrentProc, tmp716
	sub	sp, sp, #20	@,,
@ src/soar_voxel.c:319: 	if (CurrentProc->oceanClock & 1)
	lsls	r3, r2, #31	@ tmp767, _1,
	bpl	.L59		@,
@ src/soar_voxel.c:322: 		else CurrentProc->oceanClock -= 1;
	subs	r3, r2, #1	@ tmp283, _1,
	lsls	r3, r3, #24	@ _294, tmp283,
	lsrs	r3, r3, #24	@ _294, _294,
@ src/soar_voxel.c:321: 		if (CurrentProc->oceanClock < (0x41-4))	CurrentProc->oceanClock+=4;
	cmp	r2, #60	@ _1,
	bhi	.L61		@,
@ src/soar_voxel.c:321: 		if (CurrentProc->oceanClock < (0x41-4))	CurrentProc->oceanClock+=4;
	adds	r2, r2, #4	@ tmp281,
.L140:
@ src/soar_voxel.c:326: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	lsls	r3, r2, #24	@ _294, tmp287,
	lsrs	r3, r3, #24	@ _294, _294,
.L61:
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r0, #6	@ tmp308,
	movs	r6, #0	@ tmp310,
@ src/soar_voxel.c:322: 		else CurrentProc->oceanClock -= 1;
	strb	r3, [r1]	@ _294, CurrentProc_160(D)->oceanClock
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	movs	r7, r4	@ tmp301, CurrentProc
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	ldr	r5, [r4, #56]	@ _7, CurrentProc_160(D)->sPlayerStepZ
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsrs	r2, r5, #31	@ tmp309, _7,
	cmp	r0, r5	@ tmp308, _7
	adcs	r2, r2, r6	@ tmp307, tmp309, tmp310
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	adds	r7, r7, #69	@ tmp301,
	ldrb	r3, [r7]	@ *CurrentProc_160(D), *CurrentProc_160(D)
	lsls	r1, r3, #29	@ tmp305, *CurrentProc_160(D),
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	lsrs	r1, r1, #31	@ tmp315, tmp305,
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	str	r7, [sp, #4]	@ tmp301, %sfp
@ src/soar_voxel.c:330: 	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	tst	r1, r2	@ tmp315, tmp307
	beq	.L63		@,
@ src/soar_voxel.c:332: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r6, [r4, #52]	@ _9, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:332: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_160(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_160(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:332: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	movs	r3, r6	@ tmp316, _9
	subs	r3, r3, #31	@ tmp316,
@ src/soar_voxel.c:332: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp316, tmp717
	bgt	.L64		@,
@ src/soar_voxel.c:334: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r6, r6, #32	@ tmp317,
@ src/soar_voxel.c:335: 			CurrentProc->sPlayerStepZ += 1;
	adds	r5, r5, #1	@ tmp318,
@ src/soar_voxel.c:334: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ tmp317, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:335: 			CurrentProc->sPlayerStepZ += 1;
	str	r5, [r4, #56]	@ tmp318, CurrentProc_160(D)->sPlayerStepZ
.L64:
@ src/soar_voxel.c:337: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	ldr	r3, [r4, #52]	@ CurrentProc_160(D)->sPlayerPosZ, CurrentProc_160(D)->sPlayerPosZ
	adds	r3, r3, #32	@ tmp319,
	str	r3, [r4, #52]	@ tmp319, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:338: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_160(D)->sPlayerStepZ, CurrentProc_160(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp321,
	str	r3, [r4, #56]	@ tmp321, CurrentProc_160(D)->sPlayerStepZ
.L143:
@ src/soar_voxel.c:355: 			return 1;
	movs	r0, #1	@ <retval>,
	b	.L58		@
.L59:
@ src/soar_voxel.c:327: 		else CurrentProc->oceanClock += 1;
	adds	r3, r2, #1	@ tmp289, _1,
	lsls	r3, r3, #24	@ _294, tmp289,
	lsrs	r3, r3, #24	@ _294, _294,
@ src/soar_voxel.c:326: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	cmp	r2, #4	@ _1,
	bls	.L61		@,
@ src/soar_voxel.c:326: 		if (CurrentProc->oceanClock > 4) CurrentProc->oceanClock-=4;
	subs	r2, r2, #4	@ tmp287,
	b	.L140		@
.L63:
@ src/soar_voxel.c:341: 	else CurrentProc->takeOffTransition = 0;
	movs	r2, #4	@ tmp331,
	bics	r3, r2	@ tmp330, tmp331
	ldr	r2, [sp, #4]	@ tmp301, %sfp
	strb	r3, [r2]	@ tmp330, CurrentProc_160(D)->takeOffTransition
@ src/soar_voxel.c:343: 	if (CurrentProc->landingTransition)
	lsls	r3, r3, #28	@ tmp768, tmp330,
	bpl	.L66		@,
@ src/soar_voxel.c:345: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r6, [r4, #52]	@ _22, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:345: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	ldr	r1, [r4, #76]	@, CurrentProc_160(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_160(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:345: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	movs	r3, r6	@ tmp343, _22
	subs	r3, r3, #63	@ tmp343,
@ src/soar_voxel.c:345: 		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (2*CAMERA_Z_STEP)))
	cmp	r3, r0	@ tmp343, tmp718
	bgt	.L67		@,
@ src/soar_voxel.c:347: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	ldr	r3, .L144	@ tmp344,
	adds	r3, r3, #65	@ tmp347,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:347: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	lsls	r3, r3, #30	@ tmp769, gChapterData,
	bmi	.L68		@,
@ src/soar_voxel.c:347: 			if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x73); //phase transition
	movs	r0, #115	@,
	ldr	r3, .L144+4	@ tmp355,
	bl	.L19		@
.L68:
@ src/soar_voxel.c:348: 			EndLoop(CurrentProc);
	movs	r0, r4	@, CurrentProc
	bl	EndLoop		@
@ src/soar_voxel.c:349: 			return 0;
	movs	r0, #0	@ <retval>,
.L58:
@ src/soar_voxel.c:470: };
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L67:
@ src/soar_voxel.c:353: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r6, r6, #32	@ tmp356,
@ src/soar_voxel.c:354: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r5, r5, #1	@ tmp357,
@ src/soar_voxel.c:353: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	str	r6, [r4, #52]	@ tmp356, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:354: 			CurrentProc->sPlayerStepZ -= 1;
	str	r5, [r4, #56]	@ tmp357, CurrentProc_160(D)->sPlayerStepZ
	b	.L143		@
.L66:
@ src/soar_voxel.c:362: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #44]	@ pretmp_240, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:361: 	if (gKeyState.heldKeys & DPAD_LEFT){
	ldr	r6, .L144+8	@ tmp358,
	ldrh	r0, [r6, #4]	@ _31,
@ src/soar_voxel.c:362: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	str	r3, [sp, #8]	@ pretmp_240, %sfp
@ src/soar_voxel.c:362: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r3, [r4, #60]	@ pretmp_239, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:362: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r5, .L144+12	@ tmp359,
	lsls	r1, r3, #1	@ tmp360, pretmp_239,
	ldrsh	r2, [r1, r5]	@ _238, cam_pivot_dx_Angles
@ src/soar_voxel.c:363: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r7, [r4, #48]	@ pretmp_268, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:363: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r1, r5, r1	@ tmp363, tmp359, tmp360
@ src/soar_voxel.c:363: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	mov	ip, r7	@ pretmp_268, pretmp_268
@ src/soar_voxel.c:363: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r7, #32	@ tmp782,
	ldrsh	r1, [r1, r7]	@ _236, tmp363, tmp782
@ src/soar_voxel.c:361: 	if (gKeyState.heldKeys & DPAD_LEFT){
	lsls	r7, r0, #26	@ tmp770, _31,
	bmi	.LCB863	@
	b	.L69	@long jump	@
.LCB863:
@ src/soar_voxel.c:362: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [sp, #8]	@ pretmp_240, %sfp
	adds	r2, r2, r0	@ newx, _238, pretmp_240
@ src/soar_voxel.c:364: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	movs	r0, #15	@ tmp371,
@ src/soar_voxel.c:364: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	subs	r3, r3, #1	@ tmp370,
@ src/soar_voxel.c:364: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	ands	r3, r0	@ _40, tmp371
@ src/soar_voxel.c:364: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _40, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:366: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp373, _40,
	adds	r0, r5, r3	@ tmp374, tmp359, tmp373
@ src/soar_voxel.c:366: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp783,
	ldrsh	r0, [r0, r7]	@ tmp376, tmp374, tmp783
	asrs	r0, r0, #2	@ tmp378, tmp376,
@ src/soar_voxel.c:366: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r0, #2	@ tmp380, tmp378,
	subs	r0, r0, r7	@ tmp381, tmp378, tmp380
@ src/soar_voxel.c:363: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, ip	@ newy, pretmp_268
@ src/soar_voxel.c:366: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r0, r1	@ newy, tmp381, newy
@ src/soar_voxel.c:365: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r5]	@ tmp384, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp386, tmp384,
@ src/soar_voxel.c:365: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp388, tmp386,
	subs	r3, r3, r0	@ tmp389, tmp386, tmp388
@ src/soar_voxel.c:369: 		BumpScreen(bump_left);
	movs	r0, #2	@,
@ src/soar_voxel.c:365: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp389, newx
@ src/soar_voxel.c:367: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:368: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_160(D)->sPlayerPosY
.L141:
@ src/soar_voxel.c:379: 		BumpScreen(bump_right);
	bl	BumpScreen		@
.L70:
@ src/soar_voxel.c:390: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r3, [r4, #60]	@ _68, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:390: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	adds	r2, r5, #2	@ tmp426, tmp359,
	lsls	r3, r3, #1	@ tmp427, _68,
	adds	r2, r2, r3	@ tmp428, tmp426, tmp427
	movs	r1, #62	@ tmp430,
	ldrsh	r1, [r2, r1]	@ tmp430, tmp428, tmp430
@ src/soar_voxel.c:390: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	ldr	r2, [r4, #44]	@ CurrentProc_160(D)->sPlayerPosX, CurrentProc_160(D)->sPlayerPosX
	adds	r1, r1, r2	@ _71, tmp430, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:391: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	movs	r2, r5	@ tmp435, tmp359
	adds	r2, r2, #96	@ tmp435,
	ldrsh	r2, [r3, r2]	@ tmp437, cam_dy_Angles
@ src/soar_voxel.c:391: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ CurrentProc_160(D)->sPlayerPosY, CurrentProc_160(D)->sPlayerPosY
	adds	r2, r2, r0	@ _75, tmp437, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:392: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	ldrsh	r0, [r5, r3]	@ tmp441, cam_pivot_dx_Angles
@ src/soar_voxel.c:390: 	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	str	r1, [r4, #44]	@ _71, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:393: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r5, r5, r3	@ tmp445, tmp359, tmp427
@ src/soar_voxel.c:392: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r1, r0, r1	@ tmp442, tmp441, _71
@ src/soar_voxel.c:392: 	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r1, [r4, #72]	@ tmp442, CurrentProc_160(D)->sFocusPtX
@ src/soar_voxel.c:393: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	movs	r1, #32	@ tmp790,
	ldrsh	r3, [r5, r1]	@ tmp447, tmp445, tmp790
@ src/soar_voxel.c:393: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	adds	r3, r3, r2	@ tmp448, tmp447, _75
@ src/soar_voxel.c:393: 	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	str	r3, [r4, #76]	@ tmp448, CurrentProc_160(D)->sFocusPtY
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & START_BUTTON){
	movs	r3, #8	@ tmp453,
@ src/soar_voxel.c:391: 	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r2, [r4, #48]	@ _75, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:396: 	if (gKeyState.pressedKeys & START_BUTTON){
	ldrh	r2, [r6, #8]	@ tmp451,
	tst	r2, r3	@ tmp451, tmp453
	beq	.L72		@,
@ src/soar_voxel.c:397: 		if (CurrentProc->location)
	ldr	r2, [r4, #80]	@ CurrentProc_160(D)->location, CurrentProc_160(D)->location
	cmp	r2, #0	@ CurrentProc_160(D)->location,
	bne	.LCB923	@
	b	.L73	@long jump	@
.LCB923:
@ src/soar_voxel.c:399: 			CurrentProc->landingTransition = TRUE;
	movs	r2, r4	@ tmp460, CurrentProc
	adds	r2, r2, #69	@ tmp460,
	ldrb	r1, [r2]	@ CurrentProc_160(D)->landingTransition, CurrentProc_160(D)->landingTransition
	orrs	r3, r1	@ tmp465, CurrentProc_160(D)->landingTransition
	strb	r3, [r2]	@ tmp465, CurrentProc_160(D)->landingTransition
.L72:
@ src/soar_voxel.c:404: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	ldrh	r1, [r6, #8]	@ _86,
@ src/soar_voxel.c:404: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	lsls	r3, r1, #29	@ tmp773, _86,
	bpl	.L74		@,
@ src/soar_voxel.c:404: 	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;
	movs	r2, #1	@ tmp498,
	ldr	r3, [sp, #4]	@ tmp301, %sfp
	ldrb	r3, [r3]	@ *CurrentProc_160(D), *CurrentProc_160(D)
	lsls	r0, r3, #30	@ tmp496, *CurrentProc_160(D),
	lsrs	r0, r0, #31	@ tmp495, tmp496,
	bics	r2, r0	@ tmp505, tmp495
	movs	r0, #2	@ tmp512,
	lsls	r2, r2, #1	@ tmp508, tmp505,
	bics	r3, r0	@ tmp511, tmp512
	orrs	r3, r2	@ tmp515, tmp508
	ldr	r2, [sp, #4]	@ tmp301, %sfp
	strb	r3, [r2]	@ tmp515, CurrentProc_160(D)->ShowFPS
.L74:
	movs	r2, r4	@ tmp668, CurrentProc
	adds	r2, r2, #68	@ tmp668,
@ src/soar_voxel.c:406: 	if ((gKeyState.pressedKeys & L_BUTTON) && (CurrentProc->sunTransition==0)){
	lsls	r3, r1, #22	@ tmp774, _86,
	bpl	.L75		@,
@ src/soar_voxel.c:406: 	if ((gKeyState.pressedKeys & L_BUTTON) && (CurrentProc->sunTransition==0)){
	movs	r3, #0	@ tmp525,
	ldrsb	r3, [r2, r3]	@ tmp525,
	cmp	r3, #0	@ tmp525,
	bne	.L75		@,
@ src/soar_voxel.c:407: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	ldr	r0, [r4, #84]	@ _90, CurrentProc_160(D)->sunsetVal
@ src/soar_voxel.c:408: 		else CurrentProc->sunTransition = 1;
	adds	r3, r3, #1	@ cstore_264,
@ src/soar_voxel.c:407: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	cmp	r0, #0	@ _90,
	beq	.L76		@,
@ src/soar_voxel.c:407: 		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
	subs	r3, r3, #2	@ cstore_264,
.L76:
	strb	r3, [r2]	@ cstore_264, CurrentProc_160(D)->sunTransition
@ src/soar_voxel.c:409: 		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r0	@ tmp530, cstore_264, _90
	str	r3, [r4, #84]	@ tmp530, CurrentProc_160(D)->sunsetVal
.L75:
@ src/soar_voxel.c:412: 	if (CurrentProc->sunTransition!=0)
	movs	r3, #0	@ _94,
	ldrsb	r3, [r2, r3]	@ _94,* _94
@ src/soar_voxel.c:412: 	if (CurrentProc->sunTransition!=0)
	cmp	r3, #0	@ _94,
	beq	.L77		@,
@ src/soar_voxel.c:414: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	ldr	r0, [r4, #84]	@ _95, CurrentProc_160(D)->sunsetVal
@ src/soar_voxel.c:414: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	subs	r5, r0, #1	@ tmp534, _95,
@ src/soar_voxel.c:414: 		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
	cmp	r5, #6	@ tmp534,
	bls	.LCB984	@
	b	.L78	@long jump	@
.LCB984:
@ src/soar_voxel.c:416: 			CurrentProc->sunsetVal += CurrentProc->sunTransition;
	adds	r3, r3, r0	@ tmp535, _94, _95
	str	r3, [r4, #84]	@ tmp535, CurrentProc_160(D)->sunsetVal
.L77:
@ src/soar_voxel.c:424: 	if (gKeyState.pressedKeys & R_BUTTON){
	lsls	r1, r1, #23	@ tmp775, _86,
	bpl	.L79		@,
@ src/soar_voxel.c:425: 		CurrentProc->ShowMap ^= 1;
	movs	r0, #1	@ tmp558,
	movs	r1, r4	@ tmp552, CurrentProc
	movs	r5, r0	@ tmp565, tmp558
	adds	r1, r1, #69	@ tmp552,
	ldrb	r3, [r1]	@ *CurrentProc_160(D), *CurrentProc_160(D)
	lsls	r2, r3, #31	@ tmp556, *CurrentProc_160(D),
	lsrs	r2, r2, #31	@ tmp555, tmp556,
	bics	r5, r2	@ tmp565, tmp555
	bics	r3, r0	@ tmp569, tmp558
	orrs	r3, r5	@ tmp573, tmp565
	strb	r3, [r1]	@ tmp573, CurrentProc_160(D)->ShowMap
.L79:
@ src/soar_voxel.c:428: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	ldrh	r6, [r6, #4]	@ _102,
@ src/soar_voxel.c:428: 	if (gKeyState.heldKeys & DPAD_UP){ //turbo
	lsls	r3, r6, #25	@ tmp776, _102,
	bpl	.L80		@,
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, .L144+12	@ tmp581,
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #60]	@ _104, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r1, r3, #2	@ tmp582, tmp581,
	lsls	r2, r2, #1	@ tmp583, _104,
	adds	r1, r1, r2	@ tmp584, tmp582, tmp583
@ src/soar_voxel.c:430: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, #96	@ tmp592,
@ src/soar_voxel.c:430: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #48]	@ pretmp_275, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	movs	r5, #62	@ tmp586,
	ldrsh	r5, [r1, r5]	@ tmp586, tmp584, tmp586
@ src/soar_voxel.c:430: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ tmp594, cam_dy_Angles
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #44]	@ CurrentProc_160(D)->sPlayerPosX, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:430: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, r0	@ tmp595, tmp594, pretmp_275
@ src/soar_voxel.c:429: 		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r1, r1, r5	@ tmp587, CurrentProc_160(D)->sPlayerPosX, tmp586
	str	r1, [r4, #44]	@ tmp587, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:430: 		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ tmp595, CurrentProc_160(D)->sPlayerPosY
.L80:
@ src/soar_voxel.c:432: 	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
	lsls	r3, r6, #24	@ tmp777, _102,
	bpl	.L81		@,
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r3, .L144+12	@ tmp601,
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r2, [r4, #60]	@ _113, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	adds	r0, r3, #2	@ tmp602, tmp601,
	lsls	r2, r2, #1	@ tmp603, _113,
	adds	r0, r0, r2	@ tmp604, tmp602, tmp603
@ src/soar_voxel.c:434: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	adds	r3, r3, #96	@ tmp612,
@ src/soar_voxel.c:434: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldr	r1, [r4, #48]	@ pretmp_277, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	movs	r5, #62	@ tmp606,
	ldrsh	r5, [r0, r5]	@ tmp606, tmp604, tmp606
@ src/soar_voxel.c:434: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	ldrsh	r3, [r2, r3]	@ tmp614, cam_dy_Angles
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	ldr	r0, [r4, #44]	@ CurrentProc_160(D)->sPlayerPosX, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:434: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	subs	r3, r1, r3	@ tmp615, pretmp_277, tmp614
@ src/soar_voxel.c:433: 		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
	subs	r0, r0, r5	@ tmp607, CurrentProc_160(D)->sPlayerPosX, tmp606
	str	r0, [r4, #44]	@ tmp607, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:434: 		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	str	r3, [r4, #48]	@ tmp615, CurrentProc_160(D)->sPlayerPosY
.L81:
@ src/soar_voxel.c:440: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	ldr	r1, [r4, #76]	@, CurrentProc_160(D)->sFocusPtY
	ldr	r0, [r4, #72]	@, CurrentProc_160(D)->sFocusPtX
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:442: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	ldr	r5, [r4, #52]	@ _125, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:442: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	movs	r7, r5	@ camera_ht, _125
@ src/soar_voxel.c:441: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r3, [r4, #44]	@ _123, CurrentProc_160(D)->sPlayerPosX
	str	r3, [sp, #4]	@ _123, %sfp
	ldr	r3, [r4, #48]	@ _124, CurrentProc_160(D)->sPlayerPosY
@ src/soar_voxel.c:442: 	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	subs	r7, r7, #42	@ camera_ht,
@ src/soar_voxel.c:440: 	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	str	r0, [sp, #12]	@ tmp719, %sfp
@ src/soar_voxel.c:441: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	str	r3, [sp, #8]	@ _124, %sfp
@ src/soar_voxel.c:443: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ player_terrain_ht, camera_ht
	bgt	.L82		@,
@ src/soar_voxel.c:441: 	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	ldr	r1, [sp, #8]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	getPtHeight_thumb		@
@ src/soar_voxel.c:443: 	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
	cmp	r0, r7	@ camera_terrain_ht, camera_ht
	ble	.L83		@,
.L82:
@ src/soar_voxel.c:445: 		CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_160(D)->sPlayerStepZ, CurrentProc_160(D)->sPlayerStepZ
@ src/soar_voxel.c:444: 		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r5, r5, #32	@ tmp616,
	str	r5, [r4, #52]	@ tmp616, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:445: 		CurrentProc->sPlayerStepZ += 1;
	adds	r3, r3, #1	@ tmp617,
.L142:
@ src/soar_voxel.c:450: 			CurrentProc->sPlayerStepZ -= 1;
	str	r3, [r4, #56]	@ tmp646, CurrentProc_160(D)->sPlayerStepZ
.L84:
@ src/soar_voxel.c:454: 	if (gKeyState.heldKeys & A_BUTTON){
	lsls	r6, r6, #31	@ tmp779, _102,
	bpl	.L88		@,
@ src/soar_voxel.c:455: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	movs	r2, #160	@ tmp653,
@ src/soar_voxel.c:455: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	ldr	r3, [r4, #52]	@ _138, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:455: 		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
	lsls	r2, r2, #1	@ tmp653, tmp653,
	cmp	r3, r2	@ _138, tmp653
	bge	.L88		@,
@ src/soar_voxel.c:456: 			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
	adds	r3, r3, #32	@ tmp654,
	str	r3, [r4, #52]	@ tmp654, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:457: 			CurrentProc->sPlayerStepZ += 1;
	ldr	r3, [r4, #56]	@ CurrentProc_160(D)->sPlayerStepZ, CurrentProc_160(D)->sPlayerStepZ
	adds	r3, r3, #1	@ tmp655,
	str	r3, [r4, #56]	@ tmp655, CurrentProc_160(D)->sPlayerStepZ
.L88:
@ src/soar_voxel.c:463: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	ldr	r3, .L144+16	@ tmp669,
	ldr	r2, [sp, #4]	@ _123, %sfp
	cmp	r2, r3	@ _123, tmp669
	ble	.L89		@,
@ src/soar_voxel.c:463: 	if (CurrentProc->sPlayerPosX > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosX = MAP_DIMENSIONS-10;
	str	r3, [r4, #44]	@ tmp669, CurrentProc_160(D)->sPlayerPosX
.L90:
@ src/soar_voxel.c:466: 	if (CurrentProc->sPlayerPosY > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosY = MAP_DIMENSIONS-10;
	ldr	r2, [sp, #8]	@ _124, %sfp
	cmp	r2, r3	@ _124, tmp669
	ble	.L91		@,
@ src/soar_voxel.c:466: 	if (CurrentProc->sPlayerPosY > (MAP_DIMENSIONS-10)) CurrentProc->sPlayerPosY = MAP_DIMENSIONS-10;
	str	r3, [r4, #48]	@ tmp669, CurrentProc_160(D)->sPlayerPosY
	b	.L143		@
.L69:
@ src/soar_voxel.c:371: 	else if (gKeyState.heldKeys & DPAD_RIGHT){
	lsls	r0, r0, #27	@ tmp771, _31,
	bpl	.L71		@,
@ src/soar_voxel.c:372: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	ldr	r0, [sp, #8]	@ pretmp_240, %sfp
@ src/soar_voxel.c:373: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	add	r1, r1, ip	@ _236, pretmp_268
@ src/soar_voxel.c:372: 		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	adds	r2, r2, r0	@ newx, _238, pretmp_240
@ src/soar_voxel.c:373: 		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
	movs	r0, r1	@ newy, _236
@ src/soar_voxel.c:374: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	movs	r1, #15	@ tmp397,
@ src/soar_voxel.c:374: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	adds	r3, r3, #1	@ tmp396,
@ src/soar_voxel.c:374: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	ands	r3, r1	@ _57, tmp397
@ src/soar_voxel.c:374: 		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
	str	r3, [r4, #60]	@ _57, CurrentProc_160(D)->sPlayerYaw
@ src/soar_voxel.c:376: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r3, r3, #1	@ tmp399, _57,
	adds	r1, r5, r3	@ tmp400, tmp359, tmp399
@ src/soar_voxel.c:376: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	movs	r7, #32	@ tmp785,
	ldrsh	r1, [r1, r7]	@ tmp402, tmp400, tmp785
	asrs	r1, r1, #2	@ tmp404, tmp402,
@ src/soar_voxel.c:376: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r7, r1, #2	@ tmp406, tmp404,
	subs	r1, r1, r7	@ tmp407, tmp404, tmp406
@ src/soar_voxel.c:376: 		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r1, r1, r0	@ newy, tmp407, newy
@ src/soar_voxel.c:375: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	ldrsh	r3, [r3, r5]	@ tmp410, cam_pivot_dx_Angles
	asrs	r3, r3, #2	@ tmp412, tmp410,
@ src/soar_voxel.c:375: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	lsls	r0, r3, #2	@ tmp414, tmp412,
	subs	r3, r3, r0	@ tmp415, tmp412, tmp414
@ src/soar_voxel.c:375: 		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
	adds	r3, r3, r2	@ newx, tmp415, newx
@ src/soar_voxel.c:379: 		BumpScreen(bump_right);
	movs	r0, #3	@,
@ src/soar_voxel.c:377: 		CurrentProc->sPlayerPosX = newx;
	str	r3, [r4, #44]	@ newx, CurrentProc_160(D)->sPlayerPosX
@ src/soar_voxel.c:378: 		CurrentProc->sPlayerPosY = newy;
	str	r1, [r4, #48]	@ newy, CurrentProc_160(D)->sPlayerPosY
	b	.L141		@
.L71:
@ src/soar_voxel.c:381: 	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
	movs	r3, #48	@ tmp421,
	ldrh	r2, [r6, #10]	@ tmp419,
	tst	r2, r3	@ tmp419, tmp421
	bne	.LCB1156	@
	b	.L70	@long jump	@
.LCB1156:
	bl	BumpScreen.part.0		@
@ src/soar_voxel.c:309: };
	b	.L70		@
.L73:
@ src/soar_voxel.c:401: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	ldr	r3, .L144	@ tmp468,
	adds	r3, r3, #65	@ tmp471,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ src/soar_voxel.c:401: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	lsls	r3, r3, #30	@ tmp772, gChapterData,
	bpl	.LCB1170	@
	b	.L72	@long jump	@
.LCB1170:
@ src/soar_voxel.c:401: 		else if (gChapterData.muteSfxOption == 0) m4aSongNumStart(0x6c); //invalid sfx
	movs	r0, #108	@,
	ldr	r3, .L144+4	@ tmp479,
	bl	.L19		@
	b	.L72		@
.L78:
@ src/soar_voxel.c:420: 			CurrentProc->sunTransition = 0;
	movs	r3, #0	@ tmp539,
	strb	r3, [r2]	@ tmp539, CurrentProc_160(D)->sunTransition
	b	.L77		@
.L83:
@ src/soar_voxel.c:447: 	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
	lsls	r3, r6, #30	@ tmp778, _102,
	bpl	.L84		@,
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	ldr	r3, [sp, #12]	@ player_terrain_ht, %sfp
	adds	r3, r3, #32	@ player_terrain_ht,
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r2, #1	@ tmp625,
	cmp	r3, r7	@ tmp624, camera_ht
	blt	.L85		@,
	movs	r2, #0	@ tmp625,
.L85:
	movs	r3, #1	@ tmp629,
	cmp	r5, #32	@ _125,
	bgt	.L86		@,
	movs	r3, #0	@ tmp629,
.L86:
	ands	r3, r2	@ tmp633, tmp625
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp637, tmp633,
	beq	.L84		@,
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	adds	r0, r0, #32	@ tmp638,
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	movs	r3, #1	@ tmp639,
	cmp	r0, r7	@ tmp638, camera_ht
	blt	.L87		@,
	movs	r3, #0	@ tmp639,
.L87:
@ src/soar_voxel.c:448: 		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
	lsls	r3, r3, #24	@ tmp644, tmp639,
	beq	.L84		@,
@ src/soar_voxel.c:450: 			CurrentProc->sPlayerStepZ -= 1;
	ldr	r3, [r4, #56]	@ CurrentProc_160(D)->sPlayerStepZ, CurrentProc_160(D)->sPlayerStepZ
@ src/soar_voxel.c:449: 			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
	subs	r5, r5, #32	@ tmp645,
	str	r5, [r4, #52]	@ tmp645, CurrentProc_160(D)->sPlayerPosZ
@ src/soar_voxel.c:450: 			CurrentProc->sPlayerStepZ -= 1;
	subs	r3, r3, #1	@ tmp646,
	b	.L142		@
.L89:
@ src/soar_voxel.c:464: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	ldr	r2, [sp, #4]	@ _123, %sfp
	cmp	r2, #9	@ _123,
	bgt	.L90		@,
@ src/soar_voxel.c:464: 	else if (CurrentProc->sPlayerPosX < 10) CurrentProc->sPlayerPosX = 10;
	movs	r2, #10	@ tmp659,
	str	r2, [r4, #44]	@ tmp659, CurrentProc_160(D)->sPlayerPosX
	b	.L90		@
.L91:
@ src/soar_voxel.c:467: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	ldr	r3, [sp, #8]	@ _124, %sfp
@ src/soar_voxel.c:469: 	return 1;
	movs	r0, #1	@ <retval>,
@ src/soar_voxel.c:467: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	cmp	r3, #9	@ _124,
	ble	.LCB1241	@
	b	.L58	@long jump	@
.LCB1241:
@ src/soar_voxel.c:467: 	else if (CurrentProc->sPlayerPosY < 10) CurrentProc->sPlayerPosY = 10;
	movs	r3, #10	@ tmp662,
	str	r3, [r4, #48]	@ tmp662, CurrentProc_160(D)->sPlayerPosY
	b	.L58		@
.L145:
	.align	2
.L144:
	.word	gChapterData
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
.LC51:
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
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L19:
	bx	r3
.L37:
	bx	r4
.L48:
	bx	r5
.L23:
	bx	r6
.L44:
	bx	r7
