// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7progressbars.pas' rev: 11.00

#ifndef W7progressbarsHPP
#define W7progressbarsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7progressbars
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TW7ProgressBarStyle { pbsBlue, pbsRed, pbsGreen, pbsCustom };
#pragma option pop

#pragma pack(push,4)
struct TW7ProgressBarColors
{
	
public:
	Graphics::TColor TopTopLeftColor;
	Graphics::TColor TopTopCenterColor;
	Graphics::TColor TopTopRightColor;
	Graphics::TColor TopBottomLeftColor;
	Graphics::TColor TopBottomCenterColor;
	Graphics::TColor TopBottomRightColor;
	Graphics::TColor BottomTopLeftColor;
	Graphics::TColor BottomTopCenterColor;
	Graphics::TColor BottomTopRightColor;
	Graphics::TColor BottomBottomLeftColor;
	Graphics::TColor BottomBottomCenterColor;
	Graphics::TColor BottomBottomRightColor;
	Graphics::TColor TopBorderColor;
	Graphics::TColor BottomBorderColor;
	Graphics::TColor LeftTopBorderColor;
	Graphics::TColor LeftBottomBorderColor;
	Graphics::TColor RightTopBorderColor;
	Graphics::TColor RightBottomBorderColor;
} ;
#pragma pack(pop)

class DELPHICLASS TW7CustomProgressBar;
class PASCALIMPLEMENTATION TW7CustomProgressBar : public W7classes::TW7GraphicControl 
{
	typedef W7classes::TW7GraphicControl inherited;
	
private:
	__int64 FMin;
	__int64 FMax;
	__int64 FPosition;
	Graphics::TColor FBackgroundColor;
	bool FTransparent;
	TW7ProgressBarStyle FStyle;
	TW7ProgressBarColors FColors;
	TW7ProgressBarColors FInternalColors;
	Graphics::TBitmap* FProgressEtalon;
	void __fastcall SetMin(__int64 Value);
	void __fastcall SetMax(__int64 Value);
	void __fastcall SetPosition(__int64 Value);
	void __fastcall SetBackgroundColor(Graphics::TColor Value);
	void __fastcall SetTransparent(bool Value);
	void __fastcall SetStyle(TW7ProgressBarStyle Value);
	void __fastcall SetColors(const TW7ProgressBarColors &Value);
	
protected:
	void __fastcall DrawBorder(void);
	void __fastcall DrawProgress(int Progress);
	virtual void __fastcall Paint(void);
	void __fastcall ActivateStyle(TW7ProgressBarStyle Style);
	void __fastcall CreateEtalon(void);
	
public:
	__fastcall virtual TW7CustomProgressBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomProgressBar(void);
	__property __int64 Min = {read=FMin, write=SetMin};
	__property __int64 Max = {read=FMax, write=SetMax};
	__property __int64 Position = {read=FPosition, write=SetPosition};
	__property Graphics::TColor BackgroundColor = {read=FBackgroundColor, write=SetBackgroundColor, nodefault};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, nodefault};
	__property TW7ProgressBarStyle Style = {read=FStyle, write=SetStyle, nodefault};
	__property TW7ProgressBarColors Colors = {read=FColors, write=SetColors};
};


class DELPHICLASS TW7ProgressBar;
class PASCALIMPLEMENTATION TW7ProgressBar : public TW7CustomProgressBar 
{
	typedef TW7CustomProgressBar inherited;
	
__published:
	__property Min ;
	__property Max ;
	__property Position ;
	__property BackgroundColor ;
	__property Transparent ;
	__property Style ;
	
public:
	__property Colors ;
public:
	#pragma option push -w-inl
	/* TW7CustomProgressBar.Create */ inline __fastcall virtual TW7ProgressBar(Classes::TComponent* AOwner) : TW7CustomProgressBar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomProgressBar.Destroy */ inline __fastcall virtual ~TW7ProgressBar(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7progressbars */
using namespace W7progressbars;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7progressbars
