#include "../src/cHacks.h"
#include "../src/soar.h"


//current cycles: 1415721

u16 iwram_clr_blend_asm(u16 a, u16 b, u32 alpha);

void NewWMLoop(SoarProc* CurrentProc){

	UpdateSprites(CurrentProc);
	thumb_loop(CurrentProc);
	Render(CurrentProc); //draw and then flip
	FPS_COUNTER += 1;
};

static inline u16 getPointColour(int ptx, int pty, int sunsetVal){
	if ((sunsetVal > 0) & (sunsetVal<8))
	{
		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
		u16 clr2 = colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
		u16 clr1 = colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
		return iwram_clr_blend_asm(clr1, clr2, sunsetVal);
	};
	if (sunsetVal){
		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR_SUNSET;
		return colourMap_sunset[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	}
	else {
		if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return SEA_COLOUR;
		return colourMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
	};
};

static inline int getPtHeight(int ptx, int pty){
	if((ptx >= MAP_DIMENSIONS)||(pty >= MAP_DIMENSIONS)||(ptx<0)||(pty<0)) return 0;
	return heightMap[(pty<<MAP_DIMENSIONS_LOG2)+ptx];
};

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
};

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
	#ifdef __FPSCOUNT__
	ObjInsertSafe(8, 0, 0, &gObj_8x8, (0xcaa1 + (FPS_CURRENT))); //fps counter
	#endif
	};


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

	Point pleft = {camera_x + pleftmatrix[angle][zdist], camera_y + pleftmatrix[(-angle)&0xF][zdist]};
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
	int sky;
	int sunsetVal = CurrentProc->sunsetVal;
	u16 fogclr;

	sky = skies[(sunsetVal)>>1];

	CpuFastCopy((int*)(sky) + (((angle<<5) + (angle<<7)<<4) + (altitude<<1) - 100), CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1));

	//88k cycles up to here

	// CpuFastFill16(SKY_COLOUR, CurrentProc->vid_page, (MODE5_WIDTH*MODE5_HEIGHT<<1)); //draw skybox
	// LZ77UnCompVram(&SkyBG, CurrentProc->vid_page);
	CpuFastFill16(0, yBuffer, (MODE5_HEIGHT)); //clear ybuffer

	// int fogmask = 0b011110011100011;
	fogclr = fogClrs[sunsetVal>>1];
	//drawing front to back
	for (int zdist = MIN_Z_DISTANCE+(altitude<<1);
		zdist<((MAX_Z_DISTANCE)+((altitude)<<4))-128;
		zdist+=INC_ZSTEP){
	// for (int zdist = MAX_Z_DISTANCE; zdist>MIN_Z_DISTANCE; zdist-=INC_ZSTEP){


		Point pleft = getPLeft(posX, posY, angle, zdist); //assume facing north and 90deg fov
		Point pright = getPLeft(posX, posY, tangent, zdist); //do the same but with 90 deg clockwise rotation.
		int dx = (pright.x - pleft.x); //make it fixed point (division by MODE5_HEIGHT is the same as rsh 7)
		int dy = (pright.y - pleft.y); //was 8 and 7 but??? TODO optimise out the division.
		// int trunc_val = (zdist>>7);

		for (int i=0; i<(MODE5_HEIGHT); i++)
		{
			Point offsetPoint = {pleft.x+((i*dx)>>7), pleft.y+((i*dy)>>7)};
			// if (trunc_val){
			// 	offsetPoint.x = (offsetPoint.x>>trunc_val)<<trunc_val; //truncate
			// 	offsetPoint.y = (offsetPoint.y>>trunc_val)<<trunc_val;
			// }
			
			if (yBuffer[i]<MODE5_WIDTH) //don't bother drawing if the screen is filled - tiny speedup
			{
				int height_on_screen = getScrHeight(offsetPoint.x, offsetPoint.y, altitude, zdist);
				if (height_on_screen == 0) i += 4; //skip ahead a few columns if 0 height
				else {
					int ylen = height_on_screen - yBuffer[i];
					if (ylen>0){ //only draw if that line has been higher this screen
						//only fetch the colour if we're actually drawing!
						u16 clr = 0; //default to shadow
						if (!((zdist == (SHADOW_DISTANCE)) && ((i < (MODE5_HEIGHT/2)+4) && (i > (MODE5_HEIGHT/2)-4))))
						{
							clr = getPointColour(offsetPoint.x, offsetPoint.y, sunsetVal); //if not in shadow
						    if (zdist > (FOG_DISTANCE)) clr = iwram_clr_blend_asm(clr, fogclr, (zdist - (FOG_DISTANCE))>>5); //if in fog
						}
					    DrawVerticalLine(i, yBuffer[i], ylen, clr, CurrentProc->vid_page);
					    yBuffer[i] = height_on_screen;
					}
					//cel shading bit
					else if ((yBuffer[i] - height_on_screen)>CEL_SHADE_THRESHOLD) {
						*(u16*)((CurrentProc->vid_page) + (i<<5) + (i<<7) + (yBuffer[i] - 1)) = 0;
					};
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


