// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Paramtreeview.pas' rev: 11.00

#ifndef ParamtreeviewHPP
#define ParamtreeviewHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Spin.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Parhtml.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Paramtreeview
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TParamTreeViewClickEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString &value);

typedef void __fastcall (__closure *TParamTreeViewPopupEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, Classes::TStringList* values, bool &DoPopup);

typedef void __fastcall (__closure *TParamTreeViewSelectEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString value);

typedef void __fastcall (__closure *TParamTreeViewChangedEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString oldvalue, AnsiString newvalue);

typedef void __fastcall (__closure *TParamTreeViewHintEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString &hintvalue, bool &showhint);

typedef void __fastcall (__closure *TParamCustomEditEvent)(System::TObject* Sender, Comctrls::TTreeNode* Node, AnsiString href, AnsiString value, AnsiString props, const Types::TRect &EditRect);

typedef void __fastcall (__closure *TParamTreeviewCustomShowEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString &value, const Types::TRect &ARect);

typedef void __fastcall (__closure *TParamTreeViewEditEvent)(System::TObject* Sender, Comctrls::TTreeNode* ANode, AnsiString href, AnsiString &value);

class DELPHICLASS TParamTreeview;
class PASCALIMPLEMENTATION TParamTreeview : public Comctrls::TCustomTreeView 
{
	typedef Comctrls::TCustomTreeView inherited;
	
private:
	AnsiString FVersion;
	int FIndent;
	int FOldCursor;
	int FOldScrollPos;
	Graphics::TColor FParamColor;
	Graphics::TColor FSelectionColor;
	Graphics::TColor FSelectionFontColor;
	int FItemHeight;
	Controls::TImageList* FImages;
	Menus::TPopupMenu* FParamPopup;
	Parhtml::TPopupListBox* FParamList;
	Parhtml::TPopupDatePicker* FParamDatePicker;
	Parhtml::TPopupSpinEdit* FParamSpinEdit;
	Parhtml::TPopupEdit* FParamEdit;
	Parhtml::TPopupMaskEdit* FParamMaskEdit;
	AnsiString FOldParam;
	TParamTreeViewChangedEvent FOnParamChanged;
	TParamTreeViewClickEvent FOnParamClick;
	TParamTreeViewHintEvent FOnParamHint;
	TParamTreeViewPopupEvent FOnParamPopup;
	TParamTreeViewPopupEvent FOnParamList;
	TParamTreeViewSelectEvent FOnParamSelect;
	TParamTreeViewSelectEvent FOnParamEnter;
	TParamTreeViewSelectEvent FOnParamExit;
	bool FParamListSorted;
	bool FShowSelection;
	TParamTreeViewClickEvent FOnParamPrepare;
	bool FParamHint;
	Graphics::TColor FShadowColor;
	int FShadowOffset;
	int FUpdateCount;
	bool FWordWrap;
	bool FMouseDown;
	Picturecontainer::TPictureContainer* FContainer;
	AnsiString FCurrCtrlID;
	#pragma pack(push,1)
	Types::TRect FCurrCtrlRect;
	#pragma pack(pop)
	#pragma pack(push,1)
	Types::TRect FCurrCtrlDown;
	#pragma pack(pop)
	Comctrls::TTreeNode* FHoverNode;
	int FHoverHyperLink;
	#pragma pack(push,1)
	Types::TRect FCurrHoverRect;
	#pragma pack(pop)
	Picturecontainer::THTMLPictureCache* FImageCache;
	bool FHover;
	Graphics::TColor FHoverColor;
	Graphics::TColor FHoverFontColor;
	bool FEditAutoSize;
	int FLineSpacing;
	TParamTreeViewEditEvent FOnParamEditStart;
	TParamTreeViewEditEvent FOnParamEditDone;
	AnsiString FEmptyParam;
	AnsiString FOldAnchor;
	int FOldIndex;
	int FFocusLink;
	int FNumHyperLinks;
	AnsiString FEditValue;
	#pragma pack(push,1)
	Types::TPoint FEditPos;
	#pragma pack(pop)
	bool FIsEditing;
	TParamTreeViewEditEvent FOnParamQuery;
	TParamCustomEditEvent FOnParamCustomEdit;
	bool FAdvanceOnReturn;
	bool FStopMouseProcessing;
	bool FShowFocusBorder;
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &message);
	MESSAGE void __fastcall CMWantSpecialKey(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall CNNotify(Messages::TWMNotify &message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &message);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &message);
	HIDESBASE MESSAGE void __fastcall WMMouseMove(Messages::TWMMouse &message);
	HIDESBASE MESSAGE void __fastcall WMHScroll(Messages::TMessage &message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TMessage &message);
	int __fastcall GetItemHeight(void);
	void __fastcall SetItemHeight(const int Value);
	void __fastcall SetSelectionColor(const Graphics::TColor Value);
	void __fastcall SetSelectionFontColor(const Graphics::TColor Value);
	void __fastcall SetParamColor(const Graphics::TColor Value);
	HIDESBASE void __fastcall SetImages(const Controls::TImageList* Value);
	void __fastcall SetShowSelection(const bool Value);
	AnsiString __fastcall GetNodeParameter(Comctrls::TTreeNode* Node, AnsiString HRef);
	void __fastcall SetNodeParameter(Comctrls::TTreeNode* Node, AnsiString HRef, const AnsiString Value);
	AnsiString __fastcall IsParam(int x, int y, bool GetFocusRect, Comctrls::TTreeNode* &Node, Types::TRect &hr, Types::TRect &cr, AnsiString &CID, AnsiString &CT, AnsiString &CV);
	AnsiString __fastcall HTMLPrep(AnsiString s);
	AnsiString __fastcall InvHTMLPrep(AnsiString s);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetShadowOffset(const int Value);
	void __fastcall SetWordWrap(const bool Value);
	void __fastcall SetLineSpacing(const int Value);
	int __fastcall GetParamItemRefCount(int Item);
	int __fastcall GetParamNodeRefCount(Comctrls::TTreeNode* Node);
	AnsiString __fastcall GetParamItemRefs(int Item, int Index);
	int __fastcall GetParamRefCount(void);
	AnsiString __fastcall GetParamRefs(int Index);
	void __fastcall StartParamEdit(AnsiString param, Comctrls::TTreeNode* Node, const Types::TRect &hr);
	void __fastcall StartParamDir(Comctrls::TTreeNode* Node, AnsiString param, AnsiString curdir, const Types::TRect &hr);
	Types::TRect __fastcall GetParamRect(AnsiString href);
	int __fastcall GetParamNodeIndex(Comctrls::TTreeNode* Node, AnsiString href);
	Comctrls::TTreeNode* __fastcall GetParamRefNode(AnsiString href);
	AnsiString __fastcall GetParameter(AnsiString href);
	void __fastcall SetParameter(AnsiString href, const AnsiString Value);
	void __fastcall SetHover(const bool Value);
	int __fastcall GetParamIndex(AnsiString href);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall HandlePopup(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall UpdateParam(AnsiString Param, AnsiString Value);
	void __fastcall PrepareParam(AnsiString Param, AnsiString &Value);
	void __fastcall ControlUpdate(System::TObject* Sender, AnsiString Param, AnsiString Text);
	void __fastcall AdvanceEdit(System::TObject* Sender);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall Change(Comctrls::TTreeNode* Node);
	DYNAMIC void __fastcall Expand(Comctrls::TTreeNode* Node);
	
public:
	__fastcall virtual TParamTreeview(Classes::TComponent* AOwner);
	__fastcall virtual ~TParamTreeview(void);
	virtual void __fastcall BeginUpdate(void);
	virtual void __fastcall EndUpdate(void);
	__property AnsiString NodeParameter[Comctrls::TTreeNode* Node][AnsiString HRef] = {read=GetNodeParameter, write=SetNodeParameter};
	__property int ParamRefCount = {read=GetParamRefCount, nodefault};
	__property AnsiString ParamRefs[int Index] = {read=GetParamRefs};
	__property Comctrls::TTreeNode* ParamRefNode[AnsiString href] = {read=GetParamRefNode};
	__property int ParamNodeRefCount[int Item] = {read=GetParamItemRefCount};
	__property AnsiString ParamNodeRefs[int Item][int Index] = {read=GetParamItemRefs};
	__property int ParamNodeIndex[Comctrls::TTreeNode* Node][AnsiString href] = {read=GetParamNodeIndex};
	__property int ParamIndex[AnsiString href] = {read=GetParamIndex};
	__property AnsiString Parameter[AnsiString href] = {read=GetParameter, write=SetParameter};
	void __fastcall EditParam(AnsiString href);
	bool __fastcall GetParamInfo(Comctrls::TTreeNode* Node, AnsiString HRef, AnsiString &AValue, AnsiString &AClass, AnsiString &AProp, AnsiString &AHint);
	__property Parhtml::TPopupDatePicker* DateTimePicker = {read=FParamDatePicker};
	__property Parhtml::TPopupSpinEdit* SpinEdit = {read=FParamSpinEdit};
	__property Parhtml::TPopupEdit* Editor = {read=FParamEdit};
	__property Parhtml::TPopupMaskEdit* MaskEditor = {read=FParamMaskEdit};
	__property Parhtml::TPopupListBox* ListBox = {read=FParamList};
	__property bool StopMouseProcessing = {read=FStopMouseProcessing, write=FStopMouseProcessing, nodefault};
	
__published:
	__property bool AdvanceOnReturn = {read=FAdvanceOnReturn, write=FAdvanceOnReturn, nodefault};
	__property bool EditAutoSize = {read=FEditAutoSize, write=FEditAutoSize, nodefault};
	__property AnsiString EmptyParam = {read=FEmptyParam, write=FEmptyParam};
	__property Controls::TImageList* HTMLImages = {read=FImages, write=SetImages};
	__property bool Hover = {read=FHover, write=SetHover, default=1};
	__property Graphics::TColor HoverColor = {read=FHoverColor, write=FHoverColor, default=32768};
	__property Graphics::TColor HoverFontColor = {read=FHoverFontColor, write=FHoverFontColor, default=16777215};
	__property int ItemHeight = {read=GetItemHeight, write=SetItemHeight, nodefault};
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=0};
	__property Graphics::TColor SelectionColor = {read=FSelectionColor, write=SetSelectionColor, nodefault};
	__property Graphics::TColor SelectionFontColor = {read=FSelectionFontColor, write=SetSelectionFontColor, nodefault};
	__property bool ShowSelection = {read=FShowSelection, write=SetShowSelection, default=0};
	__property Graphics::TColor ParamColor = {read=FParamColor, write=SetParamColor, default=32768};
	__property bool ParamHint = {read=FParamHint, write=FParamHint, nodefault};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, nodefault};
	__property int ShadowOffset = {read=FShadowOffset, write=SetShadowOffset, nodefault};
	__property bool ShowFocusBorder = {read=FShowFocusBorder, write=FShowFocusBorder, default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, nodefault};
	__property TParamTreeViewClickEvent OnParamPrepare = {read=FOnParamPrepare, write=FOnParamPrepare};
	__property TParamTreeViewClickEvent OnParamClick = {read=FOnParamClick, write=FOnParamClick};
	__property TParamTreeViewPopupEvent OnParamPopup = {read=FOnParamPopup, write=FOnParamPopup};
	__property TParamTreeViewPopupEvent OnParamList = {read=FOnParamList, write=FOnParamList};
	__property TParamTreeViewSelectEvent OnParamSelect = {read=FOnParamSelect, write=FOnParamSelect};
	__property TParamTreeViewChangedEvent OnParamChanged = {read=FOnParamChanged, write=FOnParamChanged};
	__property TParamTreeViewHintEvent OnParamHint = {read=FOnParamHint, write=FOnParamHint};
	__property TParamTreeViewSelectEvent OnParamEnter = {read=FOnParamEnter, write=FOnParamEnter};
	__property TParamTreeViewSelectEvent OnParamExit = {read=FOnParamExit, write=FOnParamExit};
	__property TParamTreeViewEditEvent OnParamEditStart = {read=FOnParamEditStart, write=FOnParamEditStart};
	__property TParamTreeViewEditEvent OnParamEditDone = {read=FOnParamEditDone, write=FOnParamEditDone};
	__property TParamCustomEditEvent OnParamCustomEdit = {read=FOnParamCustomEdit, write=FOnParamCustomEdit};
	__property TParamTreeViewEditEvent OnParamQuery = {read=FOnParamQuery, write=FOnParamQuery};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property AutoExpand  = {default=0};
	__property BiDiMode ;
	__property BorderWidth  = {default=0};
	__property ChangeDelay  = {default=0};
	__property Constraints ;
	__property DragKind  = {default=0};
	__property HotTrack  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property RowSelect  = {default=0};
	__property OnCustomDraw ;
	__property OnCustomDrawItem ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property Indent ;
	__property Items ;
	__property bool ParamListSorted = {read=FParamListSorted, write=FParamListSorted, nodefault};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property RightClickSelect  = {default=0};
	__property ShowButtons  = {default=1};
	__property ShowHint ;
	__property ShowLines  = {default=1};
	__property ShowRoot  = {default=1};
	__property SortType  = {default=0};
	__property StateImages ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property ToolTips  = {default=1};
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnChanging ;
	__property OnClick ;
	__property OnCollapsing ;
	__property OnCollapsed ;
	__property OnCompare ;
	__property OnDblClick ;
	__property OnDeletion ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEdited ;
	__property OnEditing ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnExpanding ;
	__property OnExpanded ;
	__property OnGetImageIndex ;
	__property OnGetSelectedIndex ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TParamTreeview(HWND ParentWindow) : Comctrls::TCustomTreeView(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x3;
static const Shortint BLD_VER = 0x5;

}	/* namespace Paramtreeview */
using namespace Paramtreeview;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Paramtreeview
