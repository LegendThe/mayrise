// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetroscrollbox.pas' rev: 11.00

#ifndef AdvmetroscrollboxHPP
#define AdvmetroscrollboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetroscrollbox
{
//-- type declarations -------------------------------------------------------
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


class DELPHICLASS TMetroScrollControl;
class DELPHICLASS TAdvMetroScrollBox;
class PASCALIMPLEMENTATION TAdvMetroScrollBox : public Forms::TScrollBox 
{
	typedef Forms::TScrollBox inherited;
	
private:
	bool FOldAutoScroll;
	TMetroScrollControl* vscrlctrl;
	TMetroScrollControl* hscrlctrl;
	Graphics::TCanvas* FCanvas;
	Classes::TNotifyEvent FOnVScroll;
	Classes::TNotifyEvent FOnHScroll;
	Classes::TNotifyEvent FOnHScrollEnd;
	Classes::TNotifyEvent FOnVScrollEnd;
	HIDESBASE MESSAGE void __fastcall WMHScroll(Messages::TWMScroll &Message);
	HIDESBASE MESSAGE void __fastcall WMVScroll(Messages::TWMScroll &Message);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	void __fastcall CreateMetroScrollers(void);
	void __fastcall DestroyMetroScrollers(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	void __fastcall UpdateSize(void);
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	virtual void __fastcall AutoScrollInView(Controls::TControl* AControl);
	
public:
	__fastcall virtual TAdvMetroScrollBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMetroScrollBox(void);
	DYNAMIC void __fastcall Resize(void);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	int __fastcall GetVersionNr(void);
	__property TMetroScrollControl* MetroVerticalScrollBar = {read=vscrlctrl, write=vscrlctrl};
	__property TMetroScrollControl* MetroHorizontalScrollBar = {read=hscrlctrl, write=hscrlctrl};
	
__published:
	__property AutoScroll  = {default=0};
	__property Ctl3D  = {default=0};
	__property DoubleBuffered  = {default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion, stored=false};
	__property Classes::TNotifyEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property Classes::TNotifyEvent OnHScroll = {read=FOnHScroll, write=FOnHScroll};
	__property Classes::TNotifyEvent OnVScrollEnd = {read=FOnVScrollEnd, write=FOnVScrollEnd};
	__property Classes::TNotifyEvent OnHScrollEnd = {read=FOnHScrollEnd, write=FOnHScrollEnd};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMetroScrollBox(HWND ParentWindow) : Forms::TScrollBox(ParentWindow) { }
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


class PASCALIMPLEMENTATION TMetroScrollControl : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	TAdvMetroScrollBox* FScrollBox;
	bool FDownOnScroller;
	int FDownPos;
	void *OldWndProc;
	void *NewWndProc;
	Advgdip::TGPBitmap* FMainBuffer;
	int FNewRange;
	int FPageSize;
	Forms::TScrollBarKind FKind;
	Graphics::TColor FScrollColor;
	int FScrollWidth;
	int FPosition;
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Msg);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Msg);
	HIDESBASE MESSAGE void __fastcall WMMouseActivate(Messages::TWMMouseActivate &Msg);
	HIDESBASE MESSAGE void __fastcall WMActivate(Messages::TMessage &Message);
	TAdvMetroScrollBox* __fastcall ScrollBox(void);
	
protected:
	void __fastcall FormHookInit(void);
	void __fastcall FormHookDone(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DoCreate(void);
	virtual void __fastcall DoDestroy(void);
	DYNAMIC void __fastcall Paint(void);
	DYNAMIC void __fastcall DblClick(void);
	void __fastcall CalcRange(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall DragOver(System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall Draw(Advgdip::TGPGraphics* graphics);
	void __fastcall CreateMainBuffer(void);
	void __fastcall DestroyMainBuffer(void);
	void __fastcall ClearBuffer(Advgdip::TGPGraphics* graphics);
	Advgdip::TGPGraphics* __fastcall CreateGraphics(void);
	void __fastcall SetLayeredWindow(void);
	void __fastcall UpdateLayered(void);
	void __fastcall UpdateMainWindow(void);
	void __fastcall UpdateWindow(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall HookWndProc(Messages::TMessage &Msg);
	
public:
	void __fastcall Init(void);
	__fastcall virtual TMetroScrollControl(Classes::TComponent* AOwner, int Dummy);
	DYNAMIC void __fastcall DragDrop(System::TObject* Source, int X, int Y);
	__property Forms::TScrollBarKind Kind = {read=FKind, write=FKind, default=1};
	__property int ScrollWidth = {read=FScrollWidth, write=FScrollWidth, default=4};
	__property Graphics::TColor ScrollColor = {read=FScrollColor, write=FScrollColor, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TMetroScrollControl(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TMetroScrollControl(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TMetroScrollControl(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
static const Word WM_USERACTIVATE = 0x478;
static const Shortint SCROLLDELTA = 0x6;

}	/* namespace Advmetroscrollbox */
using namespace Advmetroscrollbox;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetroscrollbox
