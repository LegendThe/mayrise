// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Webcopy.pas' rev: 11.00

#ifndef WebcopyHPP
#define WebcopyHPP

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
#include <Wininet.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit
#include <Wcbase64.hpp>	// Pascal unit
#include <Wclogin.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

#pragma link "wininet.lib"


namespace Webcopy
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TWebCopyAuthentication { waNever, waAlways, waAuto };
#pragma option pop

class DELPHICLASS TWCopyThread;
class DELPHICLASS TWebCopy;
class DELPHICLASS TWebCopyItems;
class DELPHICLASS TWebCopyItem;
class PASCALIMPLEMENTATION TWebCopyItems : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TWebCopyItem* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TComponent* FOwner;
	HIDESBASE TWebCopyItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TWebCopyItem* Value);
	int __fastcall GetActiveItems(void);
	int __fastcall GetSuccessCount(void);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TWebCopyItems(Classes::TComponent* AOwner);
	HIDESBASE TWebCopyItem* __fastcall Add(void);
	HIDESBASE TWebCopyItem* __fastcall Insert(int Index);
	__property TWebCopyItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property int ActiveItems = {read=GetActiveItems, nodefault};
	__property int SuccessCount = {read=GetSuccessCount, nodefault};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TWebCopyItems(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TWebCopyError)(System::TObject* Sender, int ErrorCode);

typedef void __fastcall (__closure *TWebCopyErrorInfo)(System::TObject* Sender, int ErrorCode, AnsiString ErrorInfo);

typedef void __fastcall (__closure *TWebCopyThreadDone)(System::TObject* Sender);

typedef void __fastcall (__closure *TWebCopyFileDone)(System::TObject* Sender, int idx);

typedef void __fastcall (__closure *TWebCopyFileStart)(System::TObject* Sender, int idx);

typedef void __fastcall (__closure *TWebCopyConnectError)(System::TObject* Sender);

typedef void __fastcall (__closure *TWebCopyURLNotFound)(System::TObject* Sender, AnsiString url);

typedef void __fastcall (__closure *TWebCopyCancel)(System::TObject* Sender);

typedef void __fastcall (__closure *TWebCopyOverwrite)(System::TObject* Sender, AnsiString tgtfile, bool &allow);

typedef void __fastcall (__closure *TWebCopyProgress)(System::TObject* Sender, int fileidx, unsigned size, unsigned totsize);

typedef void __fastcall (__closure *TWebCopyMultiFTPFileDone)(System::TObject* Sender, AnsiString Filename);

typedef void __fastcall (__closure *TWebCopyBeforeDialogShow)(System::TObject* Sender, Forms::TForm* ADialog);

typedef void __fastcall (__closure *TWebCopyNoNewFile)(System::TObject* Sender, AnsiString tgtfile, System::TDateTime curdate, System::TDateTime newdate);

typedef void __fastcall (__closure *TWebCopyFileDateCheck)(System::TObject* Sender, int idx, System::TDateTime newdate, bool &allow);

typedef void __fastcall (__closure *TWebRemoveFileDone)(System::TObject* Sender, int idx);

typedef void __fastcall (__closure *TWebRemoveFileFailed)(System::TObject* Sender, int idx);

#pragma option push -b-
enum TWebCopyHTTPCommand { hcPost, hcPut };
#pragma option pop

class PASCALIMPLEMENTATION TWebCopy : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FAlwaysOnTop;
	int FFileNum;
	bool FCancelled;
	Forms::TForm* FForm;
	bool FFormClosed;
	Comctrls::TProgressBar* FProgress;
	Stdctrls::TLabel* FFileLbl;
	Stdctrls::TLabel* FSizeLbl;
	Stdctrls::TLabel* FRateLbl;
	Stdctrls::TLabel* FTimeLbl;
	Stdctrls::TLabel* FElapsedTimeLbl;
	Stdctrls::TButton* FCancelBtn;
	Stdctrls::TButton* FBtnShowFile;
	Stdctrls::TButton* FBtnShowFolder;
	Comctrls::TAnimate* FAnim;
	AnsiString FLastFile;
	AnsiString FLastDir;
	AnsiString FDlgCaption;
	AnsiString FDlgUpload;
	AnsiString FFileLabel;
	AnsiString FProgressLabel;
	AnsiString FRateLabel;
	AnsiString FTimeLabel;
	AnsiString FElapsedTimeLabel;
	AnsiString FProxy;
	AnsiString FProxyUserID;
	AnsiString FProxyPassword;
	int FTimeOut;
	TWebCopyItems* FItems;
	void *FHinternet;
	TWebCopyError FOnError;
	TWebCopyErrorInfo FOnErrorInfo;
	TWebCopyThreadDone FOnCopyDone;
	TWebCopyFileDone FOnFileDone;
	TWebCopyFileStart FOnFileStart;
	TWebCopyConnectError FOnConnectError;
	TWebCopyURLNotFound FOnURLNotFound;
	TWebCopyCancel FOnCopyCancel;
	TWebCopyOverwrite FOnCopyOverwrite;
	TWebCopyProgress FOnCopyProgress;
	TWebCopyMultiFTPFileDone FOnMultiFTPFileDone;
	TWebCopyBeforeDialogShow FOnBeforeDialogShow;
	bool FShowDialog;
	AnsiString FFileOfLabel;
	AnsiString FFromServerLabel;
	AnsiString FToServerLabel;
	bool FShowOpenFolder;
	bool FShowOpenFile;
	bool FFTPPassive;
	bool FShowTime;
	bool FShowElapsedTime;
	bool FShowCompletion;
	bool FShowServer;
	AnsiString FDlgCompleted;
	AnsiString FDlgDwnload;
	AnsiString FDlgCopying;
	bool FCopyCompleted;
	TWebCopyNoNewFile FOnNoNewFile;
	AnsiString FDlgCancel;
	AnsiString FDlgClose;
	AnsiString FDlgOpenFolder;
	AnsiString FDlgOpenFile;
	bool FDlgShowCancel;
	bool FDlgShowCloseBtn;
	AnsiString FDlgTimeSec;
	AnsiString FDlgTimeMin;
	bool FCancelIsClose;
	bool FKeepAlive;
	TWebCopyFileDateCheck FOnFileDateCheck;
	bool FShowFileName;
	void *FFTPconnect;
	AnsiString FPrevConnect;
	AnsiString FPrevTarget;
	AnsiString FAgent;
	AnsiString FRateStr;
	AnsiString FTimeLeftStr;
	AnsiString FElapsedTimeStr;
	bool FCreateUniqueFilenames;
	bool FShowDialogOnTop;
	TWebRemoveFileDone FOnRemovedFile;
	TWebRemoveFileFailed FOnRemovedFileFailed;
	bool __fastcall HttpGetFile(int idx, AnsiString url, AnsiString displayurl, AnsiString tgtdir, AnsiString tgtfn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, TWebCopyAuthentication Auth, AnsiString UserId, AnsiString Password);
	bool __fastcall HttpPutFile(AnsiString url, AnsiString tgtdir, AnsiString tgtfn, TWebCopyHTTPCommand HttpCommand);
	bool __fastcall FileGetFile(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort, AnsiString url, AnsiString tgtdir, AnsiString tgtfn, bool UseDate, System::TDateTime &FileDate, bool &NoNew);
	bool __fastcall FtpGetFile(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, bool KeepConnect, bool ShowFileInfo);
	bool __fastcall MultiFtpGetList(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, bool KeepConnect);
	bool __fastcall MultiFtpGetFile(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, bool KeepConnect);
	bool __fastcall MultiFtpPutFile(int idx, AnsiString fuserid, AnsiString fpassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, bool KeepConnect);
	bool __fastcall FtpPutFile(int idx, AnsiString fuserid, AnsiString fpassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool UseDate, System::TDateTime &FileDate, bool &NoNew, bool KeepConnect);
	bool __fastcall FtpRemoveFile(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort, AnsiString URL, AnsiString TgtDir, AnsiString TgtFn, bool KeepConnect);
	bool __fastcall FtpTest(int idx, AnsiString FUserid, AnsiString FPassword, AnsiString FHost, int FPort);
	AnsiString __fastcall MakeProxyUrl(AnsiString url);
	AnsiString __fastcall ExtractServer(AnsiString url);
	AnsiString __fastcall RemoveServer(AnsiString url);
	void __fastcall CreateForm(void);
	void __fastcall ThreadDone(System::TObject* Sender);
	int __fastcall NumInetItems(void);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
protected:
	void __fastcall CancelClick(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall FormCloseQuery(System::TObject* Sender, bool &CanClose);
	void __fastcall OpenFile(System::TObject* Sender);
	void __fastcall OpenFolder(System::TObject* Sender);
	
public:
	void __fastcall Execute(void);
	void __fastcall ThreadExecute(void);
	void __fastcall ThreadExecAndWait(void);
	void __fastcall DoCopy(void);
	void __fastcall CancelCopy(void);
	__fastcall virtual TWebCopy(Classes::TComponent* AOwner);
	__fastcall virtual ~TWebCopy(void);
	__property Forms::TForm* ProgressForm = {read=FForm};
	__property Comctrls::TProgressBar* ProgressBar = {read=FProgress};
	__property Stdctrls::TLabel* ProgressFileLabel = {read=FFileLbl};
	__property Stdctrls::TLabel* ProgressSizeLabel = {read=FSizeLbl};
	__property Stdctrls::TLabel* ProgressRateLabel = {read=FRateLbl};
	__property AnsiString ElapsedTimeStr = {read=FElapsedTimeStr};
	__property AnsiString TimeLeftStr = {read=FTimeLeftStr};
	__property AnsiString RateStr = {read=FRateStr};
	__property bool FormClosed = {read=FFormClosed, write=FFormClosed, nodefault};
	
__published:
	__property AnsiString Agent = {read=FAgent, write=FAgent};
	__property bool AlwaysOnTop = {read=FAlwaysOnTop, write=FAlwaysOnTop, default=0};
	__property bool CreateUniqueFilenames = {read=FCreateUniqueFilenames, write=FCreateUniqueFilenames, default=0};
	__property AnsiString DlgCancel = {read=FDlgCancel, write=FDlgCancel};
	__property AnsiString DlgCaption = {read=FDlgCaption, write=FDlgCaption};
	__property AnsiString DlgCompleted = {read=FDlgCompleted, write=FDlgCompleted};
	__property AnsiString DlgClose = {read=FDlgClose, write=FDlgClose};
	__property AnsiString DlgFileLabel = {read=FFileLabel, write=FFileLabel};
	__property AnsiString DlgFileOfLabel = {read=FFileOfLabel, write=FFileOfLabel};
	__property AnsiString DlgFromServerLabel = {read=FFromServerLabel, write=FFromServerLabel};
	__property AnsiString DlgToServerLabel = {read=FToServerLabel, write=FToServerLabel};
	__property AnsiString DlgProgressLabel = {read=FProgressLabel, write=FProgressLabel};
	__property AnsiString DlgRateLabel = {read=FRateLabel, write=FRateLabel};
	__property AnsiString DlgTimeLabel = {read=FTimeLabel, write=FTimeLabel};
	__property AnsiString DlgElapsedTimeLabel = {read=FElapsedTimeLabel, write=FElapsedTimeLabel};
	__property AnsiString DlgCopying = {read=FDlgCopying, write=FDlgCopying};
	__property AnsiString DlgDwnload = {read=FDlgDwnload, write=FDlgDwnload};
	__property AnsiString DlgUpload = {read=FDlgUpload, write=FDlgUpload};
	__property AnsiString DlgOpenFile = {read=FDlgOpenFile, write=FDlgOpenFile};
	__property AnsiString DlgOpenFolder = {read=FDlgOpenFolder, write=FDlgOpenFolder};
	__property AnsiString DlgTimeSec = {read=FDlgTimeSec, write=FDlgTimeSec};
	__property AnsiString DlgTimeMin = {read=FDlgTimeMin, write=FDlgTimeMin};
	__property bool FTPPassive = {read=FFTPPassive, write=FFTPPassive, nodefault};
	__property bool HTTPKeepAliveAuthentication = {read=FKeepAlive, write=FKeepAlive, default=0};
	__property TWebCopyItems* Items = {read=FItems, write=FItems};
	__property AnsiString Proxy = {read=FProxy, write=FProxy};
	__property AnsiString ProxyUserID = {read=FProxyUserID, write=FProxyUserID};
	__property AnsiString ProxyPassword = {read=FProxyPassword, write=FProxyPassword};
	__property bool DlgShowCancel = {read=FDlgShowCancel, write=FDlgShowCancel, default=1};
	__property bool DlgShowCloseBtn = {read=FDlgShowCloseBtn, write=FDlgShowCloseBtn, default=0};
	__property bool ShowDialog = {read=FShowDialog, write=FShowDialog, default=1};
	__property bool ShowDialogOnTop = {read=FShowDialogOnTop, write=FShowDialogOnTop, default=1};
	__property bool ShowOpenFile = {read=FShowOpenFile, write=FShowOpenFile, default=0};
	__property bool ShowOpenFolder = {read=FShowOpenFolder, write=FShowOpenFolder, default=0};
	__property bool ShowCompletion = {read=FShowCompletion, write=FShowCompletion, default=0};
	__property bool ShowElapsedTime = {read=FShowElapsedTime, write=FShowElapsedTime, default=0};
	__property bool ShowFileName = {read=FShowFileName, write=FShowFileName, default=1};
	__property bool ShowServer = {read=FShowServer, write=FShowServer, default=1};
	__property bool ShowTime = {read=FShowTime, write=FShowTime, default=0};
	__property int Timeout = {read=FTimeOut, write=FTimeOut, nodefault};
	__property TWebCopyBeforeDialogShow OnBeforeDialogShow = {read=FOnBeforeDialogShow, write=FOnBeforeDialogShow};
	__property TWebCopyConnectError OnConnectError = {read=FOnConnectError, write=FOnConnectError};
	__property TWebCopyCancel OnCopyCancel = {read=FOnCopyCancel, write=FOnCopyCancel};
	__property TWebCopyThreadDone OnCopyDone = {read=FOnCopyDone, write=FOnCopyDone};
	__property TWebCopyOverwrite OnCopyOverWrite = {read=FOnCopyOverwrite, write=FOnCopyOverwrite};
	__property TWebCopyProgress OnCopyProgress = {read=FOnCopyProgress, write=FOnCopyProgress};
	__property TWebCopyError OnError = {read=FOnError, write=FOnError};
	__property TWebCopyErrorInfo OnErrorInfo = {read=FOnErrorInfo, write=FOnErrorInfo};
	__property TWebCopyFileDone OnFileDone = {read=FOnFileDone, write=FOnFileDone};
	__property TWebCopyFileStart OnFileStart = {read=FOnFileStart, write=FOnFileStart};
	__property TWebCopyFileDateCheck OnFileDateCheck = {read=FOnFileDateCheck, write=FOnFileDateCheck};
	__property TWebCopyMultiFTPFileDone OnMultiFTPFileDone = {read=FOnMultiFTPFileDone, write=FOnMultiFTPFileDone};
	__property TWebCopyURLNotFound OnURLNotFound = {read=FOnURLNotFound, write=FOnURLNotFound};
	__property TWebCopyNoNewFile OnNoNewFileFound = {read=FOnNoNewFile, write=FOnNoNewFile};
	__property TWebRemoveFileDone OnRemovedFile = {read=FOnRemovedFile, write=FOnRemovedFile};
	__property TWebRemoveFileFailed OnRemovedFileFailed = {read=FOnRemovedFileFailed, write=FOnRemovedFileFailed};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class PASCALIMPLEMENTATION TWCopyThread : public Classes::TThread 
{
	typedef Classes::TThread inherited;
	
private:
	TWebCopy* webcopy;
	
protected:
	virtual void __fastcall Execute(void);
	
public:
	__fastcall TWCopyThread(TWebCopy* AWebCopy);
public:
	#pragma option push -w-inl
	/* TThread.Destroy */ inline __fastcall virtual ~TWCopyThread(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TWebCopyProtocol { wpHttp, wpFtp, wpFile, wpFtpUpload, wpHttpUpload, wpMultiFtp, wpMultiFtpUpload, wpFtpDelete, wpFtpList, wpFtpTest };
#pragma option pop

class DELPHICLASS TFileDetailItem;
class PASCALIMPLEMENTATION TFileDetailItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	unsigned FFileAttributes;
	AnsiString FFilename;
	unsigned FFileSizeLow;
	unsigned FFileSizeHigh;
	#pragma pack(push,4)
	_FILETIME FFileDate;
	#pragma pack(pop)
	
public:
	__property unsigned FileAttributes = {read=FFileAttributes, write=FFileAttributes, nodefault};
	__property AnsiString Filename = {read=FFilename, write=FFilename};
	__property unsigned FileSizeLow = {read=FFileSizeLow, write=FFileSizeLow, nodefault};
	__property unsigned FileSizeHigh = {read=FFileSizeHigh, write=FFileSizeHigh, nodefault};
	__property _FILETIME FileDate = {read=FFileDate, write=FFileDate};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TFileDetailItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TFileDetailItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFileDetailItems;
class PASCALIMPLEMENTATION TFileDetailItems : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TFileDetailItem* operator[](int Index) { return Items[Index]; }
	
private:
	HIDESBASE TFileDetailItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TFileDetailItem* Value);
	
public:
	__fastcall TFileDetailItems(void);
	HIDESBASE TFileDetailItem* __fastcall Add(void);
	HIDESBASE TFileDetailItem* __fastcall Insert(int Index);
	__property TFileDetailItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TFileDetailItems(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TWebCopyItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FURL;
	AnsiString FTargetDir;
	AnsiString FTargetFilename;
	TWebCopyProtocol FProtocol;
	TWebCopyHTTPCommand FHTTPCommand;
	AnsiString FFTPHost;
	AnsiString FFTPUserID;
	AnsiString FFTPPassword;
	int FFTPPort;
	bool FActive;
	bool FSuccess;
	bool FCopyNewerOnly;
	System::TDateTime FFileDate;
	bool FNoNewVersion;
	System::TDateTime FNewFileDate;
	TWebCopyAuthentication FAuthenticate;
	AnsiString FHTTPUserID;
	AnsiString FDisplayURL;
	AnsiString FHTTPPassword;
	unsigned FFileSize;
	bool FCancelled;
	Classes::TStringList* FFileList;
	TFileDetailItems* FFileDetailList;
	
public:
	__fastcall virtual TWebCopyItem(Classes::TCollection* Collection);
	__fastcall virtual ~TWebCopyItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property bool Success = {read=FSuccess, nodefault};
	__property bool Cancelled = {read=FCancelled, nodefault};
	__property bool NoNewVersion = {read=FNoNewVersion, nodefault};
	__property System::TDateTime NewFileDate = {read=FNewFileDate, write=FNewFileDate};
	__property Classes::TStringList* FileList = {read=FFileList};
	__property unsigned FileSize = {read=FFileSize, write=FFileSize, nodefault};
	__property TFileDetailItems* FileDetails = {read=FFileDetailList};
	
__published:
	__property bool Active = {read=FActive, write=FActive, default=1};
	__property TWebCopyAuthentication Authenticate = {read=FAuthenticate, write=FAuthenticate, default=0};
	__property bool CopyNewerOnly = {read=FCopyNewerOnly, write=FCopyNewerOnly, default=0};
	__property AnsiString DisplayURL = {read=FDisplayURL, write=FDisplayURL};
	__property System::TDateTime FileDate = {read=FFileDate, write=FFileDate};
	__property AnsiString FTPHost = {read=FFTPHost, write=FFTPHost};
	__property AnsiString FTPUserID = {read=FFTPUserID, write=FFTPUserID};
	__property AnsiString FTPPassword = {read=FFTPPassword, write=FFTPPassword};
	__property int FTPPort = {read=FFTPPort, write=FFTPPort, nodefault};
	__property TWebCopyHTTPCommand HTTPCommand = {read=FHTTPCommand, write=FHTTPCommand, nodefault};
	__property TWebCopyProtocol Protocol = {read=FProtocol, write=FProtocol, nodefault};
	__property AnsiString TargetDir = {read=FTargetDir, write=FTargetDir};
	__property AnsiString TargetFilename = {read=FTargetFilename, write=FTargetFilename};
	__property AnsiString URL = {read=FURL, write=FURL};
	__property AnsiString HTTPUserID = {read=FHTTPUserID, write=FHTTPUserID};
	__property AnsiString HTTPPassword = {read=FHTTPPassword, write=FHTTPPassword};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint errFilesIdentical = 0x0;
static const Shortint errCannotOpenSourceFile = 0x1;
static const Shortint errSourceFileZeroLength = 0x2;
static const Shortint errCannotCreateTargetFile = 0x3;
static const Shortint errCopyReadFailure = 0x4;
static const Shortint errCopyWriteFailure = 0x5;
static const Shortint errCannotConnect = 0x6;
static const Shortint MAJ_VER = 0x2;
static const Shortint MIN_VER = 0x4;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;
extern PACKAGE AnsiString __fastcall FileSizeFmt(unsigned Size);
extern PACKAGE AnsiString __fastcall FileSizeFmtSpeed(int Size);
extern PACKAGE AnsiString __fastcall TimeFmt(unsigned ticks, unsigned cursize, unsigned totsize, AnsiString TS, AnsiString TM);

}	/* namespace Webcopy */
using namespace Webcopy;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Webcopy
