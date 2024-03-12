// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wupdate.pas' rev: 11.00

#ifndef WupdateHPP
#define WupdateHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Wininet.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Lzexpand.hpp>	// Pascal unit
#include <Cabfdi.hpp>	// Pascal unit
#include <Wucrc32.hpp>	// Pascal unit
#include <Wubase64.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Shlobj.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Wulogin.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

#pragma link "wininet.lib"
#pragma link "urlmon.lib"


namespace Wupdate
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TWebUpdateAuthentication { waAlways, waAuto, waNever };
#pragma option pop

typedef void __fastcall (__closure *TWebUpdateEvent)(System::TObject* Sender);

typedef void __fastcall (__closure *TWebUpdateFileProgress)(System::TObject* Sender, AnsiString FileName, int Pos, int Size);

typedef void __fastcall (__closure *TWebUpdateProgress)(System::TObject* Sender, AnsiString Action);

typedef void __fastcall (__closure *TWebUpdateProgressCancel)(System::TObject* Sender, bool &Cancel);

typedef void __fastcall (__closure *TWebUpdateFileDownloaded)(System::TObject* Sender, AnsiString FileName);

typedef void __fastcall (__closure *TWebUpdateBeforePost)(System::TObject* Sender, bool &AllowPost);

typedef void __fastcall (__closure *TWebUpdateProcessPostResult)(System::TObject* Sender, bool &AllowPostResult);

typedef void __fastcall (__closure *TWebUpdateStatus)(System::TObject* Sender, AnsiString StatusStr, int StatusCode, int ErrCode);

typedef void __fastcall (__closure *TWebUpdateThreadDone)(System::TObject* Sender);

typedef void __fastcall (__closure *TWebUpdateRestart)(System::TObject* Sender, bool &Allow);

typedef void __fastcall (__closure *TWebUpdateCustomValidate)(System::TObject* Sender, AnsiString Msg, AnsiString Param, bool &Allow);

typedef void __fastcall (__closure *TWebUpdateCustomProcess)(System::TObject* Sender, AnsiString Msg, AnsiString Param);

typedef void __fastcall (__closure *TWebUpdateSetParams)(System::TObject* Sender, AnsiString &AppParams);

typedef void __fastcall (__closure *TWebUpdateFileVersionCheck)(System::TObject* Sender, AnsiString NewVersion, AnsiString LocalVersion, bool &IsNew);

typedef void __fastcall (__closure *TWebUpdateConvertPrefix)(System::TObject* Sender, AnsiString &Path);

typedef void __fastcall (__closure *TWebUpdateFileNameFromURL)(System::TObject* Sender, AnsiString URL, AnsiString &FName);

typedef void __fastcall (__closure *TWebUpdateBeforeDownload)(System::TObject* Sender, int FileIdx, AnsiString FileDescription, AnsiString &URL);

typedef void __fastcall (__closure *TWebUpdateFileList)(System::TObject* Sender, Classes::TStringList* List);

#pragma option push -b-
enum TWebUpdateConnect { wucNoConnect, wucConnectPrompt, wucConnectSilent, wucConnectPromptHangup, wucConnectSilentHangup, wucNone };
#pragma option pop

#pragma option push -b-
enum TWebUpdateUpdate { wuuPromptOnce, wuuPromptAll, wuuSilent };
#pragma option pop

#pragma option push -b-
enum TWebUpdateType { ftpUpdate, httpUpdate, fileUpdate };
#pragma option pop

typedef void __fastcall (__closure *TWebUpdateTextDownloaded)(System::TObject* Sender, Classes::TStrings* Text, int &Res);

#pragma option push -b-
enum TWebUpdateVersionCheck { vcUpdateOnly, vcAlways };
#pragma option pop

#pragma option push -b-
enum TWebUpdateCertCheck { ccEnable, ccDisable };
#pragma option pop

#pragma option push -b-
enum TLastURLReg { lurLOCALUSER, lurLOCALMACHINE };
#pragma option pop

class DELPHICLASS TLastURLEntry;
class PASCALIMPLEMENTATION TLastURLEntry : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FSave;
	AnsiString FKey;
	AnsiString FSection;
	TLastURLReg FRegRoot;
	
__published:
	__property bool Save = {read=FSave, write=FSave, default=0};
	__property AnsiString Key = {read=FKey, write=FKey};
	__property AnsiString Section = {read=FSection, write=FSection};
	__property TLastURLReg RegRoot = {read=FRegRoot, write=FRegRoot, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TLastURLEntry(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TLastURLEntry(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TPostUpdateInfo;
class PASCALIMPLEMENTATION TPostUpdateInfo : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FServer;
	AnsiString FAction;
	AnsiString FData;
	bool FEnabled;
	AnsiString FPostResult;
	
public:
	__property AnsiString PostResult = {read=FPostResult, write=FPostResult};
	
__published:
	__property AnsiString Server = {read=FServer, write=FServer};
	__property AnsiString Action = {read=FAction, write=FAction};
	__property AnsiString Data = {read=FData, write=FData};
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPostUpdateInfo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TPostUpdateInfo(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TInetThread;
class DELPHICLASS TWebUpdate;
class DELPHICLASS TWebUpdateUtility;
class PASCALIMPLEMENTATION TWebUpdateUtility : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FShowAnimation;
	bool FShowWindow;
	AnsiString FStatusMessage;
	AnsiString FStatusCaption;
	
__published:
	__property bool ShowWindow = {read=FShowWindow, write=FShowWindow, nodefault};
	__property bool ShowAnimation = {read=FShowAnimation, write=FShowAnimation, nodefault};
	__property AnsiString StatusMessage = {read=FStatusMessage, write=FStatusMessage};
	__property AnsiString StatusCaption = {read=FStatusCaption, write=FStatusCaption};
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TWebUpdateUtility(Classes::TComponent* AOwner) : Classes::TComponent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TWebUpdateUtility(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFileList;
class DELPHICLASS TFileDescription;
class PASCALIMPLEMENTATION TFileList : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TFileDescription* operator[](int Index) { return Items[Index]; }
	
private:
	int FActiveItem;
	HIDESBASE TFileDescription* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TFileDescription* Value);
	
public:
	virtual TMetaClass* __fastcall GetItemClass(void);
	HIDESBASE TFileDescription* __fastcall Add(void);
	HIDESBASE TFileDescription* __fastcall Insert(int index);
	__property TFileDescription* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property int ActiveItem = {read=FActiveItem, nodefault};
	int __fastcall TotalSize(void);
	int __fastcall CompletedSize(void);
public:
	#pragma option push -w-inl
	/* TCollection.Create */ inline __fastcall TFileList(TMetaClass* ItemClass) : Classes::TCollection(ItemClass) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TFileList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TProgressForm;
class PASCALIMPLEMENTATION TProgressForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	Comctrls::TProgressBar* FProgressBar;
	Stdctrls::TLabel* FLabel;
	
public:
	__fastcall virtual TProgressForm(Classes::TComponent* AOwner, int Dummy);
	virtual void __fastcall CreateWnd(void);
	__property Comctrls::TProgressBar* ProgressBar = {read=FProgressBar};
	__property Stdctrls::TLabel* FileLabel = {read=FLabel};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TProgressForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TProgressForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TProgressForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


struct tfvi;
class PASCALIMPLEMENTATION TWebUpdate : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FForceUpdate;
	void *FHint;
	void *FHintConnect;
	bool FDialed;
	bool FSaveUpdate;
	AnsiString FControlFileName;
	AnsiString FFTPDirectory;
	bool FFTPPassive;
	AnsiString FHost;
	AnsiString FPassword;
	AnsiString FSignature;
	bool FSignatureCheck;
	bool FExtractCAB;
	bool FApplyPatch;
	int FPort;
	AnsiString FProxy;
	AnsiString FProxyUserID;
	AnsiString FProxyPassword;
	TWebUpdateConnect FUpdateConnect;
	TWebUpdateType FUpdateType;
	TWebUpdateUpdate FUpdateUpdate;
	AnsiString FURL;
	AnsiString FUserID;
	AnsiString FDateFormat;
	AnsiString FTimeFormat;
	char FDateSeparator;
	char FTimeSeparator;
	TPostUpdateInfo* FPostUpdateInfo;
	TLastURLEntry* FLastURLEntry;
	TWebUpdateFileProgress FWebUpdateFileProgress;
	TWebUpdateFileDownloaded FWebUpdateFileDownloaded;
	TWebUpdateFileVersionCheck FWebUpdateFileVersionCheck;
	TWebUpdateProgress FWebUpdateProgress;
	TWebUpdateProgressCancel FWebUpdateProgressCancel;
	TWebUpdateStatus FWebUpdateStatus;
	TWebUpdateThreadDone FThreadUpdateDone;
	TWebUpdateRestart FAppRestart;
	TWebUpdateEvent FAppDoClose;
	TWebUpdateCustomValidate FCustomValidate;
	TWebUpdateCustomProcess FCustomProcess;
	TWebUpdateProcessPostResult FProcessPostResult;
	TWebUpdateBeforePost FBeforePost;
	TWebUpdateFileList FFileNameList;
	bool FThreaded;
	AnsiString FAppName;
	AnsiString FAppParam;
	AnsiString FAppComps;
	bool FAppCompsIncluded;
	bool FAppClose;
	bool FSilentRestart;
	TWebUpdateConvertPrefix FConvertPrefix;
	TWebUpdateSetParams FSetAppParams;
	bool FFTPDirSet;
	TWebUpdateTextDownloaded FOnDownloadedWhatsNew;
	TWebUpdateTextDownloaded FOnDownloadedEULA;
	TWebUpdateBeforeDownload FOnBeforeFileDownload;
	bool FUseCRC32;
	bool FUseWinTempDir;
	TWebUpdateUtility* FUtility;
	TWebUpdateFileNameFromURL FOnFileNameFromURL;
	AnsiString FTempDirectory;
	bool FKeepAlive;
	bool FExistingConnection;
	AnsiString FLocalFileDateCheck;
	System::TDateTime FNewVersionDate;
	System::TDateTime FCurVersionDate;
	AnsiString FCurVersionInfo;
	AnsiString FNewVersionInfo;
	TFileList* FFileList;
	AnsiString FUpdateDescription;
	bool FLogging;
	bool FCancelled;
	TWebUpdateVersionCheck FVersionCheck;
	Classes::TNotifyEvent FOnSuccess;
	bool FInProgress;
	bool FKeepIntermediateFiles;
	AnsiString FAgent;
	AnsiString FLanguageID;
	AnsiString FLogFileName;
	int FTimeOut;
	int FReceiveTimeOut;
	TWebUpdateAuthentication FAuthenticate;
	bool FAutoRestart;
	TProgressForm* FProgressForm;
	bool FShowDownloadProgress;
	TWebUpdateCertCheck FCertCheck;
	TWebUpdateSetParams FSetAppParamsAfter;
	TWebUpdateSetParams FSetAppParamsBefore;
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	void __fastcall SetLogFileName(const AnsiString Value);
	
protected:
	Classes::TStringList* __fastcall GetTextFile(AnsiString URL);
	Classes::TMemoryStream* __fastcall GetStream(AnsiString URL);
	AnsiString __fastcall ExpandPath(AnsiString tgt);
	bool __fastcall FileGetFile(AnsiString url, AnsiString tgt, bool uncompress);
	void __fastcall ThreadDone(System::TObject* Sender);
	bool __fastcall IsRTF(Classes::TMemoryStream* ms);
	virtual int __fastcall WhatsNewDialog(Classes::TMemoryStream* ms);
	virtual int __fastcall EULADialog(Classes::TMemoryStream* ms);
	virtual void __fastcall DoStatus(int id, AnsiString param, int statuscode, int errorcode);
	virtual void __fastcall ExtractUpdateResource(void);
	virtual void __fastcall ExtractUtility(void);
	virtual bool __fastcall CheckVersions(AnsiString &fvn, AnsiString &fvl, int fvs, int fvc);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	System::TDateTime __fastcall ControlValueToDate(AnsiString d, AnsiString t);
	bool __fastcall ExecAndWait(AnsiString sCommandLine, bool Show, bool Animate, AnsiString Caption, AnsiString Msg);
	bool __fastcall GetAppNeedsRestart(void);
	virtual void __fastcall HandleProgress(AnsiString AFileName, int FilePos, int FileSize);
	virtual void __fastcall HandleCancel(bool &Cancel);
	void __fastcall SetTimeout(unsigned timeout);
	void __fastcall SetReceiveTimeOut(unsigned receivetimeout);
	virtual void __fastcall DoSetAppParamBefore(AnsiString &Param);
	virtual void __fastcall DoSetAppParamAfter(AnsiString &Param);
	
public:
	virtual void __fastcall CustomProcess(AnsiString fn);
	AnsiString __fastcall URLtoFile(AnsiString url);
	AnsiString __fastcall URLToDomain(AnsiString url);
	bool __fastcall URLGetFile(void * hfile, AnsiString url, AnsiString tgt, bool uncompress);
	AnsiString __fastcall MakeProxyUrl(AnsiString url, AnsiString proxyuser, AnsiString proxypwd);
	void __fastcall ShowHTMLDialog(AnsiString s);
	void __fastcall Error(void);
	void __fastcall Cancel(void);
	tfvi __fastcall GetFileVersion(AnsiString FileName);
	void __fastcall AddToLog(AnsiString s);
	__fastcall virtual TWebUpdate(Classes::TComponent* aOwner);
	__fastcall virtual ~TWebUpdate(void);
	void __fastcall DoUpdate(void)/* overload */;
	void __fastcall DoUpdate(bool InitPath)/* overload */;
	void __fastcall DoSuccess(void);
	void __fastcall DoThreadUpdate(void)/* overload */;
	void __fastcall DoThreadUpdate(bool InitPath)/* overload */;
	void __fastcall DoPostUpdateInfo(void);
	void __fastcall DoRestart(void);
	virtual int __fastcall StartConnection(void);
	virtual int __fastcall StopConnection(void);
	virtual int __fastcall FTPConnect(void);
	virtual AnsiString __fastcall GetControlFileURL();
	virtual int __fastcall GetControlFile(void);
	virtual int __fastcall DoVersionCheck(void);
	virtual int __fastcall HandleActions(void);
	virtual Classes::TStringList* __fastcall GetWhatsNew(void);
	virtual Classes::TMemoryStream* __fastcall GetWhatsNewStream(void);
	virtual Classes::TStringList* __fastcall GetEULA(void);
	virtual Classes::TMemoryStream* __fastcall GetEULAStream(void);
	virtual AnsiString __fastcall GetOSVersion();
	virtual AnsiString __fastcall GetIDE();
	virtual AnsiString __fastcall GetIEVersion();
	virtual AnsiString __fastcall GetInstalledIDEs();
	virtual int __fastcall GetFileDetails(void);
	virtual int __fastcall ProcessFileDetails(void);
	virtual int __fastcall GetFileUpdates(void);
	int __fastcall UpdateActions(void);
	bool __fastcall Connected(void);
	int __fastcall ConnectionType(void);
	bool __fastcall NewVersionAvailable(bool InitPath = false);
	Classes::TStringList* __fastcall NewWhatsNew(bool showdialog = false);
	void __fastcall HangUp(void);
	void __fastcall URLPut(AnsiString url);
	AnsiString __fastcall URLGet();
	void __fastcall UpdateDatePut(System::TDateTime dt);
	System::TDateTime __fastcall UpdateDateGet(void);
	virtual void __fastcall ConvertPrefix(const AnsiString prefix, AnsiString &s);
	__property AnsiString ControlFileName = {read=FControlFileName};
	__property System::TDateTime NewVersionDate = {read=FNewVersionDate};
	__property System::TDateTime CurVersionDate = {read=FCurVersionDate};
	__property AnsiString CurVersionInfo = {read=FCurVersionInfo};
	__property AnsiString NewVersionInfo = {read=FNewVersionInfo};
	__property AnsiString UpdateDescription = {read=FUpdateDescription};
	__property TFileList* FileList = {read=FFileList};
	__property bool Cancelled = {read=FCancelled, nodefault};
	__property bool InProgress = {read=FInProgress, nodefault};
	__property bool AppNeedsRestart = {read=GetAppNeedsRestart, nodefault};
	__property bool AppSilentRestart = {read=FSilentRestart, nodefault};
	__property void * HintConnect = {read=FHintConnect};
	AnsiString __fastcall WinTempDir();
	
__published:
	__property AnsiString Agent = {read=FAgent, write=FAgent};
	__property bool ApplyPatch = {read=FApplyPatch, write=FApplyPatch, default=0};
	__property TWebUpdateAuthentication Authenticate = {read=FAuthenticate, write=FAuthenticate, default=2};
	__property bool AutoRestart = {read=FAutoRestart, write=FAutoRestart, default=1};
	__property TWebUpdateCertCheck CertCheck = {read=FCertCheck, write=FCertCheck, default=0};
	__property AnsiString DateFormat = {read=FDateFormat, write=FDateFormat};
	__property char DateSeparator = {read=FDateSeparator, write=FDateSeparator, nodefault};
	__property bool ExtractCAB = {read=FExtractCAB, write=FExtractCAB, default=0};
	__property bool ExistingConnection = {read=FExistingConnection, write=FExistingConnection, default=0};
	__property bool ForceUpdate = {read=FForceUpdate, write=FForceUpdate, default=0};
	__property AnsiString FTPDirectory = {read=FFTPDirectory, write=FFTPDirectory};
	__property bool FTPPassive = {read=FFTPPassive, write=FFTPPassive, default=0};
	__property AnsiString Host = {read=FHost, write=FHost};
	__property bool HTTPKeepAliveAuthentication = {read=FKeepAlive, write=FKeepAlive, default=0};
	__property bool KeepIntermediateFiles = {read=FKeepIntermediateFiles, write=FKeepIntermediateFiles, default=0};
	__property AnsiString LanguageID = {read=FLanguageID, write=FLanguageID};
	__property bool Logging = {read=FLogging, write=FLogging, default=0};
	__property AnsiString LogFileName = {read=FLogFileName, write=SetLogFileName};
	__property TLastURLEntry* LastURLEntry = {read=FLastURLEntry, write=FLastURLEntry};
	__property AnsiString Password = {read=FPassword, write=FPassword};
	__property int Port = {read=FPort, write=FPort, default=21};
	__property TPostUpdateInfo* PostUpdateInfo = {read=FPostUpdateInfo, write=FPostUpdateInfo};
	__property AnsiString Proxy = {read=FProxy, write=FProxy};
	__property AnsiString ProxyUserID = {read=FProxyUserID, write=FProxyUserID};
	__property AnsiString ProxyPassword = {read=FProxyPassword, write=FProxyPassword};
	__property bool ShowDownloadProgress = {read=FShowDownloadProgress, write=FShowDownloadProgress, default=0};
	__property AnsiString Signature = {read=FSignature, write=FSignature};
	__property bool SignatureCheck = {read=FSignatureCheck, write=FSignatureCheck, default=0};
	__property AnsiString TempDirectory = {read=FTempDirectory, write=FTempDirectory};
	__property AnsiString TimeFormat = {read=FTimeFormat, write=FTimeFormat};
	__property int TimeOut = {read=FTimeOut, write=FTimeOut, default=0};
	__property int ReceiveTimeOut = {read=FReceiveTimeOut, write=FReceiveTimeOut, default=0};
	__property char TimeSeparator = {read=FTimeSeparator, write=FTimeSeparator, nodefault};
	__property TWebUpdateType UpdateType = {read=FUpdateType, write=FUpdateType, default=1};
	__property TWebUpdateConnect UpdateConnect = {read=FUpdateConnect, write=FUpdateConnect, default=0};
	__property TWebUpdateUpdate UpdateUpdate = {read=FUpdateUpdate, write=FUpdateUpdate, default=0};
	__property AnsiString URL = {read=FURL, write=FURL};
	__property AnsiString UserID = {read=FUserID, write=FUserID};
	__property bool UseCRC32 = {read=FUseCRC32, write=FUseCRC32, default=0};
	__property bool UseWinTempDir = {read=FUseWinTempDir, write=FUseWinTempDir, default=1};
	__property TWebUpdateUtility* Utility = {read=FUtility, write=FUtility};
	__property TWebUpdateVersionCheck VersionCheck = {read=FVersionCheck, write=FVersionCheck, default=0};
	__property TWebUpdateFileProgress OnFileProgress = {read=FWebUpdateFileProgress, write=FWebUpdateFileProgress};
	__property TWebUpdateFileDownloaded OnFileDownloaded = {read=FWebUpdateFileDownloaded, write=FWebUpdateFileDownloaded};
	__property TWebUpdateFileVersionCheck OnFileVersionCheck = {read=FWebUpdateFileVersionCheck, write=FWebUpdateFileVersionCheck};
	__property TWebUpdateProcessPostResult OnProcessPostResult = {read=FProcessPostResult, write=FProcessPostResult};
	__property TWebUpdateBeforePost OnBeforePost = {read=FBeforePost, write=FBeforePost};
	__property TWebUpdateProgress OnProgress = {read=FWebUpdateProgress, write=FWebUpdateProgress};
	__property TWebUpdateProgressCancel OnProgressCancel = {read=FWebUpdateProgressCancel, write=FWebUpdateProgressCancel};
	__property TWebUpdateStatus OnStatus = {read=FWebUpdateStatus, write=FWebUpdateStatus};
	__property TWebUpdateThreadDone OnThreadUpdateDone = {read=FThreadUpdateDone, write=FThreadUpdateDone};
	__property TWebUpdateRestart OnAppRestart = {read=FAppRestart, write=FAppRestart};
	__property TWebUpdateEvent OnAppDoClose = {read=FAppDoClose, write=FAppDoClose};
	__property TWebUpdateBeforeDownload OnBeforeFileDownload = {read=FOnBeforeFileDownload, write=FOnBeforeFileDownload};
	__property TWebUpdateCustomValidate OnCustomValidate = {read=FCustomValidate, write=FCustomValidate};
	__property TWebUpdateCustomProcess OnCustomProcess = {read=FCustomProcess, write=FCustomProcess};
	__property TWebUpdateFileList OnGetFileList = {read=FFileNameList, write=FFileNameList};
	__property TWebUpdateConvertPrefix OnConvertPrefix = {read=FConvertPrefix, write=FConvertPrefix};
	__property TWebUpdateSetParams OnSetAppParams = {read=FSetAppParams, write=FSetAppParams};
	__property TWebUpdateSetParams OnSetAppParamAfter = {read=FSetAppParamsAfter, write=FSetAppParamsAfter};
	__property TWebUpdateSetParams OnSetAppParamBefore = {read=FSetAppParamsBefore, write=FSetAppParamsBefore};
	__property TWebUpdateTextDownloaded OnDownloadedWhatsNew = {read=FOnDownloadedWhatsNew, write=FOnDownloadedWhatsNew};
	__property TWebUpdateTextDownloaded OnDownloadedEULA = {read=FOnDownloadedEULA, write=FOnDownloadedEULA};
	__property TWebUpdateFileNameFromURL OnFileNameFromURL = {read=FOnFileNameFromURL, write=FOnFileNameFromURL};
	__property Classes::TNotifyEvent OnSuccess = {read=FOnSuccess, write=FOnSuccess};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class PASCALIMPLEMENTATION TInetThread : public Classes::TThread 
{
	typedef Classes::TThread inherited;
	
private:
	TWebUpdate* WebUpdate;
	bool FInitPath;
	
protected:
	virtual void __fastcall Execute(void);
	
public:
	__fastcall TInetThread(TWebUpdate* AWebUpdate, bool InitPath);
public:
	#pragma option push -w-inl
	/* TThread.Destroy */ inline __fastcall virtual ~TInetThread(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TFileDescription : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	bool FCompressed;
	int FNewCheckSum;
	int FNewSize;
	AnsiString FURL;
	AnsiString FTargetDir;
	AnsiString FLocalVersion;
	AnsiString FNewVersion;
	AnsiString FDescription;
	AnsiString FNewCustomVer;
	int FFileSize;
	AnsiString FNewDate;
	AnsiString FNewTime;
	bool FMandatory;
	bool FPreselect;
	bool FHidden;
	bool FSelected;
	
__published:
	__property AnsiString URL = {read=FURL, write=FURL};
	__property AnsiString NewVersion = {read=FNewVersion, write=FNewVersion};
	__property int NewSize = {read=FNewSize, write=FNewSize, nodefault};
	__property int NewCheckSum = {read=FNewCheckSum, write=FNewCheckSum, nodefault};
	__property AnsiString NewCustomVer = {read=FNewCustomVer, write=FNewCustomVer};
	__property AnsiString NewDate = {read=FNewDate, write=FNewDate};
	__property AnsiString NewTime = {read=FNewTime, write=FNewTime};
	__property AnsiString LocalVersion = {read=FLocalVersion, write=FLocalVersion};
	__property AnsiString Description = {read=FDescription, write=FDescription};
	__property AnsiString TargetDir = {read=FTargetDir, write=FTargetDir};
	__property bool Compressed = {read=FCompressed, write=FCompressed, nodefault};
	__property int FileSize = {read=FFileSize, write=FFileSize, nodefault};
	__property bool Mandatory = {read=FMandatory, write=FMandatory, nodefault};
	__property bool Preselect = {read=FPreselect, write=FPreselect, nodefault};
	__property bool Hidden = {read=FHidden, write=FHidden, nodefault};
	__property bool Selected = {read=FSelected, write=FSelected, nodefault};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TFileDescription(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TFileDescription(void) { }
	#pragma option pop
	
};


#pragma pack(push,4)
struct tfvi
{
	
public:
	int versionms;
	int versionls;
} ;
#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static const Shortint WebUpdateSuccess = 0x0;
static const Shortint WebUpdateAccessError = 0x1;
static const Shortint WebUpdateNotFound = 0x2;
static const Shortint WebUpdateInformation = 0x3;
static const Shortint WebUpdateNoNewVersion = 0x4;
static const Shortint WebUpdateNewVersion = 0x5;
static const Shortint WebUpdateHTTPStatus = 0x6;
static const Shortint WebUpdateHTMLDialog = 0x7;
static const Shortint WebUpdateCABError = 0x8;
static const Shortint WebUpdateSpawnFail = 0x9;
static const Shortint WebUpdateWrongSource = 0xa;
static const Shortint WebUpdateSignatureError = 0xb;
static const Shortint WebUpdateWhatsNew = 0xc;
static const Shortint WebUpdateEUL = 0xd;
static const Shortint WebUpdateWhatsnewCancel = 0xe;
static const Shortint WebUpdateEULACancel = 0xf;
static const Shortint WebUpdatePostConnectFail = 0x10;
static const Shortint WebUpdatePostPostFail = 0x11;
static const Shortint WebUpdateExecAndWait = 0x12;
static const Shortint WebUpdateReplaceError = 0x13;
static const Shortint WebUpdateRenameError = 0x13;
static const Byte WebUpdateUndefined = 0xff;
static const Shortint ErrControlFileNotFound = 0x0;
static const Shortint ErrUpdateFileNotFound = 0x1;
static const Shortint ErrUpdateFileZeroLen = 0x2;
static const Shortint ErrUpdateTargetEqual = 0x3;
static const Shortint ErrUpdateSignatureError = 0x4;
static const Shortint ErrConnectError = 0x5;
static const Shortint ErrCannotDeleteFile = 0x6;
static const Shortint ErrCannotRenameFile = 0x7;
static const Shortint ErrCannotChangeDir = 0x8;
static const Shortint ErrDownloadError = 0x9;
static const Byte ErrUndefined = 0xff;
static const Shortint WU_FAILED = -1;
static const Shortint WU_SUCCESS = 0x0;
static const Shortint WU_NOCONNECTION = 0x1;
static const Shortint WU_INTERNETOPENFAILED = 0x2;
static const Shortint WU_DIALUPFAILED = 0x3;
static const Shortint WU_FILENOTFOUND = 0x4;
static const Shortint WU_SIGNATUREFAILED = 0x5;
static const Shortint WU_DATEBASEDNEWVERSION = 0x6;
static const Shortint WU_NONEWVERSION = 0x7;
static const Shortint WU_UNCONDITIONALNEWVERSION = 0x8;
static const Shortint WU_FILESIZEBASEDNEWVERSION = 0x9;
static const Shortint WU_CHECKSUMBASEDNEWVERSION = 0xa;
static const Shortint WU_VERSIONINFOBASEDNEWVERSION = 0xb;
static const Shortint WU_CUSTOMNEWVERSION = 0xc;
static const Shortint MAJ_VER = 0x2;
static const Shortint MIN_VER = 0x2;
static const Shortint REL_VER = 0x3;
static const Shortint BLD_VER = 0x0;
#define winetdll "wininet.dll"
#define D5 "\\Software\\Borland\\Delphi\\5.0"
#define D6 "\\Software\\Borland\\Delphi\\6.0"
#define D7 "\\Software\\Borland\\Delphi\\7.0"
#define D2005 "\\Software\\Borland\\BDS\\3.0"
#define D2006 "\\Software\\Borland\\BDS\\4.0"
#define D2007 "\\Software\\Borland\\BDS\\5.0"
#define D2009 "\\Software\\CodeGear\\BDS\\6.0"
#define D2010 "\\Software\\CodeGear\\BDS\\7.0"
#define D2011 "\\Software\\Embarcadero\\BDS\\8.0"
#define C5 "\\Software\\Borland\\C++Builder\\5.0"
#define C6 "\\Software\\Borland\\C++Builder\\6.0"
extern PACKAGE AnsiString __fastcall UserDocDir();
extern PACKAGE void __fastcall HTMLDialog(unsigned pHandle, AnsiString s);
extern PACKAGE int __fastcall GetSizeOfFile(AnsiString fn);

}	/* namespace Wupdate */
using namespace Wupdate;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wupdate
