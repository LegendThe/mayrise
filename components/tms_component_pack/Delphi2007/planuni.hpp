// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planuni.pas' rev: 11.00

#ifndef PlanuniHPP
#define PlanuniHPP

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
#include <Buttons.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planuni
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TCustomPlanUNIEdit;
class PASCALIMPLEMENTATION TCustomPlanUNIEdit : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	HIDESBASE WideString __fastcall GetSelText();
	HIDESBASE void __fastcall SetSelText(const WideString Value);
	HIDESBASE WideString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const WideString Value);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWindowHandle(const Controls::TCreateParams &Params);
	
public:
	__fastcall virtual TCustomPlanUNIEdit(Classes::TComponent* AOwner);
	__property WideString SelText = {read=GetSelText, write=SetSelText};
	__property WideString Text = {read=GetText, write=SetText};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCustomPlanUNIEdit(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TCustomPlanUNIEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlanUniEdit;
class PASCALIMPLEMENTATION TPlanUniEdit : public TCustomPlanUNIEdit 
{
	typedef TCustomPlanUNIEdit inherited;
	
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
	/* TCustomPlanUNIEdit.Create */ inline __fastcall virtual TPlanUniEdit(Classes::TComponent* AOwner) : TCustomPlanUNIEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPlanUniEdit(HWND ParentWindow) : TCustomPlanUNIEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TPlanUniEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlanUniCustomMemo;
class PASCALIMPLEMENTATION TPlanUniCustomMemo : public TCustomPlanUNIEdit 
{
	typedef TCustomPlanUNIEdit inherited;
	
private:
	Stdctrls::TScrollStyle FScrollBars;
	bool FWordWrap;
	bool FWantReturns;
	bool FWantTabs;
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetScrollBars(const Stdctrls::TScrollStyle Value);
	void __fastcall SetWordWrap(const bool Value);
	
protected:
	virtual void __fastcall SetAutoSize(bool Value);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	__property Stdctrls::TScrollStyle ScrollBars = {read=FScrollBars, write=SetScrollBars, default=0};
	__property bool WantReturns = {read=FWantReturns, write=FWantReturns, default=1};
	__property bool WantTabs = {read=FWantTabs, write=FWantTabs, default=0};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, default=1};
public:
	#pragma option push -w-inl
	/* TCustomPlanUNIEdit.Create */ inline __fastcall virtual TPlanUniCustomMemo(Classes::TComponent* AOwner) : TCustomPlanUNIEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPlanUniCustomMemo(HWND ParentWindow) : TCustomPlanUNIEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TPlanUniCustomMemo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlanUniMemo;
class PASCALIMPLEMENTATION TPlanUniMemo : public TPlanUniCustomMemo 
{
	typedef TPlanUniCustomMemo inherited;
	
public:
	__fastcall virtual TPlanUniMemo(Classes::TComponent* AOwner);
	
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
	/* TWinControl.CreateParented */ inline __fastcall TPlanUniMemo(HWND ParentWindow) : TPlanUniCustomMemo(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TPlanUniMemo(void) { }
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


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Planuni */
using namespace Planuni;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planuni
