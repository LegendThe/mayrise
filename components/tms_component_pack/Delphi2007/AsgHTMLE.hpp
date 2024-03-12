// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asghtmle.pas' rev: 11.00

#ifndef AsghtmleHPP
#define AsghtmleHPP

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
#include <Dialogs.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Advxpvs.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asghtmle
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool IsWinXP;
extern PACKAGE char ASG_ATTR_DELIM;
extern PACKAGE void __fastcall SetHighLightColors(Graphics::TColor AColor, Graphics::TColor ATextColor);
extern PACKAGE void __fastcall PrintBitmap(Graphics::TCanvas* Canvas, const Types::TRect &DestRect, Graphics::TBitmap* Bitmap);
extern PACKAGE AnsiString __fastcall UnFixMarkup(AnsiString su, bool SpecialChars = true);
extern PACKAGE AnsiString __fastcall FixMarkup(AnsiString su, bool SpecialChars = true);
extern PACKAGE AnsiString __fastcall FixNonBreaking(AnsiString su);
extern PACKAGE bool __fastcall HasHTMLControl(AnsiString HTML);
extern PACKAGE AnsiString __fastcall GetNextControlID(AnsiString HTML, AnsiString ControlID);
extern PACKAGE AnsiString __fastcall ClearRadioControls(AnsiString HTML);
extern PACKAGE bool __fastcall GetControlValue(AnsiString HTML, AnsiString ControlID, AnsiString &ControlValue);
extern PACKAGE AnsiString __fastcall GetControlProp(AnsiString HTML, AnsiString ControlID);
extern PACKAGE int __fastcall GetControlMaxLen(AnsiString HTML, AnsiString ControlID);
extern PACKAGE bool __fastcall SetControlValue(AnsiString &HTML, AnsiString ControlID, AnsiString ControlValue);
extern PACKAGE bool __fastcall HTMLDrawEx(Graphics::TCanvas* Canvas, AnsiString s, const Types::TRect &fr, Imglist::TCustomImageList* FImages, int XPos, int YPos, int FocusLink, int HoverLink, int ShadowOffset, bool CheckHotSpot, bool CheckHeight, bool Print, bool Selected, bool Blink, bool HoverStyle, bool WordWrap, bool Down, double ResFactor, Graphics::TColor URLColor, Graphics::TColor HoverColor, Graphics::TColor HoverFontColor, Graphics::TColor ShadowColor, AnsiString &AnchorVal, AnsiString &StripVal, AnsiString &FocusAnchor, AnsiString &AnchorHint, int &XSize, int &YSize, int &HyperLinks, int &MouseLink, Types::TRect &HoverRect, Types::TRect &ControlRect, AnsiString &CID, AnsiString &CV, AnsiString &CT, Picturecontainer::THTMLPictureCache* ic, Picturecontainer::TPictureContainer* pc, unsigned WinHandle, Classes::TBiDiMode BidiMode = (Classes::TBiDiMode)(0x0));
extern PACKAGE AnsiString __fastcall HTMLStrip(AnsiString s);
extern PACKAGE AnsiString __fastcall HiLight(AnsiString s, AnsiString h, AnsiString tag, bool DoCase);
extern PACKAGE AnsiString __fastcall UnHiLight(AnsiString s, AnsiString tag);

}	/* namespace Asghtmle */
using namespace Asghtmle;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asghtmle
