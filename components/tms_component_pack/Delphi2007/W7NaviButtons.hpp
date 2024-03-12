// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7navibuttons.pas' rev: 11.00

#ifndef W7navibuttonsHPP
#define W7navibuttonsHPP

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
#include <Graphics.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7navibuttons
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TW7NavigationDirection { ndBackward, ndForward };
#pragma option pop

class DELPHICLASS TW7NavigationFrame;
class PASCALIMPLEMENTATION TW7NavigationFrame : public W7classes::TW7GraphicControl 
{
	typedef W7classes::TW7GraphicControl inherited;
	
private:
	Graphics::TIcon* FFrame;
	Byte FOpacity;
	void __fastcall SetOpacity(Byte Value);
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TW7NavigationFrame(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7NavigationFrame(void);
	
__published:
	__property Byte Opacity = {read=FOpacity, write=SetOpacity, nodefault};
	__property Visible  = {default=1};
};


class DELPHICLASS TW7CustomNavigationButton;
class PASCALIMPLEMENTATION TW7CustomNavigationButton : public W7classes::TW7GraphicControl 
{
	typedef W7classes::TW7GraphicControl inherited;
	
private:
	bool FEnabled;
	TW7NavigationDirection FDirection;
	Graphics::TIcon* FUp;
	Graphics::TIcon* FDown;
	Graphics::TIcon* FHot;
	Graphics::TIcon* FDisabled;
	Extctrls::TTimer* FInternalTimer;
	int FMouseInOpacity;
	bool FMouseUpped;
	int FFadeInInterval;
	int FFadeOutInterval;
	void __fastcall SetDirection(TW7NavigationDirection Value);
	
protected:
	void __fastcall TimerProc(System::TObject* Sender);
	virtual void __fastcall SetEnabled(bool Value);
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TW7CustomNavigationButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomNavigationButton(void);
	__property TW7NavigationDirection Direction = {read=FDirection, write=SetDirection, default=1};
	__property int FadeInInterval = {read=FFadeInInterval, write=FFadeInInterval, nodefault};
	__property int FadeOutInterval = {read=FFadeOutInterval, write=FFadeOutInterval, nodefault};
};


class DELPHICLASS TW7NavigationButton;
class PASCALIMPLEMENTATION TW7NavigationButton : public TW7CustomNavigationButton 
{
	typedef TW7CustomNavigationButton inherited;
	
__published:
	__property Caption ;
	__property Direction  = {default=1};
	__property FadeInInterval ;
	__property FadeOutInterval ;
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
	/* TW7CustomNavigationButton.Create */ inline __fastcall virtual TW7NavigationButton(Classes::TComponent* AOwner) : TW7CustomNavigationButton(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomNavigationButton.Destroy */ inline __fastcall virtual ~TW7NavigationButton(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7navibuttons */
using namespace W7navibuttons;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7navibuttons
