// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothpageslider.pas' rev: 11.00

#ifndef AdvsmoothpagesliderHPP
#define AdvsmoothpagesliderHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Axctrls.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Gdippicturecontainer.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothpageslider
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TDbgList;
class PASCALIMPLEMENTATION TDbgList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	void * operator[](int Index) { return Items[Index]; }
	
private:
	void * __fastcall GetItemsEx(int Index);
	void __fastcall SetItemsEx(int Index, const void * Value);
	
public:
	__property void * Items[int Index] = {read=GetItemsEx, write=SetItemsEx/*, default*/};
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TDbgList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TDbgList(void) : Classes::TList() { }
	#pragma option pop
	
};


class DELPHICLASS TProWinControl;
class PASCALIMPLEMENTATION TProWinControl : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
public:
	#pragma option push -w-inl
	/* TWinControl.Create */ inline __fastcall virtual TProWinControl(Classes::TComponent* AOwner) : Controls::TWinControl(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TProWinControl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TProWinControl(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothPageShadow;
class DELPHICLASS TAdvSmoothPage;
class DELPHICLASS TAdvSmoothPageSlider;
class PASCALIMPLEMENTATION TAdvSmoothPage : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	int FDownX;
	int FDownY;
	TAdvSmoothPageShadow* FShadowForm;
	int FLeftTemp;
	bool FBlockUpdate;
	bool FAnimating;
	int FCurrentPos;
	bool FMetroStyle;
	bool FDesignTime;
	int FPageIndex;
	TAdvSmoothPageSlider* FPageSlider;
	bool FUpdatingParent;
	Gdipfill::TGDIPFill* FHeaderFill;
	bool FShowHeader;
	int FHeaderHeight;
	AnsiString FHeader;
	Gdipfill::TGDIPFill* FFooterFill;
	bool FShowFooter;
	int FFooterHeight;
	AnsiString FFooter;
	Gdipfill::TGDIPFill* FFill;
	Graphics::TFont* FFooterFont;
	Graphics::TFont* FHeaderFont;
	int FMinimumWidth;
	bool FUpdateFormBounds;
	Gdippicturecontainer::TGDIPPictureContainer* FPictureContainer;
	Imglist::TCustomImageList* FImageList;
	Graphics::TColor FShadowColor;
	Classes::TVerticalAlignment FHeaderVerticalAlignment;
	Classes::TAlignment FHeaderHorizontalAlignment;
	Classes::TAlignment FFooterHorizontalAlignment;
	Classes::TVerticalAlignment FFooterVerticalAlignment;
	MESSAGE void __fastcall WMMoving(Messages::TWMMoving &Message);
	MESSAGE void __fastcall WMEnterSizeMove(Messages::TMessage &Message);
	MESSAGE void __fastcall WMExitSizeMove(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	void __fastcall SetPageSlider(const TAdvSmoothPageSlider* Value);
	int __fastcall GetPageIndex(void);
	void __fastcall SetPageIndex(const int Value);
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetFooter(const AnsiString Value);
	void __fastcall SetFooterFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetFooterHeight(const int Value);
	void __fastcall SetHeader(const AnsiString Value);
	void __fastcall SetHeaderFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetHeaderHeight(const int Value);
	void __fastcall SetShowFooter(const bool Value);
	void __fastcall SetShowHeader(const bool Value);
	void __fastcall SetFooterFont(const Graphics::TFont* Value);
	void __fastcall SetHeaderFont(const Graphics::TFont* Value);
	void __fastcall SetMinimumWidth(const int Value);
	void __fastcall SetCurrentPos(const int Value);
	int __fastcall GetCurrentPos(void);
	void __fastcall SetImageList(const Imglist::TCustomImageList* Value);
	void __fastcall SetPictureContainer(const Gdippicturecontainer::TGDIPPictureContainer* Value);
	void __fastcall SetHeaderHorizontalAlignment(const Classes::TAlignment Value);
	void __fastcall SetHeaderVerticalAlignment(const Classes::TVerticalAlignment Value);
	void __fastcall SetFooterHorizontalAlignment(const Classes::TAlignment Value);
	void __fastcall SetFooterVerticalAlignment(const Classes::TVerticalAlignment Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	void __fastcall UpdateFormSize(void);
	void __fastcall FormHookInit(void);
	void __fastcall FormHookDone(void);
	virtual void __fastcall CreateWnd(void);
	__property int CurrentPos = {read=GetCurrentPos, write=SetCurrentPos, nodefault};
	int __fastcall GetPosTo(void);
	void __fastcall ObjectChanged(System::TObject* Sender);
	Advgdip::TGPRectF __fastcall GetHeaderRect();
	Advgdip::TGPRectF __fastcall GetFooterRect();
	Advgdip::TGPRectF __fastcall GetBackGroundRect();
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &ARect);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual void __fastcall Paint(void);
	virtual void __fastcall ReadState(Classes::TReader* Reader);
	void __fastcall DrawBackGround(Advgdip::TGPGraphics* g);
	void __fastcall DrawHeader(Advgdip::TGPGraphics* g);
	void __fastcall DrawFooter(Advgdip::TGPGraphics* g);
	void __fastcall DrawElement(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, Gdipfill::TGDIPFill* AFill, Graphics::TFont* AFont, AnsiString AText, bool AShow, Classes::TAlignment HAlign, Classes::TVerticalAlignment VAlign);
	void __fastcall ShowForm(void);
	
public:
	__fastcall virtual TAdvSmoothPage(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothPage(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	__property TAdvSmoothPageSlider* PageSlider = {read=FPageSlider, write=SetPageSlider};
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	
__published:
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=FShadowColor, default=0};
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property AnsiString Header = {read=FHeader, write=SetHeader};
	__property AnsiString Footer = {read=FFooter, write=SetFooter};
	__property Gdipfill::TGDIPFill* HeaderFill = {read=FHeaderFill, write=SetHeaderFill};
	__property Gdipfill::TGDIPFill* FooterFill = {read=FFooterFill, write=SetFooterFill};
	__property Graphics::TFont* HeaderFont = {read=FHeaderFont, write=SetHeaderFont};
	__property Graphics::TFont* FooterFont = {read=FFooterFont, write=SetFooterFont};
	__property bool ShowHeader = {read=FShowHeader, write=SetShowHeader, default=1};
	__property bool ShowFooter = {read=FShowFooter, write=SetShowFooter, default=1};
	__property int HeaderHeight = {read=FHeaderHeight, write=SetHeaderHeight, default=44};
	__property Classes::TAlignment HeaderHorizontalAlignment = {read=FHeaderHorizontalAlignment, write=SetHeaderHorizontalAlignment, default=2};
	__property Classes::TVerticalAlignment HeaderVerticalAlignment = {read=FHeaderVerticalAlignment, write=SetHeaderVerticalAlignment, default=2};
	__property Classes::TAlignment FooterHorizontalAlignment = {read=FFooterHorizontalAlignment, write=SetFooterHorizontalAlignment, default=2};
	__property Classes::TVerticalAlignment FooterVerticalAlignment = {read=FFooterVerticalAlignment, write=SetFooterVerticalAlignment, default=2};
	__property int FooterHeight = {read=FFooterHeight, write=SetFooterHeight, default=44};
	__property int MinimumWidth = {read=FMinimumWidth, write=SetMinimumWidth, default=200};
	__property ShowHint ;
	__property int PageIndex = {read=GetPageIndex, write=SetPageIndex, stored=false, nodefault};
	__property PopupMenu ;
	__property OnContextPopup ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnDragOver ;
	__property OnDragDrop ;
	__property OnEndDrag ;
	__property OnStartDrag ;
	__property OnExit ;
	__property OnEnter ;
	__property Imglist::TCustomImageList* ImageList = {read=FImageList, write=SetImageList};
	__property Gdippicturecontainer::TGDIPPictureContainer* PictureContainer = {read=FPictureContainer, write=SetPictureContainer};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothPage(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
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


typedef void __fastcall (__closure *TPageMovedEvent)(System::TObject* Sender, int FromPos, int ToPos);

typedef void __fastcall (__closure *TPageChangingEvent)(System::TObject* Sender, int FromPage, int ToPage, bool &AllowChange);

typedef void __fastcall (__closure *TPageChangedEvent)(System::TObject* Sender, int Page);

class PASCALIMPLEMENTATION TAdvSmoothPageSlider : public TAdvSmoothPage 
{
	typedef TAdvSmoothPage inherited;
	
private:
	bool FAnimate;
	Extctrls::TTimer* FTimer;
	bool Ffocused;
	TDbgList* FPages;
	bool FPropertiesLoaded;
	int FActivePageIndex;
	Classes::TNotifyEvent FOnChange;
	Classes::TWndMethod FFormWndProc;
	bool FConstructed;
	bool FDesignTime;
	bool FShowFocus;
	TPageMovedEvent FOnPageMoved;
	TPageChangingEvent FOnChanging;
	int FAnimationFactor;
	Classes::TNotifyEvent FOnPageChange;
	TPageChangedEvent FOnPageChanged;
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetAllPagesPosition(void);
	int __fastcall GetPageCount(void);
	TAdvSmoothPage* __fastcall GetPage(int index);
	TAdvSmoothPage* __fastcall GetActivePage(void);
	int __fastcall GetActivePageIndex(void);
	void __fastcall SetActivePage(const TAdvSmoothPage* Value);
	void __fastcall SetActivePageIndex(const int Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetShowFocus(const bool Value);
	Types::TRect __fastcall GetPageRect();
	void __fastcall SetAnimationFactor(const int Value);
	
protected:
	void __fastcall DoTimer(System::TObject* Sender);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &ARect);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual void __fastcall WndProc(Messages::TMessage &Msg);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall AdjustClientRect(Types::TRect &Rect);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	void __fastcall ChangeActivePage(int PageIndex);
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall DoEnter(void);
	int __fastcall IsActivePageNeighbour(int PageIndex);
	
public:
	__fastcall virtual TAdvSmoothPageSlider(Classes::TComponent* AOwner);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TAdvSmoothPageSlider(void);
	DYNAMIC void __fastcall GetChildren(Classes::TGetChildProc Proc, Classes::TComponent* Root);
	void __fastcall Init(void);
	int __fastcall GetVersionNr(void);
	int __fastcall AddPage(TAdvSmoothPage* APage)/* overload */;
	int __fastcall AddPage(AnsiString PageCaption)/* overload */;
	void __fastcall RemovePage(TAdvSmoothPage* APage);
	void __fastcall MovePage(int CurIndex, int NewIndex);
	TAdvSmoothPage* __fastcall FindNextPage(TAdvSmoothPage* CurPage, bool GoForward);
	void __fastcall SelectNextPage(bool GoForward);
	int __fastcall IndexOfPage(TAdvSmoothPage* APage);
	__property int PageCount = {read=GetPageCount, nodefault};
	__property TAdvSmoothPage* Pages[int index] = {read=GetPage};
	HIDESBASE void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	HIDESBASE void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	void __fastcall NextPage(void);
	void __fastcall PreviousPage(void);
	
__published:
	__property int AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor, default=5};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property TAdvSmoothPage* ActivePage = {read=GetActivePage, write=SetActivePage};
	__property Constraints ;
	__property Color  = {default=-16777211};
	__property ShowHint ;
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion, stored=false};
	__property int ActivePageIndex = {read=GetActivePageIndex, write=SetActivePageIndex, nodefault};
	__property Visible  = {default=1};
	__property TPageMovedEvent OnPageMoved = {read=FOnPageMoved, write=FOnPageMoved};
	__property Classes::TNotifyEvent OnPageChange = {read=FOnPageChange, write=FOnPageChange};
	__property TPageChangingEvent OnPageChanging = {read=FOnChanging, write=FOnChanging};
	__property TPageChangedEvent OnPageChanged = {read=FOnPageChanged, write=FOnPageChanged};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResize ;
	__property OnStartDrag ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothPageSlider(HWND ParentWindow) : TAdvSmoothPage(ParentWindow) { }
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



class PASCALIMPLEMENTATION TAdvSmoothPageShadow : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	bool FMouseEntered;
	void *OldWndProc;
	void *NewWndProc;
	Advgdip::TGPBitmap* FMainBuffer;
	TAdvSmoothPage* FPage;
	int FW;
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Msg);
	HIDESBASE MESSAGE void __fastcall WMMouseActivate(Messages::TWMMouseActivate &Msg);
	HIDESBASE MESSAGE void __fastcall WMActivate(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMVisibleChanged(Messages::TMessage &Message);
	void __fastcall SetW(const int Value);
	
protected:
	void __fastcall FormHookInit(void);
	void __fastcall FormHookDone(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DoCreate(void);
	virtual void __fastcall DoDestroy(void);
	DYNAMIC void __fastcall Paint(void);
	void __fastcall Draw(Advgdip::TGPGraphics* graphics);
	void __fastcall CreateMainBuffer(void);
	void __fastcall DestroyMainBuffer(void);
	void __fastcall ClearBuffer(Advgdip::TGPGraphics* graphics);
	Advgdip::TGPGraphics* __fastcall CreateGraphics(void);
	void __fastcall SetLayeredWindow(void);
	void __fastcall UpdateLayered(void);
	void __fastcall UpdateMainWindow(void);
	void __fastcall UpdateWindow(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall HookWndProc(Messages::TMessage &Msg);
	__property int w = {read=FW, write=SetW, nodefault};
	
public:
	void __fastcall Init(void);
	__property TAdvSmoothPage* OwnerPage = {read=FPage, write=FPage};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvSmoothPageShadow(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvSmoothPageShadow(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvSmoothPageShadow(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothPageShadow(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x4;
static const Word WM_USERACTIVATE = 0x464;
static const Shortint SHADOWSIZE = 0xc;

}	/* namespace Advsmoothpageslider */
using namespace Advsmoothpageslider;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothpageslider
