// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothscrollbar.pas' rev: 11.00

#ifndef AdvsmoothscrollbarHPP
#define AdvsmoothscrollbarHPP

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
#include <Advstyleif.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Dateutils.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothscrollbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TWinCtrl;
class PASCALIMPLEMENTATION TWinCtrl : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
public:
	void __fastcall PaintCtrls(HDC DC, Controls::TControl* First);
public:
	#pragma option push -w-inl
	/* TWinControl.Create */ inline __fastcall virtual TWinCtrl(Classes::TComponent* AOwner) : Controls::TWinControl(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TWinCtrl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TWinCtrl(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothScrollBarAppearance;
class DELPHICLASS TAdvSmoothScrollBar;
#pragma option push -b-
enum TAdvSmoothScrollBarMode { sbmNone, sbmScroll, sbmChangePageSize };
#pragma option pop

#pragma option push -b-
enum TAdvSmoothScrollButtonChange { sbcNone, sbcSmallSubstract, sbcSmallAdd, sbcLargeSubstract, sbcLargeAdd };
#pragma option pop

#pragma option push -b-
enum TAdvSmoothHoveredButton { hbNone, hbScrollMin, hbScrollMax, hbThumbMin, hbThumbMax };
#pragma option pop

#pragma option push -b-
enum TAdvSmoothDownButton { dbNone, dbScrollMin, dbScrollMax, dbThumbMin, dbThumbMax };
#pragma option pop

typedef void __fastcall (__closure *TAdvSmoothScrollBarPositionChanged)(System::TObject* Sender, int Position);

typedef void __fastcall (__closure *TAdvSmoothScrollBarPageSizeChanged)(System::TObject* Sender, int PageSize);

class PASCALIMPLEMENTATION TAdvSmoothScrollBar : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	int FSavedPageSize;
	bool FDesignTime;
	bool FMinThumb;
	bool FMaxThumb;
	double FMx;
	double FMy;
	double FCx;
	double FCy;
	Extctrls::TTimer* FTimer;
	int FTime;
	TAdvSmoothScrollBarMode FScrollBarMode;
	TAdvSmoothScrollButtonChange FScrollButtonChange;
	TAdvSmoothHoveredButton FHoveredButton;
	TAdvSmoothDownButton FDownButton;
	Forms::TScrollBarKind FKind;
	int FPosition;
	int FMin;
	int FMax;
	int FPageSize;
	Forms::TScrollBarInc FSmallChange;
	Forms::TScrollBarInc FLargeChange;
	Classes::TNotifyEvent FOnChange;
	TAdvSmoothScrollBarAppearance* FAppearance;
	bool FTransparent;
	TAdvSmoothScrollBarPositionChanged FOnPositionChange;
	bool FAnimation;
	int FAnimationFactor;
	TAdvSmoothScrollBarPageSizeChanged FOnPageSizeChanged;
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	void __fastcall SetAppearance(const TAdvSmoothScrollBarAppearance* Value);
	void __fastcall SetKind(Forms::TScrollBarKind Value);
	void __fastcall SetMax(const int Value);
	void __fastcall SetMin(const int Value);
	void __fastcall SetPosition(const int Value);
	void __fastcall SetPageSize(const int Value);
	void __fastcall SetTransparent(const bool Value);
	
protected:
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	HIDESBASE void __fastcall Changed(void);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall TimerChanged(System::TObject* Sender);
	Advgdip::TGPRectF __fastcall GetMinScrollButton();
	Advgdip::TGPRectF __fastcall GetMaxScrollButton();
	Advgdip::TGPRectF __fastcall GetMinThumbButton();
	Advgdip::TGPRectF __fastcall GetMaxThumbButton();
	Advgdip::TGPRectF __fastcall GetScrollRectangle();
	int __fastcall GetScrollSize(void);
	Advgdip::TGPRectF __fastcall GetScrollAreaMin();
	Advgdip::TGPRectF __fastcall GetScrollAreaMax();
	Advgdip::TGPRectF __fastcall GetThumbRectangle();
	int __fastcall GetPosition(void)/* overload */;
	int __fastcall GetPosition(double XYPos)/* overload */;
	Types::TRect __fastcall InsideRect();
	int __fastcall GetRange(void);
	bool __fastcall MouseOnThumbButtons(int X, int Y);
	bool __fastcall MouseOnThumb(int X, int Y);
	void __fastcall DrawBackGround(Advgdip::TGPGraphics* g);
	void __fastcall DrawScrollButtons(Advgdip::TGPGraphics* g);
	void __fastcall DrawThumb(Advgdip::TGPGraphics* g);
	void __fastcall DrawThumbButtons(Advgdip::TGPGraphics* g);
	void __fastcall DrawArrow(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &r, bool Left);
	bool __fastcall PtInGPRect(const Advgdip::TGPRectF &r, const Types::TPoint &pt);
	
public:
	__fastcall virtual TAdvSmoothScrollBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothScrollBar(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall MouseWheelHandler(Messages::TMessage &Message);
	void __fastcall SaveToTheme(AnsiString FileName);
	void __fastcall LoadFromTheme(AnsiString FileName);
	AnsiString __fastcall GetThemeID();
	
__published:
	__property TAdvSmoothScrollBarAppearance* Appearance = {read=FAppearance, write=SetAppearance};
	__property Forms::TScrollBarKind Kind = {read=FKind, write=SetKind, default=0};
	__property Forms::TScrollBarInc LargeChange = {read=FLargeChange, write=FLargeChange, default=1};
	__property int Max = {read=FMax, write=SetMax, default=100};
	__property int Min = {read=FMin, write=SetMin, default=0};
	__property int PageSize = {read=FPageSize, write=SetPageSize, default=20};
	__property int Position = {read=FPosition, write=SetPosition, default=0};
	__property Forms::TScrollBarInc SmallChange = {read=FSmallChange, write=FSmallChange, default=1};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property TAdvSmoothScrollBarPositionChanged OnPositionChanged = {read=FOnPositionChange, write=FOnPositionChange};
	__property TAdvSmoothScrollBarPageSizeChanged OnPageSizeChanged = {read=FOnPageSizeChanged, write=FOnPageSizeChanged};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property Ctl3D ;
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property ParentBiDiMode  = {default=1};
	__property ParentCtl3D  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property OnContextPopup ;
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothScrollBar(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSTones()
	{
		Advstyleif::_di_ITMSTones intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSTones*(void) { return (ITMSTones*)&__ITMSTones; }
	#endif
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


class PASCALIMPLEMENTATION TAdvSmoothScrollBarAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothScrollBar* FOwner;
	Gdipfill::TGDIPFill* FThumbFill;
	int FScrollButtonSize;
	Gdipfill::TGDIPFill* FBackGroundFill;
	int FThumbButtonSize;
	Gdipfill::TGDIPFill* FScrollButtonLeft;
	Gdipfill::TGDIPFill* FThumbButtonLeft;
	Gdipfill::TGDIPFill* FScrollButtonRight;
	Gdipfill::TGDIPFill* FThumbButtonRight;
	Classes::TNotifyEvent FOnChange;
	bool FFixedThumb;
	Gdipfill::TGDIPFill* FThumbButtonRightDown;
	Gdipfill::TGDIPFill* FThumbButtonLeftHover;
	Gdipfill::TGDIPFill* FThumbButtonRightHover;
	Gdipfill::TGDIPFill* FThumbButtonLeftDown;
	Gdipfill::TGDIPFill* FScrollButtonLeftHover;
	Gdipfill::TGDIPFill* FScrollButtonRightHover;
	Gdipfill::TGDIPFill* FScrollButtonLeftDown;
	Gdipfill::TGDIPFill* FScrollButtonRightDown;
	Graphics::TColor FArrowColor;
	void __fastcall SetBackGroundFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonLeft(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonRight(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonSize(const int Value);
	void __fastcall SetThumbButtonLeft(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetThumbButtonRight(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetThumbButtonSize(const int Value);
	void __fastcall SetThumbFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetFixedThumb(const bool Value);
	void __fastcall SetThumbButtonLeftDown(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetThumbButtonLeftHover(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetThumbButtonRightDown(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetThumbButtonRightHover(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonLeftDown(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonLeftHover(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonRightDown(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetScrollButtonRightHover(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetArrowColor(const Graphics::TColor Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall FillChanged(System::TObject* Sender);
	
public:
	__fastcall TAdvSmoothScrollBarAppearance(TAdvSmoothScrollBar* AOwner);
	__fastcall virtual ~TAdvSmoothScrollBarAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	int __fastcall GetThumbButtonSize(void);
	
__published:
	__property Gdipfill::TGDIPFill* BackGroundFill = {read=FBackGroundFill, write=SetBackGroundFill};
	__property Gdipfill::TGDIPFill* ThumbFill = {read=FThumbFill, write=SetThumbFill};
	__property Gdipfill::TGDIPFill* ScrollButtonLeft = {read=FScrollButtonLeft, write=SetScrollButtonLeft};
	__property Gdipfill::TGDIPFill* ScrollButtonRight = {read=FScrollButtonRight, write=SetScrollButtonRight};
	__property Gdipfill::TGDIPFill* ScrollButtonLeftHover = {read=FScrollButtonLeftHover, write=SetScrollButtonLeftHover};
	__property Gdipfill::TGDIPFill* ScrollButtonRightHover = {read=FScrollButtonRightHover, write=SetScrollButtonRightHover};
	__property Gdipfill::TGDIPFill* ScrollButtonLeftDown = {read=FScrollButtonLeftDown, write=SetScrollButtonLeftDown};
	__property Gdipfill::TGDIPFill* ScrollButtonRightDown = {read=FScrollButtonRightDown, write=SetScrollButtonRightDown};
	__property Gdipfill::TGDIPFill* ThumbButtonLeft = {read=FThumbButtonLeft, write=SetThumbButtonLeft};
	__property Gdipfill::TGDIPFill* ThumbButtonRight = {read=FThumbButtonRight, write=SetThumbButtonRight};
	__property Gdipfill::TGDIPFill* ThumbButtonLeftHover = {read=FThumbButtonLeftHover, write=SetThumbButtonLeftHover};
	__property Gdipfill::TGDIPFill* ThumbButtonRightHover = {read=FThumbButtonRightHover, write=SetThumbButtonRightHover};
	__property Gdipfill::TGDIPFill* ThumbButtonLeftDown = {read=FThumbButtonLeftDown, write=SetThumbButtonLeftDown};
	__property Gdipfill::TGDIPFill* ThumbButtonRightDown = {read=FThumbButtonRightDown, write=SetThumbButtonRightDown};
	__property int ThumbButtonSize = {read=FThumbButtonSize, write=SetThumbButtonSize, nodefault};
	__property int ScrollButtonSize = {read=FScrollButtonSize, write=SetScrollButtonSize, nodefault};
	__property bool FixedThumb = {read=FFixedThumb, write=SetFixedThumb, default=0};
	__property Graphics::TColor ArrowColor = {read=FArrowColor, write=SetArrowColor, default=0};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x2;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;

}	/* namespace Advsmoothscrollbar */
using namespace Advsmoothscrollbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothscrollbar