// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adscnnct.pas' rev: 11.00

#ifndef AdscnnctHPP
#define AdscnnctHPP

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
#include <Ace.hpp>	// Pascal unit
#include <Adsset.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adscnnct
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdsLinkOption { loGlobal, loAuthenticateActiveUser, loPathIsStatic };
#pragma option pop

typedef Set<TAdsLinkOption, loGlobal, loPathIsStatic>  TAdsLinkOptions;

class DELPHICLASS AdsError;
class PASCALIMPLEMENTATION AdsError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	__fastcall AdsError(int ulRetCode, bool unusedvar);
	__fastcall virtual ~AdsError(void);
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall AdsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall AdsError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall AdsError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall AdsError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall AdsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall AdsError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall AdsError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
};


class DELPHICLASS AdsConnectionError;
class PASCALIMPLEMENTATION AdsConnectionError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	__fastcall AdsConnectionError(AnsiString acMsg);
	__fastcall virtual ~AdsConnectionError(void);
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall AdsConnectionError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall AdsConnectionError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall AdsConnectionError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall AdsConnectionError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall AdsConnectionError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall AdsConnectionError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall AdsConnectionError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TAdsCompressionTypes { ccAdsCompressionNotSet, ccAdsCompressInternet, ccAdsCompressAlways, ccAdsCompressNever };
#pragma option pop

#pragma option push -b-
enum TAdsConnectionTableTypes { ttAdsConnectUnspecified, ttAdsConnectCDX, ttAdsConnectNTX, ttAdsConnectADT };
#pragma option pop

#pragma option push -b-
enum TAdsCommunicationType { ctAdsDefault, ctAdsUDPIP, ctAdsIPX, ctAdsTCPIP };
#pragma option pop

struct TStmtInfo;
typedef TStmtInfo *PStmtInfo;

#pragma pack(push,1)
struct TStmtInfo
{
	
public:
	int HashCode;
	int StmtHandle;
	AnsiString SQLText;
} ;
#pragma pack(pop)

class DELPHICLASS TAdsConnection;
typedef void __fastcall (__closure *TAdsDatabaseLoginEvent)(TAdsConnection* AdsConnection, AnsiString &Username, AnsiString &Password);

#pragma pack(push,2)
struct TAdsDatasetOptions
{
	
public:
	Word musAdsLockType;
	Word musAdsCharType;
	Word musAdsRightsCheck;
	Word musAdsTableType;
} ;
#pragma pack(pop)

class PASCALIMPLEMENTATION TAdsConnection : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
protected:
	AnsiString FAliasName;
	bool FValidAlias;
	bool FConnected;
	AnsiString FConnectString;
	bool FTransactionActive;
	int FhConnection;
	Classes::TList* FTablesList;
	bool bConnectAfterLoad;
	AnsiString mstrAliasPath;
	TAdsConnectionTableTypes meAliasTableType;
	AnsiString mFormName;
	bool FIsDictionaryConn;
	bool FLoginPrompt;
	AnsiString FUsername;
	AnsiString FPassword;
	Adsset::TAdsServerTypes FAdsServerTypes;
	Classes::TList* FStmtList;
	bool FMiddleTierConn;
	bool FStoredProcConn;
	bool FbStoreConnected;
	TAdsCompressionTypes FAdsCompression;
	TAdsCommunicationType FAdsCommunicationType;
	bool FReadOnly;
	int FThreadID;
	int FGivenConnection;
	Classes::TStringList* FUserGroups;
	AnsiString FUserGroupsString;
	bool FReadUserGroups;
	bool FCancelOnRollback;
	Classes::TNotifyEvent FAfterCommit;
	Classes::TNotifyEvent FBeforeCommit;
	Classes::TNotifyEvent FAfterRollback;
	Classes::TNotifyEvent FBeforeRollback;
	Classes::TNotifyEvent FOnConnect;
	Classes::TNotifyEvent FOnDisconnect;
	TAdsDatabaseLoginEvent FOnLogin;
	Classes::TNotifyEvent FAfterConnect;
	Classes::TNotifyEvent FAfterDisconnect;
	Classes::TNotifyEvent FBeforeConnect;
	Classes::TNotifyEvent FBeforeDisconnect;
	virtual void __fastcall SetAliasName(AnsiString strAlias);
	virtual void __fastcall SetConnected(bool bActive);
	virtual AnsiString __fastcall GetConnectionType();
	virtual AnsiString __fastcall GetConnectString();
	virtual void __fastcall SetConnectString(AnsiString strConnect);
	virtual AnsiString __fastcall GetServerName();
	virtual bool __fastcall GetTransactionActive(void);
	virtual bool __fastcall GetIsConnectionAlive(void);
	virtual int __fastcall GetConnectionHandle(void);
	virtual Db::TDataSet* __fastcall GetDataSet(int Index);
	virtual int __fastcall GetDataSetCount(void);
	virtual void __fastcall ClearStatements(void);
	virtual void __fastcall PerformRollback(void);
	virtual void __fastcall DoAfterCommit(void);
	virtual void __fastcall DoBeforeCommit(void);
	virtual void __fastcall DoAfterRollback(void);
	virtual void __fastcall DoBeforeRollback(void);
	virtual void __fastcall DoOnConnect(void);
	virtual void __fastcall DoOnDisconnect(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall SetName(const AnsiString Value);
	virtual bool __fastcall GetDictionaryFlag(void);
	virtual void __fastcall GetAdsConnection(char * pcPath);
	int __fastcall GetVersionMajor(void);
	int __fastcall GetVersionMinor(void);
	virtual Classes::TStringList* __fastcall GetUserGroups(void);
	virtual AnsiString __fastcall GetUserGroupsString();
	virtual void __fastcall RefreshUserGroups(void);
	
public:
	__fastcall virtual TAdsConnection(Classes::TComponent* Owner);
	__fastcall TAdsConnection(Classes::TComponent* Owner, int Handle);
	__fastcall virtual ~TAdsConnection(void);
	__property AnsiString ConnectionType = {read=GetConnectionType};
	__property bool TransactionActive = {read=GetTransactionActive, nodefault};
	__property bool IsDictionaryConn = {read=GetDictionaryFlag, nodefault};
	__property bool IsConnectionAlive = {read=GetIsConnectionAlive, nodefault};
	__property Db::TDataSet* DataSets[int Index] = {read=GetDataSet};
	__property int DataSetCount = {read=GetDataSetCount, nodefault};
	__property int Handle = {read=FhConnection, nodefault};
	__property int ConnectionThreadID = {read=FThreadID, nodefault};
	__property int DDVersionMajor = {read=GetVersionMajor, nodefault};
	__property int DDVersionMinor = {read=GetVersionMinor, nodefault};
	__property Classes::TStringList* UserGroups = {read=GetUserGroups};
	__property AnsiString UserGroupsString = {read=GetUserGroupsString};
	virtual void __fastcall Connect(void);
	virtual void __fastcall Disconnect(void);
	virtual void __fastcall AddTableToConnectList(Db::TDataSet* Table);
	virtual AnsiString __fastcall GetConnectionPath();
	virtual AnsiString __fastcall GetConnectionWithDDPath();
	virtual TAdsConnectionTableTypes __fastcall GetAdsTableType(void);
	virtual void __fastcall RemoveTableFromConnectList(Db::TDataSet* oCallee);
	virtual void __fastcall BeginTransaction(void);
	virtual void __fastcall Commit(void);
	virtual void __fastcall GetTableNames(Classes::TStrings* poList, AnsiString strFileMask);
	virtual void __fastcall GetTableAndLinkNames(Classes::TStrings* poLinkNames, Classes::TStrings* poTableNames, AnsiString strFileMask);
	virtual void __fastcall GetProcedureNames(Classes::TStrings* poList);
	virtual void __fastcall CreateSavepoint(AnsiString strSavepoint);
	virtual void __fastcall Rollback(void)/* overload */;
	virtual void __fastcall Rollback(AnsiString strSavepoint)/* overload */;
	virtual int __fastcall Execute(const AnsiString SQL, Db::TParams* Params = (Db::TParams*)(0x0), bool Cache = false, Ace::PADSHANDLE Cursor = (void *)(0x0))/* overload */;
	virtual int __fastcall Execute(const TAdsDatasetOptions &oAdsDatasetOptions, const AnsiString SQL, Db::TParams* Params = (Db::TParams*)(0x0), bool Cache = false, Ace::PADSHANDLE Cursor = (void *)(0x0))/* overload */;
	virtual int __fastcall GetNumActiveDDLinks(void);
	virtual void __fastcall GetActiveDDLinkInfo(int iLinkNum, Classes::TStrings* poList);
	void __fastcall CreateDDLink(AnsiString strLinkAlias, AnsiString strLinkedDDPath, AnsiString strUserName, AnsiString strPassword, TAdsLinkOptions Options);
	void __fastcall DropDDLink(AnsiString strLinkedDD, bool bDropGlobal);
	void __fastcall SetHandle(int hConnection);
	void __fastcall ClearHandle(void);
	virtual System::TDateTime __fastcall GetServerTime(void);
	virtual void __fastcall CloseCachedTables(void);
	
__published:
	__property AnsiString AliasName = {read=FAliasName, write=SetAliasName};
	__property bool IsConnected = {read=FConnected, write=SetConnected, stored=FbStoreConnected, nodefault};
	__property AnsiString ConnectPath = {read=GetConnectString, write=SetConnectString};
	__property AnsiString ServerName = {read=GetServerName};
	__property int ConnectionHandle = {read=GetConnectionHandle, nodefault};
	__property Adsset::TAdsServerTypes AdsServerTypes = {read=FAdsServerTypes, write=FAdsServerTypes, nodefault};
	__property bool LoginPrompt = {read=FLoginPrompt, write=FLoginPrompt, nodefault};
	__property AnsiString Username = {read=FUsername, write=FUsername};
	__property AnsiString Password = {read=FPassword, write=FPassword};
	__property bool MiddleTierConnection = {read=FMiddleTierConn, write=FMiddleTierConn, default=0};
	__property bool StoreConnected = {read=FbStoreConnected, write=FbStoreConnected, default=1};
	__property bool StoredProcedureConnection = {read=FStoredProcConn, write=FStoredProcConn, default=0};
	__property TAdsCompressionTypes Compression = {read=FAdsCompression, write=FAdsCompression, nodefault};
	__property TAdsCommunicationType CommunicationType = {read=FAdsCommunicationType, write=FAdsCommunicationType, nodefault};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, default=0};
	__property bool CancelOnRollback = {read=FCancelOnRollback, write=FCancelOnRollback, default=1};
	__property Classes::TNotifyEvent AfterCommit = {read=FAfterCommit, write=FAfterCommit};
	__property Classes::TNotifyEvent BeforeCommit = {read=FBeforeCommit, write=FBeforeCommit};
	__property Classes::TNotifyEvent AfterRollback = {read=FAfterRollback, write=FAfterRollback};
	__property Classes::TNotifyEvent BeforeRollback = {read=FBeforeRollback, write=FBeforeRollback};
	__property Classes::TNotifyEvent OnConnect = {read=FOnConnect, write=FOnConnect};
	__property Classes::TNotifyEvent OnDisconnect = {read=FOnDisconnect, write=FOnDisconnect};
	__property Classes::TNotifyEvent AfterConnect = {read=FAfterConnect, write=FAfterConnect};
	__property Classes::TNotifyEvent BeforeConnect = {read=FBeforeConnect, write=FBeforeConnect};
	__property Classes::TNotifyEvent AfterDisconnect = {read=FAfterDisconnect, write=FAfterDisconnect};
	__property Classes::TNotifyEvent BeforeDisconnect = {read=FBeforeDisconnect, write=FBeforeDisconnect};
	__property TAdsDatabaseLoginEvent OnLogin = {read=FOnLogin, write=FOnLogin};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int __fastcall GetThreadID(void);
extern PACKAGE Classes::TThreadList* __fastcall GetConnectionList(void);
extern PACKAGE Classes::TList* __fastcall LockConnectionList(void);
extern PACKAGE void __fastcall UnlockConnectionList(void);
extern PACKAGE void __fastcall DDCreateLink(int hConnection, AnsiString strLinkAlias, AnsiString strLinkedDDPath, AnsiString strUserName, AnsiString strPassword, TAdsLinkOptions Options);
extern PACKAGE void __fastcall DDDropLink(int hConnection, AnsiString strLinkedDD, bool bDropGlobal);

}	/* namespace Adscnnct */
using namespace Adscnnct;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adscnnct
