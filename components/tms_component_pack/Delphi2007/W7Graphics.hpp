// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7graphics.pas' rev: 11.00

#ifndef W7graphicsHPP
#define W7graphicsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7graphics
{
//-- type declarations -------------------------------------------------------
typedef _TRIVERTEX *PTriVertex;

typedef _TRIVERTEX  TTriVertex;

#pragma option push -b-
enum TW7ArrowType { atDown, atUp, atLeft, atRight };
#pragma option pop

typedef float __fastcall (*TFilterProc)(float Value);

#pragma pack(push,4)
struct TContributor
{
	
public:
	int pixel;
	float weight;
} ;
#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall DrawW7Arrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y, TW7ArrowType ArrowType);
extern PACKAGE void __fastcall DrawDownArrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y);
extern PACKAGE void __fastcall DrawUpArrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y);
extern PACKAGE void __fastcall DrawLeftArrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y);
extern PACKAGE void __fastcall DrawRightArrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y);
extern PACKAGE Graphics::TColor __fastcall AlphaBlendPixel(Graphics::TColor Pixel, Graphics::TColor BackgroundPixel, Byte Alpha);
extern PACKAGE void __fastcall AlphaBlendBitmap(Graphics::TBitmap* Source, Graphics::TCanvas* Destination, const Types::TRect &DestRect, Byte Opacity, bool Ignore32Bit = false)/* overload */;
extern PACKAGE void __fastcall AlphaBlendBitmap(Graphics::TBitmap* Source, const Types::TRect &SourceRect, Graphics::TCanvas* Destination, const Types::TRect &DestRect, Byte Opacity, bool Ignore32Bit = false)/* overload */;
extern PACKAGE void __fastcall DrawGradient(Graphics::TCanvas* ACanvas, Graphics::TColor AStartColor, Graphics::TColor AEndColor, const Types::TRect &ARect, bool Vertical);
extern PACKAGE void __fastcall DrawEllipticGradient(Graphics::TCanvas* Canvas, Graphics::TColor StartColor, Graphics::TColor EndColor, const Types::TRect &DstRect);
extern PACKAGE void __fastcall DrawHorizontalGradient(Graphics::TCanvas* Canvas, Graphics::TColor StartColor, Graphics::TColor EndColor, const Types::TRect &DstRect);
extern PACKAGE void __fastcall DrawVerticalGradient(Graphics::TCanvas* Canvas, Graphics::TColor StartColor, Graphics::TColor EndColor, const Types::TRect &DstRect);
extern PACKAGE void __fastcall DrawAlphaGradient(Graphics::TCanvas* Canvas, Graphics::TBitmap* Source, Byte StartValue, Byte EndValue, const Types::TRect &DstRect, bool Vertical);

}	/* namespace W7graphics */
using namespace W7graphics;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7graphics
