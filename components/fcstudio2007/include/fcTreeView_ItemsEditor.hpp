// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fctreeview_itemseditor.pas' rev: 11.00

#ifndef Fctreeview_itemseditorHPP
#define Fctreeview_itemseditorHPP

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
#include <Comctrls.hpp>	// Pascal unit
#include <Fctreeview.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Checklst.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fctreeview_itemseditor
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcTreeViewItemsEditor;
class PASCALIMPLEMENTATION TfcTreeViewItemsEditor : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TLabel* Label1;
	Stdctrls::TEdit* TextEdit;
	Stdctrls::TGroupBox* GroupBox2;
	Stdctrls::TLabel* Label2;
	Stdctrls::TLabel* Label3;
	Stdctrls::TLabel* Label4;
	Stdctrls::TEdit* ImageIndexEdit;
	Stdctrls::TEdit* SelectedIndexEdit;
	Stdctrls::TEdit* StateIndexEdit;
	Stdctrls::TCheckBox* ShowCheckBox;
	Checklst::TCheckListBox* CheckListBox;
	Fctreeview::TfcTreeView* TreeView;
	Stdctrls::TEdit* StringData1Edit;
	Stdctrls::TLabel* Label5;
	Dialogs::TSaveDialog* SaveDialog1;
	Dialogs::TOpenDialog* OpenDialog1;
	Stdctrls::TLabel* Label6;
	Stdctrls::TEdit* StringData2Edit;
	Extctrls::TPanel* Panel1;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
	Stdctrls::TButton* Button4;
	Extctrls::TPanel* Panel2;
	Buttons::TSpeedButton* NewItemButton;
	Buttons::TSpeedButton* NewSubitemButton;
	Buttons::TSpeedButton* DeleteButton;
	Buttons::TSpeedButton* MoveUpButton;
	Buttons::TSpeedButton* MoveDownButton;
	Buttons::TSpeedButton* LoadButton;
	Buttons::TSpeedButton* SpeedButton1;
	Stdctrls::TGroupBox* CheckboxRadioGroup;
	Stdctrls::TRadioButton* CheckboxButton;
	Stdctrls::TRadioButton* RadioButton;
	Stdctrls::TCheckBox* GrayedCheckbox;
	void __fastcall NewItemButtonClick(System::TObject* Sender);
	void __fastcall NewSubitemButtonClick(System::TObject* Sender);
	void __fastcall DeleteButtonClick(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall Button3Click(System::TObject* Sender);
	void __fastcall TextEditChange(System::TObject* Sender);
	void __fastcall ShowCheckBoxClick(System::TObject* Sender);
	void __fastcall StateIndexEditExit(System::TObject* Sender);
	void __fastcall SelectedIndexEditExit(System::TObject* Sender);
	void __fastcall ImageIndexEditExit(System::TObject* Sender);
	void __fastcall CheckListBoxClickCheck(System::TObject* Sender);
	void __fastcall CheckListBoxDrawItem(Controls::TWinControl* Control, int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	void __fastcall CheckListBoxClick(System::TObject* Sender);
	void __fastcall TreeViewDragDrop(System::TObject* Sender, System::TObject* Source, int X, int Y);
	void __fastcall MoveButtonClick(System::TObject* Sender);
	void __fastcall TreeViewMouseDown(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall TreeViewDragOver(System::TObject* Sender, System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall StateIndexEditKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall StringData1EditExit(System::TObject* Sender);
	void __fastcall LoadButtonClick(System::TObject* Sender);
	void __fastcall SpeedButton1Click(System::TObject* Sender);
	void __fastcall StringData2EditExit(System::TObject* Sender);
	void __fastcall FormResize(System::TObject* Sender);
	void __fastcall CheckboxButtonClick(System::TObject* Sender);
	void __fastcall RadioButtonClick(System::TObject* Sender);
	void __fastcall GrayedCheckboxClick(System::TObject* Sender);
	void __fastcall TreeViewToggleCheckbox(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node);
	void __fastcall TreeViewChanging(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node, bool &AllowChange);
	void __fastcall TreeViewChange(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node);
	void __fastcall TreeViewCalcNodeAttributes(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node, Fctreeview::TfcItemStates State);
	void __fastcall Button4Click(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	
private:
	bool SuspendCheckboxList;
	bool InRefreshControls;
	bool DataModified;
	Fctreeview::TfcCustomTreeView* OrigTreeView;
	void __fastcall RefreshControls(void);
	void __fastcall UpdateNode(bool UpdateAll);
	void __fastcall RefreshChecklistBox(Fctreeview::TfcTreeNode* Node);
	void __fastcall FillChecklistBox(void);
	void __fastcall SetCheckboxEnabled(bool val);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TfcTreeViewItemsEditor(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfcTreeViewItemsEditor(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfcTreeViewItemsEditor(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTreeViewItemsEditor(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


typedef IDesigner TFormDesigner;
;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TfcTreeViewItemsEditor* fcTreeViewItemsEditor;
extern PACKAGE void __fastcall ExecuteTreeNodesEditor(Designintf::_di_IDesigner ADesigner, Fctreeview::TfcTreeView* ATreeView);

}	/* namespace Fctreeview_itemseditor */
using namespace Fctreeview_itemseditor;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fctreeview_itemseditor
