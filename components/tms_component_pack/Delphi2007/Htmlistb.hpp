// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Htmlistb.pas' rev: 11.00

#ifndef HtmlistbHPP
#define HtmlistbHPP

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
#include <Comobj.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Advgradient.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Htmlistb
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS EHTMListBoxError;
class PASCALIMPLEMENTATION EHTMListBoxError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EHTMListBoxError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EHTMListBoxError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EHTMListBoxError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EHTMListBoxError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EHTMListBoxError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EHTMListBoxError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EHTMListBoxError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EHTMListBoxError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EHTMListBoxError(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TAnchorClick)(System::TObject* Sender, int index, AnsiString anchor);

typedef void __fastcall (__closure *TAnchorHintEvent)(System::TObject* Sender, int Index, AnsiString &Anchor);

class DELPHICLASS THTMListBox;
class PASCALIMPLEMENTATION THTMListBox : public Stdctrls::TCustomListBox 
{
	typedef Stdctrls::TCustomListBox inherited;
	
private:
	bool FBlinking;
	int FOldCursor;
	AnsiString FOldAnchor;
	TAnchorClick FOnAnchorClick;
	TAnchorClick FOnAnchorEnter;
	TAnchorClick FOnAnchorExit;
	TAnchorHintEvent FOnAnchorHint;
	Controls::TImageList* FImages;
	bool FMultiLine;
	Graphics::TColor FURLColor;
	Advgradient::TGradientStyle* FSelectionColors;
	Graphics::TColor FSelectionFontColor;
	bool FIsMeasuring;
	int FTimerID;
	bool FEnableBlink;
	int FShadowOffset;
	Graphics::TColor FShadowColor;
	bool FAnchorHint;
	bool FSortedEx;
	bool FIncrLookup;
	AnsiString FLookup;
	bool FScrollHorizontal;
	int FMaxExtent;
	int FUpdateCount;
	Picturecontainer::THTMLPictureCache* FImageCache;
	int FTimerCount;
	bool FEllipsis;
	int FLastHintPos;
	bool FItemHint;
	bool FHTMLHint;
	Picturecontainer::TPictureContainer* FContainer;
	bool FSortWithHTML;
	int FLineSpacing;
	bool FShowSelection;
	bool FAutoItemHeight;
	bool FShowFocus;
	bool FAutoFocus;
	void __fastcall ReMeasure(void);
	void __fastcall DoMeasureList(void);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Msg);
	MESSAGE void __fastcall WMTimer(Messages::TWMTimer &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	void __fastcall SetImages(Controls::TImageList* value);
	void __fastcall SetMultiLine(bool value);
	void __fastcall SetURLColor(const Graphics::TColor Value);
	void __fastcall SetSelectionFontColor(const Graphics::TColor Value);
	AnsiString __fastcall GetTextItem(int index);
	void __fastcall SetEnableBlink(const bool Value);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetShadowOffset(const int Value);
	AnsiString __fastcall IsAnchor(int x, int y, int &Idx);
	bool __fastcall GetSortedEx(void);
	void __fastcall SetSortedEx(const bool Value);
	void __fastcall SetScrollHorizontal(const bool Value);
	void __fastcall SetEllipsis(const bool Value);
	void __fastcall SetContainer(const Picturecontainer::TPictureContainer* Value);
	void __fastcall SetSelectionColors(const Advgradient::TGradientStyle* Value);
	void __fastcall SetLineSpacing(const int Value);
	void __fastcall SetAutoItemHeight(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	HIDESBASE int __fastcall GetItemHeight(void);
	HIDESBASE void __fastcall SetItemHeight(const int value);
	
protected:
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	virtual void __fastcall MeasureItem(int Index, int &Height);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall DoEnter(void);
	int __fastcall MaxHorizontalExtent(void);
	void __fastcall UpdateHScrollExtent(int maxextent);
	void __fastcall QuickSortList(Classes::TStringList* List, int Left, int Right);
	
public:
	__fastcall virtual THTMListBox(Classes::TComponent* aOwner);
	__fastcall virtual ~THTMListBox(void);
	__property AnsiString TextItems[int index] = {read=GetTextItem};
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	void __fastcall HilightInList(AnsiString HiText, bool DoCase);
	void __fastcall HilightInItem(int Index, AnsiString HiText, bool DoCase);
	void __fastcall UnHilightInList(void);
	void __fastcall UnHilightInItem(int Index);
	void __fastcall MarkInList(AnsiString HiText, bool DoCase);
	void __fastcall MarkInItem(int Index, AnsiString HiText, bool DoCase);
	void __fastcall UnMarkInList(void);
	void __fastcall UnMarkInItem(int Index);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property DragKind  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property OnEndDock ;
	__property OnStartDock ;
	__property bool AnchorHint = {read=FAnchorHint, write=FAnchorHint, default=0};
	__property bool AutoFocus = {read=FAutoFocus, write=FAutoFocus, default=0};
	__property bool AutoItemHeight = {read=FAutoItemHeight, write=SetAutoItemHeight, default=1};
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Columns  = {default=0};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property bool Ellipsis = {read=FEllipsis, write=SetEllipsis, default=0};
	__property bool EnableBlink = {read=FEnableBlink, write=SetEnableBlink, default=0};
	__property Enabled  = {default=1};
	__property ExtendedSelect  = {default=1};
	__property Font ;
	__property bool HTMLHint = {read=FHTMLHint, write=FHTMLHint, default=0};
	__property Controls::TImageList* Images = {read=FImages, write=SetImages};
	__property bool IncrLookup = {read=FIncrLookup, write=FIncrLookup, default=0};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property ItemHeight  = {read=GetItemHeight, write=SetItemHeight};
	__property bool ItemHint = {read=FItemHint, write=FItemHint, default=0};
	__property Items ;
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=0};
	__property MultiSelect  = {default=0};
	__property bool Multiline = {read=FMultiLine, write=SetMultiLine, default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentColor  = {default=0};
	__property ParentShowHint  = {default=1};
	__property Picturecontainer::TPictureContainer* PictureContainer = {read=FContainer, write=SetContainer};
	__property PopupMenu ;
	__property bool ScrollHorizontal = {read=FScrollHorizontal, write=SetScrollHorizontal, default=0};
	__property bool ShowFocus = {read=FShowFocus, write=FShowFocus, default=1};
	__property ShowHint ;
	__property Advgradient::TGradientStyle* SelectionColors = {read=FSelectionColors, write=SetSelectionColors};
	__property Graphics::TColor SelectionFontColor = {read=FSelectionFontColor, write=SetSelectionFontColor, default=-16777202};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, default=8421504};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, default=1};
	__property bool ShowSelection = {read=FShowSelection, write=FShowSelection, default=1};
	__property bool Sorted = {read=GetSortedEx, write=SetSortedEx, nodefault};
	__property bool SortWithHTML = {read=FSortWithHTML, write=FSortWithHTML, default=0};
	__property TabOrder  = {default=-1};
	__property Graphics::TColor URLColor = {read=FURLColor, write=SetURLColor, default=16711680};
	__property Visible  = {default=1};
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
	__property TAnchorClick OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	__property TAnchorClick OnAnchorEnter = {read=FOnAnchorEnter, write=FOnAnchorEnter};
	__property TAnchorClick OnAnchorExit = {read=FOnAnchorExit, write=FOnAnchorExit};
	__property TAnchorHintEvent OnAnchorHint = {read=FOnAnchorHint, write=FOnAnchorHint};
	__property OnContextPopup ;
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall THTMListBox(HWND ParentWindow) : Stdctrls::TCustomListBox(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSStyle()
	{
		Advstyleif::_di_ITMSStyle intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSStyle*(void) { return (ITMSStyle*)&__ITMSStyle; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x2;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x1;

}	/* namespace Htmlistb */
using namespace Htmlistb;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Htmlistb
