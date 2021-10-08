#include "cHacks.h"
#include "soar.h"
#include "hostable.h"
#include "wm_nodes.h"

#define IRAM_NewWMLoop 0x3007000 //using as a safe??? place 
#define SIZEOF_NewWMLoop 0x800 //to be safe?

//procs

extern const ProcCode Proc_Soaring[] = { //expose it to lyn
  PROC_SET_NAME("NewWorldMap"),
  PROC_CALL_ROUTINE(LockGameLogic),
  // PROC_CALL_ROUTINE(0x80b1a09), //original config drawing
    PROC_CALL_ROUTINE_ARG(NewFadeIn, 8),
    PROC_WHILE_ROUTINE(FadeInExists),
    PROC_SLEEP(1),
  PROC_CALL_ROUTINE(SetUpNewWMGraphics),
	  PROC_END_ALL(0x8a3de84), //gmapscreen
	  PROC_END_ALL(0x8a3df94), //gmapcursor
	  PROC_END_ALL(0x8a3e464), //wmappl
	  PROC_END_ALL(0x8a3e248), //wmapmuprim
	  PROC_END_ALL(0x8a3e2c0), //gmap MU
	  // PROC_END_ALL(0x8a3ee44), //unknown
	  PROC_END_ALL(0x8a3df64), //gmapscreen2
  PROC_SLEEP(8),
  PROC_LOOP_ROUTINE(IRAM_NewWMLoop),
  // PROC_SLEEP(8),
  PROC_CALL_ROUTINE(MoveLord),
  PROC_CALL_ROUTINE(0x8099e69),
    PROC_CALL_ROUTINE_ARG(NewFadeIn, 8),
    PROC_WHILE_ROUTINE(FadeInExists),
    PROC_SLEEP(1),
  PROC_CALL_ROUTINE(UnlockGameLogic),
  PROC_END
}; 

extern const int skies[] = {(int)(&SkyBG), (int)(&SkyBG), (int)(&SkyBG_lighter), (int)(&SkyBG_darker), (int)(&SkyBG_sunset)};
extern const u16 fogClrs[] = {0x7f74, 0x7f74, 0x6a8d, 0x51c7, 0x34e0};

//LUTs
extern const s16 cam_dx_Angles[16] = DX_TABLE(MOVEMENT_STEP);

extern const s16 cam_dy_Angles[16] = DY_TABLE(MOVEMENT_STEP);

extern const s16 cam_pivot_dx_Angles[16] = DX_TABLE((MIN_Z_DISTANCE+SHADOW_DISTANCE)); // camera distance from focal point

extern const s16 cam_pivot_dy_Angles[16] = DY_TABLE((MIN_Z_DISTANCE+SHADOW_DISTANCE)); 
//

u16 *vid_flip(u16* vid_page)
{
    #ifdef __PAGEFLIP__
    // toggle the write_buffer's page
	    vid_page= (u16*)((u32)vid_page ^ VID_FLIP);
	    g_LCDIOBuffer ^= DCNT_PAGE;            // update control register
    #endif
    return vid_page;
}

int StartSoaring(Proc* MenuProc){
	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	START_PROC_BLOCKING(Proc_Soaring, wmproc); //create new proc with parent
	// m4aSongNumStart(0x6b);
	return 0x17;
};

int SoarUsability(){
	return 1;
};

void SoarVBlankInterrupt()
{
	*(u16*)(0x3007ff8) = 1;
	IncrementGameClock();
	m4aSoundVSync();
	SyncLoOAM();
	if(gGameState.boolMainLoopEnded)
	{
		gGameState.boolMainLoopEnded = 0;
		ExecProc(*(int*)(0x2026A70));
		SyncLCDControl();
		SyncBgAndPals();
		SyncRegisteredTiles();
		SyncHiOAM();
	}
	m4aSoundMain();
	// int animClock = GetGameClock() & 0x3F;
	int animClock = *(u8*)(0x3000014) & 0x3F;
	if ((animClock < 0x10) | (animClock > 0x30))	g_REG_BG2X-=0x30; //the same as eirika's map sprite?
	else if (g_REG_BG2X<0x9fd0) g_REG_BG2X+=0x30;

	if (animClock == 0x20) m4aSongNumStart(0xa6);

	#ifdef __FPSCOUNT__
	if (animClock == 0) //resets once per 63 frames so close enough
	{
		FPS_CURRENT = FPS_COUNTER;
		FPS_COUNTER = 0;
	}
	#endif
};



void SetUpNewWMGraphics(SoarProc* CurrentProc){

	CurrentProc->sPlayerPosX = (WM_CURSOR[0]*MAP_DIMENSIONS/480)>>8; //x coord mapped to 1024 map size
	CurrentProc->sPlayerPosY = ((WM_CURSOR[1]*MAP_DIMENSIONS/480)>>8)+ MAP_YOFS;
	CurrentProc->sPlayerPosZ = CAMERA_MIN_HEIGHT+(2 * CAMERA_Z_STEP);
	CurrentProc->sPlayerStepZ = 2;
	CurrentProc->sPlayerYaw = a_SE;
	CurrentProc->ShowMap = TRUE;
	CurrentProc->ShowFPS = TRUE;
	CurrentProc->location = Frelia;
	CurrentProc->sunsetVal = 0;
	CurrentProc->sunTransition = 0;
	CurrentProc->takeOffTransition = 1;
	// CurrentProc->animClock = 0;
	#ifdef __PAGEFLIP__
	    CurrentProc->vid_page = (u16*)(0x600A000);
	#else
	    CurrentProc->vid_page = (u16*)(0x6000000);
	#endif

	//copy render code into IWRAM
	CpuFastCopy(NewWMLoop, IRAM_NewWMLoop, SIZEOF_NewWMLoop);

	VBlankIntrWait();

	g_LCDIOBuffer = DISPCNT_MODE_5 
		// | DISPCNT_BG0_ON
		// | DISPCNT_BG1_ON
		| DISPCNT_BG2_ON
		| DISPCNT_OBJ_ON
		| DISPCNT_OBJ_1D_MAP
		;

	SetColorEffectsParameters(3,4,0x10,0); //do these even do anything?
	SetColorEffectsFirstTarget(0,0,0,0,0);
	SetColorEffectBackdropFirstTarget(1);

	// REG_WAITCNT = 0x45bb; //orig 0x45b7, we change ws0 from 3 to 2
	
		//turn it sideways so it's easier to draw on
	g_REG_BG2PA=0x00;	//rotate and stretch
	g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
	g_REG_BG2PC=0x85; //
	g_REG_BG2PD=0x00;	//
	g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
	g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	// g_REG_BG2CNT = 0x0e00; //set to lowest priority/t
	//stop map music??
	Sound_FadeSongOut(10);
	LoadSprite();
	m4aSongNumStart(0x4e); //windy with birds (make this a separate track from bgm and it can play alongside)
	m4aSongNumStart(0x58); //unused slot
	gCurrentMusic = 0x58;
	CpuFastFill16(0, VRAM, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //make it black

	SetInterrupt_LCDVBlank(SoarVBlankInterrupt);
};

void LoadSprite(){
	LZ77UnCompVram(&pkSprite, &tile_mem[5][0]); //first tile of the hi block 0x6014000
	LZ77UnCompVram(&locationSprites, &tile_mem[5][64]); //yeah 
	LZ77UnCompVram(&miniCursorSprite, &tile_mem[5][96]);
	LZ77UnCompVram(&minimapSprite, &tile_mem[5][97]);
	LZ77UnCompVram(&fpsSprite, &tile_mem[5][161]); //fps numbers
	LZ77UnCompVram(&lensFlareSprite, &tile_mem[5][193]);
	LoadMapSpritePalettes(); //puts in palette 0xc
	ApplyPalette(&minimapPal, 0x12);
	ApplyPalette(&lensFlarePal, 0x13);
};

const int PkOamData = 0;
#define PK_OAM_2 0x40f6

const u16 gObj_32x8[3] = {
	0x1, //length?
	0x4000, //set shape bit
	0x4000 //set size bit
};

const u16 gObj_64x64[3] = {
	0x1, //length?
	0x0000, //set shape bit
	0xc000 //set size bit
};

const u16 gObj_aff32x32[3] = {
	0x1,
	0x400, //enable alpha blending
	0x8000 //32x32
};


const u8 WorldMapNodes[11][16] = {
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 1, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 1, 6, 6, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0},
	{0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0},
	{0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 4, 4, 0, 2, 2, 2, 7, 7, 7, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 7, 7, 7, 0},
	{0, 0, 0, 0, 0, 0, 0, 3, 3, 2, 2, 2, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
};

const u8 translatedLocations[] = {
	0, //none (default frelia)
	1, //frelia
	0x13, //jehanna
	0x12, //grado
	0x14, //renais
	0x17, //rausten
	0x1a, //valni
	0x1b  //lagdou
};


void MoveLord(SoarProc* CurrentProc){

	VBlankIntrWait();
	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	RefreshWMProc(wmproc);

	// 800cc18 is the command for spawnlord, loads up the event proc and cursor and gets r3 = char id, r4 = index in gmap entity table?, r5 = location id
	//3005280 is list of world map entities?
	//calls 0x80bf504 with wme ID, char/class id, 0xffffffff, locationid
	// int location = locationTranslate(CurrentProc->location);
	int cursorX, cursorY;
	int location = CurrentProc->location;
	GM_PutCharUnit(0, 1, -1, location); //ok so this does actually work but only for the actual location - we still need the map sprite and camera moved.
	RefreshWMSprite(0); //refreshes the 0th wm entity? 
	cursorX = *(u16*)(0x82060b0 + (32*location) + 0x18);
	cursorY = *(u16*)(0x82060b0 + (32*location) + 0x1a);
	WM_CURSOR[0] = cursorX<<8;
	WM_CURSOR[1] = cursorY<<8;

	g_LCDIOBuffer = DISPCNT_MODE_0
	| DISPCNT_BG0_ON
	| DISPCNT_BG1_ON
	| DISPCNT_BG2_ON
	| DISPCNT_BG3_ON
	| DISPCNT_OBJ_ON
	;
};

void EndLoop(SoarProc* CurrentProc){
	SetInterrupt_LCDVBlank(OnVBlankMain);
	int vid_page = CurrentProc->vid_page;
	VBlankIntrWait();
  	CpuFastFill16(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
  	vid_flip(vid_page);
  	vid_page ^= 0xa000;
  	VBlankIntrWait();
  	CpuFastFill16(0, vid_page, (MODE5_WIDTH*MODE5_HEIGHT)<<1); //make it black
  	vid_flip(vid_page);
  	
  	VBlankIntrWait();
	g_LCDIOBuffer = DISPCNT_MODE_5; //disable all layers
	// 	// | DISPCNT_BG0_ON
	// 	// | DISPCNT_BG1_ON
	// 	// | DISPCNT_BG2_ON
	// 	// | DISPCNT_BG3_ON
	// 	// | DISPCNT_OBJ_ON
	// 	;

	//actually ending the loop
	BreakProcLoop(CurrentProc);
	Proc* wmproc = ProcFind((ProcInstruction*)(0x8a3d748)); //worldmap
	ProcGoto(wmproc, 0x17); //goto the label that fades out of black
	LoadObjUIGfx();
	VBlankIntrWait();
	//8099e68 called after exiting manage items
	// REG_WAITCNT = 0x45b7; //restore this
};

void BumpScreen(int direction){
	switch (direction){
		case bump_up:
			// REG_BG2X=0x9e40+0x180;	//offset horizontal
			break;
		case bump_down:
			// REG_BG2X=0x9e40-0x180;	//offset horizontal
			break;
		case bump_left:
			g_REG_BG2Y=0x180;	//offset horizontal
			g_REG_BG2X=0x9280;
			g_REG_BG2PA=0x000E; 
			g_REG_BG2PB=0xFF1C;
			g_REG_BG2PC=0x0080;
			g_REG_BG2PD=0x0008;
			break;
		case bump_right:
			g_REG_BG2Y=0x0500;	//offset horizontal
			g_REG_BG2X=0x9c40;
			g_REG_BG2PA=0xFFF2; 
			g_REG_BG2PB=0xFF1C;
			g_REG_BG2PC=0x0080;
			g_REG_BG2PD=0xFFF8;
			break;
		default: //no bump
			g_REG_BG2PA=0x00;	//rotate and stretch	
			g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
			g_REG_BG2PC=0x85; //
			g_REG_BG2PD=0x00;	//
			g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
			g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	};
};

static inline int getPtHeight_thumb(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
};

int thumb_loop(SoarProc* CurrentProc) //return 1 if continuing, else 0 to break
{

	if ((CurrentProc->takeOffTransition) & (CurrentProc->sPlayerStepZ < (CAMERA_NUM_STEPS-3)))
	{
		if (getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY) > (CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP)))
		{
			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
			CurrentProc->sPlayerStepZ += 1;
		};
		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
		CurrentProc->sPlayerStepZ += 1;
		return 1;
	}
	else CurrentProc->takeOffTransition = 0;

	int newx,  newy;

	if (gKeyState.heldKeys & DPAD_LEFT){
		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw - 1)&0xF; //16 angles so skip the conditional
		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		CurrentProc->sPlayerPosX = newx;
		CurrentProc->sPlayerPosY = newy;
		BumpScreen(bump_left);
	}
	else if (gKeyState.heldKeys & DPAD_RIGHT){
		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 1)&0xF; //16 angles so skip the conditional
		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		CurrentProc->sPlayerPosX = newx;
		CurrentProc->sPlayerPosY = newy;
		BumpScreen(bump_right);
	}
	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
		BumpScreen(4); //reset
	};

	#ifndef __ALWAYS_MOVE__
	if (gKeyState.heldKeys == 0){ //Only bother updating if a key is pressed!
		return 0;
	};
	#else
	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	#endif

	if (gKeyState.pressedKeys & START_BUTTON){
		if (CurrentProc->location)
		{
			m4aSongNumStart(0x73);
			EndLoop(CurrentProc);
			return 0;
		}
		else m4aSongNumStart(0x6c); //invalid sfx
	};

	if (gKeyState.pressedKeys & SELECT_BUTTON) CurrentProc->ShowFPS ^= 1;

	if ((gKeyState.pressedKeys & L_BUTTON) && (CurrentProc->sunTransition==0)){
		if (CurrentProc->sunsetVal) CurrentProc->sunTransition = -1;
		else CurrentProc->sunTransition = 1;
		CurrentProc->sunsetVal += CurrentProc->sunTransition;
	};

	if (CurrentProc->sunTransition!=0)
	{
		if ((CurrentProc->sunsetVal > 0) & (CurrentProc->sunsetVal < 8))
		{
			CurrentProc->sunsetVal += CurrentProc->sunTransition;
		}
		else
		{
			CurrentProc->sunTransition = 0;
		}
	};

	if (gKeyState.pressedKeys & R_BUTTON){
		CurrentProc->ShowMap ^= 1;
	};

	if (gKeyState.heldKeys & DPAD_UP){ //turbo
		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	};
	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	};
	if ((gKeyState.heldKeys == DPAD_DOWN) & (CurrentProc->sunTransition==0)) return 0; //don't bother rendering if only holding down


	//set camera
	int player_terrain_ht = getPtHeight_thumb(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	int camera_terrain_ht = getPtHeight_thumb(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP) - 10;
	if ((player_terrain_ht > (camera_ht)) || (camera_terrain_ht > camera_ht)){
		CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
		CurrentProc->sPlayerStepZ += 1;
	}
	else if (gKeyState.heldKeys & B_BUTTON){ //prevent clipping through ground
		if ((CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) & (camera_ht > (player_terrain_ht+CAMERA_Z_STEP)) & (camera_ht > (camera_terrain_ht+CAMERA_Z_STEP))){
			CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
			CurrentProc->sPlayerStepZ -= 1;
			BumpScreen(bump_down);
		};
	};
	if (gKeyState.heldKeys & A_BUTTON){
		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT){
			CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
			CurrentProc->sPlayerStepZ += 1;
			BumpScreen(bump_up);
		};
	};

	//prevent leaving the area // CurrentProc->sPlayerYaw = (CurrentProc->sPlayerYaw + 7) & 0xf; // 
	if (CurrentProc->sPlayerPosX > MAP_DIMENSIONS) CurrentProc->sPlayerYaw = CurrentProc->sPlayerPosX = MAP_DIMENSIONS;
	else if (CurrentProc->sPlayerPosX < 0) CurrentProc->sPlayerPosX = 0;

	if (CurrentProc->sPlayerPosY > MAP_DIMENSIONS) CurrentProc->sPlayerPosY = MAP_DIMENSIONS;
	else if (CurrentProc->sPlayerPosY < 0) CurrentProc->sPlayerPosY = 0;

	return 1;
};

