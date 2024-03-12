// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothpopup.pas' rev: 11.00

#ifndef AdvsmoothpopupHPP
#define AdvsmoothpopupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Gdippicturecontainer.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothpopup
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothPopupFormPlaceHolder;
class DELPHICLASS TAdvSmoothPopup;
class DELPHICLASS TPopupButton;
#pragma option push -b-
enum TPopupButtonPosition { bpTopLeft, bpTopRight, bpBottomLeft, bpBottomRight };
#pragma option pop

class PASCALIMPLEMENTATION TPopupButton : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	Advgdip::TGPRectF FRect;
	Advgdip::TGPRectF FTextR;
	TAdvSmoothPopup* FOwner;
	AnsiString FCaption;
	bool FEnabled;
	Advgdip::TAdvGDIPPicture* FImage;
	AnsiString FImageName;
	int FImageIndex;
	bool FVisible;
	TPopupButtonPosition FPosition;
	int FTag;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetImage(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetImageName(const AnsiString Value);
	void __fastcall SetPosition(const TPopupButtonPosition Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	void __fastcall ImageChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TPopupButton(Classes::TCollection* Collection);
	__fastcall virtual ~TPopupButton(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property Advgdip::TAdvGDIPPicture* Image = {read=FImage, write=SetImage};
	__property AnsiString ImageName = {read=FImageName, write=SetImageName};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property TPopupButtonPosition Position = {read=FPosition, write=SetPosition, default=0};
	__property int Tag = {read=FTag, write=FTag, default=0};
};


class DELPHICLASS TAdvSmoothPopupForm;
class PASCALIMPLEMENTATION TAdvSmoothPopupForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	Advgdip::TGPBitmap* FMainBuffer;
	TAdvSmoothPopup* FPopup;
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMouseActivate(Messages::TWMMouseActivate &Message);
	HIDESBASE MESSAGE void __fastcall WMActivate(Messages::TMessage &Message);
	
protected:
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DoCreate(void);
	virtual void __fastcall DoDestroy(void);
	DYNAMIC void __fastcall Paint(void);
	void __fastcall Draw(Advgdip::TGPGraphics* Graphics);
	void __fastcall CreateMainBuffer(void);
	void __fastcall DestroyMainBuffer(void);
	void __fastcall ClearBuffer(Advgdip::TGPGraphics* Graphics);
	Advgdip::TGPGraphics* __fastcall CreateGraphics(void);
	void __fastcall SetLayeredWindow(void);
	void __fastcall UpdateLayered(void);
	void __fastcall UpdateMainWindow(void);
	void __fastcall UpdateWindow(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	void __fastcall Init(void);
	__fastcall virtual TAdvSmoothPopupForm(Classes::TComponent* AOwner, int Dummy);
	__property TAdvSmoothPopup* Popup = {read=FPopup, write=FPopup};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvSmoothPopupForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvSmoothPopupForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothPopupForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TAdvSmoothPopupArrowPosition { paLeftTop, paLeftCenter, paLeftBottom, paTopLeft, paTopCenter, paTopRight, paRightTop, paRightCenter, paRightBottom, paBottomLeft, paBottomCenter, paBottomRight };
#pragma option pop

class DELPHICLASS TPopupButtons;
class PASCALIMPLEMENTATION TPopupButtons : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TPopupButton* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvSmoothPopup* FOwner;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TPopupButton* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TPopupButton* Value);
	
protected:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TPopupButtons(TAdvSmoothPopup* AOwner);
	__property TPopupButton* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TPopupButton* __fastcall Add(void);
	HIDESBASE TPopupButton* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Delete(int Index);
	HIDESBASE void __fastcall Clear(void);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TPopupButtons(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TButtonClick)(System::TObject* Sender, int Index);

typedef void __fastcall (__closure *TPopupEvent)(System::TObject* Sender);

#pragma option push -b-
enum TAdvSmoothPopupDirection { pdLeftTop, pdLeftCenter, pdLeftBottom, pdTopLeft, pdTopCenter, pdTopRight, pdRightTop, pdRightCenter, pdRightBottom, pdBottomLeft, pdBottomCenter, pdBottomRight };
#pragma option pop

class PASCALIMPLEMENTATION TAdvSmoothPopup : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Advgdip::TGPRectF FFooterR;
	Advgdip::TGPRectF FheaderR;
	Advgdip::TGPRectF FHeaderCaptionRect;
	Advgdip::TGPRectF FFooterCaptionRect;
	bool FClosing;
	int FFocusedElement;
	TPopupButton* FHoveredElement;
	TPopupButton* FDownElement;
	Controls::TWinControl* FPrevParent;
	Controls::TAlign FPrevAlign;
	int FPrevLeft;
	int FPrevTop;
	int FPrevWidth;
	int FPrevHeight;
	TAdvSmoothPopupFormPlaceHolder* frmC;
	TAdvSmoothPopupForm* frm;
	Graphics::TColor FBorderColor;
	Graphics::TColor FColor;
	Graphics::TColor FShadowColor;
	int FHeaderHeight;
	int FWidth;
	int FFooterHeight;
	int FHeight;
	double FShadowIntensity;
	Controls::TControl* FControl;
	int FArrowSize;
	TAdvSmoothPopupArrowPosition FArrowPosition;
	bool FAnimation;
	TPopupButtons* FButtons;
	Gdippicturecontainer::TGDIPPictureContainer* FPictureContainer;
	Imglist::TCustomImageList* FImageList;
	Graphics::TColor FButtonDownColor;
	Graphics::TColor FButtonDisabledColor;
	Graphics::TColor FButtonColor;
	Graphics::TFont* FButtonFont;
	Graphics::TColor FButtonHoverColor;
	bool FCloseOnDeactivate;
	int FShadowSize;
	TButtonClick FOnButtonClick;
	AnsiString FFooterCaption;
	AnsiString FHeaderCaption;
	Graphics::TFont* FFooterFont;
	Graphics::TFont* FHeaderFont;
	Byte FOpacity;
	TPopupEvent FOnShow;
	TPopupEvent FOnClose;
	Classes::TNotifyEvent FOnBeforeClose;
	bool FVisible;
	int FAnimationFactor;
	bool FAutoPositioning;
	bool FAutoSize;
	Forms::TCloseQueryEvent FOnCloseQuery;
	Forms::TFormStyle FFormStyle;
	bool FInnerBorder;
	Graphics::TColor FInnerBorderColor;
	int FInnerBorderWidth;
	Classes::TNotifyEvent FOnHeaderClick;
	Classes::TNotifyEvent FOnFooterClick;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	void __fastcall SetHeaderHeight(const int Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetFooterHeight(const int Value);
	void __fastcall SetShadowIntensity(const double Value);
	void __fastcall SetControl(const Controls::TControl* Value);
	void __fastcall SetArrowPosition(const TAdvSmoothPopupArrowPosition Value);
	void __fastcall SetArrowSize(const int Value);
	void __fastcall SetAnimation(const bool Value);
	void __fastcall SetButtons(const TPopupButtons* Value);
	void __fastcall SetButtonColor(const Graphics::TColor Value);
	void __fastcall SetButtonDisabledColor(const Graphics::TColor Value);
	void __fastcall SetButtonDownColor(const Graphics::TColor Value);
	void __fastcall SetButtonFont(const Graphics::TFont* Value);
	void __fastcall SetButtonHoverColor(const Graphics::TColor Value);
	void __fastcall SetCloseOnDeactivate(const bool Value);
	void __fastcall SetShadowSize(const int Value);
	void __fastcall SetFooterCaption(const AnsiString Value);
	void __fastcall SetHeaderCaption(const AnsiString Value);
	void __fastcall SetFooterFont(const Graphics::TFont* Value);
	void __fastcall SetHeaderFont(const Graphics::TFont* Value);
	void __fastcall SetOpacity(const Byte Value);
	void __fastcall SetAnimationFactor(const int Value);
	void __fastcall SetAutoPositioning(const bool Value);
	void __fastcall SetAutoSize(const bool Value);
	void __fastcall SetFormStyle(const Forms::TFormStyle Value);
	void __fastcall SetInnerBorder(const bool Value);
	void __fastcall SetInnerBorderColor(const Graphics::TColor Value);
	void __fastcall SetInnerBorderWidth(const int Value);
	
protected:
	void __fastcall Changed(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall CloseWithAnimation(void);
	void __fastcall ShowWithAnimation(void);
	void __fastcall ButtonsChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall DoButtonClick(System::TObject* Sender, int AIndex);
	void __fastcall InitializeRects(void);
	void __fastcall FormDeactivate(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall FormOrigClose(System::TObject* Sender, Forms::TCloseAction &Action);
	int __fastcall GetHeight(void);
	int __fastcall GetWidth(void);
	
public:
	__fastcall virtual TAdvSmoothPopup(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothPopup(void);
	void __fastcall DoPopup(int X, int Y, bool UsedControl);
	void __fastcall PopupAt(int X, int Y);
	void __fastcall PopupAtControl(Controls::TWinControl* Control, TAdvSmoothPopupDirection Direction);
	void __fastcall ClosePopup(void);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	void __fastcall DrawPopup(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R);
	void __fastcall DrawButtons(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R);
	void __fastcall DrawHeaderAndFooter(Advgdip::TGPGraphics* g);
	TPopupButton* __fastcall ButtonAtXY(int pX, int pY);
	void __fastcall SetGlobalColor(Graphics::TColor AColor);
	int __fastcall GetMaxMarginSize(void);
	void __fastcall SetDefaultStyle(void);
	
__published:
	__property Forms::TFormStyle FormStyle = {read=FFormStyle, write=SetFormStyle, nodefault};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=0};
	__property bool AutoPositioning = {read=FAutoPositioning, write=SetAutoPositioning, default=0};
	__property int AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor, default=1};
	__property bool Visible = {read=FVisible, nodefault};
	__property Byte Opacity = {read=FOpacity, write=SetOpacity, default=175};
	__property bool CloseOnDeactivate = {read=FCloseOnDeactivate, write=SetCloseOnDeactivate, default=1};
	__property bool Animation = {read=FAnimation, write=SetAnimation, default=1};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=2954758};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, default=2954758};
	__property int ShadowSize = {read=FShadowSize, write=SetShadowSize, default=20};
	__property double ShadowIntensity = {read=FShadowIntensity, write=SetShadowIntensity};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=2954758};
	__property bool InnerBorder = {read=FInnerBorder, write=SetInnerBorder, default=1};
	__property Graphics::TColor InnerBorderColor = {read=FInnerBorderColor, write=SetInnerBorderColor, default=0};
	__property int InnerBorderWidth = {read=FInnerBorderWidth, write=SetInnerBorderWidth, default=1};
	__property int Height = {read=FHeight, write=SetHeight, default=300};
	__property int HeaderHeight = {read=FHeaderHeight, write=SetHeaderHeight, default=35};
	__property int FooterHeight = {read=FFooterHeight, write=SetFooterHeight, default=35};
	__property int Width = {read=FWidth, write=SetWidth, default=250};
	__property TAdvSmoothPopupArrowPosition ArrowPosition = {read=FArrowPosition, write=SetArrowPosition, default=10};
	__property int ArrowSize = {read=FArrowSize, write=SetArrowSize, default=17};
	__property Controls::TControl* Control = {read=FControl, write=SetControl};
	__property TPopupButtons* Buttons = {read=FButtons, write=SetButtons};
	__property Graphics::TFont* ButtonFont = {read=FButtonFont, write=SetButtonFont};
	__property Graphics::TColor ButtonColor = {read=FButtonColor, write=SetButtonColor, default=2954758};
	__property Graphics::TColor ButtonHoverColor = {read=FButtonHoverColor, write=SetButtonHoverColor, default=11227670};
	__property Graphics::TColor ButtonDownColor = {read=FButtonDownColor, write=SetButtonDownColor, default=7878928};
	__property Graphics::TColor ButtonDisabledColor = {read=FButtonDisabledColor, write=SetButtonDisabledColor, default=12632256};
	__property Gdippicturecontainer::TGDIPPictureContainer* PictureContainer = {read=FPictureContainer, write=FPictureContainer};
	__property Imglist::TCustomImageList* ImageList = {read=FImageList, write=FImageList};
	__property TButtonClick OnButtonClick = {read=FOnButtonClick, write=FOnButtonClick};
	__property Classes::TNotifyEvent OnHeaderClick = {read=FOnHeaderClick, write=FOnHeaderClick};
	__property Classes::TNotifyEvent OnFooterClick = {read=FOnFooterClick, write=FOnFooterClick};
	__property AnsiString HeaderCaption = {read=FHeaderCaption, write=SetHeaderCaption};
	__property AnsiString FooterCaption = {read=FFooterCaption, write=SetFooterCaption};
	__property Graphics::TFont* FooterFont = {read=FFooterFont, write=SetFooterFont};
	__property Graphics::TFont* HeaderFont = {read=FHeaderFont, write=SetHeaderFont};
	__property TPopupEvent OnShow = {read=FOnShow, write=FOnShow};
	__property TPopupEvent OnClose = {read=FOnClose, write=FOnClose};
	__property Classes::TNotifyEvent OnBeforeClose = {read=FOnBeforeClose, write=FOnBeforeClose};
	__property Forms::TCloseQueryEvent OnCloseQuery = {read=FOnCloseQuery, write=FOnCloseQuery};
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


class PASCALIMPLEMENTATION TAdvSmoothPopupFormPlaceHolder : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	TAdvSmoothPopup* FOwner;
	
public:
	void __fastcall Init(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvSmoothPopupFormPlaceHolder(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvSmoothPopupFormPlaceHolder(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvSmoothPopupFormPlaceHolder(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothPopupFormPlaceHolder(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x2;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advsmoothpopup */
using namespace Advsmoothpopup;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothpopup
