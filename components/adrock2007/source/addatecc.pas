unit AdDateCC;

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

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Buttons,
  Forms, Dialogs, StdCtrls, ExtCtrls, clipbrd,

  {$IFDEF UNREGISTERED}
    ShellAPI,
  {$ENDIF}

  adbev,       { TAdrockBevel                   }
  AdDaHeCl,    { TAdrockDateHeaderClass         }
  AdDateCN,    { TAdrockDateTimeEdit Constants  }
  AdDDFCl,     { TAdrockDateFormatClass         }
  AdWeek,      { Week of Year                                      }
  AdMnth,      { DaysInMonth, IsLeap Year                          }
  AdDateDT,    { TAdrockDateTimeClass - Handles TDateTime Variables }
  AdCapt;      { TAdrockCaption and TAdrockSimpleCaption           }

{$B-}

Const
  DEFAULT_WIDTH  = 210;
  DEFAULT_HEIGHT = 210;
type
  TAdrockCalendarSettingsOption   = (opShowClearAndTodayButtons, opShowWeekNumbers, opShowRangeErrors,
                                     opMouseUpCloseCalendar,     opShowPrevNextMonth,
                                     opShowDate,                 opShowSaturdayColor,
                                     opShowSundayColor,          opShowAcceptCancelButtons);
  TAdrockCalendarSettingsOptions  = set of TAdrockCalendarSettingsOption;

  TAdrockChangeEventStyle         = (changeCalendarFace, changeNavigator, changeButtons);
  TAdrockChangeEventStyles        = set of TAdrockChangeEventStyle;

  TAdrockCalendarSettingsOnBeforeChangeEvent = TNotifyEvent;
  TAdrockCalendarSettingsOnAfterChangeEvent = TNotifyEvent;
  TAdrockCalendarSettingsOnDateChangeEvent  = TNotifyEvent;
  TAdrockDateTimeShowBevelAs = (sbasRectangle, sbasCircle);

  TCalendarSettingsChangeEvent = procedure (Sender : TObject; ChangeMode : TAdrockChangeEventStyles) of object;
  TAdrockShutCalendarEvent = Procedure(Sender : TObject; CloseStyle : TAdrockCloseCalendarStyle) of object;

  TAdrockCalendarColors = Class(TPersistent)
  private
    { Calendar color variables }
    fGridBackground          : TColor;
    fWeekDay                 : TColor;
    fGrid                    : TColor;
    fCaptionBack             : TColor;
    fNavigator               : TColor;
    fStatusBack              : TColor;
    fBack                    : TColor;
    fDateBevel               : TColor;
    fMonFri                  : TColor;
    fSaturday                : TColor;
    fSunday                  : TColor;
    fNormal                  : TColor;
    fHighlight               : TColor;
    fSelected                : TColor;
    fWeekNumber              : TColor;
    fWeekNumberBack          : TColor;
    fPrevNextMonth           : TColor;
    fRangeErrors             : TColor;
    fToday                   : TColor;
    fTodayRect               : TColor;
    fBadDate                 : TColor;
    fOnChange                : TNotifyEvent;

    Procedure SetNavigator(NewValue : TColor);
    Procedure SetGrid(NewValue : TColor);
    Procedure SetWeekDay(NewValue : TColor);
    Procedure SetGridBackground(NewValue : TColor);
    Procedure SetRangeErrors(NewValue : TColor);
    Procedure SetMonFri(NewValue : TColor);
    Procedure SetSaturday(NewValue : TColor);
    Procedure SetSunday(NewValue : TColor);
    Procedure SetNormal(NewValue : TColor);
    Procedure SetHighlight(NewValue : TColor);
    Procedure SetBack(NewValue : TColor);
    Procedure SetDateBevel(NewValue : TColor);
    Procedure SetPrevNextMonth(NewValue : TColor);
    Procedure SetWeekNumber(NewValue : TColor);
    Procedure SetWeekNumberBack(NewValue : TColor);
    Procedure SetCaptionBack(NewValue : TColor);
    Procedure SetStatusBack(NewValue : TColor);
    Procedure SetSelected(NewValue : TColor);
    Procedure SetToday(NewValue : TColor);
    Procedure SetTodayRect(NewValue : TColor);

    Function StoreNavigator : Boolean;
    Function StoreColorGrid : Boolean;
    Function StoreColorWeekDay : Boolean;
    Function StoreColorGridBackground : Boolean;
    Function StoreColorRangeErrors : Boolean;
    Function StoreColorMonFri : Boolean;
    Function StoreColorSaturday : Boolean;
    Function StoreColorSunday : Boolean;
    Function StoreColorNormal : Boolean;
    Function StoreColorHighlight : Boolean;
    Function StoreColorBack : Boolean;
    Function StoreColorDateBevel : Boolean;
    Function StoreColorPrevNextMonth : Boolean;
    Function StoreColorWeekNumber : Boolean;
    Function StoreColorWeekNumberBack : Boolean;
    Function StoreColorCaptionBack : Boolean;
    Function StoreColorStatusBack : Boolean;
    Function StoreColorSelected   : Boolean;
    Function StoreColorToday      : Boolean;
    Function StoreColorTodayRect  : Boolean;

    Procedure Change;
  public
    Constructor Create;
    Destructor  Destroy; override;
    Procedure   Assign(Source : TPersistent); override;

    Property OnChange : TNotifyEvent
             read  fOnChange
             Write fOnChange;

  Published
    { Colors used in the calendar }
    { The background color for the caption }
    Property CaptionBack      : TColor
             Read    fCaptionBack
             Write   SetCaptionBack
             Stored  StoreColorCaptionBack
             Default clBtnFace;

    { The Status Bar background color }
    Property StatusBack       : TColor
             Read    fStatusBack
             Write   SetStatusBack
             Stored  StoreColorStatusBack
             Default clBtnFace;

    Property TodayRect : TColor
             Read    fTodayRect
             Write   SetTodayRect
             Stored  StoreColorTodayRect
             Default clRed;

    Property Navigator : TColor
             Read    fNavigator
             Write   SetNavigator
             Stored  StoreNavigator
             Default clbtnFace;

    Property Today : TColor
             Read    fToday
             Write   SetToday
             Stored  StoreColorToday
             Default clRed;

    Property Grid             : TColor
             Read    fGrid
             Write   SetGrid
             Stored  StoreColorGrid
             Default clBtnShadow;

    Property WeekDay          : TColor
             Read    fWeekDay
             Write   SetWeekDay
             Stored  StoreColorWeekDay
             Default clWindowText;

    Property GridBackground   : TColor
             Read    fGridBackground
             Write   SetGridBackground
             Stored  StoreColorGridBackground
             Default clBtnFace;

    property RangeErrors      : TColor
             Read    fRangeErrors
             Write   SetRangeErrors
             Stored  StoreColorRangeErrors
             Default clOlive;

    Property MonFri           : TColor
             Read    fMonFri
             Write   SetMonFri
             Stored  StoreColorMonFri
             Default clMaroon;

    Property Saturday         : TColor
             Read    fSaturday
             Write   SetSaturday
             Stored  StoreColorSaturday
             Default clRed;

    Property Sunday           : TColor
             Read    fSunday
             Write   SetSunday
             Stored  StoreColorSunday
             Default clRed;

    Property Normal           : TColor
             Read    fNormal
             Write   SetNormal
             Stored  StoreColorNormal
             Default clBlack;

    Property Highlight        : TColor
             Read    fHighlight
             Write   SetHighlight
             Stored  StoreColorHighlight
             Default clPurple;

    Property Selected : TColor
             Read    fSelected
             Write   SetSelected
             Stored  StoreColorSelected
             Default clPurple;

    Property Back             : TColor
             Read    fBack
             Write   SetBack
             Stored  StoreColorBack
             Default clBtnFace;

    Property DateBevel        : TColor
             Read    fDateBevel
             Write   SetDateBevel
             Stored  StoreColorDateBevel
             Default clHighlight;

    Property PrevNextMonth    : TColor
             Read    fPrevNextMonth
             Write   SetPrevNextMonth
             Stored  StoreColorPrevNextMonth
             Default clgreen;

    Property WeekNumber       : Tcolor
             Read    fWeekNumber
             Write   SetWeekNumber
             Stored  StoreColorWeekNumber
             Default clBlack;

    Property WeekNumberBack   : Tcolor
             Read    fWeekNumberBack
             Write   SetWeekNumberBack
             Stored  StoreColorWeekNumberBack
             Default clBtnFace;
  end;

  TAdrockCalendarSettings = Class(TPersistent)
  private
    { private declarations }
    fWidth                        : Integer;
    fHeight                       : Integer;

    fEndUpdateChangeStyles        : TAdrockChangeEventStyles;

    FonShutCalendar               : TAdrockShutCalendarEvent;
    FonClearCalendar              : TNotifyEvent;
{    fWinControlOwner              : TWinControl;}
    fComponentOwner               : TComponent;
    fSelectionStyle               : TAdrockCalendarSelectionStyle;
    AllowAfterDateEvent           : Boolean;
    AllowBeforeChangeEvent        : Boolean;
    AllowAfterChangeEvent         : Boolean;
    AllowChangeEvents             : Boolean;

    fDateBevel                    : TPanelBevel;
    fStoreShowDateBevelas         : TAdrockDateTimeShowBevelAs;

    fCalendarWeekNumberBevel      : TPanelBevel;
    fCalendarGridBevel            : TPanelBevel;
    fCalendarGridBevelWidth       : Integer;
    fCalendarPosition             : TAdrockCalendarPosition; { Position to open the calendar by default       }
    fCalendarGrid                 : TAdrockCalendarGridStyle;
    fColors                       : TAdrockCalendarColors;

    fMinHeightFromTop             : Integer;
    fMinHeightFromBottom          : Integer;

    fShowOnCalendar               : TAdrockShowOnCalendar;

    fDate                         : TAdrockDateTimeClass;               { The current date for the control               }
    fDateMin                      : TAdrockDateTimeClass;
    fDateMax                      : TAdrockDateTimeClass;
    fWeekDayHeader                : TAdrockWeekDayHeaderClass;

    fShowDateBevelAs              : TAdrockDateTimeShowBevelAs;
    fShowTodayBevelAs             : TAdrockDateTimeShowBevelAs;
    { Font's Used in the Calendar }
    fCalendarFont                 : TFont;

    { Strings }
    fDateDisplayFormat            : TAdrockDateDisplayFormatClass;
    FCalendarCaption              : TAdrockSimpleCaption;
    FCalendarStatus               : TAdrockSimpleCaption;

    { Boolean true false flags  }
    
    { Starting day of the week for the calendar and week routines  }
    fWeekStart                    : TAdrockWeekDay;
    fWeekStyle                    : TAdrockWeekStyle;

    fOptions                      : TAdrockCalendarSettingsOptions;

    UpdateBeforeChangeRequired    : Boolean;
    UpdateAfterChangeRequired     : Boolean;
    UpdateAfterDateChangeRequired : Boolean;

    fOnChange                     : TCalendarSettingsChangeEvent;
    fOnBeforeChange               : TNotifyEvent;
    fOnAfterChange                : TNotifyEvent;
    fonDateChange                 : TNotifyEvent;

    { Set the fonts for the calendar }
    Procedure SetOptions(NewOptions    : TAdrockCalendarSettingsOptions);
    Procedure SetShowDateBevelAs(Value : TAdrockDateTimeShowBevelAs);
    Procedure SetShowTodayBevelAs(Value : TAdrockDateTimeShowBevelAs);
    Procedure SetDateBevel(Value : TPanelBevel);
    Procedure SetShowOnCalendar(Value : TAdrockShowOnCalendar);
    Procedure SetCalendarCaption(Value : TAdrockSimpleCaption);
    Procedure SetDateDisplayFormat(Value : TAdrockDateDisplayFormatClass);
    Procedure SetCalendarGrid(Value : TAdrockCalendarGridStyle);
    Procedure SetCalendarGridBevel(Value :TPanelBevel);
    Procedure SetCalendarGridBevelWidth(Value : Integer);
    Procedure SetCalendarWeekNumberBevel(Value : TPanelBeveL);
    Procedure SetWeekStart(Value : TAdrockWeekDay);
    Procedure SetWeekStyle(Value : TAdrockWeekStyle);
    
    Procedure SetCalendarStatus(Value : TAdrockSimpleCaption);
    Procedure SetCalendarFont(DateFont : TFont);
    Procedure CalendarFontChanged(Sender : TObject);
    Procedure SetColors(NewValue : TAdrockCalendarColors);

    procedure DateChangedEvent(Sender : TObject);
    procedure BeforeDateChangedEvent(Sender : TObject);

    Function StoreDateBevel : Boolean;
    Function StoreShowTodayBevelAs  : Boolean;
    Function StoreShowDateBevelAs  : Boolean;
    Function StoreSelectionStyle : Boolean;
    Function StoreShowOnCalendar : Boolean;
    Function StoreMinHeightFromBottom : Boolean;
    Function StoreMinHeightFromTop : Boolean;
    Function StoreCalendarPosition : Boolean;
    Function StoreCalendarGrid : Boolean;
    Function StoreCalendarGridBevel : Boolean;
    Function StoreCalendarGridBevelWidth : Boolean;
    Function StoreCalendarWeekNumberBevel : Boolean;
    Function StoreWeekStart : Boolean;
    Function StoreWeekStyle : Boolean;
    Function StoreOptions : Boolean;
    Function StoreFontCalendar : Boolean;

    procedure WeekDayHeaderChanged(Sender : TObject);
    procedure DateDisplayFormatChange(Sender : TObject);
    procedure ColorsChanged(Sender : TObject);
    Procedure SetWeekDayHeader(NewValue :  TAdrockWeekDayHeaderClass);
  protected
    { protected declarations }
    procedure      BeforeChange;
    procedure      AfterChange;
  public
    { public declarations }
    CalendarOffsetX   : Integer;
    CalendarOffsetY   : Integer;
    
    fSpaceDivider     : Double;

    Procedure SetInitialDate(NewDate : TDateTime);

    Constructor    Create(Aowner : TComponent);
    Destructor     Destroy; override;
    Procedure      Assign(Source : TPersistent); override;

    Procedure      BeginUpdate;
    Procedure      EndUpdate;
    Procedure      Change(ChangeMode : TAdrockChangeEventStyles);

    Property OnChange  : TCalendarSettingsChangeEvent
             Read  fOnChange
             Write fOnChange;

    Property OnBeforeChange  : TNotifyEvent
             Read fOnBeforeChange
             Write fOnBeforeChange;

    Property OnAfterChange   : TNotifyEvent
             Read fOnAfterChange
             Write fOnAfterChange;

    Property OnShutCalendar  : TAdrockShutCalendarEvent
             Read    fOnShutCalendar
             write   fOnShutCalendar;

    Property OnClearCalendar  : TNotifyEvent
             Read    fOnClearCalendar
             write   fOnClearCalendar;

    Property OnDateChange   : TAdrockCalendarSettingsOnDateChangeEvent
             Read    fOnDateChange
             write   fOnDateChange;
  published
    { published declarations }
    Property Colors : TAdrockCalendarColors
             read fColors
             Write SetColors;

    Property Width      : Integer                   Read fWidth      Write fWidth   default DEFAULT_WIDTH;
    Property Height     : Integer                   Read fHeight     Write fHeight  default DEFAULT_HEIGHT;

    Property Date       : TAdrockDateTimeClass      read fdate       Write fDate;
    Property DateMin    : TAdrockDateTimeClass      read fdateMin    Write fDateMin;
    Property DateMax    : TAdrockDateTimeClass      read fdateMax    Write fDateMax;

    Property WeekDayHeader :  TAdrockWeekDayHeaderClass
             Read fWeekDayHeader
             Write SetWeekDayHeader;

    Property ShowDateBevelAs              : TAdrockDateTimeShowBevelAs
             Read    fShowDateBevelAs
             Write   SetShowDateBevelAs
             Stored  StoreShowDateBevelAs
             Default sbasRectangle;

    Property ShowTodayBevelAs              : TAdrockDateTimeShowBevelAs
             Read    fShowTodayBevelAs
             Write   SetShowTodayBevelAs
             Stored  StoreShowTodayBevelAs
             Default sbasRectangle;

    Property DateBevel : TPanelBevel
             Read    fDateBevel
             Write   SetDateBevel
             Stored  StoreDateBevel
             Default bvRaised;

    Property SelectionStyle : TAdrockCalendarSelectionStyle
             read    fSelectionStyle
             write   fSelectionStyle
             Stored  StoreSelectionStyle
             Default ssDays;

    { Optional items that can be displayed on the calendar }
    Property ShowOnCalendar        : TAdrockShowOnCalendar
             Read    fShowOnCalendar
             Write   SetShowOnCalendar
             Stored  StoreShowOnCalendar
             Default swMonthAndYearArrows;

    Property MinHeightFromBottom : Integer
             Read    fMinHeightFromBottom
             Write   fMinHeightFromBottom
             Stored  StoreMinHeightFromBottom
             Default 0;

    Property MinHeightFromTop    : Integer
             Read    fMinHeightFromTop
             Write   fMinHeightFromTop
             Stored  StoreMinHeightFromTop
             Default 0;


    { The text for the calendar Caption, Caption bar is not shown if text = "" }
    Property CaptionMsg            : TAdrockSimpleCaption
             Read    FCalendarCaption
             Write   SetCalendarCaption;

    { The text for the calendar status bar, status bar is not shown if text = "" }
    Property StatusMsg             : TAdrockSimpleCaption
             Read    FCalendarStatus
             Write   SetCalendarStatus;

    Property DateDisplayFormat            : TAdrockDateDisplayFormatClass
             read    fDateDisplayFormat
             Write   SetDateDisplayFormat;

    { Date format for the date displayed on the calendar }
{    Property DateFormat            : String
             Read    fDateFormat
             Write   fDateFormat
}

    { The position of the calendar when it open's, you can open anywhere around the base control }
    Property Position              : TAdrockCalendarPosition
             Read    fCalendarPosition
             write   fCalendarPosition
             Stored  StoreCalendarPosition
             default cpLeftBottom;

    Property Grid                  : TAdrockCalendarGridStyle
             Read    fCalendarGrid
             Write   SetCalendarGrid
             Stored  StoreCalendarGrid
             default cgCurrentMonth;

    Property GridBevel             : TPanelBevel
             read    fCalendarGridBevel
             write   setCalendarGridBevel
             Stored  StoreCalendarGridBevel
             default bvRaised;

    Property GridBevelWidth        : Integer
             read    fCalendarGridBevelWidth
             write   SetCalendarGridBevelWidth
             Stored  StoreCalendarGridBevelWidth
             default 1;

    Property WeekNumberBevel       : TPanelBevel
             read    fCalendarWeekNumberBevel
             write   SetCalendarWeekNumberBevel
             Stored  StoreCalendarWeekNumberBevel
             default bvRaised;

    property WeekStart  : TAdrockWeekDay
             read    fWeekStart
             write   SetWeekStart
             Stored  StoreWeekStart
             default wdSunday;

    property WeekNumberStyle : TAdrockWeekStyle
             read    fWeekStyle
             write   SetWeekStyle
             Stored  StoreWeekStyle
             default wsFirstJan1;

    Property Options    : TAdrockCalendarSettingsOptions
             read    fOptions
             write   SetOptions
             Stored  StoreOptions
             default [opShowClearAndTodayButtons,opShowAcceptCancelButtons, opShowPrevNextMonth,opShowDate];

    { Fonts for the calendar }
    Property Font : TFont
             Read    fCalendarFont
             Write   SetCalendarFont
             Stored  StoreFontCalendar;
  end;

implementation

{$i ADDATEC.PAS }               { Calendar Class Routines }
{$i ADDATEW.PAS }               { Calendar Functions which determine if a property is stored }

end.


