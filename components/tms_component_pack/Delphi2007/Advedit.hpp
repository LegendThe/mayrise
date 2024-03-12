// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advedit.pas' rev: 11.00

#ifndef AdveditHPP
#define AdveditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Adveddd.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advedit
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TLabelPosition { lpLeftTop, lpLeftCenter, lpLeftBottom, lpTopLeft, lpBottomLeft, lpLeftTopLeft, lpLeftCenterLeft, lpLeftBottomLeft, lpTopCenter, lpBottomCenter, lpRightTop, lpRightCenter, lpRighBottom, lpTopRight, lpBottomRight };
#pragma option pop

#pragma option push -b-
enum TAdvEditType { etString, etNumeric, etFloat, etUppercase, etMixedCase, etLowerCase, etPassword, etMoney, etRange, etHex, etAlphaNumeric, etValidChars };
#pragma option pop

#pragma option push -b-
enum TAutoType { atNumeric, atFloat, atString, atDate, atTime, atHex };
#pragma option pop

typedef void __fastcall (__closure *TValueValidateEvent)(System::TObject* Sender, AnsiString value, bool &IsValid);

typedef void __fastcall (__closure *TClipboardEvent)(System::TObject* Sender, AnsiString value, bool &allow);

typedef void __fastcall (__closure *TMaskCompleteEvent)(System::TObject* Sender, AnsiString value, bool &accept);

typedef void __fastcall (__closure *TLookupSelectEvent)(System::TObject* Sender, AnsiString &Value);

typedef void __fastcall (__closure *TLookupIndexSelectEvent)(System::TObject* Sender, int Index, AnsiString &Value);

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


class DELPHICLASS TRangeList;
class PASCALIMPLEMENTATION TRangeList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	int operator[](int index) { return Items[index]; }
	
private:
	void __fastcall SetInteger(int Index, int Value);
	int __fastcall GetInteger(int Index);
	
public:
	__fastcall TRangeList(void);
	__property int Items[int index] = {read=GetInteger, write=SetInteger/*, default*/};
	HIDESBASE void __fastcall Add(int Value);
	void __fastcall AddMultiple(int Value, int Count);
	HIDESBASE void __fastcall Delete(int Index);
	void __fastcall Show(void);
	bool __fastcall InList(int Value);
	bool __fastcall StrToList(AnsiString s);
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TRangeList(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TPersistenceLocation { plInifile, plRegistry };
#pragma option pop

class DELPHICLASS TPersistence;
class PASCALIMPLEMENTATION TPersistence : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnable;
	AnsiString FKey;
	AnsiString FSection;
	TPersistenceLocation FLocation;
	
__published:
	__property bool Enable = {read=FEnable, write=FEnable, default=0};
	__property AnsiString Key = {read=FKey, write=FKey};
	__property AnsiString Section = {read=FSection, write=FSection};
	__property TPersistenceLocation Location = {read=FLocation, write=FLocation, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPersistence(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TPersistence(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TItemClickEvent)(System::TObject* Sender, int Index);

class DELPHICLASS TListBoxTab;
class PASCALIMPLEMENTATION TListBoxTab : public Stdctrls::TListBox 
{
	typedef Stdctrls::TListBox inherited;
	
private:
	bool FHandleTab;
	MESSAGE void __fastcall WMGetDlgCode(Messages::TMessage &Message);
	
__published:
	__property bool HandleTab = {read=FHandleTab, write=FHandleTab, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomListBox.Create */ inline __fastcall virtual TListBoxTab(Classes::TComponent* AOwner) : Stdctrls::TListBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomListBox.Destroy */ inline __fastcall virtual ~TListBoxTab(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TListBoxTab(HWND ParentWindow) : Stdctrls::TListBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TListHintWindow;
class PASCALIMPLEMENTATION TListHintWindow : public Controls::THintWindow 
{
	typedef Controls::THintWindow inherited;
	
private:
	Stdctrls::TListBox* FListControl;
	MESSAGE void __fastcall WMNCButtonDown(Messages::TMessage &Message);
	MESSAGE void __fastcall WMActivate(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__fastcall virtual TListHintWindow(Classes::TComponent* AOwner);
	__fastcall virtual ~TListHintWindow(void);
	__property BorderWidth  = {default=0};
	__property Text ;
	
__published:
	__property Stdctrls::TListBox* ListControl = {read=FListControl, write=FListControl};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TListHintWindow(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TLookupSettings;
class PASCALIMPLEMENTATION TLookupSettings : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TStringList* FDisplayList;
	Classes::TStringList* FValueList;
	int FDisplayCount;
	Graphics::TColor FColor;
	bool FEnabled;
	int FNumChars;
	bool FCaseSensitive;
	bool FHistory;
	bool FMulti;
	char FSeparator;
	bool FAcceptOnTab;
	bool FShowValue;
	void __fastcall SetDisplayList(const Classes::TStringList* Value);
	void __fastcall SetValueList(const Classes::TStringList* Value);
	void __fastcall SetNumChars(const int Value);
	
public:
	__fastcall TLookupSettings(void);
	__fastcall virtual ~TLookupSettings(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall AddPair(AnsiString DisplayText, AnsiString Value);
	
__published:
	__property bool AcceptOnTab = {read=FAcceptOnTab, write=FAcceptOnTab, default=0};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
	__property Graphics::TColor Color = {read=FColor, write=FColor, default=-16777211};
	__property int DisplayCount = {read=FDisplayCount, write=FDisplayCount, default=4};
	__property Classes::TStringList* DisplayList = {read=FDisplayList, write=SetDisplayList};
	__property bool Enabled = {read=FEnabled, write=FEnabled, default=0};
	__property bool History = {read=FHistory, write=FHistory, default=0};
	__property int NumChars = {read=FNumChars, write=SetNumChars, default=2};
	__property Classes::TStringList* ValueList = {read=FValueList, write=SetValueList};
	__property bool Multi = {read=FMulti, write=FMulti, default=0};
	__property char Separator = {read=FSeparator, write=FSeparator, nodefault};
	__property bool ShowValue = {read=FShowValue, write=FShowValue, default=0};
};


typedef void __fastcall (__closure *TURLClickEvent)(System::TObject* Sender, AnsiString URL, bool &Show);

#pragma option push -b-
enum TEditAlign { eaLeft, eaRight, eaDefault, eaCenter };
#pragma option pop

#pragma option push -b-
enum TPrecisionDisplay { pdNormal, pdShortest };
#pragma option pop

class DELPHICLASS TEditLabel;
class PASCALIMPLEMENTATION TEditLabel : public Stdctrls::TLabel 
{
	typedef Stdctrls::TLabel inherited;
	
private:
	bool FAlwaysEnable;
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Msg);
	
__published:
	__property bool AlwaysEnable = {read=FAlwaysEnable, write=FAlwaysEnable, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomLabel.Create */ inline __fastcall virtual TEditLabel(Classes::TComponent* AOwner) : Stdctrls::TLabel(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TEditLabel(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvEdit;
class PASCALIMPLEMENTATION TAdvEdit : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	bool FAlignChanging;
	TEditLabel* FLabel;
	Graphics::TFont* FLabelFont;
	TLabelPosition FLabelPosition;
	int FLabelMargin;
	bool FLabelTransparent;
	bool FAutoFocus;
	bool FCanUndo;
	TAdvEditType FEditType;
	TEditAlign FEditAlign;
	TEditAlign FOldEditAlign;
	Forms::TFormBorderStyle FOldBorder;
	bool FExcelStyleDecimalSeparator;
	bool FTabOnFullLength;
	Graphics::TColor FDisabledColor;
	bool FDisabledBorder;
	Graphics::TColor FNormalColor;
	Graphics::TColor FFocusColor;
	Graphics::TColor FFocusFontColor;
	Graphics::TColor FErrorColor;
	Graphics::TColor FErrorFontColor;
	bool FError;
	bool FFocusLabel;
	Graphics::TColor FFontColor;
	Graphics::TColor FModifiedColor;
	bool FReturnIsTab;
	bool FShowModified;
	bool FIsModified;
	bool FShowURL;
	Graphics::TColor FURLColor;
	int FFocusWidthInc;
	TEditAlign FFocusAlign;
	short FLengthLimit;
	short FPrecision;
	TPrecisionDisplay FPrecisionDisplay;
	AnsiString FPrefix;
	AnsiString FSuffix;
	AnsiString FOldString;
	bool FSigned;
	bool FIsUrl;
	bool FFlat;
	bool FMouseInControl;
	Graphics::TColor FFlatLineColor;
	TPersistence* FPersistence;
	TValueValidateEvent FOnValueValidate;
	TClipboardEvent FOnClipboardCut;
	TClipboardEvent FOnClipboardPaste;
	TClipboardEvent FOnClipboardCopy;
	bool FBlockCopy;
	bool FFlatParentColor;
	bool FTransparent;
	#pragma pack(push,1)
	Types::TPoint FCaretPos;
	#pragma pack(pop)
	bool FOleDropSource;
	bool FOleDropTarget;
	bool FOleDropTargetAssigned;
	bool FIsDragSource;
	bool FButtonDown;
	bool FFocusBorder;
	Graphics::TColor FFocusBorderColor;
	Graphics::TColor FBorderColor;
	bool FHintShowLargeText;
	bool FShowError;
	bool FAutoThousandSeparator;
	AnsiString FEmptyText;
	bool FEmptyTextFocused;
	Graphics::TFontStyles FEmptyTextStyle;
	bool FSoftBorder;
	bool FDefaultHandling;
	bool FBlockDefaultHandling;
	bool FLabelAlwaysEnabled;
	bool FBorder3D;
	int FErrorMarkerLen;
	int FErrorMarkerPos;
	int FIndentR;
	int FIndentL;
	int FLoadedHeight;
	TListHintWindow* FLookupList;
	TListBoxTab* FLookupListBox;
	TLookupSettings* FLookup;
	TLookupSelectEvent FOnLookupSelect;
	TLookupIndexSelectEvent FOnLookupIndexSelect;
	bool FIsValidating;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	TURLClickEvent FOnURLClick;
	Classes::TNotifyEvent FOnLabelClick;
	Classes::TNotifyEvent FOnLabelDblClick;
	AnsiString FValidChars;
	bool FIsWinXP;
	bool FIsThemed;
	bool FBlockChange;
	bool FAllowNumericNullValue;
	bool FParentFnt;
	bool FFullTextSearch;
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	MESSAGE void __fastcall WMActivate(Messages::TMessage &Message);
	MESSAGE void __fastcall CNCtlColorEdit(Messages::TWMCtlColor &Message);
	MESSAGE void __fastcall CNCtlColorStatic(Messages::TWMCtlColor &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMCancelMode(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMShowingChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMParentFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMPaste(Messages::TMessage &Msg);
	MESSAGE void __fastcall WMCut(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall WMCopy(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMSysKeyDown(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Msg);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMMouseMove(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	MESSAGE void __fastcall CMWantSpecialKey(Messages::TWMKey &Msg);
	void __fastcall SetEditType(TAdvEditType value);
	HIDESBASE AnsiString __fastcall GetText();
	HIDESBASE void __fastcall SetText(AnsiString value);
	double __fastcall GetFloat(void);
	int __fastcall GetInt(void);
	int __fastcall FixedLength(AnsiString s);
	bool __fastcall AllowMin(char ch);
	int __fastcall DecimalPos(void);
	void __fastcall SetFloat(const double Value);
	void __fastcall SetInt(const int Value);
	void __fastcall SetPrefix(const AnsiString Value);
	void __fastcall SetSuffix(const AnsiString Value);
	void __fastcall SetLabelCaption(const AnsiString value);
	AnsiString __fastcall GetLabelCaption();
	void __fastcall SetLabelPosition(const TLabelPosition value);
	void __fastcall SetLabelMargin(const int value);
	void __fastcall SetLabelTransparent(const bool value);
	void __fastcall SetFlat(const bool value);
	void __fastcall SetFlatRect(const bool Value);
	void __fastcall SetPrecision(const short Value);
	void __fastcall SetPrecisionDisplay(const TPrecisionDisplay Value);
	Extended __fastcall EStrToFloat(AnsiString s);
	void __fastcall UpdateLabel(void);
	void __fastcall UpdateLabelPos(void);
	void __fastcall AutoSeparators(void);
	HIDESBASE bool __fastcall GetModified(void);
	HIDESBASE void __fastcall SetModified(const bool Value);
	bool __fastcall GetVisible(void);
	HIDESBASE void __fastcall SetVisible(const bool Value);
	void __fastcall PaintEdit(void);
	void __fastcall DrawControlBorder(HDC DC);
	void __fastcall DrawBorder(void);
	bool __fastcall Is3DBorderButton(void);
	void __fastcall SetDisabledColor(const Graphics::TColor Value);
	void __fastcall SetDisabledBorder(const bool Value);
	void __fastcall SetEditAlign(const TEditAlign Value);
	void __fastcall SetCanUndo(const bool Value);
	Graphics::TColor __fastcall GetColorEx(void);
	void __fastcall SetColorEx(const Graphics::TColor Value);
	void __fastcall SetTransparent(const bool Value);
	void __fastcall SetFlatLineColor(const Graphics::TColor Value);
	void __fastcall SetFlatParentColor(const bool Value);
	void __fastcall LabelFontChange(System::TObject* Sender);
	void __fastcall SetLabelFont(const Graphics::TFont* Value);
	void __fastcall ApplyErrorColor(void);
	bool __fastcall GetError(void);
	void __fastcall SetError(const bool Value);
	void __fastcall ApplyURL(const bool Value);
	void __fastcall DrawErrorLines(Graphics::TCanvas* Canvas, int ErrPos, int ErrLen);
	void __fastcall SetOleDropSource(const bool Value);
	void __fastcall SetOleDropTarget(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall CloseLookup(void);
	void __fastcall DoneLookup(void);
	int __fastcall GetHeightEx(void);
	void __fastcall ListKeyPress(System::TObject* Sender, char &Key);
	void __fastcall ListMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall SetAutoThousandSeparator(const bool Value);
	void __fastcall SetBorder3D(const bool Value);
	void __fastcall SetEmptyText(const AnsiString Value);
	void __fastcall SetErrorMarkerLen(const int Value);
	void __fastcall SetErrorMarkerPos(const int Value);
	void __fastcall SetFocusBorder(const bool Value);
	void __fastcall SetHeightEx(const int Value);
	void __fastcall SetLabelAlwaysEnabled(const bool Value);
	void __fastcall SetSoftBorder(const bool Value);
	void __fastcall UpdateLookup(void);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetEmptyTextStyle(const Graphics::TFontStyles Value);
	bool __fastcall GetLookupVisible(void);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall Change(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	TEditLabel* __fastcall CreateLabel(void);
	virtual void __fastcall Loaded(void);
	void __fastcall InvalidateCaret(const Types::TPoint &pt);
	void __fastcall EraseCaret(void);
	void __fastcall DrawCaretByCursor(void);
	void __fastcall SetCaretByCursor(void);
	__property int IndentR = {read=FIndentR, write=FIndentR, nodefault};
	__property int IndentL = {read=FIndentL, write=FIndentL, nodefault};
	virtual bool __fastcall DoValidate(AnsiString value);
	virtual void __fastcall ValidateEvent(AnsiString Value, bool &IsValid);
	void __fastcall LabelClick(System::TObject* Sender);
	void __fastcall LabelDblClick(System::TObject* Sender);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual void __fastcall SetEnabled(bool Value);
	void __fastcall SetTextDirect(AnsiString s);
	virtual bool __fastcall TestURL(void);
	__property bool BlockDefaultHandling = {read=FBlockDefaultHandling, write=FBlockDefaultHandling, nodefault};
	
public:
	__fastcall virtual TAdvEdit(Classes::TComponent* aOwner);
	__fastcall virtual ~TAdvEdit(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	HIDESBASE void __fastcall SelectAll(void);
	void __fastcall SelectBeforeDecimal(void);
	void __fastcall SelectAfterDecimal(void);
	void __fastcall Init(void);
	virtual void __fastcall Clear(void);
	int __fastcall GetTextSize(void);
	int __fastcall CharFromPos(const Types::TPoint &pt);
	Types::TPoint __fastcall PosFromChar(Word uChar);
	__property double FloatValue = {read=GetFloat, write=SetFloat};
	__property int IntValue = {read=GetInt, write=SetInt, nodefault};
	__property bool Modified = {read=GetModified, write=SetModified, nodefault};
	__property bool IsError = {read=GetError, write=SetError, nodefault};
	bool __fastcall RangeStrToList(TRangeList* rangelist);
	void __fastcall ListToRangeStr(TRangeList* rangelist);
	void __fastcall SetEditText(AnsiString AValue);
	virtual void __fastcall LoadPersist(void);
	virtual void __fastcall SavePersist(void);
	__property bool DefaultHandling = {read=FDefaultHandling, write=FDefaultHandling, nodefault};
	__property AnsiString OrigText = {read=FOldString, write=FOldString};
	__property bool LookupVisible = {read=GetLookupVisible, nodefault};
	__property TEditLabel* EditLabel = {read=FLabel};
	__property bool Border3D = {read=FBorder3D, write=SetBorder3D, nodefault};
	
__published:
	__property TValueValidateEvent OnValueValidate = {read=FOnValueValidate, write=FOnValueValidate};
	__property TClipboardEvent OnClipboardCopy = {read=FOnClipboardCopy, write=FOnClipboardCopy};
	__property TClipboardEvent OnClipboardCut = {read=FOnClipboardCut, write=FOnClipboardCut};
	__property TClipboardEvent OnClipboardPaste = {read=FOnClipboardPaste, write=FOnClipboardPaste};
	__property bool AllowNumericNullValue = {read=FAllowNumericNullValue, write=FAllowNumericNullValue, default=0};
	__property bool AutoFocus = {read=FAutoFocus, write=FAutoFocus, default=0};
	__property bool AutoThousandSeparator = {read=FAutoThousandSeparator, write=SetAutoThousandSeparator, default=1};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=536870911};
	__property TEditAlign EditAlign = {read=FEditAlign, write=SetEditAlign, default=0};
	__property TAdvEditType EditType = {read=FEditType, write=SetEditType, default=0};
	__property AnsiString EmptyText = {read=FEmptyText, write=SetEmptyText};
	__property bool EmptyTextFocused = {read=FEmptyTextFocused, write=FEmptyTextFocused, default=0};
	__property Graphics::TFontStyles EmptyTextStyle = {read=FEmptyTextStyle, write=SetEmptyTextStyle, nodefault};
	__property int ErrorMarkerPos = {read=FErrorMarkerPos, write=SetErrorMarkerPos, default=0};
	__property int ErrorMarkerLen = {read=FErrorMarkerLen, write=SetErrorMarkerLen, default=0};
	__property Graphics::TColor ErrorColor = {read=FErrorColor, write=FErrorColor, default=255};
	__property Graphics::TColor ErrorFontColor = {read=FErrorFontColor, write=FErrorFontColor, default=16777215};
	__property bool ExcelStyleDecimalSeparator = {read=FExcelStyleDecimalSeparator, write=FExcelStyleDecimalSeparator, default=0};
	__property bool Flat = {read=FFlat, write=SetFlat, default=0};
	__property Graphics::TColor FlatLineColor = {read=FFlatLineColor, write=SetFlatLineColor, default=0};
	__property bool FlatParentColor = {read=FFlatParentColor, write=SetFlatParentColor, default=1};
	__property TEditAlign FocusAlign = {read=FFocusAlign, write=FFocusAlign, default=2};
	__property bool FocusBorder = {read=FFocusBorder, write=SetFocusBorder, default=0};
	__property Graphics::TColor FocusBorderColor = {read=FFocusBorderColor, write=FFocusBorderColor, default=536870911};
	__property Graphics::TColor FocusColor = {read=FFocusColor, write=FFocusColor, default=536870911};
	__property Graphics::TColor FocusFontColor = {read=FFocusFontColor, write=FFocusFontColor, default=-16777208};
	__property bool FocusLabel = {read=FFocusLabel, write=FFocusLabel, default=0};
	__property int FocusWidthInc = {read=FFocusWidthInc, write=FFocusWidthInc, default=0};
	__property bool FullTextSearch = {read=FFullTextSearch, write=FFullTextSearch, default=0};
	__property int Height = {read=GetHeightEx, write=SetHeightEx, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, default=-16777203};
	__property bool DisabledBorder = {read=FDisabledBorder, write=SetDisabledBorder, default=1};
	__property Graphics::TColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=12632256};
	__property bool ShowError = {read=FShowError, write=FShowError, default=0};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, default=0};
	__property bool ShowURL = {read=FShowURL, write=FShowURL, default=0};
	__property bool SoftBorder = {read=FSoftBorder, write=SetSoftBorder, default=0};
	__property Graphics::TColor URLColor = {read=FURLColor, write=FURLColor, default=16711680};
	__property bool ReturnIsTab = {read=FReturnIsTab, write=FReturnIsTab, default=0};
	__property short LengthLimit = {read=FLengthLimit, write=FLengthLimit, default=0};
	__property bool TabOnFullLength = {read=FTabOnFullLength, write=FTabOnFullLength, default=0};
	__property short Precision = {read=FPrecision, write=SetPrecision, default=0};
	__property TPrecisionDisplay PrecisionDisplay = {read=FPrecisionDisplay, write=SetPrecisionDisplay, default=0};
	__property AnsiString Prefix = {read=FPrefix, write=SetPrefix};
	__property AnsiString Suffix = {read=FSuffix, write=SetSuffix};
	__property AnsiString LabelCaption = {read=GetLabelCaption, write=SetLabelCaption};
	__property TLabelPosition LabelPosition = {read=FLabelPosition, write=SetLabelPosition, default=0};
	__property int LabelMargin = {read=FLabelMargin, write=SetLabelMargin, default=4};
	__property bool LabelTransparent = {read=FLabelTransparent, write=SetLabelTransparent, default=0};
	__property bool LabelAlwaysEnabled = {read=FLabelAlwaysEnabled, write=SetLabelAlwaysEnabled, default=0};
	__property Graphics::TFont* LabelFont = {read=FLabelFont, write=SetLabelFont};
	__property TLookupSettings* Lookup = {read=FLookup, write=FLookup};
	__property TPersistence* Persistence = {read=FPersistence, write=FPersistence};
	__property BevelEdges  = {default=15};
	__property BevelInner  = {index=0, default=2};
	__property BevelKind  = {default=0};
	__property BevelOuter  = {index=1, default=1};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property ParentBiDiMode  = {default=1};
	__property Constraints ;
	__property DragKind  = {default=0};
	__property OnEndDock ;
	__property OnStartDock ;
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property bool CanUndo = {read=FCanUndo, write=SetCanUndo, default=1};
	__property CharCase  = {default=0};
	__property Graphics::TColor Color = {read=GetColorEx, write=SetColorEx, nodefault};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property Hint ;
	__property bool HintShowLargeText = {read=FHintShowLargeText, write=FHintShowLargeText, default=0};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property OEMConvert  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PasswordChar  = {default=0};
	__property bool OleDropTarget = {read=FOleDropTarget, write=SetOleDropTarget, default=0};
	__property bool OleDropSource = {read=FOleDropSource, write=SetOleDropSource, default=0};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property bool Signed = {read=FSigned, write=FSigned, default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property AnsiString Text = {read=GetText, write=SetText};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property AnsiString ValidChars = {read=FValidChars, write=FValidChars};
	__property bool Visible = {read=GetVisible, write=SetVisible, nodefault};
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnStartDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property OnMouseUp ;
	__property OnContextPopup ;
	__property TLookupSelectEvent OnLookupSelect = {read=FOnLookupSelect, write=FOnLookupSelect};
	__property TLookupIndexSelectEvent OnLookupIndexSelect = {read=FOnLookupIndexSelect, write=FOnLookupIndexSelect};
	__property Classes::TNotifyEvent OnLabelClick = {read=FOnLabelClick, write=FOnLabelClick};
	__property Classes::TNotifyEvent OnLabelDblClick = {read=FOnLabelDblClick, write=FOnLabelDblClick};
	__property TURLClickEvent OnURLClick = {read=FOnURLClick, write=FOnURLClick};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvEdit(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMaskEdit;
class PASCALIMPLEMENTATION TAdvMaskEdit : public Mask::TMaskEdit 
{
	typedef Mask::TMaskEdit inherited;
	
private:
	Stdctrls::TLabel* FLabel;
	bool FAutoFocus;
	bool FAutoTab;
	bool FReturnIsTab;
	Classes::TAlignment FAlignment;
	Graphics::TColor FFocusColor;
	Graphics::TColor FFocusFontColor;
	Graphics::TColor FNormalColor;
	Graphics::TColor FLoadedColor;
	Graphics::TColor FFontColor;
	Graphics::TColor FModifiedColor;
	bool FShowModified;
	int FLabelMargin;
	TLabelPosition FLabelPosition;
	bool FLabelTransparent;
	bool FSelectFirstChar;
	bool FFlat;
	TMaskCompleteEvent FOnMaskComplete;
	Graphics::TColor FDisabledColor;
	bool FDisabledBorder;
	AnsiString FOriginalValue;
	bool FCanUndo;
	Graphics::TFont* FLabelFont;
	bool FLabelAlwaysEnabled;
	Graphics::TColor FFlatLineColor;
	bool FSoftBorder;
	bool FFocusBorder;
	Graphics::TColor FFocusBorderColor;
	Graphics::TColor FBorderColor;
	bool FMouseInControl;
	bool FBorder3D;
	bool FFlatParentColor;
	Forms::TFormBorderStyle FOldBorder;
	bool FIsThemed;
	bool FFocusLabel;
	void __fastcall SetAlignment(Classes::TAlignment value);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Msg);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMParentFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	AnsiString __fastcall GetLabelCaption();
	void __fastcall SetLabelCaption(const AnsiString Value);
	void __fastcall SetLabelMargin(const int Value);
	void __fastcall SetLabelPosition(const TLabelPosition Value);
	void __fastcall UpdateLabel(void);
	void __fastcall UpdateLabelPos(void);
	void __fastcall SetFlat(const bool Value);
	HIDESBASE bool __fastcall GetModified(void);
	HIDESBASE void __fastcall SetModified(const bool Value);
	void __fastcall SetLabelTransparent(const bool Value);
	void __fastcall SetDisabledColor(const Graphics::TColor Value);
	void __fastcall SetDisabledBorder(const bool Value);
	bool __fastcall GetEnabledEx(void);
	void __fastcall SetEnabledEx(const bool Value);
	Graphics::TColor __fastcall GetColorEx(void);
	void __fastcall SetColorEx(const Graphics::TColor Value);
	void __fastcall SetLabelFont(const Graphics::TFont* Value);
	void __fastcall LabelFontChanged(System::TObject* Sender);
	bool __fastcall GetVisible(void);
	HIDESBASE void __fastcall SetVisible(const bool Value);
	void __fastcall SetFlatLineColor(const Graphics::TColor Value);
	void __fastcall PaintEdit(void);
	void __fastcall SetSoftBorder(const bool Value);
	void __fastcall DrawBorder(void);
	void __fastcall DrawControlBorder(HDC DC);
	bool __fastcall Is3DBorderButton(void);
	void __fastcall SetBorder3D(const bool Value);
	void __fastcall SetFlatRect(const bool Value);
	void __fastcall SetFlatParentColor(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetAutoFocus(const bool Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall DoEnter(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	Stdctrls::TLabel* __fastcall CreateLabel(void);
	
public:
	__fastcall virtual TAdvMaskEdit(Classes::TComponent* AOwner);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	__fastcall virtual ~TAdvMaskEdit(void);
	__property bool Modified = {read=GetModified, write=SetModified, nodefault};
	virtual void __fastcall Loaded(void);
	__property Stdctrls::TLabel* EditLabel = {read=FLabel};
	__property bool Border3D = {read=FBorder3D, write=SetBorder3D, nodefault};
	
__published:
	__property bool AutoFocus = {read=FAutoFocus, write=SetAutoFocus, nodefault};
	__property bool AutoTab = {read=FAutoTab, write=FAutoTab, default=1};
	__property bool CanUndo = {read=FCanUndo, write=FCanUndo, default=0};
	__property Graphics::TColor Color = {read=GetColorEx, write=SetColorEx, nodefault};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=536870911};
	__property bool DisabledBorder = {read=FDisabledBorder, write=SetDisabledBorder, default=1};
	__property Graphics::TColor DisabledColor = {read=FDisabledColor, write=SetDisabledColor, default=12632256};
	__property bool Enabled = {read=GetEnabledEx, write=SetEnabledEx, nodefault};
	__property bool Flat = {read=FFlat, write=SetFlat, nodefault};
	__property Graphics::TColor FlatLineColor = {read=FFlatLineColor, write=SetFlatLineColor, nodefault};
	__property bool FlatParentColor = {read=FFlatParentColor, write=SetFlatParentColor, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property Graphics::TColor FocusBorderColor = {read=FFocusBorderColor, write=FFocusBorderColor, default=536870911};
	__property Graphics::TColor FocusColor = {read=FFocusColor, write=FFocusColor, nodefault};
	__property bool FocusBorder = {read=FFocusBorder, write=FFocusBorder, nodefault};
	__property Graphics::TColor FocusFontColor = {read=FFocusFontColor, write=FFocusFontColor, nodefault};
	__property bool FocusLabel = {read=FFocusLabel, write=FFocusLabel, default=0};
	__property AnsiString LabelCaption = {read=GetLabelCaption, write=SetLabelCaption};
	__property bool LabelAlwaysEnabled = {read=FLabelAlwaysEnabled, write=FLabelAlwaysEnabled, nodefault};
	__property TLabelPosition LabelPosition = {read=FLabelPosition, write=SetLabelPosition, nodefault};
	__property int LabelMargin = {read=FLabelMargin, write=SetLabelMargin, nodefault};
	__property bool LabelTransparent = {read=FLabelTransparent, write=SetLabelTransparent, nodefault};
	__property Graphics::TFont* LabelFont = {read=FLabelFont, write=SetLabelFont};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, nodefault};
	__property bool ReturnIsTab = {read=FReturnIsTab, write=FReturnIsTab, default=1};
	__property bool SoftBorder = {read=FSoftBorder, write=SetSoftBorder, default=0};
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property bool SelectFirstChar = {read=FSelectFirstChar, write=FSelectFirstChar, nodefault};
	__property bool Visible = {read=GetVisible, write=SetVisible, nodefault};
	__property TMaskCompleteEvent OnMaskComplete = {read=FOnMaskComplete, write=FOnMaskComplete};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMaskEdit(HWND ParentWindow) : Mask::TMaskEdit(ParentWindow) { }
	#pragma option pop
	
};


struct TQueryParams;
typedef TQueryParams *PQueryParams;

#pragma pack(push,4)
struct TQueryParams
{
	
public:
	int Precision;
	bool Flat;
	int Lengthlimit;
	AnsiString Prefix;
	AnsiString Suffix;
} ;
#pragma pack(pop)

class DELPHICLASS TEditDropTarget;
class PASCALIMPLEMENTATION TEditDropTarget : public Adveddd::TAEDropTarget 
{
	typedef Adveddd::TAEDropTarget inherited;
	
private:
	TAdvEdit* FAdvEdit;
	
public:
	__fastcall TEditDropTarget(TAdvEdit* aEdit);
	virtual void __fastcall DropText(const Types::TPoint &pt, AnsiString s);
	virtual void __fastcall DragMouseMove(const Types::TPoint &pt, bool &allow);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TEditDropTarget(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x3;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x4;
static const Shortint LOOKUPITEMHEIGHT = 0xc;
extern PACKAGE int BorderRec[2];
extern PACKAGE bool ADVEDIT_DEFAULTHANDLING;
extern PACKAGE bool __fastcall AdvInputQuery(const TAdvEditType QueryType, PQueryParams QueryParams, const AnsiString ACaption, const AnsiString APrompt, AnsiString &Value);

}	/* namespace Advedit */
using namespace Advedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advedit
