// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Paramlistbox.pas' rev: 11.00

#ifndef ParamlistboxHPP
#define ParamlistboxHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Spin.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Parhtml.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Paramlistbox
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

typedef void __fastcall (__closure *TParamListBoxClickEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString &value);

typedef void __fastcall (__closure *TParamListBoxPopupEvent)(System::TObject* Sender, int idx, AnsiString href, Classes::TStringList* values, bool &DoPopup);

typedef void __fastcall (__closure *TParamListBoxSelectEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString value);

typedef void __fastcall (__closure *TParamListBoxChangedEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString oldvalue, AnsiString &newvalue);

typedef void __fastcall (__closure *TParamListBoxHintEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString &hintvalue, bool &showhint);

typedef void __fastcall (__closure *TParamCustomEditEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString value, AnsiString props, const Types::TRect &EditRect);

typedef void __fastcall (__closure *TParamListBoxEditEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString &value);

typedef void __fastcall (__closure *TParamItemControlEvent)(System::TObject* Sender, int X, int Y, int Item, AnsiString ControlID, AnsiString ControlType, AnsiString ControlValue);

typedef void __fastcall (__closure *TParamControlHintEvent)(System::TObject* Sender, AnsiString ControlID, AnsiString &Hint, bool &CanShow);

class DELPHICLASS TParamListBox;
class PASCALIMPLEMENTATION TParamListBox : public Stdctrls::TCustomListBox 
{
	typedef Stdctrls::TCustomListBox inherited;
	
private:
	bool FBlinking;
	int FOldCursor;
	AnsiString FOldAnchor;
	TParamListBoxClickEvent FOnParamClick;
	TParamListBoxPopupEvent FOnParamPopup;
	TParamListBoxPopupEvent FOnParamList;
	TParamListBoxSelectEvent FOnParamSelect;
	TParamListBoxChangedEvent FOnParamChanged;
	TParamListBoxHintEvent FOnParamHint;
	Controls::TImageList* FImages;
	bool FMultiLine;
	Graphics::TColor FParamColor;
	Graphics::TColor FSelectionColor;
	Graphics::TColor FSelectionFonTColor;
	bool FIsMeasuring;
	int FTimerID;
	bool FEnableBlink;
	int FShadowOffset;
	Graphics::TColor FShadowColor;
	bool FParamHint;
	Menus::TPopupMenu* FParamPopup;
	Parhtml::TPopupListBox* FParamList;
	Parhtml::TPopupDatePicker* FParamDatePicker;
	Parhtml::TPopupSpinEdit* FParamSpinEdit;
	Parhtml::TPopupEdit* FParamEdit;
	Parhtml::TPopupMaskEdit* FParamMaskEdit;
	bool FParamListSorted;
	AnsiString FOldParam;
	bool FHover;
	int FHoverIdx;
	int FHoverHyperLink;
	Graphics::TColor FHoverColor;
	Graphics::TColor FHoverFontColor;
	#pragma pack(push,1)
	Types::TRect FCurrHoverRect;
	#pragma pack(pop)
	bool FShowSelection;
	int FFocusLink;
	int FFocusItem;
	int FNumHyperLinks;
	bool Redraw;
	int FUpdateCount;
	bool FMouseDown;
	AnsiString FCurrCtrlID;
	#pragma pack(push,1)
	Types::TRect FCurrCtrlRect;
	#pragma pack(pop)
	#pragma pack(push,1)
	Types::TRect FCurrCtrlDown;
	#pragma pack(pop)
	Picturecontainer::TPictureContainer* FContainer;
	Picturecontainer::THTMLPictureCache* FImageCache;
	TParamListBoxSelectEvent FOnParamExit;
	TParamListBoxSelectEvent FOnParamEnter;
	TParamListBoxClickEvent FOnParamPrepare;
	TParamItemControlEvent FOnControlClick;
	TParamControlHintEvent FOnControlHint;
	bool FEditAutoSize;
	int FLineSpacing;
	TParamListBoxEditEvent FOnParamEditStart;
	TParamListBoxEditEvent FOnParamEditDone;
	AnsiString FEmptyParam;
	AnsiString FEditValue;
	#pragma pack(push,1)
	Types::TPoint FEditPos;
	#pragma pack(pop)
	bool FIsEditing;
	TParamListBoxEditEvent FOnParamQuery;
	TParamCustomEditEvent FOnParamCustomEdit;
	bool FAdvanceOnReturn;
	void __fastcall ReMeasure(void);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Msg);
	MESSAGE void __fastcall WMTimer(Messages::TWMTimer &Msg);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Msg);
	void __fastcall SetImages(Controls::TImageList* value);
	void __fastcall SetMultiLine(bool value);
	void __fastcall SetParamColor(const Graphics::TColor Value);
	void __fastcall SetSelectionColor(const Graphics::TColor Value);
	void __fastcall SetSelectionFonTColor(const Graphics::TColor Value);
	AnsiString __fastcall GetTextItem(int index);
	void __fastcall SetEnableBlink(const bool Value);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetShadowOffset(const int Value);
	AnsiString __fastcall IsParam(int x, int y, bool GetFocusRect, int &Idx, Types::TRect &hoverrect, Types::TRect &ctrlrect, AnsiString &CID, AnsiString &CT, AnsiString &CV);
	AnsiString __fastcall GetParam(AnsiString href);
	void __fastcall SetParam(AnsiString href, const AnsiString Value);
	void __fastcall HandlePopup(System::TObject* Sender);
	void __fastcall SetHoverColor(const Graphics::TColor Value);
	void __fastcall SetHoverFonTColor(const Graphics::TColor Value);
	void __fastcall SetParamHint(const bool Value);
	AnsiString __fastcall GetItemParam(int idx, AnsiString href);
	void __fastcall SetItemParam(int idx, AnsiString href, const AnsiString Value);
	void __fastcall UpdateParam(AnsiString href, AnsiString value);
	void __fastcall PrepareParam(AnsiString Param, AnsiString &Value);
	int __fastcall GetParamRefCount(void);
	AnsiString __fastcall GetParamRefs(int Index);
	AnsiString __fastcall GetParamItemRefs(int Item, int Index);
	int __fastcall GetParamRefIndex(AnsiString href);
	void __fastcall ControlUpdate(System::TObject* Sender, AnsiString Param, AnsiString Text);
	void __fastcall AdvanceEdit(System::TObject* Sender);
	void __fastcall SetLineSpacing(const int Value);
	int __fastcall GetParamIndex(AnsiString href);
	Types::TRect __fastcall GetParamRect(AnsiString href);
	void __fastcall StartParamEdit(AnsiString param, int Index, const Types::TRect &hr);
	void __fastcall StartParamDir(int idx, AnsiString param, AnsiString curdir, const Types::TRect &hr);
	int __fastcall GetParamItemIndex(int Index, AnsiString href);
	int __fastcall GetParamItemRefCount(int Item);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Msg);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyPress(char &Key);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	virtual void __fastcall MeasureItem(int Index, int &Height);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TParamListBox(Classes::TComponent* aOwner);
	__fastcall virtual ~TParamListBox(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	virtual void __fastcall SelectAll(void);
	void __fastcall EditParam(int idx, AnsiString href);
	__property AnsiString TextItems[int index] = {read=GetTextItem};
	__property AnsiString Parameter[AnsiString href] = {read=GetParam, write=SetParam};
	__property int ParamRefCount = {read=GetParamRefCount, nodefault};
	__property AnsiString ParamRefs[int Index] = {read=GetParamRefs};
	__property int ParamItemRefCount[int Item] = {read=GetParamItemRefCount};
	__property AnsiString ParamItemRefs[int Item][int Index] = {read=GetParamItemRefs};
	__property int ParamRefIndex[AnsiString href] = {read=GetParamRefIndex};
	__property int ParamIndex[AnsiString href] = {read=GetParamIndex};
	__property int ParamItemIndex[int Index][AnsiString href] = {read=GetParamItemIndex};
	__property Types::TRect ParamRect[AnsiString href] = {read=GetParamRect};
	bool __fastcall GetParamInfo(int Index, AnsiString HRef, AnsiString &AValue, AnsiString &AClass, AnsiString &AProp, AnsiString &AHint);
	__property AnsiString ItemParameter[int idx][AnsiString href] = {read=GetItemParam, write=SetItemParam};
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	__property Parhtml::TPopupDatePicker* DateTimePicker = {read=FParamDatePicker};
	__property Parhtml::TPopupSpinEdit* SpinEdit = {read=FParamSpinEdit};
	__property Parhtml::TPopupEdit* Editor = {read=FParamEdit};
	__property Parhtml::TPopupMaskEdit* MaskEditor = {read=FParamMaskEdit};
	__property Parhtml::TPopupListBox* ListBox = {read=FParamList};
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property DragKind  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property OnEndDock ;
	__property OnStartDock ;
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Columns  = {default=0};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property ExtendedSelect  = {default=1};
	__property Font ;
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property Items ;
	__property ItemHeight ;
	__property MultiSelect  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentColor  = {default=0};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Sorted  = {default=0};
	__property TabOrder  = {default=-1};
	__property bool AdvanceOnReturn = {read=FAdvanceOnReturn, write=FAdvanceOnReturn, nodefault};
	__property bool EditAutoSize = {read=FEditAutoSize, write=FEditAutoSize, default=0};
	__property AnsiString EmptyParam = {read=FEmptyParam, write=FEmptyParam};
	__property bool EnableBlink = {read=FEnableBlink, write=SetEnableBlink, default=0};
	__property bool Hover = {read=FHover, write=FHover, default=1};
	__property Graphics::TColor HoverColor = {read=FHoverColor, write=SetHoverColor, default=32768};
	__property Graphics::TColor HoverFontColor = {read=FHoverFontColor, write=SetHoverFonTColor, default=16777215};
	__property Controls::TImageList* Images = {read=FImages, write=SetImages};
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=0};
	__property bool Multiline = {read=FMultiLine, write=SetMultiLine, nodefault};
	__property bool ParamHint = {read=FParamHint, write=SetParamHint, nodefault};
	__property Graphics::TColor ParamColor = {read=FParamColor, write=SetParamColor, default=32768};
	__property bool ParamListSorted = {read=FParamListSorted, write=FParamListSorted, default=0};
	__property Graphics::TColor SelectionColor = {read=FSelectionColor, write=SetSelectionColor, default=-16777203};
	__property Graphics::TColor SelectionFontColor = {read=FSelectionFonTColor, write=SetSelectionFonTColor, default=-16777202};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, nodefault};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, nodefault};
	__property bool ShowSelection = {read=FShowSelection, write=FShowSelection, nodefault};
	__property Visible  = {default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
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
	__property TParamListBoxClickEvent OnParamClick = {read=FOnParamClick, write=FOnParamClick};
	__property TParamListBoxClickEvent OnParamPrepare = {read=FOnParamPrepare, write=FOnParamPrepare};
	__property TParamListBoxEditEvent OnParamEditStart = {read=FOnParamEditStart, write=FOnParamEditStart};
	__property TParamListBoxEditEvent OnParamEditDone = {read=FOnParamEditDone, write=FOnParamEditDone};
	__property TParamListBoxEditEvent OnParamQuery = {read=FOnParamQuery, write=FOnParamQuery};
	__property TParamListBoxPopupEvent OnParamPopup = {read=FOnParamPopup, write=FOnParamPopup};
	__property TParamListBoxPopupEvent OnParamList = {read=FOnParamList, write=FOnParamList};
	__property TParamListBoxSelectEvent OnParamSelect = {read=FOnParamSelect, write=FOnParamSelect};
	__property TParamListBoxChangedEvent OnParamChanged = {read=FOnParamChanged, write=FOnParamChanged};
	__property TParamListBoxHintEvent OnParamHint = {read=FOnParamHint, write=FOnParamHint};
	__property TParamListBoxSelectEvent OnParamEnter = {read=FOnParamEnter, write=FOnParamEnter};
	__property TParamListBoxSelectEvent OnParamExit = {read=FOnParamExit, write=FOnParamExit};
	__property TParamCustomEditEvent OnParamCustomEdit = {read=FOnParamCustomEdit, write=FOnParamCustomEdit};
	__property TParamItemControlEvent OnControlClick = {read=FOnControlClick, write=FOnControlClick};
	__property TParamControlHintEvent OnControlHint = {read=FOnControlHint, write=FOnControlHint};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TParamListBox(HWND ParentWindow) : Stdctrls::TCustomListBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x3;
static const Shortint BLD_VER = 0x4;

}	/* namespace Paramlistbox */
using namespace Paramlistbox;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Paramlistbox
