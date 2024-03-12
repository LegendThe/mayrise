// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcabout.pas' rev: 11.00

#ifndef FcaboutHPP
#define FcaboutHPP

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
#include <Extctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Fclabel.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcabout
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcAbout1stForm;
class PASCALIMPLEMENTATION TfcAbout1stForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Extctrls::TBevel* Bevel1;
	Stdctrls::TLabel* Label4;
	Stdctrls::TButton* Button1;
	Stdctrls::TLabel* Registration;
	Stdctrls::TLabel* Version;
	Fclabel::TfcLabel* fcLabel1;
	Fclabel::TfcLabel* fcLabel2;
	void __fastcall FormShow(System::TObject* Sender);
	
public:
	AnsiString ARegistration;
	AnsiString AVersion;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TfcAbout1stForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfcAbout1stForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfcAbout1stForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcAbout1stForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TfcAbout1stForm* fcAbout1stForm;

}	/* namespace Fcabout */
using namespace Fcabout;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcabout
