// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothslider.pas' rev: 11.00

#ifndef AdvsmoothsliderHPP
#define AdvsmoothsliderHPP

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
#include <Math.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothslider
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


class DELPHICLASS TAdvSmoothSliderButtonAppearance;
class DELPHICLASS TAdvSmoothSlider;
class DELPHICLASS TAdvSmoothSliderAppearance;
#pragma option push -b-
enum TAdvSmoothSliderCaptionPosition { cpTopLeft, cpTopCenter, cpTopRight, cpCenterLeft, cpCenterCenter, cpCenterRight, cpBottomLeft, cpBottomCenter, cpBottomRight, cpCustom };
#pragma option pop

class PASCALIMPLEMENTATION TAdvSmoothSliderAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothSlider* FOwner;
	Graphics::TFont* FFont;
	AnsiString FCaption;
	Classes::TNotifyEvent FOnChange;
	Gdipfill::TGDIPFill* FFill;
	TAdvSmoothSliderCaptionPosition FCaptionPosition;
	int FCaptionTop;
	int FCaptionLeft;
	Gdipfill::TGDIPFill* FFillDisabled;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetCaptionPosition(const TAdvSmoothSliderCaptionPosition Value);
	void __fastcall SetCaptionLeft(const int Value);
	void __fastcall SetCaptionTop(const int Value);
	void __fastcall SetFillDisabled(const Gdipfill::TGDIPFill* Value);
	
public:
	__fastcall TAdvSmoothSliderAppearance(TAdvSmoothSlider* AOwner);
	__fastcall virtual ~TAdvSmoothSliderAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
protected:
	void __fastcall Changed(void);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	
__published:
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property Gdipfill::TGDIPFill* FillDisabled = {read=FFillDisabled, write=SetFillDisabled};
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property TAdvSmoothSliderCaptionPosition CaptionPosition = {read=FCaptionPosition, write=SetCaptionPosition, default=4};
	__property int CaptionLeft = {read=FCaptionLeft, write=SetCaptionLeft, default=0};
	__property int CaptionTop = {read=FCaptionTop, write=SetCaptionTop, default=0};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


#pragma option push -b-
enum TAdvSmoothSliderState { ssOn, ssOff };
#pragma option pop

typedef void __fastcall (__closure *TAdvSmoothStateChanged)(System::TObject* Sender, TAdvSmoothSliderState State, double Value);

class PASCALIMPLEMENTATION TAdvSmoothSlider : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FFocused;
	bool FDoAnimation;
	bool FDesignTime;
	Extctrls::TTimer* FSlide;
	int FCx;
	bool FMouseDown;
	bool FMouseDownButton;
	double FPosTo;
	double FCurrentPos;
	TAdvSmoothSliderAppearance* FAppearanceOff;
	TAdvSmoothSliderState FState;
	double FValueOff;
	TAdvSmoothSliderButtonAppearance* FButtonAppearance;
	TAdvSmoothSliderAppearance* FAppearanceOn;
	double FValueOn;
	Gdipfill::TGDIPFill* FFill;
	TAdvSmoothStateChanged FOnStateChanged;
	int FAnimationFactor;
	bool FShowFocus;
	Graphics::TColor FFocusColor;
	Gdipfill::TGDIPFill* FFillDisabled;
	void __fastcall SetAppearanceOff(const TAdvSmoothSliderAppearance* Value);
	void __fastcall SetAppearanceOn(const TAdvSmoothSliderAppearance* Value);
	void __fastcall SetButtonAppearance(const TAdvSmoothSliderButtonAppearance* Value);
	void __fastcall SetState(const TAdvSmoothSliderState Value);
	void __fastcall SetValueOff(const double Value);
	void __fastcall SetValueOn(const double Value);
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall WMEnable(Messages::TWMEnable &Message);
	void __fastcall SetAnimationFactor(const int Value);
	void __fastcall SetFocusColor(const Graphics::TColor Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetFillDisabled(const Gdipfill::TGDIPFill* Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	Types::TRect __fastcall InsideRect();
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall DrawBackGround(Advgdip::TGPGraphics* g);
	void __fastcall DrawButton(Advgdip::TGPGraphics* g);
	void __fastcall DrawCaption(Advgdip::TGPGraphics* g, TAdvSmoothSliderAppearance* app, const Advgdip::TGPRectF &r);
	void __fastcall DrawOn(Advgdip::TGPGraphics* g);
	void __fastcall DrawOff(Advgdip::TGPGraphics* g);
	void __fastcall DoSlide(System::TObject* Sender);
	Advgdip::TGPRectF __fastcall GetButtonRect();
	
public:
	__fastcall virtual TAdvSmoothSlider(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothSlider(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall DoEnter(void);
	void __fastcall SaveToTheme(AnsiString FileName);
	void __fastcall LoadFromTheme(AnsiString FileName);
	AnsiString __fastcall GetThemeID();
	
__published:
	__property int AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor, default=15};
	__property TAdvSmoothSliderAppearance* AppearanceOn = {read=FAppearanceOn, write=SetAppearanceOn};
	__property TAdvSmoothSliderAppearance* AppearanceOff = {read=FAppearanceOff, write=SetAppearanceOff};
	__property TAdvSmoothSliderButtonAppearance* ButtonAppearance = {read=FButtonAppearance, write=SetButtonAppearance};
	__property double ValueOn = {read=FValueOn, write=SetValueOn};
	__property double ValueOff = {read=FValueOff, write=SetValueOff};
	__property TAdvSmoothSliderState State = {read=FState, write=SetState, default=0};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property Graphics::TColor FocusColor = {read=FFocusColor, write=SetFocusColor, default=0};
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property Gdipfill::TGDIPFill* FillDisabled = {read=FFillDisabled, write=SetFillDisabled};
	__property TAdvSmoothStateChanged OnStateChanged = {read=FOnStateChanged, write=FOnStateChanged};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property PopupMenu ;
	__property TabOrder  = {default=-1};
	__property Enabled  = {default=1};
	__property ParentShowHint  = {default=1};
	__property ShowHint ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnMouseDown ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnResize ;
	__property OnDblClick ;
	__property OnClick ;
	__property OnEnter ;
	__property OnExit ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnStartDrag ;
	__property OnEndDrag ;
	__property Visible  = {default=1};
	__property TabStop  = {default=1};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothSlider(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
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


class PASCALIMPLEMENTATION TAdvSmoothSliderButtonAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothSlider* FOwner;
	Classes::TNotifyEvent FOnChange;
	int FSize;
	Gdipfill::TGDIPFill* FFill;
	Gdipfill::TGDIPFill* FFillDisabled;
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetFillDisabled(const Gdipfill::TGDIPFill* Value);
	
public:
	__fastcall TAdvSmoothSliderButtonAppearance(TAdvSmoothSlider* AOwner);
	__fastcall virtual ~TAdvSmoothSliderButtonAppearance(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
protected:
	void __fastcall Changed(void);
	void __fastcall FillChanged(System::TObject* Sender);
	
__published:
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property Gdipfill::TGDIPFill* FillDisabled = {read=FFillDisabled, write=SetFillDisabled};
	__property int Size = {read=FSize, write=SetSize, default=40};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x2;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x2;

}	/* namespace Advsmoothslider */
using namespace Advsmoothslider;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothslider