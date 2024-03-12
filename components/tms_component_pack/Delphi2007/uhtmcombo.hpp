// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Uhtmcombo.pas' rev: 11.00

#ifndef UhtmcomboHPP
#define UhtmcomboHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Uhtmcombo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS EHTMLComboBoxError;
class PASCALIMPLEMENTATION EHTMLComboBoxError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EHTMLComboBoxError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EHTMLComboBoxError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EHTMLComboBoxError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EHTMLComboBoxError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EHTMLComboBoxError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EHTMLComboBoxError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EHTMLComboBoxError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EHTMLComboBoxError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EHTMLComboBoxError(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TAnchorClick)(System::TObject* Sender, int Index, WideString Anchor);

class DELPHICLASS TUniBaseCustomComboBox;
class PASCALIMPLEMENTATION TUniBaseCustomComboBox : public Stdctrls::TCustomComboBox 
{
	typedef Stdctrls::TCustomComboBox inherited;
	
private:
	bool FAutoFocus;
	bool FFlat;
	bool FEtched;
	Graphics::TColor FOldColor;
	bool FOldParentColor;
	int FButtonWidth;
	bool FFocusBorder;
	bool FMouseInControl;
	int fDropWidth;
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
	__property int DropWidth = {read=fDropWidth, write=SetDropWidth, nodefault};
	
public:
	__fastcall virtual TUniBaseCustomComboBox(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomComboBox.Destroy */ inline __fastcall virtual ~TUniBaseCustomComboBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TUniBaseCustomComboBox(HWND ParentWindow) : Stdctrls::TCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TUniHTMLCombobox;
class PASCALIMPLEMENTATION TUniHTMLCombobox : public TUniBaseCustomComboBox 
{
	typedef TUniBaseCustomComboBox inherited;
	
private:
	Graphics::TColor FURLColor;
	bool FIncrLookup;
	Controls::TImageList* FImages;
	int FDropHeight;
	AnsiString FOldAnchor;
	AnsiString FLookup;
	int FItemIndex;
	bool FSortedEx;
	bool FDropped;
	TAnchorClick FAnchorClick;
	TAnchorClick FAnchorEnter;
	TAnchorClick FAnchorExit;
	bool FEllipsis;
	Picturecontainer::TPictureContainer* FContainer;
	int FShadowOffset;
	Graphics::TColor FShadowColor;
	Picturecontainer::THTMLPictureCache* FImageCache;
	bool FItemHint;
	bool FHTMLHint;
	HIDESBASE void __fastcall SetDropWidth(int value);
	int __fastcall GetDropWidth(void);
	void __fastcall SetEditHeight(int value);
	int __fastcall GetEditHeight(void);
	void __fastcall SetImages(const Controls::TImageList* Value);
	void __fastcall SetURLColor(const Graphics::TColor Value);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Msg);
	WideString __fastcall GetTextItem(int index);
	void __fastcall SetItemIndexP(const int Value);
	int __fastcall GetItemIndexP(void);
	bool __fastcall GetSortedEx(void);
	void __fastcall SetSortedEx(const bool Value);
	void __fastcall SetEllipsis(const bool Value);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetShadowOffset(const int Value);
	WideString __fastcall GetWideItem(int Index);
	void __fastcall SetWideItem(int Index, const WideString Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
protected:
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall SetStyle(Stdctrls::TComboBoxStyle Value);
	virtual void __fastcall MeasureItem(int Index, int &Height);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall DoEnter(void);
	
public:
	__fastcall virtual TUniHTMLCombobox(Classes::TComponent* AOwner);
	__fastcall virtual ~TUniHTMLCombobox(void);
	void __fastcall HilightInList(WideString HiText, bool DoCase);
	void __fastcall HilightInItem(int Index, WideString HiText, bool DoCase);
	void __fastcall UnHilightInList(void);
	void __fastcall UnHilightInItem(int Index);
	void __fastcall MarkInList(WideString HiText, bool DoCase);
	void __fastcall MarkInItem(int Index, WideString HiText, bool DoCase);
	void __fastcall UnMarkInList(void);
	void __fastcall UnMarkInItem(int Index);
	void __fastcall AddWideItem(WideString Value);
	void __fastcall DeleteWideItem(int Index);
	__property WideString WideItems[int Index] = {read=GetWideItem, write=SetWideItem};
	__property WideString TextItems[int index] = {read=GetTextItem};
	__property Text ;
	
__published:
	__property Anchors  = {default=3};
	__property Constraints ;
	__property AutoFocus ;
	__property ButtonWidth ;
	__property Style  = {default=0};
	__property Flat ;
	__property Etched ;
	__property FocusBorder ;
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property int DropWidth = {read=GetDropWidth, write=SetDropWidth, nodefault};
	__property int DropHeight = {read=FDropHeight, write=FDropHeight, nodefault};
	__property int EditHeight = {read=GetEditHeight, write=SetEditHeight, nodefault};
	__property bool Ellipsis = {read=FEllipsis, write=SetEllipsis, nodefault};
	__property Enabled  = {default=1};
	__property Font ;
	__property bool HTMLHint = {read=FHTMLHint, write=FHTMLHint, nodefault};
	__property Controls::TImageList* Images = {read=FImages, write=SetImages};
	__property bool IncrLookup = {read=FIncrLookup, write=FIncrLookup, default=0};
	__property ItemHeight ;
	__property bool ItemHint = {read=FItemHint, write=FItemHint, nodefault};
	__property int ItemIndex = {read=GetItemIndexP, write=SetItemIndexP, nodefault};
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property Picturecontainer::TPictureContainer* PictureContainer = {read=FContainer, write=FContainer};
	__property PopupMenu ;
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, nodefault};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, nodefault};
	__property ShowHint ;
	__property bool Sorted = {read=GetSortedEx, write=SetSortedEx, nodefault};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Graphics::TColor URLColor = {read=FURLColor, write=SetURLColor, nodefault};
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
	__property TAnchorClick OnAnchorClick = {read=FAnchorClick, write=FAnchorClick};
	__property TAnchorClick OnAnchorEnter = {read=FAnchorEnter, write=FAnchorEnter};
	__property TAnchorClick OnAnchorExit = {read=FAnchorExit, write=FAnchorExit};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TUniHTMLCombobox(HWND ParentWindow) : TUniBaseCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Uhtmcombo */
using namespace Uhtmcombo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Uhtmcombo