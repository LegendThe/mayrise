// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Paramchklist.pas' rev: 11.00

#ifndef ParamchklistHPP
#define ParamchklistHPP

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
#include <Dialogs.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Spin.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Parhtml.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Parxpvs.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Paramchklist
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TParamClickEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString &value);

typedef void __fastcall (__closure *TParamPopupEvent)(System::TObject* Sender, int idx, AnsiString href, Classes::TStringList* values, bool &DoPopup);

typedef void __fastcall (__closure *TParamSelectEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString value);

typedef void __fastcall (__closure *TParamChangedEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString oldvalue, AnsiString newvalue);

typedef void __fastcall (__closure *TParamHintEvent)(System::TObject* Sender, AnsiString href, AnsiString &hintvalue, bool &showhint);

typedef void __fastcall (__closure *TParamCustomEditEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString value, AnsiString props, const Types::TRect &EditRect);

typedef void __fastcall (__closure *TParamListBoxEditEvent)(System::TObject* Sender, int idx, AnsiString href, AnsiString &value);

typedef void __fastcall (__closure *TParamItemControlEvent)(System::TObject* Sender, int X, int Y, int Item, AnsiString ControlID, AnsiString ControlType, AnsiString ControlValue);

typedef void __fastcall (__closure *TParamControlHintEvent)(System::TObject* Sender, AnsiString ControlID, AnsiString &Hint, bool &CanShow);

class DELPHICLASS TParamCheckList;
class PASCALIMPLEMENTATION TParamCheckList : public Stdctrls::TCustomListBox 
{
	typedef Stdctrls::TCustomListBox inherited;
	
private:
	AnsiString FOldParam;
	Controls::TCursor FOldCursor;
	Graphics::TColor FParamColor;
	bool FAllowGrayed;
	bool FDuplicates;
	bool FFlat;
	int FFocusLink;
	int FFocusItem;
	int FNumHyperLinks;
	int FStandardItemHeight;
	Classes::TNotifyEvent FOnCheckClick;
	TParamClickEvent FOnParamClick;
	TParamPopupEvent FOnParamPopup;
	TParamPopupEvent FOnParamList;
	TParamSelectEvent FOnParamSelect;
	TParamChangedEvent FOnParamChanged;
	TParamSelectEvent FOnParamExit;
	TParamSelectEvent FOnParamEnter;
	TParamHintEvent FOnParamHint;
	Classes::TList* FSaveStates;
	bool FShowSelection;
	Classes::TStringList* FDuplicateList;
	bool FHover;
	int FHoverIdx;
	int FHoverHyperLink;
	Graphics::TColor FHoverColor;
	Graphics::TColor FHoverFontColor;
	#pragma pack(push,1)
	Types::TRect FCurrHoverRect;
	#pragma pack(pop)
	Menus::TPopupMenu* FParamPopup;
	Controls::TImageList* FImages;
	Parhtml::TPopupListBox* FParamList;
	Parhtml::TPopupDatePicker* FParamDatePicker;
	Parhtml::TPopupSpinEdit* FParamSpinEdit;
	Parhtml::TPopupEdit* FParamEdit;
	Parhtml::TPopupMaskEdit* FParamMaskEdit;
	Graphics::TColor FShadowColor;
	int FShadowOffset;
	int FUpdateCount;
	int FUpdateIndex;
	bool FParamHint;
	TParamClickEvent FOnParamPrepare;
	bool FParamListSorted;
	Picturecontainer::TPictureContainer* FContainer;
	Picturecontainer::THTMLPictureCache* FImageCache;
	bool FMouseDown;
	AnsiString FCurrCtrlID;
	#pragma pack(push,1)
	Types::TRect FCurrCtrlRect;
	#pragma pack(pop)
	#pragma pack(push,1)
	Types::TRect FCurrCtrlDown;
	#pragma pack(pop)
	TParamItemControlEvent FOnControlClick;
	TParamControlHintEvent FOnControlHint;
	bool FEditAutoSize;
	int FLineSpacing;
	TParamListBoxEditEvent FOnParamEditStart;
	TParamListBoxEditEvent FOnParamEditDone;
	AnsiString FEmptyParam;
	AnsiString FOldAnchor;
	TParamListBoxEditEvent FOnParamQuery;
	Graphics::TColor FSelectionColor;
	Graphics::TColor FSelectionFontColor;
	AnsiString FEditValue;
	#pragma pack(push,1)
	Types::TPoint FEditPos;
	#pragma pack(pop)
	bool FIsEditing;
	TParamCustomEditEvent FOnParamCustomEdit;
	bool FAdvanceOnReturn;
	bool FWordWrap;
	Contnrs::TObjectList* WrapperList;
	void __fastcall ResetItemHeight(void);
	void __fastcall DrawCheck(const Types::TRect &R, Stdctrls::TCheckBoxState AState, bool AEnabled);
	void __fastcall SetChecked(int Index, bool Checked);
	bool __fastcall GetChecked(int Index);
	void __fastcall SetState(int Index, Stdctrls::TCheckBoxState AState);
	Stdctrls::TCheckBoxState __fastcall GetState(int Index);
	void __fastcall SetIndent(int Index, int AIndent);
	int __fastcall GetIndent(int Index);
	void __fastcall ToggleClickCheck(int Index);
	void __fastcall InvalidateCheck(int Index);
	void __fastcall InvalidateItem(int Index);
	System::TObject* __fastcall CreateWrapper(int Index);
	System::TObject* __fastcall ExtractWrapper(int Index);
	System::TObject* __fastcall GetWrapper(int Index);
	bool __fastcall HaveWrapper(int Index);
	void __fastcall SetFlat(bool Value);
	void __fastcall SetDuplicates(bool Value);
	HIDESBASE MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TWMNoParams &Msg);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMVScroll(Messages::TMessage &Message);
	bool __fastcall GetItemEnabled(int Index);
	void __fastcall SetItemEnabled(int Index, const bool Value);
	bool __fastcall GetComment(int Index);
	void __fastcall SetComment(int Index, bool AComment);
	int __fastcall GetSelectCount(void);
	HIDESBASE AnsiString __fastcall GetSelected(int Index);
	void __fastcall QuickSortItems(int left, int right);
	AnsiString __fastcall IsParam(int x, int y, bool GetFocusRect, int &idx, Types::TRect &hoverrect, Types::TRect &ctrlrect, AnsiString &CID, AnsiString &CT, AnsiString &CV);
	void __fastcall SetParamColor(const Graphics::TColor Value);
	AnsiString __fastcall GetParam(AnsiString href);
	void __fastcall SetParam(AnsiString href, const AnsiString Value);
	AnsiString __fastcall GetItemParam(int idx, AnsiString href);
	void __fastcall SetItemParam(int idx, AnsiString href, const AnsiString Value);
	void __fastcall HandlePopup(System::TObject* Sender);
	void __fastcall SetHover(const bool Value);
	void __fastcall SetImageList(const Controls::TImageList* Value);
	int __fastcall GetItemIndent(const int Index);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetShadowOffset(const int Value);
	int __fastcall GetCheckWidth(void);
	void __fastcall SetParamHint(const bool Value);
	void __fastcall UpdateParam(AnsiString href, AnsiString value);
	void __fastcall PrepareParam(AnsiString Param, AnsiString &Value);
	AnsiString __fastcall HTMLPrep(AnsiString s);
	AnsiString __fastcall InvHTMLPrep(AnsiString s);
	int __fastcall GetParamRefCount(void);
	AnsiString __fastcall GetParamRefs(int Index);
	int __fastcall GetParamRefIndex(AnsiString href);
	void __fastcall ControlUpdate(System::TObject* Sender, AnsiString Param, AnsiString Text);
	void __fastcall AdvanceEdit(System::TObject* Sender);
	void __fastcall FreeWrapper(System::TObject* Wrapper);
	void __fastcall SetLineSpacing(const int Value);
	void __fastcall SetSelectionColor(const Graphics::TColor Value);
	void __fastcall SetSelectionFontColor(const Graphics::TColor Value);
	int __fastcall GetParamIndex(AnsiString href);
	Types::TRect __fastcall GetParamRect(AnsiString href);
	void __fastcall StartParamEdit(AnsiString param, int Index, const Types::TRect &hr);
	void __fastcall StartParamDir(int idx, AnsiString param, AnsiString curdir, const Types::TRect &hr);
	int __fastcall GetParamItemIndex(int Index, AnsiString href);
	AnsiString __fastcall GetParamItemRefs(int Item, int Index);
	int __fastcall GetParamItemRefCount(int Item);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	DYNAMIC int __fastcall InternalGetItemData(int Index);
	DYNAMIC void __fastcall InternalSetItemData(int Index, int AData);
	DYNAMIC void __fastcall SetItemData(int Index, int AData);
	DYNAMIC int __fastcall GetItemData(int Index);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall ResetContent(void);
	DYNAMIC void __fastcall DeleteString(int Index);
	DYNAMIC void __fastcall ClickCheck(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	
public:
	__fastcall virtual TParamCheckList(Classes::TComponent* AOwner);
	__fastcall virtual ~TParamCheckList(void);
	__property bool Checked[int Index] = {read=GetChecked, write=SetChecked};
	__property bool ItemEnabled[int Index] = {read=GetItemEnabled, write=SetItemEnabled};
	__property Stdctrls::TCheckBoxState State[int Index] = {read=GetState, write=SetState};
	__property int Indent[int Index] = {read=GetIndent, write=SetIndent};
	__property bool Comment[int Index] = {read=GetComment, write=SetComment};
	__property AnsiString Selected[int Index] = {read=GetSelected};
	__property int SelectCount = {read=GetSelectCount, nodefault};
	void __fastcall SortAllComments(void);
	void __fastcall SortComment(int Index);
	void __fastcall EditParam(AnsiString href);
	__property Parhtml::TPopupListBox* ParamListBox = {read=FParamList};
	__property AnsiString Parameter[AnsiString href] = {read=GetParam, write=SetParam};
	__property AnsiString ItemParameter[int idx][AnsiString href] = {read=GetItemParam, write=SetItemParam};
	__property int ParamRefCount = {read=GetParamRefCount, nodefault};
	__property AnsiString ParamRefs[int Index] = {read=GetParamRefs};
	__property int ParamItemRefCount[int Item] = {read=GetParamItemRefCount};
	__property AnsiString ParamItemRefs[int Item][int Index] = {read=GetParamItemRefs};
	__property int ParamRefIndex[AnsiString href] = {read=GetParamRefIndex};
	__property int ParamItemIndex[int Index][AnsiString href] = {read=GetParamItemIndex};
	__property int ParamIndex[AnsiString href] = {read=GetParamIndex};
	bool __fastcall GetParamInfo(int Index, AnsiString HRef, AnsiString &AValue, AnsiString &AClass, AnsiString &AProp, AnsiString &AHint);
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	__property Parhtml::TPopupDatePicker* DateTimePicker = {read=FParamDatePicker};
	__property Parhtml::TPopupSpinEdit* SpinEdit = {read=FParamSpinEdit};
	__property Parhtml::TPopupEdit* Editor = {read=FParamEdit};
	__property Parhtml::TPopupListBox* ListBox = {read=FParamList};
	
__published:
	__property bool AdvanceOnReturn = {read=FAdvanceOnReturn, write=FAdvanceOnReturn, nodefault};
	__property Align  = {default=0};
	__property bool AllowGrayed = {read=FAllowGrayed, write=FAllowGrayed, default=0};
	__property bool EditAutoSize = {read=FEditAutoSize, write=FEditAutoSize, default=0};
	__property AnsiString EmptyParam = {read=FEmptyParam, write=FEmptyParam};
	__property bool Hover = {read=FHover, write=SetHover, default=1};
	__property Graphics::TColor HoverColor = {read=FHoverColor, write=FHoverColor, default=32768};
	__property Graphics::TColor HoverFontColor = {read=FHoverFontColor, write=FHoverFontColor, default=16777215};
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=0};
	__property Graphics::TColor ParamColor = {read=FParamColor, write=SetParamColor, default=32768};
	__property bool ParamHint = {read=FParamHint, write=SetParamHint, nodefault};
	__property bool ParamListSorted = {read=FParamListSorted, write=FParamListSorted, nodefault};
	__property Graphics::TColor SelectionColor = {read=FSelectionColor, write=SetSelectionColor, nodefault};
	__property Graphics::TColor SelectionFontColor = {read=FSelectionFontColor, write=SetSelectionFontColor, nodefault};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, nodefault};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, nodefault};
	__property bool ShowSelection = {read=FShowSelection, write=FShowSelection, nodefault};
	__property Controls::TImageList* Images = {read=FImages, write=SetImageList};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property DragKind  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property OnContextPopup ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property bool Duplicates = {read=FDuplicates, write=SetDuplicates, nodefault};
	__property Enabled  = {default=1};
	__property bool Flat = {read=FFlat, write=SetFlat, default=1};
	__property Font ;
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property IntegralHeight  = {default=0};
	__property ItemHeight ;
	__property Items ;
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Sorted  = {default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property TabWidth  = {default=0};
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
	__property OnMeasureItem ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
	__property Classes::TNotifyEvent OnCheckClick = {read=FOnCheckClick, write=FOnCheckClick};
	__property TParamItemControlEvent OnControlClick = {read=FOnControlClick, write=FOnControlClick};
	__property TParamControlHintEvent OnControlHint = {read=FOnControlHint, write=FOnControlHint};
	__property TParamClickEvent OnParamClick = {read=FOnParamClick, write=FOnParamClick};
	__property TParamClickEvent OnParamPrepare = {read=FOnParamPrepare, write=FOnParamPrepare};
	__property TParamPopupEvent OnParamPopup = {read=FOnParamPopup, write=FOnParamPopup};
	__property TParamPopupEvent OnParamList = {read=FOnParamList, write=FOnParamList};
	__property TParamSelectEvent OnParamSelect = {read=FOnParamSelect, write=FOnParamSelect};
	__property TParamChangedEvent OnParamChanged = {read=FOnParamChanged, write=FOnParamChanged};
	__property TParamHintEvent OnParamHint = {read=FOnParamHint, write=FOnParamHint};
	__property TParamSelectEvent OnParamEnter = {read=FOnParamEnter, write=FOnParamEnter};
	__property TParamSelectEvent OnParamExit = {read=FOnParamExit, write=FOnParamExit};
	__property TParamListBoxEditEvent OnParamEditStart = {read=FOnParamEditStart, write=FOnParamEditStart};
	__property TParamListBoxEditEvent OnParamEditDone = {read=FOnParamEditDone, write=FOnParamEditDone};
	__property TParamCustomEditEvent OnParamCustomEdit = {read=FOnParamCustomEdit, write=FOnParamCustomEdit};
	__property TParamListBoxEditEvent OnParamQuery = {read=FOnParamQuery, write=FOnParamQuery};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property bool WordWrap = {read=FWordWrap, write=FWordWrap, default=1};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TParamCheckList(HWND ParentWindow) : Stdctrls::TCustomListBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x3;
static const Shortint BLD_VER = 0x2;

}	/* namespace Paramchklist */
using namespace Paramchklist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Paramchklist
