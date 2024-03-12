// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetroform.pas' rev: 11.00

#ifndef AdvmetroformHPP
#define AdvmetroformHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Advmetrores.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetroform
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
	Graphics::TColor FSizeGripColor;
	Graphics::TColor FColor;
	Graphics::TColor FSystemIconColor;
	Graphics::TColor FSystemIconColorHot;
	Graphics::TColor FCaptionColor;
	TCaptionStyle FCaptionStyle;
	Graphics::TColor FSystemIconColorDisabled;
	Graphics::TColor FCaptionActiveColor;
	Graphics::TFont* FFont;
	Classes::TAlignment FTextAlign;
	Graphics::TColor FProgressColor;
	Graphics::TColor FTextColor;
	bool FShowAppIcon;
	void __fastcall Change(void);
	void __fastcall CaptionFontChanged(System::TObject* Sender);
	void __fastcall SetCaptionColor(const Graphics::TColor Value);
	void __fastcall SetCaptionFont(const Graphics::TFont* Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetSizeGripColor(const Graphics::TColor Value);
	void __fastcall SetSystemIconColor(const Graphics::TColor Value);
	void __fastcall SetCaptionStyle(const TCaptionStyle Value);
	void __fastcall SetCaptionActiveColor(const Graphics::TColor Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetTextAlign(const Classes::TAlignment Value);
	void __fastcall SetProgressColor(const Graphics::TColor Value);
	void __fastcall SetTextColor(const Graphics::TColor Value);
	void __fastcall SetShowAppIcon(const bool Value);
	
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
	__property bool ShowAppIcon = {read=FShowAppIcon, write=SetShowAppIcon, default=1};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16777215};
	__property Graphics::TColor SizeGripColor = {read=FSizeGripColor, write=SetSizeGripColor, default=15907840};
	__property Graphics::TFont* CaptionFont = {read=FCaptionFont, write=SetCaptionFont};
	__property Graphics::TColor CaptionColor = {read=FCaptionColor, write=SetCaptionColor, default=15907840};
	__property TCaptionStyle CaptionStyle = {read=FCaptionStyle, write=SetCaptionStyle, default=0};
	__property Graphics::TColor CaptionActiveColor = {read=FCaptionActiveColor, write=SetCaptionActiveColor, default=11576180};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Classes::TAlignment TextAlign = {read=FTextAlign, write=SetTextAlign, default=1};
	__property Graphics::TColor TextColor = {read=FTextColor, write=SetTextColor, default=8421504};
	__property Graphics::TColor ProgressColor = {read=FProgressColor, write=SetProgressColor, default=16777215};
};


class DELPHICLASS TAdvMetroForm;
class PASCALIMPLEMENTATION TAdvMetroForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	Imglist::TCustomImageList* FImages;
	bool FNoDropShadow;
	bool FSizeGrip;
	TFormAppearance* FAppearance;
	TSysIcon FMouseOn;
	TSysIcon FMouseDown;
	AnsiString FText;
	bool FShowProgress;
	Extctrls::TTimer* FTimer;
	int FProgressPos;
	int FImageIndex;
	bool FNoResize;
	unsigned FSysShadowHandle;
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
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	void __fastcall OnAppearanceChanged(System::TObject* Sender);
	void __fastcall SetSizeGrip(const bool Value);
	void __fastcall SetAppearance(const TFormAppearance* Value);
	HIDESBASE void __fastcall SetText(const AnsiString Value);
	void __fastcall SetShowProgress(const bool Value);
	void __fastcall TimerProc(System::TObject* Sender);
	void __fastcall Initialize(void);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(const int Value);
	
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
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	int __fastcall GetCaptionHeight(void);
	Types::TRect __fastcall GetCaptionRect();
	Types::TRect __fastcall GetSysIconRect(TSysIcon SysIcon);
	int __fastcall GetSysRectWidth(void);
	TSysIcon __fastcall PtOnIcon(const Types::TPoint &pt);
	void __fastcall DrawSysIcons(Graphics::TCanvas* ACanvas, TSysIcon SysIcon = (TSysIcon)(0x0));
	void __fastcall DrawCaption(void);
	void __fastcall DrawSizeGrip(void);
	void __fastcall InvalidateIcon(TSysIcon SysIcon);
	void __fastcall SysIconClick(TSysIcon SysIcon);
	bool __fastcall IsFullMaximized(void);
	void __fastcall FixSysShadowOrder(void);
	bool __fastcall HasMinimize(void);
	bool __fastcall HasMaximize(void);
	
public:
	__fastcall virtual TAdvMetroForm(Classes::TComponent* AOwner);
	__fastcall virtual TAdvMetroForm(Classes::TComponent* AOwner, int Dummy);
	__fastcall virtual ~TAdvMetroForm(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	__property bool NoResize = {read=FNoResize, write=FNoResize, nodefault};
	
__published:
	__property TFormAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool SizeGrip = {read=FSizeGrip, write=SetSizeGrip, default=0};
	__property bool NoDropShadow = {read=FNoDropShadow, write=FNoDropShadow, default=0};
	__property Action ;
	__property ActiveControl ;
	__property Align  = {default=0};
	__property AlphaBlend  = {default=0};
	__property AlphaBlendValue  = {default=255};
	__property Anchors  = {default=3};
	__property AutoScroll  = {default=0};
	__property AutoSize  = {default=0};
	__property BiDiMode ;
	__property BorderIcons  = {default=7};
	__property Caption ;
	__property ClientHeight ;
	__property ClientWidth ;
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TransparentColor  = {default=0};
	__property TransparentColorValue  = {default=0};
	__property Constraints ;
	__property UseDockManager  = {default=0};
	__property DefaultMonitor  = {default=3};
	__property DockSite  = {default=0};
	__property DoubleBuffered  = {default=0};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property ParentFont  = {default=0};
	__property Font ;
	__property FormStyle  = {default=0};
	__property Height ;
	__property HelpFile ;
	__property HorzScrollBar ;
	__property Icon ;
	__property KeyPreview  = {default=0};
	__property Padding ;
	__property Menu ;
	__property OldCreateOrder ;
	__property ObjectMenuItem ;
	__property ParentBiDiMode  = {default=1};
	__property PixelsPerInch ;
	__property PopupMenu ;
	__property PopupMode  = {default=0};
	__property PopupParent ;
	__property Position  = {default=2};
	__property PrintScale  = {default=1};
	__property Scaled  = {default=1};
	__property ScreenSnap  = {default=0};
	__property ShowHint ;
	__property bool ShowProgress = {read=FShowProgress, write=SetShowProgress, default=0};
	__property SnapBuffer  = {default=10};
	__property AnsiString Text = {read=FText, write=SetText};
	__property VertScrollBar ;
	__property Visible  = {default=0};
	__property Width ;
	__property WindowState  = {default=0};
	__property WindowMenu ;
	__property OnActivate ;
	__property OnAlignInsertBefore ;
	__property OnAlignPosition ;
	__property OnCanResize ;
	__property OnClick ;
	__property OnClose ;
	__property OnCloseQuery ;
	__property OnConstrainedResize ;
	__property OnContextPopup ;
	__property OnCreate ;
	__property OnDblClick ;
	__property OnDestroy ;
	__property OnDeactivate ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnGetSiteInfo ;
	__property OnHide ;
	__property OnHelp ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnMouseWheel ;
	__property OnMouseWheelDown ;
	__property OnMouseWheelUp ;
	__property OnPaint ;
	__property OnResize ;
	__property OnShortCut ;
	__property OnShow ;
	__property OnStartDock ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMetroForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
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


typedef TMetaClass* TAdvMetroFormClass;

//-- var, const, procedure ---------------------------------------------------
static const Shortint DEFAULT_CAPTIONHEIGHT = 0x1a;
static const Shortint DEFAULT_BTNSIZE = 0x14;
static const Shortint DEFAULT_SIZEGRIPSIZE = 0xc;
extern PACKAGE Advstyleif::TColorTones MetroFormTones;

}	/* namespace Advmetroform */
using namespace Advmetroform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetroform
