// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetrohint.pas' rev: 11.00

#ifndef AdvmetrohintHPP
#define AdvmetrohintHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Appevnts.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetrohint
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum THintStyle { hsRectangle, hsRounded };
#pragma option pop

class DELPHICLASS TAdvMetroHint;
class PASCALIMPLEMENTATION TAdvMetroHint : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Graphics::TFont* FHintFont;
	Forms::THintInfo FHintInfo;
	Graphics::TColor FHintColor;
	Forms::TShowHintEvent FOnShowHint;
	int FYMargin;
	int FXMargin;
	THintStyle FHintStyle;
	int FMaxWidth;
	Graphics::TColor FLineColor;
	bool FShadow;
	Appevnts::TApplicationEvents* FApplicationEvents;
	void __fastcall GetHintInfo(AnsiString &HintStr, bool &CanShow, Forms::THintInfo &HintInfo);
	void __fastcall SetHintColor(const Graphics::TColor Value);
	void __fastcall SetHintFont(const Graphics::TFont* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TAdvMetroHint(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMetroHint(void);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	
__published:
	__property Graphics::TColor HintColor = {read=FHintColor, write=SetHintColor, default=15907840};
	__property Graphics::TFont* HintFont = {read=FHintFont, write=SetHintFont};
	__property THintStyle HintStyle = {read=FHintStyle, write=FHintStyle, default=0};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, default=0};
	__property int XMargin = {read=FXMargin, write=FXMargin, default=4};
	__property int YMargin = {read=FYMargin, write=FYMargin, default=2};
	__property Graphics::TColor LineColor = {read=FLineColor, write=FLineColor, default=536870911};
	__property bool Shadow = {read=FShadow, write=FShadow, default=0};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Forms::TShowHintEvent OnShowHint = {read=FOnShowHint, write=FOnShowHint};
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSTones()
	{
		Advstyleif::_di_ITMSTones intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSTones*(void) { return (ITMSTones*)&__ITMSTones; }
	#endif
	
};


class DELPHICLASS TMetroHintWindow;
class PASCALIMPLEMENTATION TMetroHintWindow : public Controls::THintWindow 
{
	typedef Controls::THintWindow inherited;
	
private:
	TAdvMetroHint* FHint;
	int FTextHeight;
	int FTextWidth;
	TAdvMetroHint* __fastcall FindHintControl(void);
	
protected:
	virtual void __fastcall Paint(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	virtual void __fastcall ActivateHint(const Types::TRect &Rect, const AnsiString AHint);
public:
	#pragma option push -w-inl
	/* THintWindow.Create */ inline __fastcall virtual TMetroHintWindow(Classes::TComponent* AOwner) : Controls::THintWindow(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TMetroHintWindow(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TMetroHintWindow(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint HINTROUNDING = 0x10;
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advmetrohint */
using namespace Advmetrohint;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetrohint
