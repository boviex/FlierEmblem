#include "../src/cHacks.h"
#include "../src/soar.h"


void NewWMLoop(SoarProc* CurrentProc){
	
	UpdateSprites(CurrentProc);

	int newx,  newy;

	if (gKeyState.heldKeys & DPAD_LEFT){
		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		if (CurrentProc->sPlayerYaw==a_N) CurrentProc->sPlayerYaw = a_NNW; //rotate
		else CurrentProc->sPlayerYaw--;
		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		CurrentProc->sPlayerPosX = newx;
		CurrentProc->sPlayerPosY = newy;
		BumpScreen(bump_left);
	}
	else if (gKeyState.heldKeys & DPAD_RIGHT){
		newx = CurrentProc->sPlayerPosX + cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		newy = CurrentProc->sPlayerPosY + cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]; // step forward to focal point
		if (CurrentProc->sPlayerYaw==a_NNW) CurrentProc->sPlayerYaw = a_N; //rotate
		else CurrentProc->sPlayerYaw++;
		newx -= (cam_pivot_dx_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		newy -= (cam_pivot_dy_Angles[CurrentProc->sPlayerYaw]>>2)*3; // step back partway from focal point
		CurrentProc->sPlayerPosX = newx;
		CurrentProc->sPlayerPosY = newy;
		BumpScreen(bump_right);
	}
	else if (gKeyState.prevKeys & (DPAD_LEFT|DPAD_RIGHT)) {
		g_REG_BG2PA=0x00;	//rotate and stretch
		g_REG_BG2PB=0xFF0C; //a bit bigger than the screen (-0xF4?)
		g_REG_BG2PC=0x85; //
		g_REG_BG2PD=0x00;	//
		g_REG_BG2X=0x9e40;	//offset 'horizontal' can bump 0x180 each way
		g_REG_BG2Y = 0x180;     //can bump it 0x180 each way
	};

	#ifndef __ALWAYS_MOVE__
	if (gKeyState.heldKeys == 0){ //Only bother updating if a key is pressed!
		return;
	};
	#else
	CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw]; 
	CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	#endif

	if (gKeyState.heldKeys & A_BUTTON){
		if (CurrentProc->sPlayerPosZ<CAMERA_MAX_HEIGHT) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;
		BumpScreen(bump_up);
	};

	if (gKeyState.heldKeys & B_BUTTON){
		if (CurrentProc->sPlayerPosZ>CAMERA_MIN_HEIGHT) CurrentProc->sPlayerPosZ -= CAMERA_Z_STEP;
		BumpScreen(bump_down);
	};

	if (gKeyState.pressedKeys & START_BUTTON){
		EndLoop(CurrentProc);
		return;
	};

	if (gKeyState.heldKeys & DPAD_UP){ //turbo
		CurrentProc->sPlayerPosX += cam_dx_Angles[CurrentProc->sPlayerYaw];
		CurrentProc->sPlayerPosY += cam_dy_Angles[CurrentProc->sPlayerYaw];
	};
	if (gKeyState.heldKeys & DPAD_DOWN){ //hover
		CurrentProc->sPlayerPosX -= cam_dx_Angles[CurrentProc->sPlayerYaw];
		CurrentProc->sPlayerPosY -= cam_dy_Angles[CurrentProc->sPlayerYaw];
	};

	Point playerpos = {CurrentProc->sFocusPtX, CurrentProc->sFocusPtY};
	
	if (getPtHeight(playerpos.x, playerpos.y)>(CurrentProc->sPlayerPosZ - (CAMERA_Z_STEP))) CurrentProc->sPlayerPosZ += CAMERA_Z_STEP;

	Render(CurrentProc); //draw and then flip
};

//LUTs
extern const s16 cam_dx_Angles[16] = DX_TABLE(MOVEMENT_STEP);

extern const s16 cam_dy_Angles[16] = DY_TABLE(MOVEMENT_STEP);

extern const s16 cam_pivot_dx_Angles[16] = DX_TABLE((MIN_Z_DISTANCE*5)); // camera distance from focal point

extern const s16 cam_pivot_dy_Angles[16] = DY_TABLE((MIN_Z_DISTANCE*5)); 

u16 getPointColour(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
	return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
};

extern u8 getPtHeight(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
}

int getScrHeight(int ptx, int pty, int altitude, int zdist){
	int height = getPtHeight(ptx, pty);
	 //    height = (height-altitude)<<SCALING_FACTOR;
		// height /= (zdist>>1); //this breaks it! too far....
		// height += HORIZON;
	 // return height;
	height = (int)(hosTables[altitude][zdist>>1][height]);
	if (height<0) return 0;
	if (height>MODE5_WIDTH) return MODE5_WIDTH;
	return height;
}

void UpdateSprites(SoarProc* CurrentProc){
	// int animClock = GetGameClock() & 0x3F;
	u8 animClock = *(u8*)(0x3000014) & 0x3F;
	if (animClock < 0x10) ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca00); //player frames
	else if (animClock < 0x20)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca10);
	else if (animClock < 0x30)	ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca20);
	else ObjInsertSafe(8, 0x68, 0x60, &gObj_32x32, 0xca30);

	ObjInsertSafe(8, 176, 0, &gObj_64x64, 0x2a60); //draw minimap

	//check if player is in a zone
	int posX = CurrentProc->sFocusPtX;
	int posY = CurrentProc->sFocusPtY;

	u8 loc = 0;

	if ((posY > 170) && (posY < 854) && (posX > 0) && (posX < 1024)) {
		ObjInsertSafe(8, (176 + (posX>>4)), (posY-170)>>4, &gObj_8x8, 0xca60); //draw cursor on minimap
		posX >>= 6;
		posY = (posY-170)>>6;
		loc = WorldMapNodes[posY][posX];
	};
	CurrentProc->location = translatedLocations[loc];
	if (loc>0) {
		ObjInsertSafe(8, 0x10, 0x10, &gObj_32x8, (0xca3c+(loc<<2))); //draw in the top corner if we're there
	};
};

Point getPLeft(int camera_x, int camera_y, int angle, int zdist){
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


void Render(SoarProc* CurrentProc){
	int posX = CurrentProc->sPlayerPosX;
	int posY = CurrentProc->sPlayerPosY;
	int angle = CurrentProc->sPlayerYaw;
	int tangent = (angle+4)&0xF;
	int altitude = (CurrentProc->sPlayerPosZ);

	u8 yBuffer[MODE5_HEIGHT];

	//for altitude layers
	altitude -= CAMERA_MIN_HEIGHT;
	altitude /= CAMERA_Z_STEP;

	// CpuFastFill16(SKY_COLOUR, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //draw skybox
	LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	CpuFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer

	
	//drawing front to back
	for (int zdist = MIN_Z_DISTANCE+(altitude<<2); zdist<MAX_Z_DISTANCE; zdist+=INC_ZSTEP){
	// for (int zdist = MAX_Z_DISTANCE; zdist>MIN_Z_DISTANCE; zdist-=INC_ZSTEP){


		Point pleft = getPLeft(posX, posY, angle, zdist); //assume facing north and 90deg fov
		Point pright = getPLeft(posX, posY, tangent, zdist); //do the same but with 90 deg clockwise rotation.
		int dx = (pright.x - pleft.x)<<1; //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
		int dy = (pright.y - pleft.y)<<1; //was 8 and 7 but??? TODO optimise out the division.
		int fogmask = 0;
		if (zdist < (MAX_Z_DISTANCE*0.8)) fogmask = 0; //change fog dist from >>1 to >>2
		// else if (zdist>(MAX_Z_DISTANCE-(MAX_Z_DISTANCE>>4))) fogmask = 0b011110011100111;
		// else if (zdist>(MAX_Z_DISTANCE-(MAX_Z_DISTANCE>>3))) fogmask = 0b001110001100011;
		// else fogmask = 0b000110000100001;
		else fogmask = 0b011110011100011;

		for (int i=0; i<(MODE5_HEIGHT); i++){
			Point offsetPoint = {pleft.x+((i*dx)>>8), pleft.y+((i*dy)>>8)};
			//set the focal point of the camera
			u16 clr = getPointColour(offsetPoint.x, offsetPoint.y);
			clr |= fogmask;
			if ((zdist == (MIN_Z_DISTANCE*4)) && ((i < (MODE5_HEIGHT>>1)+4) && (i > (MODE5_HEIGHT>>1)-4))) {
				clr = 0;
				if (i==(MODE5_HEIGHT>>1)){
					CurrentProc->sFocusPtX = offsetPoint.x;
					CurrentProc->sFocusPtY = offsetPoint.y;
				};
			};

			int height_on_screen = getScrHeight(offsetPoint.x, offsetPoint.y, altitude, zdist);
			if (height_on_screen>yBuffer[i]){ //only draw if that line has been higher this screen
			    DrawVerticalLine(i, yBuffer[i], height_on_screen-yBuffer[i], clr, CurrentProc->vid_page);
			    yBuffer[i] = height_on_screen;
			}
			//cel shading bit
			else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
				DrawVerticalLine(i, yBuffer[i]-1, 1, 0x0000, CurrentProc->vid_page); //draw a black border if not
			};
		};
	};

	CurrentProc->vid_page = vid_flip(CurrentProc->vid_page);
};

void DrawVerticalLine(int xcoord, int ystart, int ylen, u16 color, u16* vid_page){
	if ((ylen<0)||(ystart>MODE5_WIDTH)) return; //don't bother drawing negatives
	if ((ystart + ylen) > MODE5_WIDTH) ylen = MODE5_WIDTH - ystart; //never draw higher than screen
	int offset = (xcoord<<5) + (xcoord<<7)+(ystart);  //shifting to replace multiplication by MODE5_WIDTH
	u16* base = vid_page + (offset);
	CpuFill16(color, base, (ylen<<1));
}

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
	};
};

