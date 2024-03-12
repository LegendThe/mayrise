// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Treelist.pas' rev: 11.00

#ifndef TreelistHPP
#define TreelistHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Treelist
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TColumnItem;
class PASCALIMPLEMENTATION TColumnItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	int FWidth;
	Classes::TAlignment FAlignment;
	AnsiString FColumnHeader;
	Graphics::TFont* FFont;
	bool FImage;
	Classes::TAlignment FHeaderAlign;
	int FHeaderImage;
	void __fastcall SetWidth(const int value);
	void __fastcall SetAlignment(const Classes::TAlignment value);
	void __fastcall SetColumnHeader(const AnsiString value);
	void __fastcall SetFont(const Graphics::TFont* value);
	void __fastcall SetImage(const bool Value);
	void __fastcall SetHeaderAlign(const Classes::TAlignment Value);
	void __fastcall SetHeaderImage(const int Value);
	
public:
	__fastcall virtual TColumnItem(Classes::TCollection* Collection);
	__fastcall virtual ~TColumnItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* source);
	
__published:
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property AnsiString Header = {read=FColumnHeader, write=SetColumnHeader};
	__property Classes::TAlignment HeaderAlign = {read=FHeaderAlign, write=SetHeaderAlign, default=0};
	__property int HeaderImage = {read=FHeaderImage, write=SetHeaderImage, default=-1};
	__property bool Image = {read=FImage, write=SetImage, default=0};
	__property int Width = {read=FWidth, write=SetWidth, nodefault};
};


class DELPHICLASS TColumnCollection;
class DELPHICLASS TTreeList;
class DELPHICLASS TTLHeader;
typedef void __fastcall (__closure *TTLHeaderClickEvent)(System::TObject* Sender, int SectionIdx);

typedef void __fastcall (__closure *TSectionMoveEvent)(System::TObject* Sender, int FromIndex, int ToIndex, bool &Allow);

class PASCALIMPLEMENTATION TTLHeader : public Extctrls::THeader 
{
	typedef Extctrls::THeader inherited;
	
private:
	Controls::TCursor FOldCursor;
	Graphics::TColor FColor;
	TTLHeaderClickEvent FOnClick;
	TTLHeaderClickEvent FOnRightClick;
	bool FIsSizing;
	bool FIsMoving;
	#pragma pack(push,1)
	Types::TPoint FHitTest;
	#pragma pack(pop)
	bool FAllowMove;
	bool FMouseDown;
	#pragma pack(push,1)
	Types::TPoint FMouseDownPos;
	#pragma pack(pop)
	TSectionMoveEvent FOnSectionMove;
	HIDESBASE MESSAGE void __fastcall WMSetCursor(Messages::TWMSetCursor &Msg);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonDown(Messages::TWMMouse &Message);
	HIDESBASE void __fastcall SetColor(const Graphics::TColor Value);
	
protected:
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DoSectionMove(int FromIndex, int ToIndex, bool &Allow);
	int __fastcall XToSection(int x);
	bool __fastcall XToSizePos(int x);
	
public:
	__fastcall virtual TTLHeader(Classes::TComponent* aOwner);
	__fastcall virtual ~TTLHeader(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	DYNAMIC void __fastcall Sizing(int ASection, int AWidth);
	DYNAMIC void __fastcall Sized(int ASection, int AWidth);
	__property bool IsSizing = {read=FIsSizing, nodefault};
	
protected:
	virtual void __fastcall Paint(void);
	
__published:
	__property bool AllowMove = {read=FAllowMove, write=FAllowMove, nodefault};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, nodefault};
	__property TTLHeaderClickEvent OnClick = {read=FOnClick, write=FOnClick};
	__property TTLHeaderClickEvent OnRightClick = {read=FOnRightClick, write=FOnRightClick};
	__property TSectionMoveEvent OnSectionMove = {read=FOnSectionMove, write=FOnSectionMove};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TTLHeader(HWND ParentWindow) : Extctrls::THeader(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS THeaderSettings;
class PASCALIMPLEMENTATION THeaderSettings : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TTreeList* FOwner;
	int FOldHeight;
	int FHeight;
	bool FVisible;
	Graphics::TFont* FFont;
	bool FAllowResize;
	bool FAllowMove;
	Graphics::TFont* __fastcall GetFont(void);
	void __fastcall SetFont(const Graphics::TFont* Value);
	bool __fastcall GetFlat(void);
	void __fastcall SetFlat(const bool Value);
	bool __fastcall GetAllowResize(void);
	void __fastcall SetAllowResize(const bool Value);
	Graphics::TColor __fastcall GetColor(void);
	void __fastcall SetColor(const Graphics::TColor Value);
	int __fastcall GetHeight(void);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall SetAllowMove(const bool Value);
	
public:
	__fastcall THeaderSettings(TTreeList* aOwner);
	__fastcall virtual ~THeaderSettings(void);
	
__published:
	__property bool AllowMove = {read=FAllowMove, write=SetAllowMove, default=0};
	__property bool AllowResize = {read=GetAllowResize, write=SetAllowResize, default=0};
	__property Graphics::TColor Color = {read=GetColor, write=SetColor, nodefault};
	__property bool Flat = {read=GetFlat, write=SetFlat, default=0};
	__property Graphics::TFont* Font = {read=GetFont, write=SetFont};
	__property int Height = {read=GetHeight, write=SetHeight, nodefault};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
};


typedef void __fastcall (__closure *THeaderSizeChangedEvent)(System::TObject* Sender, int Section);

typedef void __fastcall (__closure *TDrawCellEvent)(System::TObject* Sender, Graphics::TCanvas* ACanvas, const Types::TRect &ARect, int AColumn, Comctrls::TTreeNode* ANode, AnsiString &AValue, Comctrls::TCustomDrawState AState, bool &DefaultDraw);

class PASCALIMPLEMENTATION TTreeList : public Comctrls::TTreeView 
{
	typedef Comctrls::TTreeView inherited;
	
private:
	TTLHeader* FHeader;
	THeaderSettings* FHeaderSettings;
	bool FFlatHeader;
	TColumnCollection* FColumnCollection;
	bool FColumnLines;
	int FColumnSpace;
	int FOldScrollPos;
	AnsiString FSeparator;
	int FItemHeight;
	TTLHeaderClickEvent FOnClick;
	TTLHeaderClickEvent FOnRightClick;
	HRGN FClipRegion;
	THeaderSizeChangedEvent FOnHeaderSizeChanged;
	TDrawCellEvent FOnDrawCell;
	TSectionMoveEvent FOnHeaderSectionMove;
	HIDESBASE MESSAGE void __fastcall WMHScroll(Messages::TMessage &message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &message);
	HIDESBASE MESSAGE void __fastcall WMRButtonDown(Messages::TWMMouse &message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &message);
	HIDESBASE MESSAGE void __fastcall CNNotify(Messages::TWMNotify &message);
	HIDESBASE MESSAGE void __fastcall CMVisibleChanged(Messages::TMessage &Message);
	void __fastcall SetColumnCollection(const TColumnCollection* Value);
	void __fastcall SetColumnLines(const bool Value);
	void __fastcall SectionSize(System::TObject* sender, int ASection, int AWidth);
	void __fastcall HeaderClick(System::TObject* sender, int ASection);
	void __fastcall HeaderRightClick(System::TObject* sender, int ASection);
	bool __fastcall GetColImage(int idx);
	int __fastcall GetColWidth(int idx);
	Graphics::TFont* __fastcall GetColFont(int idx);
	int __fastcall GetAlignment(int idx);
	void __fastcall SetSeparator(const AnsiString Value);
	int __fastcall GetItemHeight(void);
	void __fastcall SetItemHeight(const int Value);
	bool __fastcall GetVisible(void);
	HIDESBASE void __fastcall SetVisible(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	virtual Types::TRect __fastcall GetClientRect();
	virtual void __fastcall DoHeaderSectionMove(System::TObject* Sender, int FromIndex, int ToIndex, bool &Allow);
	
public:
	__fastcall virtual TTreeList(Classes::TComponent* aOwner);
	__fastcall virtual ~TTreeList(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	void __fastcall SetNodeColumn(Comctrls::TTreeNode* tn, int idx, AnsiString value);
	AnsiString __fastcall GetNodeColumn(Comctrls::TTreeNode* tn, int idx);
	virtual void __fastcall Loaded(void);
	void __fastcall UpdateColumns(void);
	__property TTLHeader* Header = {read=FHeader};
	void __fastcall CreateHeader(void);
	void __fastcall MoveColumn(int FromIndex, int ToIndex);
	
__published:
	__property TColumnCollection* Columns = {read=FColumnCollection, write=SetColumnCollection};
	__property bool ColumnLines = {read=FColumnLines, write=SetColumnLines, nodefault};
	__property AnsiString Separator = {read=FSeparator, write=SetSeparator};
	__property int ItemHeight = {read=GetItemHeight, write=SetItemHeight, nodefault};
	__property TDrawCellEvent OnDrawNodeCell = {read=FOnDrawCell, write=FOnDrawCell};
	__property TTLHeaderClickEvent OnHeaderClick = {read=FOnClick, write=FOnClick};
	__property TTLHeaderClickEvent OnHeaderRightClick = {read=FOnRightClick, write=FOnRightClick};
	__property THeaderSizeChangedEvent OnHeaderSizeChanged = {read=FOnHeaderSizeChanged, write=FOnHeaderSizeChanged};
	__property TSectionMoveEvent OnHeaderSectionMove = {read=FOnHeaderSectionMove, write=FOnHeaderSectionMove};
	__property bool Visible = {read=GetVisible, write=SetVisible, nodefault};
	__property THeaderSettings* HeaderSettings = {read=FHeaderSettings, write=FHeaderSettings};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TTreeList(HWND ParentWindow) : Comctrls::TTreeView(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TColumnCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TColumnItem* operator[](int Index) { return Items[Index]; }
	
private:
	TTreeList* FOwner;
	HIDESBASE TColumnItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TColumnItem* Value);
	
protected:
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	void __fastcall Move(int FromIndex, int ToIndex);
	
public:
	__fastcall TColumnCollection(TTreeList* AOwner);
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	HIDESBASE TColumnItem* __fastcall Add(void);
	HIDESBASE TColumnItem* __fastcall Insert(int Index);
	__property TColumnItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TColumnCollection(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x2;

}	/* namespace Treelist */
using namespace Treelist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Treelist
