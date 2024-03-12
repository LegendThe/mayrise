// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsbatchmove.pas' rev: 11.00

#ifndef AdsbatchmoveHPP
#define AdsbatchmoveHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Adsdata.hpp>	// Pascal unit
#include <Adstable.hpp>	// Pascal unit
#include <Adsfunc.hpp>	// Pascal unit
#include <Adscnnct.hpp>	// Pascal unit
#include <Adsset.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsbatchmove
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TBatchMode { batAppend, batAppendUpdate, batDelete, batCopy, batUpdate };
#pragma option pop

class DELPHICLASS TAdsBatchMove;
class PASCALIMPLEMENTATION TAdsBatchMove : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Adstable::TAdsTable* FDestination;
	Adstable::TAdsTable* FSource;
	TBatchMode FMode;
	bool FAbortOnKeyViol;
	bool FAbortOnProblem;
	int FRecordCount;
	int FMovedCount;
	int FKeyViolCount;
	int FProblemCount;
	int FChangedCount;
	Classes::TStrings* FMappings;
	bool FUseMapping;
	AnsiString FKeyViolTableName;
	AnsiString FProblemTableName;
	AnsiString FChangedTableName;
	int FCommitCount;
	Classes::TStringList* slSourceFields;
	Classes::TStringList* slDestFields;
	Adstable::TAdsTable* tblProblem;
	Adstable::TAdsTable* tblKeyViol;
	Adstable::TAdsTable* tblChanged;
	Adscnnct::TAdsConnection* cnLog;
	bool __fastcall LocateRecord(void);
	bool __fastcall WriteRecord(Adstable::TAdsTable* tblSource, Adstable::TAdsTable* tblDest, int iType);
	bool __fastcall VerifyIndex(Adstable::TAdsTable* tblCheck);
	void __fastcall AppendRecords(void);
	void __fastcall AppendUpdate(void);
	void __fastcall CloseLogTables(void);
	void __fastcall CopyMappedTable(void);
	void __fastcall CreateTable(AnsiString strTableName);
	void __fastcall DeleteRecords(void);
	void __fastcall OpenLogTables(void);
	void __fastcall ParseMapping(int iType);
	void __fastcall SetMappings(Classes::TStrings* Value);
	void __fastcall UpdateRecords(void);
	
public:
	__fastcall virtual TAdsBatchMove(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsBatchMove(void);
	virtual void __fastcall Execute(void);
	__property int ChangedCount = {read=FChangedCount, nodefault};
	__property int KeyViolCount = {read=FKeyViolCount, nodefault};
	__property int MovedCount = {read=FMovedCount, nodefault};
	__property int ProblemCount = {read=FProblemCount, nodefault};
	
__published:
	__property bool AbortOnKeyViol = {read=FAbortOnKeyViol, write=FAbortOnKeyViol, default=1};
	__property bool AbortOnProblem = {read=FAbortOnProblem, write=FAbortOnProblem, default=1};
	__property int CommitCount = {read=FCommitCount, write=FCommitCount, default=0};
	__property AnsiString ChangedTableName = {read=FChangedTableName, write=FChangedTableName};
	__property Adstable::TAdsTable* Destination = {read=FDestination, write=FDestination};
	__property AnsiString KeyViolTableName = {read=FKeyViolTableName, write=FKeyViolTableName};
	__property Classes::TStrings* Mappings = {read=FMappings, write=SetMappings};
	__property TBatchMode Mode = {read=FMode, write=FMode, default=0};
	__property AnsiString ProblemTableName = {read=FProblemTableName, write=FProblemTableName};
	__property int RecordCount = {read=FRecordCount, write=FRecordCount, default=0};
	__property Adstable::TAdsTable* Source = {read=FSource, write=FSource};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint PARSE_POSITION = 0x1;
static const Shortint PARSE_NAMES = 0x2;
static const Shortint WRITE_APPEND = 0x1;
static const Shortint WRITE_UPDATE = 0x2;

}	/* namespace Adsbatchmove */
using namespace Adsbatchmove;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsbatchmove
