// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asgreplacedialog.pas' rev: 11.00

#ifndef AsgreplacedialogHPP
#define AsgreplacedialogHPP

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
#include <Grids.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asgreplacedialog
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TAsgReplaceEvent)(System::TObject* Sender, AnsiString OldValue, AnsiString &NewValue);

typedef void __fastcall (__closure *TAsgReplaceCellEvent)(System::TObject* Sender, int ACol, int ARow, AnsiString OldValue, AnsiString &NewValue);

class DELPHICLASS TAsgReplaceDialog;
class DELPHICLASS TAdvGridReplaceDialog;
class PASCALIMPLEMENTATION TAdvGridReplaceDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Advgrid::TAdvStringGrid* FGrid;
	TAsgReplaceDialog* FAsgReplace;
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
	bool FAutoPosition;
	AnsiString FTxtTextToReplace;
	AnsiString FTxtPrompt;
	AnsiString FMsgReplace;
	AnsiString FTxtBtnReplaceAll;
	TAsgReplaceEvent FOnReplace;
	TAsgReplaceCellEvent FOnReplaceCell;
	Classes::TNotifyEvent FOnReplaceDone;
	Classes::TNotifyEvent FOnReplaceClose;
	Controls::TKeyEvent FOnDialogKeyDown;
	int FDialogWidth;
	Classes::TStrings* FValuesToFind;
	Classes::TStrings* FValuesToReplace;
	void __fastcall SetDialogWidth(const int Value);
	void __fastcall SetValuesToFind(const Classes::TStrings* Value);
	void __fastcall SetValuesToReplace(const Classes::TStrings* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall ReplaceDone(System::TObject* Sender);
	void __fastcall ReplaceClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall DialogKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	
public:
	__fastcall virtual TAdvGridReplaceDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvGridReplaceDialog(void);
	void __fastcall Execute(void);
	__property TAsgReplaceDialog* Dialog = {read=FAsgReplace};
	
__published:
	__property bool AutoPosition = {read=FAutoPosition, write=FAutoPosition, nodefault};
	__property int DialogWidth = {read=FDialogWidth, write=SetDialogWidth, default=360};
	__property Advgrid::TAdvStringGrid* Grid = {read=FGrid, write=FGrid};
	__property AnsiString MsgNotFound = {read=FMsgNotFound, write=FMsgNotFound};
	__property AnsiString MsgNoMoreFound = {read=FMsgNoMoreFound, write=FMsgNoMoreFound};
	__property AnsiString MsgReplace = {read=FMsgReplace, write=FMsgReplace};
	__property AnsiString TxtCaption = {read=FTxtCaption, write=FTxtCaption};
	__property AnsiString TxtTextToFind = {read=FTxtTextToFind, write=FTxtTextToFind};
	__property AnsiString TxtTextToReplace = {read=FTxtTextToReplace, write=FTxtTextToReplace};
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
	__property AnsiString TxtPrompt = {read=FTxtPrompt, write=FTxtPrompt};
	__property AnsiString TxtBtnOk = {read=FTxtBtnOk, write=FTxtBtnOk};
	__property AnsiString TxtBtnCancel = {read=FTxtBtnCancel, write=FTxtBtnCancel};
	__property AnsiString TxtBtnReplaceAll = {read=FTxtBtnReplaceAll, write=FTxtBtnReplaceAll};
	__property Classes::TStrings* ValuesToFind = {read=FValuesToFind, write=SetValuesToFind};
	__property Classes::TStrings* ValuesToReplace = {read=FValuesToReplace, write=SetValuesToReplace};
	__property TAsgReplaceEvent OnReplace = {read=FOnReplace, write=FOnReplace};
	__property TAsgReplaceCellEvent OnReplaceCell = {read=FOnReplaceCell, write=FOnReplaceCell};
	__property Classes::TNotifyEvent OnReplaceClose = {read=FOnReplaceClose, write=FOnReplaceClose};
	__property Classes::TNotifyEvent OnReplaceDone = {read=FOnReplaceDone, write=FOnReplaceDone};
	__property Controls::TKeyEvent OnDialogKeyDown = {read=FOnDialogKeyDown, write=FOnDialogKeyDown};
};


class PASCALIMPLEMENTATION TAsgReplaceDialog : public Forms::TForm 
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
	Stdctrls::TLabel* Label2;
	Stdctrls::TComboBox* TextToReplace;
	Stdctrls::TButton* ReplaceAll;
	Stdctrls::TCheckBox* Prompt;
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
	void __fastcall ReplaceAllClick(System::TObject* Sender);
	
private:
	bool bInhibitcbForwardTB;
	bool bInhibitcbForwardLR;
	bool bInhibitcbBackwardBT;
	bool bInhibitcbBackwardRL;
	
public:
	bool bInhibitToggle;
	Advgrid::TAdvStringGrid* FGrid;
	#pragma pack(push,1)
	Types::TPoint FGridCell;
	#pragma pack(pop)
	TAdvGridReplaceDialog* FReplaceDlg;
	AnsiString FMsgNoMoreFound;
	AnsiString FMsgNotFound;
	AnsiString FMsgReplace;
	bool FAutoPosition;
	Classes::TNotifyEvent FOnReplaceDone;
	__property Classes::TNotifyEvent OnReplaceDone = {read=FOnReplaceDone, write=FOnReplaceDone};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAsgReplaceDialog(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAsgReplaceDialog(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAsgReplaceDialog(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgReplaceDialog(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Asgreplacedialog */
using namespace Asgreplacedialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asgreplacedialog
