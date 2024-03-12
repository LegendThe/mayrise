// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetrofinddialog.pas' rev: 11.00

#ifndef AdvmetrofinddialogHPP
#define AdvmetrofinddialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Advfinddialogform.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Advglowbutton.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetrofinddialog
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TCaptionStyle { csMetro, csPlain };
#pragma option pop

#pragma option push -b-
enum TSysIcon { siNone, siMin, siMax, siClose };
#pragma option pop

class DELPHICLASS TFormAppearance;
class PASCALIMPLEMENTATION TFormAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TNotifyEvent FOnChange;
	Graphics::TFont* FCaptionFont;
	Graphics::TColor FSystemIconColorDown;
	Graphics::TColor FColor;
	Graphics::TColor FSystemIconColor;
	Graphics::TColor FSystemIconColorHot;
	Graphics::TColor FCaptionColor;
	TCaptionStyle FCaptionStyle;
	Graphics::TColor FSystemIconColorDisabled;
	Graphics::TColor FCaptionActiveColor;
	Graphics::TFont* FFont;
	Classes::TAlignment FTextAlign;
	Graphics::TColor FTextColor;
	void __fastcall Change(void);
	void __fastcall CaptionFontChanged(System::TObject* Sender);
	void __fastcall SetCaptionColor(const Graphics::TColor Value);
	void __fastcall SetCaptionFont(const Graphics::TFont* Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetSystemIconColor(const Graphics::TColor Value);
	void __fastcall SetCaptionStyle(const TCaptionStyle Value);
	void __fastcall SetCaptionActiveColor(const Graphics::TColor Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetTextAlign(const Classes::TAlignment Value);
	void __fastcall SetTextColor(const Graphics::TColor Value);
	
protected:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TFormAppearance(void);
	__fastcall virtual ~TFormAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor SystemIconColor = {read=FSystemIconColor, write=SetSystemIconColor, nodefault};
	__property Graphics::TColor SystemIconColorHot = {read=FSystemIconColorHot, write=FSystemIconColorHot, default=12632256};
	__property Graphics::TColor SystemIconColorDown = {read=FSystemIconColorDown, write=FSystemIconColorDown, default=8421504};
	__property Graphics::TColor SystemIconColorDisabled = {read=FSystemIconColorDisabled, write=FSystemIconColorDisabled, nodefault};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16777215};
	__property Graphics::TFont* CaptionFont = {read=FCaptionFont, write=SetCaptionFont};
	__property Graphics::TColor CaptionColor = {read=FCaptionColor, write=SetCaptionColor, default=15907840};
	__property TCaptionStyle CaptionStyle = {read=FCaptionStyle, write=SetCaptionStyle, default=0};
	__property Graphics::TColor CaptionActiveColor = {read=FCaptionActiveColor, write=SetCaptionActiveColor, default=11576180};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Classes::TAlignment TextAlign = {read=FTextAlign, write=SetTextAlign, default=1};
	__property Graphics::TColor TextColor = {read=FTextColor, write=SetTextColor, default=8421504};
};


class DELPHICLASS TAdvMetroFindDialog;
class PASCALIMPLEMENTATION TAdvMetroFindDialog : public Advfinddialogform::TAdvFindDialog 
{
	typedef Advfinddialogform::TAdvFindDialog inherited;
	
private:
	Advstyleif::TColorTones FTones;
	
protected:
	virtual Advfinddialogform::TFindDialogForm* __fastcall CreateDialogForm(Classes::TComponent* AOwner);
	Advglowbutton::TAdvGlowButton* __fastcall CloneButton(Stdctrls::TButton* btn);
	
public:
	virtual Forms::TCustomForm* __fastcall InitDialog(void);
	virtual void __fastcall Execute(void);
	__fastcall virtual TAdvMetroFindDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMetroFindDialog(void);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
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


class DELPHICLASS TMetroFindDialogForm;
class PASCALIMPLEMENTATION TMetroFindDialogForm : public Advfinddialogform::TFindDialogForm 
{
	typedef Advfinddialogform::TFindDialogForm inherited;
	
private:
	bool FNoDropShadow;
	TFormAppearance* FAppearance;
	TSysIcon FMouseOn;
	TSysIcon FMouseDown;
	AnsiString FText;
	unsigned FSysShadowHandle;
	bool FNoResize;
	HIDESBASE MESSAGE void __fastcall WMActivate(Messages::TMessage &Msg);
	MESSAGE void __fastcall WMNCActivate(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMGetMinMaxInfo(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Msg);
	HIDESBASE MESSAGE void __fastcall WMWindowPosChanging(Messages::TWMWindowPosMsg &Message);
	HIDESBASE MESSAGE void __fastcall WMWindowPosChanged(Messages::TWMWindowPosMsg &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Msg);
	void __fastcall OnAppearanceChanged(System::TObject* Sender);
	void __fastcall SetAppearance(const TFormAppearance* Value);
	HIDESBASE void __fastcall SetText(const AnsiString Value);
	void __fastcall Initialize(void);
	
protected:
	virtual Types::TRect __fastcall GetClientRect();
	virtual void __fastcall AdjustClientRect(Types::TRect &Rect);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &ARect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall Paint(void);
	DYNAMIC void __fastcall Activate(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall UpdateMoreButton(const AnsiString AValue);
	virtual void __fastcall EnableButtons(void);
	int __fastcall GetCaptionHeight(void);
	Types::TRect __fastcall GetCaptionRect();
	Types::TRect __fastcall GetSysIconRect(TSysIcon SysIcon);
	int __fastcall GetSysRectWidth(void);
	TSysIcon __fastcall PtOnIcon(const Types::TPoint &pt);
	void __fastcall DrawSysIcons(Graphics::TCanvas* ACanvas, TSysIcon SysIcon = (TSysIcon)(0x0));
	void __fastcall DrawCaption(void);
	void __fastcall InvalidateIcon(TSysIcon SysIcon);
	void __fastcall SysIconClick(TSysIcon SysIcon);
	bool __fastcall IsFullMaximized(void);
	void __fastcall FixSysShadowOrder(void);
	bool __fastcall HasMinimize(void);
	bool __fastcall HasMaximize(void);
	__property bool NoResize = {read=FNoResize, write=FNoResize, nodefault};
	
public:
	Advstyleif::TColorTones FTones;
	Advglowbutton::TAdvGlowButton* FindBtnAGB;
	Advglowbutton::TAdvGlowButton* PrevBtnAGB;
	Advglowbutton::TAdvGlowButton* MarkerBtnAGB;
	Advglowbutton::TAdvGlowButton* CloseBtnAGB;
	Advglowbutton::TAdvGlowButton* MoreBtnAGB;
	__fastcall virtual TMetroFindDialogForm(Classes::TComponent* AOwner);
	__fastcall virtual TMetroFindDialogForm(Classes::TComponent* AOwner, int Dummy);
	__fastcall virtual ~TMetroFindDialogForm(void);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	
__published:
	__property TFormAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool NoDropShadow = {read=FNoDropShadow, write=FNoDropShadow, default=0};
	__property AnsiString Text = {read=FText, write=SetText};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TMetroFindDialogForm(HWND ParentWindow) : Advfinddialogform::TFindDialogForm(ParentWindow) { }
	#pragma option pop
	
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


//-- var, const, procedure ---------------------------------------------------
static const Shortint DEFAULT_CAPTIONHEIGHT = 0x1a;
static const Shortint DEFAULT_BTNSIZE = 0x14;
extern PACKAGE TMetroFindDialogForm* MetroFindDialogForm;
extern PACKAGE bool More;

}	/* namespace Advmetrofinddialog */
using namespace Advmetrofinddialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetrofinddialog
