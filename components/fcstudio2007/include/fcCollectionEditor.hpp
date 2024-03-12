// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fccollectioneditor.pas' rev: 11.00

#ifndef FccollectioneditorHPP
#define FccollectioneditorHPP

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
#include <Extctrls.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit
#include <Fccollection.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Toolwin.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccollectioneditor
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCollectionEditorForm;
class PASCALIMPLEMENTATION TfcCollectionEditorForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Comctrls::TListView* ItemsList;
	Comctrls::TToolBar* ToolBar;
	Buttons::TSpeedButton* AddButton;
	Buttons::TSpeedButton* DeleteButton;
	Comctrls::TToolButton* ToolButton1;
	Buttons::TSpeedButton* MoveUpButton;
	Buttons::TSpeedButton* MoveDownButton;
	Comctrls::TToolButton* ToolButton2;
	Buttons::TSpeedButton* UserButton1;
	Buttons::TSpeedButton* UserButton2;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* Add1;
	Menus::TMenuItem* Delete1;
	Menus::TMenuItem* MoveUp1;
	Menus::TMenuItem* MoveDown1;
	Menus::TMenuItem* SelectAll1;
	Menus::TMenuItem* N1;
	Menus::TMenuItem* ShowToolbarMenu;
	void __fastcall MoveButtonClick(System::TObject* Sender);
	void __fastcall DeleteButtonClick(System::TObject* Sender);
	void __fastcall AddButtonClick(System::TObject* Sender);
	void __fastcall ItemsListBoxKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall FormResize(System::TObject* Sender);
	void __fastcall ItemsListDragOver(System::TObject* Sender, System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall ItemsListDragDrop(System::TObject* Sender, System::TObject* Source, int X, int Y);
	void __fastcall ItemsListKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall ItemsListMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall SelectAll1Click(System::TObject* Sender);
	void __fastcall ShowToolbarMenuClick(System::TObject* Sender);
	void __fastcall PopupMenu1Popup(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	
protected:
	bool IgnoreChange;
	Fccollection::TfcCollectionItem* __fastcall GetSelectedComponent(int Index);
	AnsiString __fastcall GetItemText(Fccollection::TfcCollectionItem* Item);
	void __fastcall ItemUpdateSelection(Fccollection::TfcCollectionItem* Item);
	void __fastcall ItemRefreshDesign(System::TObject* Sender);
	void __fastcall ResetForm(void);
	
public:
	Fccollection::TfcCollection* Collection;
	Designintf::_di_IDesigner Designer;
	AnsiString PropertyName;
	Classes::TComponent* Component;
	void __fastcall Reload(void);
	virtual void __fastcall SetSelection(Classes::TPersistent* Instance, bool Selected);
	virtual void __fastcall Update(void);
	__fastcall virtual ~TfcCollectionEditorForm(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TfcCollectionEditorForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfcCollectionEditorForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCollectionEditorForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcCollectionCustomizeEvent)(TfcCollectionEditorForm* EditorForm);

//-- var, const, procedure ---------------------------------------------------
#define sfcInvalidParameter "Parameter %s of %s cannot be %s"
extern PACKAGE TfcCollectionEditorForm* fcCollectionEditorForm;
extern PACKAGE void __fastcall fcExecuteCollectionEditor(AnsiString ACaption, Designintf::_di_IDesigner ADesigner, AnsiString APropertyName, Fccollection::TfcCollection* ACollection, TfcCollectionCustomizeEvent CustomizeEvent);

}	/* namespace Fccollectioneditor */
using namespace Fccollectioneditor;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fccollectioneditor
