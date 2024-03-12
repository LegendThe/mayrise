// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planhtml.pas' rev: 11.00

#ifndef PlanhtmlHPP
#define PlanhtmlHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Planxpvs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planhtml
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool IsWinXP;
extern PACKAGE void __fastcall PrintBitmap(Graphics::TCanvas* Canvas, const Types::TRect &DestRect, Graphics::TBitmap* Bitmap);
extern PACKAGE AnsiString __fastcall UnFixMarkup(AnsiString su);
extern PACKAGE bool __fastcall GetControlValue(AnsiString HTML, AnsiString ControlID, AnsiString &ControlValue);
extern PACKAGE bool __fastcall SetControlValue(AnsiString &HTML, AnsiString ControlID, AnsiString ControlValue);
extern PACKAGE bool __fastcall HTMLDrawEx(Graphics::TCanvas* Canvas, AnsiString s, const Types::TRect &fr, Controls::TImageList* FImages, int XPos, int YPos, int FocusLink, int HoverLink, int ShadowOffset, bool CheckHotSpot, bool CheckHeight, bool Print, bool Selected, bool Blink, bool HoverStyle, bool WordWrap, bool Down, double ResFactor, Graphics::TColor URLColor, Graphics::TColor HoverColor, Graphics::TColor HoverFontColor, Graphics::TColor ShadowColor, AnsiString &AnchorVal, AnsiString &StripVal, AnsiString &FocusAnchor, int &XSize, int &YSize, int &HyperLinks, int &MouseLink, Types::TRect &HoverRect, Types::TRect &ControlRect, AnsiString &CID, AnsiString &CV, AnsiString &CT, Picturecontainer::THTMLPictureCache* ic, Picturecontainer::TPictureContainer* pc, unsigned WinHandle);
extern PACKAGE AnsiString __fastcall HTMLStrip(AnsiString s);
extern PACKAGE AnsiString __fastcall HTMLConvert(AnsiString s);
extern PACKAGE AnsiString __fastcall HiLight(AnsiString s, AnsiString h, AnsiString tag, bool DoCase);
extern PACKAGE AnsiString __fastcall UnHiLight(AnsiString s, AnsiString tag);

}	/* namespace Planhtml */
using namespace Planhtml;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planhtml
