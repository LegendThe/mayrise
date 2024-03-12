// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwfltfld.pas' rev: 11.00

#ifndef WwfltfldHPP
#define WwfltfldHPP

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
#include <Db.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwaddlk.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Tabnotbk.hpp>	// Pascal unit
#include <Tabs.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwdblook.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Wwdbgrid.hpp>	// Pascal unit
#include <Wwquery.hpp>	// Pascal unit
#include <Wwqbe.hpp>	// Pascal unit
#include <Wwdbdlg.hpp>	// Pascal unit
#include <Wwidlg.hpp>	// Pascal unit
#include <Wwprpfld.hpp>	// Pascal unit
#include <Wwfltdlg.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwfltfld
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TSelFilterFieldsForm;
class PASCALIMPLEMENTATION TSelFilterFieldsForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TListBox* DstList;
	Stdctrls::TButton* AddButton;
	Stdctrls::TButton* Button3;
	Extctrls::TPanel* Panel1;
	Stdctrls::TEdit* FieldDisplay;
	Stdctrls::TLabel* Label1;
	Extctrls::TPanel* OKCancelPanel;
	Buttons::TBitBtn* OKBtn;
	Buttons::TBitBtn* CancelBtn;
	bool __fastcall InDestList(AnsiString Value);
	void __fastcall ExcludeItems(void);
	void __fastcall ExcludeBtnClick(System::TObject* Sender);
	void __fastcall Button3Click(System::TObject* Sender);
	void __fastcall AddButtonClick(System::TObject* Sender);
	void __fastcall DstListDragDrop(System::TObject* Sender, System::TObject* Source, int X, int Y);
	void __fastcall DstListDragOver(System::TObject* Sender, System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall DstListMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall DstListClick(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall FormResize(System::TObject* Sender);
	void __fastcall DstListKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall FieldDisplayExit(System::TObject* Sender);
	
private:
	Db::TField* curField;
	int dragFromRow;
	bool initialized;
	Classes::TStrings* SrcListItems;
	Classes::TStrings* SelectedList;
	Wwfltdlg::TwwFilterDialog* Dialog;
	void __fastcall UpdateFieldDisplay(void);
	int __fastcall GetSelectedListIndex(AnsiString value);
	
public:
	__fastcall virtual TSelFilterFieldsForm(Classes::TComponent* AOwner);
	__fastcall virtual ~TSelFilterFieldsForm(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TSelFilterFieldsForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TSelFilterFieldsForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall wwSelectFilterableFields(Wwfltdlg::TwwFilterDialog* ADialog, Classes::TStrings* FieldList);

}	/* namespace Wwfltfld */
using namespace Wwfltfld;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwfltfld
