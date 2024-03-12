// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Colorcombo.pas' rev: 11.00

#ifndef ColorcomboHPP
#define ColorcomboHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Asgcombo.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Colorcombo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvColorComboBox;
class PASCALIMPLEMENTATION TAdvColorComboBox : public Asgcombo::TAsgComboBox 
{
	typedef Asgcombo::TAsgComboBox inherited;
	
private:
	Graphics::TColor __fastcall GetSelectedColor(void);
	void __fastcall SetSelectedColor(const Graphics::TColor Value);
	
protected:
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	
public:
	__fastcall virtual TAdvColorComboBox(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	__property Graphics::TColor SelectedColor = {read=GetSelectedColor, write=SetSelectedColor, nodefault};
public:
	#pragma option push -w-inl
	/* TAsgCustomCombo.Destroy */ inline __fastcall virtual ~TAdvColorComboBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvColorComboBox(HWND ParentWindow) : Asgcombo::TAsgComboBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Colorcombo */
using namespace Colorcombo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Colorcombo