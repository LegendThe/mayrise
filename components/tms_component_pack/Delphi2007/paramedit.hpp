// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Paramedit.pas' rev: 11.00

#ifndef ParameditHPP
#define ParameditHPP

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

//-- user supplied -----------------------------------------------------------

namespace Paramedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TParamInfo;
class PASCALIMPLEMENTATION TParamInfo : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TLabel* Label1;
	Stdctrls::TEdit* pid;
	Stdctrls::TLabel* Label2;
	Stdctrls::TEdit* pval;
	Stdctrls::TLabel* Label3;
	Stdctrls::TEdit* phint;
	Stdctrls::TLabel* Label4;
	Stdctrls::TComboBox* ptype;
	Stdctrls::TLabel* Label5;
	Stdctrls::TEdit* pextra;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TParamInfo(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TParamInfo(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TParamInfo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TParamInfo(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TParamInfo* ParamInfo;

}	/* namespace Paramedit */
using namespace Paramedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Paramedit