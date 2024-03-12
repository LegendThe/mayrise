// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlsclientdata.pas' rev: 11.00

#ifndef TmsuxlsclientdataHPP
#define TmsuxlsclientdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Tmsuxlsbaserecords.hpp>	// Pascal unit
#include <Tmsuxlsbaserecordlists.hpp>	// Pascal unit
#include <Tmsuxlsotherrecords.hpp>	// Pascal unit
#include <Tmsuxlschart.hpp>	// Pascal unit
#include <Tmsuxlssst.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Tmsuxlssheet.hpp>	// Pascal unit
#include <Tmsuxlsbaseclientdata.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit
#include <Tmsuole2impl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlsclientdata
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TMsObj;
class PASCALIMPLEMENTATION TMsObj : public Tmsuxlsbaseclientdata::TBaseClientData 
{
	typedef Tmsuxlsbaseclientdata::TBaseClientData inherited;
	
private:
	Tmsuxlsotherrecords::TObjRecord* FObjRecord;
	Tmsuxlssheet::TFlxChart* FChart;
	Tmsuxlsbaserecords::TBaseRecord* FImData;
	bool HasPictFmla;
	bool __fastcall Get_IsAutoFilter(void);
	
protected:
	virtual Word __fastcall GetId(void);
	virtual void __fastcall SetId(const Word Value);
	void __fastcall ScanRecord(Tmsuxlsbaserecords::TBaseRecord* myRecord);
	
public:
	virtual void __fastcall ArrangeId(Word &MaxId);
	__fastcall TMsObj(void);
	__fastcall TMsObj(Word &MaxId, Byte const * data, const int data_Size);
	/*         class method */ static TMsObj* __fastcall CreateEmptyImg(TMetaClass* vmt, Word &MaxId);
	/*         class method */ static TMsObj* __fastcall CreateEmptyNote(TMetaClass* vmt, Word &MaxId);
	/*         class method */ static TMsObj* __fastcall CreateEmptyAutoFilter(TMetaClass* vmt, Word &MaxId);
	__fastcall virtual ~TMsObj(void);
	virtual void __fastcall Clear(void);
	virtual Tmsuxlsbaseclientdata::TBaseClientData* __fastcall CopyTo(void);
	virtual void __fastcall LoadFromStream(const Tmsuole2impl::TOle2File* DataStream, Tmsxlsmessages::TRecordHeader &RecordHeader, const Tmsuxlsbaserecords::TBaseRecord* First, const Tmsuxlssst::TSST* SST);
	virtual void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
	virtual __int64 __fastcall TotalSize(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const int RowOfs, const int ColOfs);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopySheet(const Tmsxlsmessages::TSheetInfo &SheetInfo);
	/* virtual class method */ virtual TMetaClass* __fastcall ObjRecord(TMetaClass* vmt);
	__property bool IsAutoFilter = {read=Get_IsAutoFilter, nodefault};
};


class DELPHICLASS TTXO;
class PASCALIMPLEMENTATION TTXO : public Tmsuxlsbaseclientdata::TBaseClientData 
{
	typedef Tmsuxlsbaseclientdata::TBaseClientData inherited;
	
private:
	Tmsuxlsotherrecords::TTXORecord* FTXO;
	WideString __fastcall GetValue();
	void __fastcall SetValue(const WideString aValue);
	void __fastcall ScanRecord(WideString &Value, Tmsuflxmessages::TRTFRunList &RTFRuns);
	
public:
	__fastcall TTXO(void);
	__fastcall TTXO(const int Dummy);
	__fastcall virtual ~TTXO(void);
	virtual void __fastcall Clear(void);
	virtual Tmsuxlsbaseclientdata::TBaseClientData* __fastcall CopyTo(void);
	virtual void __fastcall LoadFromStream(const Tmsuole2impl::TOle2File* DataStream, Tmsxlsmessages::TRecordHeader &RecordHeader, const Tmsuxlsbaserecords::TBaseRecord* First, const Tmsuxlssst::TSST* SST);
	virtual void __fastcall SaveToStream(const Tmsuole2impl::TOle2File* DataStream);
	virtual __int64 __fastcall TotalSize(void);
	virtual void __fastcall ArrangeInsertRowsAndCols(const int aRowPos, const int aRowCount, const int aColPos, const int aColCount, const Tmsxlsmessages::TSheetInfo &SheetInfo);
	virtual void __fastcall ArrangeCopySheet(const Tmsxlsmessages::TSheetInfo &SheetInfo);
	/* virtual class method */ virtual TMetaClass* __fastcall ObjRecord(TMetaClass* vmt);
	__property WideString Value = {read=GetValue, write=SetValue};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Tmsuxlsclientdata */
using namespace Tmsuxlsclientdata;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlsclientdata
