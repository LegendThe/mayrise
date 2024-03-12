// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlsbaserecordlists.pas' rev: 11.00

#ifndef TmsuxlsbaserecordlistsHPP
#define TmsuxlsbaserecordlistsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Tmsuxlsbaserecords.hpp>	// Pascal unit
#include <Tmsuxlsotherrecords.hpp>	// Pascal unit
#include <Tmsuxlsformula.hpp>	// Pascal unit
#include <Tmsuxlsbaselist.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit
#include <Tmsuole2impl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlsbaserecordlists
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TBaseRecordList;
class PASCALIMPLEMENTATION TBaseRecordList : public Tmsuxlsbaselist::TBaseList 
{
	typedef Tmsuxlsbaselist::TBaseList inherited;
	
public:
	HIDESBASE int __fastcall Add(Tmsuxlsbaserecords::TBaseRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsbaserecords::TBaseRecord* aRecord);
	
private:
	__int64 FTotalSize;
	
protected:
	virtual void __fastcall Notify(void * Ptr, Classes::TListNotification Action);
	virtual __int64 __fastcall GetTotalSize(void);
	
public:
	void __fastcall AdaptSize(int Delta);
	void __fastcall CopyFrom(const TBaseRecordList* aBaseRecordList);
	__property __int64 TotalSize = {read=GetTotalSize};
	virtual void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TBaseRecordList(void)/* overload */ : Tmsuxlsbaselist::TBaseList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TBaseRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TBaseRowColRecordList;
class PASCALIMPLEMENTATION TBaseRowColRecordList : public TBaseRecordList 
{
	typedef TBaseRecordList inherited;
	
public:
	Tmsuxlsbaserecords::TBaseRowColRecord* operator[](int index) { return Items[index]; }
	
private:
	Tmsuxlsbaserecords::TBaseRowColRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const Tmsuxlsbaserecords::TBaseRowColRecord* Value);
	
public:
	__property Tmsuxlsbaserecords::TBaseRowColRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Tmsuxlsbaserecords::TBaseRowColRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsbaserecords::TBaseRowColRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort(void);
	void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall SaveRangeToStream(const Tmsuole2impl::TOle2File* DataStream, const Tmsuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalRangeSize(const Tmsuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TBaseRowColRecordList(void)/* overload */ : TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TBaseRowColRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TNameRecordList;
class PASCALIMPLEMENTATION TNameRecordList : public TBaseRecordList 
{
	typedef TBaseRecordList inherited;
	
public:
	Tmsuxlsformula::TNameRecord* operator[](int index) { return Items[index]; }
	
private:
	Tmsuxlsformula::TNameRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const Tmsuxlsformula::TNameRecord* Value);
	
public:
	__property Tmsuxlsformula::TNameRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Tmsuxlsformula::TNameRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsformula::TNameRecord* aRecord);
	void __fastcall ArrangeInsertRowsAndCols(const int InsRow, const int aRowCount, const int InsCol, const int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall InsertSheets(const int CopyFrom, const int BeforeSheet, int SheetCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteSheets(const int SheetIndex, const int SheetCount);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TNameRecordList(void)/* overload */ : TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TNameRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TBoundSheetRecordList;
class PASCALIMPLEMENTATION TBoundSheetRecordList : public TBaseRecordList 
{
	typedef TBaseRecordList inherited;
	
public:
	Tmsuxlsotherrecords::TBoundSheetRecord* operator[](int index) { return Items[index]; }
	
private:
	WideString __fastcall GetSheetName(int index);
	void __fastcall SetSheetName(int index, const WideString Value);
	Tmsuflxmessages::TXlsSheetVisible __fastcall GetSheetVisible(int index);
	void __fastcall SetSheetVisible(int index, const Tmsuflxmessages::TXlsSheetVisible Value);
	Tmsuxlsotherrecords::TBoundSheetRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const Tmsuxlsotherrecords::TBoundSheetRecord* Value);
	
public:
	__property Tmsuxlsotherrecords::TBoundSheetRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Tmsuxlsotherrecords::TBoundSheetRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsotherrecords::TBoundSheetRecord* aRecord);
	__property WideString SheetName[int index] = {read=GetSheetName, write=SetSheetName};
	__property Tmsuflxmessages::TXlsSheetVisible SheetVisible[int index] = {read=GetSheetVisible, write=SetSheetVisible};
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TBoundSheetRecordList(void)/* overload */ : TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TBoundSheetRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCellRecordList;
class PASCALIMPLEMENTATION TCellRecordList : public TBaseRowColRecordList 
{
	typedef TBaseRowColRecordList inherited;
	
public:
	Tmsuxlsbaserecords::TCellRecord* operator[](int index) { return Items[index]; }
	
private:
	HIDESBASE Tmsuxlsbaserecords::TCellRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, const Tmsuxlsbaserecords::TCellRecord* Value);
	
public:
	__property Tmsuxlsbaserecords::TCellRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Tmsuxlsbaserecords::TCellRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsbaserecords::TCellRecord* aRecord);
	
private:
	void __fastcall GoNext(int &i, const int aCount, Tmsuxlsbaserecords::TCellRecord* &it, Tmsuxlsbaserecords::TCellRecord* &NextRec);
	__int64 __fastcall SaveAndCalcRange(const Tmsuole2impl::TOle2File* DataStream, const Tmsuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	
public:
	virtual void __fastcall SaveRangeToStream(const Tmsuole2impl::TOle2File* DataStream, const Tmsuflxmessages::TXlsCellRange &CellRange);
	virtual __int64 __fastcall TotalRangeSize(const Tmsuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	virtual void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
	virtual __int64 __fastcall GetTotalSize(void);
	__int64 __fastcall FixTotalSize(const bool NeedsRecalc);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TCellRecordList(void)/* overload */ : TBaseRowColRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TCellRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TRowRecordList;
class PASCALIMPLEMENTATION TRowRecordList : public TBaseRowColRecordList 
{
	typedef TBaseRowColRecordList inherited;
	
public:
	Tmsuxlsbaserecords::TRowRecord* operator[](int index) { return Items[index]; }
	
private:
	HIDESBASE Tmsuxlsbaserecords::TRowRecord* __fastcall GetItems(int index);
	HIDESBASE void __fastcall SetItems(int index, const Tmsuxlsbaserecords::TRowRecord* Value);
	
public:
	int __fastcall AddRecord(Tmsuxlsbaserecords::TRowRecord* aRecord);
	__property Tmsuxlsbaserecords::TRowRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	bool __fastcall HasRow(const int Index);
	void __fastcall AddRow(const Word Index);
	void __fastcall InsertAndCopyRows(const int FirstRow, const int LastRow, const int DestRow, const int aCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall DeleteRows(const Word aRow, const Word aRowCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	int __fastcall RowHeight(const int aRow);
	void __fastcall SetRowHeight(const int aRow, const Word Height);
	void __fastcall AutoRowHeight(const int aRow, const bool Value);
	bool __fastcall IsAutoRowHeight(const int aRow);
	virtual __int64 __fastcall TotalRangeSize(const Tmsuflxmessages::TXlsCellRange &CellRange, const bool NeedsRecalc);
	void __fastcall CalcGuts(const Tmsuxlsotherrecords::TGutsRecord* Guts);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TRowRecordList(void)/* overload */ : TBaseRowColRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TRowRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TShrFmlaRecordList;
class PASCALIMPLEMENTATION TShrFmlaRecordList : public TBaseRecordList 
{
	typedef TBaseRecordList inherited;
	
public:
	Tmsuxlsformula::TShrFmlaRecord* operator[](int index) { return Items[index]; }
	
private:
	Tmsuxlsformula::TShrFmlaRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const Tmsuxlsformula::TShrFmlaRecord* Value);
	
public:
	__property Tmsuxlsformula::TShrFmlaRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(Tmsuxlsformula::TShrFmlaRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, Tmsuxlsformula::TShrFmlaRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const unsigned aItem, int &Index);
	HIDESBASE void __fastcall Sort(void);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TShrFmlaRecordList(void)/* overload */ : TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TShrFmlaRecordList(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Tmsuxlsbaserecordlists */
using namespace Tmsuxlsbaserecordlists;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlsbaserecordlists
