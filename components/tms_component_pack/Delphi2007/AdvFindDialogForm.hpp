// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advfinddialogform.pas' rev: 11.00

#ifndef AdvfinddialogformHPP
#define AdvfinddialogformHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advfinddialogform
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdvFindDialogOption { fdoCaseSensitive, fdoExpression, fdoCloseIfFound, fdoWholeWordOnly, fdoWrapAtEndOfFile, fdoContinueToNextFile, fdoMoreEnabled, fdoSetMarkerEnabled, fdoPreviousEnabled, fdoFindEnabled, fdoCloseEnabled, fdoMoreExpanded, fdoFindList, fdoDown };
#pragma option pop

#pragma option push -b-
enum TAdvFindDialogVisibleOption { fdovCaseSensitive, fdovExpression, fdovCloseIfFound, fdovWholeWordOnly, fdovWrapAtEndOfFile, fdovContinueToNextFile, fdovMore, fdovSetMarker, fdovPrevious, fdovFind, fdovClose, fdovFindCombo, fdovFindMemo, fdovDirection };
#pragma option pop

typedef Set<TAdvFindDialogOption, fdoCaseSensitive, fdoDown>  TAdvFindDialogOptions;

typedef Set<TAdvFindDialogVisibleOption, fdovCaseSensitive, fdovDirection>  TAdvFindDialogVisibleOptions;

typedef void __fastcall (__closure *TFindEditChangeEvent)(System::TObject* Sender, AnsiString &AText);

class DELPHICLASS TFindUILanguage;
class PASCALIMPLEMENTATION TFindUILanguage : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FCloseIfFound;
	AnsiString FFindWhat;
	AnsiString FCaseSensitive;
	AnsiString FWrapAtEndOfFile;
	AnsiString FExpression;
	AnsiString FMore;
	AnsiString FSetMarker;
	AnsiString FPrevious;
	AnsiString FWholeWordOnly;
	AnsiString FClose;
	AnsiString FFind;
	AnsiString FContinueToNextFile;
	AnsiString FLess;
	AnsiString FDirection;
	AnsiString FDown;
	AnsiString FUp;
	AnsiString FFindCaption;
	
public:
	__fastcall TFindUILanguage(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString FindCaption = {read=FFindCaption, write=FFindCaption};
	__property AnsiString FindWhat = {read=FFindWhat, write=FFindWhat};
	__property AnsiString CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive};
	__property AnsiString Expression = {read=FExpression, write=FExpression};
	__property AnsiString CloseIfFound = {read=FCloseIfFound, write=FCloseIfFound};
	__property AnsiString WholeWordOnly = {read=FWholeWordOnly, write=FWholeWordOnly};
	__property AnsiString WrapAtEndOfFile = {read=FWrapAtEndOfFile, write=FWrapAtEndOfFile};
	__property AnsiString ContinueToNextFile = {read=FContinueToNextFile, write=FContinueToNextFile};
	__property AnsiString Find = {read=FFind, write=FFind};
	__property AnsiString Previous = {read=FPrevious, write=FPrevious};
	__property AnsiString SetMarker = {read=FSetMarker, write=FSetMarker};
	__property AnsiString Close = {read=FClose, write=FClose};
	__property AnsiString More = {read=FMore, write=FMore};
	__property AnsiString Less = {read=FLess, write=FLess};
	__property AnsiString Direction = {read=FDirection, write=FDirection};
	__property AnsiString Up = {read=FUp, write=FUp};
	__property AnsiString Down = {read=FDown, write=FDown};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TFindUILanguage(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvFindDialog;
class DELPHICLASS TFindDialogForm;
class PASCALIMPLEMENTATION TFindDialogForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TLabel* Label1;
	Stdctrls::TComboBox* ComboBox1;
	Buttons::TSpeedButton* SpeedButton1;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* abCharacter1;
	Menus::TMenuItem* NewLine1;
	Menus::TMenuItem* AnyCharacter1;
	Menus::TMenuItem* CharacterinRange1;
	Menus::TMenuItem* CharacternotinRange1;
	Menus::TMenuItem* BeginningofLine1;
	Menus::TMenuItem* EndofLine1;
	Menus::TMenuItem* aggedExpression1;
	Menus::TMenuItem* Or1;
	Menus::TMenuItem* N0or1matches1;
	Menus::TMenuItem* N1orMoreMatches1;
	Menus::TMenuItem* N0or1Matches2;
	Menus::TMenuItem* N1;
	Stdctrls::TButton* FindBtn;
	Stdctrls::TButton* PrevBtn;
	Stdctrls::TButton* Marker;
	Stdctrls::TButton* CloseBtn;
	Stdctrls::TButton* MoreBtn;
	Stdctrls::TCheckBox* CheckBox1;
	Stdctrls::TCheckBox* CheckBox2;
	Stdctrls::TCheckBox* CheckBox3;
	Stdctrls::TCheckBox* CheckBox4;
	Stdctrls::TCheckBox* CheckBox5;
	Stdctrls::TCheckBox* CheckBox6;
	Stdctrls::TLabel* Label2;
	Stdctrls::TMemo* Memo1;
	Extctrls::TRadioGroup* DirGroup;
	void __fastcall SpeedButton1Click(System::TObject* Sender);
	void __fastcall abCharacter1Click(System::TObject* Sender);
	void __fastcall NewLine1Click(System::TObject* Sender);
	void __fastcall AnyCharacter1Click(System::TObject* Sender);
	void __fastcall CharacterinRange1Click(System::TObject* Sender);
	void __fastcall CharacternotinRange1Click(System::TObject* Sender);
	void __fastcall BeginningofLine1Click(System::TObject* Sender);
	void __fastcall EndofLine1Click(System::TObject* Sender);
	void __fastcall aggedExpression1Click(System::TObject* Sender);
	void __fastcall Or1Click(System::TObject* Sender);
	void __fastcall N0or1matches1Click(System::TObject* Sender);
	void __fastcall N1orMoreMatches1Click(System::TObject* Sender);
	void __fastcall N0or1Matches2Click(System::TObject* Sender);
	void __fastcall CloseBtnClick(System::TObject* Sender);
	void __fastcall FindBtnClick(System::TObject* Sender);
	void __fastcall PrevBtnClick(System::TObject* Sender);
	void __fastcall MarkerClick(System::TObject* Sender);
	void __fastcall MoreBtnClick(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall CheckBox1Click(System::TObject* Sender);
	void __fastcall CheckBox2Click(System::TObject* Sender);
	void __fastcall CheckBox3Click(System::TObject* Sender);
	void __fastcall CheckBox4Click(System::TObject* Sender);
	void __fastcall CheckBox5Click(System::TObject* Sender);
	void __fastcall CheckBox6Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall ComboBox1Change(System::TObject* Sender);
	void __fastcall DirGroupClick(System::TObject* Sender);
	void __fastcall Memo1Change(System::TObject* Sender);
	
private:
	Classes::TNotifyEvent FOnFind;
	Classes::TNotifyEvent FOnSetMarker;
	Classes::TNotifyEvent FOnFindPrevious;
	Classes::TNotifyEvent FOnClose;
	TFindEditChangeEvent FOnFindEditChange;
	TAdvFindDialog* FDialog;
	AnsiString __fastcall GetFindText();
	void __fastcall SetFindText(const AnsiString Value);
	
protected:
	virtual void __fastcall DoFindEditChange(AnsiString &AText);
	virtual void __fastcall EnableButtons(void);
	virtual void __fastcall UpdateMoreButton(const AnsiString AValue);
	
public:
	__property TAdvFindDialog* Dialog = {read=FDialog, write=FDialog};
	__property TFindEditChangeEvent OnFindEditChange = {read=FOnFindEditChange, write=FOnFindEditChange};
	__property Classes::TNotifyEvent OnFind = {read=FOnFind, write=FOnFind};
	__property Classes::TNotifyEvent OnClose = {read=FOnClose, write=FOnClose};
	__property Classes::TNotifyEvent OnFindPrevious = {read=FOnFindPrevious, write=FOnFindPrevious};
	__property Classes::TNotifyEvent OnSetMarker = {read=FOnSetMarker, write=FOnSetMarker};
	__property AnsiString FindText = {read=GetFindText, write=SetFindText};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TFindDialogForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TFindDialogForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TFindDialogForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TFindDialogForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdvFindDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FFindText;
	Classes::TNotifyEvent FOnFind;
	Classes::TNotifyEvent FOnSetMarker;
	Classes::TNotifyEvent FOnFindPrevious;
	Classes::TNotifyEvent FOnClose;
	TAdvFindDialogOptions FOptions;
	Classes::TStringList* FFindList;
	TFindUILanguage* FUILanguage;
	TAdvFindDialogVisibleOptions FVisibleOptions;
	TFindEditChangeEvent FOnFindEditChange;
	bool FAutoHistory;
	TFindDialogForm* Frm;
	Classes::TNotifyEvent FOnShow;
	void __fastcall SetUILanguage(const TFindUILanguage* Value);
	
protected:
	void __fastcall DoShow(System::TObject* Sender);
	void __fastcall DoClose(System::TObject* Sender);
	void __fastcall DoFind(System::TObject* Sender);
	void __fastcall DoFindPrevious(System::TObject* Sender);
	void __fastcall DoSetMarker(System::TObject* Sender);
	void __fastcall DoFindEditChange(System::TObject* Sender, AnsiString &AText);
	virtual TFindDialogForm* __fastcall CreateDialogForm(Classes::TComponent* AOwner);
	virtual Forms::TCustomForm* __fastcall InitDialog(void);
	
public:
	virtual void __fastcall Execute(void);
	__fastcall virtual TAdvFindDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvFindDialog(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property TFindDialogForm* Form = {read=Frm};
	
__published:
	__property bool AutoHistory = {read=FAutoHistory, write=FAutoHistory, default=1};
	__property AnsiString FindText = {read=FFindText, write=FFindText};
	__property Classes::TStringList* FindList = {read=FFindList, write=FFindList};
	__property TFindEditChangeEvent OnFindEditChange = {read=FOnFindEditChange, write=FOnFindEditChange};
	__property Classes::TNotifyEvent OnFind = {read=FOnFind, write=FOnFind};
	__property Classes::TNotifyEvent OnClose = {read=FOnClose, write=FOnClose};
	__property Classes::TNotifyEvent OnShow = {read=FOnShow, write=FOnShow};
	__property Classes::TNotifyEvent OnFindPrevious = {read=FOnFindPrevious, write=FOnFindPrevious};
	__property Classes::TNotifyEvent OnSetMarker = {read=FOnSetMarker, write=FOnSetMarker};
	__property TAdvFindDialogOptions Options = {read=FOptions, write=FOptions, default=10176};
	__property TAdvFindDialogVisibleOptions VisibleOptions = {read=FVisibleOptions, write=FVisibleOptions, default=16159};
	__property TFindUILanguage* UILanguage = {read=FUILanguage, write=SetUILanguage};
};


//-- var, const, procedure ---------------------------------------------------
#define DefaultOptions (Set<TAdvFindDialogOption, fdoCaseSensitive, fdoDown> () << fdoMoreEnabled << fdoSetMarkerEnabled << fdoPreviousEnabled << fdoFindEnabled << fdoCloseEnabled << fdoDown )
#define DefaultVisibleOptions (Set<TAdvFindDialogVisibleOption, fdovCaseSensitive, fdovDirection> () << fdovCaseSensitive << fdovExpression << fdovCloseIfFound << fdovWholeWordOnly << fdovWrapAtEndOfFile << fdovPrevious << fdovFind << fdovClose << fdovFindCombo << fdovFindMemo << fdovDirection )
extern PACKAGE TFindDialogForm* FindDialogForm;
extern PACKAGE bool More;

}	/* namespace Advfinddialogform */
using namespace Advfinddialogform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advfinddialogform
