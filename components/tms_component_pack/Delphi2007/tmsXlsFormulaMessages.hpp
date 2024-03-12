// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsxlsformulamessages.pas' rev: 11.00

#ifndef TmsxlsformulamessagesHPP
#define TmsxlsformulamessagesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsxlsformulamessages
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TFmReturnType { fmValue, fmRef, fmArray };
#pragma option pop

#pragma pack(push,4)
struct TCellFunctionData
{
	
public:
	int Index;
	WideString Name;
	int MinArgCount;
	int MaxArgCount;
	bool Volatile;
	TFmReturnType ReturnType;
	WideString ParamType;
} ;
#pragma pack(pop)

typedef TCellFunctionData tmsXlsFormulaMessages__1[368];

//-- var, const, procedure ---------------------------------------------------
static const Shortint fmiErrNull = 0x0;
static const Shortint fmiErrDiv0 = 0x7;
static const Shortint fmiErrValue = 0xf;
static const Shortint fmiErrRef = 0x17;
static const Shortint fmiErrName = 0x1d;
static const Shortint fmiErrNum = 0x24;
static const Shortint fmiErrNA = 0x2a;
extern PACKAGE System::ResourceString _fmErrNull;
#define Tmsxlsformulamessages_fmErrNull System::LoadResourceString(&Tmsxlsformulamessages::_fmErrNull)
extern PACKAGE System::ResourceString _fmErrDiv0;
#define Tmsxlsformulamessages_fmErrDiv0 System::LoadResourceString(&Tmsxlsformulamessages::_fmErrDiv0)
extern PACKAGE System::ResourceString _fmErrValue;
#define Tmsxlsformulamessages_fmErrValue System::LoadResourceString(&Tmsxlsformulamessages::_fmErrValue)
extern PACKAGE System::ResourceString _fmErrRef;
#define Tmsxlsformulamessages_fmErrRef System::LoadResourceString(&Tmsxlsformulamessages::_fmErrRef)
extern PACKAGE System::ResourceString _fmErrName;
#define Tmsxlsformulamessages_fmErrName System::LoadResourceString(&Tmsxlsformulamessages::_fmErrName)
extern PACKAGE System::ResourceString _fmErrNum;
#define Tmsxlsformulamessages_fmErrNum System::LoadResourceString(&Tmsxlsformulamessages::_fmErrNum)
extern PACKAGE System::ResourceString _fmErrNA;
#define Tmsxlsformulamessages_fmErrNA System::LoadResourceString(&Tmsxlsformulamessages::_fmErrNA)
extern PACKAGE System::ResourceString _fmErrUnknown;
#define Tmsxlsformulamessages_fmErrUnknown System::LoadResourceString(&Tmsxlsformulamessages::_fmErrUnknown)
extern PACKAGE System::ResourceString _fmErrStart;
#define Tmsxlsformulamessages_fmErrStart System::LoadResourceString(&Tmsxlsformulamessages::_fmErrStart)
extern PACKAGE System::ResourceString _fmTrue;
#define Tmsxlsformulamessages_fmTrue System::LoadResourceString(&Tmsxlsformulamessages::_fmTrue)
extern PACKAGE System::ResourceString _fmFalse;
#define Tmsxlsformulamessages_fmFalse System::LoadResourceString(&Tmsxlsformulamessages::_fmFalse)
extern PACKAGE System::ResourceString _fmStartFormula;
#define Tmsxlsformulamessages_fmStartFormula System::LoadResourceString(&Tmsxlsformulamessages::_fmStartFormula)
extern PACKAGE System::ResourceString _fmFormulaDecimal;
#define Tmsxlsformulamessages_fmFormulaDecimal System::LoadResourceString(&Tmsxlsformulamessages::_fmFormulaDecimal)
extern PACKAGE System::ResourceString _fmFormulaThousands;
#define Tmsxlsformulamessages_fmFormulaThousands System::LoadResourceString(&Tmsxlsformulamessages::_fmFormulaThousands)
extern PACKAGE System::ResourceString _fmFunctionSep;
#define Tmsxlsformulamessages_fmFunctionSep System::LoadResourceString(&Tmsxlsformulamessages::_fmFunctionSep)
extern PACKAGE System::ResourceString _fmUnion;
#define Tmsxlsformulamessages_fmUnion System::LoadResourceString(&Tmsxlsformulamessages::_fmUnion)
extern PACKAGE System::ResourceString _fmIntersect;
#define Tmsxlsformulamessages_fmIntersect System::LoadResourceString(&Tmsxlsformulamessages::_fmIntersect)
extern PACKAGE System::ResourceString _fmSingleQuote;
#define Tmsxlsformulamessages_fmSingleQuote System::LoadResourceString(&Tmsxlsformulamessages::_fmSingleQuote)
extern PACKAGE System::ResourceString _fmOpenArray;
#define Tmsxlsformulamessages_fmOpenArray System::LoadResourceString(&Tmsxlsformulamessages::_fmOpenArray)
extern PACKAGE System::ResourceString _fmCloseArray;
#define Tmsxlsformulamessages_fmCloseArray System::LoadResourceString(&Tmsxlsformulamessages::_fmCloseArray)
extern PACKAGE System::ResourceString _fmOpenParen;
#define Tmsxlsformulamessages_fmOpenParen System::LoadResourceString(&Tmsxlsformulamessages::_fmOpenParen)
extern PACKAGE System::ResourceString _fmCloseParen;
#define Tmsxlsformulamessages_fmCloseParen System::LoadResourceString(&Tmsxlsformulamessages::_fmCloseParen)
extern PACKAGE System::ResourceString _fmArrayRowSep;
#define Tmsxlsformulamessages_fmArrayRowSep System::LoadResourceString(&Tmsxlsformulamessages::_fmArrayRowSep)
extern PACKAGE System::ResourceString _fmArrayColSep;
#define Tmsxlsformulamessages_fmArrayColSep System::LoadResourceString(&Tmsxlsformulamessages::_fmArrayColSep)
extern PACKAGE System::ResourceString _fmAbsoluteRef;
#define Tmsxlsformulamessages_fmAbsoluteRef System::LoadResourceString(&Tmsxlsformulamessages::_fmAbsoluteRef)
extern PACKAGE System::ResourceString _fmRangeSep;
#define Tmsxlsformulamessages_fmRangeSep System::LoadResourceString(&Tmsxlsformulamessages::_fmRangeSep)
extern PACKAGE System::ResourceString _fmExternalRef;
#define Tmsxlsformulamessages_fmExternalRef System::LoadResourceString(&Tmsxlsformulamessages::_fmExternalRef)
extern PACKAGE System::ResourceString _fmWorkbookOpen;
#define Tmsxlsformulamessages_fmWorkbookOpen System::LoadResourceString(&Tmsxlsformulamessages::_fmWorkbookOpen)
extern PACKAGE System::ResourceString _fmWorkbookClose;
#define Tmsxlsformulamessages_fmWorkbookClose System::LoadResourceString(&Tmsxlsformulamessages::_fmWorkbookClose)
extern PACKAGE System::ResourceString _fmTableText;
#define Tmsxlsformulamessages_fmTableText System::LoadResourceString(&Tmsxlsformulamessages::_fmTableText)
extern PACKAGE System::ResourceString _fmPlus;
#define Tmsxlsformulamessages_fmPlus System::LoadResourceString(&Tmsxlsformulamessages::_fmPlus)
extern PACKAGE System::ResourceString _fmMinus;
#define Tmsxlsformulamessages_fmMinus System::LoadResourceString(&Tmsxlsformulamessages::_fmMinus)
extern PACKAGE System::ResourceString _fmMul;
#define Tmsxlsformulamessages_fmMul System::LoadResourceString(&Tmsxlsformulamessages::_fmMul)
extern PACKAGE System::ResourceString _fmDiv;
#define Tmsxlsformulamessages_fmDiv System::LoadResourceString(&Tmsxlsformulamessages::_fmDiv)
extern PACKAGE System::ResourceString _fmPower;
#define Tmsxlsformulamessages_fmPower System::LoadResourceString(&Tmsxlsformulamessages::_fmPower)
extern PACKAGE System::ResourceString _fmPercent;
#define Tmsxlsformulamessages_fmPercent System::LoadResourceString(&Tmsxlsformulamessages::_fmPercent)
extern PACKAGE System::ResourceString _fmStr;
#define Tmsxlsformulamessages_fmStr System::LoadResourceString(&Tmsxlsformulamessages::_fmStr)
extern PACKAGE System::ResourceString _fmAnd;
#define Tmsxlsformulamessages_fmAnd System::LoadResourceString(&Tmsxlsformulamessages::_fmAnd)
extern PACKAGE System::ResourceString _fmLT;
#define Tmsxlsformulamessages_fmLT System::LoadResourceString(&Tmsxlsformulamessages::_fmLT)
extern PACKAGE System::ResourceString _fmLE;
#define Tmsxlsformulamessages_fmLE System::LoadResourceString(&Tmsxlsformulamessages::_fmLE)
extern PACKAGE System::ResourceString _fmEQ;
#define Tmsxlsformulamessages_fmEQ System::LoadResourceString(&Tmsxlsformulamessages::_fmEQ)
extern PACKAGE System::ResourceString _fmGE;
#define Tmsxlsformulamessages_fmGE System::LoadResourceString(&Tmsxlsformulamessages::_fmGE)
extern PACKAGE System::ResourceString _fmGT;
#define Tmsxlsformulamessages_fmGT System::LoadResourceString(&Tmsxlsformulamessages::_fmGT)
extern PACKAGE System::ResourceString _fmNE;
#define Tmsxlsformulamessages_fmNE System::LoadResourceString(&Tmsxlsformulamessages::_fmNE)
static const Shortint attr_bitFSpace = 0x0;
static const Shortint attr_bitFEnter = 0x1;
static const Shortint attr_bitFPreSpace = 0x2;
static const Shortint attr_bitFPreEnter = 0x3;
static const Shortint attr_bitFPostSpace = 0x4;
static const Shortint attr_bitFPostEnter = 0x5;
static const Shortint attr_bitFPreFmlaSpace = 0x6;
extern PACKAGE TCellFunctionData FuncNameArray[368];
static const Shortint ptgExp = 0x1;
static const Shortint ptgTbl = 0x2;
static const Shortint ptgAdd = 0x3;
static const Shortint ptgSub = 0x4;
static const Shortint ptgMul = 0x5;
static const Shortint ptgDiv = 0x6;
static const Shortint ptgPower = 0x7;
static const Shortint ptgConcat = 0x8;
static const Shortint ptgLT = 0x9;
static const Shortint ptgLE = 0xa;
static const Shortint ptgEQ = 0xb;
static const Shortint ptgGE = 0xc;
static const Shortint ptgGT = 0xd;
static const Shortint ptgNE = 0xe;
static const Shortint ptgIsect = 0xf;
static const Shortint ptgUnion = 0x10;
static const Shortint ptgRange = 0x11;
static const Shortint ptgUplus = 0x12;
static const Shortint ptgUminus = 0x13;
static const Shortint ptgPercent = 0x14;
static const Shortint ptgParen = 0x15;
static const Shortint ptgMissArg = 0x16;
static const Shortint ptgStr = 0x17;
static const Shortint ptgAttr = 0x19;
static const Shortint ptgSheet = 0x1a;
static const Shortint ptgEndSheet = 0x1b;
static const Shortint ptgErr = 0x1c;
static const Shortint ptgBool = 0x1d;
static const Shortint ptgInt = 0x1e;
static const Shortint ptgNum = 0x1f;
static const Shortint ptgArray = 0x20;
static const Shortint ptgFunc = 0x21;
static const Shortint ptgFuncVar = 0x22;
static const Shortint ptgName = 0x23;
static const Shortint ptgRef = 0x24;
static const Shortint ptgArea = 0x25;
static const Shortint ptgMemArea = 0x26;
static const Shortint ptgMemErr = 0x27;
static const Shortint ptgMemNoMem = 0x28;
static const Shortint ptgMemFunc = 0x29;
static const Shortint ptgRefErr = 0x2a;
static const Shortint ptgAreaErr = 0x2b;
static const Shortint ptgRefN = 0x2c;
static const Shortint ptgAreaN = 0x2d;
static const Shortint ptgMemAreaN = 0x2e;
static const Shortint ptgMemNoMemN = 0x2f;
static const Shortint ptgNameX = 0x39;
static const Shortint ptgRef3d = 0x3a;
static const Shortint ptgArea3d = 0x3b;
static const Shortint ptgRefErr3d = 0x3c;
static const Shortint ptgAreaErr3d = 0x3d;
extern PACKAGE AnsiString __fastcall FmFloatToStr(const Extended Value);
extern PACKAGE Extended __fastcall FmStrToFloat(const AnsiString Value);

}	/* namespace Tmsxlsformulamessages */
using namespace Tmsxlsformulamessages;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsxlsformulamessages
