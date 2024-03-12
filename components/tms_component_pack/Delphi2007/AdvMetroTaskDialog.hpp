// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetrotaskdialog.pas' rev: 11.00

#ifndef AdvmetrotaskdialogHPP
#define AdvmetrotaskdialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Clipbrd.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Advmetroform.hpp>	// Pascal unit
#include <Advglowbutton.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Advgdipicture.hpp>	// Pascal unit
#include <Advmetrores.hpp>	// Pascal unit
#include <Advmetroprogressbar.hpp>	// Pascal unit
#include <Gdipicture.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetrotaskdialog
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TTaskDialogResult { trNone, trOk, trCancel };
#pragma option pop

#pragma option push -b-
enum TTaskDialogOption { doHyperlinks, doCommandLinks, doCommandLinksNoIcon, doExpandedDefault, doExpandedFooter, doAllowMinimize, doVerifyChecked, doProgressBar, doTimer, doNoDefaultRadioButton, doAllowDialogCancel };
#pragma option pop

typedef Set<TTaskDialogOption, doHyperlinks, doAllowDialogCancel>  TTaskDialogOptions;

#pragma option push -b-
enum TTaskDialogIcon { tiBlank, tiWarning, tiQuestion, tiError, tiInformation, tiNotUsed, tiShield };
#pragma option pop

#pragma option push -b-
enum TTaskDialogFooterIcon { tfiBlank, tfiWarning, tfiQuestion, tfiError, tfiInformation, tfiShield };
#pragma option pop

#pragma option push -b-
enum TTaskDialogProgressState { psNormal, psError, psPaused };
#pragma option pop

#pragma option push -b-
enum TTaskDialogPosition { dpScreenCenter, dpOwnerFormCenter };
#pragma option pop

#pragma option push -b-
enum TCommonButton { cbOK, cbYes, cbNo, cbCancel, cbRetry, cbClose };
#pragma option pop

typedef void __fastcall (__closure *TTaskDialogButtonClickEvent)(System::TObject* Sender, int ButtonID);

typedef void __fastcall (__closure *TTaskDialogHyperlinkClickEvent)(System::TObject* Sender, AnsiString HRef);

typedef void __fastcall (__closure *TTaskDialogVerifyClickEvent)(System::TObject* Sender, bool Checked);

typedef void __fastcall (__closure *TTaskDialogCloseEvent)(System::TObject* Sender, bool &CanClose);

typedef void __fastcall (__closure *TTaskDialogProgressEvent)(System::TObject* Sender, int &Pos, TTaskDialogProgressState &State);

typedef Set<TCommonButton, cbOK, cbClose>  TCommonButtons;

#pragma option push -b-
enum TInputType { itEdit, itMemo, itComboEdit, itComboList, itDate, itCustom, itNone };
#pragma option pop

typedef void __fastcall (__closure *TInputGetTextEvent)(System::TObject* Sender, AnsiString &Text);

typedef void __fastcall (__closure *TInputSetTextEvent)(System::TObject* Sender, AnsiString Text);

class DELPHICLASS TCustomAdvMetroTaskDialog;
class DELPHICLASS TAdvMessageForm;
class DELPHICLASS TTaskDialogButton;
class PASCALIMPLEMENTATION TTaskDialogButton : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	Classes::TNotifyEvent FOnMouseLeave;
	Classes::TNotifyEvent FOnMouseEnter;
	Graphics::TBitmap* FGlyph;
	Graphics::TBitmap* FGlyphDisabled;
	Graphics::TBitmap* FGlyphDown;
	Graphics::TBitmap* FGlyphHot;
	bool FMouseInControl;
	bool FMouseDown;
	Graphics::TColor FBorderColorDown;
	Graphics::TColor FBorderColorHot;
	Graphics::TColor FBorderColor;
	Controls::TModalResult FModalResult;
	Graphics::TFont* FHeadingFont;
	bool FAutoFocus;
	Graphics::TColor FBackColor;
	Gdipicture::TGDIPPicture* FGDIPPicture;
	void __fastcall OnPictureChanged(System::TObject* Sender);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	void __fastcall SetGlyph(const Graphics::TBitmap* Value);
	void __fastcall SetGlyphDisabled(const Graphics::TBitmap* Value);
	void __fastcall SetGlyphDown(const Graphics::TBitmap* Value);
	void __fastcall SetGlyphHot(const Graphics::TBitmap* Value);
	void __fastcall SetHeadingFont(const Graphics::TFont* Value);
	void __fastcall SetGDIPPicture(const Gdipicture::TGDIPPicture* Value);
	
protected:
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	__fastcall virtual TTaskDialogButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TTaskDialogButton(void);
	DYNAMIC void __fastcall Click(void);
	DYNAMIC void __fastcall DoEnter(void);
	DYNAMIC void __fastcall DoExit(void);
	__property bool AutoFocus = {read=FAutoFocus, write=FAutoFocus, nodefault};
	
__published:
	__property Anchors  = {default=3};
	__property Graphics::TColor BackColor = {read=FBackColor, write=FBackColor, default=536870911};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=FBorderColor, nodefault};
	__property Graphics::TColor BorderColorHot = {read=FBorderColorHot, write=FBorderColorHot, nodefault};
	__property Graphics::TColor BorderColorDown = {read=FBorderColorDown, write=FBorderColorDown, nodefault};
	__property Constraints ;
	__property Enabled  = {default=1};
	__property Graphics::TFont* HeadingFont = {read=FHeadingFont, write=SetHeadingFont};
	__property Controls::TModalResult ModalResult = {read=FModalResult, write=FModalResult, default=0};
	__property Gdipicture::TGDIPPicture* GDIPPicture = {read=FGDIPPicture, write=SetGDIPPicture};
	__property Graphics::TBitmap* Picture = {read=FGlyph, write=SetGlyph};
	__property Graphics::TBitmap* PictureHot = {read=FGlyphHot, write=SetGlyphHot};
	__property Graphics::TBitmap* PictureDown = {read=FGlyphDown, write=SetGlyphDown};
	__property Graphics::TBitmap* PictureDisabled = {read=FGlyphDisabled, write=SetGlyphDisabled};
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TTaskDialogButton(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvMessageForm : public Advmetroform::TAdvMetroForm 
{
	typedef Advmetroform::TAdvMetroForm inherited;
	
private:
	Stdctrls::TLabel* Message;
	int FHorzMargin;
	int FVertMargin;
	int FHorzSpacing;
	int FVertSpacing;
	TTaskDialogButton* FExpandButton;
	bool FExpanded;
	AnsiString FExpandControlText;
	AnsiString FCollapsControlText;
	Classes::TList* FcmBtnList;
	Classes::TList* FcsBtnList;
	TCustomAdvMetroTaskDialog* FTaskDialog;
	Advgdipicture::TAdvGDIPPicture* FFooterIcon;
	AnsiString FFooterIconID;
	Classes::TList* FRadioList;
	Stdctrls::TCheckBox* FVerificationCheck;
	Advmetroprogressbar::TAdvMetroProgressBar* FProgressBar;
	Advgdipicture::TAdvGDIPPicture* FIcon;
	int FFooterXSize;
	int FFooterYSize;
	int FContentXSize;
	int FContentYSize;
	int FExpTextXSize;
	int FExpTextYSize;
	int FExpTextTop;
	AnsiString FAnchor;
	Extctrls::TTimer* FTimer;
	int FWhiteWindowHeight;
	int FHorzParaMargin;
	int FMinFormWidth;
	Stdctrls::TEdit* FInputEdit;
	Stdctrls::TComboBox* FInputCombo;
	Comctrls::TDateTimePicker* FInputDate;
	Stdctrls::TMemo* FInputMemo;
	Controls::TWinControl* FOldParent;
	Graphics::TColor FFooterColor;
	Graphics::TColor FFooterLineColor;
	HIDESBASE MESSAGE void __fastcall WMActivate(Messages::TWMActivate &M);
	HIDESBASE MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	void __fastcall OnTimer(System::TObject* Sender);
	void __fastcall OnExpandButtonClick(System::TObject* Sender);
	void __fastcall OnVerifyClick(System::TObject* Sender);
	void __fastcall OnRadioClick(System::TObject* Sender);
	void __fastcall OnButtonClick(System::TObject* Sender);
	void __fastcall SetExpandButton(const TTaskDialogButton* Value);
	void __fastcall GetTextSize(Graphics::TCanvas* Canvas, AnsiString Text, int &W, int &H);
	
protected:
	void __fastcall SetExpanded(bool Value);
	void __fastcall CustomKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall WriteToClipBoard(AnsiString Text);
	AnsiString __fastcall GetFormText();
	DYNAMIC void __fastcall Paint(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall DoClose(Forms::TCloseAction &Action);
	Stdctrls::TButton* __fastcall GetButton(int ButtonID, TTaskDialogButton* &TaskButton);
	void __fastcall EnableButton(int ButtonID, bool Enabled);
	void __fastcall ClickButton(int ButtonID);
	AnsiString __fastcall IsAnchor(int x, int y);
	Types::TRect __fastcall GetFooterRect();
	Types::TRect __fastcall GetContentRect();
	Types::TRect __fastcall GetExpTextRect();
	void __fastcall DrawExpandedText(void);
	void __fastcall DrawContent(void);
	void __fastcall DrawFooter(void);
	__property bool Expanded = {read=FExpanded, default=1};
	__property TTaskDialogButton* ExpandButton = {read=FExpandButton, write=SetExpandButton};
	DYNAMIC void __fastcall DoShow(void);
	__property Graphics::TColor FooterColor = {read=FFooterColor, write=FFooterColor, nodefault};
	__property Graphics::TColor FooterLineColor = {read=FFooterLineColor, write=FFooterLineColor, nodefault};
	
public:
	__fastcall TAdvMessageForm(Classes::TComponent* AOwner, int Dummy);
	__fastcall virtual ~TAdvMessageForm(void);
	void __fastcall BuildTaskDialog(TCustomAdvMetroTaskDialog* TaskDialog);
	void __fastcall SetPositions(void);
	void __fastcall UpdateDialog(void);
	__property int MinFormWidth = {read=FMinFormWidth, write=FMinFormWidth, nodefault};
public:
	#pragma option push -w-inl
	/* TAdvMetroForm.Create */ inline __fastcall virtual TAdvMessageForm(Classes::TComponent* AOwner) : Advmetroform::TAdvMetroForm(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMessageForm(HWND ParentWindow) : Advmetroform::TAdvMetroForm(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TCustomAdvMetroTaskDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Advstyleif::TColorTones FColorTones;
	AnsiString FTitle;
	AnsiString FContent;
	AnsiString FFooter;
	AnsiString FInstruction;
	TCommonButtons FCommonButtons;
	AnsiString FExpandedText;
	AnsiString FCollapsControlText;
	AnsiString FExpandControlText;
	int FButtonResult;
	bool FVerifyResult;
	AnsiString FVerifyText;
	Classes::TStringList* FCustomButtons;
	Graphics::TIcon* FCustomIcon;
	TTaskDialogOptions FOptions;
	Classes::TStringList* FRadioButtons;
	unsigned FhWnd;
	Classes::TNotifyEvent FOnCreated;
	Classes::TNotifyEvent FOnTimer;
	int FHelpContext;
	int FProgressBarMin;
	int FProgressBarMax;
	bool FAutoClose;
	int FAutoCloseTimeout;
	int FAutoCloseCounter;
	TTaskDialogHyperlinkClickEvent FOnDialogHyperlinkClick;
	TTaskDialogButtonClickEvent FOnDialogClick;
	TTaskDialogButtonClickEvent FOnDialogRadioClick;
	TTaskDialogVerifyClickEvent FOnDialogVerifyClick;
	TTaskDialogProgressEvent FOnDialogProgress;
	TTaskDialogCloseEvent FOnDialogClose;
	TInputGetTextEvent FOnDialogInputGetText;
	TInputSetTextEvent FOnDialogInputSetText;
	TTaskDialogIcon FIcon;
	TTaskDialogFooterIcon FFooterIcon;
	int FDefaultButton;
	int FDefaultRadioButton;
	TAdvMessageForm* FDialogForm;
	TTaskDialogPosition FDlgPosition;
	bool FApplicationIsParent;
	bool FAlwaysOnTop;
	unsigned FModalParent;
	int FMinFormWidth;
	TInputType FInputType;
	AnsiString FInputText;
	Classes::TStrings* FInputItems;
	Controls::TWinControl* FInputControl;
	int FInputDropDownCount;
	Graphics::TColor FFooterColor;
	Graphics::TColor FFooterLineColor;
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	void __fastcall SetCustomButtons(const Classes::TStringList* Value);
	void __fastcall SetRadioButtons(const Classes::TStringList* Value);
	void __fastcall SetContent(const AnsiString Value);
	void __fastcall SetInstruction(const AnsiString Value);
	void __fastcall SetFooter(const AnsiString Value);
	void __fastcall SetExpandedText(const AnsiString Value);
	void __fastcall SetCustomIcon(const Graphics::TIcon* Value);
	void __fastcall SetInputItems(const Classes::TStrings* Value);
	
protected:
	virtual Controls::TWinControl* __fastcall CreateButton(Classes::TComponent* AOwner);
	virtual Controls::TWinControl* __fastcall CreateRadioButton(Classes::TComponent* AOwner);
	virtual void __fastcall InitRadioButton(Forms::TForm* AOwner, Controls::TWinControl* Btn, int btnIndex, Classes::TNotifyEvent OnClickEvent);
	virtual void __fastcall SetRadioButtonState(Controls::TWinControl* Btn, bool Checked);
	virtual void __fastcall SetRadioButtonCaption(Controls::TWinControl* Btn, AnsiString Value);
	virtual void __fastcall SetButtonCaption(Controls::TWinControl* aButton, AnsiString Value);
	virtual void __fastcall SetButtonCancel(Controls::TWinControl* aButton, bool Value);
	virtual void __fastcall SetButtonDefault(Controls::TWinControl* aButton, bool Value);
	virtual void __fastcall SetButtonModalResult(Controls::TWinControl* aButton, int Value);
	virtual int __fastcall GetButtonModalResult(Controls::TWinControl* aButton);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall TaskDialogFormCreated(System::TObject* Sender);
	__property Classes::TStringList* CustomButtons = {read=FCustomButtons, write=SetCustomButtons};
	__property Graphics::TIcon* CustomIcon = {read=FCustomIcon, write=SetCustomIcon};
	__property Classes::TStringList* RadioButtons = {read=FRadioButtons, write=SetRadioButtons};
	__property TCommonButtons CommonButtons = {read=FCommonButtons, write=FCommonButtons, nodefault};
	__property int DefaultButton = {read=FDefaultButton, write=FDefaultButton, default=0};
	__property int DefaultRadioButton = {read=FDefaultRadioButton, write=FDefaultRadioButton, default=200};
	__property TTaskDialogPosition DialogPosition = {read=FDlgPosition, write=FDlgPosition, default=0};
	__property AnsiString ExpandedText = {read=FExpandedText, write=SetExpandedText};
	__property AnsiString Footer = {read=FFooter, write=SetFooter};
	__property TTaskDialogFooterIcon FooterIcon = {read=FFooterIcon, write=FFooterIcon, default=0};
	__property int HelpContext = {read=FHelpContext, write=FHelpContext, default=0};
	__property TTaskDialogIcon Icon = {read=FIcon, write=FIcon, default=0};
	__property int InputDropDownCount = {read=FInputDropDownCount, write=FInputDropDownCount, default=8};
	__property AnsiString InputText = {read=FInputText, write=FInputText};
	__property TInputType InputType = {read=FInputType, write=FInputType, nodefault};
	__property Classes::TStrings* InputItems = {read=FInputItems, write=SetInputItems};
	__property Controls::TWinControl* InputControl = {read=FInputControl, write=FInputControl};
	__property AnsiString Title = {read=FTitle, write=FTitle};
	__property AnsiString Instruction = {read=FInstruction, write=SetInstruction};
	__property AnsiString Content = {read=FContent, write=SetContent};
	__property AnsiString ExpandControlText = {read=FExpandControlText, write=FExpandControlText};
	__property AnsiString CollapsControlText = {read=FCollapsControlText, write=FCollapsControlText};
	__property TTaskDialogOptions Options = {read=FOptions, write=FOptions, nodefault};
	__property AnsiString VerificationText = {read=FVerifyText, write=FVerifyText};
	__property int MinFormWidth = {read=FMinFormWidth, write=FMinFormWidth, default=350};
	__property bool AutoClose = {read=FAutoClose, write=FAutoClose, default=0};
	__property int AutoCloseTimeOut = {read=FAutoCloseTimeout, write=FAutoCloseTimeout, default=0};
	__property int ProgressBarMin = {read=FProgressBarMin, write=FProgressBarMin, default=0};
	__property int ProgressBarMax = {read=FProgressBarMax, write=FProgressBarMax, default=100};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Classes::TNotifyEvent OnDialogCreated = {read=FOnCreated, write=FOnCreated};
	__property TTaskDialogCloseEvent OnDialogClose = {read=FOnDialogClose, write=FOnDialogClose};
	__property TTaskDialogButtonClickEvent OnDialogButtonClick = {read=FOnDialogClick, write=FOnDialogClick};
	__property TInputSetTextEvent OnDialogInputSetText = {read=FOnDialogInputSetText, write=FOnDialogInputSetText};
	__property TInputGetTextEvent OnDialogInputGetText = {read=FOnDialogInputGetText, write=FOnDialogInputGetText};
	__property TTaskDialogButtonClickEvent OnDialogRadioClick = {read=FOnDialogRadioClick, write=FOnDialogRadioClick};
	__property TTaskDialogHyperlinkClickEvent OnDialogHyperlinkClick = {read=FOnDialogHyperlinkClick, write=FOnDialogHyperlinkClick};
	__property Classes::TNotifyEvent OnDialogTimer = {read=FOnTimer, write=FOnTimer};
	__property TTaskDialogVerifyClickEvent OnDialogVerifyClick = {read=FOnDialogVerifyClick, write=FOnDialogVerifyClick};
	__property TTaskDialogProgressEvent OnDialogProgress = {read=FOnDialogProgress, write=FOnDialogProgress};
	
public:
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	__property bool ApplicationIsParent = {read=FApplicationIsParent, write=FApplicationIsParent, default=0};
	__property bool AlwaysOnTop = {read=FAlwaysOnTop, write=FAlwaysOnTop, default=0};
	__property unsigned hWnd = {read=FhWnd, write=FhWnd, nodefault};
	__fastcall virtual TCustomAdvMetroTaskDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TCustomAdvMetroTaskDialog(void);
	virtual int __fastcall Execute(void);
	void __fastcall Clear(void);
	void __fastcall Close(void);
	void __fastcall EnableButton(int ButtonID, bool Enabled);
	void __fastcall ClickButton(int ButtonID);
	__property int RadioButtonResult = {read=FButtonResult, write=FButtonResult, nodefault};
	__property bool VerifyResult = {read=FVerifyResult, write=FVerifyResult, nodefault};
	__property unsigned ModalParent = {read=FModalParent, write=FModalParent, nodefault};
	__property Graphics::TColor FooterColor = {read=FFooterColor, write=FFooterColor, nodefault};
	__property Graphics::TColor FooterLineColor = {read=FFooterLineColor, write=FFooterLineColor, nodefault};
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


class DELPHICLASS TAdvMetroTaskDialog;
class PASCALIMPLEMENTATION TAdvMetroTaskDialog : public TCustomAdvMetroTaskDialog 
{
	typedef TCustomAdvMetroTaskDialog inherited;
	
__published:
	__property AutoClose  = {default=0};
	__property AutoCloseTimeOut  = {default=0};
	__property CustomButtons ;
	__property CustomIcon ;
	__property RadioButtons ;
	__property CommonButtons ;
	__property DefaultButton  = {default=0};
	__property DefaultRadioButton  = {default=200};
	__property DialogPosition  = {default=0};
	__property ExpandedText ;
	__property Footer ;
	__property FooterIcon  = {default=0};
	__property HelpContext  = {default=0};
	__property Icon  = {default=0};
	__property Title ;
	__property Instruction ;
	__property Content ;
	__property ExpandControlText ;
	__property CollapsControlText ;
	__property Options ;
	__property ApplicationIsParent  = {default=0};
	__property VerificationText ;
	__property MinFormWidth  = {default=350};
	__property ProgressBarMin  = {default=0};
	__property ProgressBarMax  = {default=100};
	__property Version ;
	__property OnDialogCreated ;
	__property OnDialogClose ;
	__property OnDialogButtonClick ;
	__property OnDialogRadioClick ;
	__property OnDialogHyperlinkClick ;
	__property OnDialogTimer ;
	__property OnDialogVerifyClick ;
	__property OnDialogProgress ;
public:
	#pragma option push -w-inl
	/* TCustomAdvMetroTaskDialog.Create */ inline __fastcall virtual TAdvMetroTaskDialog(Classes::TComponent* AOwner) : TCustomAdvMetroTaskDialog(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomAdvMetroTaskDialog.Destroy */ inline __fastcall virtual ~TAdvMetroTaskDialog(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvInputMetroTaskDialog;
class PASCALIMPLEMENTATION TAdvInputMetroTaskDialog : public TCustomAdvMetroTaskDialog 
{
	typedef TCustomAdvMetroTaskDialog inherited;
	
private:
	bool FExpandedDefault;
	
public:
	__fastcall virtual TAdvInputMetroTaskDialog(Classes::TComponent* AOwner);
	virtual int __fastcall Execute(void);
	__property Options ;
	
__published:
	__property ApplicationIsParent  = {default=0};
	__property CustomButtons ;
	__property CustomIcon ;
	__property CommonButtons ;
	__property DefaultButton  = {default=0};
	__property DialogPosition  = {default=0};
	__property bool ExpandedDefault = {read=FExpandedDefault, write=FExpandedDefault, default=0};
	__property ExpandedText ;
	__property Footer ;
	__property FooterIcon  = {default=0};
	__property Icon  = {default=0};
	__property InputControl ;
	__property InputDropDownCount  = {default=8};
	__property InputType  = {default=0};
	__property InputText ;
	__property InputItems ;
	__property Instruction ;
	__property Title ;
	__property Content ;
	__property ExpandControlText ;
	__property CollapsControlText ;
	__property VerificationText ;
	__property Version ;
	__property OnDialogCreated ;
	__property OnDialogClose ;
	__property OnDialogButtonClick ;
	__property OnDialogVerifyClick ;
	__property OnDialogInputSetText ;
	__property OnDialogInputGetText ;
	__property OnDialogHyperlinkClick ;
public:
	#pragma option push -w-inl
	/* TCustomAdvMetroTaskDialog.Destroy */ inline __fastcall virtual ~TAdvInputMetroTaskDialog(void) { }
	#pragma option pop
	
};


typedef AnsiString AdvMetroTaskDialog__6[6];

//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;
extern PACKAGE bool DRAWBORDER;
extern PACKAGE AnsiString ButtonNames[6];
extern PACKAGE void *ButtonCaptions[6];
extern PACKAGE int __fastcall AdvMessageDlgPos(TCustomAdvMetroTaskDialog* TaskDialog, int X, int Y);
extern PACKAGE bool __fastcall MetroTaskShowMessage(const AnsiString Title, const AnsiString Instruction, const AnsiString content, const AnsiString verify, TTaskDialogIcon tiIcon)/* overload */;
extern PACKAGE bool __fastcall MetroTaskShowMessage(const AnsiString Instruction)/* overload */;
extern PACKAGE bool __fastcall MetroTaskShowMessage(const AnsiString Title, const AnsiString Instruction)/* overload */;
extern PACKAGE bool __fastcall MetroTaskShowMessage(const AnsiString Title, const AnsiString Instruction, TTaskDialogIcon tiIcon)/* overload */;
extern PACKAGE bool __fastcall MetroTaskShowMessageFmt(const AnsiString Instruction, System::TVarRec * Parameters, const int Parameters_Size);
extern PACKAGE int __fastcall MetroTaskMessageBox(HWND hWnd, char * lpInstruction, char * lpTitle, unsigned flags);
extern PACKAGE int __fastcall MetroTaskMessageDlg(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlg(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, Dialogs::TMsgDlgBtn DefaultButton)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlgPos(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlgPos(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y, Dialogs::TMsgDlgBtn DefaultButton)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlgPosHelp(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y, const AnsiString HelpFileName)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlg(const AnsiString Instruction, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlg(const AnsiString Instruction, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, Dialogs::TMsgDlgBtn DefaultButton)/* overload */;
extern PACKAGE int __fastcall MetroTaskMessageDlgPosHelp(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y, const AnsiString HelpFileName, Dialogs::TMsgDlgBtn DefaultButton)/* overload */;
extern PACKAGE bool __fastcall MetroInputQueryDlg(AnsiString ACaption, AnsiString APrompt, AnsiString &Value);

}	/* namespace Advmetrotaskdialog */
using namespace Advmetrotaskdialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetrotaskdialog
