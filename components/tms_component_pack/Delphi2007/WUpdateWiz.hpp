// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wupdatewiz.pas' rev: 11.00

#ifndef WupdatewizHPP
#define WupdatewizHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Wupdate.hpp>	// Pascal unit
#include <Wuwizform.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wupdatewiz
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TWebUpdateWizardLanguage;
class PASCALIMPLEMENTATION TWebUpdateWizardLanguage : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FStartButton;
	AnsiString FWelcome;
	AnsiString FGetUpdateButton;
	AnsiString FRestartButton;
	AnsiString FNewVersion;
	AnsiString FNextButton;
	AnsiString FNewVersionFound;
	AnsiString FExitButton;
	AnsiString FCurrentVersion;
	AnsiString FNoNewVersionAvail;
	AnsiString FNoFilesFound;
	AnsiString FCannotConnect;
	AnsiString FNoUpdateOnServer;
	AnsiString FNewVersionAvail;
	AnsiString FWhatsNew;
	AnsiString FComponentsAvail;
	AnsiString FRestartInfo;
	AnsiString FDownLoadingFiles;
	AnsiString FCurrentProgress;
	AnsiString FNotAcceptLicense;
	AnsiString FTotalProgress;
	AnsiString FUpdateComplete;
	AnsiString FLicense;
	AnsiString FAcceptLicense;
	AnsiString FCancelButton;
	AnsiString FFailedDownload;
	AnsiString FWhatsNewPopup;
	AnsiString FLicensePopup;
	
public:
	__fastcall virtual TWebUpdateWizardLanguage(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Welcome = {read=FWelcome, write=FWelcome};
	__property AnsiString StartButton = {read=FStartButton, write=FStartButton};
	__property AnsiString NextButton = {read=FNextButton, write=FNextButton};
	__property AnsiString ExitButton = {read=FExitButton, write=FExitButton};
	__property AnsiString RestartButton = {read=FRestartButton, write=FRestartButton};
	__property AnsiString CancelButton = {read=FCancelButton, write=FCancelButton};
	__property AnsiString FailedDownload = {read=FFailedDownload, write=FFailedDownload};
	__property AnsiString GetUpdateButton = {read=FGetUpdateButton, write=FGetUpdateButton};
	__property AnsiString NewVersionFound = {read=FNewVersionFound, write=FNewVersionFound};
	__property AnsiString NewVersion = {read=FNewVersion, write=FNewVersion};
	__property AnsiString NoNewVersionAvail = {read=FNoNewVersionAvail, write=FNoNewVersionAvail};
	__property AnsiString NewVersionAvail = {read=FNewVersionAvail, write=FNewVersionAvail};
	__property AnsiString CurrentVersion = {read=FCurrentVersion, write=FCurrentVersion};
	__property AnsiString NoFilesFound = {read=FNoFilesFound, write=FNoFilesFound};
	__property AnsiString NoUpdateOnServer = {read=FNoUpdateOnServer, write=FNoUpdateOnServer};
	__property AnsiString CannotConnect = {read=FCannotConnect, write=FCannotConnect};
	__property AnsiString WhatsNew = {read=FWhatsNew, write=FWhatsNew};
	__property AnsiString License = {read=FLicense, write=FLicense};
	__property AnsiString AcceptLicense = {read=FAcceptLicense, write=FAcceptLicense};
	__property AnsiString NotAcceptLicense = {read=FNotAcceptLicense, write=FNotAcceptLicense};
	__property AnsiString ComponentsAvail = {read=FComponentsAvail, write=FComponentsAvail};
	__property AnsiString DownloadingFiles = {read=FDownLoadingFiles, write=FDownLoadingFiles};
	__property AnsiString CurrentProgress = {read=FCurrentProgress, write=FCurrentProgress};
	__property AnsiString TotalProgress = {read=FTotalProgress, write=FTotalProgress};
	__property AnsiString UpdateComplete = {read=FUpdateComplete, write=FUpdateComplete};
	__property AnsiString RestartInfo = {read=FRestartInfo, write=FRestartInfo};
	__property AnsiString WhatsNewPopup = {read=FWhatsNewPopup, write=FWhatsNewPopup};
	__property AnsiString LicensePopup = {read=FLicensePopup, write=FLicensePopup};
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TWebUpdateWizardLanguage(void) { }
	#pragma option pop
	
};


class DELPHICLASS TWebUpdateWizard;
class PASCALIMPLEMENTATION TWebUpdateWizard : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Wuwizform::TWUWIZ* FWuWiz;
	Wupdate::TWebUpdate* FWebUpdate;
	AnsiString FCaption;
	Forms::TPosition FPosition;
	Forms::TFormBorderStyle FBorderStyle;
	bool FAutoRun;
	bool FAutoStart;
	Graphics::TBitmap* FBillBoard;
	Graphics::TFont* FFont;
	TWebUpdateWizardLanguage* FWizardLanguage;
	bool FBillBoardStretch;
	bool FBillBoardCenter;
	int FBillBoardTop;
	int FBillBoardLeft;
	int FBillBoardHeight;
	int FBillBoardWidth;
	void __fastcall SetBillboard(const Graphics::TBitmap* Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual TWebUpdateWizard(Classes::TComponent* AOwner);
	__fastcall virtual ~TWebUpdateWizard(void);
	void __fastcall Execute(bool InitPath = true);
	void __fastcall InitLanguage(Wuwizform::TWUWIZ* AWizard, TWebUpdateWizardLanguage* ALanguage);
	void __fastcall CloseWizard(void);
	
__published:
	__property bool AutoStart = {read=FAutoStart, write=FAutoStart, default=0};
	__property bool AutoRun = {read=FAutoRun, write=FAutoRun, default=0};
	__property Graphics::TBitmap* BillBoard = {read=FBillBoard, write=SetBillboard};
	__property bool BillBoardStretch = {read=FBillBoardStretch, write=FBillBoardStretch, default=0};
	__property bool BillBoardCenter = {read=FBillBoardCenter, write=FBillBoardCenter, default=0};
	__property int BillBoardTop = {read=FBillBoardTop, write=FBillBoardTop, default=27};
	__property int BillBoardLeft = {read=FBillBoardLeft, write=FBillBoardLeft, default=9};
	__property int BillBoardHeight = {read=FBillBoardHeight, write=FBillBoardHeight, default=201};
	__property int BillBoardWidth = {read=FBillBoardWidth, write=FBillBoardWidth, default=116};
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property TWebUpdateWizardLanguage* Language = {read=FWizardLanguage, write=FWizardLanguage};
	__property Forms::TPosition Position = {read=FPosition, write=FPosition, default=4};
	__property Wupdate::TWebUpdate* WebUpdate = {read=FWebUpdate, write=FWebUpdate};
	__property Forms::TFormBorderStyle BorderStyle = {read=FBorderStyle, write=FBorderStyle, default=3};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wupdatewiz */
using namespace Wupdatewiz;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wupdatewiz
