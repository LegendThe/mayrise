// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcdemorichedit.pas' rev: 11.00

#ifndef FcdemoricheditHPP
#define FcdemoricheditHPP

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
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcdemorichedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcDemoRichEdit;
class PASCALIMPLEMENTATION TfcDemoRichEdit : public Comctrls::TCustomRichEdit 
{
	typedef Comctrls::TCustomRichEdit inherited;
	
private:
	Classes::TStream* ReloadStream;
	bool UseReloadStream;
	
protected:
	virtual void __fastcall GetLines(Classes::TStream* Stream);
	HIDESBASE virtual void __fastcall SetLines(Classes::TStream* Stream);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	
public:
	__fastcall virtual ~TfcDemoRichEdit(void);
	
__published:
	__property Align  = {default=0};
	__property Alignment  = {default=0};
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property HideScrollBars  = {default=1};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PlainText  = {default=0};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ScrollBars  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property WantTabs  = {default=0};
	__property WantReturns  = {default=1};
	__property WordWrap  = {default=1};
	__property OnChange ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResizeRequest ;
	__property OnSelectionChange ;
	__property OnStartDrag ;
	__property OnProtectChange ;
	__property OnSaveClipboard ;
public:
	#pragma option push -w-inl
	/* TCustomRichEdit.Create */ inline __fastcall virtual TfcDemoRichEdit(Classes::TComponent* AOwner) : Comctrls::TCustomRichEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDemoRichEdit(HWND ParentWindow) : Comctrls::TCustomRichEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcdemorichedit */
using namespace Fcdemorichedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcdemorichedit
