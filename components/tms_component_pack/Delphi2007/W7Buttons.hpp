// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7buttons.pas' rev: 11.00

#ifndef W7buttonsHPP
#define W7buttonsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7buttons
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum W7Buttons__1 { wsbLeft, wsbTop, wsbRight, wsbBottom };
#pragma option pop

typedef Set<W7Buttons__1, wsbLeft, wsbBottom>  TW7Borders;

#pragma option push -b-
enum TW7PageSelectorStyle { pssClassic, pssNavy, pssCustom };
#pragma option pop

#pragma option push -b-
enum TW7SpeedButtonStyle { sbsStandart, sbsLight, sbsFlat };
#pragma option pop

#pragma option push -b-
enum TW7ImageAlignment { ialLeft, ialRight };
#pragma option pop

#pragma pack(push,4)
struct TW7PageSelectorColors
{
	
public:
	Graphics::TColor MouseOutTopStartColor;
	Graphics::TColor MouseOutTopEndColor;
	Graphics::TColor MouseOutBottomStartColor;
	Graphics::TColor MouseOutBottomEndColor;
	Graphics::TColor MouseInTopStartColor;
	Graphics::TColor MouseInTopEndColor;
	Graphics::TColor MouseInBottomStartColor;
	Graphics::TColor MouseInBottomEndColor;
	Graphics::TColor ActiveTopStartColor;
	Graphics::TColor ActiveTopEndColor;
	Graphics::TColor ActiveBottomStartColor;
	Graphics::TColor ActiveBottomEndColor;
	Graphics::TColor NotActiveInnerFocusFrameColor;
	Graphics::TColor NotActiveOuterFocusFrameColor;
	Graphics::TColor ActiveInnerFocusFrameColor;
	Graphics::TColor ActiveOuterFocusFrameColor;
	Graphics::TColor BorderColor;
	Graphics::TColor FontColor;
} ;
#pragma pack(pop)

class DELPHICLASS TW7CustomToolButton;
class PASCALIMPLEMENTATION TW7CustomToolButton : public W7classes::TW7TransparentControl 
{
	typedef W7classes::TW7TransparentControl inherited;
	
private:
	bool FTransparent;
	bool FShowArrow;
	bool FSetFocusOnClick;
	Imglist::TCustomImageList* FImages;
	Imglist::TChangeLink* FImageChangeLink;
	int FImageIndex;
	W7classes::TW7ButtonIconSize FIconSize;
	int FIconHeight;
	W7graphics::TW7ArrowType FArrowType;
	int FArrowHeight;
	void __fastcall SetShowArrow(bool Value);
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetIconSize(W7classes::TW7ButtonIconSize Value);
	void __fastcall SetArrowType(W7graphics::TW7ArrowType Value);
	
protected:
	bool ReturnButtonPressed;
	virtual void __fastcall Paint(void);
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall DrawBorder(void);
	void __fastcall DrawButtonElements(void);
	void __fastcall ImageListChange(System::TObject* Sender);
	void __fastcall UpdateImageList(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TW7CustomToolButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomToolButton(void);
	__property Caption ;
	__property bool ShowArrow = {read=FShowArrow, write=SetShowArrow, default=0};
	__property bool SetFocusOnClick = {read=FSetFocusOnClick, write=FSetFocusOnClick, default=1};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property W7classes::TW7ButtonIconSize IconSize = {read=FIconSize, write=SetIconSize, default=0};
	__property W7graphics::TW7ArrowType ArrowType = {read=FArrowType, write=SetArrowType, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7CustomToolButton(HWND ParentWindow) : W7classes::TW7TransparentControl(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7CustomPageSelector;
class PASCALIMPLEMENTATION TW7CustomPageSelector : public W7classes::TW7Control 
{
	typedef W7classes::TW7Control inherited;
	
private:
	bool FShowArrow;
	bool FSetFocusOnClick;
	Imglist::TCustomImageList* FImages;
	Imglist::TChangeLink* FImageChangeLink;
	int FImageIndex;
	W7classes::TW7ButtonIconSize FIconSize;
	int FIconHeight;
	bool FActive;
	int FGroupIndex;
	bool FPressButtonEffect;
	bool FHideArrowOnActive;
	W7graphics::TW7ArrowType FArrowType;
	int FArrowHeight;
	TW7Borders FBorders;
	Graphics::TColor FBorderColor;
	bool FHideFocusIfActive;
	TW7PageSelectorStyle FStyle;
	TW7PageSelectorColors FColors;
	TW7PageSelectorColors FInternalColors;
	Graphics::TColor FActiveFontColor;
	void __fastcall SetShowArrow(bool Value);
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetIconSize(W7classes::TW7ButtonIconSize Value);
	void __fastcall SetActive(bool Value);
	void __fastcall SetArrowType(W7graphics::TW7ArrowType Value);
	void __fastcall SetBorders(TW7Borders Value);
	void __fastcall SetBorderColor(Graphics::TColor Value);
	void __fastcall SetStyle(TW7PageSelectorStyle Value);
	void __fastcall SetColors(const TW7PageSelectorColors &Value);
	
protected:
	bool ReturnButtonPressed;
	virtual void __fastcall Paint(void);
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall DrawFocusedBorder(void);
	void __fastcall DrawButtonElements(void);
	void __fastcall ImageListChange(System::TObject* Sender);
	void __fastcall UpdateImageList(void);
	void __fastcall ActivateStyle(TW7PageSelectorStyle Style);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TW7CustomPageSelector(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomPageSelector(void);
	__property Caption ;
	__property bool ShowArrow = {read=FShowArrow, write=SetShowArrow, default=0};
	__property bool SetFocusOnClick = {read=FSetFocusOnClick, write=FSetFocusOnClick, default=1};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property W7classes::TW7ButtonIconSize IconSize = {read=FIconSize, write=SetIconSize, default=1};
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property int GroupIndex = {read=FGroupIndex, write=FGroupIndex, default=0};
	__property bool PressButtonEffect = {read=FPressButtonEffect, write=FPressButtonEffect, default=0};
	__property bool HideArrowOnActive = {read=FHideArrowOnActive, write=FHideArrowOnActive, default=1};
	__property W7graphics::TW7ArrowType ArrowType = {read=FArrowType, write=SetArrowType, default=3};
	__property TW7Borders Borders = {read=FBorders, write=SetBorders, default=15};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, nodefault};
	__property bool HideFocusIfActive = {read=FHideFocusIfActive, write=FHideFocusIfActive, default=1};
	__property TW7PageSelectorStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property TW7PageSelectorColors Colors = {read=FColors, write=SetColors};
	__property Graphics::TColor ActiveFontColor = {read=FActiveFontColor, write=FActiveFontColor, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7CustomPageSelector(HWND ParentWindow) : W7classes::TW7Control(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7CustomSpeedButton;
class PASCALIMPLEMENTATION TW7CustomSpeedButton : public W7classes::TW7GraphicControl 
{
	typedef W7classes::TW7GraphicControl inherited;
	
private:
	bool FEnabled;
	bool FFlat;
	bool FLight;
	Graphics::TBitmap* FBackground;
	Graphics::TBitmap* FMouseInBackground;
	Graphics::TBitmap* FMouseDownBackground;
	Extctrls::TTimer* FInternalTimer;
	int FMouseInOpacity;
	bool FBackgroundsCreated;
	bool FMouseUpped;
	int FFadeInInterval;
	int FFadeOutInterval;
	bool FShowArrow;
	Imglist::TCustomImageList* FImages;
	Imglist::TChangeLink* FImageChangeLink;
	int FImageIndex;
	W7classes::TW7ButtonIconSize FIconSize;
	int FIconHeight;
	W7graphics::TW7ArrowType FArrowType;
	int FArrowHeight;
	bool FPressButtonEffect;
	void __fastcall SetFlat(bool Value);
	void __fastcall SetLight(bool Value);
	void __fastcall SetShowArrow(bool Value);
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetIconSize(W7classes::TW7ButtonIconSize Value);
	void __fastcall SetArrowType(W7graphics::TW7ArrowType Value);
	
protected:
	virtual void __fastcall SetEnabled(bool Value);
	void __fastcall TimerProc(System::TObject* Sender);
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	void __fastcall DrawMouseInSubLight(void);
	void __fastcall DrawMouseDownSubLight(void);
	void __fastcall DrawFlatMouseInSubLight(void);
	void __fastcall DrawFlatMouseDownSubLight(void);
	void __fastcall DrawMouseInBorder(void);
	void __fastcall DrawMouseDownBorder(void);
	void __fastcall CreateMouseInBody(void);
	void __fastcall CreateFlatMouseInBody(void);
	void __fastcall CreateFlatMouseDownBody(void);
	void __fastcall CreateMouseDownBody(void);
	void __fastcall CreateBackgrounds(void);
	void __fastcall HideCorners(void);
	void __fastcall DrawEnabledBorder(void);
	void __fastcall DrawDisabledBorder(void);
	void __fastcall DrawBorder(void);
	void __fastcall DrawStandartBackground(void);
	void __fastcall DrawLightBackground(void);
	void __fastcall DrawFlatBackground(void);
	void __fastcall DrawDisabledBackground(void);
	void __fastcall DrawMouseInBody(void);
	void __fastcall DrawBackground(void);
	void __fastcall DrawButtonElements(void);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ImageListChange(System::TObject* Sender);
	void __fastcall UpdateImageList(void);
	
public:
	__fastcall virtual TW7CustomSpeedButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomSpeedButton(void);
	__property Caption ;
	__property bool Flat = {read=FFlat, write=SetFlat, nodefault};
	__property bool Light = {read=FLight, write=SetLight, nodefault};
	__property int FadeInInterval = {read=FFadeInInterval, write=FFadeInInterval, nodefault};
	__property int FadeOutInterval = {read=FFadeOutInterval, write=FFadeOutInterval, nodefault};
	__property bool ShowArrow = {read=FShowArrow, write=SetShowArrow, default=0};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property W7classes::TW7ButtonIconSize IconSize = {read=FIconSize, write=SetIconSize, nodefault};
	__property W7graphics::TW7ArrowType ArrowType = {read=FArrowType, write=SetArrowType, nodefault};
	__property bool PressButtonEffect = {read=FPressButtonEffect, write=FPressButtonEffect, default=1};
	__property Font ;
};


class DELPHICLASS TW7ToolButton;
class PASCALIMPLEMENTATION TW7ToolButton : public TW7CustomToolButton 
{
	typedef TW7CustomToolButton inherited;
	
__published:
	__property Caption ;
	__property Enabled  = {default=1};
	__property ShowArrow  = {default=0};
	__property SetFocusOnClick  = {default=1};
	__property Images ;
	__property ImageIndex  = {default=-1};
	__property IconSize  = {default=0};
	__property ArrowType  = {default=0};
	__property Font ;
	__property Action ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
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
	/* TW7CustomToolButton.Create */ inline __fastcall virtual TW7ToolButton(Classes::TComponent* AOwner) : TW7CustomToolButton(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomToolButton.Destroy */ inline __fastcall virtual ~TW7ToolButton(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7ToolButton(HWND ParentWindow) : TW7CustomToolButton(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7PageSelector;
class PASCALIMPLEMENTATION TW7PageSelector : public TW7CustomPageSelector 
{
	typedef TW7CustomPageSelector inherited;
	
__published:
	__property Caption ;
	__property ShowArrow  = {default=0};
	__property SetFocusOnClick  = {default=1};
	__property Images ;
	__property ImageIndex  = {default=-1};
	__property IconSize  = {default=1};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Active  = {default=0};
	__property GroupIndex  = {default=0};
	__property PressButtonEffect  = {default=0};
	__property HideArrowOnActive  = {default=1};
	__property ArrowType  = {default=3};
	__property Borders  = {default=15};
	__property BorderColor ;
	__property HideFocusIfActive  = {default=1};
	__property Style  = {default=0};
	
public:
	__property Colors ;
	
__published:
	__property ActiveFontColor ;
	__property Font ;
	__property Constraints ;
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
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
	/* TW7CustomPageSelector.Create */ inline __fastcall virtual TW7PageSelector(Classes::TComponent* AOwner) : TW7CustomPageSelector(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomPageSelector.Destroy */ inline __fastcall virtual ~TW7PageSelector(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7PageSelector(HWND ParentWindow) : TW7CustomPageSelector(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7SpeedButton;
class PASCALIMPLEMENTATION TW7SpeedButton : public TW7CustomSpeedButton 
{
	typedef TW7CustomSpeedButton inherited;
	
__published:
	__property Caption ;
	__property Flat ;
	__property Light ;
	__property FadeInInterval ;
	__property FadeOutInterval ;
	__property ShowArrow  = {default=0};
	__property Images ;
	__property ImageIndex  = {default=-1};
	__property IconSize ;
	__property ArrowType ;
	__property Font ;
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
	__property PressButtonEffect  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
public:
	#pragma option push -w-inl
	/* TW7CustomSpeedButton.Create */ inline __fastcall virtual TW7SpeedButton(Classes::TComponent* AOwner) : TW7CustomSpeedButton(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomSpeedButton.Destroy */ inline __fastcall virtual ~TW7SpeedButton(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7buttons */
using namespace W7buttons;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7buttons
