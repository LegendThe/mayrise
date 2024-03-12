// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsdata.pas' rev: 11.00

#ifndef AdsdataHPP
#define AdsdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Fmtbcd.hpp>	// Pascal unit
#include <Strutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbcommon.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Aceunpub.hpp>	// Pascal unit
#include <Adscnnct.hpp>	// Pascal unit
#include <Adsver.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsdata
{
//-- type declarations -------------------------------------------------------
typedef char *PAdsBuffer;

typedef char AdsBufferItem;

#pragma option push -b-
enum TAdsTableTypes { ttAdsCDX, ttAdsNTX, ttAdsADT, ttAdsDefault };
#pragma option pop

#pragma option push -b-
enum TAdsIndexTypes { ndxNone, ndxIndexName, ndxIndexField, ndxDefault };
#pragma option pop

#pragma option push -b-
enum TAdsLockTypes { Proprietary, Compatible };
#pragma option pop

#pragma option push -b-
enum TAdsCharTypes { ANSI, OEM };
#pragma option pop

#pragma option push -b-
enum TAdsRespectFilters { IGNORE_WHEN_COUNTING, RESPECT_WHEN_COUNTING };
#pragma option pop

#pragma option push -b-
enum TAdsRespectScopes { IGNORE_SCOPES_WHEN_COUNTING, RESPECT_SCOPES_WHEN_COUNTING };
#pragma option pop

typedef Word TAdsIndexPageSizes;

#pragma option push -b-
enum TAdsRecordCacheTypes { rcNone, rcStandard, rcAggressive };
#pragma option pop

#pragma option push -b-
enum TAdsAOFTypes { atDynamic, atKeySet, atFixed };
#pragma option pop

#pragma option push -b-
enum TAdsRecordLockingModes { lmPessimistic, lmOptimistic };
#pragma option pop

#pragma option push -b-
enum TAdsCreateTableOption { ctFreeTable, ctDictionaryTable };
#pragma option pop

typedef Set<TAdsCreateTableOption, ctFreeTable, ctDictionaryTable>  TAdsCreateTableOptions;

typedef int ADSHANDLE;

#pragma option push -b-
enum TAdsSequencedLevel { slStandard, slExact };
#pragma option pop

typedef unsigned __stdcall (*TAdsCallbackFunction)(Word usPercent, unsigned ulCallbackID);

typedef unsigned __stdcall (*TAdsProgressCallback)(Word usPercent);

typedef unsigned __stdcall (*TAdsSQLAbortFunc)(void);

typedef void *TBlobData;

typedef void *TBlobDataArray[691];

typedef TBlobDataArray *PBlobDataArray;

#pragma option push -b-
enum TKeyIndex { kiLookup, kiRangeStart, kiRangeEnd, kiCurRangeStart, kiCurRangeEnd, kiSave };
#pragma option pop

typedef Word TKeyFieldLenArray[6969];

typedef TKeyFieldLenArray *PKeyFieldLenArray;

struct TAdsKeyBuffer;
typedef TAdsKeyBuffer *PAdsKeyBuffer;

#pragma pack(push,1)
struct adsdata__1
{
	
} ;
#pragma pack(pop)

#pragma pack(push,1)
struct adsdata__2
{
	
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TAdsKeyBuffer
{
	
public:
	bool Modified;
	bool Exclusive;
	int FieldCount;
	unsigned BufferSize;
	adsdata__1 Data;
	adsdata__2 mausFieldLens;
} ;
#pragma pack(pop)

struct TRecInfo;
typedef TRecInfo *PRecInfo;

#pragma pack(push,4)
struct TRecInfo
{
	
public:
	int LogicalRecNumber;
	Db::TUpdateStatus UpdateStatus;
	Db::TBookmarkFlag BookmarkFlag;
} ;
#pragma pack(pop)

typedef int ADSHandleArray[2];

typedef ADSHandleArray *PADSHandleArray;

class DELPHICLASS EADSDatabaseError;
class DELPHICLASS TAdsDataSet;
class PASCALIMPLEMENTATION EADSDatabaseError : public Db::EDatabaseError 
{
	typedef Db::EDatabaseError inherited;
	
private:
	unsigned ulACEError;
	unsigned ulSQLErrorCode;
	AnsiString strDataSetInstanceName;
	AnsiString strDataSetInstanceOwner;
	AnsiString strDatabaseName;
	AnsiString strDatabasePath;
	AnsiString strTableName;
	AnsiString strColumnName;
	void __fastcall GetNativeSQLError(AnsiString strError);
	
public:
	__fastcall EADSDatabaseError(TAdsDataSet* oDataSet, unsigned ulErrCode, const AnsiString strMsg);
	__fastcall virtual ~EADSDatabaseError(void);
	__property unsigned ACEErrorCode = {read=ulACEError, nodefault};
	__property unsigned SQLErrorCode = {read=ulSQLErrorCode, nodefault};
	__property AnsiString DataSetInstanceName = {read=strDataSetInstanceName};
	__property AnsiString DataSetInstanceOwner = {read=strDataSetInstanceOwner};
	__property AnsiString DatabaseName = {read=strDatabaseName};
	__property AnsiString DatabasePath = {read=strDatabasePath};
	__property AnsiString TableName = {read=strTableName};
	__property AnsiString ColumnName = {read=strColumnName};
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EADSDatabaseError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Db::EDatabaseError(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EADSDatabaseError(int Ident)/* overload */ : Db::EDatabaseError(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EADSDatabaseError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Db::EDatabaseError(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EADSDatabaseError(const AnsiString Msg, int AHelpContext) : Db::EDatabaseError(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EADSDatabaseError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Db::EDatabaseError(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EADSDatabaseError(int Ident, int AHelpContext)/* overload */ : Db::EDatabaseError(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EADSDatabaseError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Db::EDatabaseError(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsIndexFiles;
class PASCALIMPLEMENTATION TAdsIndexFiles : public Classes::TStringList 
{
	typedef Classes::TStringList inherited;
	
private:
	TAdsDataSet* mpoOwner;
	
public:
	__fastcall TAdsIndexFiles(TAdsDataSet* AOwner);
	virtual int __fastcall Add(const AnsiString strValue);
	virtual void __fastcall Clear(void);
	virtual void __fastcall Delete(int Index);
	virtual void __fastcall Insert(int Index, const AnsiString S);
public:
	#pragma option push -w-inl
	/* TStringList.Destroy */ inline __fastcall virtual ~TAdsIndexFiles(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsTableOptions;
class PASCALIMPLEMENTATION TAdsTableOptions : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdsLockTypes meAdsLockType;
	TAdsCharTypes meAdsCharType;
	TAdsRespectFilters meAdsRespectFilters;
	TAdsRespectScopes meAdsRespectScopes;
	bool mbAdsRightsCheck;
	TAdsDataSet* mpoAdsTable;
	bool mbAdsOptimizedFilters;
	bool mbRefreshCount;
	bool mbAOFResolveImmediate;
	TAdsIndexPageSizes mulIndexPageSize;
	TAdsRecordCacheTypes meAdsRecordCache;
	TAdsAOFTypes meAdsAOFType;
	bool mbAutoKeyFieldCount;
	bool mbCalcFieldsBeforeFilter;
	TAdsRecordLockingModes meRecordLockingMode;
	bool mbPreserveSpaces;
	bool mbNumericsAsFloats;
	void __fastcall SetAdsCharType(TAdsCharTypes eValue);
	void __fastcall SetAdsLockType(TAdsLockTypes eValue);
	void __fastcall SetAdsRightsCheck(bool bValue);
	void __fastcall SetAdsOptimizedFilters(bool bValue);
	void __fastcall SetAdsRecordCache(TAdsRecordCacheTypes eValue);
	
public:
	void __fastcall SetTableInstance(TAdsDataSet* poAdsTable);
	
__published:
	__property TAdsLockTypes AdsLockType = {read=meAdsLockType, write=SetAdsLockType, default=0};
	__property TAdsCharTypes AdsCharType = {read=meAdsCharType, write=SetAdsCharType, default=0};
	__property TAdsRespectFilters AdsFilterOptions = {read=meAdsRespectFilters, write=meAdsRespectFilters, default=0};
	__property bool AdsFreshRecordCount = {read=mbRefreshCount, write=mbRefreshCount, default=0};
	__property TAdsRespectScopes AdsScopeOptions = {read=meAdsRespectScopes, write=meAdsRespectScopes, default=0};
	__property bool AdsAOFResolveImmediate = {read=mbAOFResolveImmediate, write=mbAOFResolveImmediate, default=0};
	__property bool AdsRightsCheck = {read=mbAdsRightsCheck, write=SetAdsRightsCheck, default=1};
	__property bool AdsOptimizedFilters = {read=mbAdsOptimizedFilters, write=SetAdsOptimizedFilters, default=1};
	__property TAdsIndexPageSizes AdsIndexPageSize = {read=mulIndexPageSize, write=mulIndexPageSize, default=0};
	__property TAdsRecordCacheTypes AdsRecordCache = {read=meAdsRecordCache, write=SetAdsRecordCache, default=1};
	__property TAdsAOFTypes AdsAOFType = {read=meAdsAOFType, write=meAdsAOFType, default=0};
	__property bool AdsAutoKeyFieldCount = {read=mbAutoKeyFieldCount, write=mbAutoKeyFieldCount, default=0};
	__property bool AdsCalcFieldsBeforeFilter = {read=mbCalcFieldsBeforeFilter, write=mbCalcFieldsBeforeFilter, default=0};
	__property TAdsRecordLockingModes AdsRecordLockingMode = {read=meRecordLockingMode, write=meRecordLockingMode, default=0};
	__property bool AdsPreserveSpaces = {read=mbPreserveSpaces, write=mbPreserveSpaces, default=0};
	__property bool AdsNumericsAsFloats = {read=mbNumericsAsFloats, write=mbNumericsAsFloats, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdsTableOptions(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TAdsTableOptions(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TACEFieldDef;
class PASCALIMPLEMENTATION TACEFieldDef : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FName;
	Word FNumber;
	unsigned FOffset;
	unsigned FLength;
	Word FType;
	Word FDecimals;
	bool FModified;
	Byte FPermissions;
	
public:
	__property AnsiString FieldName = {read=FName, write=FName};
	__property Word FieldNumber = {read=FNumber, write=FNumber, nodefault};
	__property unsigned Offset = {read=FOffset, write=FOffset, nodefault};
	__property unsigned Length = {read=FLength, write=FLength, nodefault};
	__property Word FieldType = {read=FType, write=FType, nodefault};
	__property Word Decimals = {read=FDecimals, write=FDecimals, nodefault};
	__property Byte Permissions = {read=FPermissions, write=FPermissions, nodefault};
	__property bool Modified = {read=FModified, write=FModified, nodefault};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TACEFieldDef(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TACEFieldDef(void) { }
	#pragma option pop
	
};


class DELPHICLASS TACEFieldDefs;
class PASCALIMPLEMENTATION TACEFieldDefs : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TACEFieldDef* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TPersistent* FOwner;
	HIDESBASE TACEFieldDef* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TACEFieldDef* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TACEFieldDefs(Classes::TPersistent* Owner);
	HIDESBASE TACEFieldDef* __fastcall Add(void);
	int __fastcall IndexOf(const AnsiString FieldName);
	__property TACEFieldDef* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TACEFieldDefs(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsStringField;
class PASCALIMPLEMENTATION TAdsStringField : public Db::TStringField 
{
	typedef Db::TStringField inherited;
	
private:
	bool FCaseInsensitive;
	
public:
	__fastcall virtual TAdsStringField(Classes::TComponent* AOwner);
	
__published:
	__property bool CaseInsensitive = {read=FCaseInsensitive, default=0};
public:
	#pragma option push -w-inl
	/* TField.Destroy */ inline __fastcall virtual ~TAdsStringField(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsBCDField;
class PASCALIMPLEMENTATION TAdsBCDField : public Db::TBCDField 
{
	typedef Db::TBCDField inherited;
	
public:
	__fastcall virtual TAdsBCDField(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TField.Destroy */ inline __fastcall virtual ~TAdsBCDField(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TAdsDataSet : public Db::TDataSet 
{
	typedef Db::TDataSet inherited;
	
private:
	TACEFieldDefs* FACEFieldDefs;
	char *FOldRecordBuffer;
	int mlActiveHandle;
	TAdsIndexTypes meActiveIndexType;
	Word musBlobCacheOfs;
	Word musBookmarkOfs;
	bool mbCanModify;
	AnsiString mstrDatabaseName;
	AnsiString mstrExprStruct;
	char *mpFilterBuffer;
	int mlHandle;
	AnsiString mstrIndexFieldNames;
	Db::TIndexDefs* mpoIndexDefs;
	AnsiString mstrIndexName;
	AnsiString mstrDefaultIndex;
	TAdsKeyBuffer *mapKeyBuffers[6];
	TAdsKeyBuffer *mpstKeyBuffer;
	AnsiString mstrMasterField;
	Db::TMasterDataLink* mpoMasterLink;
	Word musRecBufSize;
	Word musRecInfoOfs;
	Word musRecordSize;
	unsigned mulTableOptions;
	bool mbScoped;
	AnsiString mstrAliasPath;
	AnsiString mstrScopeEnd;
	AnsiString mstrScopeStart;
	AnsiString mstrStruct;
	AnsiString strBinaryFieldName;
	int mlBinaryFldLen;
	bool mbIsSequenced;
	bool mbAppendEOF;
	bool mbAppendBOF;
	bool mbDisplayedPathNoExistsWarning;
	unsigned mulSavedCRC;
	Db::TUpdateRecordEvent FOnUpdateRecord;
	void __fastcall UpdateRange(void);
	AnsiString __fastcall GetVersionInfo();
	void __fastcall WriteVersionInfo(AnsiString value);
	int __fastcall GetSegmentFieldNum(int iSegment);
	
protected:
	TAdsTableOptions* mpoAdsTableOptions;
	bool mbExclusive;
	bool mbReadOnly;
	AnsiString mstrTableName;
	TAdsTableTypes meTableType;
	Word musOpenTableType;
	TAdsIndexFiles* mpoIndexFiles;
	bool FbStoreActive;
	TAdsSequencedLevel meSeqLevel;
	Word musAceTableType;
	Word __fastcall BuildAOFOptions(void);
	virtual void __fastcall ActivateFilters(void);
	virtual void __fastcall ActivateScope(void);
	void __fastcall AddFieldDesc(int hTableHandle, short sFieldNum);
	int __fastcall ADSGetBinaryFieldLen(void);
	void __fastcall ADSSetBinaryFieldLen(int lValue);
	bool __fastcall IsFieldBlank(char * pcData, unsigned ulDataLen, Word usADSDataType);
	bool __fastcall IsBlobBlank(char * pRecBuf, Db::TBlobField* Field, char * pcData, Word usADSDataType);
	bool __fastcall ADSGetDataField(Db::TField* Field, char * pRecBuf, void * pBuffer, bool &bIsBlank);
	void __fastcall ADSPutField(Word usFieldNo, Db::TFieldType eDelphiFieldType, char * pRecBuf, void * pBuffer);
	void __fastcall AllocKeyBuffers(void);
	virtual char * __fastcall AllocRecordBuffer(void);
	void __fastcall BuildRawKey(TKeyIndex poKeyIndex, bool bPartial, char * pcKeyBuffer, Ace::PWord pusLen);
	virtual unsigned __fastcall CalculateSequenceNumber(void);
	bool __fastcall CheckEmptyResultSet(void);
	void __fastcall CheckSetKeyMode(void);
	void __fastcall CloseTableAndIndexes(int hHandle);
	virtual void __fastcall DataEvent(Db::TDataEvent Event, int Info);
	virtual void __fastcall DeactivateFilters(void);
	virtual void __fastcall DeactivateScope(void);
	bool __fastcall FieldsAreIndexed(const AnsiString strKeyFields, int &hIndexField);
	virtual bool __fastcall FindRecord(bool Restart, bool GoForward);
	void __fastcall FreeKeyBuffers(void);
	virtual void __fastcall FreeRecordBuffer(char * &Buffer);
	AnsiString __fastcall GetActiveIndexFieldNames();
	bool __fastcall GetActiveRecBuf(char * &pRecBuf);
	Adscnnct::TAdsConnection* __fastcall GetAdsConnection(void);
	virtual void __fastcall GetBookmarkData(char * Buffer, void * Data);
	virtual Db::TBookmarkFlag __fastcall GetBookmarkFlag(char * Buffer);
	Db::TGetResult __fastcall GetCurTranslatedRecord(char * pucRec, Ace::PUNSIGNED32 pulLen, Db::TGetMode GetMode);
	void __fastcall ReadTranslatedRecord(char * pucRec, Ace::PUNSIGNED32 pulLen, bool bCalcFields);
	Word __fastcall GetCurrentKeySize(void);
	virtual bool __fastcall GetCanModify(void);
	virtual Db::TDataSource* __fastcall GetDataSource(void);
	Db::TField* __fastcall GetIndexField(int Index);
	PAdsKeyBuffer __fastcall GetKeyBuffer(TKeyIndex poKeyIndex);
	bool __fastcall GetKeyExclusive(void);
	short __fastcall GetKeyFieldCount(void);
	virtual int __fastcall GetLastAutoinc(void) = 0 ;
	AnsiString __fastcall GetMasterFields();
	virtual int __fastcall GetRecNo(void);
	virtual void __fastcall SetRecNo(int value);
	virtual Db::TGetResult __fastcall GetRecord(char * Buffer, Db::TGetMode GetMode, bool DoCheck);
	virtual int __fastcall GetRecordCount(void);
	virtual Word __fastcall GetRecordSize(void);
	bool __fastcall GetRefreshProperty(void);
	virtual Variant __fastcall GetStateFieldValue(Db::TDataSetState State, Db::TField* Field);
	void __fastcall InitBufferPointers(void);
	PAdsKeyBuffer __fastcall InitKeyBuffer(PAdsKeyBuffer pBuffer);
	virtual void __fastcall InitRecord(char * Buffer);
	virtual void __fastcall InternalAddRecord(void * Buffer, bool Append);
	virtual void __fastcall InternalCancel(void);
	virtual void __fastcall InternalClose(void);
	virtual void __fastcall InternalDelete(void);
	virtual void __fastcall InternalEdit(void);
	virtual void __fastcall InternalFirst(void);
	virtual void __fastcall InternalGotoBookmark(void * Bookmark);
	virtual void __fastcall InternalHandleException(void);
	virtual void __fastcall InternalInsert(void);
	virtual void __fastcall InternalInitFieldDefs(void);
	virtual void __fastcall InternalInitRecord(char * Buffer);
	virtual void __fastcall InternalLast(void);
	virtual void __fastcall InternalOpen(void);
	virtual void __fastcall InternalPost(void);
	virtual void __fastcall InternalSetToRecord(char * Buffer);
	bool __fastcall IsAceScopeSet(void);
	bool __fastcall IsAceIndexConditional(void);
	bool __fastcall IsAceIndexUniqueDBF(void);
	bool __fastcall IsAceIndexCustom(void);
	bool __fastcall IndexIsLocateFriendly(int hIndex);
	virtual bool __fastcall IsCursorOpen(void);
	bool __fastcall LocateRecord(const AnsiString KeyFields, const Variant &KeyValues, Db::TLocateOptions Options);
	void __fastcall MasterChanged(System::TObject* poSender);
	void __fastcall MasterDisabled(System::TObject* poSender);
	virtual int __fastcall OpenAdvantageFiles(void) = 0 ;
	Word __fastcall FindMatchingParen(char * pcStr, Word usCurPos, Word usStrLen);
	virtual TMetaClass* __fastcall GetFieldClass(Db::TFieldType FieldType);
	void __fastcall ParseFilterExpression(AnsiString &strAdsFilter, Word &usExact);
	void __fastcall PostKeyBuffer(bool bCommit);
	bool __fastcall RecordFilter(void * RecBuf);
	bool __fastcall ResetCursorRange(void);
	void __fastcall SetAdsConnection(Adscnnct::TAdsConnection* poValue);
	virtual void __fastcall SetBookmarkData(char * Buffer, void * Data);
	virtual void __fastcall SetBookmarkFlag(char * Buffer, Db::TBookmarkFlag Value);
	bool __fastcall SetCursorRange(void);
	virtual void __fastcall SetDatabaseName(AnsiString strValue);
	void __fastcall SetDataSource(Db::TDataSource* poValue);
	void __fastcall SetExclusive(bool bValue);
	virtual void __fastcall SetFieldData(Db::TField* Field, void * Buffer)/* overload */;
	virtual void __fastcall SetFiltered(bool Value);
	virtual void __fastcall SetFilterText(const AnsiString Value);
	void __fastcall SetIndexDefs(Db::TIndexDefs* Value);
	void __fastcall SetIndexField(int Index, Db::TField* Value);
	void __fastcall SetIndexFieldNames(const AnsiString strValue);
	void __fastcall SetIndexName(const AnsiString strValue);
	void __fastcall SetKeyBuffer(TKeyIndex poKeyIndex, bool bClear);
	void __fastcall SetKeyExclusive(bool bValue);
	void __fastcall SetKeyFieldCount(short sValue);
	void __fastcall SetKeyFields(TKeyIndex poKeyIndex, System::TVarRec const * aValues, const int aValues_Size);
	void __fastcall SetLinkRanges(Classes::TList* MasterFields);
	void __fastcall SetMasterFields(const AnsiString strValue);
	void __fastcall SetReadOnly(bool bValue);
	void __fastcall SetScoped(bool bValue);
	void __fastcall SetScopeStart(AnsiString strValue);
	void __fastcall SetScopeEnd(AnsiString strValue);
	void __fastcall SetTableName(AnsiString strValue);
	virtual void __fastcall SetTableType(TAdsTableTypes eValue);
	AnsiString __fastcall BuildFilterString(Classes::TList* poFields, bool bExactCompare, bool bCaseInsensitive);
	void __fastcall SwitchToIndex(void);
	virtual void __fastcall UpdateIndexDefs(void);
	virtual void __fastcall DoAfterInsert(void);
	virtual void __fastcall DoBeforeCancel(void);
	virtual void __fastcall DoOnNewRecord(void);
	virtual void __fastcall DoAfterOpen(void);
	virtual bool __fastcall PSIsSQLSupported(void);
	virtual void __fastcall PSReset(void);
	virtual bool __fastcall PSUpdateRecord(Db::TUpdateKind UpdateKind, Db::TDataSet* Delta);
	virtual void __fastcall PSEndTransaction(bool Commit);
	virtual int __fastcall PSExecuteStatement(const AnsiString ASQL, Db::TParams* AParams, void * ResultSet = (void *)(0x0))/* overload */;
	virtual AnsiString __fastcall PSGetQuoteChar();
	virtual bool __fastcall PSInTransaction(void);
	virtual bool __fastcall PSIsSQLBased(void);
	virtual void __fastcall PSStartTransaction(void);
	void __fastcall SetHandle(int Value);
	void __fastcall FreeOldRecordBuffer(void);
	bool __fastcall EvalClientFilter(bool bForward);
	void __fastcall EvalClientFilteredSeek(char * pcKey, Word usKeyLen, Word usKeyType, Ace::PUNSIGNED16 pusFound);
	
public:
	Adscnnct::TAdsConnection* mpoAdsConnection;
	__property TACEFieldDefs* ACEFieldDefs = {read=FACEFieldDefs};
	__property int AdsBinaryFldLen = {read=ADSGetBinaryFieldLen, write=ADSSetBinaryFieldLen, nodefault};
	__property Adscnnct::TAdsConnection* AdsConnection = {read=GetAdsConnection};
	__property int ActiveHandle = {read=mlActiveHandle, write=mlActiveHandle, nodefault};
	__property int Handle = {read=mlHandle, nodefault};
	__property Db::TField* IndexFields[int Index] = {read=GetIndexField, write=SetIndexField};
	__property bool KeyExclusive = {read=GetKeyExclusive, write=SetKeyExclusive, nodefault};
	__property short KeyFieldCount = {read=GetKeyFieldCount, write=SetKeyFieldCount, nodefault};
	__property Word KeySize = {read=GetCurrentKeySize, nodefault};
	__property Db::TMasterDataLink* MasterLink = {read=mpoMasterLink};
	__property Word RecordSize = {read=GetRecordSize, nodefault};
	__property int RecNo = {read=GetRecNo, write=SetRecNo, nodefault};
	__property int RecordCount = {read=GetRecordCount, nodefault};
	__property AnsiString ScopeStart = {read=mstrScopeStart, write=SetScopeStart};
	__property TAdsTableTypes TableType = {read=meTableType, write=SetTableType, default=2};
	__fastcall virtual TAdsDataSet(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsDataSet(void);
	int __fastcall GetAceConnectionHandle(void);
	int __fastcall GetAceTableHandle(void);
	int __fastcall GetAceIndexHandle(void);
	int __fastcall GetAceOrderHandle(void);
	int __fastcall AdsActiveRecord(void);
	void __fastcall ADSSetFieldToBinary(AnsiString strFieldName);
	void __fastcall AddIndex(const AnsiString strName, AnsiString strFields, Db::TIndexOptions poOptions);
	void __fastcall AddIndexEx(AnsiString strFileName, AnsiString strIndexName, AnsiString strFields, Db::TIndexOptions poOptions);
	void __fastcall ApplyRange(void);
	virtual bool __fastcall BookmarkValid(void * Bookmark);
	virtual void __fastcall Cancel(void);
	void __fastcall CancelRange(void);
	virtual int __fastcall CompareBookmarks(void * Bookmark1, void * Bookmark2);
	void __fastcall CloseIndexFile(const AnsiString strIndexName);
	void __fastcall CreateTable(void)/* overload */;
	void __fastcall CreateTable(TAdsCreateTableOptions eOptions)/* overload */;
	void __fastcall InternalCreateTable(TAdsCreateTableOptions eOptions);
	virtual Classes::TStream* __fastcall CreateBlobStream(Db::TField* Field, Db::TBlobStreamMode Mode);
	void __fastcall DeleteIndex(const AnsiString strName);
	void __fastcall DeleteTable(void);
	void __fastcall EditKey(void);
	void __fastcall EmptyTable(void);
	void __fastcall EditRangeEnd(void);
	void __fastcall EditRangeStart(void);
	bool __fastcall FindKey(System::TVarRec const * KeyValues, const int KeyValues_Size);
	void __fastcall FindNearest(System::TVarRec const * KeyValues, const int KeyValues_Size);
	void __fastcall GotoCurrent(TAdsDataSet* poTable);
	virtual bool __fastcall GetCurrentRecord(char * Buffer);
	AnsiString __fastcall GetDatabasePath();
	AnsiString __fastcall GetNativeDatabasePath();
	virtual bool __fastcall GetFieldData(Db::TField* Field, void * Buffer)/* overload */;
	void __fastcall GetFiles(Classes::TStringList* &poCurrList);
	void __fastcall GetIndexNames(Classes::TStrings* poList);
	void __fastcall GetFTSIndexNames(Classes::TStrings* poList);
	bool __fastcall GotoKey(void);
	void __fastcall GotoNearest(void);
	Word __fastcall IndexFieldCount(void);
	virtual bool __fastcall IsSequenced(void);
	virtual bool __fastcall Locate(const AnsiString KeyFields, const Variant &KeyValues, Db::TLocateOptions Options);
	void __fastcall LockTable(void);
	virtual Variant __fastcall Lookup(const AnsiString KeyFields, const Variant &KeyValues, const AnsiString ResultFields);
	void __fastcall OpenIndexFile(const AnsiString strIndexName);
	void __fastcall PackTable(void);
	virtual void __fastcall Post(void);
	void __fastcall SetKey(void);
	void __fastcall SetRange(System::TVarRec const * aStartValues, const int aStartValues_Size, System::TVarRec const * aEndValues, const int aEndValues_Size);
	void __fastcall SetRangeEnd(void);
	void __fastcall SetRangeStart(void);
	void __fastcall UnlockTable(void);
	void __fastcall UpdateDefaultIndex(void);
	virtual void __fastcall InvalidateAceHandles(void);
	bool __fastcall LocateLocally(AnsiString strFilter);
	
protected:
	__property TAdsTableOptions* AdsTableOptions = {read=mpoAdsTableOptions, write=mpoAdsTableOptions};
	__property bool Exclusive = {read=mbExclusive, write=SetExclusive, default=0};
	__property bool ReadOnly = {read=mbReadOnly, write=SetReadOnly, default=0};
	__property AnsiString TableName = {read=mstrTableName, write=SetTableName};
	__property AnsiString InfoExpression = {read=mstrExprStruct, write=mstrExprStruct};
	__property TAdsIndexFiles* IndexFiles = {read=mpoIndexFiles, write=mpoIndexFiles};
	
__published:
	__property Active  = {stored=FbStoreActive, default=0};
	__property AutoCalcFields  = {default=1};
	__property AnsiString DatabaseName = {read=mstrDatabaseName, write=SetDatabaseName};
	__property Filter ;
	__property Filtered  = {default=0};
	__property AnsiString InfoStructure = {read=mstrStruct, write=mstrStruct};
	__property Db::TIndexDefs* IndexDefs = {read=mpoIndexDefs, write=SetIndexDefs, stored=false};
	__property AnsiString IndexFieldNames = {read=mstrIndexFieldNames, write=SetIndexFieldNames};
	__property AnsiString IndexName = {read=mstrIndexName, write=SetIndexName};
	__property AnsiString MasterFields = {read=GetMasterFields, write=SetMasterFields};
	__property Db::TDataSource* MasterSource = {read=GetDataSource, write=SetDataSource};
	__property bool Sequenced = {read=mbIsSequenced, write=mbIsSequenced, default=0};
	__property TAdsSequencedLevel SequencedLevel = {read=meSeqLevel, write=meSeqLevel, default=0};
	__property bool Scoped = {read=mbScoped, write=SetScoped, default=0};
	__property AnsiString ScopeBegin = {read=mstrScopeStart, write=SetScopeStart};
	__property AnsiString ScopeEnd = {read=mstrScopeEnd, write=SetScopeEnd};
	__property bool StoreActive = {read=FbStoreActive, write=FbStoreActive, default=0};
	__property AnsiString Version = {read=GetVersionInfo, write=WriteVersionInfo, stored=false};
	__property BeforeOpen ;
	__property AfterOpen ;
	__property BeforeClose ;
	__property AfterClose ;
	__property BeforeInsert ;
	__property AfterInsert ;
	__property BeforeEdit ;
	__property AfterEdit ;
	__property BeforePost ;
	__property AfterPost ;
	__property BeforeCancel ;
	__property AfterCancel ;
	__property BeforeDelete ;
	__property AfterDelete ;
	__property BeforeScroll ;
	__property AfterScroll ;
	__property BeforeRefresh ;
	__property AfterRefresh ;
	__property OnCalcFields ;
	__property OnNewRecord ;
	__property OnFilterRecord ;
	__property OnEditError ;
	__property OnPostError ;
	__property OnDeleteError ;
	__property Db::TUpdateRecordEvent OnUpdateRecord = {read=FOnUpdateRecord, write=FOnUpdateRecord};
	
protected:
	virtual void __fastcall ClearCalcFields(char * Buffer);
	virtual void __fastcall CloseBlob(Db::TField* Field);
	virtual void __fastcall CloseCursor(void);
	virtual bool __fastcall GetIsIndexField(Db::TField* Field);
	virtual void __fastcall InitFieldDefs(void);
	virtual void __fastcall InternalRefresh(void);
	virtual void __fastcall OpenCursor(bool InfoQuery);
	virtual void __fastcall SetOnFilterRecord(const Db::TFilterRecordEvent Value);
	int __fastcall GetTableLevel(void);
	Variant __fastcall GetDBDataBase();
	Variant __fastcall GetDBHandle();
	Variant __fastcall GetDBLocale();
	Variant __fastcall GetDBSession();
	Variant __fastcall GetProvider();
	AnsiString __fastcall GetSessionName();
	bool __fastcall GetCacheBlobs(void);
	bool __fastcall GetCachedUpdates(void);
	bool __fastcall GetExpIndex(void);
	Variant __fastcall GetLocale();
	Variant __fastcall GetUpdateObject();
	bool __fastcall GetUpdatesPending(void);
	Variant __fastcall GetUpdateRecordSet();
	void __fastcall SetTableLevel(int Value);
	void __fastcall SetSessionName(AnsiString Value);
	void __fastcall SetCacheBlobs(bool Value);
	void __fastcall SetCachedUpdates(bool Value);
	void __fastcall SetUpdateObject(const Variant &Value);
	void __fastcall SetUpdateRecordSet(const Variant &Value);
	
public:
	Classes::TNotifyEvent onAfterCreateFields;
	__property AnsiString DefaultIndex = {read=mstrDefaultIndex};
	__property int TableLevel = {read=GetTableLevel, write=SetTableLevel, nodefault};
	__property Variant Database = {read=GetDBDataBase};
	__property Variant DBHandle = {read=GetDBHandle};
	__property Variant DBLocale = {read=GetDBLocale};
	__property Variant DBSession = {read=GetDBSession};
	__property Variant Provider = {read=GetProvider};
	__property AnsiString SessionName = {read=GetSessionName, write=SetSessionName};
	__property bool CacheBlobs = {read=GetCacheBlobs, write=SetCacheBlobs, default=1};
	__property bool CachedUpdates = {read=GetCachedUpdates, write=SetCachedUpdates, default=0};
	__property bool ExpIndex = {read=GetExpIndex, nodefault};
	__property Variant Locale = {read=GetLocale};
	__property Variant UpdateObject = {read=GetUpdateObject, write=SetUpdateObject};
	__property bool UpdatesPending = {read=GetUpdatesPending, nodefault};
	__property Variant UpdateRecordTypes = {read=GetUpdateRecordSet, write=SetUpdateRecordSet};
	virtual int __fastcall BatchMove(const Variant &ASource, const Variant &AMode);
	virtual void __fastcall RenameTable(const AnsiString NewTableName);
	bool __fastcall CheckOpen(const Variant &Status);
	void __fastcall ApplyUpdates(void);
	void __fastcall CancelUpdates(void);
	void __fastcall CommitUpdates(void);
	bool __fastcall ConstraintsDisabled(void);
	void __fastcall DisableConstraints(void);
	void __fastcall EnableConstraints(void);
	void __fastcall FetchAll(void);
	void __fastcall FlushBuffers(void);
	void __fastcall GetIndexInfo(void);
	void __fastcall RevertRecord(void);
	virtual Db::TUpdateStatus __fastcall UpdateStatus(void);
	
/* Hoisted overloads: */
	
protected:
	inline void __fastcall  SetFieldData(Db::TField* Field, void * Buffer, bool NativeFormat){ TDataSet::SetFieldData(Field, Buffer, NativeFormat); }
	inline int __fastcall  PSExecuteStatement(const WideString ASQL, Db::TParams* AParams, void * ResultSet = (void *)(0x0)){ return TDataSet::PSExecuteStatement(ASQL, AParams, ResultSet); }
	
public:
	inline bool __fastcall  GetFieldData(int FieldNo, void * Buffer){ return TDataSet::GetFieldData(FieldNo, Buffer); }
	inline bool __fastcall  GetFieldData(Db::TField* Field, void * Buffer, bool NativeFormat){ return TDataSet::GetFieldData(Field, Buffer, NativeFormat); }
	
};


class DELPHICLASS TAdsBlobCache;
class PASCALIMPLEMENTATION TAdsBlobCache : public Classes::TMemoryStream 
{
	typedef Classes::TMemoryStream inherited;
	
private:
	int mhAdsTable;
	unsigned mulRecNum;
	bool mbBlobModified;
	
public:
	unsigned mulFieldNo;
	__fastcall TAdsBlobCache(void);
	__fastcall virtual ~TAdsBlobCache(void);
	void __fastcall RefreshCache(int hAdsTable, unsigned ulFieldNo, unsigned ulRecNo, bool bForceReread);
	virtual int __fastcall Read(void *Buffer, int Count);
	virtual int __fastcall Write(const void *Buffer, int Count);
	void __fastcall Truncate(void);
	void __fastcall ClearCache(void);
	void __fastcall Flush(void);
	bool __fastcall IsCacheModified(void);
};


class DELPHICLASS TAdsBlobStream;
class PASCALIMPLEMENTATION TAdsBlobStream : public Classes::TStream 
{
	typedef Classes::TStream inherited;
	
private:
	Db::TBlobField* moField;
	Db::TBlobStreamMode moMode;
	TAdsBlobCache* moAdsBlobCach;
	bool mbModified;
	int __fastcall GetBlobSize(void);
	
public:
	__fastcall TAdsBlobStream(Db::TBlobField* Field, Db::TBlobStreamMode Mode);
	__fastcall virtual ~TAdsBlobStream(void);
	virtual int __fastcall Read(void *Buffer, int Count);
	virtual int __fastcall Write(const void *Buffer, int Count);
	virtual int __fastcall Seek(int Offset, Word Origin)/* overload */;
	void __fastcall Truncate(void);
	__property int Size = {read=GetBlobSize, nodefault};
	
/* Hoisted overloads: */
	
public:
	inline __int64 __fastcall  Seek(const __int64 Offset, Classes::TSeekOrigin Origin){ return TStream::Seek(Offset, Origin); }
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint ARRAY_NDX = 0x32;
static const Shortint INVALID_ACE_HANDLE = -1;
static const int JULIAN_TO_DELPHI_DATE = 0x1a4451;
static const int DELPHI_DATE_TO_DATETIME = 0xa96c8;
static const int DELPHI_DATETIME_TO_JULIAN = 0x24d9ab;
static const int MSEC_PER_DAY = 0x5265c00;
extern PACKAGE Db::TFieldType AdsDataTypeMap[24];
extern PACKAGE void __fastcall (*HandleExceptionProc)(System::TObject* sender);
extern PACKAGE bool __fastcall IsSlash(char x);
extern PACKAGE bool __fastcall SlashInStr(AnsiString str);
extern PACKAGE Classes::TThreadList* __fastcall GetAdsDataSetList(void);
extern PACKAGE Classes::TList* __fastcall LockAdsDataSetList(void);
extern PACKAGE void __fastcall UnlockAdsDataSetList(void);
extern PACKAGE void __fastcall WriteCallTrace(AnsiString strWrite);
extern PACKAGE void __fastcall ACECheck(TAdsDataSet* oDataSet, unsigned ulErrorCode);
extern PACKAGE AnsiString __fastcall GetFieldFromList(int iIndex, AnsiString strFieldList);
extern PACKAGE void __fastcall AddUpperExpr(int hTable, AnsiString &strFields);
extern PACKAGE AnsiString __fastcall GetAliasPathAndFileName();
extern PACKAGE bool __fastcall GetAliasInfo(AnsiString strAlias, AnsiString &strPath, TAdsTableTypes &eTableType);

}	/* namespace Adsdata */
using namespace Adsdata;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsdata
