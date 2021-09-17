
//{{BLOCK(minimap)

//======================================================================
//
//	minimap, 64x64@4, 
//	+ palette 16 entries, not compressed
//	+ 64 tiles lz77 compressed
//	Total size: 32 + 1344 = 1376
//
//	Time-stamp: 2021-09-15, 23:12:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.6
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MINIMAP_H
#define GRIT_MINIMAP_H

#define minimapTilesLen 1344
extern const unsigned short minimapTiles[672];

#define minimapPalLen 32
extern const unsigned short minimapPal[16];

#endif // GRIT_MINIMAP_H

//}}BLOCK(minimap)
