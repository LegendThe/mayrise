// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advlisteditor.pas' rev: 11.00

#ifndef AdvlisteditorHPP
#define AdvlisteditorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advedit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advlisteditor
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvListValue;
class PASCALIMPLEMENTATION TAdvListValue : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	int FTag;
	AnsiString FValue;
	AnsiString FDisplayText;
	int FImageIndex;
	void __fastcall SetDisplayText(const AnsiString AValue);
	void __fastcall SetValue(const AnsiString AValue);
	void __fastcall SetImageIndex(const int Value);
	
protected:
	HIDESBASE virtual void __fastcall Changed(void);
	int __fastcall GetWidth(Graphics::TCanvas* Canvas);
	
public:
	__fastcall virtual TAdvListValue(Classes::TCollection* Collection);
	
__published:
	__property AnsiString DisplayText = {read=FDisplayText, write=SetDisplayText};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property AnsiString Value = {read=FValue, write=SetValue};
	__property int Tag = {read=FTag, write=FTag, default=0};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TAdvListValue(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvListValues;
class PASCALIMPLEMENTATION TAdvListValues : public Classes::TOwnedCollection 
{
	typedef Classes::TOwnedCollection inherited;
	
public:
	TAdvListValue* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TAdvListValue* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TAdvListValue* Value);
	
protected:
	HIDESBASE virtual void __fastcall Changed(void);
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	__fastcall TAdvListValues(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvListValues(void);
	__property TAdvListValue* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TAdvListValue* __fastcall Add(void);
	HIDESBASE TAdvListValue* __fastcall Insert(int Index);
	void __fastcall AddPair(AnsiString DisplayText, AnsiString Value)/* overload */;
	void __fastcall AddPair(AnsiString DisplayText, AnsiString Value, int ImageIndex)/* overload */;
	
__published:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


typedef void __fastcall (__closure *TValueClickEvent)(System::TObject* Sender, int ValueIndex);

class DELPHICLASS TItemAppearance;
class PASCALIMPLEMENTATION TItemAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Graphics::TColor FBorderColor;
	Graphics::TColor FTextColor;
	Graphics::TColor FColorTo;
	Graphics::TColor FColorFrom;
	int FRounding;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetColorFrom(const Graphics::TColor Value);
	void __fastcall SetColorTo(const Graphics::TColor Value);
	void __fastcall SetRounding(const int Value);
	void __fastcall SetTextColor(const Graphics::TColor Value);
	
protected:
	virtual void __fastcall DoChange(void);
	
public:
	__fastcall TItemAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor ColorFrom = {read=FColorFrom, write=SetColorFrom, nodefault};
	__property Graphics::TColor ColorTo = {read=FColorTo, write=SetColorTo, nodefault};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, nodefault};
	__property int Rounding = {read=FRounding, write=SetRounding, default=6};
	__property Graphics::TColor TextColor = {read=FTextColor, write=SetTextColor, default=0};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TItemAppearance(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAppearance;
class PASCALIMPLEMENTATION TAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TItemAppearance* FNormal;
	TItemAppearance* FSelected;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetNormal(const TItemAppearance* Value);
	void __fastcall SetSelected(const TItemAppearance* Value);
	void __fastcall ItemAppearanceChange(System::TObject* Sender);
	
public:
	__fastcall TAppearance(void);
	__fastcall virtual ~TAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property TItemAppearance* Normal = {read=FNormal, write=SetNormal};
	__property TItemAppearance* Selected = {read=FSelected, write=SetSelected};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


typedef void __fastcall (__closure *TValueEditEvent)(System::TObject* Sender, TAdvListValue* Value, AnsiString &EditText);

typedef void __fastcall (__closure *TValueHintEvent)(System::TObject* Sender, TAdvListValue* Value, AnsiString &HintStr);

typedef void __fastcall (__closure *TValueDeleteEvent)(System::TObject* Sender, TAdvListValue* Value, bool &Allow);

#pragma option push -b-
enum TLookupMethod { lmFromStart, lmFull };
#pragma option pop

class DELPHICLASS TLookupPopup;
class PASCALIMPLEMENTATION TLookupPopup : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	int FCount;
	Graphics::TColor FColor;
	bool FCaseSensitive;
	bool FEnabled;
	Classes::TNotifyEvent FOnChange;
	int FFromChar;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetCount(const int Value);
	void __fastcall SetCaseSensitive(const bool Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetFromChar(const int Value);
	
protected:
	virtual void __fastcall Changed(void);
	
public:
	__fastcall TLookupPopup(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=0};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-16777211};
	__property int Count = {read=FCount, write=SetCount, default=6};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property int FromChar = {read=FFromChar, write=SetFromChar, default=1};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TLookupPopup(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvListEditor;
class PASCALIMPLEMENTATION TAdvListEditor : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	TAppearance* FAppearance;
	Advedit::TAdvEdit* FEdit;
	TAdvListValues* FList;
	TAdvListValues* FLookup;
	AnsiString FSeparator;
	AnsiString FCaption;
	int FItemIndex;
	int FEditPos;
	int FDownIndex;
	Imglist::TCustomImageList* FImages;
	TValueClickEvent FOnValueClick;
	TValueEditEvent FOnValueEditStart;
	TValueEditEvent FOnValueEditDone;
	TValueHintEvent FOnValueHint;
	bool FAutoSize;
	int FHintItem;
	TValueDeleteEvent FOnValueDelete;
	Forms::TFormBorderStyle FBorderStyle;
	Graphics::TColor FBorderColor;
	TLookupMethod FLookupMethod;
	bool FDesignTime;
	bool FReadOnly;
	TLookupPopup* FLookupPopup;
	int FMaxLines;
	int FMaxItems;
	HIDESBASE MESSAGE void __fastcall CMColorChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	void __fastcall SetList(const TAdvListValues* Value);
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetItemIndex(const int Value);
	void __fastcall EditKeyPress(System::TObject* Sender, char &Key);
	void __fastcall EditKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall SetLookup(const TAdvListValues* Value);
	void __fastcall SetAppearance(const TAppearance* Value);
	void __fastcall EditLookupIndexSelect(System::TObject* Sender, int Index, AnsiString &AValue);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetAutoSizeEx(const bool Value);
	void __fastcall SetBorderStyle(const Forms::TBorderStyle Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetLookupMethod(const TLookupMethod Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall AppearanceChange(System::TObject* Sender);
	void __fastcall LookupPopupChange(System::TObject* Sender);
	void __fastcall SetLookupPopup(const TLookupPopup* Value);
	void __fastcall SetMaxLines(const int Value);
	void __fastcall SetMaxItems(const int Value);
	
protected:
	virtual void __fastcall DrawItem(Graphics::TCanvas* ACanvas, const Types::TRect &R, TAdvListValue* AItem, bool Selected);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	Types::TPoint __fastcall GetEditPos(int Index);
	void __fastcall UpdateEditPos(int Index);
	int __fastcall ItemHeight(void);
	int __fastcall EditWidth(void);
	void __fastcall HideEdit(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall DoEnter(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall ListChanged(System::TObject* Sender);
	virtual void __fastcall LookupChanged(System::TObject* Sender);
	virtual void __fastcall DoAutoSize(void);
	virtual void __fastcall DoValueClick(int Index);
	virtual void __fastcall DoValueHint(int Index, AnsiString &HintStr);
	virtual void __fastcall DoValueEditStart(TAdvListValue* AValue, AnsiString &EditText);
	virtual void __fastcall DoValueEditDone(TAdvListValue* AValue, AnsiString &EditText);
	virtual void __fastcall DoValueDelete(TAdvListValue* AValue, bool &Allow);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	bool __fastcall HasMaxItems(void);
	virtual int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TAdvListEditor(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvListEditor(void);
	int __fastcall ValueAtXY(int X, int Y);
	Types::TRect __fastcall ValueRect(int Index);
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, nodefault};
	void __fastcall StartEdit(int Index);
	void __fastcall StopEdit(void);
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property TAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSizeEx, default=1};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=12164479};
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=1};
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property Color  = {default=-16777211};
	__property Font ;
	__property HelpContext  = {default=0};
	__property HelpKeyword ;
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TAdvListValues* Lookup = {read=FLookup, write=SetLookup};
	__property TLookupMethod LookupMethod = {read=FLookupMethod, write=SetLookupMethod, default=0};
	__property TLookupPopup* LookupPopup = {read=FLookupPopup, write=SetLookupPopup};
	__property int MaxItems = {read=FMaxItems, write=SetMaxItems, default=0};
	__property int MaxLines = {read=FMaxLines, write=SetMaxLines, default=0};
	__property PopupMenu ;
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property AnsiString Separator = {read=FSeparator, write=FSeparator};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property TAdvListValues* Values = {read=FList, write=SetList};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
	__property TValueDeleteEvent OnValueDelete = {read=FOnValueDelete, write=FOnValueDelete};
	__property TValueEditEvent OnValueEditStart = {read=FOnValueEditStart, write=FOnValueEditStart};
	__property TValueEditEvent OnValueEditDone = {read=FOnValueEditDone, write=FOnValueEditDone};
	__property TValueClickEvent OnValueClick = {read=FOnValueClick, write=FOnValueClick};
	__property TValueHintEvent OnValueHint = {read=FOnValueHint, write=FOnValueHint};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvListEditor(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x1;

}	/* namespace Advlisteditor */
using namespace Advlisteditor;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advlisteditor
