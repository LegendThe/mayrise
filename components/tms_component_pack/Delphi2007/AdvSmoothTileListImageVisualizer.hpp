// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothtilelistimagevisualizer.pas' rev: 11.00

#ifndef AdvsmoothtilelistimagevisualizerHPP
#define AdvsmoothtilelistimagevisualizerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advsmoothtilelist.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothtilelistimagevisualizer
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothTileListImageVisualizer;
class PASCALIMPLEMENTATION TAdvSmoothTileListImageVisualizer : public Advsmoothtilelist::TAdvSmoothTileListVisualizer 
{
	typedef Advsmoothtilelist::TAdvSmoothTileListVisualizer inherited;
	
public:
	virtual void __fastcall DrawImage(Advgdip::TGPGraphics* g, Advsmoothtilelist::TAdvSmoothTile* Tile, const Advgdip::TGPRectF &R, const Advgdip::TGPRectF &RText);
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, Advsmoothtilelist::TAdvSmoothTile* Tile, AnsiString Text);
	virtual Advgdip::TGPRectF __fastcall DrawTile(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, Advsmoothtilelist::TAdvSmoothTile* Tile);
public:
	#pragma option push -w-inl
	/* TAdvSmoothTileListVisualizer.Create */ inline __fastcall virtual TAdvSmoothTileListImageVisualizer(Classes::TComponent* AOwner) : Advsmoothtilelist::TAdvSmoothTileListVisualizer(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvSmoothTileListImageVisualizer(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Advsmoothtilelistimagevisualizer */
using namespace Advsmoothtilelistimagevisualizer;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothtilelistimagevisualizer
