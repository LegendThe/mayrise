// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Moneyedit.pas' rev: 11.00

#ifndef MoneyeditHPP
#define MoneyeditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Moneyedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TTabForm;
class PASCALIMPLEMENTATION TTabForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	int FButtonWidth;
	int FButtonHeight;
	Graphics::TColor FButtonColor;
	bool FEx[4];
	void __fastcall SetEx(int i, bool b);
	bool __fastcall GetEx(int i);
	MESSAGE void __fastcall CMWantSpecialKey(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMClose(Messages::TMessage &Msg);
	
protected:
	DYNAMIC void __fastcall Paint(void);
	
public:
	__fastcall virtual TTabForm(Classes::TComponent* aOwner);
	__fastcall virtual ~TTabForm(void);
	__property bool Ex[int i] = {read=GetEx, write=SetEx};
	
__published:
	__property int ButtonWidth = {read=FButtonWidth, write=FButtonWidth, nodefault};
	__property int ButtonHeight = {read=FButtonHeight, write=FButtonHeight, nodefault};
	__property Graphics::TColor ButtonColor = {read=FButtonColor, write=FButtonColor, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TTabForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TTabForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TDropCalculatorButton;
class PASCALIMPLEMENTATION TDropCalculatorButton : public Buttons::TSpeedButton 
{
	typedef Buttons::TSpeedButton inherited;
	
private:
	Controls::TWinControl* FFocusControl;
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	DYNAMIC void __fastcall Click(void);
	__fastcall virtual TDropCalculatorButton(Classes::TComponent* AOwner);
	
__published:
	__property Controls::TWinControl* FocusControl = {read=FFocusControl, write=FFocusControl};
public:
	#pragma option push -w-inl
	/* TSpeedButton.Destroy */ inline __fastcall virtual ~TDropCalculatorButton(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCalculatorButton;
class PASCALIMPLEMENTATION TCalculatorButton : public Buttons::TSpeedButton 
{
	typedef Buttons::TSpeedButton inherited;
	
private:
	AnsiString FCaption;
	void __fastcall SetCaption(const AnsiString Value);
	
protected:
	virtual void __fastcall Paint(void);
	
__published:
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
public:
	#pragma option push -w-inl
	/* TSpeedButton.Create */ inline __fastcall virtual TCalculatorButton(Classes::TComponent* AOwner) : Buttons::TSpeedButton(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TSpeedButton.Destroy */ inline __fastcall virtual ~TCalculatorButton(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCalculatorLook;
class PASCALIMPLEMENTATION TCalculatorLook : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Graphics::TBitmap* FButtonBkg;
	int FButtonWidth;
	int FButtonHeight;
	Graphics::TColor FButtonColor;
	Graphics::TColor FColor;
	Graphics::TFont* FFont;
	bool FFlat;
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetButtonBkg(const Graphics::TBitmap* Value);
	
public:
	__fastcall TCalculatorLook(void);
	__fastcall virtual ~TCalculatorLook(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property int ButtonWidth = {read=FButtonWidth, write=FButtonWidth, nodefault};
	__property int ButtonHeight = {read=FButtonHeight, write=FButtonHeight, nodefault};
	__property Graphics::TColor ButtonColor = {read=FButtonColor, write=FButtonColor, nodefault};
	__property Graphics::TColor Color = {read=FColor, write=FColor, nodefault};
	__property bool Flat = {read=FFlat, write=FFlat, nodefault};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Graphics::TBitmap* ButtonBkg = {read=FButtonBkg, write=SetButtonBkg};
};


class DELPHICLASS TExtraButtons;
class PASCALIMPLEMENTATION TExtraButtons : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString fExtra1;
	AnsiString fExtra4;
	AnsiString fExtra2;
	AnsiString fExtra3;
	
__published:
	__property AnsiString Extra1 = {read=fExtra1, write=fExtra1};
	__property AnsiString Extra2 = {read=fExtra2, write=fExtra2};
	__property AnsiString Extra3 = {read=fExtra3, write=fExtra3};
	__property AnsiString Extra4 = {read=fExtra4, write=fExtra4};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TExtraButtons(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TExtraButtons(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TExtraButtonClickEvent)(System::TObject* Sender, int idx, Extended &value);

class DELPHICLASS TMoneyEdit;
class PASCALIMPLEMENTATION TMoneyEdit : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	TDropCalculatorButton* FButton;
	bool FEditorEnabled;
	Classes::TNotifyEvent FOnClickBtn;
	TTabForm* FCalcForm;
	bool FCalcClosed;
	bool FCloseClick;
	TCalculatorButton* sp[23];
	bool newval;
	Extended prevval;
	int prevop;
	TCalculatorLook* FCalculatorLook;
	TExtraButtons* FExtraButtons;
	TExtraButtonClickEvent FOnExtraButtonClick;
	int __fastcall GetMinHeight(void);
	void __fastcall SetEditRect(void);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall WMPaste(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall WMCut(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	void __fastcall FormDeactivate(System::TObject* Sender);
	void __fastcall NumButtonClick(System::TObject* Sender);
	void __fastcall FormKeyPress(System::TObject* Sender, char &Key);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall ShowCalculator(void);
	void __fastcall HideCalculator(void);
	void __fastcall BuildCalculator(Forms::TForm* AForm);
	Graphics::TBitmap* __fastcall GetButtonGlyph(void);
	void __fastcall SetButtonGlyph(const Graphics::TBitmap* Value);
	void __fastcall docalc(void);
	void __fastcall doplus(void);
	void __fastcall domin(void);
	void __fastcall domul(void);
	void __fastcall dodiv(void);
	void __fastcall doeq(void);
	void __fastcall doperc(void);
	void __fastcall SetEditorEnabled(const bool Value);
	void __fastcall SetCalculatorLook(const TCalculatorLook* Value);
	Extended __fastcall GetValue(void);
	void __fastcall SetValue(const Extended Value);
	virtual void __fastcall BtnClick(System::TObject* Sender);
	void __fastcall SetExtraButtons(const TExtraButtons* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	virtual Forms::TCustomForm* __fastcall GetParentForm(Controls::TControl* Control);
	DYNAMIC void __fastcall KeyPress(char &key);
	virtual void __fastcall CalcChange(void);
	
public:
	__fastcall virtual TMoneyEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TMoneyEdit(void);
	__property TDropCalculatorButton* Button = {read=FButton};
	__property Text ;
	__property Extended Value = {read=GetValue, write=SetValue};
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property DragKind  = {default=0};
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property TCalculatorLook* CalculatorLook = {read=FCalculatorLook, write=SetCalculatorLook};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property bool EditorEnabled = {read=FEditorEnabled, write=SetEditorEnabled, default=1};
	__property Enabled  = {default=1};
	__property TExtraButtons* ExtraButtons = {read=FExtraButtons, write=SetExtraButtons};
	__property Font ;
	__property Graphics::TBitmap* ButtonGlyph = {read=GetButtonGlyph, write=SetButtonGlyph};
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property Height ;
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Width ;
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
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
	__property OnStartDrag ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property Classes::TNotifyEvent OnClickBtn = {read=FOnClickBtn, write=FOnClickBtn};
	__property TExtraButtonClickEvent OnExtraButtonClick = {read=FOnExtraButtonClick, write=FOnExtraButtonClick};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TMoneyEdit(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;

}	/* namespace Moneyedit */
using namespace Moneyedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Moneyedit