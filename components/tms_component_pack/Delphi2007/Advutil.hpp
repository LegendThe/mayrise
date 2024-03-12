// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advutil.pas' rev: 11.00

#ifndef AdvutilHPP
#define AdvutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advutil
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAutoType { atNumeric, atFloat, atString, atDate, atTime, atScientific };
#pragma option pop

#pragma option push -b-
enum TTextType { ttText, ttHTML, ttRTF, ttFormula, ttURL, ttUnicode };
#pragma option pop

#pragma option push -b-
enum TGradientPart { gpFull, gpLeft, gpRight, gpMiddle };
#pragma option pop

#pragma option push -b-
enum TCellShape { csRectangle, csCircle, csTriangleLeft, csTriangleRight, csTriangleUp, csTriangleDown, csDiamond, csLineVert, csLineHorz, csRoundRect, csEllips, csSquare, csRoundSquare, csStar, csArrowUp, csArrowDown, csArrowLeft, csArrowRight, csHalfStar };
#pragma option pop

#pragma option push -b-
enum TControlType { ctButton, ctSpin, ctCombo };
#pragma option pop

#pragma option push -b-
enum TControlDrawStyle { cdsXPTheme, cdsClassic, cdsFlat, cdsMetro };
#pragma option pop

#pragma option push -b-
enum TControlState { csNormal, csHover, csDown, csDisabled };
#pragma option pop

typedef Set<char, 0, 255>  TCharSet;

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
	Graphics::TColor FontColor;
	bool CompletionSmooth;
	bool ShowGradient;
	int Steps;
	int Position;
	Graphics::TColor BackgroundColor;
	TGaugeOrientation Orientation;
} ;
#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall DrawSelectionGradient(Graphics::TCanvas* Canvas, Graphics::TColor color1, Graphics::TColor color2, Graphics::TColor mircolor1, Graphics::TColor mircolor2, Graphics::TColor linecolortop, Graphics::TColor linecolorbottom, Graphics::TColor bordercolor, Graphics::TColor edgecolor, Graphics::TColor bkgcolor, const Types::TRect &r, TGradientPart part);
extern PACKAGE AnsiString __fastcall CSVQuotes(const AnsiString S);
extern PACKAGE int __fastcall CheckLimits(int Value, int LowLimit, int UpLimit);
extern PACKAGE Graphics::TColor __fastcall DarkenColor(Graphics::TColor Color);
extern PACKAGE Graphics::TColor __fastcall ChangeColorPerc(Graphics::TColor Color, int Perc);
extern PACKAGE int __fastcall FIPos(AnsiString su, AnsiString s);
extern PACKAGE int __fastcall VarCharPos(char ch, const AnsiString s, int &Res);
extern PACKAGE int __fastcall VarCharPosNC(char ch, const AnsiString s, int &Res);
extern PACKAGE int __fastcall CharPos(char ch, const AnsiString s);
extern PACKAGE bool __fastcall IsInGridRect(const Grids::TGridRect &rc, int c, int r);
extern PACKAGE AnsiString __fastcall GetToken(AnsiString &s, AnsiString separator);
extern PACKAGE int __fastcall Max(int i1, int i2);
extern PACKAGE int __fastcall Min(int i1, int i2);
extern PACKAGE AnsiString __fastcall StringListToText(Classes::TStringList* st);
extern PACKAGE int __fastcall VarPos(AnsiString su, AnsiString s, int &respos);
extern PACKAGE char __fastcall FirstChar(const TCharSet &charset, AnsiString s, int &spos);
extern PACKAGE bool __fastcall NameToCell(AnsiString s, Types::TPoint &cell);
extern PACKAGE bool __fastcall IsURL(const AnsiString s);
extern PACKAGE void __fastcall StripURLProtocol(AnsiString &s);
extern PACKAGE TTextType __fastcall TextType(AnsiString s, bool allowhtml);
extern PACKAGE bool __fastcall CheckNum(char ch);
extern PACKAGE bool __fastcall CheckSignedNum(char ch);
extern PACKAGE AnsiString __fastcall RemoveSeps(AnsiString s);
extern PACKAGE AnsiString __fastcall HTMLLineBreaks(AnsiString s);
extern PACKAGE AnsiString __fastcall HTMLColor(unsigned l);
extern PACKAGE TAutoType __fastcall IsType(AnsiString s);
extern PACKAGE AnsiString __fastcall CLFToLF(AnsiString s);
extern PACKAGE AnsiString __fastcall LFToCLF(AnsiString s);
extern PACKAGE void __fastcall StringToPassword(AnsiString &s, char passwordchar);
extern PACKAGE void __fastcall StringToOem(AnsiString &s);
extern PACKAGE void __fastcall OemToString(AnsiString &s);
extern PACKAGE AnsiString __fastcall DoubleToSingleChar(char ch, const AnsiString s);
extern PACKAGE void __fastcall LineFeedsToCSV(AnsiString &s);
extern PACKAGE void __fastcall LineFeedsToCSVNQ(AnsiString &s);
extern PACKAGE void __fastcall CSVToLineFeeds(AnsiString &s);
extern PACKAGE void __fastcall LineFeedsToJava(AnsiString &s);
extern PACKAGE void __fastcall JavaToLineFeeds(AnsiString &s);
extern PACKAGE bool __fastcall MatchStrEx(AnsiString s1, AnsiString s2, bool DoCase);
extern PACKAGE bool __fastcall MatchStr(AnsiString s1, AnsiString s2, bool DoCase);
extern PACKAGE bool __fastcall Matches(char * s0a, char * s1a);
extern PACKAGE AnsiString __fastcall LfToFile(AnsiString s);
extern PACKAGE AnsiString __fastcall FileToLf(AnsiString s, bool multiline);
extern PACKAGE AnsiString __fastcall GetNextLine(AnsiString &s, bool multiline);
extern PACKAGE int __fastcall LinesInText(AnsiString s, bool multiline);
extern PACKAGE AnsiString __fastcall RectString(const Types::TRect &r);
extern PACKAGE AnsiString __fastcall FixDecimalSeparator(AnsiString s);
extern PACKAGE System::TDateTime __fastcall GetNextDate(System::TDateTime d, Word dye, Word dmo, Word dda, System::TDateTime dtv);
extern PACKAGE void __fastcall DrawBitmapResourceTransp(Graphics::TCanvas* Canvas, Graphics::TColor bkColor, const Types::TRect &r, AnsiString ResName);
extern PACKAGE void __fastcall DrawBitmapTransp(Graphics::TCanvas* Canvas, Graphics::TBitmap* bmp, Graphics::TColor bkcolor, const Types::TRect &r);
extern PACKAGE int __fastcall SinglePos(char p, AnsiString s, int &sp);
extern PACKAGE int __fastcall NumSingleChar(char p, AnsiString s);
extern PACKAGE int __fastcall NumChar(char p, AnsiString s);
extern PACKAGE int __fastcall NumCharInStr(char p, AnsiString s);
extern PACKAGE AnsiString __fastcall LineFeedsToXLS(AnsiString s);
extern PACKAGE AnsiString __fastcall CRToLF(AnsiString s);
extern PACKAGE AnsiString __fastcall ShiftCase(AnsiString Name);
extern PACKAGE System::TDateTime __fastcall StrToShortdateUS(AnsiString s);
extern PACKAGE System::TDateTime __fastcall StrToShortDateEU(AnsiString s);
extern PACKAGE void __fastcall DrawErrorLines(Controls::TWinControl* Parent, Graphics::TCanvas* Canvas, AnsiString TmpStr, const Types::TRect &Rect, int Height, int ErrPos, int ErrLen);
extern PACKAGE void __fastcall DrawRangeIndicator(Graphics::TCanvas* Canvas, const Types::TRect &r, int Value, int Range, bool ShowValue, Graphics::TColor NegColor, Graphics::TColor PosColor);
extern PACKAGE void __fastcall DrawProgressLin(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color1, Graphics::TColor TColor1, Graphics::TColor Color2, Graphics::TColor TColor2, double pd, int Mx, int My, int Min, int Max, AnsiString Fmt, Graphics::TColor BorderColor, bool print);
extern PACKAGE void __fastcall DrawProgressPie(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color, int p, bool print);
extern PACKAGE void __fastcall DrawGradient(Graphics::TCanvas* Canvas, Graphics::TColor FromColor, Graphics::TColor ToColor, int Steps, const Types::TRect &R, bool Direction);
extern PACKAGE void __fastcall DrawVistaGradient(Graphics::TCanvas* ACanvas, const Types::TRect &ARect, Graphics::TColor ColorFrom, Graphics::TColor ColorTo, Graphics::TColor ColorMirrorFrom, Graphics::TColor ColorMirrorTo, bool Direction, Graphics::TColor BorderColor, bool LeftRightBorder = false, bool Fill = true);
extern PACKAGE Graphics::TColor __fastcall GradientAt(Graphics::TColor FromColor, Graphics::TColor ToColor, int Left, int Right, int Pos);
extern PACKAGE void __fastcall DrawComboButton(Graphics::TCanvas* Canvas, unsigned Handle, const Types::TRect &ARect, TControlDrawStyle AControlStyle, TControlState AState, const Advstyleif::TColorTones &ATones);
extern PACKAGE void __fastcall DrawButton(Graphics::TCanvas* Canvas, unsigned AHandle, const Types::TRect &ARect, TControlDrawStyle AControlStyle, TControlState AState, const Advstyleif::TColorTones &ATones);
extern PACKAGE void __fastcall DrawSpinButtons(Graphics::TCanvas* Canvas, unsigned Handle, const Types::TRect &ARect, TControlDrawStyle AControlStyle, TControlState AState, const Advstyleif::TColorTones &ATones);
extern PACKAGE WideString __fastcall DecodeWideStr(AnsiString s);
extern PACKAGE AnsiString __fastcall EncodeWideStr(WideString s);
extern PACKAGE int __fastcall StrPosWide(WideString SubStr, WideString Str);
extern PACKAGE bool __fastcall IsDateStr(AnsiString s);
extern PACKAGE void __fastcall MakeFragment(AnsiString &HTML);
extern PACKAGE bool __fastcall DynaLink_UpdateLayeredWindow(unsigned hwnd, unsigned hdcDst, Types::PPoint pptDst, Types::PPoint size, unsigned hdcSrc, Types::PPoint pptSrc, unsigned crKey, _BLENDFUNCTION &pblend, unsigned dwFlags);
extern PACKAGE bool __fastcall DynaLink_SetLayeredWindowAttributes(unsigned HWND, unsigned crKey, Byte bAlpha, unsigned dwFlags);
extern PACKAGE void __fastcall DrawTriangle(Graphics::TCanvas* Canvas, int X, int Y, Graphics::TColor Color);
extern PACKAGE void __fastcall DrawGauge(Graphics::TCanvas* Canvas, const Types::TRect &R, int Position, const TGaugeSettings &Settings);
extern PACKAGE void __fastcall DrawShape(Graphics::TCanvas* Canvas, int X, int Y, int Width, int Height, TCellShape Shape, Graphics::TColor FillColor, Graphics::TColor LineColor);
extern PACKAGE bool __fastcall MakeHTMLHyperlink(const AnsiString Value, const AnsiString LinkType, AnsiString &ValueWithLink);

}	/* namespace Advutil */
using namespace Advutil;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advutil
