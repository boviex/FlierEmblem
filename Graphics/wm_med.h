
//{{BLOCK(wm_med)

//======================================================================
//
//	wm_med, 256x256@8, 
//	+ palette 64 entries, not compressed
//	+ 601 tiles (t|f|p reduced) lz77 compressed
//	+ affine map, lz77 compressed, 32x32 
//	Total size: 128 + 25276 + 436 = 25840
//
//	Time-stamp: 2021-08-26, 18:07:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.6
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WM_MED_H
#define GRIT_WM_MED_H

#define wm_medTilesLen 25276
extern const unsigned short wm_medTiles[12638];

#define wm_medMapLen 436
extern const unsigned short wm_medMap[218];

#define wm_medPalLen 128
extern const unsigned short wm_medPal[64];

#endif // GRIT_WM_MED_H

//}}BLOCK(wm_med)
