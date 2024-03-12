// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothcalendargroup.pas' rev: 11.00

#ifndef AdvsmoothcalendargroupHPP
#define AdvsmoothcalendargroupHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Contnrs.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advsmoothcalendar.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dateutils.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothcalendargroup
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TAdvSmoothCalGroupMonthChangedEvent)(System::TObject* Sender, int AMonth, int APrevMonth);

class DELPHICLASS TAdvSmoothCalGroup;
class DELPHICLASS TAdvSmoothCalendarGroup;
typedef void __fastcall (__closure *TAdvSmoothCalendarGroupCustomizeEvent)(System::TObject* Sender, Advsmoothcalendar::TAdvSmoothCalendar* ACalendar, int AMonth, int AYear);

typedef void __fastcall (__closure *TAdvSmoothCalendarGroupArrowEvent)(System::TObject* Sender, bool &Allow);

class PASCALIMPLEMENTATION TAdvSmoothCalendarGroup : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool ResetMultiSelect;
	TAdvSmoothCalGroup* cal;
	bool FMetroStyle;
	System::TDateTime FStartDate;
	System::TDateTime FEndDate;
	bool FBlockSelection;
	bool FBlockEvent;
	Advsmoothcalendar::TDisjunctDateTimeArray* FDisjunctArray;
	int FUpdateCount;
	Advstyleif::TTMSStyle FStyle;
	bool FDesignTime;
	Contnrs::TObjectList* FCalendarDisplayList;
	int FRows;
	int FColumns;
	int FYear;
	int FMonth;
	Gdipfill::TGDIPFill* FFill;
	TAdvSmoothCalendarGroupCustomizeEvent FOnCustomizeCalendar;
	Advsmoothcalendar::TAdvSmoothCalendarDateFillEvent FOnDateFill;
	bool FMultiSelect;
	bool FDisjunctDaySelect;
	Advsmoothcalendar::TAdvSmoothCalendarDateSelectedEvent FOnSelectDate;
	Advsmoothcalendar::TAdvSmoothCalendarMultiDateSelectedEvent FOnSelectMultiDate;
	Advsmoothcalendar::TAdvSmoothCalendarDisjunctDateSelectedEvent FOnSelectDisjunctDate;
	TAdvSmoothCalendarGroupArrowEvent FOnArrowLeftClick;
	TAdvSmoothCalendarGroupArrowEvent FOnArrowRightClick;
	bool FArrowLeft;
	bool FArrowRight;
	System::TDateTime FDate;
	Advsmoothcalendar::TAdvSmoothCalendarDateHintEvent FOnDateHint;
	Advsmoothcalendar::TAdvSmoothCalendarStatusClickEvent FOnDateStatusClick;
	Advsmoothcalendar::TAdvSmoothCalendarDateTextEvent FOnDateText;
	Advsmoothcalendar::TAdvSmoothCalendarGetDateStatusEvent FOnDateStatus;
	Advsmoothcalendar::TAdvSmoothCalendarGetTextEvent FOnGetHeaderText;
	Advsmoothcalendar::TAdvSmoothCalendarGetTextEvent FOnGetFooterText;
	bool FShowFocus;
	Gdipfill::TGDIPStatus* FStatusAppearance;
	Advsmoothcalendar::TAdvSmoothCalendarDateAppearance* FDateAppearance;
	TDate FMaxDate;
	TDate FMinDate;
	Advsmoothcalendar::TAdvSmoothCalendarHeader* FHeader;
	Advsmoothcalendar::TAdvSmoothCalendarFooter* FFooter;
	Controls::TCursor FStatusCursor;
	Graphics::TColor FFocusColor;
	bool FShowCurrentDate;
	bool FSingleFillSelection;
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetColumns(const int Value);
	void __fastcall SetRows(const int Value);
	void __fastcall SetMonth(const int Value);
	void __fastcall SetYear(const int Value);
	void __fastcall SetFill(const Gdipfill::TGDIPFill* Value);
	void __fastcall SetDisjunctDaySelect(const bool Value);
	void __fastcall SetMultiSelect(const bool Value);
	void __fastcall SetArrowLeft(const bool Value);
	void __fastcall SetArrowRight(const bool Value);
	void __fastcall SetDate(const System::TDateTime Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetEndDate(const System::TDateTime Value);
	void __fastcall SetStartDate(const System::TDateTime Value);
	void __fastcall SetDateAppearance(const Advsmoothcalendar::TAdvSmoothCalendarDateAppearance* Value);
	void __fastcall SetStatusAppearance(const Gdipfill::TGDIPStatus* Value);
	bool __fastcall DoStoreMaxDate(void);
	bool __fastcall DoStoreMinDate(void);
	void __fastcall SetMaxDate(const TDate Value);
	void __fastcall SetMinDate(const TDate Value);
	void __fastcall SetFooter(const Advsmoothcalendar::TAdvSmoothCalendarFooter* Value);
	void __fastcall SetHeader(const Advsmoothcalendar::TAdvSmoothCalendarHeader* Value);
	int __fastcall GetVersionNr(void);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetFocusColor(const Graphics::TColor Value);
	void __fastcall SetShowCurrentDate(const bool Value);
	void __fastcall SetSingleFillSelection(const bool Value);
	
protected:
	DYNAMIC void __fastcall DoEnter(void);
	void __fastcall AppearanceChanged(System::TObject* Sender);
	void __fastcall FillChanged(System::TObject* Sender);
	HIDESBASE void __fastcall Changed(void);
	void __fastcall UpdateCalendars(void);
	void __fastcall CreateCalendars(void);
	void __fastcall ArrowLeftClick(System::TObject* Sender);
	void __fastcall ArrowRightClick(System::TObject* Sender);
	void __fastcall CalendarMonthChanged(System::TObject* Sender, int AMonth, int APrevMonth);
	void __fastcall CalendarDateStatus(System::TObject* Sender, System::TDateTime Date, AnsiString &StatusMessage, Gdipfill::TGDIPStatus* Fill, int &OffsetX, int &OffsetY);
	void __fastcall CalendarDateStatusClick(System::TObject* Sender, AnsiString StatusMessage, System::TDateTime Date);
	void __fastcall CalendarGetDateText(System::TObject* Sender, System::TDateTime Date, Graphics::TFont* AFont, AnsiString &AText);
	void __fastcall CalendarGetHeaderText(System::TObject* Sender, AnsiString &AText);
	void __fastcall CalendarGetFooterText(System::TObject* Sender, AnsiString &AText);
	void __fastcall CalendarDateHint(System::TObject* Sender, System::TDateTime Date, AnsiString &hint);
	void __fastcall CalendarDateModeChanged(System::TObject* Sender, Advsmoothcalendar::TAdvSmoothCalendarDateMode Mode, Advsmoothcalendar::TAdvSmoothCalendarDateMode ModeTo, bool &allow);
	void __fastcall CalendarDateFill(System::TObject* Sender, Gdipfill::TGDIPFill* AFill, Graphics::TFont* AFont, System::TDateTime Date, Advsmoothcalendar::TAdvSmoothCalendarDateKind DateKind);
	void __fastcall CalendarSelectDate(System::TObject* Sender, Advsmoothcalendar::TAdvSmoothCalendarDateMode Mode, System::TDateTime Date);
	void __fastcall CalendarSelectMultiDate(System::TObject* Sender, Advsmoothcalendar::TAdvSmoothCalendarDateMode Mode, System::TDateTime StartDate, System::TDateTime EndDate);
	void __fastcall CalendarSelectDisjunctDate(System::TObject* Sender, Advsmoothcalendar::TAdvSmoothCalendarDateMode Mode, Advsmoothcalendar::TDisjunctDateTimeArray* ADisjunctDates);
	
public:
	Advsmoothcalendar::TDisjunctDateTimeArray* __fastcall GetDisjunctDays(void);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	__fastcall virtual TAdvSmoothCalendarGroup(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvSmoothCalendarGroup(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall Loaded(void);
	__property Contnrs::TObjectList* Calendars = {read=FCalendarDisplayList, write=FCalendarDisplayList};
	virtual void __fastcall Paint(void);
	void __fastcall NextMonth(void);
	void __fastcall PreviousMonth(void);
	void __fastcall NextYear(void);
	void __fastcall PreviousYear(void);
	void __fastcall WholeYear(int AYear = 0xffffffff);
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	__property Advsmoothcalendar::TDisjunctDateTimeArray* DisjunctDates = {read=GetDisjunctDays};
	Advsmoothcalendar::TAdvSmoothCalendar* __fastcall GetCalendarByDate(TDate ADate);
	void __fastcall SelectDisjunctDates(System::TDateTime * ADisjunctDates, const int ADisjunctDates_Size);
	__property System::TDateTime Date = {read=FDate, write=SetDate};
	__property System::TDateTime StartDate = {read=FStartDate, write=SetStartDate};
	__property System::TDateTime EndDate = {read=FEndDate, write=SetEndDate};
	
__published:
	__property bool SingleFillSelection = {read=FSingleFillSelection, write=SetSingleFillSelection, default=1};
	__property Advsmoothcalendar::TAdvSmoothCalendarHeader* Header = {read=FHeader, write=SetHeader};
	__property Advsmoothcalendar::TAdvSmoothCalendarFooter* Footer = {read=FFooter, write=SetFooter};
	__property bool ArrowLeft = {read=FArrowLeft, write=SetArrowLeft, default=1};
	__property bool ArrowRight = {read=FArrowRight, write=SetArrowRight, default=1};
	__property TAdvSmoothCalendarGroupArrowEvent OnArrowLeftClick = {read=FOnArrowLeftClick, write=FOnArrowLeftClick};
	__property TAdvSmoothCalendarGroupArrowEvent OnArrowRightClick = {read=FOnArrowRightClick, write=FOnArrowRightClick};
	__property Advsmoothcalendar::TAdvSmoothCalendarDateSelectedEvent OnSelectDate = {read=FOnSelectDate, write=FOnSelectDate};
	__property Advsmoothcalendar::TAdvSmoothCalendarMultiDateSelectedEvent OnSelectMultiDate = {read=FOnSelectMultiDate, write=FOnSelectMultiDate};
	__property Advsmoothcalendar::TAdvSmoothCalendarDisjunctDateSelectedEvent OnSelectDisjunctDate = {read=FOnSelectDisjunctDate, write=FOnSelectDisjunctDate};
	__property Advsmoothcalendar::TAdvSmoothCalendarDateFillEvent OnDateFill = {read=FOnDateFill, write=FOnDateFill};
	__property TAdvSmoothCalendarGroupCustomizeEvent OnCustomizeCalendar = {read=FOnCustomizeCalendar, write=FOnCustomizeCalendar};
	__property Gdipfill::TGDIPFill* Fill = {read=FFill, write=SetFill};
	__property int Month = {read=FMonth, write=SetMonth, nodefault};
	__property int Year = {read=FYear, write=SetYear, nodefault};
	__property int Columns = {read=FColumns, write=SetColumns, default=3};
	__property int Rows = {read=FRows, write=SetRows, default=1};
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property bool MultiSelect = {read=FMultiSelect, write=SetMultiSelect, default=0};
	__property bool DisjunctDaySelect = {read=FDisjunctDaySelect, write=SetDisjunctDaySelect, default=0};
	__property Visible  = {default=1};
	__property ShowHint ;
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property bool ShowCurrentDate = {read=FShowCurrentDate, write=SetShowCurrentDate, default=1};
	__property Graphics::TColor FocusColor = {read=FFocusColor, write=SetFocusColor, default=0};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property TDate MaxDate = {read=FMaxDate, write=SetMaxDate, stored=DoStoreMaxDate};
	__property TDate MinDate = {read=FMinDate, write=SetMinDate, stored=DoStoreMinDate};
	__property Controls::TCursor StatusCursor = {read=FStatusCursor, write=FStatusCursor, default=-21};
	__property Advsmoothcalendar::TAdvSmoothCalendarDateAppearance* DateAppearance = {read=FDateAppearance, write=SetDateAppearance};
	__property Gdipfill::TGDIPStatus* StatusAppearance = {read=FStatusAppearance, write=SetStatusAppearance};
	__property Advsmoothcalendar::TAdvSmoothCalendarGetTextEvent OnGetHeaderText = {read=FOnGetHeaderText, write=FOnGetHeaderText};
	__property Advsmoothcalendar::TAdvSmoothCalendarGetTextEvent OnGetFooterText = {read=FOnGetFooterText, write=FOnGetFooterText};
	__property Advsmoothcalendar::TAdvSmoothCalendarDateHintEvent OnDateHint = {read=FOnDateHint, write=FOnDateHint};
	__property Advsmoothcalendar::TAdvSmoothCalendarDateTextEvent OnGetDateText = {read=FOnDateText, write=FOnDateText};
	__property Advsmoothcalendar::TAdvSmoothCalendarGetDateStatusEvent OnDateStatus = {read=FOnDateStatus, write=FOnDateStatus};
	__property Advsmoothcalendar::TAdvSmoothCalendarStatusClickEvent OnDateStatusClick = {read=FOnDateStatusClick, write=FOnDateStatusClick};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property OnCanResize ;
	__property OnConstrainedResize ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGetSiteInfo ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnResize ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
	__property PopupMenu ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnMouseDown ;
	__property OnClick ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothCalendarGroup(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSTones()
	{
		Advstyleif::_di_ITMSTones intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSTones*(void) { return (ITMSTones*)&__ITMSTones; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSStyle()
	{
		Advstyleif::_di_ITMSStyle intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSStyle*(void) { return (ITMSStyle*)&__ITMSStyle; }
	#endif
	
};


class PASCALIMPLEMENTATION TAdvSmoothCalGroup : public Advsmoothcalendar::TAdvSmoothCalendar 
{
	typedef Advsmoothcalendar::TAdvSmoothCalendar inherited;
	
private:
	TAdvSmoothCalendarGroup* FGroup;
	TAdvSmoothCalGroupMonthChangedEvent FOnChangeCalendarMonth;
	
protected:
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall SetFocusDate(const System::TDateTime Value);
	
__published:
	__property TAdvSmoothCalGroupMonthChangedEvent OnChangeCalendarMonth = {read=FOnChangeCalendarMonth, write=FOnChangeCalendarMonth};
public:
	#pragma option push -w-inl
	/* TAdvSmoothCalendar.Create */ inline __fastcall virtual TAdvSmoothCalGroup(Classes::TComponent* AOwner) : Advsmoothcalendar::TAdvSmoothCalendar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothCalendar.Destroy */ inline __fastcall virtual ~TAdvSmoothCalGroup(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothCalGroup(HWND ParentWindow) : Advsmoothcalendar::TAdvSmoothCalendar(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TWinCtrl;
class PASCALIMPLEMENTATION TWinCtrl : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
public:
	void __fastcall PaintCtrls(HDC DC, Controls::TControl* First);
public:
	#pragma option push -w-inl
	/* TWinControl.Create */ inline __fastcall virtual TWinCtrl(Classes::TComponent* AOwner) : Controls::TWinControl(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TWinCtrl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TWinCtrl(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;

}	/* namespace Advsmoothcalendargroup */
using namespace Advsmoothcalendargroup;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothcalendargroup
