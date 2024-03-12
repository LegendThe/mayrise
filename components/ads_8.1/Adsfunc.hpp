// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsfunc.pas' rev: 11.00

#ifndef AdsfuncHPP
#define AdsfuncHPP

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
#include <Adsdata.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Aceunpub.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsfunc
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdsIndexOption { optCOMPOUND, optUNIQUE, optDESCENDING, optCUSTOM, optUSERDEFINED };
#pragma option pop

typedef Set<TAdsIndexOption, optCOMPOUND, optUSERDEFINED>  TAdsIndexOptions;

#pragma option push -b-
enum TAdsExpressionTypes { etLOGICAL, etNUMERIC, etDATE, etSTRING, etRAW };
#pragma option pop

#pragma option push -b-
enum TAdsBinaryTypes { btBINARY, btIMAGE };
#pragma option pop

#pragma option push -b-
enum TAdsTrimOptions { optNONE, optLTRIM, optRTRIM, optTRIM };
#pragma option pop

#pragma option push -b-
enum TAdsFieldTypes { AdsfldLOGICAL, AdsfldNUMERIC, AdsfldDATE, AdsfldSTRING, AdsfldMEMO, AdsfldBINARY, AdsfldIMAGE, AdsfldVARCHAR, AdsfldCOMPACTDATE, AdsfldDOUBLE, AdsfldINTEGER, AdsfldSHORTINT, AdsfldTIME, AdsfldTIMESTAMP, AdsfldAUTOINC, AdsfldRAW, AdsfldCURDOUBLE, AdsfldMONEY, AdsfldRESERVED1, AdsfldCISTRING, AdsfldROWVERSION, AdsfldMODTIME };
#pragma option pop

#pragma option push -b-
enum TAdsMemoDataTypes { mdtMEMO, mdtBINARY, mdtIMAGE };
#pragma option pop

#pragma option push -b-
enum TAdsFilenameOptions { foBASENAME, foBASENAMEANDEXT, foFULLPATHNAME };
#pragma option pop

#pragma option push -b-
enum TAdsHandleTypes { htTABLE, htINDEX };
#pragma option pop

#pragma option push -b-
enum TAdsSeekTypes { stSOFT, stHARD };
#pragma option pop

#pragma option push -b-
enum TAdsScopeOptions { soTOP, soBOTTOM };
#pragma option pop

#pragma option push -b-
enum TAdsAOFOptimizeLevel { olFULL, olPART, olNONE };
#pragma option pop

#pragma option push -b-
enum TAdsAOFCustomizeOptions { coADD, coREMOVE, coTOGGLE };
#pragma option pop

class DELPHICLASS TAdsExtendedDataSet;
class PASCALIMPLEMENTATION TAdsExtendedDataSet : public Adsdata::TAdsDataSet 
{
	typedef Adsdata::TAdsDataSet inherited;
	
protected:
	Adsdata::TAdsTableTypes __fastcall GetAdsTableType(void);
	
public:
	void __fastcall AdsExtendResync(void);
	void __fastcall AdsCacheRecords(Word usNumRecords);
	bool __fastcall AdsCheckExistence(const AnsiString strFilename);
	void __fastcall AdsClearProgressCallback(void);
	void __fastcall AdsConvertTable(const AnsiString strFileName, Adsdata::TAdsTableTypes eTableType);
	void __fastcall AdsCopyTable(const AnsiString strFileName);
	void __fastcall AdsCopyTableContents(TAdsExtendedDataSet* poDestinationTable);
	void __fastcall AdsCopyTableStructure(const AnsiString strFileName);
	void __fastcall AdsCreateIndex(const AnsiString strFileName, const AnsiString strTagName, const AnsiString strExpression, const AnsiString strCondition, const AnsiString strWhile, TAdsIndexOptions setIndexOptions);
	void __fastcall AdsEnableEncryption(AnsiString strPassword);
	void __fastcall AdsDisableEncryption(void);
	bool __fastcall AdsIsRecordEncrypted(int ulRecNum);
	bool __fastcall AdsIsTableEncrypted(void);
	bool __fastcall AdsIsEncryptionEnabled(void);
	TAdsAOFOptimizeLevel __fastcall AdsGetAOFOptLevel(AnsiString &strFilter);
	int __fastcall AdsGetKeyCount(void);
	int __fastcall AdsGetKeyNum(void);
	double __fastcall AdsGetRelKeyPos(void);
	AnsiString __fastcall AdsGetVersion(int &ulMajor, int &ulMinor, Byte &ucLetter);
	bool __fastcall AdsInTransaction(void);
	bool __fastcall AdsIsRecordDeleted(int ulRecNum);
	bool __fastcall AdsIsServerLoaded(const AnsiString strServer);
	void __fastcall AdsRecallRecord(void);
	void __fastcall AdsRefreshAOF(void);
	void __fastcall AdsSetRelKeyPos(double dPos);
	void __fastcall AdsRegisterProgressCallBack(Adsdata::TAdsProgressCallback Value);
	void __fastcall AdsEncryptRecord(void);
	void __fastcall AdsDecryptRecord(void);
	void __fastcall AdsRegisterSQLAbortFunc(Adsdata::TAdsSQLAbortFunc Value);
	void __fastcall AdsClearSQLAbortFunc(void);
	void __fastcall AdsFlushFileBuffers(void);
	void __fastcall AdsRegisterCallbackFunction(Adsdata::TAdsCallbackFunction Value, int ulCallbackID);
	void __fastcall AdsClearCallbackFunction(void);
	void __fastcall AdsThreadExit(void);
public:
	#pragma option push -w-inl
	/* TAdsDataSet.Create */ inline __fastcall virtual TAdsExtendedDataSet(Classes::TComponent* AOwner) : Adsdata::TAdsDataSet(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdsDataSet.Destroy */ inline __fastcall virtual ~TAdsExtendedDataSet(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsExtendedTable;
class PASCALIMPLEMENTATION TAdsExtendedTable : public TAdsExtendedDataSet 
{
	typedef TAdsExtendedDataSet inherited;
	
public:
	void __fastcall AdsAddCustomKey(const AnsiString strTag);
	void __fastcall AdsAppendRecord(void);
	void __fastcall AdsBinaryToFile(const AnsiString strFieldName, const AnsiString strFileName);
	void __fastcall AdsClearAllScopes(void);
	void __fastcall AdsClearFilter(void);
	void __fastcall AdsClearScope(TAdsScopeOptions eScopeOption);
	void __fastcall AdsCloseIndex(const AnsiString strTag);
	void __fastcall AdsCloseAllIndexes(void);
	bool __fastcall AdsContinue(void);
	void __fastcall AdsCreateTable(const AnsiString strName, Adsdata::TAdsTableTypes eTableType, Adsdata::TAdsCharTypes eCharType, Word usMemoSize, AnsiString strFields);
	void __fastcall AdsDeleteCustomKey(const AnsiString strTag);
	void __fastcall AdsDeleteIndex(const AnsiString strTag);
	void __fastcall AdsDeleteRecord(void);
	bool __fastcall AdsEvalLogicalExpr(const AnsiString strExpression);
	double __fastcall AdsEvalNumericExpr(const AnsiString strExpression);
	AnsiString __fastcall AdsEvalStringExpr(const AnsiString strExpression);
	TAdsExpressionTypes __fastcall AdsEvalTestExpr(const AnsiString strExpression);
	AnsiString __fastcall AdsExtractKey();
	void __fastcall AdsFileToBinary(const AnsiString strFieldName, TAdsBinaryTypes eBinaryType, const AnsiString strFileName);
	Word __fastcall AdsGetAllIndexes(int * ahIndexes, const int ahIndexes_Size);
	Word __fastcall AdsGetAllLocks(int * aulLocks, const int aulLocks_Size);
	void __fastcall AdsGetBinary(const AnsiString strFieldName, int ulOffSet, char * pucBuf, int &ulBufLen);
	int __fastcall AdsGetBinaryLength(const AnsiString strFieldName);
	int __fastcall AdsGetBookMark(void);
	AnsiString __fastcall AdsGetDate(const AnsiString strFieldName);
	double __fastcall AdsGetDouble(const AnsiString strFieldName);
	AnsiString __fastcall AdsGetErrorString(int ulErrorCode);
	AnsiString __fastcall AdsGetField(const AnsiString strFieldName, TAdsTrimOptions enumTrimOptions);
	Word __fastcall AdsGetFieldDecimals(const AnsiString strFieldName);
	int __fastcall AdsGetFieldLength(const AnsiString strFieldName);
	AnsiString __fastcall AdsGetFieldName(Word usFieldNum);
	Word __fastcall AdsGetFieldNum(const AnsiString strFieldName);
	int __fastcall AdsGetFieldOffset(const AnsiString strFieldName);
	TAdsFieldTypes __fastcall AdsGetFieldType(const AnsiString strFieldName);
	AnsiString __fastcall AdsGetFilter();
	int __fastcall AdsGetHandleLong(void);
	TAdsHandleTypes __fastcall AdsGetHandleType(int hObj);
	AnsiString __fastcall AdsGetIndexCondition();
	AnsiString __fastcall AdsGetIndexExpr();
	int __fastcall AdsGetIndexHandle(const AnsiString strIndexOrder);
	int __fastcall AdsGetIndexHandleByOrder(Word usOrderNum);
	AnsiString __fastcall AdsGetIndexName(int hIndexHandle);
	AnsiString __fastcall AdsGetIndexFileName(TAdsFilenameOptions eOption);
	int __fastcall AdsGetJulian(const AnsiString strFieldName);
	Word __fastcall AdsGetKeyLength(void);
	TAdsExpressionTypes __fastcall AdsGetKeyType(void);
	int __fastcall AdsGetLastError(AnsiString &strError);
	bool __fastcall AdsGetLogical(const AnsiString strFieldName);
	int __fastcall AdsGetLong(const AnsiString strFieldName);
	TAdsMemoDataTypes __fastcall AdsGetMemoDataType(const AnsiString strFieldName);
	int __fastcall AdsGetMemoLength(const AnsiString strFieldName);
	int __fastcall AdsGetMilliseconds(const AnsiString strFieldName);
	Word __fastcall AdsGetNumFields(void);
	Word __fastcall AdsGetNumIndexes(void);
	Word __fastcall AdsGetNumLocks(void);
	short __fastcall AdsGetShort(const AnsiString strFieldName);
	AnsiString __fastcall AdsGetString(const AnsiString strFieldName, TAdsTrimOptions enumTrimOptions);
	Word __fastcall AdsGetTableMemoSize(void);
	AnsiString __fastcall AdsGetTableFileName(TAdsFilenameOptions eOption);
	AnsiString __fastcall AdsGetTime(const AnsiString strFieldName);
	void __fastcall AdsGotoBookMark(int hBookmark);
	void __fastcall AdsGotoBottom(void);
	void __fastcall AdsGotoRecord(int ulRecNum);
	void __fastcall AdsGotoTop(void);
	void __fastcall AdsImageToClipboard(const AnsiString strFldName);
	bool __fastcall AdsIsEmpty(const AnsiString strFieldName);
	bool __fastcall AdsIsExprValid(const AnsiString strExpression);
	bool __fastcall AdsIsIndexCompound(void);
	bool __fastcall AdsIsIndexCustom(void);
	bool __fastcall AdsIsIndexDescending(void);
	bool __fastcall AdsIsIndexUnique(void);
	bool __fastcall AdsIsRecordLocked(int ulRecNum);
	bool __fastcall AdsIsTableLocked(void);
	bool __fastcall AdsLocate(const AnsiString strExpression, bool bForward);
	bool __fastcall AdsLockRecord(int ulRecNum);
	bool __fastcall AdsLockTable(void);
	bool __fastcall AdsLookupKey(const AnsiString strTag, const AnsiString strKey);
	void __fastcall AdsOpenIndex(const AnsiString strIndexName);
	void __fastcall AdsPackTable(void);
	int __fastcall AdsGetRecordNum(void);
	int __fastcall AdsGetRecordCount(void);
	int __fastcall AdsGetRecordLength(void);
	AnsiString __fastcall AdsGetScope(TAdsScopeOptions eScopeOption);
	void __fastcall AdsReindex(void);
	void __fastcall AdsRefreshRecord(void);
	bool __fastcall AdsSeek(const AnsiString strKey, TAdsSeekTypes eSeekType);
	bool __fastcall AdsSeekLast(const AnsiString strKey);
	void __fastcall AdsSetBinary(const AnsiString strFieldName, TAdsBinaryTypes eBinaryType, int ulTotalLength, int ulOffset, char * pucBuf, int ulBufLength);
	void __fastcall AdsSetDate(const AnsiString strFieldName, const AnsiString strDate);
	void __fastcall AdsSetDouble(const AnsiString strFieldName, double dValue);
	void __fastcall AdsSetEmpty(const AnsiString strFieldName);
	void __fastcall AdsSetField(const AnsiString strFieldName, const AnsiString strBuffer);
	void __fastcall AdsSetFilter(const AnsiString strFilter);
	void __fastcall AdsSetHandleLong(int ulHandle);
	void __fastcall AdsSetIndexByOrder(Word usOrderNum);
	void __fastcall AdsSetJulian(const AnsiString strFieldName, int lDate);
	void __fastcall AdsSetLogical(const AnsiString strFieldName, bool bValue);
	void __fastcall AdsSetLong(const AnsiString strFieldName, int lValue);
	void __fastcall AdsSetMilliseconds(const AnsiString strFieldName, int lTime);
	void __fastcall AdsSetScope(TAdsScopeOptions eScopeOption, const AnsiString strScope);
	void __fastcall AdsSetShort(const AnsiString strFieldName, short sValue);
	void __fastcall AdsSetString(const AnsiString strFieldName, const AnsiString strValue);
	void __fastcall AdsSetTime(const AnsiString strFieldName, const AnsiString strTime);
	void __fastcall AdsShowError(AnsiString strCaption);
	void __fastcall AdsSkip(int lNumRecs);
	bool __fastcall AdsUnlockRecord(int ulRecNum);
	void __fastcall AdsUnlockTable(void);
	void __fastcall AdsWriteRecord(void);
	void __fastcall AdsZapTable(void);
	void __fastcall AdsSetAOF(const AnsiString strFilter);
	void __fastcall AdsClearAOF(void);
	AnsiString __fastcall AdsGetAOF();
	TAdsAOFOptimizeLevel __fastcall AdsEvalAOF(const AnsiString strFilter);
	void __fastcall AdsCustomizeAOF(int ulNumRecs, Ace::PUNSIGNED32 pulRecords, TAdsAOFCustomizeOptions eOption);
	bool __fastcall AdsIsRecordInAOF(int ulRecordNum);
	void __fastcall AdsEncryptTable(void);
	void __fastcall AdsDecryptTable(void);
public:
	#pragma option push -w-inl
	/* TAdsDataSet.Create */ inline __fastcall virtual TAdsExtendedTable(Classes::TComponent* AOwner) : TAdsExtendedDataSet(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdsDataSet.Destroy */ inline __fastcall virtual ~TAdsExtendedTable(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Byte MAX_DATA_LEN = 0xff;

}	/* namespace Adsfunc */
using namespace Adsfunc;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsfunc
