// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7listviewitems.pas' rev: 11.00

#ifndef W7listviewitemsHPP
#define W7listviewitemsHPP

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
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit
#include <W7labels.hpp>	// Pascal unit
#include <W7images.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7listviewitems
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TW7ListViewItemMode { imSmall, imLarge, imCategory };
#pragma option pop

typedef void __fastcall (__closure *TW7MultiTaskItemNotify)(System::TObject* Sender, int ItemIndex);

typedef void __fastcall (__closure *TW7MultiTaskItemMouseEvent)(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y, int ItemIndex);

typedef void __fastcall (__closure *TW7MultiTaskMouseMoveEvent)(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y, int ItemIndex);

class DELPHICLASS TW7CustomListViewItem;
class PASCALIMPLEMENTATION TW7CustomListViewItem : public W7classes::TW7TransparentControl 
{
	typedef W7classes::TW7TransparentControl inherited;
	
private:
	bool FSetFocusOnClick;
	Graphics::TBitmap* FInternalBitmap;
	bool FMouseInControl;
	
protected:
	bool ReturnButtonPressed;
	void __fastcall DrawFocusedBorder(void);
	void __fastcall DrawStandartBorder(void);
	void __fastcall DrawBorder(void);
	void __fastcall DrawFocusedBody(void);
	void __fastcall DrawStandartBody(void);
	void __fastcall DrawBody(void);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	__fastcall virtual TW7CustomListViewItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomListViewItem(void);
	__property bool SetFocusOnClick = {read=FSetFocusOnClick, write=FSetFocusOnClick, default=1};
	__property bool MouseInControl = {read=FMouseInControl, write=FMouseInControl, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7CustomListViewItem(HWND ParentWindow) : W7classes::TW7TransparentControl(ParentWindow) { }
	#pragma option pop
	
};


typedef DynamicArray<W7labels::TW7ActiveLabel* >  W7ListViewItems__3;

class DELPHICLASS TW7CustomMultiTaskItem;
class PASCALIMPLEMENTATION TW7CustomMultiTaskItem : public TW7CustomListViewItem 
{
	typedef TW7CustomListViewItem inherited;
	
private:
	Classes::TStrings* FSubItems;
	DynamicArray<W7labels::TW7ActiveLabel* >  FLabels;
	W7labels::TW7ActiveLabel* FCaptionLabel;
	Graphics::TFont* FFont;
	Graphics::TFont* FSubItemsFont;
	Graphics::TColor FCaptionMouseInColor;
	Graphics::TColor FCaptionMouseOutColor;
	Graphics::TColor FSubItemsMouseInColor;
	Graphics::TColor FSubItemsMouseOutColor;
	TW7ListViewItemMode FMode;
	W7images::TW7Image* FIcon;
	W7classes::TW7VerticalAlignment FSubItemsAlign;
	TW7MultiTaskItemNotify FOnItemClick;
	TW7MultiTaskItemNotify FOnItemDblClick;
	TW7MultiTaskItemMouseEvent FOnItemMouseDown;
	TW7MultiTaskItemNotify FOnItemMouseEnter;
	TW7MultiTaskItemNotify FOnItemMouseLeave;
	TW7MultiTaskMouseMoveEvent FOnItemMouseMove;
	TW7MultiTaskItemMouseEvent FOnItemMouseUp;
	void __fastcall SetSubItems(Classes::TStrings* Value);
	HIDESBASE void __fastcall SetFont(Graphics::TFont* Value);
	void __fastcall SetSubItemsFont(Graphics::TFont* Value);
	void __fastcall SetCaptionMouseInColor(Graphics::TColor Value);
	void __fastcall SetCaptionMouseOutColor(Graphics::TColor Value);
	void __fastcall SetSubItemsMouseInColor(Graphics::TColor Value);
	void __fastcall SetSubItemsMouseOutColor(Graphics::TColor Value);
	void __fastcall SetMode(TW7ListViewItemMode Value);
	void __fastcall SetIcon(W7images::TW7Image* Value);
	void __fastcall SetSubItemsAlign(W7classes::TW7VerticalAlignment Value);
	
protected:
	int VerticalDelta;
	int HorizontalDelta;
	bool FirstUpdate;
	void __fastcall NeedToUpdate(void);
	void __fastcall ObjectsMouseEnter(System::TObject* Sender);
	void __fastcall ObjectsMouseLeave(System::TObject* Sender);
	void __fastcall ObjectsClick(System::TObject* Sender);
	void __fastcall ObjectsDblClick(System::TObject* Sender);
	void __fastcall ObjectsMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ObjectsMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ObjectsMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	
public:
	__fastcall virtual TW7CustomMultiTaskItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomMultiTaskItem(void);
	__property Caption ;
	__property Classes::TStrings* SubItems = {read=FSubItems, write=SetSubItems};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Graphics::TFont* ItemsFont = {read=FSubItemsFont, write=SetSubItemsFont};
	__property Graphics::TColor CaptionMouseInColor = {read=FCaptionMouseInColor, write=SetCaptionMouseInColor, nodefault};
	__property Graphics::TColor CaptionMouseOutColor = {read=FCaptionMouseOutColor, write=SetCaptionMouseOutColor, nodefault};
	__property Graphics::TColor SubItemsMouseInColor = {read=FSubItemsMouseInColor, write=SetSubItemsMouseInColor, nodefault};
	__property Graphics::TColor SubItemsMouseOutColor = {read=FSubItemsMouseOutColor, write=SetSubItemsMouseOutColor, nodefault};
	__property TW7ListViewItemMode Mode = {read=FMode, write=SetMode, default=1};
	__property W7images::TW7Image* Icon = {read=FIcon, write=SetIcon};
	__property W7classes::TW7VerticalAlignment SubItemsAlign = {read=FSubItemsAlign, write=SetSubItemsAlign, default=0};
	__property TW7MultiTaskItemNotify OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TW7MultiTaskItemNotify OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property TW7MultiTaskItemMouseEvent OnItemMouseDown = {read=FOnItemMouseDown, write=FOnItemMouseDown};
	__property TW7MultiTaskItemNotify OnItemMouseEnter = {read=FOnItemMouseEnter, write=FOnItemMouseEnter};
	__property TW7MultiTaskItemNotify OnItemMouseLeave = {read=FOnItemMouseLeave, write=FOnItemMouseLeave};
	__property TW7MultiTaskMouseMoveEvent OnItemMouseMove = {read=FOnItemMouseMove, write=FOnItemMouseMove};
	__property TW7MultiTaskItemMouseEvent OnItemMouseUp = {read=FOnItemMouseUp, write=FOnItemMouseUp};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7CustomMultiTaskItem(HWND ParentWindow) : TW7CustomListViewItem(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7SubItemsList;
class PASCALIMPLEMENTATION TW7SubItemsList : public Classes::TStrings 
{
	typedef Classes::TStrings inherited;
	
private:
	TW7CustomMultiTaskItem* ListViewItem;
	
protected:
	virtual AnsiString __fastcall Get(int Index);
	virtual int __fastcall GetCount(void);
	virtual void __fastcall Put(int Index, const AnsiString S);
	virtual void __fastcall SetUpdateState(bool Updating);
	
public:
	virtual void __fastcall Clear(void);
	virtual void __fastcall Delete(int Index);
	virtual void __fastcall Insert(int Index, const AnsiString S);
public:
	#pragma option push -w-inl
	/* TStrings.Destroy */ inline __fastcall virtual ~TW7SubItemsList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TW7SubItemsList(void) : Classes::TStrings() { }
	#pragma option pop
	
};


class DELPHICLASS TW7CustomTaskItem;
class PASCALIMPLEMENTATION TW7CustomTaskItem : public TW7CustomListViewItem 
{
	typedef TW7CustomListViewItem inherited;
	
private:
	Imglist::TCustomImageList* FImages;
	Imglist::TChangeLink* FImageChangeLink;
	int FImageIndex;
	W7classes::TW7ButtonIconSize FIconSize;
	int FIconHeight;
	AnsiString FDescription;
	W7classes::TW7VerticalAlignment FIconAlignment;
	Graphics::TFont* FDescriptionFont;
	W7classes::TW7VerticalAlignment FDescriptionAlignment;
	int FVerticalDelta;
	int FHorizontalDelta;
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetIconSize(W7classes::TW7ButtonIconSize Value);
	void __fastcall SetDescription(AnsiString Value);
	void __fastcall SetIconAlignment(W7classes::TW7VerticalAlignment Value);
	void __fastcall SetDescriptionFont(Graphics::TFont* Value);
	void __fastcall SetDescriptionAlignment(W7classes::TW7VerticalAlignment Value);
	void __fastcall SetVerticalDelta(int Value);
	void __fastcall SetHorizontalDelta(int Value);
	
protected:
	void __fastcall DrawButtonElements(void);
	virtual void __fastcall Paint(void);
	void __fastcall ImageListChange(System::TObject* Sender);
	void __fastcall UpdateImageList(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TW7CustomTaskItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomTaskItem(void);
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property W7classes::TW7ButtonIconSize IconSize = {read=FIconSize, write=SetIconSize, default=3};
	__property Caption ;
	__property AnsiString Description = {read=FDescription, write=SetDescription};
	__property W7classes::TW7VerticalAlignment IconAlignment = {read=FIconAlignment, write=SetIconAlignment, default=0};
	__property Font ;
	__property Graphics::TFont* DescriptionFont = {read=FDescriptionFont, write=SetDescriptionFont};
	__property W7classes::TW7VerticalAlignment DescriptionAlignment = {read=FDescriptionAlignment, write=SetDescriptionAlignment, default=0};
	__property int VerticalDelta = {read=FVerticalDelta, write=SetVerticalDelta, nodefault};
	__property int HorizontalDelta = {read=FVerticalDelta, write=SetHorizontalDelta, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7CustomTaskItem(HWND ParentWindow) : TW7CustomListViewItem(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7ListViewItem;
class PASCALIMPLEMENTATION TW7ListViewItem : public TW7CustomListViewItem 
{
	typedef TW7CustomListViewItem inherited;
	
__published:
	__property SetFocusOnClick  = {default=1};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Font ;
	__property Constraints ;
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property MouseInControl  = {default=0};
	__property OnClick ;
	__property OnDblClick ;
	__property OnContextPopup ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TW7CustomListViewItem.Create */ inline __fastcall virtual TW7ListViewItem(Classes::TComponent* AOwner) : TW7CustomListViewItem(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomListViewItem.Destroy */ inline __fastcall virtual ~TW7ListViewItem(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7ListViewItem(HWND ParentWindow) : TW7CustomListViewItem(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7MultiTaskItem;
class PASCALIMPLEMENTATION TW7MultiTaskItem : public TW7CustomMultiTaskItem 
{
	typedef TW7CustomMultiTaskItem inherited;
	
__published:
	__property Caption ;
	__property SubItems ;
	__property Font ;
	__property ItemsFont ;
	__property CaptionMouseInColor ;
	__property CaptionMouseOutColor ;
	__property SubItemsMouseInColor ;
	__property SubItemsMouseOutColor ;
	__property Mode  = {default=1};
	__property Icon ;
	__property SubItemsAlign  = {default=0};
	__property Action ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property Enabled  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnItemClick ;
	__property OnItemDblClick ;
	__property OnItemMouseDown ;
	__property OnItemMouseEnter ;
	__property OnItemMouseLeave ;
	__property OnItemMouseMove ;
	__property OnItemMouseUp ;
public:
	#pragma option push -w-inl
	/* TW7CustomMultiTaskItem.Create */ inline __fastcall virtual TW7MultiTaskItem(Classes::TComponent* AOwner) : TW7CustomMultiTaskItem(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomMultiTaskItem.Destroy */ inline __fastcall virtual ~TW7MultiTaskItem(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7MultiTaskItem(HWND ParentWindow) : TW7CustomMultiTaskItem(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7TaskItem;
class PASCALIMPLEMENTATION TW7TaskItem : public TW7CustomTaskItem 
{
	typedef TW7CustomTaskItem inherited;
	
__published:
	__property Images ;
	__property ImageIndex  = {default=-1};
	__property IconSize  = {default=3};
	__property Caption ;
	__property Description ;
	__property IconAlignment  = {default=0};
	__property Font ;
	__property DescriptionFont ;
	__property DescriptionAlignment  = {default=0};
	__property VerticalDelta ;
	__property HorizontalDelta ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnContextPopup ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TW7CustomTaskItem.Create */ inline __fastcall virtual TW7TaskItem(Classes::TComponent* AOwner) : TW7CustomTaskItem(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomTaskItem.Destroy */ inline __fastcall virtual ~TW7TaskItem(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7TaskItem(HWND ParentWindow) : TW7CustomTaskItem(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7listviewitems */
using namespace W7listviewitems;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7listviewitems
