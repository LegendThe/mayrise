// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asguni.pas' rev: 11.00

#ifndef AsguniHPP
#define AsguniHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Advxpvs.hpp>	// Pascal unit
#include <Asgedit.hpp>	// Pascal unit
#include <Widestrings.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asguni
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TCustomUNIEdit;
class PASCALIMPLEMENTATION TCustomUNIEdit : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	HIDESBASE WideString __fastcall GetSelText();
	HIDESBASE void __fastcall SetSelText(const WideString Value);
	HIDESBASE WideString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const WideString Value);
	
protected:
	virtual void __fastcall CreateWindowHandle(const Controls::TCreateParams &Params);
	
public:
	__fastcall virtual TCustomUNIEdit(Classes::TComponent* AOwner);
	__property WideString SelText = {read=GetSelText, write=SetSelText};
	__property WideString Text = {read=GetText, write=SetText};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCustomUNIEdit(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TCustomUNIEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAsgUniEdit;
class PASCALIMPLEMENTATION TAsgUniEdit : public TCustomUNIEdit 
{
	typedef TCustomUNIEdit inherited;
	
__published:
	__property Anchors  = {default=3};
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BiDiMode ;
	__property BorderStyle  = {default=1};
	__property CharCase  = {default=0};
	__property Color  = {default=-16777211};
	__property Constraints ;
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property OEMConvert  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PasswordChar  = {default=0};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Text ;
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TCustomUNIEdit.Create */ inline __fastcall virtual TAsgUniEdit(Classes::TComponent* AOwner) : TCustomUNIEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgUniEdit(HWND ParentWindow) : TCustomUNIEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TAsgUniEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAsgUniCustomMemo;
class PASCALIMPLEMENTATION TAsgUniCustomMemo : public TCustomUNIEdit 
{
	typedef TCustomUNIEdit inherited;
	
private:
	Stdctrls::TScrollStyle FScrollBars;
	bool FWordWrap;
	bool FWantReturns;
	bool FWantTabs;
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetScrollBars(const Stdctrls::TScrollStyle Value);
	void __fastcall SetWordWrap(const bool Value);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	__property Stdctrls::TScrollStyle ScrollBars = {read=FScrollBars, write=SetScrollBars, default=0};
	__property bool WantReturns = {read=FWantReturns, write=FWantReturns, default=1};
	__property bool WantTabs = {read=FWantTabs, write=FWantTabs, default=0};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, default=1};
public:
	#pragma option push -w-inl
	/* TCustomUNIEdit.Create */ inline __fastcall virtual TAsgUniCustomMemo(Classes::TComponent* AOwner) : TCustomUNIEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgUniCustomMemo(HWND ParentWindow) : TCustomUNIEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TAsgUniCustomMemo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAsgUniMemo;
class PASCALIMPLEMENTATION TAsgUniMemo : public TAsgUniCustomMemo 
{
	typedef TAsgUniCustomMemo inherited;
	
public:
	__fastcall virtual TAsgUniMemo(Classes::TComponent* AOwner);
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BevelInner  = {index=0, default=2};
	__property BevelKind  = {default=0};
	__property BevelOuter  = {index=1, default=1};
	__property BiDiMode ;
	__property BorderStyle  = {default=1};
	__property CharCase  = {default=0};
	__property Color  = {default=-16777211};
	__property Constraints ;
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property OEMConvert  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PasswordChar  = {default=0};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ScrollBars  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Text ;
	__property Visible  = {default=1};
	__property WordWrap  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgUniMemo(HWND ParentWindow) : TAsgUniCustomMemo(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TAsgUniMemo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAsgUniEditBtn;
class PASCALIMPLEMENTATION TAsgUniEditBtn : public TCustomUNIEdit 
{
	typedef TCustomUNIEdit inherited;
	
private:
	int FUnitSize;
	bool FRightAlign;
	Asgedit::TAsgEditButton* FButton;
	bool FEditorEnabled;
	Classes::TNotifyEvent FOnClickBtn;
	int FButtonWidth;
	bool FIsWinXP;
	int __fastcall GetMinHeight(void);
	void __fastcall SetGlyph(Graphics::TBitmap* value);
	Graphics::TBitmap* __fastcall GetGlyph(void);
	void __fastcall SetCaption(AnsiString value);
	AnsiString __fastcall GetCaption();
	void __fastcall SetRightAlign(bool value);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall WMPaste(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall WMCut(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Message);
	void __fastcall SetButtonWidth(const int Value);
	void __fastcall SetIsWinXP(const bool Value);
	
protected:
	virtual void __fastcall BtnClick(System::TObject* Sender);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	
public:
	__fastcall virtual TAsgUniEditBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TAsgUniEditBtn(void);
	__property Asgedit::TAsgEditButton* Button = {read=FButton};
	void __fastcall SetEditRect(void);
	
__published:
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property int ButtonWidth = {read=FButtonWidth, write=SetButtonWidth, nodefault};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property bool EditorEnabled = {read=FEditorEnabled, write=FEditorEnabled, default=1};
	__property Enabled  = {default=1};
	__property Font ;
	__property Graphics::TBitmap* Glyph = {read=GetGlyph, write=SetGlyph};
	__property bool IsWinXP = {read=FIsWinXP, write=SetIsWinXP, nodefault};
	__property AnsiString ButtonCaption = {read=GetCaption, write=SetCaption};
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property bool RightAlign = {read=FRightAlign, write=SetRightAlign, nodefault};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Text ;
	__property Visible  = {default=1};
	__property Height ;
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
	__property Classes::TNotifyEvent OnClickBtn = {read=FOnClickBtn, write=FOnClickBtn};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgUniEditBtn(HWND ParentWindow) : TCustomUNIEdit(ParentWindow) { }
	#pragma option pop
	
};


typedef TStrings TAnsiStrings;
;

class DELPHICLASS TWideStrings;
class PASCALIMPLEMENTATION TWideStrings : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
public:
	WideString operator[](int Index) { return Strings[Index]; }
	
private:
	Classes::TStrings* FAnsiStrings;
	int FUpdateCount;
	unsigned FLanguage;
	bool FSaved;
	bool FSaveUnicode;
	WideString __fastcall GetCommaText();
	WideString __fastcall GetName(int Index);
	WideString __fastcall GetValue(const WideString Name);
	void __fastcall ReadData(Classes::TReader* Reader);
	void __fastcall SetCommaText(const WideString Value);
	void __fastcall SetValue(const WideString Name, const WideString Value);
	void __fastcall WriteData(Classes::TWriter* Writer);
	void __fastcall SetAnsiStrings(const Classes::TStrings* Value);
	
protected:
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	void __fastcall Error(const WideString Msg, int Data);
	virtual WideString __fastcall Get(int Index) = 0 ;
	virtual int __fastcall GetCapacity(void);
	virtual int __fastcall GetCount(void) = 0 ;
	virtual System::TObject* __fastcall GetObject(int Index);
	virtual WideString __fastcall GetTextStr();
	virtual void __fastcall Put(int Index, const WideString S);
	virtual void __fastcall PutObject(int Index, System::TObject* AObject);
	virtual void __fastcall SetCapacity(int NewCapacity);
	virtual void __fastcall SetTextStr(const WideString Value);
	virtual void __fastcall SetUpdateState(bool Updating);
	virtual void __fastcall SetLanguage(unsigned Value);
	
public:
	__fastcall TWideStrings(void);
	__fastcall virtual ~TWideStrings(void);
	virtual int __fastcall Add(const WideString S);
	virtual int __fastcall AddObject(const WideString S, System::TObject* AObject);
	void __fastcall Append(const WideString S);
	virtual void __fastcall AddStrings(Classes::TStrings* Strings)/* overload */;
	virtual void __fastcall AddStrings(TWideStrings* Strings)/* overload */;
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	void __fastcall BeginUpdate(void);
	virtual void __fastcall Clear(void) = 0 ;
	virtual void __fastcall Delete(int Index) = 0 ;
	void __fastcall EndUpdate(void);
	bool __fastcall Equals(TWideStrings* Strings);
	virtual void __fastcall Exchange(int Index1, int Index2);
	virtual WideChar * __fastcall GetText(void);
	virtual int __fastcall IndexOf(const WideString S);
	int __fastcall IndexOfName(const WideString Name);
	int __fastcall IndexOfObject(System::TObject* AObject);
	virtual void __fastcall Insert(int Index, const WideString S) = 0 ;
	void __fastcall InsertObject(int Index, const WideString S, System::TObject* AObject);
	virtual void __fastcall Move(int CurIndex, int NewIndex);
	virtual void __fastcall SetText(WideChar * Text);
	__property int Capacity = {read=GetCapacity, write=SetCapacity, nodefault};
	__property WideString CommaText = {read=GetCommaText, write=SetCommaText};
	__property int Count = {read=GetCount, nodefault};
	__property unsigned Language = {read=FLanguage, write=SetLanguage, nodefault};
	__property WideString Names[int Index] = {read=GetName};
	__property System::TObject* Objects[int Index] = {read=GetObject, write=PutObject};
	__property WideString Values[WideString Name] = {read=GetValue, write=SetValue};
	__property bool Saved = {read=FSaved, nodefault};
	__property bool SaveUnicode = {read=FSaveUnicode, write=FSaveUnicode, nodefault};
	__property WideString Strings[int Index] = {read=Get, write=Put/*, default*/};
	__property WideString Text = {read=GetTextStr, write=SetTextStr};
	
__published:
	__property Classes::TStrings* AnsiStrings = {read=FAnsiStrings, write=SetAnsiStrings, stored=false};
};


class DELPHICLASS TCustomUNIComboBox;
class PASCALIMPLEMENTATION TCustomUNIComboBox : public Stdctrls::TCustomComboBox 
{
	typedef Stdctrls::TCustomComboBox inherited;
	
private:
	TWideStrings* FItems;
	TWideStrings* __fastcall GetItems(void);
	HIDESBASE void __fastcall SetItems(const TWideStrings* Value);
	HIDESBASE WideString __fastcall GetSelText();
	HIDESBASE void __fastcall SetSelText(const WideString Value);
	HIDESBASE WideString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const WideString Value);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	
protected:
	virtual void __fastcall DoEditCharMsg(Messages::TWMKey &Message);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall ComboWndProc(Messages::TMessage &Message, HWND ComboWnd, void * ComboProc);
	DYNAMIC void __fastcall KeyPress(char &Key);
	
public:
	__fastcall virtual TCustomUNIComboBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TCustomUNIComboBox(void);
	virtual void __fastcall CreateWindowHandle(const Controls::TCreateParams &Params);
	__property WideString SelText = {read=GetSelText, write=SetSelText};
	__property WideString Text = {read=GetText, write=SetText};
	__property TWideStrings* Items = {read=GetItems, write=SetItems};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCustomUNIComboBox(HWND ParentWindow) : Stdctrls::TCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TASGUniCustomCombo;
class PASCALIMPLEMENTATION TASGUniCustomCombo : public TCustomUNIComboBox 
{
	typedef TCustomUNIComboBox inherited;
	
private:
	bool FAutoFocus;
	bool FFlat;
	bool FEtched;
	Graphics::TColor FOldColor;
	bool FOldParentColor;
	int FButtonWidth;
	bool FFocusBorder;
	bool FMouseInControl;
	int FDropWidth;
	bool FIsWinXP;
	void __fastcall SetEtched(const bool Value);
	void __fastcall SetFlat(const bool Value);
	void __fastcall SetButtonWidth(const int Value);
	void __fastcall DrawButtonBorder(HDC DC);
	void __fastcall DrawControlBorder(HDC DC);
	void __fastcall DrawBorders(void);
	bool __fastcall Is3DBorderControl(void);
	bool __fastcall Is3DBorderButton(void);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TMessage &Message);
	void __fastcall SetDropWidth(const int Value);
	
protected:
	__property int ButtonWidth = {read=FButtonWidth, write=SetButtonWidth, nodefault};
	__property bool Flat = {read=FFlat, write=SetFlat, nodefault};
	__property bool Etched = {read=FEtched, write=SetEtched, nodefault};
	__property bool FocusBorder = {read=FFocusBorder, write=FFocusBorder, nodefault};
	__property bool AutoFocus = {read=FAutoFocus, write=FAutoFocus, nodefault};
	__property int DropWidth = {read=FDropWidth, write=SetDropWidth, nodefault};
	
public:
	__property bool IsWinXP = {read=FIsWinXP, write=FIsWinXP, nodefault};
	__fastcall virtual TASGUniCustomCombo(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomUNIComboBox.Destroy */ inline __fastcall virtual ~TASGUniCustomCombo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TASGUniCustomCombo(HWND ParentWindow) : TCustomUNIComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TASGUniComboBox;
class PASCALIMPLEMENTATION TASGUniComboBox : public TASGUniCustomCombo 
{
	typedef TASGUniCustomCombo inherited;
	
__published:
	__property AutoFocus ;
	__property ButtonWidth ;
	__property Style  = {default=0};
	__property Flat ;
	__property Etched ;
	__property FocusBorder ;
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property DropDownCount  = {default=8};
	__property DropWidth ;
	__property Enabled  = {default=1};
	__property Font ;
	__property ItemHeight ;
	__property Items ;
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Sorted  = {default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Text ;
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDrawItem ;
	__property OnDropDown ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMeasureItem ;
	__property OnStartDrag ;
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property DragKind  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property OnEndDock ;
	__property OnStartDock ;
public:
	#pragma option push -w-inl
	/* TASGUniCustomCombo.Create */ inline __fastcall virtual TASGUniComboBox(Classes::TComponent* AOwner) : TASGUniCustomCombo(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomUNIComboBox.Destroy */ inline __fastcall virtual ~TASGUniComboBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TASGUniComboBox(HWND ParentWindow) : TASGUniCustomCombo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Asguni */
using namespace Asguni;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asguni
