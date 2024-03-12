// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asgimport.pas' rev: 11.00

#ifndef AsgimportHPP
#define AsgimportHPP

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
#include <Basegrid.hpp>	// Pascal unit
#include <Advgrid.hpp>	// Pascal unit
#include <Advobj.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Advcolumnsetter.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asgimport
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TDelimiters { sepDotComma, sepMinus, sepComma, sepUnderScore, sepAutomatic, sepCustom };
#pragma option pop

class DELPHICLASS TAdvGridImportText;
class PASCALIMPLEMENTATION TAdvGridImportText : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FDelimited;
	AnsiString FCaption;
	AnsiString FFixed;
	AnsiString FAutomatic;
	AnsiString FCustom;
	AnsiString FFirstRowHeaders;
	AnsiString FButtonOK;
	AnsiString FButtonCancel;
	
public:
	__fastcall TAdvGridImportText(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Fixed = {read=FFixed, write=FFixed};
	__property AnsiString Automatic = {read=FAutomatic, write=FAutomatic};
	__property AnsiString Custom = {read=FCustom, write=FCustom};
	__property AnsiString FirstRowHeaders = {read=FFirstRowHeaders, write=FFirstRowHeaders};
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property AnsiString Delimited = {read=FDelimited, write=FDelimited};
	__property AnsiString ButtonOK = {read=FButtonOK, write=FButtonOK};
	__property AnsiString ButtonCancel = {read=FButtonCancel, write=FButtonCancel};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvGridImportText(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAsgImportForm;
class PASCALIMPLEMENTATION TAsgImportForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* gpbDelimited;
	Stdctrls::TButton* btnOK;
	Stdctrls::TButton* btnCancel;
	Stdctrls::TRadioButton* rdbDelimited;
	Stdctrls::TRadioButton* rdbFixed;
	Stdctrls::TRadioButton* rdbDel1;
	Stdctrls::TRadioButton* rdbDel2;
	Stdctrls::TRadioButton* rdbDel3;
	Stdctrls::TRadioButton* rdbDel4;
	Stdctrls::TRadioButton* rdbDel5;
	Stdctrls::TEdit* txtCustom;
	Forms::TScrollBox* ScrollBox1;
	Advgrid::TAdvStringGrid* GridPreview;
	Advcolumnsetter::TAdvColumnSetter* AdvColumnSetter1;
	Extctrls::TTimer* ScrollTimer;
	Stdctrls::TCheckBox* chkColumnHeaders;
	Stdctrls::TRadioButton* rdbAutomatic;
	__fastcall virtual TAsgImportForm(Classes::TComponent* AOwner);
	void __fastcall UpdateGrid(void);
	void __fastcall btnCancelClick(System::TObject* Sender);
	void __fastcall ImportSettingsChanged(System::TObject* Sender);
	void __fastcall DelimiterSettingsChanged(System::TObject* Sender);
	void __fastcall txtCustomKeyPress(System::TObject* Sender, char &Key);
	void __fastcall AdvColumnSetter1ColumnSetterChanged(System::TObject* Sender, int Index, int Position);
	void __fastcall AdvColumnSetter1ColumnSetterInsert(System::TObject* Sender, int Position);
	void __fastcall AdvColumnSetter1ColumnSetterDeleted(System::TObject* Sender, int Index);
	void __fastcall btnOKClick(System::TObject* Sender);
	void __fastcall ScrollTimerTimer(System::TObject* Sender);
	void __fastcall AdvColumnSetter1ColumnSetterChanging(System::TObject* Sender, int Index, int Position);
	void __fastcall FormShow(System::TObject* Sender);
	
private:
	Advgrid::TAdvStringGrid* FGrid;
	AnsiString FFileName;
	int FScrollDelta;
	int FNewPos;
	int FOldPos;
	int FScrollWidth;
	bool FAutoSizeOnLoad;
	bool FIsFixed;
	int FDisplayRowCount;
	int FLoadRowCount;
	
public:
	__property Advgrid::TAdvStringGrid* Grid = {read=FGrid, write=FGrid};
	__property AnsiString FileName = {read=FFileName, write=FFileName};
	__property bool AutoSizeOnLoad = {read=FAutoSizeOnLoad, write=FAutoSizeOnLoad, nodefault};
	__property Advcolumnsetter::TAdvColumnSetter* ColumnSetter = {read=AdvColumnSetter1};
	__property bool IsFixed = {read=FIsFixed, write=FIsFixed, nodefault};
	__property int DisplayRowCount = {read=FDisplayRowCount, write=FDisplayRowCount, nodefault};
	__property int LoadRowCount = {read=FLoadRowCount, write=FLoadRowCount, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAsgImportForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAsgImportForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAsgImportForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TImportType { itFixed, itDelimited };
#pragma option pop

class DELPHICLASS TAdvGridImportDialog;
class PASCALIMPLEMENTATION TAdvGridImportDialog : public Dialogs::TCommonDialog 
{
	typedef Dialogs::TCommonDialog inherited;
	
private:
	Advgrid::TAdvStringGrid* FGrid;
	TAsgImportForm* FForm;
	AnsiString FFilter;
	int FFilterIndex;
	AnsiString FInitialDir;
	AnsiString FFileName;
	AnsiString FTitle;
	TDelimiters FDelimiter;
	AnsiString FCustomDelimiter;
	TAdvGridImportText* FTextSettings;
	bool FAutoSizeOnLoad;
	Classes::TNotifyEvent FOnFormCreated;
	Advobj::TIntList* FColumns;
	TImportType FImportType;
	int FRowsToLoad;
	int FRowsToDisplay;
	void __fastcall SetTextSettings(const TAdvGridImportText* Value);
	
protected:
	bool __fastcall FileExecute(AnsiString sFileName)/* overload */;
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TAdvGridImportDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvGridImportDialog(void);
	virtual bool __fastcall Execute(void)/* overload */;
	bool __fastcall OpenAndExecute(void);
	__property TAsgImportForm* Form = {read=FForm};
	__property AnsiString FileName = {read=FFileName, write=FFileName};
	__property Advobj::TIntList* Columns = {read=FColumns};
	
__published:
	__property bool AutoSizeOnLoad = {read=FAutoSizeOnLoad, write=FAutoSizeOnLoad, default=1};
	__property AnsiString CustomDelimiter = {read=FCustomDelimiter, write=FCustomDelimiter};
	__property Advgrid::TAdvStringGrid* Grid = {read=FGrid, write=FGrid};
	__property TAdvGridImportText* TextSettings = {read=FTextSettings, write=SetTextSettings};
	__property Classes::TNotifyEvent OnFormCreated = {read=FOnFormCreated, write=FOnFormCreated};
	__property AnsiString Filter = {read=FFilter, write=FFilter};
	__property int FilterIndex = {read=FFilterIndex, write=FFilterIndex, default=0};
	__property AnsiString InitialDir = {read=FInitialDir, write=FInitialDir};
	__property TDelimiters Delimiter = {read=FDelimiter, write=FDelimiter, default=0};
	__property TImportType ImportType = {read=FImportType, write=FImportType, default=1};
	__property AnsiString Title = {read=FTitle, write=FTitle};
	__property int RowsToDisplay = {read=FRowsToDisplay, write=FRowsToDisplay, default=10};
	__property int RowsToLoad = {read=FRowsToLoad, write=FRowsToLoad, default=-1};
	
/* Hoisted overloads: */
	
public:
	inline bool __fastcall  Execute(HWND ParentWnd){ return TCommonDialog::Execute(ParentWnd); }
	
};


#pragma option push -b-
enum TMouseState { msNone, msDown, msMoving };
#pragma option pop

//-- var, const, procedure ---------------------------------------------------

}	/* namespace Asgimport */
using namespace Asgimport;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asgimport
