// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuescherotherrecords.pas' rev: 11.00

#ifndef TmsuescherotherrecordsHPP
#define TmsuescherotherrecordsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Tmsubreaklist.hpp>	// Pascal unit
#include <Tmsuescherrecords.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Tmsuxlsbaseclientdata.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuescherotherrecords
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TEscherRegroupRecord;
class PASCALIMPLEMENTATION TEscherRegroupRecord : public Tmsuescherrecords::TEscherDataRecord 
{
	typedef Tmsuescherrecords::TEscherDataRecord inherited;
	
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Create */ inline __fastcall virtual TEscherRegroupRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent) : Tmsuescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherRegroupRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TRuleRecord;
class PASCALIMPLEMENTATION TRuleRecord : public Tmsuescherrecords::TEscherDataRecord 
{
	typedef Tmsuescherrecords::TEscherDataRecord inherited;
	
public:
	virtual bool __fastcall DeleteRef(const Tmsuescherrecords::TEscherSPRecord* aShape) = 0 ;
	virtual void __fastcall FixPointers(void) = 0 ;
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet) = 0 ;
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Create */ inline __fastcall virtual TRuleRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent) : Tmsuescherrecords::TEscherDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TRuleRecord(void) { }
	#pragma option pop
	
};


#pragma pack(push,1)
struct TConnectorRule
{
	
public:
	unsigned RuleId;
	unsigned SpIds[3];
	unsigned CpA;
	unsigned CpB;
} ;
#pragma pack(pop)

typedef TConnectorRule *PConnectorRule;

class DELPHICLASS TEscherConnectorRuleRecord;
class PASCALIMPLEMENTATION TEscherConnectorRuleRecord : public TRuleRecord 
{
	typedef TRuleRecord inherited;
	
private:
	TConnectorRule *FConnectorRule;
	Tmsuescherrecords::TEscherSPRecord* Shapes[3];
	
protected:
	virtual Tmsuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Tmsuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherConnectorRuleRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Tmsuescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherConnectorRuleRecord(void) { }
	#pragma option pop
	
};


#pragma pack(push,1)
struct TAlignRule
{
	
public:
	unsigned RuleId;
	unsigned Align;
	unsigned nProxies;
} ;
#pragma pack(pop)

typedef TAlignRule *PAlignRule;

class DELPHICLASS TEscherAlignRuleRecord;
class PASCALIMPLEMENTATION TEscherAlignRuleRecord : public TRuleRecord 
{
	typedef TRuleRecord inherited;
	
private:
	TAlignRule *FAlignRule;
	
protected:
	virtual Tmsuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Tmsuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherAlignRuleRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Tmsuescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherAlignRuleRecord(void) { }
	#pragma option pop
	
};


#pragma pack(push,1)
struct TArcRule
{
	
public:
	unsigned RuleId;
	unsigned SpId;
} ;
#pragma pack(pop)

typedef TArcRule *PArcRule;

class DELPHICLASS TEscherArcRuleRecord;
class PASCALIMPLEMENTATION TEscherArcRuleRecord : public TRuleRecord 
{
	typedef TRuleRecord inherited;
	
private:
	TArcRule *FArcRule;
	Tmsuescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Tmsuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Tmsuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherArcRuleRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Tmsuescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherArcRuleRecord(void) { }
	#pragma option pop
	
};


#pragma pack(push,1)
struct TCalloutRule
{
	
public:
	unsigned RuleId;
	unsigned SpId;
} ;
#pragma pack(pop)

typedef TCalloutRule *PCalloutRule;

class DELPHICLASS TEscherCalloutRuleRecord;
class PASCALIMPLEMENTATION TEscherCalloutRuleRecord : public TRuleRecord 
{
	typedef TRuleRecord inherited;
	
private:
	TCalloutRule *FCalloutRule;
	Tmsuescherrecords::TEscherSPRecord* Shape;
	
protected:
	virtual Tmsuescherrecords::TEscherRecord* __fastcall DoCopyTo(const Tmsuescherrecords::PEscherDwgCache NewDwgCache, const int RowOfs, const int ColOfs, const System::TObject* dSheet);
	
public:
	__fastcall virtual TEscherCalloutRuleRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent);
	virtual bool __fastcall DeleteRef(const Tmsuescherrecords::TEscherSPRecord* aShape);
	virtual void __fastcall FixPointers(void);
	virtual void __fastcall ArrangeCopyRowsAndCols(const System::TObject* dSheet);
public:
	#pragma option push -w-inl
	/* TEscherDataRecord.Destroy */ inline __fastcall virtual ~TEscherCalloutRuleRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TEscherClientTextBoxRecord;
class PASCALIMPLEMENTATION TEscherClientTextBoxRecord : public Tmsuescherrecords::TEscherClientDataRecord 
{
	typedef Tmsuescherrecords::TEscherClientDataRecord inherited;
	
private:
	WideString __fastcall GetValue();
	void __fastcall SetValue(const WideString aValue);
	
public:
	__property WideString Value = {read=GetValue, write=SetValue};
	virtual bool __fastcall WaitingClientData(/* out */ TMetaClass* &ClientType);
	__fastcall TEscherClientTextBoxRecord(const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent);
public:
	#pragma option push -w-inl
	/* TEscherClientDataRecord.Create */ inline __fastcall virtual TEscherClientTextBoxRecord(const Tmsuescherrecords::TEscherRecordHeader &aEscherHeader, const Tmsuescherrecords::PEscherDwgGroupCache aDwgGroupCache, const Tmsuescherrecords::PEscherDwgCache aDwgCache, const Tmsuescherrecords::TEscherContainerRecord* aParent) : Tmsuescherrecords::TEscherClientDataRecord(aEscherHeader, aDwgGroupCache, aDwgCache, aParent) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TEscherClientDataRecord.Destroy */ inline __fastcall virtual ~TEscherClientTextBoxRecord(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Tmsuescherotherrecords */
using namespace Tmsuescherotherrecords;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuescherotherrecords
