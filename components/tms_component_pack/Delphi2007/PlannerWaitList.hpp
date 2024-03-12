// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Plannerwaitlist.pas' rev: 11.00

#ifndef PlannerwaitlistHPP
#define PlannerwaitlistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Planner.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Plannerwaitlist
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TItemHintEvent)(System::TObject* Sender, Planner::TPlannerItem* Item, AnsiString &AHint);

typedef void __fastcall (__closure *TItemEvent)(System::TObject* Sender, Planner::TPlannerItem* Item);

class DELPHICLASS TPlannerWaitList;
class PASCALIMPLEMENTATION TPlannerWaitList : public Stdctrls::TCustomListBox 
{
	typedef Stdctrls::TCustomListBox inherited;
	
private:
	Planner::TPlanner* FPlanner;
	TItemHintEvent FOnItemHint;
	TItemEvent FOnItemSelect;
	int FOldIdx;
	int FOldHintIdx;
	bool FShowSelection;
	TItemEvent FOnItemRightClick;
	TItemEvent FOnItemClick;
	TItemEvent FOnItemDblClick;
	Planner::TPlannerSkin* FSkin;
	Controls::TDragImageList* FDragImage;
	bool FDragItemImage;
	Planner::TPlannerItems* __fastcall GetItems(void);
	HIDESBASE void __fastcall SetItems(const Planner::TPlannerItems* Value);
	void __fastcall SetDefaultItem(const Planner::TPlannerItem* Value);
	Planner::TPlannerItem* __fastcall GetDefaultItem(void);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	Controls::TImageList* __fastcall GetImages(void);
	void __fastcall SetImages(const Controls::TImageList* Value);
	Picturecontainer::TPictureContainer* __fastcall GetPictureContainer(void);
	void __fastcall SetPictureContainer(const Picturecontainer::TPictureContainer* Value);
	void __fastcall SetPlannerSkin(const Planner::TPlannerSkin* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	Planner::TPlannerItem* __fastcall GetSelectedItem(void);
	void __fastcall SetDragItemImage(const bool Value);
	
protected:
	void __fastcall ItemsChanged(System::TObject* Sender);
	void __fastcall ItemsUpdated(System::TObject* Sender);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	DYNAMIC void __fastcall DragOver(System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall DoExit(void);
	virtual Planner::TPlanner* __fastcall CreatePlanner(void);
	DYNAMIC void __fastcall DoStartDrag(Controls::TDragObject* &DragObject);
	DYNAMIC void __fastcall DoEndDrag(System::TObject* Target, int X, int Y);
	virtual Controls::TDragImageList* __fastcall GetDragImages(void);
	
public:
	__fastcall virtual TPlannerWaitList(Classes::TComponent* AOwner);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TPlannerWaitList(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall DeleteSelected(void);
	void __fastcall SaveToFile(AnsiString FileName);
	void __fastcall LoadFromFile(AnsiString FileName);
	void __fastcall SaveToStream(Classes::TStream* Stream);
	void __fastcall LoadFromStream(Classes::TStream* Stream);
	void __fastcall InsertFromStream(Classes::TStream* Stream);
	DYNAMIC void __fastcall DragDrop(System::TObject* Source, int X, int Y);
	Planner::TPlannerItem* __fastcall MoveToPlanner(Planner::TCustomPlanner* APlanner, int ItemIndex, int X, int Y);
	Planner::TPlannerItem* __fastcall CopyToPlanner(Planner::TCustomPlanner* APlanner, int ItemIndex, int X, int Y);
	void __fastcall MoveFromPlanner(Planner::TCustomPlanner* APlanner, Planner::TPlannerItem* AItem);
	__property Planner::TPlannerItem* SelectedItem = {read=GetSelectedItem};
	
__published:
	__property Planner::TPlannerItem* DefaultItem = {read=GetDefaultItem, write=SetDefaultItem};
	__property bool DragItemImage = {read=FDragItemImage, write=SetDragItemImage, default=0};
	__property Controls::TImageList* Images = {read=GetImages, write=SetImages};
	__property Planner::TPlannerItems* Items = {read=GetItems, write=SetItems};
	__property ItemHeight ;
	__property Picturecontainer::TPictureContainer* PictureContainer = {read=GetPictureContainer, write=SetPictureContainer};
	__property bool ShowSelection = {read=FShowSelection, write=FShowSelection, nodefault};
	__property Planner::TPlannerSkin* Skin = {read=FSkin, write=SetPlannerSkin};
	__property TItemHintEvent OnItemHint = {read=FOnItemHint, write=FOnItemHint};
	__property TItemEvent OnItemSelect = {read=FOnItemSelect, write=FOnItemSelect};
	__property TItemEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TItemEvent OnItemRightClick = {read=FOnItemRightClick, write=FOnItemRightClick};
	__property TItemEvent OnItemDblClick = {read=FOnItemDblClick, write=FOnItemDblClick};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BevelEdges  = {default=15};
	__property BevelInner  = {index=0, default=2};
	__property BevelKind  = {default=0};
	__property BevelOuter  = {index=1, default=1};
	__property BiDiMode ;
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Constraints ;
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MultiSelect  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property TabWidth  = {default=0};
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnData ;
	__property OnDataFind ;
	__property OnDataObject ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDrawItem ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMeasureItem ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPlannerWaitList(HWND ParentWindow) : Stdctrls::TCustomListBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerItemCrack;
class PASCALIMPLEMENTATION TPlannerItemCrack : public Planner::TPlannerItem 
{
	typedef Planner::TPlannerItem inherited;
	
public:
	#pragma option push -w-inl
	/* TPlannerItem.Create */ inline __fastcall virtual TPlannerItemCrack(Classes::TCollection* Collection) : Planner::TPlannerItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPlannerItem.Destroy */ inline __fastcall virtual ~TPlannerItemCrack(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x3;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Plannerwaitlist */
using namespace Plannerwaitlist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Plannerwaitlist
