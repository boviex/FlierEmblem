
//{{BLOCK(wm)

//======================================================================
//
//	wm, 512x512@8, 
//	+ palette 16 entries, not compressed
//	+ 471 tiles (t reduced) lz77 compressed
//	+ affine map, lz77 compressed, 64x64 
//	Total size: 32 + 4488 + 1064 = 5584
//
//	Time-stamp: 2021-08-25, 22:46:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.6
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WM_H
#define GRIT_WM_H

#define wmTilesLen 4488
extern const unsigned short wmTiles[2244];

#define wmMapLen 1064
extern const unsigned short wmMap[532];

#define wmPalLen 32
extern const unsigned short wmPal[16];

#endif // GRIT_WM_H

//}}BLOCK(wm)
