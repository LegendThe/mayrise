// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothtilelist.pas' rev: 11.00

#ifndef AdvsmoothtilelistHPP
#define AdvsmoothtilelistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Advhintinfo.hpp>	// Pascal unit
#include <Advsmooththeme.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Gdippicturecontainer.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothtilelist
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


#pragma option push -b-
enum TTileListToggleMode { tmAuto, tmExit, tmEnter };
#pragma option pop

#pragma option push -b-
enum TTileListOption { toAllowMove, toAllowDelete, toAllowMaximize };
#pragma option pop

typedef Set<TTileListOption, toAllowMove, toAllowMaximize>  TTileListOptions;

#pragma option push -b-
enum TAnimationRectangleMode { rmNormal, rmDown, rmBack, rmDownReverse, rmBackReverse };
#pragma option pop

#pragma option push -b-
enum TTileState { tsNormal, tsHovered, tsSelected, tsDisabled, tsMaximized };
#pragma option pop

#pragma option push -b-
enum TTileListCheckBoxPosition { cpTopLeft, cpTopCenter, cpTopRight, cpCenterLeft, cpCenterCenter, cpCenterRight, cpBottomLeft, cpBottomCenter, cpBottomRight, cpCustom };
#pragma option pop

#pragma option push -b-
enum TTileListTextPosition { tpTopLeft, tpTopCenter, tpTopRight, tpCenterLeft, tpCenterCenter, tpCenterRight, tpBottomLeft, tpBottomCenter, tpBottomRight, tpCustom, tpHTMLAlign };
#pragma option pop

#pragma option push -b-
enum TTileListMode { tmView, tmDelete, tmEdit, tmContent, tmContentNavigation };
#pragma option pop

class DELPHICLASS TAdvSmoothTile;
typedef void __fastcall (__closure *TTileListFontEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, Graphics::TFont* AFont);

typedef void __fastcall (__closure *TTileListFillEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, Gdipfill::TGDIPFill* Fill);

typedef void __fastcall (__closure *TTileListTextEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, AnsiString &Text);

typedef void __fastcall (__closure *TTileListEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State);

typedef void __fastcall (__closure *TTileListPageChangedEvent)(System::TObject* Sender, int PageIndex);

typedef void __fastcall (__closure *TTileListDrawBulletEvent)(System::TObject* Sender, Advgdip::TGPGraphics* g, int BulletIndex, const Advgdip::TGPRectF &BulletRect, const Advgdip::TGPRectF &NavigationRect, bool &DefaultDraw);

typedef void __fastcall (__closure *TTileListBeforeDraw)(System::TObject* Sender, Advgdip::TGPGraphics* g, TAdvSmoothTile* Tile, const Advgdip::TGPRectF &TileRect, bool &DefaultDraw);

typedef void __fastcall (__closure *TTileListAfterDraw)(System::TObject* Sender, Advgdip::TGPGraphics* g, TAdvSmoothTile* Tile, const Advgdip::TGPRectF &TileRect);

typedef void __fastcall (__closure *TTileListBackGroundBeforeDraw)(System::TObject* Sender, Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &Rect, bool &DefaultDraw);

typedef void __fastcall (__closure *TTileListBackGroundAfterDraw)(System::TObject* Sender, Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &Rect);

typedef void __fastcall (__closure *TTileListHintEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, AnsiString &Hint);

typedef void __fastcall (__closure *TTileListIndicatorEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, AnsiString &Indicator);

typedef void __fastcall (__closure *TTileListIndicatorClickEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, AnsiString Indicator, bool DeleteMode);

typedef void __fastcall (__closure *TTileListDeleteEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, bool &AllowDelete);

typedef void __fastcall (__closure *TTileListAnchorEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State, AnsiString Anchor);

typedef void __fastcall (__closure *TTileListStateEvent)(System::TObject* Sender, TAdvSmoothTile* Tile, TTileState State);

typedef void __fastcall (__closure *TTileListModeChangedEvent)(System::TObject* Sender, TTileListMode PreviousMode, TTileListMode Mode);

typedef void __fastcall (__closure *TTileListMovedEvent)(System::TObject* Sender, int FromIndex, int ToIndex, bool &Allow);

class DELPHICLASS TAdvSmoothTileListVisualizer;
class DELPHICLASS TAdvSmoothTileContent;
class PASCALIMPLEMENTATION TAdvSmoothTileListVisualizer : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FIsWinXP;
	
public:
	__fastcall virtual TAdvSmoothTileListVisualizer(Classes::TComponent* AOwner);
	virtual bool __fastcall DoMouseDown(TAdvSmoothTile* Tile, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall DoMouseMove(TAdvSmoothTile* Tile, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall DoMouseUp(TAdvSmoothTile* Tile, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, TAdvSmoothTile* Tile, AnsiString Text);
	virtual Advgdip::TGPRectF __fastcall DrawCheckBox(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, TAdvSmoothTile* Tile, TAdvSmoothTileContent* TileContent);
	virtual Advgdip::TGPRectF __fastcall DrawTile(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &R, TAdvSmoothTile* Tile);
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvSmoothTileListVisualizer(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothTileList;
class PASCALIMPLEMENTATION TAdvSmoothTileContent : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothTile* FOwner;
	Advgdip::TAdvGDIPPicture* FImage;
	AnsiString FImageName;
	AnsiString FText;
	Imglist::TImageIndex FImageIndex;
	TTileListTextPosition FTextPosition;
	int FTextTop;
	int FTextLeft;
	bool FImageStretch;
	bool FImageAspectRatio;
	Advhintinfo::TAdvHintInfo* FOfficeHint;
	AnsiString FHint;
	bool FShowCheckBox;
	bool FChecked;
	bool FCheckBoxEnabled;
	int FCheckBoxTop;
	int FCheckBoxLeft;
	TTileListCheckBoxPosition FCheckBoxPosition;
	void __fastcall SetImage(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetImageName(const AnsiString Value);
	void __fastcall SetText(const AnsiString Value);
	void __fastcall SetImageIndex(const Imglist::TImageIndex Value);
	void __fastcall SetTextPosition(const TTileListTextPosition Value);
	void __fastcall SetTextLeft(const int Value);
	void __fastcall SetTextTop(const int Value);
	void __fastcall SetImageAspectRatio(const bool Value);
	void __fastcall SetImageStretch(const bool Value);
	void __fastcall SetOfficeHint(const Advhintinfo::TAdvHintInfo* Value);
	void __fastcall SetCheckBoxEnabled(const bool Value);
	void __fastcall SetChecked(const bool Value);
	void __fastcall SetShowCheckBox(const bool Value);
	void __fastcall SetCheckBoxLeft(const int Value);
	void __fastcall SetCheckBoxPosition(const TTileListCheckBoxPosition Value);
	void __fastcall SetCheckBoxTop(const int Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall ImageChanged(System::TObject* Sender);
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall TAdvSmoothTileContent(TAdvSmoothTile* AOwner);
	__fastcall virtual ~TAdvSmoothTileContent(void);
	TAdvSmoothTileList* __fastcall TileList(void);
	bool __fastcall XYToCheckBox(int X, int Y);
	
__published:
	__property AnsiString Hint = {read=FHint, write=FHint};
	__property Imglist::TImageIndex ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property AnsiString ImageName = {read=FImageName, write=SetImageName};
	__property Advgdip::TAdvGDIPPicture* Image = {read=FImage, write=SetImage};
	__property Advhintinfo::TAdvHintInfo* OfficeHint = {read=FOfficeHint, write=SetOfficeHint};
	__property AnsiString Text = {read=FText, write=SetText};
	__property TTileListTextPosition TextPosition = {read=FTextPosition, write=SetTextPosition, default=4};
	__property int TextLeft = {read=FTextLeft, write=SetTextLeft, default=0};
	__property int TextTop = {read=FTextTop, write=SetTextTop, default=0};
	__property bool ImageAspectRatio = {read=FImageAspectRatio, write=SetImageAspectRatio, default=1};
	__property bool ImageStretch = {read=FImageStretch, write=SetImageStretch, default=0};
	__property bool ShowCheckBox = {read=FShowCheckBox, write=SetShowCheckBox, default=0};
	__property TTileListCheckBoxPosition CheckBoxPosition = {read=FCheckBoxPosition, write=SetCheckBoxPosition, default=3};
	__property int CheckBoxLeft = {read=FCheckBoxLeft, write=SetCheckBoxLeft, default=0};
	__property int CheckBoxTop = {read=FCheckBoxTop, write=SetCheckBoxTop, default=0};
	__property bool Checked = {read=FChecked, write=SetChecked, default=0};
	__property bool CheckBoxEnabled = {read=FCheckBoxEnabled, write=SetCheckBoxEnabled, default=1};
};


class DELPHICLASS TAdvSmoothTiles;
class PASCALIMPLEMENTATION TAdvSmoothTiles : public Classes::TOwnedCollection 
{
	typedef Classes::TOwnedCollection inherited;
	
public:
	TAdvSmoothTile* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvSmoothTiles* FParentTiles;
	TAdvSmoothTileList* FOwner;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TAdvSmoothTile* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TAdvSmoothTile* Value);
	
protected:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	int __fastcall GetPageCount(void);
	virtual TMetaClass* __fastcall CreateItemClass(void);
	__fastcall TAdvSmoothTiles(TAdvSmoothTileList* AOwner);
	__property TAdvSmoothTile* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TAdvSmoothTile* __fastcall Add(void);
	HIDESBASE TAdvSmoothTile* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Delete(int Index);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TAdvSmoothTiles(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvSmoothTile : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TAdvSmoothTileListVisualizer* FVisualizerMaximized;
	bool DoAnimationX;
	bool DoAnimationY;
	TAdvSmoothTileList* FOwner;
	bool FEnabled;
	bool FEmpty;
	Advgdip::TGPRectF FTileRectangle;
	Advgdip::TGPRectF FOrigTileRectangle;
	TAdvSmoothTileContent* FContent;
	TAdvSmoothTileContent* FContentMaximized;
	TAdvSmoothTileListVisualizer* FVisualizer;
	bool FCanDelete;
	AnsiString FStatusIndicator;
	TAdvSmoothTiles* FSubTiles;
	bool FBackTile;
	AnsiString FDeleteIndicator;
	int FStatusIndicatorTop;
	int FStatusIndicatorLeft;
	int FDeleteIndicatorTop;
	int FDeleteIndicatorLeft;
	System::TObject* FItemObject;
	int FTag;
	AnsiString FData;
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetEmpty(const bool Value);
	void __fastcall SetContent(const TAdvSmoothTileContent* Value);
	void __fastcall SetContentMaximized(const TAdvSmoothTileContent* Value);
	void __fastcall SetVisualizer(const TAdvSmoothTileListVisualizer* Value);
	TAdvSmoothTileListVisualizer* __fastcall GetVisualizer(void);
	TTileState __fastcall GetTileState(void);
	Gdipfill::TGDIPFill* __fastcall GetTileFill(void);
	void __fastcall SetCanDelete(const bool Value);
	void __fastcall SetStatusIndicator(const AnsiString Value);
	void __fastcall SetSubTiles(const TAdvSmoothTiles* Value);
	void __fastcall SetBackTile(const bool Value);
	TAdvSmoothTileListVisualizer* __fastcall GetVisualizerMaximized(void);
	void __fastcall SetVisualizerMaximized(const TAdvSmoothTileListVisualizer* Value);
	void __fastcall SetDeleteIndicator(const AnsiString Value);
	void __fastcall SetDeleteIndicatorLeft(const int Value);
	void __fastcall SetDeleteIndicatorTop(const int Value);
	void __fastcall SetStatusIndicatorLeft(const int Value);
	void __fastcall SetStatusIndicatorTop(const int Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	void __fastcall SubTilesChanged(System::TObject* Sender);
	
public:
	__property TAdvSmoothTileList* TileList = {read=FOwner};
	__fastcall virtual TAdvSmoothTile(Classes::TCollection* Collection);
	__fastcall virtual ~TAdvSmoothTile(void);
	virtual TAdvSmoothTileContent* __fastcall CreateContent(void);
	virtual TAdvSmoothTileContent* __fastcall CreateContentMaximized(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall Draw(Advgdip::TGPGraphics* g);
	void __fastcall DrawStatus(Advgdip::TGPGraphics* g);
	__property Advgdip::TGPRectF TileRectangle = {read=FTileRectangle, write=FTileRectangle};
	__property Advgdip::TGPRectF OrigTileRectangle = {read=FOrigTileRectangle, write=FOrigTileRectangle};
	__property TTileState TileState = {read=GetTileState, nodefault};
	__property Gdipfill::TGDIPFill* TileFill = {read=GetTileFill};
	bool __fastcall CheckContentTile(void);
	__property System::TObject* ItemOject = {read=FItemObject, write=FItemObject};
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Empty = {read=FEmpty, write=SetEmpty, default=0};
	__property bool BackTile = {read=FBackTile, write=SetBackTile, default=0};
	__property TAdvSmoothTileContent* Content = {read=FContent, write=SetContent};
	__property TAdvSmoothTileContent* ContentMaximized = {read=FContentMaximized, write=SetContentMaximized};
	__property TAdvSmoothTileListVisualizer* Visualizer = {read=GetVisualizer, write=SetVisualizer};
	__property TAdvSmoothTileListVisualizer* VisualizerMaximized = {read=GetVisualizerMaximized, write=SetVisualizerMaximized};
	__property AnsiString StatusIndicator = {read=FStatusIndicator, write=SetStatusIndicator};
	__property AnsiString DeleteIndicator = {read=FDeleteIndicator, write=SetDeleteIndicator};
	__property int StatusIndicatorLeft = {read=FStatusIndicatorLeft, write=SetStatusIndicatorLeft, default=0};
	__property int StatusIndicatorTop = {read=FStatusIndicatorTop, write=SetStatusIndicatorTop, default=0};
	__property int DeleteIndicatorLeft = {read=FDeleteIndicatorLeft, write=SetDeleteIndicatorLeft, default=0};
	__property int DeleteIndicatorTop = {read=FDeleteIndicatorTop, write=SetDeleteIndicatorTop, default=0};
	__property bool CanDelete = {read=FCanDelete, write=SetCanDelete, default=1};
	__property TAdvSmoothTiles* SubTiles = {read=FSubTiles, write=SetSubTiles};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property AnsiString Data = {read=FData, write=FData};
};


class DELPHICLASS TAdvSmoothTileAppearance;
class PASCALIMPLEMENTATION TAdvSmoothTileAppearance : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothTileList* FOwner;
	Gdipfill::TGDIPFill* FSmallViewFill;
	Gdipfill::TGDIPFill* FLargeViewFill;
	int FVerticalSpacing;
	int FHorizontalSpacing;
	bool FBackGround;
	Graphics::TColor FTargetTileColor;
	Graphics::TColor FMovingTileColor;
	Gdipfill::TGDIPFill* FSmallViewFillDisabled;
	Gdipfill::TGDIPFill* FSmallViewFillSelected;
	Gdipfill::TGDIPFill* FSmallViewFillHover;
	Graphics::TFont* FSmallViewFontDisabled;
	Graphics::TFont* FSmallViewFontSelected;
	Graphics::TFont* FSmallViewFont;
	Graphics::TFont* FSmallViewFontHover;
	Graphics::TFont* FLargeViewFont;
	Gdipfill::TGDIPStatus* FStatusIndicatorAppearance;
	Gdipfill::TGDIPStatus* FDeleteIndicatorAppearance;
	void __fastcall SetSmallViewFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetHorizontalSpacing(const int Value);
	void __fastcall SetVerticalSpacing(const int Value);
	void __fastcall SetBackGround(const bool Value);
	void __fastcall SetTargetTileColor(const Graphics::TColor Value);
	void __fastcall SetMovingTileColor(const Graphics::TColor Value);
	void __fastcall SetLargeViewFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetSmallViewFillDisabled(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetSmallViewFillSelected(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetSmallViewFillHover(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetLargeViewFont(const Graphics::TFont* Value);
	void __fastcall SetSmallViewFont(const Graphics::TFont* Value);
	void __fastcall SetSmallViewFontDisabled(const Graphics::TFont* Value);
	void __fastcall SetSmallViewFontHover(const Graphics::TFont* Value);
	void __fastcall SetSmallViewFontSelected(const Graphics::TFont* Value);
	void __fastcall SetStatusIndicatorAppearance(const Gdipfill::TGDIPStatus* Value);
	void __fastcall SetDeleteIndicatorAppearance(const Gdipfill::TGDIPStatus* Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall IndicatorChanged(System::TObject* Sender);
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall TAdvSmoothTileAppearance(TAdvSmoothTileList* AOwner);
	__fastcall virtual ~TAdvSmoothTileAppearance(void);
	
__published:
	__property Gdipfill::TGDIPFill* LargeViewFill = {read=FLargeViewFill, write=SetLargeViewFill};
	__property Gdipfill::TGDIPFill* SmallViewFill = {read=FSmallViewFill, write=SetSmallViewFill};
	__property Gdipfill::TGDIPFill* SmallViewFillSelected = {read=FSmallViewFillSelected, write=SetSmallViewFillSelected};
	__property Gdipfill::TGDIPFill* SmallViewFillDisabled = {read=FSmallViewFillDisabled, write=SetSmallViewFillDisabled};
	__property Gdipfill::TGDIPFill* SmallViewFillHover = {read=FSmallViewFillHover, write=SetSmallViewFillHover};
	__property Graphics::TFont* LargeViewFont = {read=FLargeViewFont, write=SetLargeViewFont};
	__property Graphics::TFont* SmallViewFont = {read=FSmallViewFont, write=SetSmallViewFont};
	__property Graphics::TFont* SmallViewFontSelected = {read=FSmallViewFontSelected, write=SetSmallViewFontSelected};
	__property Graphics::TFont* SmallViewFontDisabled = {read=FSmallViewFontDisabled, write=SetSmallViewFontDisabled};
	__property Graphics::TFont* SmallViewFontHover = {read=FSmallViewFontHover, write=SetSmallViewFontHover};
	__property bool BackGround = {read=FBackGround, write=SetBackGround, default=1};
	__property int VerticalSpacing = {read=FVerticalSpacing, write=SetVerticalSpacing, default=15};
	__property int HorizontalSpacing = {read=FHorizontalSpacing, write=SetHorizontalSpacing, default=15};
	__property Graphics::TColor TargetTileColor = {read=FTargetTileColor, write=SetTargetTileColor, default=32768};
	__property Graphics::TColor MovingTileColor = {read=FMovingTileColor, write=SetMovingTileColor, default=255};
	__property Gdipfill::TGDIPStatus* StatusIndicatorAppearance = {read=FStatusIndicatorAppearance, write=SetStatusIndicatorAppearance};
	__property Gdipfill::TGDIPStatus* DeleteIndicatorAppearance = {read=FDeleteIndicatorAppearance, write=SetDeleteIndicatorAppearance};
};


class DELPHICLASS TAdvSmoothTileListNavigation;
class PASCALIMPLEMENTATION TAdvSmoothTileListNavigation : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvSmoothTileList* FOwner;
	bool FNavigation;
	bool FVisible;
	Gdipfill::TGDIPFill* FFill;
	int FHeight;
	Graphics::TColor FBulletColor;
	Graphics::TColor FBulletSelectedColor;
	int FBulletSize;
	Graphics::TColor FArrowColor;
	int FArrowRectangleSize;
	int FArrowSize;
	bool FShowPages;
	bool FArrowNavigation;
	AnsiString FCaption;
	Graphics::TFont* FFont;
	AnsiString FNextHint;
	AnsiString FPreviousHint;
	bool FFloat;
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetNavigation(const bool Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetBulletColor(const Graphics::TColor Value);
	void __fastcall SetBulletSelectedColor(const Graphics::TColor Value);
	void __fastcall SetBulletSize(const int Value);
	void __fastcall SetArrowColor(const Graphics::TColor Value);
	void __fastcall SetArrowRectangleSize(const int Value);
	void __fastcall SetArrowSize(const int Value);
	int __fastcall GetHeight(void);
	void __fastcall SetArrowNavigation(const bool Value);
	void __fastcall SetShowPages(const bool Value);
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetNextHint(const AnsiString Value);
	void __fastcall SetPreviousHint(const AnsiString Value);
	void __fastcall SetFloat(const bool Value);
	
protected:
	void __fastcall Changed(void);
	void __fastcall FontChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	int __fastcall XYToBullet(int X, int Y, bool Header);
	int __fastcall XYToNavigation(int X, int Y, bool Header);
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall TAdvSmoothTileListNavigation(TAdvSmoothTileList* AOwner);
	__fastcall virtual ~TAdvSmoothTileListNavigation(void);
	void __fastcall Draw(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &r);
	
__published:
	__property bool Float = {read=FFloat, write=SetFloat, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property int Height = {read=FHeight, write=SetHeight, default=30};
	__property bool Navigation = {read=FNavigation, write=SetNavigation, default=1};
	__property Graphics::TColor BulletColor = {read=FBulletColor, write=SetBulletColor, default=16777215};
	__property Graphics::TColor BulletSelectedColor = {read=FBulletSelectedColor, write=SetBulletSelectedColor, default=14788402};
	__property int BulletSize = {read=FBulletSize, write=SetBulletSize, default=9};
	__property Graphics::TColor ArrowColor = {read=FArrowColor, write=SetArrowColor, default=16777215};
	__property int ArrowSize = {read=FArrowSize, write=SetArrowSize, default=12};
	__property int ArrowRectangleSize = {read=FArrowRectangleSize, write=SetArrowRectangleSize, default=50};
	__property bool ArrowNavigation = {read=FArrowNavigation, write=SetArrowNavigation, default=1};
	__property bool ShowPages = {read=FShowPages, write=SetShowPages, default=1};
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property AnsiString NextHint = {read=FNextHint, write=SetNextHint};
	__property AnsiString PreviousHint = {read=FPreviousHint, write=SetPreviousHint};
};


class PASCALIMPLEMENTATION TAdvSmoothTileList : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FMetroStyle;
	TAdvSmoothTiles* FAnimateTilesParent;
	TAdvSmoothTiles* FAnimateTilesSub;
	TAdvSmoothTile* FSubTile;
	Advhintinfo::TAdvHintInfo* FOfficeHint;
	bool FSubListMode;
	bool FSubListDown;
	bool FMaximized;
	bool FGotoPage;
	TAdvSmoothTile* PrevIndicatorTile;
	TAdvSmoothTile* DeleteIndicatorTile;
	TAdvSmoothTile* IndicatorTile;
	int FBulletIdx;
	int FPrevBulletIdx;
	int FNavidx;
	int FPrevNavIdx;
	bool FNavHeader;
	TAdvSmoothTileListVisualizer* FDefaultVisualizer;
	int FStartX;
	int FStartY;
	double FStartRectX;
	double FStartRectY;
	TTileListMode FMode;
	int FPrevX;
	int FDownX;
	int FDownY;
	int FMoveCount;
	Extctrls::TTimer* FAnimate;
	Extctrls::TTimer* FMove;
	bool FMouseDown;
	bool FDoubleClicked;
	double FTilePos;
	int FUpdateCount;
	TAdvSmoothTiles* FTiles;
	TAdvSmoothTiles* FWorkTiles;
	int FRows;
	int FColumns;
	TAdvSmoothTileAppearance* FTileAppearance;
	Gdipfill::TGDIPFill* FFill;
	int FPageIndex;
	Controls::TMargins* FTileMargins;
	double FAnimationFactor;
	TTileListEvent FOnTileClick;
	TAdvSmoothTileListNavigation* FHeader;
	TAdvSmoothTileListNavigation* FFooter;
	TAdvSmoothTileListVisualizer* FVisualizer;
	TAdvSmoothTileListVisualizer* FVisualizerMaximized;
	Gdippicturecontainer::TGDIPPictureContainer* FPictureContainer;
	Imglist::TCustomImageList* FImageList;
	TTileListPageChangedEvent FOnPageChanged;
	TTileListDrawBulletEvent FOnDrawBullet;
	TTileListEvent FOnTileDblClick;
	TTileListEvent FOnTileEnter;
	TTileListEvent FOnTileLeave;
	TTileListTextEvent FOnTileText;
	TTileListFillEvent FOnTileFill;
	TTileListBeforeDraw FOnTileBeforeDraw;
	TTileListAfterDraw FOnTileAfterDraw;
	TTileListBackGroundBeforeDraw FOnBeforeDrawBackGround;
	TTileListBackGroundAfterDraw FOnAfterDrawBackGround;
	TAdvSmoothTile* FContentTile;
	TTileListHintEvent FOnTileHint;
	Advgdip::TextRenderingHint FTextRendering;
	TTileListDeleteEvent FOnTileDelete;
	TTileListAnchorEvent FOnTileAnchorClick;
	TTileListOptions FOptions;
	TTileListIndicatorClickEvent FOnTileStatusIndicatorClick;
	TTileListIndicatorClickEvent FOnTileDeleteIndicatorClick;
	TTileListIndicatorEvent FOnTileStatusIndicator;
	TTileListIndicatorEvent FOnTileDeleteIndicator;
	TTileListStateEvent FOnTileMaximized;
	TTileListStateEvent FOnTileMinimized;
	TTileListModeChangedEvent FOnTileListModeChanged;
	TTileListMovedEvent FOnTileMoved;
	double FPageAnimationFactor;
	bool FTransparent;
	TTileListFontEvent FOnTileFont;
	bool FAllowScroll;
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	void __fastcall SetTiles(const TAdvSmoothTiles* Value);
	void __fastcall SetColumns(const int Value);
	void __fastcall SetRows(const int Value);
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetTileAppearance(const TAdvSmoothTileAppearance* Value);
	void __fastcall SetPageIndex(const int Value);
	int __fastcall GetPageCount(void);
	void __fastcall SetTileMargins(const Controls::TMargins* Value);
	void __fastcall SetAnimationFactor(const double Value);
	void __fastcall SetFooter(const TAdvSmoothTileListNavigation* Value);
	void __fastcall SetHeader(const TAdvSmoothTileListNavigation* Value);
	void __fastcall SetVisualizer(const TAdvSmoothTileListVisualizer* Value);
	TAdvSmoothTileListVisualizer* __fastcall GetVisualizer(void);
	void __fastcall SetPictureContainer(const Gdippicturecontainer::TGDIPPictureContainer* Value);
	void __fastcall SetImageList(const Imglist::TCustomImageList* Value);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	void __fastcall SetContentTile(const TAdvSmoothTile* Value);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Message);
	void __fastcall SetTextRendering(const Advgdip::TextRenderingHint Value);
	TAdvSmoothTileListVisualizer* __fastcall GetVisualizerMaximized(void);
	void __fastcall SetVisualizerMaximized(const TAdvSmoothTileListVisualizer* Value);
	void __fastcall SetOptions(const TTileListOptions Value);
	void __fastcall SetMode(const TTileListMode Value);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetPageAnimationFactor(const double Value);
	void __fastcall SetOfficeHint(const Advhintinfo::TAdvHintInfo* Value);
	void __fastcall SetTransparent(const bool Value);
	AnsiString __fastcall GetVersion();
	int __fastcall GetVersionNr(void);
	
protected:
	bool __fastcall IsDesignTime(void);
	int __fastcall GetNextContentIndex(void);
	int __fastcall GetLastContentIndex(void);
	int __fastcall GetPreviousContentIndex(void);
	int __fastcall GetFirstContentIndex(void);
	int __fastcall GetNextIndex(int ACount);
	int __fastcall GetLastIndex(void);
	int __fastcall GetPreviousIndex(int ACount);
	int __fastcall GetFirstIndex(void);
	void __fastcall UpdateContentTiles(void);
	HIDESBASE void __fastcall Changed(void);
	void __fastcall TilesChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	void __fastcall MarginsChanged(System::TObject* Sender);
	int __fastcall TilesPerPage(void);
	int __fastcall PageIndexForTileIndex(int Index);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	void __fastcall ProcessKeyDown(Word Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	void __fastcall Animate(System::TObject* Sender);
	void __fastcall Move(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	__property TAdvSmoothTile* ContentTile = {read=FContentTile, write=SetContentTile};
	void __fastcall SetAnimationMode(TTileListMode AMode);
	virtual void __fastcall GetOfficeHint(const Types::TPoint &PT, Advhintinfo::TAdvHintInfo* &HintInfo);
	
public:
	TAdvSmoothTile* PrevContentTile;
	TAdvSmoothTile* NextContentTile;
	TAdvSmoothTile* SelectedTile;
	TAdvSmoothTile* HoverTile;
	TAdvSmoothTile* MoveTile;
	TAdvSmoothTile* ToTile;
	TAdvSmoothTile* IndicationTile;
	DYNAMIC void __fastcall MouseWheelHandler(Messages::TMessage &Message);
	void __fastcall UseDefaultStyle(void);
	__property TTileListMode Mode = {read=FMode, write=SetMode, nodefault};
	__property double TilePos = {read=FTilePos, write=FTilePos};
	void __fastcall GoBack(void);
	void __fastcall ToggleMaximized(TAdvSmoothTile* Tile, TTileListToggleMode AMode = (TTileListToggleMode)(0x0));
	void __fastcall GoDown(TAdvSmoothTile* Tile);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	__fastcall virtual TAdvSmoothTileList(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothTileList(void);
	void __fastcall InitSample(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall Paint(void);
	void __fastcall Draw(Advgdip::TGPGraphics* g);
	Advgdip::TGPRectF __fastcall DrawBackGround(Advgdip::TGPGraphics* g);
	void __fastcall DrawTiles(Advgdip::TGPGraphics* g, int pgidx);
	void __fastcall DrawTilesStatus(Advgdip::TGPGraphics* g, int pgidx);
	void __fastcall BuildAllTiles(bool AnimationRectangle, TAdvSmoothTiles* ATiles, TAnimationRectangleMode AnimationRectangleMode);
	void __fastcall BuildTiles(int pgidx, bool AnimationRectangle, TAdvSmoothTiles* ATiles, TAnimationRectangleMode AnimationRectangleMode);
	Advgdip::TGPRectF __fastcall GetTileRectangle();
	Advgdip::TGPRectF __fastcall GetBoundsRectangle();
	Advgdip::TGPRectF __fastcall GetHeaderRectangle();
	Advgdip::TGPRectF __fastcall GetFooterRectangle();
	TAdvSmoothTile* __fastcall XYToTile(int X, int Y, bool CountEmpty = false, bool IncludeDisabled = false);
	TAdvSmoothTile* __fastcall XYToStatusIndicatorTile(int X, int Y);
	TAdvSmoothTile* __fastcall XYToDeleteIndicatorTile(int X, int Y);
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	void __fastcall NextPage(void);
	void __fastcall GoToPage(int APageIndex);
	void __fastcall PreviousPage(void);
	void __fastcall FirstPage(void);
	void __fastcall LastPage(void);
	DYNAMIC void __fastcall Resize(void);
	DYNAMIC void __fastcall DblClick(void);
	virtual TAdvSmoothTiles* __fastcall CreateTiles(void);
	__property double PageAnimationFactor = {read=FPageAnimationFactor, write=SetPageAnimationFactor};
	void __fastcall Clear(void);
	
__published:
	__property AnsiString Version = {read=GetVersion};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property Advgdip::TextRenderingHint TextRendering = {read=FTextRendering, write=SetTextRendering, default=5};
	__property Gdippicturecontainer::TGDIPPictureContainer* PictureContainer = {read=FPictureContainer, write=SetPictureContainer};
	__property Imglist::TCustomImageList* ImageList = {read=FImageList, write=SetImageList};
	__property bool AllowScroll = {read=FAllowScroll, write=FAllowScroll, default=1};
	__property double AnimationFactor = {read=FAnimationFactor, write=SetAnimationFactor};
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property TAdvSmoothTiles* Tiles = {read=FTiles, write=SetTiles};
	__property int Columns = {read=FColumns, write=SetColumns, default=3};
	__property Advhintinfo::TAdvHintInfo* OfficeHint = {read=FOfficeHint, write=SetOfficeHint};
	__property int Rows = {read=FRows, write=SetRows, default=3};
	__property TAdvSmoothTileAppearance* TileAppearance = {read=FTileAppearance, write=SetTileAppearance};
	__property int PageIndex = {read=FPageIndex, write=SetPageIndex, default=0};
	__property int PageCount = {read=GetPageCount, nodefault};
	__property Controls::TMargins* TileMargins = {read=FTileMargins, write=SetTileMargins};
	__property TAdvSmoothTileListNavigation* Header = {read=FHeader, write=SetHeader};
	__property TAdvSmoothTileListNavigation* Footer = {read=FFooter, write=SetFooter};
	__property TAdvSmoothTileListVisualizer* Visualizer = {read=GetVisualizer, write=SetVisualizer};
	__property TAdvSmoothTileListVisualizer* VisualizerMaximized = {read=GetVisualizerMaximized, write=SetVisualizerMaximized};
	__property TTileListOptions Options = {read=FOptions, write=SetOptions, default=7};
	__property TTileListBackGroundBeforeDraw OnBeforeDrawBackGround = {read=FOnBeforeDrawBackGround, write=FOnBeforeDrawBackGround};
	__property TTileListBackGroundAfterDraw OnAfterDrawBackGround = {read=FOnAfterDrawBackGround, write=FOnAfterDrawBackGround};
	__property TTileListFillEvent OnTileFill = {read=FOnTileFill, write=FOnTileFill};
	__property TTileListFontEvent OnTileFont = {read=FOnTileFont, write=FOnTileFont};
	__property TTileListTextEvent OnTileText = {read=FOnTileText, write=FOnTileText};
	__property TTileListEvent OnTileClick = {read=FOnTileClick, write=FOnTileClick};
	__property TTileListEvent OnTileDblClick = {read=FOnTileDblClick, write=FOnTileDblClick};
	__property TTileListEvent OnTileEnter = {read=FOnTileEnter, write=FOnTileEnter};
	__property TTileListEvent OnTileLeave = {read=FOnTileLeave, write=FOnTileLeave};
	__property TTileListPageChangedEvent OnPageChanged = {read=FOnPageChanged, write=FOnPageChanged};
	__property TTileListDrawBulletEvent OnBulletDraw = {read=FOnDrawBullet, write=FOnDrawBullet};
	__property TTileListBeforeDraw OnTileBeforeDraw = {read=FOnTileBeforeDraw, write=FOnTileBeforeDraw};
	__property TTileListAfterDraw OnTileAfterDraw = {read=FOnTileAfterDraw, write=FOnTileAfterDraw};
	__property TTileListHintEvent OnTileHint = {read=FOnTileHint, write=FOnTileHint};
	__property TTileListIndicatorEvent OnTileStatusIndicator = {read=FOnTileStatusIndicator, write=FOnTileStatusIndicator};
	__property TTileListIndicatorClickEvent OnTileStatusIndicatorClick = {read=FOnTileStatusIndicatorClick, write=FOnTileStatusIndicatorClick};
	__property TTileListIndicatorEvent OnTileDeleteIndicator = {read=FOnTileDeleteIndicator, write=FOnTileDeleteIndicator};
	__property TTileListIndicatorClickEvent OnTileDeleteIndicatorClick = {read=FOnTileDeleteIndicatorClick, write=FOnTileDeleteIndicatorClick};
	__property TTileListDeleteEvent OnTileDelete = {read=FOnTileDelete, write=FOnTileDelete};
	__property TTileListAnchorEvent OnTileAnchorClick = {read=FOnTileAnchorClick, write=FOnTileAnchorClick};
	__property TTileListStateEvent OnTileMaximized = {read=FOnTileMaximized, write=FOnTileMaximized};
	__property TTileListStateEvent OnTileMinimized = {read=FOnTileMinimized, write=FOnTileMinimized};
	__property TTileListModeChangedEvent OnTileListModeChanged = {read=FOnTileListModeChanged, write=FOnTileListModeChanged};
	__property TTileListMovedEvent OnTileMoved = {read=FOnTileMoved, write=FOnTileMoved};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Ctl3D ;
	__property Constraints ;
	__property PopupMenu ;
	__property TabOrder  = {default=-1};
	__property ParentShowHint  = {default=1};
	__property ShowHint ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnMouseDown ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property OnResize ;
	__property OnDblClick ;
	__property OnClick ;
	__property OnEnter ;
	__property OnExit ;
	__property OnStartDrag ;
	__property OnEndDrag ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property Visible  = {default=1};
	__property TabStop  = {default=1};
	__property BevelEdges  = {default=15};
	__property BevelInner  = {index=0, default=2};
	__property BevelOuter  = {index=1, default=1};
	__property BevelKind  = {default=0};
	__property BevelWidth  = {default=1};
	__property BiDiMode ;
	__property DockSite  = {default=0};
	__property DoubleBuffered ;
	__property DragCursor  = {default=-12};
	__property Enabled  = {default=1};
	__property Color ;
	__property Padding ;
	__property ParentBackground  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property OnCanResize ;
	__property OnConstrainedResize ;
	__property OnContextPopup ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnEndDock ;
	__property OnGetSiteInfo ;
	__property OnMouseWheel ;
	__property OnMouseWheelDown ;
	__property OnMouseWheelUp ;
	__property OnStartDock ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothTileList(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	void *__ITMSOfficeHint;	/* Advhintinfo::ITMSOfficeHint */
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
	operator Advhintinfo::_di_ITMSOfficeHint()
	{
		Advhintinfo::_di_ITMSOfficeHint intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSOfficeHint*(void) { return (ITMSOfficeHint*)&__ITMSOfficeHint; }
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


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x2;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;
static const Shortint CLICKMARGIN = 0x5;
extern PACKAGE void __fastcall GetTextPosition(double &x, double &y, const Advgdip::TGPRectF &rectangle, double objectwidth, double objectheight, TTileListTextPosition position);
extern PACKAGE bool __fastcall RectanglesInterSect(const Advgdip::TGPRectF &r1, const Advgdip::TGPRectF &r2);

}	/* namespace Advsmoothtilelist */
using namespace Advsmoothtilelist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothtilelist
