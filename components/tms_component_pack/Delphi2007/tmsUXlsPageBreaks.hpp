// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlspagebreaks.pas' rev: 11.00

#ifndef TmsuxlspagebreaksHPP
#define TmsuxlspagebreaksHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Tmsuxlsbaserecords.hpp>	// Pascal unit
#include <Tmsuxlsbaselist.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit
#include <Tmsuole2impl.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlspagebreaks
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct THBreakData
{
	
public:
	Word Row;
	Word Col1;
	Word Col2;
} ;
#pragma pack(pop)

#pragma pack(push,1)
struct TVBreakData
{
	
public:
	Word Col;
	Word Row1;
	Word Row2;
} ;
#pragma pack(pop)

class DELPHICLASS THPageBreakRecord;
class PASCALIMPLEMENTATION THPageBreakRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	Word __fastcall Count(void);
	THBreakData __fastcall BreakData(const int index);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual THPageBreakRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~THPageBreakRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TVPageBreakRecord;
class PASCALIMPLEMENTATION TVPageBreakRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	Word __fastcall Count(void);
	TVBreakData __fastcall BreakData(const int index);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TVPageBreakRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TVPageBreakRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS THPageBreak;
class PASCALIMPLEMENTATION THPageBreak : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	THBreakData BreakData;
	__fastcall THPageBreak(const THBreakData &aBreakData);
	THPageBreak* __fastcall CopyTo(void);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~THPageBreak(void) { }
	#pragma option pop
	
};


class DELPHICLASS TVPageBreak;
class PASCALIMPLEMENTATION TVPageBreak : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	TVBreakData BreakData;
	__fastcall TVPageBreak(const TVBreakData &aBreakData);
	TVPageBreak* __fastcall CopyTo(void);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TVPageBreak(void) { }
	#pragma option pop
	
};


class DELPHICLASS THPageBreakList;
class PASCALIMPLEMENTATION THPageBreakList : public Tmsuxlsbaselist::TBaseList 
{
	typedef Tmsuxlsbaselist::TBaseList inherited;
	
public:
	THPageBreak* operator[](int index) { return Items[index]; }
	
private:
	void __fastcall SaveToStreamExt(const Tmsuole2impl::TOle2File* DataStream, const int FirstRecord, const int RecordCount);
	void __fastcall CalcIncludedRangeRecords(const Tmsuflxmessages::TXlsCellRange &CellRange, /* out */ int &FirstRecord, /* out */ int &RecordCount);
	__int64 __fastcall TotalSizeExt(const int RecordCount);
	THPageBreak* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const THPageBreak* Value);
	
public:
	__property THPageBreak* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(THPageBreak* aRecord);
	HIDESBASE void __fastcall Insert(int Index, THPageBreak* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort(void);
	void __fastcall AddRecord(const THPageBreakRecord* aRecord);
	void __fastcall AddBreak(const int aRow);
	void __fastcall DeleteBreak(const int aRow);
	void __fastcall CopyFrom(const THPageBreakList* aBreakList);
	void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
	void __fastcall SaveRangeToStream(const Tmsuole2impl::TOle2File* DataStream, const Tmsuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize(void);
	__int64 __fastcall TotalRangeSize(const Tmsuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertRows(const int DestRow, const int aCount);
	void __fastcall DeleteRows(const int DestRow, const int aCount);
	bool __fastcall HasPageBreak(const int Row);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall THPageBreakList(void)/* overload */ : Tmsuxlsbaselist::TBaseList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~THPageBreakList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TVPageBreakList;
class PASCALIMPLEMENTATION TVPageBreakList : public Tmsuxlsbaselist::TBaseList 
{
	typedef Tmsuxlsbaselist::TBaseList inherited;
	
public:
	TVPageBreak* operator[](int index) { return Items[index]; }
	
private:
	void __fastcall SaveToStreamExt(const Tmsuole2impl::TOle2File* DataStream, const int FirstRecord, const int RecordCount);
	void __fastcall CalcIncludedRangeRecords(const Tmsuflxmessages::TXlsCellRange &CellRange, /* out */ int &FirstRecord, /* out */ int &RecordCount);
	__int64 __fastcall TotalSizeExt(const int RecordCount);
	TVPageBreak* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const TVPageBreak* Value);
	
public:
	__property TVPageBreak* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TVPageBreak* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TVPageBreak* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort(void);
	void __fastcall AddRecord(const TVPageBreakRecord* aRecord);
	void __fastcall AddBreak(const int aCol);
	void __fastcall DeleteBreak(const int aCol);
	void __fastcall CopyFrom(const TVPageBreakList* aBreakList);
	void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
	void __fastcall SaveRangeToStream(const Tmsuole2impl::TOle2File* DataStream, const Tmsuflxmessages::TXlsCellRange &CellRange);
	__int64 __fastcall TotalSize(void);
	__int64 __fastcall TotalRangeSize(const Tmsuflxmessages::TXlsCellRange &CellRange);
	void __fastcall InsertCols(const int DestCol, const int aCount);
	void __fastcall DeleteCols(const int DestCol, const int aCount);
	bool __fastcall HasPageBreak(const int Col);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TVPageBreakList(void)/* overload */ : Tmsuxlsbaselist::TBaseList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TVPageBreakList(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Tmsuxlspagebreaks */
using namespace Tmsuxlspagebreaks;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlspagebreaks