// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Indexdlg.pas' rev: 11.00

#ifndef IndexdlgHPP
#define IndexdlgHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Adsdata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Indexdlg
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TIndexFileNames;
class PASCALIMPLEMENTATION TIndexFileNames : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TButton* btnAdd;
	Stdctrls::TButton* btnDelete;
	Stdctrls::TButton* btnClearAll;
	Stdctrls::TButton* btnOK;
	Stdctrls::TButton* btnCancel;
	Stdctrls::TButton* btnBrowse;
	Stdctrls::TEdit* edAddString;
	Comctrls::TTreeView* tvFileListTreeView;
	void __fastcall btnBrowseClick(System::TObject* Sender);
	void __fastcall btnOKClick(System::TObject* Sender);
	void __fastcall btnCancelClick(System::TObject* Sender);
	void __fastcall btnClearAllClick(System::TObject* Sender);
	void __fastcall btnAddClick(System::TObject* Sender);
	void __fastcall OnAddStringKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall btnDeleteClick(System::TObject* Sender);
	
public:
	Adsdata::TAdsDataSet* AdsComponent;
	bool bOkPressed;
	__fastcall virtual TIndexFileNames(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TIndexFileNames(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TIndexFileNames(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TIndexFileNames(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TIndexFileNames* IndexFileNames;

}	/* namespace Indexdlg */
using namespace Indexdlg;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Indexdlg
