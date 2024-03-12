// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Aerowizardbutton.pas' rev: 11.00

#ifndef AerowizardbuttonHPP
#define AerowizardbuttonHPP

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
#include <Messages.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Aerowizardbutton
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TButtonType { btBack, btForward, btBackForward };
#pragma option pop

#pragma option push -b-
enum TButtonPart { bpNone, bpBack, bpForward, bpDropDown };
#pragma option pop

#pragma option push -b-
enum TButtonState { bsNormal, bsHot, bsDown, bsDisabled };
#pragma option pop

#pragma option push -b-
enum TWizButton { wbBack, wbForward };
#pragma option pop

typedef void __fastcall (__closure *TOnAeroButtonEvent)(System::TObject* Sender, TWizButton Button);

class DELPHICLASS TAeroWizardButton;
class PASCALIMPLEMENTATION TAeroWizardButton : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FMouseInControl;
	bool FDropDownButton;
	TButtonType FButtonType;
	bool FAutoHeight;
	bool FIsAeroVista;
	bool FUpdatingSize;
	TButtonPart FHotButton;
	TButtonPart FDownButton;
	bool FMouseDown;
	Menus::TPopupMenu* FDropDownMenu;
	Classes::TNotifyEvent FOnDropDown;
	bool FForwardEnabled;
	bool FBackEnabled;
	AnsiString FForwardHint;
	AnsiString FDropDownButtonHint;
	AnsiString FBackHint;
	TButtonPart FFocusedPart;
	TOnAeroButtonEvent FOnClick;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Controls::TCMFocusChanged &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Message);
	void __fastcall SetDropDownButton(const bool Value);
	void __fastcall SetButtonType(const TButtonType Value);
	void __fastcall SetAutoHeight(const bool Value);
	void __fastcall SetBackEnabled(const bool Value);
	void __fastcall SetForwardEnabled(const bool Value);
	
protected:
	virtual void __fastcall CreateHandle(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	bool __fastcall IsOnGlass(void);
	virtual void __fastcall UpdateSize(void);
	DYNAMIC void __fastcall AdjustSize(void);
	virtual void __fastcall Loaded(void);
	Types::TRect __fastcall GetButtonRect(TButtonPart ButtonPart);
	TButtonPart __fastcall PtOnButton(const Types::TPoint &P);
	void __fastcall InvalidateButton(TButtonPart ButtonPart);
	bool __fastcall IsDropDownEnabled(void);
	virtual void __fastcall DoDropDown(void);
	virtual void __fastcall DoButtonClick(TButtonPart Button);
	
public:
	__fastcall virtual TAeroWizardButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TAeroWizardButton(void);
	DYNAMIC void __fastcall Click(void);
	
__published:
	__property Anchors  = {default=3};
	__property bool AutoHeight = {read=FAutoHeight, write=SetAutoHeight, default=1};
	__property bool BackEnabled = {read=FBackEnabled, write=SetBackEnabled, default=1};
	__property AnsiString BackHint = {read=FBackHint, write=FBackHint};
	__property BiDiMode ;
	__property TButtonType ButtonType = {read=FButtonType, write=SetButtonType, default=2};
	__property Constraints ;
	__property bool DropDownButton = {read=FDropDownButton, write=SetDropDownButton, default=1};
	__property AnsiString DropDownButtonHint = {read=FDropDownButtonHint, write=FDropDownButtonHint};
	__property Menus::TPopupMenu* DropDownMenu = {read=FDropDownMenu, write=FDropDownMenu};
	__property Enabled  = {default=1};
	__property bool ForwardEnabled = {read=FForwardEnabled, write=SetForwardEnabled, default=1};
	__property AnsiString ForwardHint = {read=FForwardHint, write=FForwardHint};
	__property ParentShowHint  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property OnEnter ;
	__property OnExit ;
	__property TOnAeroButtonEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TNotifyEvent OnDropDown = {read=FOnDropDown, write=FOnDropDown};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAeroWizardButton(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Aerowizardbutton */
using namespace Aerowizardbutton;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Aerowizardbutton
