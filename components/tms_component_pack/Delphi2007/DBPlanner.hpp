// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbplanner.pas' rev: 11.00

#ifndef DbplannerHPP
#define DbplannerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Planner.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Planrecurr.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbplanner
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TResourceMapItem;
class PASCALIMPLEMENTATION TResourceMapItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	int FResourceIndex;
	int FPositionIndex;
	AnsiString FDisplayName;
	
public:
	__fastcall virtual TResourceMapItem(Classes::TCollection* Collection);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property int ResourceIndex = {read=FResourceIndex, write=FResourceIndex, nodefault};
	__property int PositionIndex = {read=FPositionIndex, write=FPositionIndex, nodefault};
	__property AnsiString DisplayName = {read=FDisplayName, write=FDisplayName};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TResourceMapItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TResourceMap;
class PASCALIMPLEMENTATION TResourceMap : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TResourceMapItem* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TComponent* FOwner;
	HIDESBASE TResourceMapItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TResourceMapItem* Value);
	
public:
	HIDESBASE TResourceMapItem* __fastcall Add(void);
	HIDESBASE TResourceMapItem* __fastcall Insert(int index);
	__property TResourceMapItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__fastcall TResourceMap(Classes::TComponent* AOwner);
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	int __fastcall ResToPosition(int Value);
	int __fastcall PositionToRes(int Value);
	AnsiString __fastcall PositionName(int Value);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TResourceMap(void) { }
	#pragma option pop
	
};


class DELPHICLASS TResourceDataSource;
class DELPHICLASS TDBItemSource;
class DELPHICLASS TItemSource;
typedef void __fastcall (__closure *TCreateKeyEvent)(System::TObject* Sender, Planner::TPlannerItem* APlannerItem, AnsiString &Key);

typedef void __fastcall (__closure *TAcceptEvent)(System::TObject* Sender, Db::TFields* Fields, bool &Accept);

class PASCALIMPLEMENTATION TItemSource : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Planner::TPlanner* FPlanner;
	int FUpdateCount;
	TCreateKeyEvent FOnCreateKey;
	bool FActive;
	Classes::TNotifyEvent FOnSetFilter;
	Classes::TNotifyEvent FOnResetFilter;
	TAcceptEvent FOnAccept;
	int FLocateIdx;
	AnsiString FLocateSpecifier;
	Planner::TFindTextParams FLocateParams;
	void __fastcall SetPlanner(Planner::TPlanner* Value);
	void __fastcall SetActive(const bool Value);
	
public:
	virtual void __fastcall ClearDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Refresh(void);
	virtual void __fastcall Reload(void);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	__fastcall virtual TItemSource(Classes::TComponent* AOwner);
	__fastcall virtual ~TItemSource(void);
	virtual void __fastcall PlannerChanged(void);
	__property Planner::TPlanner* Planner = {read=FPlanner, write=SetPlanner};
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	bool __fastcall IsUpdating(void);
	virtual AnsiString __fastcall CreateKey();
	virtual bool __fastcall LocateFirstItem(AnsiString Specifier, Planner::TFindTextParams Params, System::TDateTime &StartTime, System::TDateTime &EndTime, AnsiString &Key);
	virtual bool __fastcall LocateNextItem(System::TDateTime &StartTime, System::TDateTime &EndTime, AnsiString &Key);
	virtual System::TDateTime __fastcall PosToDay(int Pos);
	virtual int __fastcall PosToRes(int Pos);
	virtual void __fastcall MapItemTimeOnPlanner(Planner::TPlannerItem* APlannerItem);
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=1};
	__property TCreateKeyEvent OnCreateKey = {read=FOnCreateKey, write=FOnCreateKey};
	__property Classes::TNotifyEvent OnResetFilter = {read=FOnResetFilter, write=FOnResetFilter};
	__property Classes::TNotifyEvent OnSetFilter = {read=FOnSetFilter, write=FOnSetFilter};
	__property TAcceptEvent OnAccept = {read=FOnAccept, write=FOnAccept};
};


class DELPHICLASS TDBPlannerDataLink;
class PASCALIMPLEMENTATION TDBPlannerDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBItemSource* FDBItemSource;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	
public:
	__fastcall TDBPlannerDataLink(TDBItemSource* ADBItemSource);
	__fastcall virtual ~TDBPlannerDataLink(void);
};


class DELPHICLASS TDBPlannerResourceDataLink;
class PASCALIMPLEMENTATION TDBPlannerResourceDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBItemSource* FDBItemSource;
	int FUpdateCount;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	void __fastcall UpdateResourceMap(void);
	
public:
	__fastcall TDBPlannerResourceDataLink(TDBItemSource* ADBItemSource);
	__fastcall virtual ~TDBPlannerResourceDataLink(void);
};


typedef void __fastcall (__closure *TFieldsItemEvent)(System::TObject* Sender, Db::TFields* Fields, Planner::TPlannerItem* Item);

typedef void __fastcall (__closure *TPosToResourceEvent)(System::TObject* Sender, Db::TField* Field, int Position);

typedef void __fastcall (__closure *TResourceToPosEvent)(System::TObject* Sender, Db::TField* Field, int &Position, bool &Accept);

typedef void __fastcall (__closure *TDBItemSQLEvent)(System::TObject* Sender, Planner::TPlannerItem* APlannerItem);

typedef void __fastcall (__closure *TFieldsToTimeEvent)(System::TObject* Sender, Db::TFields* Fields, System::TDateTime &dtS, System::TDateTime &dtE);

typedef void __fastcall (__closure *TTimeToFieldsEvent)(System::TObject* Sender, Db::TFields* Fields, System::TDateTime dtS, System::TDateTime dtE);

class PASCALIMPLEMENTATION TDBItemSource : public TItemSource 
{
	typedef TItemSource inherited;
	
private:
	AnsiString FEndTimeField;
	AnsiString FStartTimeField;
	AnsiString FKeyField;
	AnsiString FResourceField;
	AnsiString FSubjectField;
	AnsiString FNotesField;
	AnsiString FRecurrencyField;
	AnsiString FMinTimeField;
	AnsiString FMaxTimeField;
	bool FAutoIncKey;
	TDBPlannerDataLink* FDataLink;
	TDBPlannerResourceDataLink* FResourceDataLink;
	TFieldsItemEvent FOnFieldsToItem;
	TFieldsItemEvent FOnItemToFields;
	Classes::TNotifyEvent FOnChangeQuery;
	TPosToResourceEvent FOnPositionToResource;
	TResourceToPosEvent FOnResourceToPosition;
	bool FReadOnly;
	Db::TField* FNotesDBField;
	Db::TField* FSubjectDBField;
	Db::TField* FDBKeyDBField;
	TDBItemSQLEvent FOnInsertItem;
	TDBItemSQLEvent FOnDeleteItem;
	TDBItemSQLEvent FOnUpdateItem;
	Classes::TNotifyEvent FOnItemsRead;
	Classes::TNotifyEvent FOnBeforeItemsRead;
	TFieldsToTimeEvent FOnFieldsToTime;
	TTimeToFieldsEvent FOnTimeToFields;
	bool FUpdateByQuery;
	TResourceMap* FResourceMap;
	Planrecurr::TRecurrencyHandler* FRecurrencyHandler;
	TResourceDataSource* FResourceDataSource;
	Classes::TNotifyEvent FOnResourceChange;
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	void __fastcall SetEndTimeField(const AnsiString Value);
	void __fastcall SetStartTimeField(const AnsiString Value);
	void __fastcall SetKeyField(const AnsiString Value);
	void __fastcall SetNotesField(const AnsiString Value);
	void __fastcall SetSubjectField(const AnsiString Value);
	void __fastcall SetResourceField(const AnsiString Value);
	void __fastcall SetRecurrencyField(const AnsiString Value);
	void __fastcall SetMinTimeField(const AnsiString Value);
	void __fastcall SetMaxTimeField(const AnsiString Value);
	void __fastcall SetReadOnly(const bool Value);
	void __fastcall SetResourceMap(const TResourceMap* Value);
	void __fastcall SetResourceDataSource(const TResourceDataSource* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	bool __fastcall CheckDataSet(void);
	virtual void __fastcall MoveResource(int FromPos, int ToPos);
	virtual void __fastcall ResourceUpdate(void);
	
public:
	__fastcall virtual TDBItemSource(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBItemSource(void);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	virtual bool __fastcall LocateFirstItem(AnsiString Specifier, Planner::TFindTextParams Params, System::TDateTime &StartTime, System::TDateTime &EndTime, AnsiString &Key);
	virtual bool __fastcall LocateNextItem(System::TDateTime &StartTime, System::TDateTime &EndTime, AnsiString &Key);
	virtual void __fastcall FieldsToItem(Planner::TPlannerItem* APlannerItem);
	virtual void __fastcall FieldsToTime(Db::TFields* Fields, System::TDateTime &dtS, System::TDateTime &dtE);
	virtual void __fastcall TimeToFields(Db::TFields* Fields, System::TDateTime dtS, System::TDateTime dtE);
	virtual void __fastcall FieldsToRes(Db::TFields* Fields, int &Position, bool &Accept);
	virtual void __fastcall ResToFields(Db::TFields* Fields, int Position);
	__property AnsiString RecurrencyField = {read=FRecurrencyField, write=SetRecurrencyField};
	__property AnsiString MaxTimeField = {read=FMaxTimeField, write=SetMaxTimeField};
	__property AnsiString MinTimeField = {read=FMinTimeField, write=SetMinTimeField};
	
__published:
	__property bool AutoIncKey = {read=FAutoIncKey, write=FAutoIncKey, nodefault};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property TResourceDataSource* ResourceDataSource = {read=FResourceDataSource, write=SetResourceDataSource};
	__property TResourceMap* ResourceMap = {read=FResourceMap, write=SetResourceMap};
	__property AnsiString StartTimeField = {read=FStartTimeField, write=SetStartTimeField};
	__property AnsiString EndTimeField = {read=FEndTimeField, write=SetEndTimeField};
	__property AnsiString KeyField = {read=FKeyField, write=SetKeyField};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, nodefault};
	__property AnsiString ResourceField = {read=FResourceField, write=SetResourceField};
	__property AnsiString SubjectField = {read=FSubjectField, write=SetSubjectField};
	__property AnsiString NotesField = {read=FNotesField, write=SetNotesField};
	__property bool UpdateByQuery = {read=FUpdateByQuery, write=FUpdateByQuery, nodefault};
	__property Classes::TNotifyEvent OnBeforeItemsRead = {read=FOnBeforeItemsRead, write=FOnBeforeItemsRead};
	__property TFieldsItemEvent OnFieldsToItem = {read=FOnFieldsToItem, write=FOnFieldsToItem};
	__property TFieldsItemEvent OnItemToFields = {read=FOnItemToFields, write=FOnItemToFields};
	__property Classes::TNotifyEvent OnChangeQuery = {read=FOnChangeQuery, write=FOnChangeQuery};
	__property TResourceToPosEvent OnResourceToPosition = {read=FOnResourceToPosition, write=FOnResourceToPosition};
	__property TPosToResourceEvent OnPositionToResource = {read=FOnPositionToResource, write=FOnPositionToResource};
	__property TDBItemSQLEvent OnInsertItem = {read=FOnInsertItem, write=FOnInsertItem};
	__property TDBItemSQLEvent OnDeleteItem = {read=FOnDeleteItem, write=FOnDeleteItem};
	__property TDBItemSQLEvent OnUpdateItem = {read=FOnUpdateItem, write=FOnUpdateItem};
	__property Classes::TNotifyEvent OnItemsRead = {read=FOnItemsRead, write=FOnItemsRead};
	__property TFieldsToTimeEvent OnFieldsToTime = {read=FOnFieldsToTime, write=FOnFieldsToTime};
	__property TTimeToFieldsEvent OnTimeToFields = {read=FOnTimeToFields, write=FOnTimeToFields};
	__property Classes::TNotifyEvent OnResourceChange = {read=FOnResourceChange, write=FOnResourceChange};
};


class PASCALIMPLEMENTATION TResourceDataSource : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TDBItemSource* FDBItemSource;
	AnsiString FResourceIDField;
	AnsiString FResourceNameField;
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	
public:
	__fastcall TResourceDataSource(TDBItemSource* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property AnsiString ResourceIDField = {read=FResourceIDField, write=FResourceIDField};
	__property AnsiString ResourceNameField = {read=FResourceNameField, write=FResourceNameField};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TResourceDataSource(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *THTMLTemplateEvent)(System::TObject* Sender, Planner::TPlannerItem* APlannerItem, AnsiString &HTMLTemplate);

typedef void __fastcall (__closure *THTMLTemplateDataEvent)(System::TObject* Sender, Planner::TPlannerItem* APlannerItem, Db::TField* Field, AnsiString HTMLTag, AnsiString &Value);

#pragma option push -b-
enum TDBDayMode { dmMultiDay, dmMultiResource, dmMultiDayRes, dmMultiResDay };
#pragma option pop

typedef void __fastcall (__closure *TResourceNameEvent)(System::TObject* Sender, int ResourceIndex, AnsiString &ResourceName);

class DELPHICLASS TDBDaySource;
class PASCALIMPLEMENTATION TDBDaySource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	TDBDayMode FMode;
	int FDayIncrement;
	System::TDateTime FDay;
	bool FAutoHeaderUpdate;
	AnsiString FDateFormat;
	int FNumberOfDays;
	int FNumberOfResources;
	TResourceNameEvent FOnGetResourceName;
	void __fastcall SetDay(const System::TDateTime Value);
	void __fastcall SetMode(const TDBDayMode Value);
	void __fastcall SetNumberOfDays(const int Value);
	void __fastcall SetNumberOfResources(const int Value);
	void __fastcall ConfigurePlanner(int &Span);
	int __fastcall CalcItemPos(int DatePos, int ResourcePos);
	
protected:
	virtual void __fastcall ResourceUpdate(void);
	
public:
	__fastcall virtual TDBDaySource(Classes::TComponent* AOwner);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	virtual void __fastcall PlannerChanged(void);
	virtual System::TDateTime __fastcall PosToDay(int Pos);
	virtual int __fastcall PosToRes(int Pos);
	virtual void __fastcall MapItemTimeOnPlanner(Planner::TPlannerItem* APlannerItem);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property AnsiString DateFormat = {read=FDateFormat, write=FDateFormat};
	__property System::TDateTime Day = {read=FDay, write=SetDay};
	__property int DayIncrement = {read=FDayIncrement, write=FDayIncrement, default=1};
	__property TDBDayMode Mode = {read=FMode, write=SetMode, nodefault};
	__property int NumberOfDays = {read=FNumberOfDays, write=SetNumberOfDays, default=7};
	__property int NumberOfResources = {read=FNumberOfResources, write=SetNumberOfResources, default=1};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
	__property TResourceNameEvent OnGetResourceName = {read=FOnGetResourceName, write=FOnGetResourceName};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBDaySource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBCustomPeriodSource;
class PASCALIMPLEMENTATION TDBCustomPeriodSource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	int FNumberOfResources;
	TResourceNameEvent FOnGetResourceName;
	bool FAutoHeaderUpdate;
	void __fastcall ConfigurePlanner(void);
	void __fastcall SetNumberOfResources(const int Value);
	
protected:
	virtual void __fastcall ResourceUpdate(void);
	
public:
	__fastcall virtual TDBCustomPeriodSource(Classes::TComponent* AOwner);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property int NumberOfResources = {read=FNumberOfResources, write=SetNumberOfResources, default=1};
	__property TResourceNameEvent OnGetResourceName = {read=FOnGetResourceName, write=FOnGetResourceName};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBCustomPeriodSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBPeriodSource;
class PASCALIMPLEMENTATION TDBPeriodSource : public TDBCustomPeriodSource 
{
	typedef TDBCustomPeriodSource inherited;
	
private:
	System::TDateTime FStartDate;
	System::TDateTime FEndDate;
	
protected:
	virtual void __fastcall SetEndDate(const System::TDateTime Value);
	virtual void __fastcall SetStartDate(const System::TDateTime Value);
	
public:
	__fastcall virtual TDBPeriodSource(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall PlannerChanged(void);
	virtual void __fastcall UpdatePlanner(void);
	
__published:
	__property System::TDateTime StartDate = {read=FStartDate, write=SetStartDate};
	__property System::TDateTime EndDate = {read=FEndDate, write=SetEndDate};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBPeriodSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBHalfDayPeriodSource;
class PASCALIMPLEMENTATION TDBHalfDayPeriodSource : public TDBPeriodSource 
{
	typedef TDBPeriodSource inherited;
	
public:
	virtual void __fastcall PlannerChanged(void);
	virtual void __fastcall UpdatePlanner(void);
public:
	#pragma option push -w-inl
	/* TDBPeriodSource.Create */ inline __fastcall virtual TDBHalfDayPeriodSource(Classes::TComponent* AOwner) : TDBPeriodSource(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBHalfDayPeriodSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBActiveDayPeriodSource;
class PASCALIMPLEMENTATION TDBActiveDayPeriodSource : public TDBPeriodSource 
{
	typedef TDBPeriodSource inherited;
	
public:
	virtual void __fastcall PlannerChanged(void);
	virtual void __fastcall UpdatePlanner(void);
public:
	#pragma option push -w-inl
	/* TDBPeriodSource.Create */ inline __fastcall virtual TDBActiveDayPeriodSource(Classes::TComponent* AOwner) : TDBPeriodSource(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBActiveDayPeriodSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBMonthSource;
class PASCALIMPLEMENTATION TDBMonthSource : public TDBCustomPeriodSource 
{
	typedef TDBCustomPeriodSource inherited;
	
private:
	int FMonth;
	int FYear;
	void __fastcall SetMonth(const int Value);
	void __fastcall SetYear(const int Value);
	
public:
	__fastcall virtual TDBMonthSource(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall PlannerChanged(void);
	void __fastcall UpdatePlanner(void);
	
__published:
	__property int Month = {read=FMonth, write=SetMonth, nodefault};
	__property int Year = {read=FYear, write=SetYear, nodefault};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBMonthSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBWeekSource;
class PASCALIMPLEMENTATION TDBWeekSource : public TDBCustomPeriodSource 
{
	typedef TDBCustomPeriodSource inherited;
	
private:
	int FMonth;
	int FYear;
	int FWeekStart;
	int FWeeks;
	void __fastcall SetMonth(const int Value);
	void __fastcall SetYear(const int Value);
	void __fastcall SetWeekStart(const int Value);
	void __fastcall SetWeeks(const int Value);
	
public:
	__fastcall virtual TDBWeekSource(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall PlannerChanged(void);
	void __fastcall UpdatePlanner(void);
	
__published:
	__property int Month = {read=FMonth, write=SetMonth, nodefault};
	__property int Year = {read=FYear, write=SetYear, nodefault};
	__property int WeekStart = {read=FWeekStart, write=SetWeekStart, nodefault};
	__property int Weeks = {read=FWeeks, write=SetWeeks, nodefault};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBWeekSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBMultiMonthSource;
class PASCALIMPLEMENTATION TDBMultiMonthSource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	int FNumberOfMonths;
	int FStartMonth;
	int FYear;
	System::TDateTime FStartDate;
	System::TDateTime FEndDate;
	bool FAutoHeaderUpdate;
	int FMonthIncrement;
	void __fastcall ConfigurePlanner(void);
	void __fastcall SetNumberOfMonths(const int Value);
	void __fastcall SetStartMonth(const int Value);
	void __fastcall SetYear(const int Value);
	
protected:
	virtual void __fastcall ResourceUpdate(void);
	
public:
	virtual void __fastcall Loaded(void);
	virtual void __fastcall PlannerChanged(void);
	void __fastcall UpdatePlanner(void);
	__fastcall virtual TDBMultiMonthSource(Classes::TComponent* AOwner);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property int MonthIncrement = {read=FMonthIncrement, write=FMonthIncrement, default=1};
	__property int NumberOfMonths = {read=FNumberOfMonths, write=SetNumberOfMonths, nodefault};
	__property int StartMonth = {read=FStartMonth, write=SetStartMonth, nodefault};
	__property int Year = {read=FYear, write=SetYear, nodefault};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBMultiMonthSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBTimeLineSource;
class PASCALIMPLEMENTATION TDBTimeLineSource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	System::TDateTime FStartDate;
	System::TDateTime FEndDate;
	bool FAutoHeaderUpdate;
	int FNumberOfResources;
	TResourceNameEvent FOnGetResourceName;
	void __fastcall SetEndDate(const System::TDateTime Value);
	void __fastcall SetStartDate(const System::TDateTime Value);
	void __fastcall SetNumberOfResources(const int Value);
	void __fastcall ConfigurePlanner(void);
	
protected:
	virtual void __fastcall ResourceUpdate(void);
	
public:
	__fastcall virtual TDBTimeLineSource(Classes::TComponent* AOwner);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	virtual void __fastcall PlannerChanged(void);
	void __fastcall UpdatePlanner(void);
	virtual int __fastcall PosToRes(int Pos);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property int NumberOfResources = {read=FNumberOfResources, write=SetNumberOfResources, default=3};
	__property System::TDateTime StartDate = {read=FStartDate, write=SetStartDate};
	__property System::TDateTime EndDate = {read=FEndDate, write=SetEndDate};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
	__property TResourceNameEvent OnGetResourceName = {read=FOnGetResourceName, write=FOnGetResourceName};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBTimeLineSource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDateItem;
class PASCALIMPLEMENTATION TDateItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	System::TDateTime FDate;
	
__published:
	__property System::TDateTime Date = {read=FDate, write=FDate};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TDateItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TDateItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDateCollection;
class PASCALIMPLEMENTATION TDateCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TDateItem* operator[](int Index) { return Items[Index]; }
	
private:
	HIDESBASE TDateItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TDateItem* Value);
	
public:
	HIDESBASE TDateItem* __fastcall Add(void);
	HIDESBASE TDateItem* __fastcall Insert(int index);
	__property TDateItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__fastcall TDateCollection(void);
	bool __fastcall HasDate(System::TDateTime ADate);
	int __fastcall DatePos(System::TDateTime ADate);
	System::TDateTime __fastcall PosDate(int Pos);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TDateCollection(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TDBDisjunctDayMode { djMultiDayRes, djMultiResDay };
#pragma option pop

class DELPHICLASS TDBDisjunctDaySource;
class PASCALIMPLEMENTATION TDBDisjunctDaySource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	TDateCollection* FDates;
	bool FAutoHeaderUpdate;
	AnsiString FDateFormat;
	int FNumberOfResources;
	TDBDisjunctDayMode FDisjunctDayMode;
	void __fastcall ConfigurePlanner(void);
	void __fastcall SetDates(const TDateCollection* Value);
	void __fastcall SetNumberOfResources(const int Value);
	void __fastcall SetMode(const TDBDisjunctDayMode Value);
	
public:
	__fastcall virtual TDBDisjunctDaySource(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBDisjunctDaySource(void);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall PlannerChanged(void);
	virtual void __fastcall MapItemTimeOnPlanner(Planner::TPlannerItem* APlannerItem);
	virtual System::TDateTime __fastcall PosToDay(int Pos);
	virtual int __fastcall PosToRes(int Pos);
	int __fastcall DateToPos(int Res, System::TDateTime dt);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property AnsiString DateFormat = {read=FDateFormat, write=FDateFormat};
	__property TDateCollection* Dates = {read=FDates, write=SetDates};
	__property TDBDisjunctDayMode Mode = {read=FDisjunctDayMode, write=SetMode, default=0};
	__property int NumberOfResources = {read=FNumberOfResources, write=SetNumberOfResources, default=1};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
};


class DELPHICLASS TDBActiveDaySource;
class PASCALIMPLEMENTATION TDBActiveDaySource : public TDBItemSource 
{
	typedef TDBItemSource inherited;
	
private:
	TDBDayMode FMode;
	System::TDateTime FDay;
	bool FAutoHeaderUpdate;
	AnsiString FDateFormat;
	int FNumberOfDays;
	int FNumberOfResources;
	TResourceNameEvent FOnGetResourceName;
	void __fastcall SetDay(const System::TDateTime Value);
	void __fastcall SetMode(const TDBDayMode Value);
	void __fastcall SetNumberOfDays(const int Value);
	void __fastcall SetNumberOfResources(const int Value);
	void __fastcall ConfigurePlanner(int &Span);
	int __fastcall CalcItemPos(int DatePos, int ResourcePos);
	int __fastcall DaysToSpan(int Days);
	System::TDateTime __fastcall DayInSpan(int ADay);
	int __fastcall IDayToPos(System::TDateTime ADate);
	System::TDateTime __fastcall IPosToDay(int ADay);
	
public:
	__fastcall virtual TDBActiveDaySource(Classes::TComponent* AOwner);
	virtual void __fastcall SynchDBItems(void);
	virtual void __fastcall ReadDBItems(AnsiString UpdateKey);
	virtual void __fastcall WriteDBItem(void);
	virtual void __fastcall ReadDBItem(void);
	virtual void __fastcall AddDBItem(void);
	virtual void __fastcall GotoDBItem(void);
	virtual void __fastcall DeleteDBItem(Planner::TPlanner* APlanner);
	virtual void __fastcall ItemChanged(AnsiString DBKey);
	virtual void __fastcall Next(void);
	virtual void __fastcall Prev(void);
	virtual void __fastcall PlannerChanged(void);
	virtual System::TDateTime __fastcall PosToDay(int Pos);
	virtual int __fastcall PosToRes(int Pos);
	virtual void __fastcall MapItemTimeOnPlanner(Planner::TPlannerItem* APlannerItem);
	
__published:
	__property bool AutoHeaderUpdate = {read=FAutoHeaderUpdate, write=FAutoHeaderUpdate, default=0};
	__property AnsiString DateFormat = {read=FDateFormat, write=FDateFormat};
	__property System::TDateTime Day = {read=FDay, write=SetDay};
	__property TDBDayMode Mode = {read=FMode, write=SetMode, nodefault};
	__property int NumberOfDays = {read=FNumberOfDays, write=SetNumberOfDays, default=7};
	__property int NumberOfResources = {read=FNumberOfResources, write=SetNumberOfResources, default=1};
	__property RecurrencyField ;
	__property MinTimeField ;
	__property MaxTimeField ;
	__property TResourceNameEvent OnGetResourceName = {read=FOnGetResourceName, write=FOnGetResourceName};
public:
	#pragma option push -w-inl
	/* TDBItemSource.Destroy */ inline __fastcall virtual ~TDBActiveDaySource(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBPlanner;
class PASCALIMPLEMENTATION TDBPlanner : public Planner::TPlanner 
{
	typedef Planner::TPlanner inherited;
	
private:
	TItemSource* FItemSource;
	THTMLTemplateDataEvent FOnGetHTMLTemplateData;
	THTMLTemplateEvent FOnGetHTMLTemplate;
	void __fastcall SetItemSource(const TItemSource* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall NextClick(System::TObject* Sender);
	virtual void __fastcall PrevClick(System::TObject* Sender);
	virtual void __fastcall ItemMoved(Planner::TPlannerItem* APlannerItem, int FromBegin, int FromEnd, int FromPos, int ToBegin, int ToEnd, int ToPos);
	virtual void __fastcall ItemSized(Planner::TPlannerItem* APlannerItem, int FromBegin, int FromEnd, int ToBegin, int ToEnd);
	virtual void __fastcall ItemEdited(Planner::TPlannerItem* Item);
	virtual void __fastcall ItemSelected(Planner::TPlannerItem* Item);
	virtual void __fastcall MoveResource(int FromPos, int ToPos);
	void __fastcall LoadItems(void);
	void __fastcall ClearDBKey(AnsiString Key);
	virtual void __fastcall MapItemTimeOnPlanner(Planner::TPlannerItem* APlannerItem);
	virtual int __fastcall GetVersionNr(void);
	virtual AnsiString __fastcall GetVersionString();
	virtual bool __fastcall IsDBAware(void);
	virtual AnsiString __fastcall HTMLDBReplace(Planner::TPlannerItem* APlannerItem, System::TObject* Data);
	virtual void __fastcall DoGetHTMLTemplate(Planner::TPlannerItem* APlannerItem, AnsiString &HTMLTemplate);
	virtual void __fastcall DoGetHTMLTemplateData(Planner::TPlannerItem* APlannerItem, Db::TField* Field, AnsiString HTMLTag, AnsiString &Value);
	
public:
	__fastcall virtual TDBPlanner(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBPlanner(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Refresh(void);
	virtual void __fastcall FreeItem(Planner::TPlannerItem* APlannerItem);
	virtual void __fastcall UpdateItem(Planner::TPlannerItem* APlannerItem);
	virtual void __fastcall RefreshItem(Planner::TPlannerItem* APlannerItem);
	virtual Planner::TPlannerItem* __fastcall CreateItem(void);
	virtual Planner::TPlannerItem* __fastcall CreateItemAtSelection(void);
	Planner::TPlannerItem* __fastcall CreateNonDBItem(void);
	Planner::TPlannerItem* __fastcall CreateNonDBItemAtSelection(void);
	virtual System::TDateTime __fastcall PosToDay(int Pos);
	
__published:
	__property TItemSource* ItemSource = {read=FItemSource, write=SetItemSource};
	__property THTMLTemplateDataEvent OnGetHTMLTemplateData = {read=FOnGetHTMLTemplateData, write=FOnGetHTMLTemplateData};
	__property THTMLTemplateEvent OnGetHTMLTemplate = {read=FOnGetHTMLTemplate, write=FOnGetHTMLTemplate};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TDBPlanner(HWND ParentWindow) : Planner::TPlanner(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Word CDaysInMonth[12];
static const Shortint MAJ_VER = 0x3;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;
#define DATE_VER "Nov, 2012"

}	/* namespace Dbplanner */
using namespace Dbplanner;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbplanner