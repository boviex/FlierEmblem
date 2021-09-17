#include "cHacks.h"

#define WMImage 0x8A99140
#define WMMap 0x8A9DF74
#define WMPalette 0x8A9E4C4

#define HORIZON 34
#define m7_screenbase 0x17
#define m7_charbase 2
#define CHARBLOCK(num) VRAM+(num * 0x4000)
#define SCRBLOCK(num) VRAM+(num*0x800)

extern int wmTiles;
extern int wmMap;
extern int wmPal;
#define REG_DISPCNT *((volatile u32*)(MEM_IO+0x0000))
#define sPlayerPosX *((volatile s32*)(0x3004f10)) //uses AI bytes so never relevant at WM
#define sPlayerPosY *((volatile s32*)(0x3004f14))
#define sPlayerPosZ *((volatile s32*)(0x3004f18))
#define sPlayerYaw  *((volatile u8*)(0x3004f1c))

//procs
extern const ProcCode ProcWorldMap_new[] = { //expose it to lyn
  PROC_SET_NAME("NewWorldMap"),
  PROC_CALL_ROUTINE(LockGameLogic),
  // PROC_CALL_ROUTINE(0x80b1a09), //original config drawing
    PROC_CALL_ROUTINE_ARG(NewFadeIn, 8),
    PROC_WHILE_ROUTINE(FadeInExists),
    PROC_SLEEP(1),
  PROC_CALL_ROUTINE(SetUpNewWMGraphics),
  // PROC_END_ALL(0x8a3e464), //wmappl
  // PROC_END_ALL(0x8a3df94), //gmapcursor
  // PROC_END_ALL(0x8a3e248), //wmapmuprim
  PROC_END_ALL(0x8a3df64), //gmapscreen2
  PROC_END_ALL(0x8a3de84), //gmapscreen
  PROC_LOOP_ROUTINE(NewWMLoop),
  PROC_END
};

void CreateNewWorldMap(Proc* CurrentProc){
	START_PROC_BLOCKING(ProcWorldMap_new, CurrentProc); //create new proc with wm parent
	m4aSongNumStart(0x6b);
};

// void m7VblCallBack()
// {
//     REG_BG2X = 0;
//     REG_BG2Y = 0;
//     REG_BG2PA = 0;
//     REG_BG2PB = 0;
//     REG_BG2PC = 0;
//     REG_BG2PD = 0;

//     // // Turn on lighten effect for fog
//     // REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_BG2;

//     // // OBJWIN gets enabled when the YES/NO menu is opened, and it interferes with the BLDCNT fog effects.
//     // REG_DISPCNT &= ~DISPCNT_OBJWIN_ON;

//     // Turn off BG for first scanlines
//     REG_DISPCNT &= ~DISPCNT_BG2_ON;

//     REG_BLDY = 0;
// };

void m7HblCallBack(){
	//does something
	int currScanline = REG_VCOUNT;
	#define M7_D 128


	if (currScanline > 159){
		REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
		REG_BG2CNT = BGCNT_PRIORITY(3) | BGCNT_256COLOR | BGCNT_CHARBASE(m7_charbase) | BGCNT_SCREENBASE(m7_screenbase) | BGCNT_WRAP | BGCNT_AFF1024x1024;
		return;
	};

	if (currScanline < HORIZON) return;

	if (currScanline == HORIZON) REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON | DISPCNT_BG2_ON ;

    int lam, lcf, lsf, lxr, lyr;
	int sinYaw = SIN_LOOKUP(sPlayerYaw);
	int cosYaw = COS_LOOKUP(sPlayerYaw);

	lam= sPlayerPosZ * ((1 << 16) / (currScanline - HORIZON))>>12;  // .8*.16 /.12 = 20.12
    lcf= lam*cosYaw>>8;                     // .12*.8 /.8 = .12
    lsf= lam*sinYaw>>8;                     // .12*.8 /.8 = .12

    REG_BG2PA= lcf>>4;
    REG_BG2PC= lsf>>4;

    // horizontal offset
    lxr= 120*(lcf>>4);
    lyr= (M7_D*lsf)>>4;
    REG_BG2X= sPlayerPosX - lxr + lyr;

    // vertical offset
    lxr= 120*(lsf>>4);
    lyr= (M7_D*lcf)>>4; 
    REG_BG2Y= sPlayerPosY - lxr - lyr;
};

int SoarUsability(){
	return 1;
}

void SoarEffect(){
	m4aSongNumStart(0x6b); 
}

void NewWMLoop(Proc* CurrentProc){
	int sinYaw;
	int cosYaw;


	if (gKeyState.heldKeys & DPAD_LEFT){
		sPlayerYaw = sPlayerYaw-1;
	}
	if (gKeyState.heldKeys & DPAD_RIGHT){
		sPlayerYaw = sPlayerYaw+1;
	}
	if (gKeyState.heldKeys & DPAD_UP){
		sPlayerPosZ += 0x10;
	}
	if (gKeyState.heldKeys & DPAD_DOWN){
		if (sPlayerPosZ > 0) sPlayerPosZ-= 0x10;
	}

    sinYaw = SIN_LOOKUP(sPlayerYaw);
    cosYaw = COS_LOOKUP(sPlayerYaw);

    if (gKeyState.heldKeys & A_BUTTON){
	    sPlayerPosX += sinYaw / 8;
	    sPlayerPosY -= cosYaw / 8;
	};

	if (gKeyState.pressedKeys & B_BUTTON){
		g_LCDIOBuffer = 0;
		SetColorEffectsParameters(3,0,0,0x10);
		SetColorEffectsFirstTarget(0,0,0,0,0);
		SetColorEffectBackdropFirstTarget(1);
		gPaletteBuffer[0] = 0;
		EnablePaletteSync();
		BreakProcLoop(CurrentProc);
	}
};


void SetUpNewWMGraphics(){
	//do something
	// int nothing;
	// nothing = 0;
	// LoadBgConfig(&nothing);
	VBlankIntrWait();
	ApplyPalettes(&wmPal, 0, 4); //copy 4 palettes to buffer
	LZ77UnCompVram(&wmTiles, CHARBLOCK(m7_charbase)); //let's try a different charbase
	LZ77UnCompVram(&wmMap, SCRBLOCK(m7_screenbase)); //screenbase
	// VBlankIntrWait();


	g_LCDIOBuffer = DISPCNT_MODE_1 
		| DISPCNT_BG0_ON
		| DISPCNT_BG1_ON
		| DISPCNT_BG2_ON
		| DISPCNT_OBJ_ON
		;
	
	g_REG_BG2CNT = BGCNT_PRIORITY(3) | BGCNT_256COLOR | BGCNT_CHARBASE(m7_charbase) | BGCNT_SCREENBASE(m7_screenbase) | BGCNT_WRAP | BGCNT_AFF1024x1024;
	g_REG_BG2PA = 0x100;
	g_REG_BG2PD = 0x100;

    sPlayerPosX = Q_8_8(8, 0);
    sPlayerPosY = Q_8_8(8, 0);
    sPlayerPosZ = Q_8_8(4, 0);
    sPlayerYaw = 0;

	SetSecondaryHBlankCallback(m7HblCallBack);
	// SetInterrupt_LCDVBlank(m7VblCallBack);

};

