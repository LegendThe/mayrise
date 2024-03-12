// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advlockappdlg.pas' rev: 11.00

#ifndef AdvlockappdlgHPP
#define AdvlockappdlgHPP

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
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advlockappdlg
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvUnlockForm;
class PASCALIMPLEMENTATION TAdvUnlockForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TLabel* lbl_usr;
	Stdctrls::TLabel* lbl_pwd;
	Stdctrls::TLabel* lb_Username;
	Mask::TMaskEdit* me_Password;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
	
public:
	__fastcall TAdvUnlockForm(Classes::TComponent* AOwner, AnsiString UserName)/* overload */;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvUnlockForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvUnlockForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvUnlockForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvUnlockForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TAdvUnlockForm* AdvUnLockForm;

}	/* namespace Advlockappdlg */
using namespace Advlockappdlg;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advlockappdlg
