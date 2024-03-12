// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7bars.pas' rev: 11.00

#ifndef W7barsHPP
#define W7barsHPP

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
#include <W7graphics.hpp>	// Pascal unit
#include <W7classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7bars
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TW7InformationBar;
class PASCALIMPLEMENTATION TW7InformationBar : public W7classes::TW7Control 
{
	typedef W7classes::TW7Control inherited;
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TW7InformationBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7InformationBar(void);
	__property Padding ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7InformationBar(HWND ParentWindow) : W7classes::TW7Control(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7ToolBar;
class PASCALIMPLEMENTATION TW7ToolBar : public W7classes::TW7Control 
{
	typedef W7classes::TW7Control inherited;
	
private:
	bool FShowTopBorder;
	void __fastcall SetShowTopBorder(bool Value);
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TW7ToolBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7ToolBar(void);
	
__published:
	__property bool ShowTopBorder = {read=FShowTopBorder, write=SetShowTopBorder, nodefault};
	__property Padding ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7ToolBar(HWND ParentWindow) : W7classes::TW7Control(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7bars */
using namespace W7bars;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7bars
