// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7panels.pas' rev: 11.00

#ifndef W7panelsHPP
#define W7panelsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit
#include <Jpeg.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7panels
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum W7Panels__1 { wpbLeft, wpbTop, wpbRight, wpbBottom };
#pragma option pop

typedef Set<W7Panels__1, wpbLeft, wpbBottom>  TW7PanelBorders;

#pragma option push -b-
enum TW7PanelStyle { wpsNavy, wpsDarkGrey, wpsBlue, wpsBlack, wpsLightBlack, wpsSilver, wpsWinCalc, wpsGreen, wpsCustom };
#pragma option pop

#pragma option push -b-
enum TW7PanelFillStyle { pfsSolid, pfsGradient, pfsDoubleGradient };
#pragma option pop

class DELPHICLASS TW7LeftPanel;
class PASCALIMPLEMENTATION TW7LeftPanel : public W7classes::TW7Control 
{
	typedef W7classes::TW7Control inherited;
	
protected:
	Graphics::TBitmap* Texture;
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	
public:
	__fastcall virtual TW7LeftPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7LeftPanel(void);
	
__published:
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
	__property TabStop  = {default=0};
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
	/* TWinControl.CreateParented */ inline __fastcall TW7LeftPanel(HWND ParentWindow) : W7classes::TW7Control(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7CaptionPanel;
class PASCALIMPLEMENTATION TW7CaptionPanel : public W7classes::TW7Control 
{
	typedef W7classes::TW7Control inherited;
	
protected:
	Graphics::TBitmap* Texture;
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	
public:
	__fastcall virtual TW7CaptionPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CaptionPanel(void);
	
__published:
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
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property OnClick ;
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
	/* TWinControl.CreateParented */ inline __fastcall TW7CaptionPanel(HWND ParentWindow) : W7classes::TW7Control(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7Panel;
class PASCALIMPLEMENTATION TW7Panel : public W7classes::TW7TransparentControl 
{
	typedef W7classes::TW7TransparentControl inherited;
	
private:
	Graphics::TColor FSolidColor;
	Graphics::TColor FOuterBorderColor;
	Graphics::TColor FInnerBorderColor;
	TW7PanelBorders FInnerBorders;
	TW7PanelBorders FOuterBorders;
	bool FRounded;
	Byte FOpacity;
	TW7PanelStyle FStyle;
	TW7PanelFillStyle FFillStyle;
	Graphics::TColor FColorA;
	Graphics::TColor FColorB;
	Graphics::TColor FColorC;
	Graphics::TColor FColorD;
	bool FVerticalGradient;
	void __fastcall SetSolidColor(Graphics::TColor Value);
	void __fastcall SetOuterBorderColor(Graphics::TColor Value);
	void __fastcall SetInnerBorderColor(Graphics::TColor Value);
	void __fastcall SetInnerBorders(TW7PanelBorders Value);
	void __fastcall SetOuterBorders(TW7PanelBorders Value);
	void __fastcall SetRounded(bool Value);
	void __fastcall SetOpacity(Byte Value);
	void __fastcall SetStyle(TW7PanelStyle Value);
	void __fastcall SetFillStyle(TW7PanelFillStyle Value);
	void __fastcall SetColorA(Graphics::TColor Value);
	void __fastcall SetColorB(Graphics::TColor Value);
	void __fastcall SetColorC(Graphics::TColor Value);
	void __fastcall SetColorD(Graphics::TColor Value);
	void __fastcall SetVerticalGradient(bool Value);
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TW7Panel(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7Panel(void);
	
__published:
	__property Caption ;
	__property Font ;
	__property Graphics::TColor SolidColor = {read=FSolidColor, write=SetSolidColor, default=16777215};
	__property Graphics::TColor OuterBorderColor = {read=FOuterBorderColor, write=SetOuterBorderColor, default=11377806};
	__property Graphics::TColor InnerBorderColor = {read=FInnerBorderColor, write=SetInnerBorderColor, default=16777215};
	__property TW7PanelBorders InnerBorders = {read=FInnerBorders, write=SetInnerBorders, nodefault};
	__property TW7PanelBorders OuterBorders = {read=FOuterBorders, write=SetOuterBorders, nodefault};
	__property bool Rounded = {read=FRounded, write=SetRounded, default=1};
	__property Byte Opacity = {read=FOpacity, write=SetOpacity, default=255};
	__property TW7PanelStyle Style = {read=FStyle, write=SetStyle, default=6};
	__property TW7PanelFillStyle FillStyle = {read=FFillStyle, write=SetFillStyle, default=2};
	__property bool VerticalGradient = {read=FVerticalGradient, write=SetVerticalGradient, default=1};
	__property Graphics::TColor ColorA = {read=FColorA, write=SetColorA, default=16577517};
	__property Graphics::TColor ColorB = {read=FColorB, write=SetColorB, default=16777215};
	__property Graphics::TColor ColorC = {read=FColorC, write=SetColorC, default=16777215};
	__property Graphics::TColor ColorD = {read=FColorD, write=SetColorD, default=16577517};
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
	__property TabStop  = {default=0};
	__property Visible  = {default=1};
	__property OnClick ;
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
	/* TWinControl.CreateParented */ inline __fastcall TW7Panel(HWND ParentWindow) : W7classes::TW7TransparentControl(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7panels */
using namespace W7panels;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7panels
