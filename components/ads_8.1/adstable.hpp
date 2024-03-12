// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adstable.pas' rev: 11.00

#ifndef AdstableHPP
#define AdstableHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Aceunpub.hpp>	// Pascal unit
#include <Adsdata.hpp>	// Pascal unit
#include <Adscnnct.hpp>	// Pascal unit
#include <Adsfunc.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Syncobjs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adstable
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TUpdateMode { upWhereAll, upWhereChanged, upWhereKeyOnly };
#pragma option pop

#pragma option push -b-
enum TIndexCollationMismatchOptions { icmError, icmIgnore, icmReindex };
#pragma option pop

#pragma pack(push,4)
struct TAdsTimeStampRec
{
	
public:
	int lDate;
	int lTime;
} ;
#pragma pack(pop)

#pragma option push -b-
enum TParamBindMode { pbByName, pbByNumber };
#pragma option pop

class DELPHICLASS TAdsStoredProc;
class PASCALIMPLEMENTATION TAdsStoredProc : public Adsfunc::TAdsExtendedDataSet 
{
	typedef Adsfunc::TAdsExtendedDataSet inherited;
	
private:
	int FHandle;
	int FStmtHandle;
	AnsiString FProcName;
	Db::TParams* FParams;
	bool FPrepared;
	bool FQueryMode;
	TParamBindMode FBindMode;
	bool FHasResultParam;
	AnsiString FRefreshParams;
	void __fastcall BindParams(void);
	int __fastcall CreateCursor(bool GenHandle);
	void __fastcall FreeStatement(void);
	int __fastcall GetCursor(bool GenHandle);
	void __fastcall PrepareProc(void);
	void __fastcall SetParamsList(Db::TParams* Value);
	void __fastcall ReadParamData(Classes::TReader* Reader);
	void __fastcall WriteParamData(Classes::TWriter* Writer);
	void __fastcall ReadWaitCursor(Classes::TReader* Reader);
	
protected:
	void __fastcall SetWaitCursor(int val);
	int __fastcall GetWaitCursor(void);
	virtual void __fastcall PSExecute(void);
	virtual AnsiString __fastcall PSGetTableName();
	virtual Db::TParams* __fastcall PSGetParams(void);
	virtual void __fastcall PSSetCommandText(const AnsiString CommandText)/* overload */;
	virtual void __fastcall PSSetParams(Db::TParams* AParams);
	virtual int __fastcall OpenAdvantageFiles(void);
	virtual void __fastcall InternalClose(void);
	virtual int __fastcall GetLastAutoinc(void);
	virtual void __fastcall PrepareAdvantageProcedure(void);
	int __fastcall CreateHandle(void);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	void __fastcall Disconnect(void);
	Word __fastcall GetParamsCount(void);
	void __fastcall SetProcName(const AnsiString Value);
	void __fastcall SetPrepared(bool Value);
	void __fastcall SetPrepare(bool Value);
	void __fastcall AddFieldsToParams(char * pcBuffer, Db::TParamType eParamType);
	AnsiString __fastcall BuildACEParamsList();
	
public:
	__fastcall virtual TAdsStoredProc(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsStoredProc(void);
	void __fastcall CopyParams(Db::TParams* Value);
	bool __fastcall DescriptionsAvailable(void);
	void __fastcall ExecProc(void);
	Db::TParam* __fastcall ParamByName(const AnsiString Value);
	void __fastcall Prepare(void);
	void __fastcall GetResults(void);
	void __fastcall UnPrepare(void);
	void __fastcall LoadParamsFromDictionary(void);
	virtual void __fastcall InvalidateAceHandles(void);
	__property int Handle = {read=FHandle, nodefault};
	__property Word ParamCount = {read=GetParamsCount, nodefault};
	__property int StmtHandle = {read=FStmtHandle, nodefault};
	__property bool Prepared = {read=FPrepared, write=SetPrepare, nodefault};
	__property int WaitCursor = {read=GetWaitCursor, write=SetWaitCursor, nodefault};
	
__published:
	__property AnsiString StoredProcName = {read=FProcName, write=SetProcName};
	__property Db::TParams* Params = {read=FParams, write=SetParamsList, stored=false};
	__property TParamBindMode ParamBindMode = {read=FBindMode, write=FBindMode, default=0};
	__property AnsiString RefreshParams = {read=FRefreshParams, write=FRefreshParams, stored=false};
	
/* Hoisted overloads: */
	
protected:
	inline void __fastcall  PSSetCommandText(const WideString CommandText){ TDataSet::PSSetCommandText(CommandText); }
	
};


class DELPHICLASS TAdsQuery;
class PASCALIMPLEMENTATION TAdsQuery : public Adsfunc::TAdsExtendedDataSet 
{
	typedef Adsfunc::TAdsExtendedDataSet inherited;
	
private:
	Classes::TStrings* mSQL;
	bool mbPrepared;
	bool mbReadAllColumns;
	Db::TParams* moParams;
	bool mbRequestLive;
	bool mbConstrained;
	bool mbParamCheck;
	Db::TDataLink* moDataLink;
	int mhStmt;
	int mhConnection;
	int mlRowsAffected;
	char *mpucSQLBinary;
	int __fastcall GetRowsAffected(void);
	Db::TDataSource* __fastcall GetQueryDataSource(void);
	AnsiString __fastcall GetSqlText();
	void __fastcall SetQueryDataSource(Db::TDataSource* Value);
	void __fastcall SetQuery(Classes::TStrings* Value);
	void __fastcall SetParamsList(Db::TParams* Value);
	void __fastcall QueryChanged(System::TObject* Sender);
	void __fastcall SetPrepare(bool Value);
	void __fastcall SetReadAllColumns(bool Value);
	void __fastcall ReadBinaryData(Classes::TStream* Stream);
	void __fastcall RefreshParams(void);
	void __fastcall SetParamsFromCursor(void);
	void __fastcall WriteBinaryData(Classes::TStream* Stream);
	int __fastcall InternalExecute(void);
	void __fastcall InternalExecuteScript(bool bExecute);
	void __fastcall ValidateHandles(void);
	void __fastcall ReadWaitCursor(Classes::TReader* Reader);
	void __fastcall ReadParamData(Classes::TReader* Reader);
	void __fastcall WriteParamData(Classes::TWriter* Writer);
	
protected:
	void __fastcall SetWaitCursor(int val);
	int __fastcall GetWaitCursor(void);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual int __fastcall OpenAdvantageFiles(void);
	virtual void __fastcall InternalClose(void);
	Word __fastcall GetParamsCount(void);
	void __fastcall Disconnect(void);
	virtual void __fastcall SetDatabaseName(AnsiString strValue);
	__property Db::TDataLink* DataLink = {read=moDataLink};
	virtual unsigned __fastcall CalculateSequenceNumber(void);
	virtual int __fastcall GetLastAutoinc(void);
	virtual void __fastcall PSExecute(void);
	virtual Db::TIndexDef* __fastcall PSGetDefaultOrder(void);
	virtual Db::TParams* __fastcall PSGetParams(void);
	virtual AnsiString __fastcall PSGetTableName();
	virtual void __fastcall PSSetCommandText(const AnsiString CommandText)/* overload */;
	virtual void __fastcall PSSetParams(Db::TParams* AParams);
	
public:
	__fastcall virtual TAdsQuery(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsQuery(void);
	__property Word ParamCount = {read=GetParamsCount, nodefault};
	__property bool Prepared = {read=mbPrepared, write=SetPrepare, nodefault};
	__property int RowsAffected = {read=GetRowsAffected, nodefault};
	__property char * SQLBinary = {read=mpucSQLBinary, write=mpucSQLBinary};
	__property int StmtHandle = {read=mhStmt, nodefault};
	void __fastcall ExecSQL(void);
	void __fastcall ExecSQLScript(void);
	Db::TParam* __fastcall ParamByName(const AnsiString Value);
	void __fastcall Prepare(void);
	void __fastcall VerifySQL(void);
	virtual void __fastcall SetTableType(Adsdata::TAdsTableTypes eValue);
	void __fastcall InternalSetTableType(Adsdata::TAdsTableTypes eValue, bool bIgnoreNTXError);
	void __fastcall UnPrepare(void);
	virtual void __fastcall GetDetailLinkFields(Classes::TList* MasterFields, Classes::TList* DetailFields);
	void __fastcall AdsStmtEnableEncryption(const AnsiString strPassword);
	void __fastcall AdsStmtDisableEncryption(void);
	void __fastcall AdsStmtSetTablePassword(const AnsiString strTableName, const AnsiString strPassword);
	void __fastcall AdsStmtClearTablePasswords(void);
	void __fastcall AdsCloseSQLStatement(void);
	virtual void __fastcall InvalidateAceHandles(void);
	__property int LastAutoincVal = {read=GetLastAutoinc, nodefault};
	__property AnsiString Text = {read=GetSqlText};
	__property int WaitCursor = {read=GetWaitCursor, write=SetWaitCursor, default=0};
	
__published:
	__property AdsTableOptions ;
	__property bool ReadAllColumns = {read=mbReadAllColumns, write=SetReadAllColumns, default=0};
	__property bool Constrained = {read=mbConstrained, write=mbConstrained, default=0};
	__property Db::TDataSource* DataSource = {read=GetQueryDataSource, write=SetQueryDataSource};
	__property bool ParamCheck = {read=mbParamCheck, write=mbParamCheck, default=1};
	__property Db::TParams* Params = {read=moParams, write=SetParamsList, stored=false};
	__property bool RequestLive = {read=mbRequestLive, write=mbRequestLive, default=0};
	__property Classes::TStrings* SQL = {read=mSQL, write=SetQuery};
	__property Adsdata::TAdsTableTypes SourceTableType = {read=GetAdsTableType, write=SetTableType, default=2};
	__property Adscnnct::TAdsConnection* AdsConnection = {read=GetAdsConnection, write=SetAdsConnection};
	
private:
	TUpdateMode moUpdateMode;
	bool mbUniDirectional;
	bool mbLocal;
	bool __fastcall ConstraintsRaiseError(void);
	Classes::TComponent* __fastcall UpdateObjectRaiseError(void);
	
public:
	__property TUpdateMode UpdateMode = {read=moUpdateMode, write=moUpdateMode, default=0};
	__property bool UniDirectional = {read=mbUniDirectional, write=mbUniDirectional, default=0};
	__property bool Local = {read=mbLocal, nodefault};
	__property bool Constraints = {read=ConstraintsRaiseError, nodefault};
	__property Classes::TComponent* UpdateObject = {read=UpdateObjectRaiseError};
	
/* Hoisted overloads: */
	
protected:
	inline void __fastcall  PSSetCommandText(const WideString CommandText){ TDataSet::PSSetCommandText(CommandText); }
	
};


class DELPHICLASS TAdsTable;
class PASCALIMPLEMENTATION TAdsTable : public Adsfunc::TAdsExtendedTable 
{
	typedef Adsfunc::TAdsExtendedTable inherited;
	
private:
	TIndexCollationMismatchOptions meIndexCollationMismatch;
	AnsiString FstrEncryptionPassword;
	bool FStoreDefs;
	bool __fastcall GetExists(void);
	AnsiString __fastcall GetFileName();
	bool __fastcall FieldDefsStored(void);
	bool __fastcall IndexDefsStored(void);
	void __fastcall SetIndexCollationMismatchOption(TIndexCollationMismatchOptions eValue);
	
protected:
	virtual int __fastcall GetLastAutoinc(void);
	
public:
	virtual void __fastcall GetDetailLinkFields(Classes::TList* MasterFields, Classes::TList* DetailFields);
	__property bool Exists = {read=GetExists, nodefault};
	__property int LastAutoincVal = {read=GetLastAutoinc, nodefault};
	void __fastcall Restructure(const AnsiString strAddFields, const AnsiString strDeleteFields, const AnsiString strChangeFields);
	
protected:
	virtual int __fastcall OpenAdvantageFiles(void);
	virtual void __fastcall DefChanged(System::TObject* Sender);
	virtual Db::TIndexDef* __fastcall PSGetDefaultOrder(void);
	virtual AnsiString __fastcall PSGetKeyFields();
	virtual AnsiString __fastcall PSGetTableName();
	virtual Db::TIndexDefs* __fastcall PSGetIndexDefs(Db::TIndexOptions IndexTypes);
	virtual void __fastcall PSSetCommandText(const AnsiString CommandText)/* overload */;
	virtual void __fastcall PSSetParams(Db::TParams* AParams);
	
__published:
	__fastcall virtual TAdsTable(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsTable(void);
	__property Adscnnct::TAdsConnection* AdsConnection = {read=GetAdsConnection, write=SetAdsConnection};
	__property AdsTableOptions ;
	__property FieldDefs  = {stored=FieldDefsStored};
	__property IndexDefs  = {stored=IndexDefsStored};
	__property bool StoreDefs = {read=FStoreDefs, write=FStoreDefs, default=0};
	__property IndexFiles ;
	__property InfoExpression ;
	__property Exclusive  = {default=0};
	__property ReadOnly  = {default=0};
	__property TableName ;
	__property TableType  = {default=2};
	__property TIndexCollationMismatchOptions IndexCollationMismatch = {read=meIndexCollationMismatch, write=SetIndexCollationMismatchOption, default=0};
	__property AnsiString EncryptionPassword = {read=FstrEncryptionPassword, write=FstrEncryptionPassword};
	
/* Hoisted overloads: */
	
protected:
	inline void __fastcall  PSSetCommandText(const WideString CommandText){ TDataSet::PSSetCommandText(CommandText); }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Adstable */
using namespace Adstable;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adstable
