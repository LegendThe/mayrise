// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwinspectorprop.pas' rev: 11.00

#ifndef WwinspectorpropHPP
#define WwinspectorpropHPP

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
#include <Buttons.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Checklst.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Wwdatainspector.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwinspectorprop
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TInspectorPropEdit;
class PASCALIMPLEMENTATION TInspectorPropEdit : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Extctrls::TPanel* Panel2;
	Buttons::TSpeedButton* NewItemButton;
	Buttons::TSpeedButton* NewSubItemButton;
	Buttons::TSpeedButton* DeleteButton;
	Buttons::TSpeedButton* MoveUpButton;
	Buttons::TSpeedButton* MoveDownButton;
	Stdctrls::TButton* Button5;
	void __fastcall NewItemButtonClick(System::TObject* Sender);
	void __fastcall NewSubitemButtonClick(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall MoveButtonClick(System::TObject* Sender);
	void __fastcall TreeViewDragDrop(System::TObject* Sender, System::TObject* Source, int X, int Y);
	void __fastcall TreeViewDragOver(System::TObject* Sender, System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall TreeViewMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall DeleteButtonClick(System::TObject* Sender);
	void __fastcall TreeViewChange(System::TObject* Sender, Comctrls::TTreeNode* Node);
	void __fastcall TreeViewExpanded(System::TObject* Sender, Comctrls::TTreeNode* Node);
	void __fastcall TreeViewCollapsed(System::TObject* Sender, Comctrls::TTreeNode* Node);
	void __fastcall TreeViewCustomDrawItem(Comctrls::TCustomTreeView* Sender, Comctrls::TTreeNode* Node, Comctrls::TCustomDrawState State, bool &DefaultDraw);
	void __fastcall Button5Click(System::TObject* Sender);
	
private:
	Comctrls::TTreeView* TreeView;
	Designintf::_di_IDesigner Designer;
	Wwdatainspector::TwwDataInspector* Inspector;
	bool SkipUpdate;
	bool SkipChange;
	void __fastcall AddChildrenToTree(Comctrls::TTreeNode* ParentNode, Wwdatainspector::TwwInspectorCollection* Items);
	void __fastcall AddChildrenToInspector(Comctrls::TTreeNode* ParentNode, Wwdatainspector::TwwInspectorItem* ParentItem);
	void __fastcall RefreshNodeText(Comctrls::TTreeNode* ParentNode);
	
public:
	__fastcall virtual ~TInspectorPropEdit(void);
	virtual void __fastcall Update(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TInspectorPropEdit(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TInspectorPropEdit(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TInspectorPropEdit(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TInspectorPropEdit* InspectorPropEdit;
extern PACKAGE bool __fastcall ExecuteInspectorEditor(Designintf::_di_IDesigner ADesigner, Wwdatainspector::TwwDataInspector* AEdit);

}	/* namespace Wwinspectorprop */
using namespace Wwinspectorprop;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwinspectorprop
