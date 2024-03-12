// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Aceunpub.pas' rev: 11.00

#ifndef AceunpubHPP
#define AceunpubHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Aceunpub
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
static const Word ODBC_DO_NOT_USE = 0x8000;
static const Word AXS_UNIQUE_INDEX = 0x4000;
static const Word AXS_ASCENDING = 0x2000;
static const Word AXS_DESCENDING = 0x1000;
static const Shortint ADS_DD_COLUMN_PERMISSION_READ = 0x1;
static const Shortint ADS_DD_COLUMN_PERMISSION_UPDATE = 0x2;
static const Shortint ADS_DD_COLUMN_PERMISSION_INSERT = 0x4;
static const Shortint ADS_FOXGENERAL = 0x33;
static const Shortint ADS_FOXPICTURE = 0x34;
static const Shortint ADS_SET_LARGE_BLOCK_READS = 0x1;
static const Shortint ADS_SET_BATCH_INSERTS = 0x2;
static const Shortint ADS_NORMAL_RA_CACHE_SIZE = 0xa;
static const Shortint ADS_AGGRESSIVE_RA_CACHE_SIZE = 0x64;
extern "C" unsigned __stdcall AdsGetSQLStmtParams(char * pucStatement);
extern "C" unsigned __stdcall AdsSqlPeekStatement(int hSQL, char * pucIsLive);
extern "C" unsigned __stdcall AdsGetIndexFlags(int hIndex, Ace::PUNSIGNED32 pulFlags);
extern "C" unsigned __stdcall AdsGetIndexOrderByHandle(int hIndex, Ace::PWord pusIndexOrder);
extern "C" unsigned __stdcall AdsGetNumSegments(int hTag, Ace::PWord pusSegments);
extern "C" unsigned __stdcall AdsGetSegmentFieldname(int hTag, Word usSegmentNum, char * pucFieldname, Ace::PWord pusFldnameLen);
extern "C" unsigned __stdcall AdsDeleteTable(int hTable);
extern "C" unsigned __stdcall AdsBuildKeyFromRecord(int hTag, char * pucRecBuffer, unsigned ulRecordLen, char * pucKey, Ace::PWord pusKeyLen);
extern "C" unsigned __stdcall AdsConvertJulianToString(double dJulian, char * pucJulian, Ace::PWord pusLen);
extern "C" unsigned __stdcall AdsConvertStringToJulian(char * pucJulian, Word usLen, Ace::PDOUBLE pdJulian);
extern "C" unsigned __stdcall AdsConvertMillisecondsToString(unsigned ulMSeconds, char * pucTime, Ace::PWord pusLen);
extern "C" unsigned __stdcall AdsConvertStringToMilliseconds(char * pucTime, Word usLen, Ace::PUNSIGNED32 pulMSeconds);
extern "C" unsigned __stdcall AdsSetFieldRaw(int hObj, char * pucFldName, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetFlushFlag(int hConnect, Word usFlushEveryUpdate);
extern "C" unsigned __stdcall AdsSetTimeStampRaw(int hObj, char * pucFldName, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsActivateAOF(int hTbl);
extern "C" unsigned __stdcall AdsDeactivateAOF(int hTbl);
extern "C" unsigned __stdcall AdsExpressionLongToShort(int hTbl, char * pucLongExpr, char * pucShortExpr, Ace::PWord pusLen);
extern "C" unsigned __stdcall AdsExpressionShortToLong(int hTbl, char * pucShortExpr, char * pucLongExpr, Ace::PWord pusLen);
extern "C" unsigned __stdcall AdsExpressionLongToShort90(int hTbl, char * pucLongExpr, char * pucShortExpr, Ace::PUNSIGNED32 pulLen);
extern "C" unsigned __stdcall AdsExpressionShortToLong90(int hTbl, char * pucShortExpr, char * pucLongExpr, Ace::PUNSIGNED32 pulLen);
extern "C" unsigned __stdcall AdsClearRecordBuffer(int hTbl, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsStepIndexKey(int hIndex, char * pucKey, Word usLen, short sDirection);
extern "C" unsigned __stdcall AdsGetIndexPageSize(int hIndex, Ace::PUNSIGNED32 pulPageSize);
extern "C" unsigned __stdcall AdsGetNullRecord(int hTbl, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetProperty(int hObj, unsigned ulOperation, unsigned ulValue);
extern "C" unsigned __stdcall AdsGetColumnPermissions(int hTbl, Word usFieldNum, char * pucPermissions);
extern "C" unsigned __stdcall AdsSetLastError(unsigned ulErrCode, char * pucDetails);
extern "C" unsigned __stdcall AdsGotoBOF(int hTbl);
extern "C" unsigned __stdcall AdsConvertDateToJulian(int hConnect, char * pucDate, Word usLen, Ace::PDOUBLE pdJulian);

}	/* namespace Aceunpub */
using namespace Aceunpub;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Aceunpub
