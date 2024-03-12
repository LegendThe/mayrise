// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planrecurr.pas' rev: 11.00

#ifndef PlanrecurrHPP
#define PlanrecurrHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Planutil.hpp>	// Pascal unit
#include <Dateutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planrecurr
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TDateItem;
class PASCALIMPLEMENTATION TDateItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	System::TDateTime FStartTime;
	System::TDateTime FEndDate;
	
__published:
	__property System::TDateTime StartDate = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndDate = {read=FEndDate, write=FEndDate};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TDateItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TDateItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDateItems;
class PASCALIMPLEMENTATION TDateItems : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TDateItem* operator[](int Index) { return Items[Index]; }
	
private:
	HIDESBASE TDateItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TDateItem* Value);
	
public:
	__fastcall TDateItems(void);
	HIDESBASE TDateItem* __fastcall Add(void);
	__property TDateItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TDateItems(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TRecurrencyFrequency { rfHourly, rfDaily, rfWeekly, rfMonthly, rfYearly, frNone };
#pragma option pop

class DELPHICLASS TIntList;
class PASCALIMPLEMENTATION TIntList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	int operator[](int index) { return Items[index]; }
	
private:
	int FIndex;
	void __fastcall SetInteger(int Index, int Value);
	int __fastcall GetInteger(int Index);
	AnsiString __fastcall GetStrValue();
	void __fastcall SetStrValue(const AnsiString Value);
	
public:
	__fastcall TIntList(void);
	__property int Items[int index] = {read=GetInteger, write=SetInteger/*, default*/};
	HIDESBASE void __fastcall Add(int Value);
	HIDESBASE void __fastcall Insert(int Index, int Value);
	HIDESBASE void __fastcall Delete(int Index);
	__property AnsiString StrValue = {read=GetStrValue, write=SetStrValue};
	bool __fastcall HasValue(int Value);
	__property int Index = {read=FIndex, write=FIndex, nodefault};
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TIntList(void) { }
	#pragma option pop
	
};


typedef Set<Byte, 0, 255>  TDaySet;

typedef Byte TDayArray[7];

class DELPHICLASS TRecurrencyHandler;
class PASCALIMPLEMENTATION TRecurrencyHandler : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	AnsiString FRecurrency;
	System::TDateTime FEndTime;
	System::TDateTime FStartTime;
	int FCount;
	TDateItems* FDates;
	TDateItems* FExDates;
	TRecurrencyFrequency FFreq;
	int FRCount;
	System::TDateTime FUntil;
	int FInterval;
	TIntList* FMonthList;
	TIntList* FDayList;
	TIntList* FHourList;
	TDaySet FDaySet;
	Byte FDayNum[7];
	System::TDateTime FTimeSpan;
	Byte __fastcall GetDayNum(int Index);
	void __fastcall SetDayNum(int Index, const Byte Value);
	
protected:
	System::TDateTime __fastcall ApplyFreq(System::TDateTime ADate, TRecurrencyFrequency Freq, int Interval);
	
public:
	__fastcall TRecurrencyHandler(void);
	__fastcall virtual ~TRecurrencyHandler(void);
	void __fastcall Parse(void);
	void __fastcall Generate(void);
	AnsiString __fastcall Compose();
	bool __fastcall IsRecurrent(void);
	bool __fastcall NextDate(System::TDateTime &AStartDate, System::TDateTime &AEndDate);
	System::TDateTime __fastcall RecurrentMinDate(void);
	System::TDateTime __fastcall RecurrentMaxDate(void);
	__property TDaySet Days = {read=FDaySet, write=FDaySet};
	__property TDateItems* ExDates = {read=FExDates};
	__property TDateItems* Dates = {read=FDates};
	Classes::TStrings* __fastcall DatesAsStrings(void);
	__property Byte DayNum[int Index] = {read=GetDayNum, write=SetDayNum};
	__property TIntList* Months = {read=FMonthList};
	__property AnsiString Recurrency = {read=FRecurrency, write=FRecurrency};
	__property System::TDateTime StartTime = {read=FStartTime, write=FStartTime};
	__property System::TDateTime EndTime = {read=FEndTime, write=FEndTime};
	__property TRecurrencyFrequency Frequency = {read=FFreq, write=FFreq, nodefault};
	__property int RepeatCount = {read=FRCount, write=FRCount, nodefault};
	__property System::TDateTime RepeatUntil = {read=FUntil, write=FUntil};
	__property int Interval = {read=FInterval, write=FInterval, nodefault};
	__property System::TDateTime TimeSpan = {read=FTimeSpan, write=FTimeSpan};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint INFINITE_SPAN = 0x64;
extern PACKAGE System::TDateTime __fastcall NextDayOfWeek(System::TDateTime ADate, int dw);
extern PACKAGE int __fastcall WeekDayInMonth(System::TDateTime ADate);

}	/* namespace Planrecurr */
using namespace Planrecurr;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planrecurr
