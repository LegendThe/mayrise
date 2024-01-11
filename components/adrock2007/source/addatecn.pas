unit addatecn;

{* **** BEGIN LICENSE BLOCK *****						*}
{* Version: MPL 1.1								*}
{*										*}
{* The contents of this file are subject to the Mozilla Public License Version	*}
{* 1.1 (the "License"); you may not use this file except in compliance with	*}
{* the License. You may obtain a copy of the License at				*}
{* http://www.mozilla.org/MPL/							*}
{*										*}
{* Software distributed under the License is distributed on an "AS IS" basis,	*}
{* WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License	*}
{* for the specific language governing rights and limitations under the		*}
{* License.									*}
{*										*}
{* The Original Code is Adrock Software - DateTime Suite.			*}
{*										*}
{* The Initial Developer of the Original Code is				*}
{* Adrock Software - BYTE Computer & Software Ltd.				*}
{* Portions created by the Initial Developer are Copyright (C) 1996-2002	*}
{* the Initial Developer. All Rights Reserved.					*}
{*										*}
{* Contributor(s):								*}
{*										*}
{* ***** END LICENSE BLOCK ***** *						*}

interface

Uses sysUtils, AdDDFCl;

{$I *.VER} { Include Version Information }

Const
  { If the Date Input Style is set to disDayMonth then depending if deoAllowFeb29OnDayMonthInput is in the options}
  { the year for the control will be set to a leap year or not }
  DAY_MONTH_YEARDEFAULT_ALLOW_FEB29 = 1976;{ Leap Year}
  DAY_MONTH_YEARDEFAULT_NO_NOT_ALLOW_FEB29 = 1975; { Not a Leap Year}

  { Default width and height of the calendar - Not Used?? }
  MAX_SUBFIELD_SEGMENTS = 8;
  PREV_SUB_FIELD        : Boolean = FALSE;
  NEXT_SUB_FIELD        : Boolean = TRUE;

  TEXTWIDTH_EXTRAPIXELS : Integer = 2;
  CALENDAR_WIDTH        : Integer = 200;
  CALENDAR_HEIGHT       : Integer = 130;

  { Define some constants for Date Errors }
  TimeIsBad             : INteger = -4;
  DateRangeError        : INteger = -3;
  DateIsNil             : INteger = -2;
  DateIsBad             : INteger = -1;

  { Delay before the repeat action starts on the month/year buttons }
  InitRepeatPause       : INteger = 400;
  { Delay between each repeat action for the month/year buttons }
  RepeatPause           : INteger = 80;

  { Some defaults for the calendar edge - Will be changed }
  BORDER                : INteger = 2;
  TEXT_INDENT           : INteger = 2;
  BUTTON_WIDTH          : INteger = 16;
  YEAR_BUTTON_WIDTH     : INteger = 13;

  { Constants for the button redraw mode }
  DRAW_ALL_BUTTONS                 : INteger = 0;
  DRAW_PREV_MONTH_BUTTON           : INteger = 1;
  DRAW_NEXT_MONTH_BUTTON           : INteger = 2;
  DRAW_PREV_YEAR_BUTTON            : INteger = 3;
  DRAW_NEXT_YEAR_BUTTON            : INteger = 4;
  DRAW_TODAY                       : INteger = 5;
  DRAW_CLEAR                       : INteger = 6;

  ADDATETM_NOCALSET                : Word = 54000;
  ADDATETM_INVALIDCOPYDATE         : Word = 54001;
  ADDATETM_INVALIDCOPYTIME         : Word = 54002;
  ADDATETM_INVALIDPASTEDATE        : Word = 54003;
  ADDATETM_DEFAULT_NILDATE         : Word = 54004;
  ADDATETM_DEFAULT_BADDATE         : Word = 54005;
  ADDATETM_DEFAULT_RANGE           : Word = 54006;
  ADDATETM_DEFAULT_NODATE          : Word = 54007;

  ADDATETM_BAD_DATE_NOTNIL         : Word = 54008;
  ADDATETM_BAD_DATE_MINMAXNIL      : Word = 54009;
  ADDATETM_BAD_DATE_GREATERMINNIL  : Word = 54010;
  ADDATETM_BAD_DATE_LESSMAXNIL     : Word = 54011;
  ADDATETM_THROUGH                 : Word = 54012;

  ADDATETM_BAD_DATE_YEARNOT0       : Word = 54013;
  ADDATETM_BAD_DATE_MONTH          : Word = 54014;
  ADDATETM_BAD_DATE_DAY            : Word = 54015;
  ADDATETM_BAD_THEDATE             : Word = 54016;
  ADDATETM_BAD_ISNOTVALID          : Word = 54017;
  ADDATETM_BAD_OPENCALCURRENTDATE  : Word = 54018;
  ADDATETM_BAD_THETIME             : Word = 54019;
  ADDATETM_BAD_OPENCALCURRENTTIME  : Word = 54020;
  ADDATETM_BAD_HOUR                : Word = 54021;
  ADDATETM_BAD_HOUR0To23           : Word = 54022;
  ADDATETM_BAD_HOUR1To12           : Word = 54023;
  ADDATETM_BAD_0TO59               : Word = 54024;
  ADDATETM_BAD_MINUTE              : Word = 54025;
  ADDATETM_BAD_SECOND              : Word = 54026;
  ADDATETM_BAD_CENTURY             : Word = 54027;
  ADDATETM_UNABLETOLOADBITMAP      : Word = 54028;
  ADDATETM_FROMRESOURCEFILE        : Word = 54030;
  ADDATETM_AMSTRING                : Word = 54031;
  ADDATETM_PMSTRING                : Word = 54032;

type
  {************************************************************************************************************************}
  TAdrockDateTimeIncrement      = (inc1, inc5, inc10, inc15, inc20,inc30);
  TAdrockDateTimeEditYearStyle  = (ys2Digit, ys4Digit);

  TAdrockDateTimeEditButtonBitmapType  = (bbtDefault, bbtCalendar, bbtDate);

  TAdrockDateTimeEditOption     = (deoCalendarRetainTime, deoUnderlineBadSegments, deoAllowFeb29OnDayMonthInput,
                                   deoUseTabAsArrows, deoUseTabBetweenDateTime, deoShowWhenNil, deoShowRangeErrors,
                                   deoShowButtonHint,
                                   deoAutoJumpSubFields, deoShowCheckBox);
  TAdrockDateTimeEditOptions    = set of TAdrockDateTimeEditOption;

  TAdrockCloseCalendarStyle     = (ccsNormal, ccsCancel);

  { GridStyle specifies the grid that gets drawn over the cells for the month }
  TAdrockCalendarGridStyle      = (cgNoGrid, cgCurrentMonth, cgWholeCalendar);

  { Position is the default opening position for the calendar, based on the parent control }
  TAdrockCalendarPosition       = (cpLeftBottom, cpLeftTop, cpRightBottom, cpRightTop);

  { Internal type used while calculating the opening position }
  TAdrockCalendarPositionTag    = (opLeftBottom, opLeftTop, opRightBottom, opRightTop, opLeft, opRight);

  { Specifies which button is down }
  TAdrockWhichButtonDown        = (wbdNone, wbdToday, wbdClear, wbdPrevMonthButton, wbdNextMonthButton,
                                     wbdPrevYearButton, wbdNextYearButton);

  { Specifies the style for the week day header either Short or Long }
  TAdrockCalendarWeekDayStyle   = (wdsShortWeekDay, wdsLongWeekDay);

  { Determines what buttons and date is displayed on the calendar }
  TAdrockShowOnCalendar         = (swNothing, swMonthArrows, swYearArrows, swMonthAndYearArrows, swAll);

  { Specifies the style of movement on the calendar, you can set tis to msWholeMonths
    to move a whole month, selecting a month & year not a day, month & year. }
  TAdrockCalendarSelectionStyle = (ssDays, ssWholeMonths);

  { Specifies the Input Style }
  TAdrockInputStyle       = (isFreeForm, isFreeFormDateTime, isDate, isDateKeepTime, isTime, isTimeKeepDate, isDateTime,
                             isDuration);

(*
  { Specifies the DATE input style for the control }
  TAdrockDateInputStyle   = (disWindows,
                             disWeekDayWindows,
                             disDMY,
                             disMDY,
                             disYMD,
                             disMonthYear,
                             disDayMonth,
                             disWeekDayDMY,
                             disWeekDayMDY,
                             disWeekDayYMD);

  { Specifies the TIME input style for the control }
  TAdrockTimeInputStyle   = (tisWindowsShort, { Windows Short Time Format 12 or 24  }
                             tisWindowsLong,  { Windows Long Time Format  12 or 24  }
                             tisHMS24,        { Hour Minute Second        - 24 Hour }
                             tisHM24,         { Hour Minute               - 24 Hour }
                             tisHMS12,        { Hour Minute Second        - 12 Hour }
                             tisHM12,         { Hour Minute               - 12 Hour }
                             tisHMSAMPM,      { Hour Minute Second AMPM   - 12 Hour }
                             tisHMAMPM        { Hour Minute AMPM          - 12 Hour }
                             );

  { Specifies the display style for the edit SubField when it does not have the focus }
  TAdrockDateTimeDateDisplayStyle = ( ddsWindowsShortDate,
                                      ddsWindowsLongDate,
                                      ddsDayMonth,
                                      ddsMonthYear,
                                      ddsDDMMYYYY,
                                      ddsMMDDYYYY,
                                      ddsYYYYMMDD,
                                      ddsDateInputStyle);
  TAdrockDateTimeTIMEDisplayStyle = ( tdsWindowsShortTime,
                                      tdsWindowsLongTime,
                                      tdsHMSAMPM,
                                      tdsHMS12,
                                      tdsHMS24,
                                      tdsHM12,
                                      tdsHM24,
                                      tdsHMAMPM,
                                      tdsTimeInputStyle);

  TAdrockDateTimeDisplayStyle =       (dtdsDateStyle,
                                       dtdsTimeStyle,
                                       dtdsDateAndTimeStyle,
                                       dtdsInputStyle,
                                       dtdsCustom);
*)

  { The method to open the calendar with the keyboard }
  TAdrockDateOpenStyle             = (osDisabled, osAltDownArrow);
  TAdrockDateWeekDayLen            = (wdlD, wdlDD, wdlDDD, wdlDDDD);

  TAdrockDateInitialSubFieldToEdit = (iefDefault, iefWeekday, iefDay, iefMonth, iefYear,iefHour,iefMinute,iefSecond,iefAMPM);
  TAdrockDateTimeEditSubField      = (SubFieldCheckBox, SubFieldWeekDay, SubFieldDay, SubFieldMonth, SubFieldYear,
                                      SubFieldHour, SubFieldMinute, SubFieldSecond, SubFieldAMPM);
  TAdrockDateTimeEditSubFields     = Set of TAdrockDateTimeEditSubField;

  TAdrockDateTimeEditSubFieldRec   = Record
                                       SubField : TAdrockDateTimeEditSubField;
                                       Position : SmallInt;
                                     end;
  TAdrockDateTimeEditSubFieldRecs  = array [0..MAX_SUBFIELD_SEGMENTS] of TAdrockDateTimeEditSubFieldRec;

  TAdrockRangeErrors               = (reOutOfRange, reTooSmall, reTooBig, reNone);
  TAdrockCalendarShowMonthAs       = (smNumber, smShortMonth, smLongMonth);
  TAdrockDateTimeEditOpenCloseMode = (ocmOpen, ocmClose);
  TAdrockCalendarButtonSize        = (bsButtonSmall, bsButtonLarge);
  TAdrockCalendarDrawArrow         = (daPrevMonth, daPrevYear, daNextMonth, daNextYear);

  { Events }

  { Event when the calendar is opened or closed }
  TAdrockDateTimeEditOpenClose     = procedure (Sender: TObject; Mode : TAdrockDateTimeEditOpenCloseMode) of object;
  { Event when the calendar requires a date and the user attempts to exit the control }
  TAdrockRequiredDateEvent         = procedure (Sender: TObject) of object;
  { Event when the date entered is invalid and the user attempts to exit the control }
  TAdrockInvalidDateEvent          = procedure (Sender: TObject; CurrentDateTime : TDateTime; DateString : String) of object;
  { Event when the date entered is invalid and the user attempts to exit the control }
  TAdrockInvalidTimeEvent          = procedure (Sender: TObject; CurrentDateTime : TDateTime; DateString : String) of object;
  { Event when the date entered is out of the valid range of dates and the user attempts to exit the control }
  TAdrockBadRangeEvent             = procedure (Sender: TObject; CurrentDate, MinDate, MaxDate : TDateTime;
                                     DefaultMessage : String; RangeError : TAdrockRangeErrors)of object;

  TAdrockDateCriteriaOptions = (dcoStandard,                  { Any valid date is acceptable                }
                                dcoNotNil,                    { Any valid date, but not a nil (Blank) date  }
                                dcoBetweenMinAndMaxAndNil,    { Between the min and max dates, and nil date }
                                dcoBetweenMinAndMaxNoNil,     { Between the min and max dates, no nil date  }
                                dcoGreaterEqualMinAndNil,     { must be >= min date, or a nil is allowed    }
                                dcoGreaterEqualMinNoNil,      { must be >= min date, no nil date is allowed }
                                dcoLessEqualMaxAndNil,        { must be <= max date, or a nil is allowed    }
                                dcoLessEqualMaxNoNil);        { must be <= max date, no nil date is allowed }

  TDateOrder = (doMDY, doDMY, doYMD);
  PDayTable = ^TDayTable;
  TDayTable = array[1..12] of Word;

implementation

end.
