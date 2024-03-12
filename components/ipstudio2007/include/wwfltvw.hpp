// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwfltvw.pas' rev: 11.00

#ifndef WwfltvwHPP
#define WwfltvwHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Wwdbgrid.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwtypes.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwfltvw
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwFilterDialogView;
class PASCALIMPLEMENTATION TwwFilterDialogView : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Grids::TStringGrid* StringGrid1;
	Buttons::TBitBtn* CancelBtn;
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall StringGrid1DrawCell(System::TObject* Sender, int Col, int Row, const Types::TRect &Rect, Grids::TGridDrawState State);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall StringGrid1Enter(System::TObject* Sender);
	
private:
	void __fastcall ApplyIntl(void);
	
public:
	Stdctrls::TButton* OKBtn;
	__fastcall virtual TwwFilterDialogView(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwFilterDialogView(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TwwFilterDialogView(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwFilterDialogView(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall wwFilterDialogView(Classes::TComponent* tc, Classes::TList* FieldInfo);

}	/* namespace Wwfltvw */
using namespace Wwfltvw;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwfltvw