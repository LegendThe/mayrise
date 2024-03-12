// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advgriddropdown.pas' rev: 11.00

#ifndef AdvgriddropdownHPP
#define AdvgriddropdownHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Advcustomgriddropdown.hpp>	// Pascal unit
#include <Advgrid.hpp>	// Pascal unit
#include <Advdropdown.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advgriddropdown
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvGridDropDown;
class PASCALIMPLEMENTATION TAdvGridDropDown : public Advcustomgriddropdown::TCustomAdvGridDropDown 
{
	typedef Advcustomgriddropdown::TCustomAdvGridDropDown inherited;
	
private:
	Advgrid::TAdvStringGrid* __fastcall GetAdvGrid(void);
	
public:
	__property Advgrid::TAdvStringGrid* Grid = {read=GetAdvGrid};
public:
	#pragma option push -w-inl
	/* TCustomAdvGridDropDown.Create */ inline __fastcall virtual TAdvGridDropDown(Classes::TComponent* AOwner) : Advcustomgriddropdown::TCustomAdvGridDropDown(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomAdvGridDropDown.Destroy */ inline __fastcall virtual ~TAdvGridDropDown(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvGridDropDown(HWND ParentWindow) : Advcustomgriddropdown::TCustomAdvGridDropDown(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advgriddropdown */
using namespace Advgriddropdown;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advgriddropdown
