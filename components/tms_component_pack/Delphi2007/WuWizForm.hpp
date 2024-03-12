// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wuwizform.pas' rev: 11.00

#ifndef WuwizformHPP
#define WuwizformHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Wupdate.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Checklst.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wuwizform
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TWUWIZ;
class PASCALIMPLEMENTATION TWUWIZ : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Comctrls::TPageControl* PageControl1;
	Comctrls::TTabSheet* TabSheet1;
	Comctrls::TTabSheet* TabSheet2;
	Extctrls::TImage* Billboard;
	Stdctrls::TLabel* WelcomeLabel;
	Stdctrls::TButton* StartButton;
	Comctrls::TTabSheet* TabSheet3;
	Stdctrls::TLabel* VersionInfoLabel;
	Stdctrls::TButton* ControlButton;
	Stdctrls::TMemo* WhatsNewMemo;
	Stdctrls::TLabel* Label1;
	Comctrls::TTabSheet* TabSheet4;
	Stdctrls::TLabel* Label2;
	Stdctrls::TMemo* EULAMemo;
	Stdctrls::TRadioButton* RAccept;
	Stdctrls::TRadioButton* RNoAccept;
	Comctrls::TTabSheet* TabSheet5;
	Checklst::TCheckListBox* CheckListBox1;
	Stdctrls::TLabel* Label3;
	Stdctrls::TButton* NewButton;
	Stdctrls::TButton* EULAButton;
	Comctrls::TTabSheet* TabSheet6;
	Stdctrls::TLabel* Label4;
	Comctrls::TProgressBar* FileProgress;
	Comctrls::TProgressBar* TotalProgress;
	Stdctrls::TButton* CancelButton;
	Stdctrls::TLabel* Label5;
	Stdctrls::TLabel* Label6;
	Stdctrls::TButton* FilesButton;
	Comctrls::TTabSheet* TabSheet7;
	Stdctrls::TButton* RestartButton;
	Stdctrls::TLabel* Label7;
	Stdctrls::TLabel* Label8;
	Stdctrls::TLabel* FileLabel;
	Extctrls::TShape* Shape1;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* ViewinNotepad1;
	Menus::TPopupMenu* PopupMenu2;
	Menus::TMenuItem* ViewinNotepad2;
	Comctrls::TRichEdit* EULARichEdit;
	Comctrls::TRichEdit* WhatsNewRichEdit;
	void __fastcall ViewinNotepad2Click(System::TObject* Sender);
	void __fastcall ViewinNotepad1Click(System::TObject* Sender);
	void __fastcall StartButtonClick(System::TObject* Sender);
	void __fastcall ControlButtonClick(System::TObject* Sender);
	void __fastcall NewButtonClick(System::TObject* Sender);
	void __fastcall EULAButtonClick(System::TObject* Sender);
	void __fastcall RAcceptClick(System::TObject* Sender);
	void __fastcall FilesButtonClick(System::TObject* Sender);
	void __fastcall WebUpdateFileProgress(System::TObject* Sender, AnsiString filename, int pos, int size);
	void __fastcall WebUpdateCancel(System::TObject* Sender, bool &Cancel);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall RestartButtonClick(System::TObject* Sender);
	void __fastcall CancelButtonClick(System::TObject* Sender);
	void __fastcall FormCloseQuery(System::TObject* Sender, bool &CanClose);
	void __fastcall FormActivate(System::TObject* Sender);
	
private:
	Wupdate::TWebUpdate* FWebUpdate;
	bool FCancelled;
	bool FAutoRun;
	bool FAutoStart;
	AnsiString FStrNewFound;
	AnsiString FStrNoUpdate;
	AnsiString FStrNoNewFiles;
	AnsiString FStrGetUpdate;
	AnsiString FStrNewVersion;
	AnsiString FStrNext;
	AnsiString FStrNoNewVersion;
	AnsiString FStrUCNewVersion;
	AnsiString FStrCannotConnect;
	AnsiString FStrCurVersion;
	AnsiString FStrExit;
	AnsiString FFailedDownload;
	AnsiString FStrLicensePopup;
	AnsiString FStrWhatsNewPopup;
	void __fastcall SetWebUpdate(const Wupdate::TWebUpdate* Value);
	void __fastcall SetCancelled(const bool Value);
	void __fastcall ClickDelay(void);
	void __fastcall SetButtonWidth(Stdctrls::TButton* Button);
	void __fastcall DownloadFiles(void);
	
public:
	void __fastcall UpdateDone(void);
	bool __fastcall CheckFileCount(void);
	__property Wupdate::TWebUpdate* WebUpdate = {read=FWebUpdate, write=SetWebUpdate};
	__property bool Cancelled = {read=FCancelled, write=SetCancelled, nodefault};
	__property bool AutoRun = {read=FAutoRun, write=FAutoRun, nodefault};
	__property bool AutoStart = {read=FAutoStart, write=FAutoStart, nodefault};
	__property AnsiString StrNewFound = {read=FStrNewFound, write=FStrNewFound};
	__property AnsiString StrNewVersion = {read=FStrNewVersion, write=FStrNewVersion};
	__property AnsiString StrCurVersion = {read=FStrCurVersion, write=FStrCurVersion};
	__property AnsiString StrNoNewVersion = {read=FStrNoNewVersion, write=FStrNoNewVersion};
	__property AnsiString StrUCNewVersion = {read=FStrUCNewVersion, write=FStrUCNewVersion};
	__property AnsiString StrGetUpdate = {read=FStrGetUpdate, write=FStrGetUpdate};
	__property AnsiString StrExit = {read=FStrExit, write=FStrExit};
	__property AnsiString StrNoNewFiles = {read=FStrNoNewFiles, write=FStrNoNewFiles};
	__property AnsiString StrCannotConnect = {read=FStrCannotConnect, write=FStrCannotConnect};
	__property AnsiString StrNoUpdate = {read=FStrNoUpdate, write=FStrNoUpdate};
	__property AnsiString StrNext = {read=FStrNext, write=FStrNext};
	__property AnsiString StrFailedDownload = {read=FFailedDownload, write=FFailedDownload};
	__property AnsiString StrWhatsNewPopup = {read=FStrWhatsNewPopup, write=FStrWhatsNewPopup};
	__property AnsiString StrLicensePopup = {read=FStrLicensePopup, write=FStrLicensePopup};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TWUWIZ(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TWUWIZ(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TWUWIZ(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TWUWIZ(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Word AUTORUNDELAY = 0x15e;

}	/* namespace Wuwizform */
using namespace Wuwizform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wuwizform
