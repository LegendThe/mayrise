// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwimagecombo.pas' rev: 11.00

#ifndef WwimagecomboHPP
#define WwimagecomboHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Dbctrls.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Listactns.hpp>	// Pascal unit
#include <Wwtypes.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwframe.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwimagecombo
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TwwComboItemsSortType { icstNone, icstDisplayedText, icstStoredText };
#pragma option pop

class DELPHICLASS TwwComboExItems;
class DELPHICLASS TwwComboExItem;
typedef int __fastcall (__closure *TwwComboItemsCompareEvent)(TwwComboExItems* List, TwwComboExItem* Item1, TwwComboExItem* Item2);

typedef int __fastcall (*TwwComboItemsCompare)(TwwComboExItems* List, int Index1, int Index2);

class DELPHICLASS TwwPopupImageListBox;
class PASCALIMPLEMENTATION TwwPopupImageListBox : public Wwdbcomb::TwwPopupListbox 
{
	typedef Wwdbcomb::TwwPopupListbox inherited;
	
protected:
	virtual void __fastcall DrawItem(int Index, const Types::TRect &ARect, Windows::TOwnerDrawState State);
	
public:
	__property Style  = {default=0};
public:
	#pragma option push -w-inl
	/* TwwPopupListbox.Create */ inline __fastcall virtual TwwPopupImageListBox(Classes::TComponent* AOwner) : Wwdbcomb::TwwPopupListbox(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomListBox.Destroy */ inline __fastcall virtual ~TwwPopupImageListBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwPopupImageListBox(HWND ParentWindow) : Wwdbcomb::TwwPopupListbox(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TwwComboExItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FDisplayedText;
	AnsiString FStoredText;
	Imglist::TImageIndex FImageIndex;
	Imglist::TImageIndex FSelectedImageIndex;
	int FIndent;
	
protected:
	virtual void __fastcall SetSelectedImageIndex(const Imglist::TImageIndex Value);
	virtual void __fastcall SetDisplayedText(const AnsiString Value);
	virtual void __fastcall SetStoredText(const AnsiString Value);
	virtual void __fastcall SetImageIndex(const Imglist::TImageIndex Value);
	virtual void __fastcall SetIndex(int Value);
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString DisplayedText = {read=FDisplayedText, write=FDisplayedText};
	__property AnsiString StoredText = {read=FStoredText, write=FStoredText};
	__property Imglist::TImageIndex ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property int Indent = {read=FIndent, write=FIndent, default=-1};
	__property Imglist::TImageIndex SelectedImageIndex = {read=FSelectedImageIndex, write=SetSelectedImageIndex, default=-1};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TwwComboExItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TwwComboExItem(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TwwComboExItems : public Classes::TOwnedCollection 
{
	typedef Classes::TOwnedCollection inherited;
	
public:
	TwwComboExItem* operator[](int Index) { return Items[Index]; }
	
private:
	TwwComboItemsSortType FSortType;
	TwwComboItemsCompareEvent FOnCompare;
	bool FCaseSensitive;
	TwwComboExItem* __fastcall GetComboItem(const int Index);
	void __fastcall SetSortType(const TwwComboItemsSortType Value);
	void __fastcall ExchangeItems(int Index1, int Index2);
	void __fastcall QuickSort(int L, int R, TwwComboItemsCompare SCompare);
	void __fastcall CustomSort(TwwComboItemsCompare Compare);
	
protected:
	virtual void __fastcall Notify(Classes::TCollectionItem* Item, Classes::TCollectionNotification Action);
	virtual int __fastcall CompareItems(TwwComboExItem* I1, TwwComboExItem* I2);
	
public:
	HIDESBASE TwwComboExItem* __fastcall Add(void);
	virtual void __fastcall Sort(void);
	__fastcall TwwComboExItems(Classes::TPersistent* AOwner, TMetaClass* ItemClass);
	HIDESBASE TwwComboExItem* __fastcall Insert(int Index);
	__property TwwComboExItem* Items[int Index] = {read=GetComboItem/*, default*/};
	
__published:
	__property TwwComboItemsSortType SortType = {read=FSortType, write=SetSortType, default=0};
	__property TwwComboItemsCompareEvent OnCompare = {read=FOnCompare, write=FOnCompare};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, default=0};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TwwComboExItems(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwCustomImageCombo;
class PASCALIMPLEMENTATION TwwCustomImageCombo : public Wwdbcomb::TwwDBCustomComboBox 
{
	typedef Wwdbcomb::TwwDBCustomComboBox inherited;
	
private:
	TwwComboExItems* FItemsEx;
	Imglist::TCustomImageList* FImages;
	AnsiString FValue;
	AnsiString FNullTextDisplay;
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetItemsEx(const TwwComboExItems* Value);
	HIDESBASE virtual AnsiString __fastcall GetValue();
	
protected:
	virtual void __fastcall SetValue(AnsiString value);
	virtual bool __fastcall CustomDraw(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual Wwdbcomb::TwwPopupListbox* __fastcall CreateListBox(void);
	virtual void __fastcall ShowText(Graphics::TCanvas* ACanvas, const Types::TRect &ARect, int indentLeft, int indentTop, AnsiString AText, bool transparent = false);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall CloseUp(bool Accept);
	virtual void __fastcall SetItemIndex(int val);
	virtual int __fastcall GetItemIndexFromText(AnsiString DisplayedText);
	virtual void __fastcall SetEditRect(void);
	virtual void __fastcall Paint(void);
	virtual Types::TRect __fastcall GetImageRect();
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual void __fastcall DrawFocusRect(Graphics::TCanvas* ACanvas, const Types::TRect &ARect);
	virtual int __fastcall CalcItemHeight(void);
	
public:
	__fastcall virtual TwwCustomImageCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwCustomImageCombo(void);
	virtual void __fastcall DropDown(void);
	virtual void __fastcall ApplyList(void);
	void __fastcall RefreshDisplay(void);
	virtual AnsiString __fastcall GetComboValue(AnsiString DisplayText);
	virtual AnsiString __fastcall GetComboDisplay(AnsiString Value);
	__property Controller ;
	__property BevelEdges  = {default=15};
	__property BevelInner  = {index=0, default=2};
	__property BevelKind  = {default=0};
	__property BevelOuter  = {index=1, default=1};
	__property DisableThemes  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property ParentBiDiMode  = {default=1};
	__property ShowButton ;
	__property Style ;
	__property MapList ;
	__property AllowClearKey ;
	__property AutoDropDown  = {default=0};
	__property ShowMatchText  = {default=0};
	__property AutoFillDate  = {default=1};
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property ButtonStyle  = {default=1};
	__property CharCase  = {default=0};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DataField ;
	__property DataSource ;
	__property DisableDropDownList  = {default=0};
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property DropDownCount ;
	__property DropDownWidth  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property ButtonEffects ;
	__property Frame ;
	__property ButtonWidth  = {default=0};
	__property ButtonGlyph ;
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property Picture ;
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property UnboundDataType ;
	__property UsePictureMask  = {default=1};
	__property Visible  = {default=1};
	__property UnboundAlignment  = {default=0};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TwwComboExItems* ItemsEx = {read=FItemsEx, write=SetItemsEx};
	__property ItemHeight ;
	__property AnsiString Value = {read=GetValue, write=SetValue};
	__property AnsiString NullTextDisplay = {read=FNullTextDisplay, write=FNullTextDisplay};
	__property OnAddHistoryItem ;
	__property OnChange ;
	__property OnCheckValue ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
	__property OnCloseUp ;
	__property OnDrawItem ;
	__property OnMeasureItem ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwCustomImageCombo(HWND ParentWindow) : Wwdbcomb::TwwDBCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TwwImageCombo;
class PASCALIMPLEMENTATION TwwImageCombo : public TwwCustomImageCombo 
{
	typedef TwwCustomImageCombo inherited;
	
__published:
	__property Controller ;
	__property BevelEdges  = {default=15};
	__property BevelInner  = {index=0, default=2};
	__property BevelKind  = {default=0};
	__property BevelOuter  = {index=1, default=1};
	__property DisableThemes  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property ParentBiDiMode  = {default=1};
	__property ShowButton ;
	__property Style ;
	__property MapList ;
	__property AllowClearKey ;
	__property AutoDropDown  = {default=0};
	__property ShowMatchText  = {default=0};
	__property AutoFillDate  = {default=1};
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property ButtonStyle  = {default=1};
	__property CharCase  = {default=0};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DataField ;
	__property DataSource ;
	__property DisableDropDownList  = {default=0};
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property DropDownCount ;
	__property DropDownWidth  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property ButtonEffects ;
	__property Frame ;
	__property ButtonWidth  = {default=0};
	__property ButtonGlyph ;
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property Picture ;
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property UnboundDataType ;
	__property UsePictureMask  = {default=1};
	__property Visible  = {default=1};
	__property UnboundAlignment  = {default=0};
	__property Images ;
	__property ItemsEx ;
	__property ItemHeight ;
	__property Value ;
	__property NullTextDisplay ;
	__property OnAddHistoryItem ;
	__property OnChange ;
	__property OnCheckValue ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
	__property OnCloseUp ;
	__property OnDrawItem ;
	__property OnMeasureItem ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
public:
	#pragma option push -w-inl
	/* TwwCustomImageCombo.Create */ inline __fastcall virtual TwwImageCombo(Classes::TComponent* AOwner) : TwwCustomImageCombo(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TwwCustomImageCombo.Destroy */ inline __fastcall virtual ~TwwImageCombo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwImageCombo(HWND ParentWindow) : TwwCustomImageCombo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwimagecombo */
using namespace Wwimagecombo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwimagecombo
