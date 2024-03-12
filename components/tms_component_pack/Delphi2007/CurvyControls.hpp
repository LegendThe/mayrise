// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Curvycontrols.pas' rev: 11.00

#ifndef CurvycontrolsHPP
#define CurvycontrolsHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Uxtheme.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Curvycontrols
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TCurvyPanel;
class PASCALIMPLEMENTATION TCurvyPanel : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	int FRounding;
	Graphics::TColor FColor;
	Graphics::TColor FShadowColor;
	Graphics::TColor FBorderColor;
	int FIndentRight;
	int FIndentLeft;
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	void __fastcall SetRounding(const int Value);
	HIDESBASE void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	
protected:
	virtual void __fastcall ColorChanged(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Paint(void);
	__property int IndentLeft = {read=FIndentLeft, write=FIndentLeft, nodefault};
	__property int IndentRight = {read=FIndentRight, write=FIndentRight, nodefault};
	
public:
	__fastcall virtual TCurvyPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyPanel(void);
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=FShadowColor, nodefault};
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=8421504};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-16777211};
	__property Constraints ;
	__property int Rounding = {read=FRounding, write=SetRounding, default=8};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnAlignPosition ;
	__property OnMouseActivate ;
	__property OnMouseLeave ;
	__property OnMouseEnter ;
	__property OnMouseMove ;
	__property OnDockDrop ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnUnDock ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnCanResize ;
	__property OnContextPopup ;
	__property OnResize ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCurvyPanel(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TControlPosition { cpLeftInControl, cpRightInControl, cpLeft, cpRight };
#pragma option pop

#pragma option push -b-
enum TControlState { csNormal, csHover, csDown };
#pragma option pop

class DELPHICLASS TCurvyControl;
class PASCALIMPLEMENTATION TCurvyControl : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	int FImageIndex;
	int FImageIndexHover;
	int FImageIndexDown;
	Advgdip::TAdvGDIPPicture* FPicture;
	Advgdip::TAdvGDIPPicture* FPictureHover;
	Advgdip::TAdvGDIPPicture* FPictureDown;
	AnsiString FHint;
	bool FDropDown;
	Menus::TPopupMenu* FPopupMenu;
	TControlPosition FPosition;
	TControlState FState;
	int __fastcall GetImageIndex(void);
	int __fastcall GetImageIndexDown(void);
	int __fastcall GetImageIndexHover(void);
	Advgdip::TAdvGDIPPicture* __fastcall GetPicture(void);
	Advgdip::TAdvGDIPPicture* __fastcall GetPictureHover(void);
	Advgdip::TAdvGDIPPicture* __fastcall GetPicureDown(void);
	void __fastcall SetDropDown(const bool Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetImageIndexDown(const int Value);
	void __fastcall SetImageIndexHover(const int Value);
	void __fastcall SetPicture(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetPictureDown(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetPictureHover(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetPosition(const TControlPosition Value);
	HIDESBASE void __fastcall Changed(void);
	void __fastcall PictureChanged(System::TObject* Sender);
	void __fastcall SetState(const TControlState Value);
	
protected:
	__property TControlState State = {read=FState, write=SetState, nodefault};
	
public:
	__fastcall virtual TCurvyControl(Classes::TCollection* Collection);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall virtual ~TCurvyControl(void);
	
__published:
	__property bool DropDown = {read=FDropDown, write=SetDropDown, default=0};
	__property AnsiString Hint = {read=FHint, write=FHint};
	__property int ImageIndex = {read=GetImageIndex, write=SetImageIndex, default=-1};
	__property int ImageIndexHover = {read=GetImageIndexHover, write=SetImageIndexHover, default=-1};
	__property int ImageIndexDown = {read=GetImageIndexDown, write=SetImageIndexDown, default=-1};
	__property Advgdip::TAdvGDIPPicture* Picture = {read=GetPicture, write=SetPicture};
	__property Advgdip::TAdvGDIPPicture* PictureHover = {read=GetPictureHover, write=SetPictureHover};
	__property Advgdip::TAdvGDIPPicture* PictureDown = {read=GetPicureDown, write=SetPictureDown};
	__property TControlPosition Position = {read=FPosition, write=SetPosition, default=1};
	__property Menus::TPopupMenu* PopupMenu = {read=FPopupMenu, write=FPopupMenu};
};


class DELPHICLASS TCurvyControls;
class PASCALIMPLEMENTATION TCurvyControls : public Classes::TOwnedCollection 
{
	typedef Classes::TOwnedCollection inherited;
	
public:
	TCurvyControl* operator[](int Index) { return Items[Index]; }
	
private:
	int FLeftSize;
	int FLeftControlSize;
	int FRightSize;
	int FRightControlSize;
	int FImageListImageWidth;
	int FImageListImageHeight;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TCurvyControl* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TCurvyControl* Value);
	
protected:
	void __fastcall GetSizes(void);
	Types::TPoint __fastcall GetControlSize(int index);
	__property int LeftSize = {read=FLeftSize, nodefault};
	__property int LeftControlSize = {read=FLeftControlSize, nodefault};
	__property int RightSize = {read=FRightSize, nodefault};
	__property int RightControlSize = {read=FRightControlSize, nodefault};
	__property int ImageListImageWidth = {read=FImageListImageWidth, write=FImageListImageWidth, nodefault};
	__property int ImageListImageHeight = {read=FImageListImageHeight, write=FImageListImageHeight, nodefault};
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	__fastcall TCurvyControls(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyControls(void);
	HIDESBASE TCurvyControl* __fastcall Add(void);
	HIDESBASE TCurvyControl* __fastcall Insert(int Index);
	__property TCurvyControl* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


typedef void __fastcall (__closure *TControlClickEvent)(System::TObject* Sender, int Index);

class DELPHICLASS TCurvyControlPanel;
class PASCALIMPLEMENTATION TCurvyControlPanel : public TCurvyPanel 
{
	typedef TCurvyPanel inherited;
	
private:
	TCurvyControls* FCurvyControls;
	Imglist::TCustomImageList* FImages;
	TControlClickEvent FOnControlClick;
	void __fastcall SetCurvyControls(const TCurvyControls* Value);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	
protected:
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Forms::TCMHintShow &Msg);
	void __fastcall ControlsChanged(System::TObject* Sender);
	void __fastcall PaintControl(int x, int y, int index);
	int __fastcall HandleControls(int x, int y, int &ctrlx, bool dopaint);
	int __fastcall ControlAtXY(int x, int y);
	virtual void __fastcall DoControlClick(int index);
	void __fastcall UpdateControl(void);
	virtual void __fastcall UpdateEditControl(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TCurvyControlPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyControlPanel(void);
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TCurvyControls* Controls = {read=FCurvyControls, write=SetCurvyControls};
	__property TControlClickEvent OnControlClick = {read=FOnControlClick, write=FOnControlClick};
	
__published:
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCurvyControlPanel(HWND ParentWindow) : TCurvyPanel(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum THideEmptyText { heOnText, heOnFocus };
#pragma option pop

class DELPHICLASS TEmptyEdit;
class PASCALIMPLEMENTATION TEmptyEdit : public Stdctrls::TEdit 
{
	typedef Stdctrls::TEdit inherited;
	
private:
	AnsiString FEmptyText;
	THideEmptyText FHideEmptyText;
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Msg);
	void __fastcall SetEmptyText(const AnsiString Value);
	
public:
	__property AnsiString EmptyText = {read=FEmptyText, write=SetEmptyText};
	__property THideEmptyText HideEmptyText = {read=FHideEmptyText, write=FHideEmptyText, default=0};
public:
	#pragma option push -w-inl
	/* TCustomEdit.Create */ inline __fastcall virtual TEmptyEdit(Classes::TComponent* AOwner) : Stdctrls::TEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TEmptyEdit(HWND ParentWindow) : Stdctrls::TEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TEmptyEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCurvyEdit;
class PASCALIMPLEMENTATION TCurvyEdit : public TCurvyControlPanel 
{
	typedef TCurvyControlPanel inherited;
	
private:
	TEmptyEdit* FEdit;
	Classes::TNotifyEvent FOnClick;
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnDblClick;
	Classes::TNotifyEvent FOnEnter;
	Classes::TNotifyEvent FOnExit;
	Controls::TKeyEvent FOnKeyDown;
	Controls::TKeyPressEvent FOnKeyPress;
	Controls::TKeyEvent FOnKeyUp;
	Controls::TMouseEvent FOnMouseDown;
	Controls::TMouseMoveEvent FOnMouseMove;
	Controls::TMouseEvent FOnMouseUp;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	HIDESBASE AnsiString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const AnsiString Value);
	bool __fastcall GetAutoSelect(void);
	void __fastcall SetAutoSelect(const bool Value);
	bool __fastcall GetEnabledEx(void);
	void __fastcall SetEnabledEx(const bool Value);
	bool __fastcall GetHideSelection(void);
	int __fastcall GetMaxLength(void);
	void __fastcall SetHideSelection(const bool Value);
	void __fastcall SetMaxLength(const int Value);
	Controls::TImeMode __fastcall GetImeMode(void);
	AnsiString __fastcall GetImeName();
	void __fastcall SetImeMode(const Controls::TImeMode Value);
	void __fastcall SetImeName(const AnsiString Value);
	bool __fastcall GetOEMConvert(void);
	void __fastcall SetOEMConvert(const bool Value);
	char __fastcall GetPasswordChar(void);
	void __fastcall SetPasswordChar(const char Value);
	Menus::TPopupMenu* __fastcall GetPopupMenuEx(void);
	HIDESBASE void __fastcall SetPopupMenu(const Menus::TPopupMenu* Value);
	bool __fastcall GetReadOnly(void);
	void __fastcall SetReadOnly(const bool Value);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMParentBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TMessage &Message);
	Controls::TCursor __fastcall GetDragCursor(void);
	Controls::TDragKind __fastcall GetDragKind(void);
	Controls::TDragMode __fastcall GetDragMode(void);
	void __fastcall SetDragCursor(const Controls::TCursor Value);
	void __fastcall SetDragKind(const Controls::TDragKind Value);
	void __fastcall SetDragModeI(const Controls::TDragMode Value);
	AnsiString __fastcall GetEmptyText();
	void __fastcall SetEmptyText(const AnsiString Value);
	int __fastcall GetSelLength(void);
	int __fastcall GetSelStart(void);
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetSelStart(const int Value);
	AnsiString __fastcall GetSelText();
	void __fastcall SetSelText(const AnsiString Value);
	void __fastcall SetHideEmptyText(const THideEmptyText Value);
	THideEmptyText __fastcall GetHideEmptyText(void);
	
protected:
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall ColorChanged(void);
	void __fastcall EditClick(System::TObject* Sender);
	void __fastcall EditChange(System::TObject* Sender);
	void __fastcall EditDblClick(System::TObject* Sender);
	void __fastcall EditEnter(System::TObject* Sender);
	void __fastcall EditExit(System::TObject* Sender);
	void __fastcall EditKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall EditKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall EditKeyPress(System::TObject* Sender, char &Key);
	void __fastcall EditMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseLeave(System::TObject* Sender);
	void __fastcall EditMouseEnter(System::TObject* Sender);
	virtual void __fastcall UpdateEditControl(void);
	
public:
	__fastcall virtual TCurvyEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyEdit(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	virtual void __fastcall SetFocus(void);
	DYNAMIC bool __fastcall CanFocus(void);
	void __fastcall SelectAll(void);
	__property TEmptyEdit* Edit = {read=FEdit};
	__property int SelStart = {read=GetSelStart, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLength, write=SetSelLength, nodefault};
	__property AnsiString SelText = {read=GetSelText, write=SetSelText};
	
__published:
	__property Align  = {default=0};
	__property bool AutoSelect = {read=GetAutoSelect, write=SetAutoSelect, default=1};
	__property BiDiMode ;
	__property Controls ;
	__property Controls::TCursor DragCursor = {read=GetDragCursor, write=SetDragCursor, default=-12};
	__property Controls::TDragKind DragKind = {read=GetDragKind, write=SetDragKind, default=0};
	__property Controls::TDragMode DragMode = {read=GetDragMode, write=SetDragModeI, default=0};
	__property AnsiString EmptyText = {read=GetEmptyText, write=SetEmptyText};
	__property bool Enabled = {read=GetEnabledEx, write=SetEnabledEx, default=1};
	__property Font ;
	__property THideEmptyText HideEmptyText = {read=GetHideEmptyText, write=SetHideEmptyText, default=0};
	__property bool HideSelection = {read=GetHideSelection, write=SetHideSelection, default=1};
	__property Images ;
	__property Controls::TImeMode ImeMode = {read=GetImeMode, write=SetImeMode, default=3};
	__property AnsiString ImeName = {read=GetImeName, write=SetImeName};
	__property int MaxLength = {read=GetMaxLength, write=SetMaxLength, default=0};
	__property bool OEMConvert = {read=GetOEMConvert, write=SetOEMConvert, default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=1};
	__property ParentFont  = {default=1};
	__property char PasswordChar = {read=GetPasswordChar, write=SetPasswordChar, default=0};
	__property Menus::TPopupMenu* PopupMenu = {read=GetPopupMenuEx, write=SetPopupMenu};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property AnsiString Text = {read=GetText, write=SetText};
	__property Classes::TNotifyEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property OnControlClick ;
	__property Classes::TNotifyEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property Classes::TNotifyEvent OnEnter = {read=FOnEnter, write=FOnEnter};
	__property Classes::TNotifyEvent OnExit = {read=FOnExit, write=FOnExit};
	__property Controls::TKeyEvent OnKeyDown = {read=FOnKeyDown, write=FOnKeyDown};
	__property Controls::TKeyPressEvent OnKeyPress = {read=FOnKeyPress, write=FOnKeyPress};
	__property Controls::TKeyEvent OnKeyUp = {read=FOnKeyUp, write=FOnKeyUp};
	__property Controls::TMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property Controls::TMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property Controls::TMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCurvyEdit(HWND ParentWindow) : TCurvyControlPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TCurvyMemo;
class PASCALIMPLEMENTATION TCurvyMemo : public TCurvyPanel 
{
	typedef TCurvyPanel inherited;
	
private:
	Stdctrls::TMemo* FEdit;
	Classes::TStringList* FLines;
	Classes::TNotifyEvent FOnClick;
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnDblClick;
	Classes::TNotifyEvent FOnEnter;
	Classes::TNotifyEvent FOnExit;
	Controls::TKeyEvent FOnKeyDown;
	Controls::TKeyPressEvent FOnKeyPress;
	Controls::TKeyEvent FOnKeyUp;
	Controls::TMouseEvent FOnMouseDown;
	Controls::TMouseMoveEvent FOnMouseMove;
	Controls::TMouseEvent FOnMouseUp;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	bool FStopChange;
	bool __fastcall GetEnabledEx(void);
	void __fastcall SetEnabledEx(const bool Value);
	bool __fastcall GetHideSelection(void);
	int __fastcall GetMaxLength(void);
	void __fastcall SetHideSelection(const bool Value);
	void __fastcall SetMaxLength(const int Value);
	Controls::TImeMode __fastcall GetImeMode(void);
	AnsiString __fastcall GetImeName();
	void __fastcall SetImeMode(const Controls::TImeMode Value);
	void __fastcall SetImeName(const AnsiString Value);
	bool __fastcall GetOEMConvert(void);
	void __fastcall SetOEMConvert(const bool Value);
	Menus::TPopupMenu* __fastcall GetPopupMenuEx(void);
	HIDESBASE void __fastcall SetPopupMenu(const Menus::TPopupMenu* Value);
	bool __fastcall GetReadOnly(void);
	void __fastcall SetReadOnly(const bool Value);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMParentBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TMessage &Message);
	Stdctrls::TScrollStyle __fastcall GetScrollStyle(void);
	void __fastcall SetScrollStyle(const Stdctrls::TScrollStyle Value);
	Controls::TCursor __fastcall GetDragCursor(void);
	Controls::TDragKind __fastcall GetDragKind(void);
	Controls::TDragMode __fastcall GetDragMode(void);
	void __fastcall SetDragCursor(const Controls::TCursor Value);
	void __fastcall SetDragKind(const Controls::TDragKind Value);
	void __fastcall SetDragModeI(const Controls::TDragMode Value);
	Classes::TStrings* __fastcall GetLines(void);
	void __fastcall SetLines(const Classes::TStrings* Value);
	int __fastcall GetSelLength(void);
	int __fastcall GetSelStart(void);
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetSelStart(const int Value);
	AnsiString __fastcall GetSelText();
	void __fastcall SetSelText(const AnsiString Value);
	
protected:
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall ColorChanged(void);
	void __fastcall LinesChanged(System::TObject* Sender);
	void __fastcall EditClick(System::TObject* Sender);
	void __fastcall EditChange(System::TObject* Sender);
	void __fastcall EditDblClick(System::TObject* Sender);
	void __fastcall EditEnter(System::TObject* Sender);
	void __fastcall EditExit(System::TObject* Sender);
	void __fastcall EditKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall EditKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall EditKeyPress(System::TObject* Sender, char &Key);
	void __fastcall EditMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditMouseLeave(System::TObject* Sender);
	void __fastcall EditMouseEnter(System::TObject* Sender);
	
public:
	__fastcall virtual TCurvyMemo(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyMemo(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	virtual void __fastcall SetFocus(void);
	DYNAMIC bool __fastcall CanFocus(void);
	__property Stdctrls::TMemo* Memo = {read=FEdit};
	__property int SelStart = {read=GetSelStart, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLength, write=SetSelLength, nodefault};
	__property AnsiString SelText = {read=GetSelText, write=SetSelText};
	void __fastcall SelectAll(void);
	
__published:
	__property Align  = {default=0};
	__property BiDiMode ;
	__property Controls::TCursor DragCursor = {read=GetDragCursor, write=SetDragCursor, default=-12};
	__property Controls::TDragKind DragKind = {read=GetDragKind, write=SetDragKind, default=0};
	__property Controls::TDragMode DragMode = {read=GetDragMode, write=SetDragModeI, default=0};
	__property bool Enabled = {read=GetEnabledEx, write=SetEnabledEx, default=1};
	__property Font ;
	__property bool HideSelection = {read=GetHideSelection, write=SetHideSelection, default=1};
	__property Controls::TImeMode ImeMode = {read=GetImeMode, write=SetImeMode, default=3};
	__property AnsiString ImeName = {read=GetImeName, write=SetImeName};
	__property Classes::TStrings* Lines = {read=GetLines, write=SetLines};
	__property int MaxLength = {read=GetMaxLength, write=SetMaxLength, default=0};
	__property bool OEMConvert = {read=GetOEMConvert, write=SetOEMConvert, default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=1};
	__property ParentFont  = {default=1};
	__property Menus::TPopupMenu* PopupMenu = {read=GetPopupMenuEx, write=SetPopupMenu};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, default=0};
	__property Stdctrls::TScrollStyle ScrollBars = {read=GetScrollStyle, write=SetScrollStyle, default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property Classes::TNotifyEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Classes::TNotifyEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property Classes::TNotifyEvent OnEnter = {read=FOnEnter, write=FOnEnter};
	__property Classes::TNotifyEvent OnExit = {read=FOnExit, write=FOnExit};
	__property Controls::TKeyEvent OnKeyDown = {read=FOnKeyDown, write=FOnKeyDown};
	__property Controls::TKeyPressEvent OnKeyPress = {read=FOnKeyPress, write=FOnKeyPress};
	__property Controls::TKeyEvent OnKeyUp = {read=FOnKeyUp, write=FOnKeyUp};
	__property Controls::TMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property Controls::TMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property Controls::TMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCurvyMemo(HWND ParentWindow) : TCurvyPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TBorderlessCustomComboBox;
class PASCALIMPLEMENTATION TBorderlessCustomComboBox : public Stdctrls::TCustomComboBox 
{
	typedef Stdctrls::TCustomComboBox inherited;
	
private:
	int FButtonWidth;
	bool FButtonHover;
	void __fastcall DrawControlBorder(HDC DC);
	void __fastcall DrawBorders(void);
	void __fastcall DrawButton(HDC DC);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	
protected:
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	
public:
	__fastcall virtual TBorderlessCustomComboBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TBorderlessCustomComboBox(void);
	__property Text ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TBorderlessCustomComboBox(HWND ParentWindow) : Stdctrls::TCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TBorderlessComboBox;
class PASCALIMPLEMENTATION TBorderlessComboBox : public TBorderlessCustomComboBox 
{
	typedef TBorderlessCustomComboBox inherited;
	
__published:
	__property Items ;
	__property Text ;
public:
	#pragma option push -w-inl
	/* TBorderlessCustomComboBox.Create */ inline __fastcall virtual TBorderlessComboBox(Classes::TComponent* AOwner) : TBorderlessCustomComboBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBorderlessCustomComboBox.Destroy */ inline __fastcall virtual ~TBorderlessComboBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TBorderlessComboBox(HWND ParentWindow) : TBorderlessCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TCurvyCombo;
class PASCALIMPLEMENTATION TCurvyCombo : public TCurvyControlPanel 
{
	typedef TCurvyControlPanel inherited;
	
private:
	Classes::TStringList* FItems;
	int FItemIndex;
	TBorderlessComboBox* FCombo;
	Controls::TMouseEvent FOnMouseDown;
	Classes::TNotifyEvent FOnExit;
	Classes::TNotifyEvent FOnMouseEnter;
	Controls::TMouseMoveEvent FOnMouseMove;
	Controls::TMouseEvent FOnMouseUp;
	Controls::TKeyPressEvent FOnKeyPress;
	Controls::TKeyEvent FOnKeyDown;
	Classes::TNotifyEvent FOnDblClick;
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	Controls::TKeyEvent FOnKeyUp;
	Classes::TNotifyEvent FOnClick;
	Classes::TNotifyEvent FOnCloseUp;
	Classes::TNotifyEvent FOnDropDown;
	Classes::TNotifyEvent FOnSelect;
	int FDropDownCount;
	HIDESBASE AnsiString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const AnsiString Value);
	Classes::TStrings* __fastcall GetItems(void);
	void __fastcall SetItems(const Classes::TStrings* Value);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMParentBiDiModeChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TMessage &Message);
	bool __fastcall GetAutoCloseUp(void);
	bool __fastcall GetAutoComplete(void);
	bool __fastcall GetAutoDropDown(void);
	void __fastcall SetAutoCloseUp(const bool Value);
	void __fastcall SetAutoComplete(const bool Value);
	void __fastcall SetAutoDropDown(const bool Value);
	Stdctrls::TEditCharCase __fastcall GetCharCase(void);
	void __fastcall SetCharCase(const Stdctrls::TEditCharCase Value);
	bool __fastcall GetEnabledEx(void);
	void __fastcall SetEnabledEx(const bool Value);
	Controls::TImeMode __fastcall GetImeMode(void);
	AnsiString __fastcall GetImeName();
	void __fastcall SetImeMode(const Controls::TImeMode Value);
	void __fastcall SetImeName(const AnsiString Value);
	Menus::TPopupMenu* __fastcall GetPopupMenuEx(void);
	HIDESBASE void __fastcall SetPopupMenu(const Menus::TPopupMenu* Value);
	int __fastcall GetItemIndex(void);
	void __fastcall SetItemIndex(const int Value);
	Stdctrls::TComboBoxStyle __fastcall GetStyle(void);
	void __fastcall SetStyle(const Stdctrls::TComboBoxStyle Value);
	Controls::TCursor __fastcall GetDragCursor(void);
	Controls::TDragKind __fastcall GetDragKind(void);
	Controls::TDragMode __fastcall GetDragMode(void);
	void __fastcall SetDragCursor(const Controls::TCursor Value);
	void __fastcall SetDragKind(const Controls::TDragKind Value);
	void __fastcall SetDragModeI(const Controls::TDragMode Value);
	int __fastcall GetSelLength(void);
	int __fastcall GetSelStart(void);
	AnsiString __fastcall GetSelText();
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetSelStart(const int Value);
	void __fastcall SetSelText(const AnsiString Value);
	bool __fastcall GetSorted(void);
	void __fastcall SetSorted(const bool Value);
	void __fastcall SetDropDownCount(const int Value);
	
protected:
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall ColorChanged(void);
	virtual void __fastcall ItemsChanged(System::TObject* Sender);
	virtual void __fastcall Loaded(void);
	void __fastcall ComboClick(System::TObject* Sender);
	void __fastcall ComboChange(System::TObject* Sender);
	void __fastcall ComboDblClick(System::TObject* Sender);
	void __fastcall ComboEnter(System::TObject* Sender);
	void __fastcall ComboExit(System::TObject* Sender);
	void __fastcall ComboKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall ComboKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall ComboKeyPress(System::TObject* Sender, char &Key);
	void __fastcall ComboMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ComboMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ComboMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ComboMouseLeave(System::TObject* Sender);
	void __fastcall ComboMouseEnter(System::TObject* Sender);
	void __fastcall ComboDropDown(System::TObject* Sender);
	void __fastcall ComboCloseUp(System::TObject* Sender);
	void __fastcall ComboSelect(System::TObject* Sender);
	void __fastcall UpdateCombo(void);
	HIDESBASE void __fastcall UpdateControl(void);
	virtual void __fastcall UpdateEditControl(void);
	
public:
	__fastcall virtual TCurvyCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TCurvyCombo(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	__property TBorderlessComboBox* Combo = {read=FCombo};
	virtual void __fastcall SetFocus(void);
	DYNAMIC bool __fastcall CanFocus(void);
	__property int SelStart = {read=GetSelStart, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLength, write=SetSelLength, nodefault};
	__property AnsiString SelText = {read=GetSelText, write=SetSelText};
	
__published:
	__property Align  = {default=0};
	__property bool AutoCloseUp = {read=GetAutoCloseUp, write=SetAutoCloseUp, default=0};
	__property bool AutoComplete = {read=GetAutoComplete, write=SetAutoComplete, default=1};
	__property bool AutoDropDown = {read=GetAutoDropDown, write=SetAutoDropDown, default=0};
	__property BiDiMode ;
	__property Stdctrls::TEditCharCase CharCase = {read=GetCharCase, write=SetCharCase, default=0};
	__property Controls ;
	__property Controls::TCursor DragCursor = {read=GetDragCursor, write=SetDragCursor, default=-12};
	__property Controls::TDragKind DragKind = {read=GetDragKind, write=SetDragKind, default=0};
	__property Controls::TDragMode DragMode = {read=GetDragMode, write=SetDragModeI, default=0};
	__property int DropDownCount = {read=FDropDownCount, write=SetDropDownCount, default=8};
	__property bool Enabled = {read=GetEnabledEx, write=SetEnabledEx, default=1};
	__property Images ;
	__property Controls::TImeMode ImeMode = {read=GetImeMode, write=SetImeMode, default=3};
	__property AnsiString ImeName = {read=GetImeName, write=SetImeName};
	__property int ItemIndex = {read=GetItemIndex, write=SetItemIndex, default=-1};
	__property Classes::TStrings* Items = {read=GetItems, write=SetItems};
	__property Font ;
	__property ParentBiDiMode  = {default=1};
	__property ParentColor  = {default=1};
	__property ParentFont  = {default=1};
	__property Menus::TPopupMenu* PopupMenu = {read=GetPopupMenuEx, write=SetPopupMenu};
	__property ShowHint ;
	__property bool Sorted = {read=GetSorted, write=SetSorted, nodefault};
	__property Stdctrls::TComboBoxStyle Style = {read=GetStyle, write=SetStyle, default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property AnsiString Text = {read=GetText, write=SetText};
	__property Classes::TNotifyEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TNotifyEvent OnCloseUp = {read=FOnCloseUp, write=FOnCloseUp};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property OnControlClick ;
	__property Classes::TNotifyEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property Classes::TNotifyEvent OnDropDown = {read=FOnDropDown, write=FOnDropDown};
	__property Classes::TNotifyEvent OnEnter = {read=FOnEnter, write=FOnEnter};
	__property Classes::TNotifyEvent OnExit = {read=FOnExit, write=FOnExit};
	__property Controls::TKeyEvent OnKeyDown = {read=FOnKeyDown, write=FOnKeyDown};
	__property Controls::TKeyPressEvent OnKeyPress = {read=FOnKeyPress, write=FOnKeyPress};
	__property Controls::TKeyEvent OnKeyUp = {read=FOnKeyUp, write=FOnKeyUp};
	__property Controls::TMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property Controls::TMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property Controls::TMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnSelect = {read=FOnSelect, write=FOnSelect};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCurvyCombo(HWND ParentWindow) : TCurvyControlPanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x5;

}	/* namespace Curvycontrols */
using namespace Curvycontrols;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Curvycontrols
