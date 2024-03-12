// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Aerobuttons.pas' rev: 11.00

#ifndef AerobuttonsHPP
#define AerobuttonsHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Aerobuttons
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TImagePos { ipLeft, ipRight, ipTop, ipBottom };
#pragma option pop

class DELPHICLASS TAeroButton;
class PASCALIMPLEMENTATION TAeroButton : public Stdctrls::TButton 
{
	typedef Stdctrls::TButton inherited;
	
private:
	bool IsFocused;
	Graphics::TCanvas* FCanvas;
	System::TObject* FGlyph;
	bool FMouseInControl;
	TImagePos FImagePos;
	Imglist::TCustomImageList* FImages;
	int FSpacing;
	Imglist::TImageIndex FImageIndex;
	void __fastcall DrawItem(const tagDRAWITEMSTRUCT &DrawItemStruct);
	MESSAGE void __fastcall CNMeasureItem(Messages::TWMMeasureItem &Message);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Controls::TCMFocusChanged &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMSetFocus &Message);
	void __fastcall GlyphChanged(System::TObject* Sender);
	void __fastcall SetImageIndex(const Imglist::TImageIndex Value);
	void __fastcall SetImagePos(const TImagePos Value);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	void __fastcall SetSpacing(const int Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual void __fastcall CreateHandle(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CNCtlColorBtn(Messages::TWMCtlColor &Message);
	virtual void __fastcall SetButtonStyle(bool ADefault);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TAeroButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TAeroButton(void);
	virtual int __fastcall GetVersionNr(void);
	
__published:
	__property Imglist::TImageIndex ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TImagePos ImagePos = {read=FImagePos, write=SetImagePos, default=0};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=4};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAeroButton(HWND ParentWindow) : Stdctrls::TButton(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TAeroBitBtnActionLink;
class DELPHICLASS TAeroBitBtn;
class PASCALIMPLEMENTATION TAeroBitBtn : public Stdctrls::TButton 
{
	typedef Stdctrls::TButton inherited;
	
private:
	Graphics::TCanvas* FCanvas;
	System::TObject* FGlyph;
	Buttons::TButtonStyle FStyle;
	Buttons::TBitBtnKind FKind;
	Buttons::TButtonLayout FLayout;
	int FSpacing;
	int FMargin;
	bool IsFocused;
	bool FModifiedGlyph;
	bool FMouseInControl;
	void __fastcall DrawItem(const tagDRAWITEMSTRUCT &DrawItemStruct);
	void __fastcall SetGlyph(Graphics::TBitmap* Value);
	Graphics::TBitmap* __fastcall GetGlyph(void);
	Buttons::TNumGlyphs __fastcall GetNumGlyphs(void);
	void __fastcall SetNumGlyphs(Buttons::TNumGlyphs Value);
	void __fastcall GlyphChanged(System::TObject* Sender);
	bool __fastcall IsCustom(void);
	bool __fastcall IsCustomCaption(void);
	void __fastcall SetStyle(Buttons::TButtonStyle Value);
	void __fastcall SetKind(Buttons::TBitBtnKind Value);
	Buttons::TBitBtnKind __fastcall GetKind(void);
	void __fastcall SetLayout(Buttons::TButtonLayout Value);
	void __fastcall SetSpacing(int Value);
	void __fastcall SetMargin(int Value);
	MESSAGE void __fastcall CNMeasureItem(Messages::TWMMeasureItem &Message);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CNCtlColorBtn(Messages::TWMCtlColor &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Controls::TCMFocusChanged &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMSetFocus &Message);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	void __fastcall CopyImage(Imglist::TCustomImageList* ImageList, int Index);
	virtual void __fastcall CreateHandle(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC TMetaClass* __fastcall GetActionLinkClass(void);
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	virtual void __fastcall SetButtonStyle(bool ADefault);
	
public:
	__fastcall virtual TAeroBitBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TAeroBitBtn(void);
	DYNAMIC void __fastcall Click(void);
	virtual int __fastcall GetVersionNr(void);
	
__published:
	__property Action ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Cancel  = {stored=IsCustom, default=0};
	__property Caption  = {stored=IsCustomCaption};
	__property Constraints ;
	__property Default  = {stored=IsCustom, default=0};
	__property Enabled  = {default=1};
	__property Graphics::TBitmap* Glyph = {read=GetGlyph, write=SetGlyph, stored=IsCustom};
	__property Buttons::TBitBtnKind Kind = {read=GetKind, write=SetKind, default=0};
	__property Buttons::TButtonLayout Layout = {read=FLayout, write=SetLayout, default=0};
	__property int Margin = {read=FMargin, write=SetMargin, default=-1};
	__property ModalResult  = {stored=IsCustom, default=0};
	__property Buttons::TNumGlyphs NumGlyphs = {read=GetNumGlyphs, write=SetNumGlyphs, stored=IsCustom, default=1};
	__property ParentShowHint  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property ShowHint ;
	__property Buttons::TButtonStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=4};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Visible  = {default=1};
	__property OnEnter ;
	__property OnExit ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAeroBitBtn(HWND ParentWindow) : Stdctrls::TButton(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAeroBitBtnActionLink : public Controls::TControlActionLink 
{
	typedef Controls::TControlActionLink inherited;
	
protected:
	TAeroBitBtn* FClient;
	int FImageIndex;
	virtual void __fastcall AssignClient(System::TObject* AClient);
	virtual bool __fastcall IsImageIndexLinked(void);
	virtual void __fastcall SetImageIndex(int Value);
	
public:
	__fastcall virtual TAeroBitBtnActionLink(System::TObject* AClient);
public:
	#pragma option push -w-inl
	/* TBasicActionLink.Destroy */ inline __fastcall virtual ~TAeroBitBtnActionLink(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAeroSpeedButtonActionLink;
class DELPHICLASS TAeroSpeedButton;
class PASCALIMPLEMENTATION TAeroSpeedButton : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	int FGroupIndex;
	System::TObject* FGlyph;
	bool FDown;
	bool FDragging;
	bool FAllowAllUp;
	Buttons::TButtonLayout FLayout;
	int FSpacing;
	bool FTransparent;
	int FMargin;
	bool FFlat;
	bool FMouseInControl;
	void __fastcall GlyphChanged(System::TObject* Sender);
	void __fastcall UpdateExclusive(void);
	Graphics::TBitmap* __fastcall GetGlyph(void);
	void __fastcall SetGlyph(Graphics::TBitmap* Value);
	Buttons::TNumGlyphs __fastcall GetNumGlyphs(void);
	void __fastcall SetNumGlyphs(Buttons::TNumGlyphs Value);
	void __fastcall SetDown(bool Value);
	void __fastcall SetFlat(bool Value);
	void __fastcall SetAllowAllUp(bool Value);
	void __fastcall SetGroupIndex(int Value);
	void __fastcall SetLayout(Buttons::TButtonLayout Value);
	void __fastcall SetSpacing(int Value);
	void __fastcall SetTransparent(bool Value);
	void __fastcall SetMargin(int Value);
	void __fastcall UpdateTracking(void);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMButtonPressed(Messages::TMessage &Message);
	MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMSysColorChange(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	
protected:
	Buttons::TButtonState FState;
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	void __fastcall CopyImage(Imglist::TCustomImageList* ImageList, int Index);
	DYNAMIC TMetaClass* __fastcall GetActionLinkClass(void);
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	__property bool MouseInControl = {read=FMouseInControl, nodefault};
	
public:
	__fastcall virtual TAeroSpeedButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TAeroSpeedButton(void);
	DYNAMIC void __fastcall Click(void);
	
__published:
	__property Action ;
	__property Align  = {default=0};
	__property bool AllowAllUp = {read=FAllowAllUp, write=SetAllowAllUp, default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property int GroupIndex = {read=FGroupIndex, write=SetGroupIndex, default=0};
	__property bool Down = {read=FDown, write=SetDown, default=0};
	__property Caption ;
	__property Enabled  = {default=1};
	__property bool Flat = {read=FFlat, write=SetFlat, default=1};
	__property Font ;
	__property Graphics::TBitmap* Glyph = {read=GetGlyph, write=SetGlyph};
	__property Buttons::TButtonLayout Layout = {read=FLayout, write=SetLayout, default=0};
	__property int Margin = {read=FMargin, write=SetMargin, default=-1};
	__property Buttons::TNumGlyphs NumGlyphs = {read=GetNumGlyphs, write=SetNumGlyphs, default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=4};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=1};
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
};


class PASCALIMPLEMENTATION TAeroSpeedButtonActionLink : public Controls::TControlActionLink 
{
	typedef Controls::TControlActionLink inherited;
	
protected:
	TAeroSpeedButton* FClient;
	int FImageIndex;
	virtual void __fastcall AssignClient(System::TObject* AClient);
	virtual bool __fastcall IsCheckedLinked(void);
	virtual bool __fastcall IsGroupIndexLinked(void);
	virtual bool __fastcall IsImageIndexLinked(void);
	virtual void __fastcall SetGroupIndex(int Value);
	virtual void __fastcall SetChecked(bool Value);
	virtual void __fastcall SetImageIndex(int Value);
	
public:
	__fastcall virtual TAeroSpeedButtonActionLink(System::TObject* AClient);
public:
	#pragma option push -w-inl
	/* TBasicActionLink.Destroy */ inline __fastcall virtual ~TAeroSpeedButtonActionLink(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;

}	/* namespace Aerobuttons */
using namespace Aerobuttons;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Aerobuttons
