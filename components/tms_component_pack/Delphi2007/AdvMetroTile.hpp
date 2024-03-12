// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetrotile.pas' rev: 11.00

#ifndef AdvmetrotileHPP
#define AdvmetrotileHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Gdipicture.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Advmetrores.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetrotile
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdvToolButtonStyle { tasButton, tasCheck };
#pragma option pop

#pragma option push -b-
enum TAdvButtonState { absUp, absDisabled, absDown, absDropDown, absExclusive };
#pragma option pop

#pragma option push -b-
enum TTileLayout { tlPicLeft, tlPicRight, tlPicTop, tlPicBottom, tlPicBackground };
#pragma option pop

class DELPHICLASS TMetroTileAppearance;
class PASCALIMPLEMENTATION TMetroTileAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TNotifyEvent FOnChange;
	Graphics::TColor FHoverBorderColor;
	Graphics::TColor FHoverTextColor;
	Graphics::TColor FDownBorderColor;
	Graphics::TColor FHoverColor;
	Graphics::TColor FDownTextColor;
	Graphics::TColor FDownColor;
	Graphics::TColor FBorderColor;
	Graphics::TColor FTextColor;
	Graphics::TColor FColor;
	Graphics::TColor FDisabledColor;
	Graphics::TColor FDisabledBorderColor;
	Graphics::TColor FDisabledTextColor;
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetTextColor(const Graphics::TColor Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TMetroTileAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16777215};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=0};
	__property Graphics::TColor TextColor = {read=FTextColor, write=SetTextColor, default=0};
	__property Graphics::TColor HoverColor = {read=FHoverColor, write=FHoverColor, nodefault};
	__property Graphics::TColor HoverBorderColor = {read=FHoverBorderColor, write=FHoverBorderColor, nodefault};
	__property Graphics::TColor HoverTextColor = {read=FHoverTextColor, write=FHoverTextColor, nodefault};
	__property Graphics::TColor DownColor = {read=FDownColor, write=FDownColor, nodefault};
	__property Graphics::TColor DownBorderColor = {read=FDownBorderColor, write=FDownBorderColor, nodefault};
	__property Graphics::TColor DownTextColor = {read=FDownTextColor, write=FDownTextColor, nodefault};
	__property Graphics::TColor DisabledColor = {read=FDisabledColor, write=FDisabledColor, nodefault};
	__property Graphics::TColor DisabledBorderColor = {read=FDisabledBorderColor, write=FDisabledBorderColor, nodefault};
	__property Graphics::TColor DisabledTextColor = {read=FDisabledTextColor, write=FDisabledTextColor, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TMetroTileAppearance(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMetroTileActionLink;
class DELPHICLASS TAdvCustomMetroTile;
class PASCALIMPLEMENTATION TAdvCustomMetroTile : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	int FGroupIndex;
	bool FDown;
	bool FAllowAllUp;
	bool FMouseInControl;
	bool FHot;
	Classes::TNotifyEvent FOnMouseLeave;
	Classes::TNotifyEvent FOnMouseEnter;
	TAdvToolButtonStyle FStyle;
	TAdvButtonState FState;
	bool FMouseDownInControl;
	bool FGrouped;
	bool FDragging;
	bool FPropHot;
	Extctrls::TTimer* FUnHotTimer;
	bool FInitialDown;
	Gdipicture::TGDIPPicture* FIPicture;
	bool FShowFocusRect;
	bool FActive;
	TMetroTileAppearance* FAppearance;
	bool FShowCircle;
	bool FDefault;
	bool FCancel;
	Controls::TModalResult FModalResult;
	AnsiString FCaption;
	bool FPictureAutoColor;
	Picturecontainer::TPictureContainer* FPictureContainer;
	Imglist::TCustomImageList* FImageList;
	bool FPictureAutoSize;
	int FPictureMarginHorz;
	int FPictureMarginVert;
	TTileLayout FLayout;
	int FTextMarginVert;
	int FTextMarginHorz;
	int FZoomOnHover;
	Forms::TFormBorderStyle FBorderStyle;
	bool FPictureAutoBrighten;
	void __fastcall UnHotTimerOnTime(System::TObject* Sender);
	void __fastcall UpdateExclusive(void);
	void __fastcall UpdateTracking(void);
	void __fastcall ButtonDown(void);
	void __fastcall OnPictureChanged(System::TObject* Sender);
	MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Controls::TCMFocusChanged &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMDialogKey(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall CMButtonPressed(Messages::TMessage &Message);
	void __fastcall SetDown(bool Value);
	void __fastcall SetAllowAllUp(bool Value);
	void __fastcall SetGroupIndex(int Value);
	void __fastcall SetStyle(const TAdvToolButtonStyle Value);
	void __fastcall SetState(const TAdvButtonState Value);
	void __fastcall SetGrouped(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	bool __fastcall GetHot(void);
	void __fastcall SetHot(const bool Value);
	void __fastcall SetIPicture(const Gdipicture::TGDIPPicture* Value);
	void __fastcall SetShowFocusRect(const bool Value);
	void __fastcall OnAppearanceChanged(System::TObject* Sender);
	void __fastcall SetAppearance(const TMetroTileAppearance* Value);
	void __fastcall SetShowCircle(const bool Value);
	void __fastcall SetDefault(const bool Value);
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetPictureAutoColor(const bool Value);
	void __fastcall SetImageList(const Imglist::TCustomImageList* Value);
	void __fastcall SetPictureAutoSize(const bool Value);
	void __fastcall SetPictureContainer(const Picturecontainer::TPictureContainer* Value);
	void __fastcall SetLayout(const TTileLayout Value);
	void __fastcall SetPictureMarginHorz(const int Value);
	void __fastcall SetPictureMarginVert(const int Value);
	void __fastcall SetTextMarginHorz(const int Value);
	void __fastcall SetTextMarginVert(const int Value);
	void __fastcall SetBorderStyle(const Forms::TBorderStyle Value);
	void __fastcall SetZoomOnHover(const int Value);
	
protected:
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	DYNAMIC TMetaClass* __fastcall GetActionLinkClass(void);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall DrawButton(void);
	virtual void __fastcall DrawButtonContent(Graphics::TCanvas* ACanvas, const Types::TRect &R);
	void __fastcall DrawMetroPicture(Advgdip::TGPGraphics* g, Gdipicture::TGDIPPicture* Pic, unsigned PicClr, const Types::TRect &DR, bool ColorAdapt, bool AutoSize);
	DYNAMIC void __fastcall KeyPress(char &Key);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall DoEnter(void);
	DYNAMIC void __fastcall DoExit(void);
	void __fastcall RefreshContent(void);
	__property bool MouseInControl = {read=FMouseInControl, nodefault};
	__property TAdvButtonState State = {read=FState, write=SetState, nodefault};
	__property Action ;
	__property bool AllowAllUp = {read=FAllowAllUp, write=SetAllowAllUp, default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=1};
	__property bool ShowFocusRect = {read=FShowFocusRect, write=SetShowFocusRect, default=0};
	__property bool Cancel = {read=FCancel, write=FCancel, default=0};
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property bool Default = {read=FDefault, write=SetDefault, default=0};
	__property Controls::TModalResult ModalResult = {read=FModalResult, write=FModalResult, default=0};
	__property Constraints ;
	__property bool Grouped = {read=FGrouped, write=SetGrouped, default=0};
	__property int GroupIndex = {read=FGroupIndex, write=SetGroupIndex, default=0};
	__property bool Down = {read=FDown, write=SetDown, default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property bool Hot = {read=GetHot, write=SetHot, default=0};
	__property TMetroTileAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property Imglist::TCustomImageList* Images = {read=FImageList, write=SetImageList};
	__property TTileLayout Layout = {read=FLayout, write=SetLayout, default=2};
	__property Gdipicture::TGDIPPicture* Picture = {read=FIPicture, write=SetIPicture};
	__property bool PictureAutoBrighten = {read=FPictureAutoBrighten, write=FPictureAutoBrighten, default=0};
	__property bool PictureAutoColor = {read=FPictureAutoColor, write=SetPictureAutoColor, default=1};
	__property bool PictureAutoSize = {read=FPictureAutoSize, write=SetPictureAutoSize, default=1};
	__property Picturecontainer::TPictureContainer* PictureContainer = {read=FPictureContainer, write=SetPictureContainer};
	__property int PictureMarginVert = {read=FPictureMarginVert, write=SetPictureMarginVert, default=2};
	__property int PictureMarginHorz = {read=FPictureMarginHorz, write=SetPictureMarginHorz, default=2};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property bool ShowCircle = {read=FShowCircle, write=SetShowCircle, default=0};
	__property TAdvToolButtonStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property int TextMarginHorz = {read=FTextMarginHorz, write=SetTextMarginHorz, default=2};
	__property int TextMarginVert = {read=FTextMarginVert, write=SetTextMarginVert, default=2};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Visible  = {default=1};
	__property int ZoomOnHover = {read=FZoomOnHover, write=SetZoomOnHover, default=0};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	
public:
	__fastcall virtual TAdvCustomMetroTile(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvCustomMetroTile(void);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	virtual int __fastcall GetVersionNr(void);
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvCustomMetroTile(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
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


class PASCALIMPLEMENTATION TAdvMetroTileActionLink : public Controls::TControlActionLink 
{
	typedef Controls::TControlActionLink inherited;
	
protected:
	TAdvCustomMetroTile* FClient;
	virtual void __fastcall AssignClient(System::TObject* AClient);
	virtual bool __fastcall IsCheckedLinked(void);
	virtual bool __fastcall IsGroupIndexLinked(void);
	virtual void __fastcall SetGroupIndex(int Value);
	virtual void __fastcall SetChecked(bool Value);
public:
	#pragma option push -w-inl
	/* TBasicActionLink.Create */ inline __fastcall virtual TAdvMetroTileActionLink(System::TObject* AClient) : Controls::TControlActionLink(AClient) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBasicActionLink.Destroy */ inline __fastcall virtual ~TAdvMetroTileActionLink(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMetroTile;
class PASCALIMPLEMENTATION TAdvMetroTile : public TAdvCustomMetroTile 
{
	typedef TAdvCustomMetroTile inherited;
	
__published:
	__property Action ;
	__property Align  = {default=0};
	__property AllowAllUp  = {default=0};
	__property Anchors  = {default=3};
	__property Appearance ;
	__property BorderStyle  = {default=1};
	__property Cancel  = {default=0};
	__property Caption ;
	__property Constraints ;
	__property Default  = {default=0};
	__property Down  = {default=0};
	__property DragKind  = {default=0};
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property GroupIndex  = {default=0};
	__property Images ;
	__property Layout  = {default=2};
	__property ModalResult  = {default=0};
	__property Picture ;
	__property PictureAutoBrighten  = {default=0};
	__property PictureAutoColor  = {default=1};
	__property PictureAutoSize  = {default=1};
	__property PictureContainer ;
	__property PictureMarginHorz  = {default=2};
	__property PictureMarginVert  = {default=2};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property PopupMenu ;
	__property ShowFocusRect  = {default=0};
	__property ShowHint ;
	__property Style  = {default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property TextMarginHorz  = {default=2};
	__property TextMarginVert  = {default=2};
	__property Version ;
	__property Visible  = {default=1};
	__property ZoomOnHover  = {default=0};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TAdvCustomMetroTile.Create */ inline __fastcall virtual TAdvMetroTile(Classes::TComponent* AOwner) : TAdvCustomMetroTile(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvCustomMetroTile.Destroy */ inline __fastcall virtual ~TAdvMetroTile(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMetroTile(HWND ParentWindow) : TAdvCustomMetroTile(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TWinCtrl;
class PASCALIMPLEMENTATION TWinCtrl : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
public:
	void __fastcall PaintCtrls(HDC DC, Controls::TControl* First);
public:
	#pragma option push -w-inl
	/* TWinControl.Create */ inline __fastcall virtual TWinCtrl(Classes::TComponent* AOwner) : Controls::TWinControl(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TWinCtrl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TWinCtrl(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advmetrotile */
using namespace Advmetrotile;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetrotile
