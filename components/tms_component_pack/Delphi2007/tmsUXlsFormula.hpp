// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlsformula.pas' rev: 11.00

#ifndef TmsuxlsformulaHPP
#define TmsuxlsformulaHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Tmsuxlsbaserecords.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Tmsuxlstokenarray.hpp>	// Pascal unit
#include <Tmsxlsformulamessages.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit
#include <Tmsuxlsstrings.hpp>	// Pascal unit
#include <Tmsuole2impl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlsformula
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TTableRecord;
class PASCALIMPLEMENTATION TTableRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall IncRowToMax(const Tmsxlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	void __fastcall IncColToMax(const Tmsxlsmessages::PArrayOfByte Pdata, const int rowPos, const int colPos, const int Offset, const int Max);
	
public:
	__fastcall virtual TTableRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize);
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TTableRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TArrayRecord;
class PASCALIMPLEMENTATION TArrayRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount);
	void __fastcall ArrangeCopyRowsAndCols(const int DeltaRow, const int DeltaCol);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TArrayRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TArrayRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFormulaRecord;
class PASCALIMPLEMENTATION TFormulaRecord : public Tmsuxlsbaserecords::TCellRecord 
{
	typedef Tmsuxlsbaserecords::TCellRecord inherited;
	
private:
	Variant FormulaValue;
	TTableRecord* FTableRecord;
	TArrayRecord* FArrayRecord;
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeSharedTokens(void);
	void __fastcall SetTableRecord(const TTableRecord* Value);
	void __fastcall SetArrayRecord(const TArrayRecord* Value);
	void __fastcall ClearResult(void);
	int __fastcall SaveStringRecord(const Tmsuole2impl::TOle2File* Workbook, const bool IncludeHeaders);
	
protected:
	virtual Tmsuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo(void);
	
public:
	__fastcall virtual TFormulaRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TFormulaRecord(const Word aId, const Word aDataSize, const Word aRow, const Word aCol, const Word aXF, const Variant &aValue, const bool Options1904);
	__fastcall virtual ~TFormulaRecord(void);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOffset, const int ColOffset);
	virtual void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* Workbook);
	virtual int __fastcall TotalSize(void);
	virtual __int64 __fastcall FixTotalSize(const bool NeedsRecalc);
	virtual int __fastcall TotalSizeNoHeaders(void);
	__property TTableRecord* TableRecord = {read=FTableRecord, write=SetTableRecord};
	__property TArrayRecord* ArrayRecord = {read=FArrayRecord, write=SetArrayRecord};
	bool __fastcall IsExp(unsigned &Key);
	void __fastcall MixShared(const Tmsxlsmessages::PArrayOfByte PData, const int aDataSize);
	virtual Variant __fastcall GetValue();
	void __fastcall SetFormulaValue(const Variant &v);
};


class DELPHICLASS TNameRecord;
class PASCALIMPLEMENTATION TNameRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
private:
	void __fastcall ArrangeTokensInsertRowsAndCols(const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	Byte __fastcall NameLength(void);
	int __fastcall NameSize(void);
	Byte __fastcall NameOptionFlags(void);
	void __fastcall ChangeRefToArea(void);
	
public:
	__fastcall virtual TNameRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize);
	__fastcall TNameRecord(const Tmsuflxmessages::TXlsNamedRange &Range, const void * Globals, const void * CellList);
	void __fastcall ArrangeInsertRowsAndCols(int aRowPos, int aRowCount, int aColPos, int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	void __fastcall ArrangeInsertSheets(const int FirstSheet, const int SheetCount);
	TNameRecord* __fastcall ArrangeCopySheet(const Tmsxlsmessages::TSheetInfo &SheetInfo);
	int __fastcall RangeSheet(void);
	int __fastcall RefersToSheet(const Tmsxlsmessages::TGetSheet GetSheet);
	WideString __fastcall Name();
	int __fastcall GetR1(void);
	int __fastcall GetR2(void);
	int __fastcall GetC1(void);
	int __fastcall GetC2(void);
	void __fastcall SetR1(int value);
	void __fastcall SetR2(int value);
	void __fastcall SetC1(int value);
	void __fastcall SetC2(int value);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TNameRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TShrFmlaRecord;
class PASCALIMPLEMENTATION TShrFmlaRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	unsigned Key;
	
protected:
	virtual Tmsuxlsbaserecords::TBaseRecord* __fastcall DoCopyTo(void);
	
public:
	int __fastcall FirstRow(void);
	int __fastcall LastRow(void);
	int __fastcall FirstCol(void);
	int __fastcall LastCol(void);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TShrFmlaRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TShrFmlaRecord(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Tmsuxlsformula */
using namespace Tmsuxlsformula;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlsformula