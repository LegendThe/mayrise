// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Calpanel.pas' rev: 11.00

#ifndef CalpanelHPP
#define CalpanelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Calpanel
{
//-- type declarations -------------------------------------------------------
typedef AnsiString TDayStr;

typedef AnsiString TMonthStr;

typedef AnsiString TDayArray[14];

typedef AnsiString TMonthArray[12];

typedef void __fastcall (__closure *TDaySelectEvent)(System::TObject* Sender, System::TDateTime SelDate);

typedef void __fastcall (__closure *TDateChangeEvent)(System::TObject* Sender, System::TDateTime origDate, System::TDateTime newDate);

typedef void __fastcall (__closure *TMonthChangeEvent)(System::TObject* Sender, System::TDateTime origDate, System::TDateTime newDate);

typedef void __fastcall (__closure *TGetDateEvent)(System::TObject* Sender, System::TDateTime dt, bool &isEvent);

typedef void __fastcall (__closure *TGetDateEventHint)(System::TObject* Sender, System::TDateTime dt, bool &isEvent, AnsiString &EventHint);

class DELPHICLASS TYearStartAt;
class PASCALIMPLEMENTATION TYearStartAt : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	int FStartDay;
	int FStartMonth;
	void __fastcall SetStartDay(int d);
	void __fastcall SetStartMonth(int m);
	
public:
	__fastcall TYearStartAt(void);
	__fastcall virtual ~TYearStartAt(void);
	
__published:
	__property int StartDay = {read=FStartDay, write=SetStartDay, nodefault};
	__property int StartMonth = {read=FStartMonth, write=SetStartMonth, nodefault};
};


class DELPHICLASS TNameofMonths;
class PASCALIMPLEMENTATION TNameofMonths : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FJanuary;
	AnsiString FFebruary;
	AnsiString FMarch;
	AnsiString FApril;
	AnsiString FMay;
	AnsiString FJune;
	AnsiString FJuly;
	AnsiString FAugust;
	AnsiString FSeptember;
	AnsiString FOctober;
	AnsiString FNovember;
	AnsiString FDecember;
	
public:
	__fastcall TNameofMonths(void);
	__fastcall virtual ~TNameofMonths(void);
	AnsiString __fastcall GetMonth(int i);
	
__published:
	__property AnsiString January = {read=FJanuary, write=FJanuary};
	__property AnsiString February = {read=FFebruary, write=FFebruary};
	__property AnsiString March = {read=FMarch, write=FMarch};
	__property AnsiString April = {read=FApril, write=FApril};
	__property AnsiString May = {read=FMay, write=FMay};
	__property AnsiString June = {read=FJune, write=FJune};
	__property AnsiString July = {read=FJuly, write=FJuly};
	__property AnsiString August = {read=FAugust, write=FAugust};
	__property AnsiString September = {read=FSeptember, write=FSeptember};
	__property AnsiString October = {read=FOctober, write=FOctober};
	__property AnsiString November = {read=FNovember, write=FNovember};
	__property AnsiString December = {read=FDecember, write=FDecember};
};


class DELPHICLASS TNameofDays;
class PASCALIMPLEMENTATION TNameofDays : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FMonday;
	AnsiString FTuesday;
	AnsiString FWednesday;
	AnsiString FThursday;
	AnsiString FFriday;
	AnsiString FSaturday;
	AnsiString FSunday;
	
public:
	__fastcall TNameofDays(void);
	__fastcall virtual ~TNameofDays(void);
	AnsiString __fastcall GetDay(int i);
	
__published:
	__property AnsiString Monday = {read=FMonday, write=FMonday};
	__property AnsiString Tuesday = {read=FTuesday, write=FTuesday};
	__property AnsiString Wednesday = {read=FWednesday, write=FWednesday};
	__property AnsiString Thursday = {read=FThursday, write=FThursday};
	__property AnsiString Friday = {read=FFriday, write=FFriday};
	__property AnsiString Saturday = {read=FSaturday, write=FSaturday};
	__property AnsiString Sunday = {read=FSunday, write=FSunday};
};


class DELPHICLASS TCalPanel;
class PASCALIMPLEMENTATION TCalPanel : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	int xoffset;
	int yoffset;
	System::TDateTime seldate;
	System::TDateTime thedate;
	System::TDateTime initdate;
	bool showhintassigned;
	bool showhintbusy;
	#pragma pack(push,1)
	Types::TPoint fLastHintPos;
	#pragma pack(pop)
	Word dx;
	Word dy;
	Word lblx1;
	Word lblx2;
	Graphics::TFont* fFont;
	int xposin;
	int yposin;
	bool flgl;
	bool flgr;
	bool flgla;
	AnsiString labels;
	AnsiString eventhint;
	bool FMonthSelect;
	bool FEventHints;
	Graphics::TColor FEventDayColor;
	TYearStartAt* FYearStartAt;
	TNameofDays* FNameofDays;
	TNameofMonths* FNameofMonths;
	Graphics::TColor FTextcolor;
	Graphics::TColor FSelectcolor;
	Graphics::TColor FInverscolor;
	Graphics::TColor FWeekendcolor;
	bool FShowWeeks;
	int FStartDay;
	Word FDay;
	Word FMonth;
	Word FYear;
	bool FDayMode;
	bool FYearChanged;
	TDaySelectEvent FOnDaySelect;
	Classes::TNotifyEvent FOnMonthSelect;
	TGetDateEvent FOnGetDateEvent;
	TGetDateEventHint FOnGetDateEventHint;
	TDateChangeEvent FOnDateChange;
	TMonthChangeEvent FOnMonthChange;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	MESSAGE void __fastcall CMWantSpecialKey(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	void __fastcall SetLabel(Word mo, Word ye);
	void __fastcall ChangeMonth(int dx);
	void __fastcall ChangeYear(int dx);
	Word __fastcall DaysInMonth(Word mo, Word ye);
	int __fastcall DateToWeek(Word da, Word mo, Word ye);
	void __fastcall PaintArrowLeft(void);
	void __fastcall PaintArrowRight(void);
	void __fastcall PaintLabel(void);
	void __fastcall PaintProc(void);
	void __fastcall ToggleDayMode(void);
	void __fastcall SetTextColor(Graphics::TColor aColor);
	void __fastcall SetInversColor(Graphics::TColor aColor);
	void __fastcall SetWeekendColor(Graphics::TColor aColor);
	void __fastcall SetSelectColor(Graphics::TColor aColor);
	HIDESBASE void __fastcall FontChanged(System::TObject* Sender);
	HIDESBASE void __fastcall SetFont(Graphics::TFont* value);
	void __fastcall SetNameofDays(TNameofDays* aNameofDays);
	void __fastcall SetNameofMonths(TNameofMonths* aNameofMonths);
	void __fastcall SetShowWeeks(bool aValue);
	void __fastcall SetStartDay(int avalue);
	void __fastcall SetCalDay(Word avalue);
	void __fastcall SetCalMonth(Word avalue);
	void __fastcall SetCalYear(Word avalue);
	Word __fastcall GetCalDay(void);
	Word __fastcall GetCalMonth(void);
	Word __fastcall GetCalYear(void);
	void __fastcall SetDayMode(bool aValue);
	System::TDateTime __fastcall XYToDate(int X, int Y, bool change);
	Types::TPoint __fastcall DateToXY(System::TDateTime dt);
	void __fastcall ShowHintProc(AnsiString &HintStr, bool &CanShow, Forms::THintInfo &HintInfo);
	System::TDateTime __fastcall GetDateProc(void);
	void __fastcall SetDateProc(const System::TDateTime Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	virtual int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TCalPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TCalPanel(void);
	void __fastcall SetDate(Word da, Word mo, Word ye);
	void __fastcall GetDate(Word &da, Word &mo, Word &ye);
	__property System::TDateTime Date = {read=GetDateProc, write=SetDateProc};
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall DoEnter(void);
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall Loaded(void);
	
__published:
	__property Align  = {default=0};
	__property Constraints ;
	__property Graphics::TColor TextColor = {read=FTextcolor, write=SetTextColor, nodefault};
	__property Graphics::TColor SelectColor = {read=FSelectcolor, write=SetSelectColor, nodefault};
	__property Graphics::TColor InversColor = {read=FInverscolor, write=SetInversColor, nodefault};
	__property Graphics::TColor WeekendColor = {read=FWeekendcolor, write=SetWeekendColor, nodefault};
	__property TNameofDays* NameofDays = {read=FNameofDays, write=SetNameofDays};
	__property TNameofMonths* NameofMonths = {read=FNameofMonths, write=SetNameofMonths};
	__property TYearStartAt* YearStartAt = {read=FYearStartAt, write=FYearStartAt};
	__property bool ShowWeeks = {read=FShowWeeks, write=SetShowWeeks, nodefault};
	__property int StartDay = {read=FStartDay, write=SetStartDay, nodefault};
	__property bool DayMode = {read=FDayMode, write=SetDayMode, nodefault};
	__property Word Day = {read=GetCalDay, write=SetCalDay, default=1};
	__property Word Month = {read=GetCalMonth, write=SetCalMonth, default=1};
	__property Word Year = {read=GetCalYear, write=SetCalYear, default=1};
	__property bool MonthSelect = {read=FMonthSelect, write=FMonthSelect, nodefault};
	__property BevelInner  = {default=0};
	__property BevelOuter  = {default=2};
	__property BevelWidth  = {default=1};
	__property BorderWidth  = {default=0};
	__property BorderStyle  = {default=0};
	__property Color  = {default=-16777201};
	__property ShowHint ;
	__property ParentShowHint  = {default=1};
	__property bool EventHints = {read=FEventHints, write=FEventHints, nodefault};
	__property Graphics::TColor EventDayColor = {read=FEventDayColor, write=FEventDayColor, nodefault};
	__property TDaySelectEvent OnDaySelect = {read=FOnDaySelect, write=FOnDaySelect};
	__property Classes::TNotifyEvent OnMonthSelect = {read=FOnMonthSelect, write=FOnMonthSelect};
	__property TGetDateEvent OnGetDateHint = {read=FOnGetDateEvent, write=FOnGetDateEvent};
	__property TGetDateEventHint OnGetDateHintString = {read=FOnGetDateEventHint, write=FOnGetDateEventHint};
	__property TMonthChangeEvent OnMonthChange = {read=FOnMonthChange, write=FOnMonthChange};
	__property TDateChangeEvent OnDateChange = {read=FOnDateChange, write=FOnDateChange};
	__property TabStop  = {default=0};
	__property TabOrder  = {default=-1};
	__property Graphics::TFont* Font = {read=fFont, write=SetFont};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCalPanel(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE System::ResourceString _selstr;
#define Calpanel_selstr System::LoadResourceString(&Calpanel::_selstr)
extern PACKAGE Word adaysinmonth[13];
extern PACKAGE SmallString<5>  monames[12];
static const Shortint labelx = 0x1e;
static const Shortint labelw = 0x41;
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Calpanel */
using namespace Calpanel;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Calpanel
