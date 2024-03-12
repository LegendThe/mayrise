// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothgauge.pas' rev: 11.00

#ifndef AdvsmoothgaugeHPP
#define AdvsmoothgaugeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothgauge
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TCalibrationValueType { cvNone, cvSmall, cvLarge };
#pragma option pop

struct TCalibrationValue
{
	
public:
	double x;
	double y;
	double x1;
	double y1;
	double tx;
	double ty;
	TCalibrationValueType ValueType;
	double rv;
} ;

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


typedef DynamicArray<Advgdip::TGPPointF >  TArrayOfPointF;

#pragma option push -b-
enum TAdvSmoothGaugeThresholdKind { tkAngle, tkValue };
#pragma option pop

#pragma option push -b-
enum TAdvSmoothGaugeTextRenderingHint { tAntiAlias, tAntiAliasGridFit, tClearType };
#pragma option pop

class DELPHICLASS TAdvSmoothGaugeThreshold;
class DELPHICLASS TAdvSmoothGauge;
class DELPHICLASS TAdvSmoothGaugeDigit;
class PASCALIMPLEMENTATION TAdvSmoothGaugeDigit : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor fColor;
	Graphics::TColor fBackgroundColor;
	int fBackgroundOpacity;
	Classes::TNotifyEvent fOnChange;
	bool FVisible;
	Classes::TAlignment FAlignment;
	void __fastcall SetBackGroundColor(const Graphics::TColor Value);
	void __fastcall SetBackGroundOpacity(const int Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetAlignment(const Classes::TAlignment Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeDigit(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=fColor, write=SetColor, default=64636};
	__property Graphics::TColor BackGroundColor = {read=fBackgroundColor, write=SetBackGroundColor, default=8421504};
	__property int BackGroundOpacity = {read=fBackgroundOpacity, write=SetBackGroundOpacity, default=30};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=2};
	__property Classes::TNotifyEvent OnChange = {read=fOnChange, write=fOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeDigit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothGaugeOuterCircle;
class PASCALIMPLEMENTATION TAdvSmoothGaugeOuterCircle : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	double FWidth;
	int fOpacity;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	void __fastcall SetWidth(const double Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeOuterCircle(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=9470064};
	__property double Width = {read=FWidth, write=SetWidth};
	__property int Opacity = {read=fOpacity, write=SetOpacity, default=100};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeOuterCircle(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothGaugeInnerCircle;
class DELPHICLASS TAdvSmoothGaugeGloss;
class PASCALIMPLEMENTATION TAdvSmoothGaugeGloss : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	int FOpacity;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeGloss(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16777215};
	__property int Opacity = {read=FOpacity, write=SetOpacity, default=72};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeGloss(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvSmoothGaugeInnerCircle : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	int fOpacity;
	TAdvSmoothGaugeGloss* FGloss;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetGloss(const TAdvSmoothGaugeGloss* Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall GlossChanged(System::TObject* Sender);
	
public:
	__fastcall TAdvSmoothGaugeInnerCircle(TAdvSmoothGauge* AOwner);
	__fastcall virtual ~TAdvSmoothGaugeInnerCircle(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16711680};
	__property int Opacity = {read=fOpacity, write=SetOpacity, default=150};
	__property TAdvSmoothGaugeGloss* Gloss = {read=FGloss, write=SetGloss};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


class DELPHICLASS TAdvSmoothGaugeOuterRim;
class PASCALIMPLEMENTATION TAdvSmoothGaugeOuterRim : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	int FWidth;
	int fOpacity;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	void __fastcall SetWidth(const int Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeOuterRim(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=9470064};
	__property int Opacity = {read=fOpacity, write=SetOpacity, default=255};
	__property int Width = {read=FWidth, write=SetWidth, nodefault};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeOuterRim(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothGaugeNeedle;
class PASCALIMPLEMENTATION TAdvSmoothGaugeNeedle : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	Graphics::TColor FShineColor;
	Graphics::TColor FShineColorTo;
	Graphics::TColor FOuterCenterColor;
	Graphics::TColor FOuterCenterColorTo;
	int FOuterCenterOpacity;
	Graphics::TColor FInnerCenterColor;
	Graphics::TColor FInnerCenterColorTo;
	int FInnerCenterOpacity;
	Classes::TNotifyEvent FOnchange;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetInnerCenterColor(const Graphics::TColor Value);
	void __fastcall SetInnerCenterColorTo(const Graphics::TColor Value);
	void __fastcall SetInnerCenterOpacity(const int Value);
	void __fastcall SetOuterCenterColor(const Graphics::TColor Value);
	void __fastcall SetOuterCenterColorTo(const Graphics::TColor Value);
	void __fastcall SetOuterCenterOpacity(const int Value);
	void __fastcall SetShineColor(const Graphics::TColor Value);
	void __fastcall SetShineColorTo(const Graphics::TColor Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeNeedle(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=64636};
	__property Graphics::TColor ShineColor = {read=FShineColor, write=SetShineColor, default=64636};
	__property Graphics::TColor ShineColorTo = {read=FShineColorTo, write=SetShineColorTo, default=13882323};
	__property Graphics::TColor OuterCenterColor = {read=FOuterCenterColor, write=SetOuterCenterColor, default=16711680};
	__property Graphics::TColor OuterCenterColorTo = {read=FOuterCenterColorTo, write=SetOuterCenterColorTo, default=16711680};
	__property int OuterCenterOpacity = {read=FOuterCenterOpacity, write=SetOuterCenterOpacity, default=100};
	__property Graphics::TColor InnerCenterColor = {read=FInnerCenterColor, write=SetInnerCenterColor, default=9109504};
	__property Graphics::TColor InnerCenterColorTo = {read=FInnerCenterColorTo, write=SetInnerCenterColorTo, default=9109504};
	__property int InnerCenterOpacity = {read=FInnerCenterOpacity, write=SetInnerCenterOpacity, default=255};
	__property Classes::TNotifyEvent OnChange = {read=FOnchange, write=FOnchange};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeNeedle(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothGaugeArc;
class PASCALIMPLEMENTATION TAdvSmoothGaugeArc : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	double FWidth;
	int FOpacity;
	int FStartAngle;
	int FStopAngle;
	TAdvSmoothGaugeThreshold* FThreshold;
	Classes::TNotifyEvent FOnChange;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	void __fastcall SetStartAngle(const int Value);
	void __fastcall SetStopAngle(const int Value);
	void __fastcall SetThreshold(const TAdvSmoothGaugeThreshold* Value);
	void __fastcall SetWidth(const double Value);
	int __fastcall GetStartAngle(void);
	int __fastcall GetStopAngle(void);
	
protected:
	void __fastcall Changed(void);
	void __fastcall ThresholdChanged(System::TObject* Sender);
	
public:
	__fastcall TAdvSmoothGaugeArc(TAdvSmoothGauge* AOwner);
	__fastcall virtual ~TAdvSmoothGaugeArc(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=9109504};
	__property double Width = {read=FWidth, write=SetWidth};
	__property int Opacity = {read=FOpacity, write=SetOpacity, default=200};
	__property int StartAngle = {read=GetStartAngle, write=SetStartAngle, default=135};
	__property int StopAngle = {read=GetStopAngle, write=SetStopAngle, default=405};
	__property TAdvSmoothGaugeThreshold* Threshold = {read=FThreshold, write=SetThreshold};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
};


typedef void __fastcall (__closure *TAdvSmoothGaugeValueChanged)(System::TObject* Sender, double value);

#pragma option push -b-
enum TAdvSmoothGaugeNeedleType { ntPointer, ntSelector };
#pragma option pop

class DELPHICLASS TAdvSmoothGaugeSections;
class DELPHICLASS TAdvSmoothGaugeSection;
class PASCALIMPLEMENTATION TAdvSmoothGaugeSections : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TAdvSmoothGaugeSection* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvSmoothGauge* FOwner;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TAdvSmoothGaugeSection* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TAdvSmoothGaugeSection* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TAdvSmoothGaugeSections(TAdvSmoothGauge* AOwner);
	HIDESBASE TAdvSmoothGaugeSection* __fastcall Add(void);
	HIDESBASE TAdvSmoothGaugeSection* __fastcall Insert(int Index);
	__property TAdvSmoothGaugeSection* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE void __fastcall Delete(int Index);
	
__published:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeSections(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TAdvSmoothGaugeDisplayValue)(System::TObject* Sender, double &value);

typedef void __fastcall (__closure *TAdvSmoothGaugeGetValueText)(System::TObject* Sender, double value, AnsiString &str);

class DELPHICLASS TAdvSmoothGaugeNeedles;
class DELPHICLASS TAdvSmoothGaugeNeedleItem;
class PASCALIMPLEMENTATION TAdvSmoothGaugeNeedles : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TAdvSmoothGaugeNeedleItem* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvSmoothGauge* FOwner;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TAdvSmoothGaugeNeedleItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TAdvSmoothGaugeNeedleItem* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TAdvSmoothGaugeNeedles(TAdvSmoothGauge* AOwner);
	HIDESBASE TAdvSmoothGaugeNeedleItem* __fastcall Add(void);
	HIDESBASE TAdvSmoothGaugeNeedleItem* __fastcall Insert(int Index);
	__property TAdvSmoothGaugeNeedleItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE void __fastcall Delete(int Index);
	
__published:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeNeedles(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvSmoothGauge : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FMetroStyle;
	bool doAnimation;
	bool FFocused;
	double FSta;
	double FSwpa;
	Advgdip::TGPRectF Frg;
	TCalibrationValue FCalibrationValues[1001];
	bool FDesignTime;
	Extctrls::TTimer* FanimationTimer;
	double fminValue;
	double fmaxValue;
	double fcurrentValue;
	double FcurrentValueTo;
	AnsiString FValueFormat;
	int fnoOfDivisions;
	int fnoOfSubDivisions;
	AnsiString fdialText;
	int fxp;
	int fyp;
	int fwidth;
	int fheight;
	Advgdip::TGPBitmap* fbackgroundImg;
	Advgdip::TGPRectF frectImg;
	Graphics::TFont* fFont;
	Graphics::TFont* FValueFont;
	TAdvSmoothGaugeDigit* FDigit;
	TAdvSmoothGaugeOuterCircle* FOuterCircle;
	TAdvSmoothGaugeInnerCircle* FInnerCircle;
	TAdvSmoothGaugeOuterRim* FOuterRim;
	TAdvSmoothGaugeNeedle* FNeedle;
	TAdvSmoothGaugeArc* FArc;
	int FSubDivWidth;
	int FDivWidth;
	Graphics::TColor fSubDivColor;
	Graphics::TColor fDivColor;
	bool FAnimation;
	TAdvSmoothGaugeValueChanged FOnValueChanged;
	int FAnimationFactor;
	TAdvSmoothGaugeNeedleType FNeedleType;
	TAdvSmoothGaugeSections* FSections;
	TAdvSmoothGaugeDisplayValue FOnDisplayValue;
	Classes::TNotifyEvent FOnChange;
	bool FShowValues;
	TAdvSmoothGaugeGetValueText FOnGetValueText;
	TAdvSmoothGaugeTextRenderingHint FTextRendering;
	int FCircleStartValue;
	int FCircleEndValue;
	TAdvSmoothGaugeNeedles* FExtraNeedles;
	bool FEqualDimensions;
	bool FLogaritchmic;
	int FLogaritchmicBase;
	void __fastcall SetDialText(const AnsiString Value);
	void __fastcall SetMaxValue(const double Value);
	void __fastcall SetMinValue(const double Value);
	void __fastcall SetNoOfDivisions(const int Value);
	void __fastcall SetNoOfSubDivisions(const int Value);
	void __fastcall SetValue(const double Value);
	HIDESBASE void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetValueFont(const Graphics::TFont* Value);
	void __fastcall SetValueFormat(const AnsiString Value);
	void __fastcall SetDigit(const TAdvSmoothGaugeDigit* Value);
	void __fastcall SetInnerCircle(const TAdvSmoothGaugeInnerCircle* Value);
	void __fastcall SetOuterCircle(const TAdvSmoothGaugeOuterCircle* Value);
	void __fastcall SetOuterRim(const TAdvSmoothGaugeOuterRim* Value);
	void __fastcall SetNeedle(const TAdvSmoothGaugeNeedle* Value);
	void __fastcall SetArc(const TAdvSmoothGaugeArc* Value);
	void __fastcall SetDivColor(const Graphics::TColor Value);
	void __fastcall SetDivWidth(const int Value);
	void __fastcall SetSubDivWidth(const int Value);
	void __fastcall SetSubDivColor(const Graphics::TColor Value);
	void __fastcall SetAnimation(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetAnimationFactor(const int Value);
	void __fastcall SetNeedleType(const TAdvSmoothGaugeNeedleType Value);
	void __fastcall SetSections(const TAdvSmoothGaugeSections* Value);
	void __fastcall SetShowValues(const bool Value);
	void __fastcall SetTextRendering(const TAdvSmoothGaugeTextRenderingHint Value);
	void __fastcall SetCircleEndValue(const int Value);
	void __fastcall SetCircleStartValue(const int Value);
	void __fastcall SetExtraNeedles(const TAdvSmoothGaugeNeedles* Value);
	void __fastcall SetEqualDimensions(const bool Value);
	void __fastcall SetLogarithmic(const bool Value);
	void __fastcall SetLogarithmicBase(const int Value);
	double __fastcall GetValue(void);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	HIDESBASE void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall DigitChanged(System::TObject* Sender);
	void __fastcall OuterCircleChanged(System::TObject* Sender);
	void __fastcall InnerCircleChanged(System::TObject* Sender);
	void __fastcall OuterRimChanged(System::TObject* Sender);
	void __fastcall NeedleChanged(System::TObject* Sender);
	void __fastcall ArcChanged(System::TObject* Sender);
	void __fastcall SectionsChanged(System::TObject* Sender);
	void __fastcall NeedlesChanged(System::TObject* Sender);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	void __fastcall AnimateGauge(System::TObject* Sender);
	void __fastcall DrawPointer(Advgdip::TGPGraphics* gr, Graphics::TColor col, Graphics::TColor shncol, Graphics::TColor shncolto, double cx, double cy, double value);
	void __fastcall Draw(Advgdip::TGPGraphics* gb);
	void __fastcall DrawGloss(Advgdip::TGPGraphics* g);
	void __fastcall DrawCenterPoint(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &rect, int cX, int cY);
	void __fastcall DrawCalibration(Advgdip::TGPGraphics* g);
	void __fastcall DrawSections(Advgdip::TGPGraphics* g);
	void __fastcall DrawString(Advgdip::TGPGraphics* g, WideString value, Graphics::TFont* ft, Advgdip::TGPBrush* Brush, const Advgdip::TGPPointF &pt, Advgdip::TGPStringFormat* stringformat, bool DialDraw);
	void __fastcall DisplayNumber(Advgdip::TGPGraphics* g, double number, const Advgdip::TGPRectF &drect);
	void __fastcall DrawDigit(Advgdip::TGPGraphics* g, int number, const Advgdip::TGPPointF &position, bool dp, int h);
	void __fastcall CalculateImageRect(void);
	void __fastcall CalculateCalibration(void);
	void __fastcall CalculateArcThresHold(void);
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall DoEnter(void);
	double __fastcall XYToScale(int X, int Y);
	double __fastcall GetRadian(double theta);
	double __fastcall GetX(double x, double width);
	double __fastcall GetY(double y, double height);
	bool __fastcall IsNumberAvailable(int Number, int const * listOfNumbers, const int listOfNumbers_Size);
	int __fastcall GetVersionNr(void);
	double __fastcall GetAngle(double Value);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	TArrayOfPointF __fastcall CalcPosition(double Value);
	bool __fastcall PtInPoly(const TArrayOfPointF Points, int X, int Y);
	void __fastcall DrawFocus(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &r);
	int __fastcall GetWidth(void);
	int __fastcall GetHeight(void);
	
public:
	__fastcall virtual TAdvSmoothGauge(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall virtual ~TAdvSmoothGauge(void);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall Loaded(void);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	void __fastcall SaveToTheme(AnsiString FileName);
	void __fastcall LoadFromTheme(AnsiString FileName);
	AnsiString __fastcall GetThemeID();
	void __fastcall DrawGauge(Graphics::TCanvas* ACanvas, const Types::TRect &r);
	void __fastcall DrawGaugeGDIP(Advgdip::TGPGraphics* Graphics, const Types::TRect &r);
	void __fastcall SaveToImage(AnsiString Filename, int ImageWidth, int ImageHeight, Advgdip::TImageType ImageType = (Advgdip::TImageType)(0x1), int ImageQualityPercentage = 0x64);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	void __fastcall DoValueChanged(System::TObject* Sender, double value);
	
__published:
	__property bool EqualDimensions = {read=FEqualDimensions, write=SetEqualDimensions, default=1};
	__property int AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor, default=5};
	__property double MinimumValue = {read=fminValue, write=SetMinValue};
	__property double MaximumValue = {read=fmaxValue, write=SetMaxValue};
	__property double Value = {read=GetValue, write=SetValue};
	__property TAdvSmoothGaugeDigit* Digit = {read=FDigit, write=SetDigit};
	__property TAdvSmoothGaugeOuterCircle* OuterCircle = {read=FOuterCircle, write=SetOuterCircle};
	__property TAdvSmoothGaugeInnerCircle* InnerCircle = {read=FInnerCircle, write=SetInnerCircle};
	__property TAdvSmoothGaugeOuterRim* OuterRim = {read=FOuterRim, write=SetOuterRim};
	__property TAdvSmoothGaugeNeedle* Needle = {read=FNeedle, write=SetNeedle};
	__property TAdvSmoothGaugeArc* Arc = {read=FArc, write=SetArc};
	__property int DivisionCount = {read=fnoOfDivisions, write=SetNoOfDivisions, default=10};
	__property int SubDivisionCount = {read=fnoOfSubDivisions, write=SetNoOfSubDivisions, default=3};
	__property Graphics::TColor DivisionColor = {read=fDivColor, write=SetDivColor, default=64636};
	__property Graphics::TColor SubDivisionColor = {read=fSubDivColor, write=SetSubDivColor, default=64636};
	__property int DivisionWidth = {read=FDivWidth, write=SetDivWidth, default=5};
	__property int SubDivisionWidth = {read=FSubDivWidth, write=SetSubDivWidth, default=2};
	__property AnsiString DialText = {read=fdialText, write=SetDialText};
	__property Graphics::TFont* Font = {read=fFont, write=SetFont};
	__property Graphics::TFont* ValueFont = {read=FValueFont, write=SetValueFont};
	__property AnsiString ValueFormat = {read=FValueFormat, write=SetValueFormat};
	__property bool ShowValues = {read=FShowValues, write=SetShowValues, default=1};
	__property bool Animation = {read=FAnimation, write=SetAnimation, default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property TAdvSmoothGaugeNeedleType NeedleType = {read=FNeedleType, write=SetNeedleType, default=0};
	__property TAdvSmoothGaugeSections* Sections = {read=FSections, write=SetSections};
	__property TAdvSmoothGaugeTextRenderingHint TextRendering = {read=FTextRendering, write=SetTextRendering, default=2};
	__property int CircleStartValue = {read=FCircleStartValue, write=SetCircleStartValue, default=0};
	__property int CircleEndValue = {read=FCircleEndValue, write=SetCircleEndValue, default=360};
	__property bool Logarithmic = {read=FLogaritchmic, write=SetLogarithmic, default=0};
	__property int LogarithmicBase = {read=FLogaritchmicBase, write=SetLogarithmicBase, default=10};
	__property TAdvSmoothGaugeValueChanged OnValueChanged = {read=FOnValueChanged, write=FOnValueChanged};
	__property TAdvSmoothGaugeDisplayValue OnDisplayValue = {read=FOnDisplayValue, write=FOnDisplayValue};
	__property TAdvSmoothGaugeGetValueText OnGetValueText = {read=FOnGetValueText, write=FOnGetValueText};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TAdvSmoothGaugeNeedles* ExtraNeedles = {read=FExtraNeedles, write=SetExtraNeedles};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property PopupMenu ;
	__property TabOrder  = {default=-1};
	__property ParentShowHint  = {default=1};
	__property ShowHint ;
	__property OnKeyUp ;
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
	__property Enabled  = {default=1};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothGauge(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
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


class PASCALIMPLEMENTATION TAdvSmoothGaugeThreshold : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	int FOpacity;
	int FStartAngle;
	int FSweepAngle;
	double FCenter;
	int FSpan;
	Classes::TNotifyEvent FOnChange;
	double FStartValue;
	double FEndValue;
	TAdvSmoothGaugeThresholdKind FThresHoldKind;
	void __fastcall SetCenter(const double Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetOpacity(const int Value);
	void __fastcall SetSpan(const int Value);
	void __fastcall SetStartAngle(const int Value);
	void __fastcall SetSweepAngle(const int Value);
	void __fastcall SetEndValue(const double Value);
	void __fastcall SetStartValue(const double Value);
	void __fastcall SetThresHoldKind(const TAdvSmoothGaugeThresholdKind Value);
	int __fastcall GetStartAngle(void);
	int __fastcall GetSweepAngle(void);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TAdvSmoothGaugeThreshold(TAdvSmoothGauge* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=64636};
	__property int Opacity = {read=FOpacity, write=SetOpacity, default=200};
	__property double Center = {read=FCenter, write=SetCenter};
	__property int Span = {read=FSpan, write=SetSpan, default=25};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property int StartAngle = {read=GetStartAngle, write=SetStartAngle, default=135};
	__property int SweepAngle = {read=GetSweepAngle, write=SetSweepAngle, default=270};
	__property double StartValue = {read=FStartValue, write=SetStartValue};
	__property double EndValue = {read=FEndValue, write=SetEndValue};
	__property TAdvSmoothGaugeThresholdKind ThresholdKind = {read=FThresHoldKind, write=SetThresHoldKind, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvSmoothGaugeThreshold(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvSmoothGaugeNeedleItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	double FValue;
	Graphics::TColor FColor;
	Graphics::TColor FShineColor;
	Graphics::TColor FShineColorTo;
	void __fastcall SetValue(const double Value);
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetShineColor(const Graphics::TColor Value);
	void __fastcall SetShineColorTo(const Graphics::TColor Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	
public:
	__fastcall virtual TAdvSmoothGaugeNeedleItem(Classes::TCollection* Collection);
	__fastcall virtual ~TAdvSmoothGaugeNeedleItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=64636};
	__property Graphics::TColor ShineColor = {read=FShineColor, write=SetShineColor, default=64636};
	__property Graphics::TColor ShineColorTo = {read=FShineColorTo, write=SetShineColorTo, default=13882323};
	__property double Value = {read=FValue, write=SetValue};
};


#pragma option push -b-
enum TAdvSmoothGaugeSectionType { stCustomMargin, stBorder };
#pragma option pop

class PASCALIMPLEMENTATION TAdvSmoothGaugeSection : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TAdvSmoothGauge* FOwner;
	Graphics::TColor FColor;
	int fOpacity;
	TAdvSmoothGaugeGloss* FGloss;
	Classes::TNotifyEvent FOnChange;
	double FStartValue;
	double FEndValue;
	int FInnerMargin;
	int FOuterMargin;
	TAdvSmoothGaugeSectionType FSectionType;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetGloss(const TAdvSmoothGaugeGloss* Value);
	void __fastcall SetOpacity(const int Value);
	void __fastcall SetEndValue(const double Value);
	void __fastcall SetStartValue(const double Value);
	void __fastcall SetInnerMargin(const int Value);
	void __fastcall SetOuterMargin(const int Value);
	void __fastcall SetSectionType(const TAdvSmoothGaugeSectionType Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	void __fastcall GlossChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TAdvSmoothGaugeSection(Classes::TCollection* Collection);
	__fastcall virtual ~TAdvSmoothGaugeSection(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=16711680};
	__property int Opacity = {read=fOpacity, write=SetOpacity, default=150};
	__property TAdvSmoothGaugeGloss* Gloss = {read=FGloss, write=SetGloss};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property double StartValue = {read=FStartValue, write=SetStartValue};
	__property double EndValue = {read=FEndValue, write=SetEndValue};
	__property int OuterMargin = {read=FOuterMargin, write=SetOuterMargin, default=20};
	__property int InnerMargin = {read=FInnerMargin, write=SetInnerMargin, default=0};
	__property TAdvSmoothGaugeSectionType SectionType = {read=FSectionType, write=SetSectionType, default=0};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x2;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advsmoothgauge */
using namespace Advsmoothgauge;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothgauge
