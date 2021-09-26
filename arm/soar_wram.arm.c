#include "../src/cHacks.h"
#include "../src/soar.h"


//current cycles: 1415721

void NewWMLoop(SoarProc* CurrentProc){
	
	UpdateSprites(CurrentProc);

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
		return;
	};
	#else
	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	CurrentProc->sFocusPtX = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // set focal point
	CurrentProc->sFocusPtY = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // set focal point
	#endif

	if (gKeyState.pressedKeys & START_BUTTON){
		EndLoop(CurrentProc);
		return;
	};

	if (gKeyState.pressedKeys & SELECT_BUTTON){
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
	if (gKeyState.heldKeys == DPAD_DOWN) return; //don't bother rendering if only holding down


	//set camera
	int player_terrain_ht = getPtHeight(CurrentProc->sFocusPtX, CurrentProc->sFocusPtY);
	int camera_terrain_ht = getPtHeight(CurrentProc->sPlayerPosX, CurrentProc->sPlayerPosY);
	int camera_ht = CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP);
	if ((player_terrain_ht > camera_ht) || (camera_terrain_ht > camera_ht)){
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

	Render(CurrentProc); //draw and then flip
	FPS_COUNTER += 1;
};

//LUTs
extern const s16 cam_dx_Angles[16] = DX_TABLE(MOVEMENT_STEP);

extern const s16 cam_dy_Angles[16] = DY_TABLE(MOVEMENT_STEP);

extern const s16 cam_pivot_dx_Angles[16] = DX_TABLE((MIN_Z_DISTANCE+SHADOW_DISTANCE)); // camera distance from focal point

extern const s16 cam_pivot_dy_Angles[16] = DY_TABLE((MIN_Z_DISTANCE+SHADOW_DISTANCE)); 

static inline u16 getPointColour(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
};

static inline int getPtHeight(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
}

static inline int getScrHeight(int ptx, int pty, int altitude, int zdist){
	int height = getPtHeight(ptx, pty);
	 //    height = (height-altitude)<<SCALING_FACTOR;
		// height /= (zdist>>1); //this breaks it! too far....
		// height += HORIZON;
	 // return height;
	height = (int)(hosTables[altitude][zdist>>1][height]);
	// if (height<0) return 0;
	// if (height>MODE5_WIDTH) return MODE5_WIDTH;
	return height;
}

static inline void UpdateSprites(SoarProc* CurrentProc){
	// int animClock = GetGameClock() & 0x3F;
	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca00); //player frames
	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca10);
	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca20);
	else ObjInsertSafe(8, 0x68, 0x58, &gObj_32x32, 0xca30);

	if (CurrentProc->ShowMap)
	{
		ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap
	};

	#ifdef __FPSCOUNT__
	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	#endif

	//check if player is in a zone
	int posX = CurrentProc->sFocusPtX;
	int posY = CurrentProc->sFocusPtY;

	u8 loc = 0;

	if ((posY > MAP_YOFS) && (posY < (MAP_DIMENSIONS - MAP_YOFS)) && (posX > 0) && (posX < MAP_DIMENSIONS)) {
		if (CurrentProc->ShowMap) ObjInsertSafe(8, (176 + (posX>>4)), (posY-MAP_YOFS)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
		posX >>= 6;
		posY = (posY-MAP_YOFS)>>6;
		loc = WorldMapNodes[posY][posX];
	};
	CurrentProc->location = translatedLocations[loc];
	if (loc>0) {
		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	};
};

static inline Point getPLeft(int camera_x, int camera_y, int angle, int zdist){
	// int sin_angle = SIN_LOOKUP((angle<<4))*zdist;  //angle in degrees
	// int cos_angle = COS_LOOKUP((angle<<4))*zdist;

	//lookup table does not seem any faster lol
	// theory: x = table of all possible zdists and angles = 0x10 * 0x200 = 0x2000 entries. (signed halfwords?)
	// pleft.x = pleftmatrix[angle][zdist]
	// pleft.y = pleftmatrix[(0x10-angle)&0xF][zdist] //mirrored about the ns axis

	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(0x10-angle)&0xF][zdist]};
	// switch (angle){
	// 	case a_NNE:
	// 	    pleft.x = camera_x - ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    pleft.y = camera_y - (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    break;
	// 	case a_NE:
	// 	    pleft.x = camera_x;
	// 	    pleft.y = camera_y - zdist; 
	// 	    break;
	// 	case a_ENE:
	// 	    pleft.x = camera_x + ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    pleft.y = camera_y - (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    break;
	// 	case a_E:
 //    		pleft.x = camera_x + (zdist - (zdist>>2) - (zdist>>5)); //using 0.71875 as an approximation for 0.7071
	// 		pleft.y = camera_y - (zdist - (zdist>>2) - (zdist>>5));
	// 		break;
	// 	case a_ESE:
	// 	    pleft.x = camera_x + (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    pleft.y = camera_y - ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    break;
	// 	case a_SE:
	// 	    pleft.x = camera_x + zdist;
	// 		pleft.y = camera_y;
	// 		break; 
	// 	case a_SSE:
	// 	    pleft.x = camera_x + (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    pleft.y = camera_y + ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    break;
	// 	case a_S:
 //    		pleft.x = camera_x + (zdist - (zdist>>2) - (zdist>>5));//using 0.71875 as an approximation for 0.7071
	// 		pleft.y = camera_y + (zdist - (zdist>>2) - (zdist>>5));
	// 		break;
	// 	case a_SSW:
	// 	    pleft.x = camera_x + ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    pleft.y = camera_y + (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    break;
	// 	case a_SW:
	// 	    pleft.x = camera_x;
	// 		pleft.y = camera_y + zdist;
	// 		break; //using 0.71875 as an approximation for 0.7071
	// 	case a_WSW:
	// 	    pleft.x = camera_x - ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    pleft.y = camera_y + (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    break;
	// 	case a_W:
	// 	    pleft.x = camera_x - (zdist - (zdist>>2) - (zdist>>5)); //using 0.71875 as an approximation for 0.7071
	// 		pleft.y = camera_y + (zdist - (zdist>>2) - (zdist>>5));
	// 		break;
	// 	case a_WNW:
	// 	    pleft.x = camera_x - (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    pleft.y = camera_y + ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    break;
	// 	case a_NW:
	// 	    pleft.x = camera_x - zdist;
	// 		pleft.y = camera_y;
	// 		break; //using 0.71875 as an approximation for 0.7071
	// 	case a_NNW:		
	// 	    pleft.x = camera_x - (zdist - (zdist>>4) - (zdist>>6)); //using 0.921875 as an approximation for 0.92?
	// 	    pleft.y = camera_y - ((zdist>>1) - (zdist>>3)); //using 0.375 as an approximation for .38
	// 	    break;
	// 	default: //north
	// 	    pleft.x = camera_x - (zdist - (zdist>>2) - (zdist>>5)); //using 0.71875 as an approximation for 0.7071
	// 		pleft.y = camera_y - (zdist - (zdist>>2) - (zdist>>5));
	// 		break;
	// };
	return pleft;
};


static inline void Render(SoarProc* CurrentProc){
	int posX = CurrentProc->sPlayerPosX;
	int posY = CurrentProc->sPlayerPosY;
	int angle = CurrentProc->sPlayerYaw;
	int tangent = (angle+4)&0xF;
	int altitude = (CurrentProc->sPlayerStepZ);

	u8 yBuffer[MODE5_HEIGHT];

	// CpuFastFill16(SKY_COLOUR, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //draw skybox
	CpuFastCopy(&SkyBG + ((angle<<5) + (angle<<7)<<4) + (altitude<<2) - 100, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));
	// LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer

	int fogmask = 0b011110011100011;
	//drawing front to back
	for (int zdist = MIN_Z_DISTANCE+(altitude<<1); zdist<((MAX_Z_DISTANCE)+((altitude)<<4)>>1)+32; zdist+=INC_ZSTEP){
	// for (int zdist = MAX_Z_DISTANCE; zdist>MIN_Z_DISTANCE; zdist-=INC_ZSTEP){


		Point pleft = getPLeft(posX, posY, angle, zdist); //assume facing north and 90deg fov
		Point pright = getPLeft(posX, posY, tangent, zdist); //do the same but with 90 deg clockwise rotation.
		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.

		for (int i=0; i<(MODE5_HEIGHT); i++)
		{
			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
			
			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
			{
				int height_on_screen = getScrHeight(offsetPoint.x, offsetPoint.y, altitude, zdist);
				if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
					//only fetch the colour if we're actually drawing!
					u16 clr = 0; //default to shadow
					if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
					{
						clr = getPointColour(offsetPoint.x, offsetPoint.y); //if not in shadow
					    if (zdist > (FOG_DISTANCE+64)) clr |= fogmask; //if in fog
					}
				    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
				    yBuffer[i] = height_on_screen;
				}
				//cel shading bit
				else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
					DrawVerticalLine(i, yBuffer[i]-1, 1, 0x0000, CurrentProc->vid_page); //draw a black border if not
				};
			};
		};
	};
	// for (int i=0; i<MODE5_HEIGHT; i++)
	// {
	// 	int offset = ((i<<5) + (i<<7) + yBuffer[i]);
	// 	CpuCopy32(&SkyBG + (offset>>1), CurrentProc->vid_page + offset, (MODE5_WIDTH - yBuffer[i])<<1);
	// };

	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
};

static inline void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	// remove checks, assume it's good data
	// if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	// if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	u16* base = vid_page + (offset);
	for (u16* i = base; i < base+ylen; i++) *i = color;
	// CpuFill16(color, base, (ylen<<1));
	// DmaFill16(0, color, base, (ylen<<1)); //dma 0 is the highest priority
}


