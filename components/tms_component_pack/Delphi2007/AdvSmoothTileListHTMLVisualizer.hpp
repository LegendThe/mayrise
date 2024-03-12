// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothtilelisthtmlvisualizer.pas' rev: 11.00

#ifndef AdvsmoothtilelisthtmlvisualizerHPP
#define AdvsmoothtilelisthtmlvisualizerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advsmoothtilelist.hpp>	// Pascal unit
#include <Advsmoothtilelistimagevisualizer.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothtilelisthtmlvisualizer
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothTileListHTMLVisualizer;
class PASCALIMPLEMENTATION TAdvSmoothTileListHTMLVisualizer : public Advsmoothtilelistimagevisualizer::TAdvSmoothTileListImageVisualizer 
{
	typedef Advsmoothtilelistimagevisualizer::TAdvSmoothTileListImageVisualizer inherited;
	
private:
	AnsiString preva;
	
public:
	AnsiString __fastcall XYToAnchor(Advsmoothtilelist::TAdvSmoothTile* Tile, int pX, int pY);
	virtual bool __fastcall DoMouseDown(Advsmoothtilelist::TAdvSmoothTile* Tile, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall DoMouseMove(Advsmoothtilelist::TAdvSmoothTile* Tile, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall DoMouseUp(Advsmoothtilelist::TAdvSmoothTile* Tile, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, Advsmoothtilelist::TAdvSmoothTile* Tile, AnsiString Text);
public:
	#pragma option push -w-inl
	/* TAdvSmoothTileListVisualizer.Create */ inline __fastcall virtual TAdvSmoothTileListHTMLVisualizer(Classes::TComponent* AOwner) : Advsmoothtilelistimagevisualizer::TAdvSmoothTileListImageVisualizer(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvSmoothTileListHTMLVisualizer(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Advsmoothtilelisthtmlvisualizer */
using namespace Advsmoothtilelisthtmlvisualizer;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothtilelisthtmlvisualizer
