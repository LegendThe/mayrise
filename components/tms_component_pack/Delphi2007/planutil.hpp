// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planutil.pas' rev: 11.00

#ifndef PlanutilHPP
#define PlanutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Planhtml.hpp>	// Pascal unit
#include <Strutils.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planutil
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TArrowDirection { adUp, adDown, adRight, adLeft };
#pragma option pop

#pragma option push -b-
enum TVAlignment { vtaCenter, vtaTop, vtaBottom };
#pragma option pop

class DELPHICLASS TDateTimeObject;
class PASCALIMPLEMENTATION TDateTimeObject : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	System::TDateTime FDT;
	__property System::TDateTime DT = {read=FDT, write=FDT};
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TDateTimeObject(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TDateTimeObject(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDateTimeList;
class PASCALIMPLEMENTATION TDateTimeList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	System::TDateTime operator[](int index) { return Items[index]; }
	
private:
	System::TDateTime __fastcall GetDT(int index);
	void __fastcall SetDT(int index, const System::TDateTime Value);
	
public:
	__property System::TDateTime Items[int index] = {read=GetDT, write=SetDT/*, default*/};
	HIDESBASE void __fastcall Add(System::TDateTime Value);
	HIDESBASE void __fastcall Insert(int Index, System::TDateTime Value);
	HIDESBASE void __fastcall Delete(int Index);
	virtual void __fastcall Clear(void);
	__fastcall virtual ~TDateTimeList(void);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TDateTimeList(void) : Classes::TList() { }
	#pragma option pop
	
};


#pragma option push -b-
enum TGaugeOrientation { goHorizontal, goVertical };
#pragma option pop

#pragma pack(push,4)
struct TGaugeSettings
{
	
public:
	Graphics::TColor Level0Color;
	Graphics::TColor Level0ColorTo;
	Graphics::TColor Level1Color;
	Graphics::TColor Level1ColorTo;
	Graphics::TColor Level2Color;
	Graphics::TColor Level2ColorTo;
	Graphics::TColor Level3Color;
	Graphics::TColor Level3ColorTo;
	int Level1Perc;
	int Level2Perc;
	Graphics::TColor BorderColor;
	bool ShowBorder;
	bool Stacked;
	bool ShowPercentage;
	Graphics::TFont* Font;
	bool CompletionSmooth;
	bool ShowGradient;
	int Steps;
	int Position;
	Graphics::TColor BackgroundColor;
	TGaugeOrientation Orientation;
	AnsiString CompletionFormat;
} ;
#pragma pack(pop)

class DELPHICLASS TRecurrencyDialogLanguage;
class PASCALIMPLEMENTATION TRecurrencyDialogLanguage : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FCaption;
	AnsiString FExceptions;
	AnsiString FSettings;
	AnsiString FRange;
	AnsiString FRecurrencyPattern;
	AnsiString FPatternDetails;
	AnsiString FRangeFor;
	AnsiString FRangeOccurences;
	AnsiString FRangeInfinite;
	AnsiString FRangeUntil;
	AnsiString FFreqWeekly;
	AnsiString FFreqDaily;
	AnsiString FFreqHourly;
	AnsiString FFreqYearly;
	AnsiString FFreqNone;
	AnsiString FFreqMonthly;
	AnsiString FButtonRemove;
	AnsiString FButtonAdd;
	AnsiString FButtonClear;
	AnsiString FButtonCancel;
	AnsiString FButtonOK;
	AnsiString FEveryDay;
	AnsiString FEveryWeekDay;
	AnsiString FDayFriday;
	AnsiString FDayThursday;
	AnsiString FDayMonday;
	AnsiString FDayTuesday;
	AnsiString FDaySaturday;
	AnsiString FDaySunday;
	AnsiString FDayWednesday;
	AnsiString FMonthJanuary;
	AnsiString FMonthFebruary;
	AnsiString FMonthMarch;
	AnsiString FMonthApril;
	AnsiString FMonthMay;
	AnsiString FMonthJune;
	AnsiString FMonthJuly;
	AnsiString FMonthAugust;
	AnsiString FMonthSeptember;
	AnsiString FMonthOctober;
	AnsiString FMonthNovember;
	AnsiString FMonthDecember;
	AnsiString FEveryMonthDay;
	AnsiString FEveryYearDay;
	AnsiString FEvery;
	AnsiString FEveryThird;
	AnsiString FEveryFirst;
	AnsiString FEveryFourth;
	AnsiString FEverySecond;
	AnsiString FDayWeekend;
	AnsiString FDayWeekday;
	AnsiString FInterval;
	
public:
	__fastcall TRecurrencyDialogLanguage(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property AnsiString Settings = {read=FSettings, write=FSettings};
	__property AnsiString Exceptions = {read=FExceptions, write=FExceptions};
	__property AnsiString RecurrencyPattern = {read=FRecurrencyPattern, write=FRecurrencyPattern};
	__property AnsiString PatternDetails = {read=FPatternDetails, write=FPatternDetails};
	__property AnsiString Range = {read=FRange, write=FRange};
	__property AnsiString RangeInfinite = {read=FRangeInfinite, write=FRangeInfinite};
	__property AnsiString RangeUntil = {read=FRangeUntil, write=FRangeUntil};
	__property AnsiString RangeFor = {read=FRangeFor, write=FRangeFor};
	__property AnsiString RangeOccurences = {read=FRangeOccurences, write=FRangeOccurences};
	__property AnsiString FreqNone = {read=FFreqNone, write=FFreqNone};
	__property AnsiString FreqHourly = {read=FFreqHourly, write=FFreqHourly};
	__property AnsiString FreqDaily = {read=FFreqDaily, write=FFreqDaily};
	__property AnsiString FreqWeekly = {read=FFreqWeekly, write=FFreqWeekly};
	__property AnsiString FreqMonthly = {read=FFreqMonthly, write=FFreqMonthly};
	__property AnsiString FreqYearly = {read=FFreqYearly, write=FFreqYearly};
	__property AnsiString ButtonAdd = {read=FButtonAdd, write=FButtonAdd};
	__property AnsiString ButtonClear = {read=FButtonClear, write=FButtonClear};
	__property AnsiString ButtonRemove = {read=FButtonRemove, write=FButtonRemove};
	__property AnsiString ButtonOK = {read=FButtonOK, write=FButtonOK};
	__property AnsiString ButtonCancel = {read=FButtonCancel, write=FButtonCancel};
	__property AnsiString Every = {read=FEvery, write=FEvery};
	__property AnsiString EveryDay = {read=FEveryDay, write=FEveryDay};
	__property AnsiString EveryWeekDay = {read=FEveryWeekDay, write=FEveryWeekDay};
	__property AnsiString EveryMonthDay = {read=FEveryMonthDay, write=FEveryMonthDay};
	__property AnsiString EveryYearDay = {read=FEveryYearDay, write=FEveryYearDay};
	__property AnsiString EveryFirst = {read=FEveryFirst, write=FEveryFirst};
	__property AnsiString EverySecond = {read=FEverySecond, write=FEverySecond};
	__property AnsiString EveryThird = {read=FEveryThird, write=FEveryThird};
	__property AnsiString EveryFourth = {read=FEveryFourth, write=FEveryFourth};
	__property AnsiString Interval = {read=FInterval, write=FInterval};
	__property AnsiString DayMonday = {read=FDayMonday, write=FDayMonday};
	__property AnsiString DayTuesday = {read=FDayTuesday, write=FDayTuesday};
	__property AnsiString DayWednesday = {read=FDayWednesday, write=FDayWednesday};
	__property AnsiString DayThursday = {read=FDayThursday, write=FDayThursday};
	__property AnsiString DayFriday = {read=FDayFriday, write=FDayFriday};
	__property AnsiString DaySaturday = {read=FDaySaturday, write=FDaySaturday};
	__property AnsiString DaySunday = {read=FDaySunday, write=FDaySunday};
	__property AnsiString DayWeekday = {read=FDayWeekday, write=FDayWeekday};
	__property AnsiString DayWeekend = {read=FDayWeekend, write=FDayWeekend};
	__property AnsiString MonthJanuary = {read=FMonthJanuary, write=FMonthJanuary};
	__property AnsiString MonthFebruary = {read=FMonthFebruary, write=FMonthFebruary};
	__property AnsiString MonthMarch = {read=FMonthMarch, write=FMonthMarch};
	__property AnsiString MonthApril = {read=FMonthApril, write=FMonthApril};
	__property AnsiString MonthMay = {read=FMonthMay, write=FMonthMay};
	__property AnsiString MonthJune = {read=FMonthJune, write=FMonthJune};
	__property AnsiString MonthJuly = {read=FMonthJuly, write=FMonthJuly};
	__property AnsiString MonthAugust = {read=FMonthAugust, write=FMonthAugust};
	__property AnsiString MonthSeptember = {read=FMonthSeptember, write=FMonthSeptember};
	__property AnsiString MonthOctober = {read=FMonthOctober, write=FMonthOctober};
	__property AnsiString MonthNovember = {read=FMonthNovember, write=FMonthNovember};
	__property AnsiString MonthDecember = {read=FMonthDecember, write=FMonthDecember};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TRecurrencyDialogLanguage(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall FixControlStyles(Controls::TControl* ctrl);
extern PACKAGE AnsiString __fastcall ColorToHtml(const Graphics::TColor Value);
extern PACKAGE bool __fastcall DynaLink_UpdateLayeredWindow(unsigned hwnd, unsigned hdcDst, Types::PPoint pptDst, Types::PPoint size, unsigned hdcSrc, Types::PPoint pptSrc, unsigned crKey, _BLENDFUNCTION &pblend, unsigned dwFlags);
extern PACKAGE bool __fastcall DynaLink_SetLayeredWindowAttributes(unsigned HWND, unsigned crKey, Byte bAlpha, unsigned dwFlags);
extern PACKAGE double __fastcall CanvasToHTMLFactor(Graphics::TCanvas* ScreenCanvas, Graphics::TCanvas* Canvas);
extern PACKAGE int __fastcall PrinterDrawString(Graphics::TCanvas* Canvas, AnsiString Value, Types::TRect &Rect, unsigned Format);
extern PACKAGE System::TDateTime __fastcall EndOfMonth(System::TDateTime dt);
extern PACKAGE Word __fastcall NextMonth(Word mo);
extern PACKAGE int __fastcall Limit(int Value, int vmin, int vmax);
extern PACKAGE void __fastcall DrawGradient(Graphics::TCanvas* Canvas, Graphics::TColor FromColor, Graphics::TColor ToColor, int Steps, const Types::TRect &R, bool Direction);
extern PACKAGE Word __fastcall DaysInMonth(Word mo, Word ye);
extern PACKAGE AnsiString __fastcall HTMLStrip(AnsiString s);
extern PACKAGE unsigned __fastcall AlignToFlag(Classes::TAlignment alignment);
extern PACKAGE unsigned __fastcall VAlignToFlag(TVAlignment VAlignment);
extern PACKAGE unsigned __fastcall WordWrapToFlag(AnsiString s, bool ww);
extern PACKAGE void __fastcall RectLine(Graphics::TCanvas* canvas, const Types::TRect &r, Graphics::TColor Color, int width);
extern PACKAGE void __fastcall RectLineEx(Graphics::TCanvas* Canvas, const Types::TRect &R, Graphics::TColor Color, int Width);
extern PACKAGE void __fastcall RectLineExEx(Graphics::TCanvas* Canvas, const Types::TRect &R, Graphics::TColor Color, int Width);
extern PACKAGE void __fastcall RectLineExExEx(Graphics::TCanvas* Canvas, const Types::TRect &R, Graphics::TColor Color, int Width);
extern PACKAGE void __fastcall RectHorz(Graphics::TCanvas* canvas, const Types::TRect &r, Graphics::TColor Color, Graphics::TColor pencolor);
extern PACKAGE void __fastcall RectHorzEx(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color, Graphics::TColor BKColor, Graphics::TColor PenColor1, Graphics::TColor PenColor2, int PenWidth, Graphics::TBrushStyle BrushStyle);
extern PACKAGE void __fastcall RectVert(Graphics::TCanvas* canvas, const Types::TRect &r, Graphics::TColor Color, Graphics::TColor pencolor);
extern PACKAGE void __fastcall RectVertEx(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color, Graphics::TColor BKColor, Graphics::TColor PenColor, int PenWidth, Graphics::TBrushStyle BrushStyle);
extern PACKAGE AnsiString __fastcall LFToCLF(AnsiString s);
extern PACKAGE void __fastcall DrawArrow(Graphics::TCanvas* Canvas, Graphics::TColor Color, int X, int Y, TArrowDirection ADir);
extern PACKAGE bool __fastcall MatchStr(AnsiString s1, AnsiString s2, bool DoCase);
extern PACKAGE void __fastcall DrawBitmapTransp(const Types::TRect &DstRect, Graphics::TCanvas* Canvas, Graphics::TBitmap* Bitmap, Graphics::TColor BKColor, const Types::TRect &SrcRect);
extern PACKAGE void __fastcall DrawBumpVert(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color);
extern PACKAGE void __fastcall DrawBumpHorz(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color);
extern PACKAGE Graphics::TColor __fastcall BlendColor(Graphics::TColor Col1, Graphics::TColor Col2, int BlendFactor);
extern PACKAGE void __fastcall DrawGauge(Graphics::TCanvas* Canvas, const Types::TRect &R, int Position, const TGaugeSettings &Settings);
extern PACKAGE void __fastcall BitmapStretch(Graphics::TBitmap* bmp, Graphics::TCanvas* Canvas, int x, int y, int width);
extern PACKAGE void __fastcall BitmapStretchHeight(Graphics::TBitmap* bmp, Graphics::TCanvas* canvas, int x, int y, int height, int width);

}	/* namespace Planutil */
using namespace Planutil;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planutil
