// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcshapebtn.pas' rev: 11.00

#ifndef FcshapebtnHPP
#define FcshapebtnHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit
#include <Fctext.hpp>	// Pascal unit
#include <Themes.hpp>	// Pascal unit
#include <Fcbutton.hpp>	// Pascal unit
#include <Fcimgbtn.hpp>	// Pascal unit
#include <Fcevaluator.hpp>	// Pascal unit
#include <Fcbitmap.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcshapebtn
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcShapeOrientation { soLeft, soRight, soUp, soDown };
#pragma option pop

#pragma option push -b-
enum TfcButtonShape { bsRoundRect, bsEllipse, bsTriangle, bsArrow, bsDiamond, bsRect, bsStar, bsTrapezoid, bsCustom };
#pragma option pop

typedef void __fastcall (__closure *TwwComputeCanvasAttributes)(System::TObject* Sender, Graphics::TCanvas* ACanvas);

class DELPHICLASS TfcCustomShapeBtn;
class PASCALIMPLEMENTATION TfcCustomShapeBtn : public Fcimgbtn::TfcCustomImageBtn 
{
	typedef Fcimgbtn::TfcCustomImageBtn inherited;
	
private:
	Classes::TStringList* FPointList;
	TfcButtonShape FShape;
	TfcShapeOrientation FOrientation;
	int FRoundRectBias;
	Graphics::TBitmap* FRegionBitmap;
	TwwComputeCanvasAttributes FOnComputeCanvasAttributes;
	void __fastcall SetShape(TfcButtonShape Value);
	void __fastcall SetOrientation(TfcShapeOrientation Value);
	void __fastcall SetPointList(Classes::TStringList* Value);
	void __fastcall SetRoundRectBias(int Value);
	Graphics::TColor __fastcall CorrectedColor(void);
	
protected:
	virtual void __fastcall DoComputeCanvasAttributes(Graphics::TCanvas* ACanvas);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual bool __fastcall StoreRegionData(void);
	Graphics::TColor __fastcall UnusableColor(void);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	HIDESBASE void __fastcall Draw3dLines(Fcbitmap::TfcBitmap* Bitmap, Types::TPoint * PointList, const int PointList_Size, int NumPoints, Graphics::TColor TransColor);
	void __fastcall SetPointToOrientation(Fccommon::PfcPolyGonPoints Points, int NumPoints, TfcShapeOrientation Orientation, const tagSIZE &Size);
	int __fastcall GetCustomPoints(Fccommon::PfcPolyGonPoints &Points, const tagSIZE &Size);
	int __fastcall GetStarPoints(Fccommon::PfcPolyGonPoints &Points, const tagSIZE &Size);
	int __fastcall GetPolygonPoints(Fccommon::PfcPolyGonPoints &Points);
	virtual HRGN __fastcall CreateRegion(bool DoImplementation, bool Down);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall UseRegions(void);
	__property Graphics::TBitmap* RegionBitmap = {read=FRegionBitmap, write=FRegionBitmap};
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomShapeBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomShapeBtn(void);
	virtual bool __fastcall IsMultipleRegions(void);
	virtual bool __fastcall RoundShape(void);
	virtual void __fastcall GetDrawBitmap(Fcbitmap::TfcBitmap* DrawBitmap, bool ForRegion, Fcbutton::TfcShadeStyle ShadeStyle, bool Down);
	virtual void __fastcall SizeToDefault(void);
	__property TfcShapeOrientation Orientation = {read=FOrientation, write=SetOrientation, default=2};
	__property Classes::TStringList* PointList = {read=FPointList, write=SetPointList};
	__property int RoundRectBias = {read=FRoundRectBias, write=SetRoundRectBias, default=0};
	__property TfcButtonShape Shape = {read=FShape, write=SetShape, default=5};
	__property TwwComputeCanvasAttributes OnComputeCanvasAttributes = {read=FOnComputeCanvasAttributes, write=FOnComputeCanvasAttributes};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomShapeBtn(HWND ParentWindow) : Fcimgbtn::TfcCustomImageBtn(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcShapeBtn;
class PASCALIMPLEMENTATION TfcShapeBtn : public TfcCustomShapeBtn 
{
	typedef TfcCustomShapeBtn inherited;
	
__published:
	__property Action ;
	__property Anchors  = {default=3};
	__property Constraints ;
	__property StaticCaption  = {default=0};
	__property AllowAllUp  = {default=0};
	__property Cancel  = {default=0};
	__property Caption ;
	__property Color  = {default=-16777211};
	__property Default  = {default=0};
	__property DitherColor ;
	__property Down  = {default=0};
	__property DragCursor  = {default=-12};
	__property DataSource ;
	__property DataField ;
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Font ;
	__property Enabled  = {default=1};
	__property Glyph ;
	__property GroupIndex  = {default=0};
	__property Kind  = {default=0};
	__property Layout  = {default=0};
	__property Margin  = {default=-1};
	__property ModalResult  = {default=0};
	__property NumGlyphs  = {default=1};
	__property Options  = {default=0};
	__property Offsets ;
	__property Orientation  = {default=2};
	__property ParentClipping ;
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PointList ;
	__property PopupMenu ;
	__property RoundRectBias  = {default=0};
	__property ShadeColors ;
	__property ShadeStyle ;
	__property Shape  = {default=5};
	__property ShowHint ;
	__property SmoothFont  = {default=0};
	__property Spacing  = {default=4};
	__property Style  = {default=0};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=0};
	__property TextOptions ;
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnSelChange ;
	__property OnStartDrag ;
	__property OnComputeCanvasAttributes ;
	__property DisableThemes  = {default=0};
public:
	#pragma option push -w-inl
	/* TfcCustomShapeBtn.Create */ inline __fastcall virtual TfcShapeBtn(Classes::TComponent* AOwner) : TfcCustomShapeBtn(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomShapeBtn.Destroy */ inline __fastcall virtual ~TfcShapeBtn(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcShapeBtn(HWND ParentWindow) : TfcCustomShapeBtn(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const int DEFUNUSECOLOR = 255;
static const int DEFUNUSECOLOR2 = 16711680;

}	/* namespace Fcshapebtn */
using namespace Fcshapebtn;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcshapebtn
