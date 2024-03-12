// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fccanvas.pas' rev: 11.00

#ifndef FccanvasHPP
#define FccanvasHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccanvas
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TwwRectSide { rsLeft, rsTop, rsRight, rsBottom };
#pragma option pop

typedef Set<TwwRectSide, rsLeft, rsBottom>  TwwRectSides;

class DELPHICLASS TfcCanvas;
class PASCALIMPLEMENTATION TfcCanvas : public Controls::TControlCanvas 
{
	typedef Controls::TControlCanvas inherited;
	
public:
	HIDESBASE void __fastcall Refresh(void);
	Types::TRect __fastcall DrawText(AnsiString AText, const Types::TRect &ARect, int Style);
	void __fastcall DottedLine(const Types::TPoint &p1, const Types::TPoint &p2);
	void __fastcall VCenterDrawText(AnsiString AText, const Types::TRect &ARect, int Style);
	void __fastcall CenterDraw(Graphics::TGraphic* SourceBitmap, const Types::TRect &ClipRect);
	void __fastcall CenterRect(Graphics::TBitmap* SourceBitmap, const Types::TRect &SourceRect, const Types::TRect &ClipRect);
	void __fastcall DisabledDraw(int X, int Y, Graphics::TBitmap* Bitmap);
	void __fastcall FrameRectPen(const Types::TRect &ARect);
	void __fastcall ClearRect(const Types::TRect &ARect, Graphics::TGraphic* AGraphic, bool Stretch, Graphics::TColor FillColor);
	void __fastcall TileDraw(Graphics::TBitmap* SourceBitmap);
	void __fastcall Dither(const Types::TRect &r, Graphics::TBitmap* ABrush);
	void __fastcall DrawFrameControl(const Types::TRect &r, int uType, int uState);
	void __fastcall ParseDraw(const Types::TRect &DestRect, Graphics::TBitmap* ABitmap, int NumImages, int ImageIndex);
	void __fastcall ParseCenterDraw(const Types::TRect &DestRect, Graphics::TBitmap* ABitmap, int NumImages, int ImageIndex);
public:
	#pragma option push -w-inl
	/* TControlCanvas.Destroy */ inline __fastcall virtual ~TfcCanvas(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCanvas.Create */ inline __fastcall TfcCanvas(void) : Controls::TControlCanvas() { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const int DT_DISABLED = 0x80000;

}	/* namespace Fccanvas */
using namespace Fccanvas;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fccanvas
