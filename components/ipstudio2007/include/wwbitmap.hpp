// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwbitmap.pas' rev: 11.00

#ifndef WwbitmapHPP
#define WwbitmapHPP

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
#include <Wwchangelink.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwbitmap
{
//-- type declarations -------------------------------------------------------
struct TwwColor
{
	
public:
	Byte b;
	Byte g;
	Byte r;
} ;

typedef TwwColor *PwwColor;

typedef TwwColor TwwLine[1];

typedef TwwLine *PwwLine;

typedef TwwLine *TwwPLines[1];

typedef TwwPLines *PwwPLines;

class DELPHICLASS TwwBitmap;
class PASCALIMPLEMENTATION TwwBitmap : public Graphics::TGraphic 
{
	typedef Graphics::TGraphic inherited;
	
private:
	bool FSmoothStretching;
	Graphics::TColor FTransparentColor;
	int FWidth;
	int FHeight;
	int FGap;
	Graphics::TBitmap* FMaskBitmap;
	int FRowInc;
	int FSize;
	void *FBits;
	int FHandle;
	HDC FDC;
	Graphics::TCanvas* FCanvas;
	void *FMemoryImage;
	int FMemorySize;
	#pragma pack(push,1)
	tagSIZE FMemoryDim;
	#pragma pack(pop)
	Graphics::TPixelFormat FPixelFormat;
	HPALETTE FPalette;
	bool FRespectPalette;
	bool FUseHalftonePalette;
	bool FIgnoreChange;
	Classes::TList* FChangeLinks;
	#pragma pack(push,1)
	tagBITMAPINFO bmInfo;
	#pragma pack(pop)
	#pragma pack(push,1)
	tagBITMAPINFOHEADER bmHeader;
	#pragma pack(pop)
	bool __fastcall GetSleeping(void);
	void __fastcall InitHeader(void);
	
protected:
	bool Assigning;
	bool SkipPalette;
	virtual void __fastcall RestoreBitmapPalette(Graphics::TCanvas* ACanvas, HPALETTE OldPalette);
	virtual void __fastcall SelectBitmapPalette(Graphics::TCanvas* ACanvas, HPALETTE &OldPalette);
	virtual bool __fastcall GetEmpty(void);
	virtual int __fastcall GetHeight(void);
	virtual int __fastcall GetWidth(void);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	virtual void __fastcall Changed(System::TObject* Sender);
	virtual void __fastcall Draw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	virtual void __fastcall SetHeight(int Value);
	virtual void __fastcall SetWidth(int Value);
	virtual void __fastcall CleanUp(void);
	virtual void __fastcall Initialize(void);
	virtual void __fastcall NotifyChanges(void);
	virtual void __fastcall PaletteNeeded(void);
	__property int Gap = {read=FGap, nodefault};
	__property int RowInc = {read=FRowInc, nodefault};
	__property HDC DC = {read=FDC, nodefault};
	
public:
	Variant Patch;
	TwwPLines *Pixels;
	tagRGBQUAD Colors[256];
	__fastcall virtual TwwBitmap(void);
	__fastcall virtual ~TwwBitmap(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall RegisterChanges(Wwchangelink::TwwChangeLink* ChangeLink);
	virtual void __fastcall UnRegisterChanges(Wwchangelink::TwwChangeLink* ChangeLink);
	virtual void __fastcall Clear(void);
	virtual void __fastcall FreeMemoryImage(void);
	virtual void __fastcall LoadBlank(int AWidth, int AHeight);
	virtual void __fastcall LoadFromBitmap(Graphics::TBitmap* Bitmap);
	virtual void __fastcall LoadFromJPEG(Graphics::TGraphic* JPEG);
	virtual void __fastcall LoadFromClipboardFormat(Word AFormat, unsigned AData, HPALETTE APalette);
	virtual void __fastcall LoadFromGraphic(Graphics::TGraphic* Graphic);
	virtual void __fastcall LoadFromMemory(void * ABits, int ASize, const tagSIZE &Dimensions);
	virtual void __fastcall LoadFromStream(Classes::TStream* Stream);
	virtual void __fastcall SaveToBitmap(Graphics::TBitmap* Bitmap);
	virtual void __fastcall SaveToClipboardFormat(Word &AFormat, unsigned &AData, HPALETTE &APalette);
	virtual void __fastcall SaveToStream(Classes::TStream* Stream);
	virtual void __fastcall SetSizeInternal(const int AWidth, const int AHeight);
	Graphics::TBitmap* __fastcall GetMaskBitmap(void);
	PwwPLines __fastcall CopyPixels(void);
	void __fastcall Fill(Graphics::TColor Color);
	virtual void __fastcall Resize(int AWidth, int AHeight);
	virtual void __fastcall Sleep(void);
	virtual void __fastcall SmoothStretchDraw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	virtual void __fastcall StretchDraw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	virtual void __fastcall TileDraw(Graphics::TCanvas* ACanvas, const Types::TRect &ARect);
	virtual void __fastcall TransparentDraw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	virtual void __fastcall Wake(void);
	void __fastcall AlphaBlend(TwwBitmap* Bitmap, int Alpha, bool Stretch);
	virtual void __fastcall Blur(int Amount);
	virtual void __fastcall Contrast(int Amount);
	virtual void __fastcall Emboss(void);
	virtual void __fastcall Flip(bool Horizontal);
	virtual void __fastcall GaussianBlur(int Amount);
	virtual void __fastcall Grayscale(void);
	virtual void __fastcall Invert(void);
	virtual void __fastcall Brightness(int Amount);
	virtual void __fastcall Mask(TwwColor MaskColor);
	virtual void __fastcall ChangeColor(TwwColor OldColor, TwwColor NewColor);
	virtual void __fastcall ColorTint(int ra, int ga, int ba);
	virtual void __fastcall Colorize(int ra, int ga, int ba);
	virtual void __fastcall Rotate(const Types::TPoint &Center, Extended Angle);
	virtual void __fastcall Saturation(int Amount);
	virtual void __fastcall Sharpen(int Amount);
	virtual void __fastcall Sponge(int Amount);
	virtual void __fastcall Wave(Extended XDiv, Extended YDiv, Extended RatioVal, bool Wrap);
	__property void * Bits = {read=FBits};
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	__property int Handle = {read=FHandle, nodefault};
	__property bool IgnoreChange = {read=FIgnoreChange, write=FIgnoreChange, nodefault};
	__property Graphics::TBitmap* MaskBitmap = {read=GetMaskBitmap};
	__property bool RespectPalette = {read=FRespectPalette, write=FRespectPalette, nodefault};
	__property bool UseHalftonePalette = {read=FUseHalftonePalette, write=FUseHalftonePalette, nodefault};
	__property bool SmoothStretching = {read=FSmoothStretching, write=FSmoothStretching, nodefault};
	__property bool Sleeping = {read=GetSleeping, nodefault};
	__property int Size = {read=FSize, nodefault};
	__property Graphics::TColor TransparentColor = {read=FTransparentColor, write=FTransparentColor, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TwwColor __fastcall wwGetColor(Graphics::TColor Color);
extern PACKAGE Graphics::TColor __fastcall wwGetStdColor(TwwColor Color);
extern PACKAGE TwwColor __fastcall wwRGB(Byte r, Byte g, Byte b);
extern PACKAGE Byte __fastcall wwIntToByte(int Value);
extern PACKAGE int __fastcall wwTrimInt(int i, int Min, int Max);

}	/* namespace Wwbitmap */
using namespace Wwbitmap;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwbitmap
