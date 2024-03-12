// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcpanel.pas' rev: 11.00

#ifndef FcpanelHPP
#define FcpanelHPP

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
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Fcframe.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcpanel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomPanel;
class PASCALIMPLEMENTATION TfcCustomPanel : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	Fcframe::TfcEditFrame* FFrame;
	bool FFocused;
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TWMMove &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	
protected:
	bool FTransparent;
	void __fastcall ClipChildren(bool Value);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall SetTransparent(bool Value);
	virtual void __fastcall Paint(void);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual bool __fastcall IsTransparent(void);
	virtual bool __fastcall InvalidateNeeded(void);
	
public:
	__fastcall virtual TfcCustomPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomPanel(void);
	virtual void __fastcall Invalidate(void);
	__property Fcframe::TfcEditFrame* Frame = {read=FFrame, write=FFrame};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomPanel(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomGroupBox;
class PASCALIMPLEMENTATION TfcCustomGroupBox : public Stdctrls::TCustomGroupBox 
{
	typedef Stdctrls::TCustomGroupBox inherited;
	
private:
	bool FBorderAroundLabel;
	Fcframe::TfcEditFrame* FFrame;
	bool FFocused;
	int FCaptionIndent;
	bool FFullBorder;
	void __fastcall SetCaptionIndent(int Value);
	void __fastcall SetFullBorder(bool Value);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TWMMove &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	
protected:
	bool FTransparent;
	void __fastcall ClipChildren(bool Value);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall SetTransparent(bool Value);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual bool __fastcall IsTransparent(void);
	virtual bool __fastcall InvalidateNeeded(void);
	
public:
	__fastcall virtual TfcCustomGroupBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomGroupBox(void);
	virtual void __fastcall Invalidate(void);
	__property int CaptionIndent = {read=FCaptionIndent, write=SetCaptionIndent, default=8};
	__property bool BorderAroundLabel = {read=FBorderAroundLabel, write=FBorderAroundLabel, default=0};
	__property bool FullBorder = {read=FFullBorder, write=SetFullBorder, default=0};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property Fcframe::TfcEditFrame* Frame = {read=FFrame, write=FFrame};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomGroupBox(HWND ParentWindow) : Stdctrls::TCustomGroupBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcPanel;
class PASCALIMPLEMENTATION TfcPanel : public TfcCustomPanel 
{
	typedef TfcCustomPanel inherited;
	
public:
	__property DockManager ;
	
__published:
	__property Align  = {default=0};
	__property Alignment  = {default=2};
	__property Anchors  = {default=3};
	__property AutoSize  = {default=0};
	__property BevelInner  = {default=0};
	__property BevelOuter  = {default=2};
	__property BevelWidth  = {default=1};
	__property BiDiMode ;
	__property BorderWidth  = {default=0};
	__property BorderStyle  = {default=0};
	__property Caption ;
	__property Color  = {default=-16777201};
	__property Constraints ;
	__property Ctl3D ;
	__property UseDockManager  = {default=1};
	__property DockSite  = {default=0};
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property FullRepaint  = {default=1};
	__property Font ;
	__property Frame ;
	__property Locked  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Transparent  = {default=0};
	__property Visible  = {default=1};
	__property OnCanResize ;
	__property OnClick ;
	__property OnConstrainedResize ;
	__property OnContextPopup ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGetSiteInfo ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResize ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TfcCustomPanel.Create */ inline __fastcall virtual TfcPanel(Classes::TComponent* AOwner) : TfcCustomPanel(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomPanel.Destroy */ inline __fastcall virtual ~TfcPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcPanel(HWND ParentWindow) : TfcCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcGroupBox;
class PASCALIMPLEMENTATION TfcGroupBox : public TfcCustomGroupBox 
{
	typedef TfcCustomGroupBox inherited;
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property BorderAroundLabel  = {default=0};
	__property Caption ;
	__property CaptionIndent  = {default=8};
	__property Color  = {default=-16777211};
	__property Constraints ;
	__property Ctl3D ;
	__property DockSite  = {default=0};
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property Frame ;
	__property FullBorder  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=1};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Transparent  = {default=0};
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGetSiteInfo ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TfcCustomGroupBox.Create */ inline __fastcall virtual TfcGroupBox(Classes::TComponent* AOwner) : TfcCustomGroupBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomGroupBox.Destroy */ inline __fastcall virtual ~TfcGroupBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcGroupBox(HWND ParentWindow) : TfcCustomGroupBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcpanel */
using namespace Fcpanel;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcpanel
