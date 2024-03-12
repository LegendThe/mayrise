// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Infostru.pas' rev: 11.00

#ifndef InfostruHPP
#define InfostruHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Infostru
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TInfoStructForm;
class PASCALIMPLEMENTATION TInfoStructForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Buttons::TBitBtn* CloseBtn;
	Extctrls::TPanel* Panel1;
	Extctrls::TPanel* Panel2;
	Extctrls::TPanel* Panel3;
	Stdctrls::TLabel* RecNoLabel;
	Grids::TStringGrid* poStructGrid;
	void __fastcall CloseBtnClick(System::TObject* Sender);
	void __fastcall poStructGridSelectCell(System::TObject* Sender, int Col, int Row, bool &CanSelect);
	void __fastcall FillGrid(void);
	void __fastcall FormActivate(System::TObject* Sender);
	
public:
	int hInfoTableHandle;
	AnsiString strInfoFileName;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TInfoStructForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TInfoStructForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TInfoStructForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TInfoStructForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TInfoStructForm* InfoStructForm;

}	/* namespace Infostru */
using namespace Infostru;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Infostru
