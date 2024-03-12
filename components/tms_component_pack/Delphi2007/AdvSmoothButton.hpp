// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothbutton.pas' rev: 11.00

#ifndef AdvsmoothbuttonHPP
#define AdvsmoothbuttonHPP

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
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advhintinfo.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothbutton
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothButtonStatus;
class DELPHICLASS TAdvSmoothButton;
class PASCALIMPLEMENTATION TAdvSmoothButton : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool DisableCache;
	bool FMouseInside;
	Advgdip::TGPBitmap* FCache;
	bool FValidCache;
	Extctrls::TTimer* FUpTimer;
	bool FFocused;
	bool FDesignTime;
	Gdipfill::TGDIPButton* FAppearance;
	Graphics::TColor FColor;
	bool FDown;
	Advgdip::TAdvGDIPPicture* FPicture;
	bool FBevel;
	bool FShadow;
	Graphics::TColor FDisabledColor;
	Graphics::TColor FBevelColor;
	TAdvSmoothButtonStatus* FButtonStatus;
	int FVerticalSpacing;
	int FHorizontalSpacing;
	Controls::TModalResult FModalResult;
	bool FShowFocus;
	bool FAutoSizeToPicture;
	Advhintinfo::TAdvHintInfo* FOfficeHint;
	Graphics::TColor FDisabledFontColor;
	Classes::TNotifyEvent FOnStatusClick;
	HIDESBASE void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetPicture(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetBevel(const bool Value);
	void __fastcall SetShadow(const bool Value);
	void __fastcall SetDisabledColor(const Graphics::TColor Value);
	void __fastcall SetBevelColor(const Graphics::TColor Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMParentFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	void __fastcall SetButtonStatus(const TAdvSmoothButtonStatus* Value);
	void __fastcall SetHorizontalSpacing(const int Value);
	void __fastcall SetVerticalSpacing(const int Value);
	void __fastcall SetAppearance(const Gdipfill::TGDIPButton* Value);
	void __fastcall InvalidateCache(void);
	void __fastcall SetModalResult(const Controls::TModalResult Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetAutoSizeToPicture(const bool Value);
	void __fastcall SetOfficeHint(const Advhintinfo::TAdvHintInfo* Value);
	void __fastcall SetDisabledFontColor(const Graphics::TColor Value);
	
protected:
	void __fastcall UpdateSize(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	HIDESBASE void __fastcall Changed(void);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall AppearanceFontChanged(System::TObject* Sender);
	void __fastcall AppearanceFontStored(System::TObject* Sender, bool &IsStored);
	void __fastcall PictureChanged(System::TObject* Sender);
	void __fastcall StatusChanged(System::TObject* Sender);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall UpTime(System::TObject* Sender);
	int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall DoEnter(void);
	virtual void __fastcall DoClick(void);
	DYNAMIC TMetaClass* __fastcall GetActionLinkClass(void);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	
public:
	__fastcall virtual TAdvSmoothButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothButton(void);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SaveToTheme(AnsiString FileName);
	void __fastcall LoadFromTheme(AnsiString FileName);
	AnsiString __fastcall GetThemeId();
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	DYNAMIC void __fastcall Click(void);
	bool __fastcall XYToIndicator(int X, int Y);
	
__published:
	__property bool AutoSizeToPicture = {read=FAutoSizeToPicture, write=SetAutoSizeToPicture, default=0};
	__property Action ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Gdipfill::TGDIPButton* Appearance = {read=FAppearance, write=SetAppearance};
	__property TAdvSmoothButtonStatus* Status = {read=FButtonStatus, write=SetButtonStatus};
	__property bool Bevel = {read=FBevel, write=SetBevel, default=1};
	__property Graphics::TColor BevelColor = {read=FBevelColor, write=SetBevelColor, default=16777215};
	__property Constraints ;
	__property Caption ;
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=8421504};
	__property Advhintinfo::TAdvHintInfo* OfficeHint = {read=FOfficeHint, write=SetOfficeHint};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property Advgdip::TAdvGDIPPicture* Picture = {read=FPicture, write=SetPicture};
	__property PopupMenu ;
	__property bool Shadow = {read=FShadow, write=SetShadow, default=0};
	__property Graphics::TColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=8421504};
	__property Graphics::TColor DisabledFontColor = {read=FDisabledFontColor, write=SetDisabledFontColor, default=12632256};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property Enabled  = {default=1};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property int HorizontalSpacing = {read=FHorizontalSpacing, write=SetHorizontalSpacing, default=5};
	__property int VerticalSpacing = {read=FVerticalSpacing, write=SetVerticalSpacing, default=5};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Controls::TModalResult ModalResult = {read=FModalResult, write=SetModalResult, default=0};
	__property Classes::TNotifyEvent OnStatusClick = {read=FOnStatusClick, write=FOnStatusClick};
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnContextPopup ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnExit ;
	__property OnEnter ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothButton(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
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
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSStyle()
	{
		Advstyleif::_di_ITMSStyle intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSStyle*(void) { return (ITMSStyle*)&__ITMSStyle; }
	#endif
	
};


class PASCALIMPLEMENTATION TAdvSmoothButtonStatus : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothButton* FOwner;
	int FOffsetTop;
	int FOffsetLeft;
	bool FVisible;
	AnsiString FCaption;
	Gdipfill::TGDIPStatus* FAppearance;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetOffsetLeft(const int Value);
	void __fastcall SetOffsetTop(const int Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetAppearance(const Gdipfill::TGDIPStatus* Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	
public:
	__fastcall TAdvSmoothButtonStatus(TAdvSmoothButton* AOwner);
	__fastcall virtual ~TAdvSmoothButtonStatus(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool Visible = {read=FVisible, write=SetVisible, default=0};
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property int OffsetLeft = {read=FOffsetLeft, write=SetOffsetLeft, default=0};
	__property int OffsetTop = {read=FOffsetTop, write=SetOffsetTop, default=0};
	__property Gdipfill::TGDIPStatus* Appearance = {read=FAppearance, write=SetAppearance};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class DELPHICLASS TAdvSmoothButtonActionLink;
class PASCALIMPLEMENTATION TAdvSmoothButtonActionLink : public Controls::TControlActionLink 
{
	typedef Controls::TControlActionLink inherited;
	
protected:
	TAdvSmoothButton* FClient;
	virtual void __fastcall AssignClient(System::TObject* AClient);
public:
	#pragma option push -w-inl
	/* TBasicActionLink.Create */ inline __fastcall virtual TAdvSmoothButtonActionLink(System::TObject* AClient) : Controls::TControlActionLink(AClient) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBasicActionLink.Destroy */ inline __fastcall virtual ~TAdvSmoothButtonActionLink(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x9;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advsmoothbutton */
using namespace Advsmoothbutton;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothbutton
