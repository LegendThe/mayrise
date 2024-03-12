// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asgfinddialog.pas' rev: 11.00

#ifndef AsgfinddialogHPP
#define AsgfinddialogHPP

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
#include <Advgrid.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asgfinddialog
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAsgFindDlg;
class DELPHICLASS TAdvGridFindDialog;
typedef void __fastcall (__closure *TCellFoundEvent)(System::TObject* Sender, Advgrid::TAdvStringGrid* Grid, int ACol, int ARow, AnsiString Value);

class PASCALIMPLEMENTATION TAdvGridFindDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Advgrid::TAdvStringGrid* FGrid;
	TAsgFindDlg* FAsgFind;
	AnsiString FTxtCaption;
	AnsiString FTxtOptionsWholeWords;
	AnsiString FTxtScope;
	AnsiString FTxtDirForward1;
	AnsiString FTxtDirForward2;
	AnsiString FTxtBtnOk;
	AnsiString FTxtScopeCurrCol;
	AnsiString FTxtOptionsCase;
	AnsiString FTxtOptionsFixedCells;
	AnsiString FTxtOptionsMatchFirst;
	AnsiString FTxtScopeAllCells;
	AnsiString FTxtScopeSelectedCells;
	AnsiString FTxtTextToFind;
	AnsiString FTxtScopeCurrRow;
	AnsiString FTxtBtnCancel;
	AnsiString FTxtDirBackward1;
	AnsiString FTxtDirBackward2;
	AnsiString FTxtDirection;
	AnsiString FTxtOptionsIgnoreHTML;
	AnsiString FTxtOptions;
	AnsiString FMsgNoMoreFound;
	AnsiString FMsgNotFound;
	AnsiString FSearchText;
	bool FAutoPosition;
	AnsiString FTxtOptionsWildcards;
	Classes::TNotifyEvent FOnFindDone;
	Classes::TNotifyEvent FOnFindClose;
	Controls::TKeyEvent FOnDialogKeyDown;
	TCellFoundEvent FOnCellFound;
	int FDialogWidth;
	void __fastcall SetDialogWidth(const int Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall FindDone(System::TObject* Sender);
	void __fastcall FindClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall DialogKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	
public:
	__fastcall virtual TAdvGridFindDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvGridFindDialog(void);
	void __fastcall Execute(void);
	__property TAsgFindDlg* Dialog = {read=FAsgFind};
	
__published:
	__property bool AutoPosition = {read=FAutoPosition, write=FAutoPosition, nodefault};
	__property int DialogWidth = {read=FDialogWidth, write=SetDialogWidth, default=360};
	__property Advgrid::TAdvStringGrid* Grid = {read=FGrid, write=FGrid};
	__property AnsiString MsgNotFound = {read=FMsgNotFound, write=FMsgNotFound};
	__property AnsiString MsgNoMoreFound = {read=FMsgNoMoreFound, write=FMsgNoMoreFound};
	__property AnsiString SearchText = {read=FSearchText, write=FSearchText};
	__property AnsiString TxtCaption = {read=FTxtCaption, write=FTxtCaption};
	__property AnsiString TxtTextToFind = {read=FTxtTextToFind, write=FTxtTextToFind};
	__property AnsiString TxtDirection = {read=FTxtDirection, write=FTxtDirection};
	__property AnsiString TTxtDirForward1 = {read=FTxtDirForward1, write=FTxtDirForward1};
	__property AnsiString TTxtDirForward2 = {read=FTxtDirForward2, write=FTxtDirForward2};
	__property AnsiString TTxtDirBackward1 = {read=FTxtDirBackward1, write=FTxtDirBackward1};
	__property AnsiString TTxtDirBackward2 = {read=FTxtDirBackward2, write=FTxtDirBackward2};
	__property AnsiString TxtScope = {read=FTxtScope, write=FTxtScope};
	__property AnsiString TxtScopeAllCells = {read=FTxtScopeAllCells, write=FTxtScopeAllCells};
	__property AnsiString TxtScopeCurrRow = {read=FTxtScopeCurrRow, write=FTxtScopeCurrRow};
	__property AnsiString TxtScopeCurrCol = {read=FTxtScopeCurrCol, write=FTxtScopeCurrCol};
	__property AnsiString TxtScopeSelectedCells = {read=FTxtScopeSelectedCells, write=FTxtScopeSelectedCells};
	__property AnsiString TxtOptions = {read=FTxtOptions, write=FTxtOptions};
	__property AnsiString TxtOptionsCase = {read=FTxtOptionsCase, write=FTxtOptionsCase};
	__property AnsiString TxtOptionsWholeWords = {read=FTxtOptionsWholeWords, write=FTxtOptionsWholeWords};
	__property AnsiString TxtOptionsMatchFirst = {read=FTxtOptionsMatchFirst, write=FTxtOptionsMatchFirst};
	__property AnsiString TxtOptionsIgnoreHTML = {read=FTxtOptionsIgnoreHTML, write=FTxtOptionsIgnoreHTML};
	__property AnsiString TxtOptionsFixedCells = {read=FTxtOptionsFixedCells, write=FTxtOptionsFixedCells};
	__property AnsiString TxtOptionsWildcards = {read=FTxtOptionsWildcards, write=FTxtOptionsWildcards};
	__property AnsiString TxtBtnOk = {read=FTxtBtnOk, write=FTxtBtnOk};
	__property AnsiString TxtBtnCancel = {read=FTxtBtnCancel, write=FTxtBtnCancel};
	__property TCellFoundEvent OnCellFound = {read=FOnCellFound, write=FOnCellFound};
	__property Classes::TNotifyEvent OnFindDone = {read=FOnFindDone, write=FOnFindDone};
	__property Classes::TNotifyEvent OnFindClose = {read=FOnFindClose, write=FOnFindClose};
	__property Controls::TKeyEvent OnDialogKeyDown = {read=FOnDialogKeyDown, write=FOnDialogKeyDown};
};


class PASCALIMPLEMENTATION TAsgFindDlg : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* Options;
	Stdctrls::TLabel* Label1;
	Stdctrls::TComboBox* TextToFind;
	Stdctrls::TCheckBox* Docase;
	Stdctrls::TCheckBox* Whole;
	Stdctrls::TCheckBox* MatchFirst;
	Stdctrls::TCheckBox* IgnoreHTML;
	Extctrls::TRadioGroup* Scope;
	Stdctrls::TButton* OkBtn;
	Stdctrls::TButton* CancelBtn;
	Stdctrls::TCheckBox* Fixed;
	Stdctrls::TGroupBox* gbDirection;
	Stdctrls::TCheckBox* cbForwardTB;
	Stdctrls::TCheckBox* cbForwardLR;
	Stdctrls::TCheckBox* cbBackwardBT;
	Stdctrls::TCheckBox* cbBackwardRL;
	Stdctrls::TCheckBox* Wildcards;
	void __fastcall OkBtnClick(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall CancelBtnClick(System::TObject* Sender);
	void __fastcall TextToFindChange(System::TObject* Sender);
	void __fastcall ScopeClick(System::TObject* Sender);
	void __fastcall cbForwardTBClick(System::TObject* Sender);
	void __fastcall cbForwardLRClick(System::TObject* Sender);
	void __fastcall cbBackwardBTClick(System::TObject* Sender);
	void __fastcall cbBackwardRLClick(System::TObject* Sender);
	void __fastcall cbForwardTBMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall cbForwardLRMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall cbBackwardBTMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall cbBackwardRLMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
private:
	bool bInhibitcbForwardTB;
	bool bInhibitcbForwardLR;
	bool bInhibitcbBackwardBT;
	bool bInhibitcbBackwardRL;
	
public:
	bool bInhibitToggle;
	Advgrid::TAdvStringGrid* FGrid;
	TAdvGridFindDialog* FFindDialog;
	#pragma pack(push,1)
	Types::TPoint FGridCell;
	#pragma pack(pop)
	AnsiString FMsgNoMoreFound;
	AnsiString FMsgNotFound;
	bool FAutoPosition;
	Classes::TNotifyEvent FOnFindDone;
	__property Classes::TNotifyEvent OnFindDone = {read=FOnFindDone, write=FOnFindDone};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAsgFindDlg(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAsgFindDlg(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAsgFindDlg(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgFindDlg(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Asgfinddialog */
using namespace Asgfinddialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asgfinddialog
