// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Vcal.pas' rev: 11.00

#ifndef VcalHPP
#define VcalHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Vcal
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TvEventStatus { esAccepted, esNeedsAction, esSent, esTentative, esConfirmed, esDeclined, esCompleted, esDelegated };
#pragma option pop

#pragma option push -b-
enum TvCalenderVersion { vv1, vv2 };
#pragma option pop

#pragma option push -b-
enum TvEventTransp { etFree, etNotFree, etOther };
#pragma option pop

#pragma option push -b-
enum TvEventClass { ecPublic, ecPrivate, ecConfidential };
#pragma option pop

#pragma option push -b-
enum TvEventCategory { caAppointment, caBusiness, caEducation, caHoliday, caMeeting, caMiscellaneous, caPersonal, caPhonecall, caSickDay, caSpecialOccasion, caTravel, caVacation };
#pragma option pop

#pragma option push -b-
enum TEventProperty { epDTStart, epDTEnd, epStatus, epPriority, epSummary, epTransp, epDescription, epURL, epUID, epLocation, epClass, epCategories, epResources, epRecurrency };
#pragma option pop

typedef Set<TvEventCategory, caAppointment, caVacation>  TvEventCategories;

class DELPHICLASS TvTimeZoneOffset;
class PASCALIMPLEMENTATION TvTimeZoneOffset : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	int FOffsetFrom;
	System::TDateTime FDTStart;
	int FOffsetTo;
	AnsiString FName;
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property int OffsetFrom = {read=FOffsetFrom, write=FOffsetFrom, nodefault};
	__property int OffsetTo = {read=FOffsetTo, write=FOffsetTo, nodefault};
	__property System::TDateTime DTStart = {read=FDTStart, write=FDTStart};
	__property AnsiString Name = {read=FName, write=FName};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TvTimeZoneOffset(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TvTimeZoneOffset(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TvTimeZone;
class PASCALIMPLEMENTATION TvTimeZone : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FID;
	TvTimeZoneOffset* FDayLight;
	AnsiString FURL;
	TvTimeZoneOffset* FStandard;
	void __fastcall SetDaylight(const TvTimeZoneOffset* Value);
	void __fastcall SetStandard(const TvTimeZoneOffset* Value);
	
public:
	__fastcall TvTimeZone(void);
	__fastcall virtual ~TvTimeZone(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString ID = {read=FID, write=FID};
	__property AnsiString URL = {read=FURL, write=FURL};
	__property TvTimeZoneOffset* Standard = {read=FStandard, write=SetStandard};
	__property TvTimeZoneOffset* Daylight = {read=FDayLight, write=SetDaylight};
};


class DELPHICLASS TvEvent;
class PASCALIMPLEMENTATION TvEvent : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	System::TDateTime FDTEnd;
	System::TDateTime FDTStart;
	int FPriority;
	TvEventStatus FStatus;
	AnsiString FSummary;
	TvEventTransp FTrans;
	Classes::TStrings* FDescription;
	AnsiString FURL;
	AnsiString FUID;
	AnsiString FLocation;
	TvEventClass FClass;
	TvEventCategories FCategories;
	Classes::TStrings* FResources;
	AnsiString FAlarmMessage;
	System::TDateTime FAlarmTime;
	AnsiString FRecurrency;
	TvTimeZone* FvTimeZone;
	void __fastcall SetDTEnd(const System::TDateTime Value);
	void __fastcall SetDTStart(const System::TDateTime Value);
	void __fastcall SetPriority(const int Value);
	void __fastcall SetStatus(const TvEventStatus Value);
	void __fastcall SetSummary(const AnsiString Value);
	void __fastcall SetTransp(const TvEventTransp Value);
	void __fastcall SetDescription(const Classes::TStrings* Value);
	void __fastcall SetUID(const AnsiString Value);
	void __fastcall SetURL(const AnsiString Value);
	void __fastcall SetLocation(const AnsiString Value);
	void __fastcall SetClass(const TvEventClass Value);
	void __fastcall SetCategories(const TvEventCategories Value);
	void __fastcall SetResources(const Classes::TStrings* Value);
	void __fastcall SetRecurrency(const AnsiString Value);
	void __fastcall SetvTimeZone(const TvTimeZone* Value);
	
public:
	__fastcall virtual TvEvent(Classes::TCollection* Collection);
	__fastcall virtual ~TvEvent(void);
	
__published:
	__property AnsiString AlarmMessage = {read=FAlarmMessage, write=FAlarmMessage};
	__property System::TDateTime AlarmTime = {read=FAlarmTime, write=FAlarmTime};
	__property TvEventCategories Categories = {read=FCategories, write=SetCategories, nodefault};
	__property TvEventClass Classification = {read=FClass, write=SetClass, nodefault};
	__property Classes::TStrings* Description = {read=FDescription, write=SetDescription};
	__property System::TDateTime DTEnd = {read=FDTEnd, write=SetDTEnd};
	__property System::TDateTime DTStart = {read=FDTStart, write=SetDTStart};
	__property AnsiString Location = {read=FLocation, write=SetLocation};
	__property int Priority = {read=FPriority, write=SetPriority, nodefault};
	__property AnsiString Recurrency = {read=FRecurrency, write=SetRecurrency};
	__property Classes::TStrings* Resources = {read=FResources, write=SetResources};
	__property TvEventStatus Status = {read=FStatus, write=SetStatus, nodefault};
	__property AnsiString Summary = {read=FSummary, write=SetSummary};
	__property TvEventTransp Transp = {read=FTrans, write=SetTransp, nodefault};
	__property AnsiString URL = {read=FURL, write=SetURL};
	__property AnsiString UID = {read=FUID, write=SetUID};
	__property TvTimeZone* vTimeZone = {read=FvTimeZone, write=SetvTimeZone};
};


class DELPHICLASS TvEventCollection;
class DELPHICLASS TvCalendar;
class PASCALIMPLEMENTATION TvCalendar : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TvEventCollection* FvEvents;
	AnsiString FProdID;
	AnsiString FTimeZone;
	TvTimeZone* FvTimeZone;
	TvCalenderVersion FvCalendarVersion;
	TvEventCollection* __fastcall GetvEvents(void);
	void __fastcall SetvEvents(const TvEventCollection* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	void __fastcall SetTimeZone(const TvTimeZone* Value);
	
public:
	__fastcall virtual TvCalendar(Classes::TComponent* AOwner);
	__fastcall virtual ~TvCalendar(void);
	void __fastcall LoadFromFile(const AnsiString FileName);
	void __fastcall InsertFromFile(const AnsiString FileName);
	void __fastcall SaveToFile(const AnsiString FileName);
	__property TvTimeZone* vTimeZone = {read=FvTimeZone, write=SetTimeZone};
	
__published:
	__property TvEventCollection* vEvents = {read=GetvEvents, write=SetvEvents};
	__property AnsiString ProdID = {read=FProdID, write=FProdID};
	__property AnsiString TimeZone = {read=FTimeZone, write=FTimeZone};
	__property TvCalenderVersion vCalendarVersion = {read=FvCalendarVersion, write=FvCalendarVersion, default=0};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class PASCALIMPLEMENTATION TvEventCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TvEvent* operator[](int Index) { return Items[Index]; }
	
private:
	TvCalendar* FOwner;
	TvEvent* __fastcall GetvEvent(int Index);
	void __fastcall SetvEvent(int Index, const TvEvent* Value);
	
public:
	__fastcall TvEventCollection(TvCalendar* AOwner);
	HIDESBASE TvEvent* __fastcall Add(void);
	HIDESBASE TvEvent* __fastcall Insert(int Index);
	__property TvEvent* Items[int Index] = {read=GetvEvent, write=SetvEvent/*, default*/};
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TvEventCollection(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE AnsiString __fastcall StatusToStr(TvEventStatus AStatus);

}	/* namespace Vcal */
using namespace Vcal;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcal
