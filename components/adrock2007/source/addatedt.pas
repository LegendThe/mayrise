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

{ **************************************************************************************
  TAdrockDateTimeCustomClass Class

  This class handles a DateTime variable and performs some functions on it such as splitting
  the datetime apart. What this means is that you can specify a date and then by acessing
  the properties you get access to the Day, Month, Year, Hour, Minute, Second, and AMPM
  parts.

  You also can set the day, month, year, hour, minute, second, ampm fields directly.

  The control allows the parts of the date to be invalid if the property
  AllowInvalidDateTime is set to true. The TAdrockDateEdit uses this feature to allow
  the user to enter invalid dates, in this case the Valid Property is set to false.

  You can find out if the date in the day month year, etc.. is valid by checking the
  Valid property.
  **************************************************************************************}

unit AdDateDT; 
interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs,
  {dsgnIntf,}
  ExtCtrls, adMnth, AdWeek;

Const
  { An array of the days for each month, february is 28 always }
  TAdrockDateTimeCustomClass_DaysPerMonth : array[1..12] of SmallInt = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
  Version : Single = 1.10;

type
  TAdrockDateTimeCustomAMPM               = (isAM, isPM);
{  TAdrockDateTimeCustomWeekNumberStyle    = (wnsJan1isWeek0, wnsJan1isWeek53orWeek0);
  TAdrockDateTimeCustomWeekDay            = (wdSunday, wdMonday, wdTuesday, wdWednesday, wdThursday, wdFriday, wdSaturday);
}
  TAdrockDateTimeCustomOptions            = (opStandard, opKeepTime, opKeepDate);

  EInvalidDateException                   = class(Exception);
  EInvalidTimeException                   = class(Exception);

  TAdrockDateTimeCustomClassOnChangeEvent = TNotifyEvent;
  TAdrockDateTimeCustomClass              = class(TPersistent)
  private
    { private declarations }
    fOwner            : TComponent;              { The owner of this class..... }
    ChangeEventsOnStack  : Integer;                 { Shall we allow the change event to occur }
    UpdateRequired    : Boolean;                 { If change event is disabled this flag tells }
                                                 { us if we should trigger when it is enabled  }

    fOnChange         : TAdrockDateTimeCustomClassOnChangeEvent;
    fOnBeforeChange   : TAdrockDateTimeCustomClassOnChangeEvent;

    fAllowInvalid     : Boolean;
    fDateTime         : TDateTime;
    fHour             : Word;
    fHour12           : Word;
    fMinute           : Word;
    fSecond           : Word;
    fHSecond          : Word;
    fAMPM             : TAdrockDateTimeCustomAMPM;

    fWeekNumber       : Word;
    fWeekNumber1      : Word;
    fWeekDayNum       : Word;
    fWeekDayNum1      : Word;  { This is a nothing variable - Gets used for a property below }
    fWeekDay          : TAdrockWeekDay;
    fWeekDay1         : TAdrockWeekDay;
    fWeekNumberStyle  : TAdrockWeekStyle;

    fWeekStart        : TAdrockWeekDay;
    fOptions          : TAdrockDateTimeCustomOptions;

    fDay              : Word;
    fMonth            : Word;
    fYear             : Word;

    fIsValid          : Boolean;
    fIsValid1         : Boolean;

    fisValidTime      : Boolean;
    fisValidTime1     : Boolean;
    fisValidDate      : Boolean;
    fisValidDate1     : Boolean;

    Procedure         SetDate(NewValue : TDateTime);
    Procedure         SetTime(NewValue : TDateTime);
    Procedure         SetDateTime(NewValue : TDateTime);
    Procedure         SetDateTimeActual(NewValue : TDateTime);

    Function          ReadTime : TDateTime; { Returns -1 on error : Valid is set to false already }
                                            { it is a far better way to check for an invalid date }
    Function          ReadDate : TDateTime; { Returns -1 on error : Valid is set to false already }
                                            { it is a far better way to check for an invalid date }
    Function          ReadDateTime : TDateTime; { Returns -1 on error : Valid is set to false already }
                                            { it is a far better way to check for an invalid date }              

    Procedure         SetWeekNumberStyle(NewWeekNumberStyle  : TAdrockWeekStyle);
    Procedure         SetWeekStart(NewWeekStart : TAdrockWeekDay);

    Procedure         SetDay(NewValue : Word);
    Procedure         SetMonth(NewValue : Word);
    Procedure         SetYear(NewValue : Word);

    Procedure         SetHour12(NewValue : Word);
    Procedure         SetHour(NewValue : Word);
    Procedure         SetHourLong(Value : Word);
    Procedure         SetMinute(NewValue : Word);
    Procedure         SetSecond(NewValue : Word);
    Procedure         SetHSecond(NewValue : Word);
    Procedure         SetAMPM(NewValue : TAdrockDateTimeCustomAMPM);
    Function          IsToday : Boolean;
    Procedure         SetToday(Today : Boolean);
    Procedure         DecodeDateTime;
  protected
    { protected declarations }
  public
    { public declarations }
    procedure      Change;
    procedure      BeforeChange;

    Constructor    Create(Aowner : TComponent); dynamic;
    Destructor     Destroy; override; { Notice this has an override and not the constructor !}
    procedure      Assign(Source: TPersistent); override;

    Procedure      BeginUpdate;
    Procedure      ClearUpdate;
    Procedure      EndUpdate;
    Procedure      Clear;
    Procedure      RefreshDate;

    Procedure      PrevMonth;
    Procedure      NextMonth;
    Procedure      PrevYear;
    Procedure      NextYear;

    Procedure      PrevWeek;
    Procedure      NextWeek;

    Procedure      SetInitialDateTime(NewValue : TDateTime);
    function       AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
    function       IsMidnight : Boolean;
    function       IsLeapYear(Year : Word) : Boolean;
    Function       DaysInMonth(fMonth, fYear : Integer) : Integer;
    Function       IsValidDate(xYear, xMonth, xDay : Word) : Boolean;
    Function       IsValidTime(xHour12, xHour, xMinute, xSecond, xHSecond : Word) : Boolean;
    Function       IsEmpty : Boolean;

    Property       OnBeforeChange     : TAdrockDateTimeCustomClassOnChangeEvent
                                          read fOnBeforeChange      Write fOnBeforeChange;
    Property       OnChange           : TAdrockDateTimeCustomClassOnChangeEvent
                                          read fOnChange            Write fOnChange;

    Property    AllowInvalidDateTime : Boolean
                Read    fAllowInvalid
                Write   fAllowInValid
                Default TRUE;

    Property    DateTime  : TDateTime    Read ReadDateTime Write SetDateTime;
    Property    Date      : TDateTime    Read ReadDate     Write SetDate  Stored  False;
    Property    Time      : TDateTime    Read ReadTime     Write SetTime  Stored  False;

    Property    WeekDayNum : Word
                Read    fWeekDayNum
                Write   fWeekDayNum1
                Stored  False
                Default 0;

    Property    WeekDay : TAdrockWeekDay
                Read    fWeekDay
                Write   fWeekDay1
                Stored  False
                Default wdSunday;

    Property    Options: TAdrockDateTimeCustomOptions
                Read    fOptions
                Write   fOptions
                Stored  False
                Default opStandard;

    Property    WeekStart : TAdrockWeekDay
                Read    fWeekStart
                Write   SetWeekStart
                Default wdSunday;

    Property    WeekNumber : Word
                Read    fWeekNumber
                Write   fWeekNumber1
                Stored  False
                Default 0;

    Property    WeekNumberStyle : TAdrockWeekStyle
                Read    fWeekNumberStyle
                Write   SetWeekNumberStyle
                Default wsFirstJan1;

    Property    HourLong  : Word         Read fHour       Write SetHourLong   Stored  False  Default 0;
    Property    Hour      : Word         Read fHour       Write SetHour       Stored  False  Default 0;
    Property    Hour12    : Word         Read fHour12     Write SetHour12     Stored  False  Default 12;
    Property    Minute    : Word         Read fMinute     Write SetMinute     Stored  False  Default 0;
    Property    Second    : Word         Read fSecond     Write SetSecond     Stored  False  Default 0;
    Property    HSecond   : Word         Read fHSecond    Write SetHSecond    Stored  False  Default 0;

    Property    AMPM      : TAdrockDateTimeCustomAMPM
                Read    fAMPM
                Write   SetAMPM
                Stored  False
                Default isAM;

    Property    Day       : Word         Read fDay     Write SetDay      Stored  False Default 0;
    Property    Month     : Word         Read fMonth   Write SetMonth    Stored  False Default 0;
    Property    Year      : Word         Read fYear    Write SetYear     Stored  False Default 0;

    Property    ValidTime : Boolean      read fisValidTime write fIsValidTime1 stored False;
    Property    ValidDate : Boolean      read fisValidDate write fIsValidDate1 stored False;
    Property    Valid     : Boolean      read fisValid     write fIsValid1     stored False;
    Property    Today     : Boolean      read IsToday      write SetToday      stored False;
  end;

  TAdrockDateClass = class(TAdrockDateTimeCustomClass)
  Public
    Constructor    Create(Aowner : TComponent); override;
    Destructor     Destroy; override; { Notice this has an override and not the constructor !}
  Published
    Property    WeekDay;
    Property    WeekDayNum;
    Property    WeekNumber;
    Property    WeekStart;
    Property    WeekNumberStyle;
    Property    Options;

    Property    Day;
    Property    Month;
    Property    Year;

    Property    Today;
  end;

  TAdrockDateTimeClass = class(TAdrockDateTimeCustomClass)
  Public
    Constructor    Create(Aowner : TComponent); override;
    Destructor     Destroy; override; { Notice this has an override and not the constructor !}
  Published
    Property    WeekDay;
    Property    WeekDayNum;
    Property    WeekNumber;
    Property    WeekStart;
    Property    WeekNumberStyle;
    Property    DateTime;
    Property    Hour;
    Property    Hour12;
    Property    Minute;
    Property    Second;
    Property    HSecond;
    Property    AMPM;
    Property    Options;

    Property    Day;
    Property    Month;
    Property    Year;

    Property    Today;
  end;

  TAdrockDateTimeValidClass = class(TAdrockDateTimeCustomClass)
  Public
    Constructor    Create(Aowner : TComponent); override;
    Destructor     Destroy; override; { Notice this has an override and not the constructor !}

    property       AllowInvalidDateTime;
  Published
    Property       WeekDay;
    Property       WeekDayNum;
    Property       WeekNumber;
    Property       WeekStart;
    Property       WeekNumberStyle;
    Property       DateTime;
    Property       Options;
    Property       Hour;
    Property       Hour12;
    Property       Minute;
    Property       Second;
    Property       HSecond;
    Property       AMPM;

    Property    Day;
    Property    Month;
    Property    Year;

    Property    Today;
    Property    ValidTime;
    Property    ValidDate;
    Property    Valid;
  end;

implementation

{ Constructor for the component TAdrockDateTimeCustomClass }
Constructor TAdrockDateTimeCustomClass.Create(Aowner : TComponent);
begin
 fOwner := AOwner;
 { Initialize your own variables below here }
 ChangeEventsOnStack  := 0;
 UpdateRequired       := TRUE;

 fOptions             := opStandard;
 fAllowInvalid        := TRUE;
 fWeekNumber          := 0;
 fWeekDayNum          := 0;
 fWeekDay             := wdSunday;
 fWeekStart           := wdSunday;
 fWeekNumberStyle     := wsFirstJan1;
 fDateTime            := 0.0;
 fHour12              := 12;
 fHour                := 0;
 fMinute              := 0;
 fSecond              := 0;
 fHSecond             := 0;
 fAMPM                := isAM;

 fHour                := 0;
 fMinute              := 0;
 fHour                := 0;

 fIsValid             := TRUE;
 fIsValidTime         := TRUE;
 fIsValidDate         := TRUE;
end;

Destructor TAdrockDateTimeCustomClass.Destroy;
begin
  inherited Destroy;
end;

procedure TAdrockDateTimeCustomClass.Assign(Source: TPersistent);
var
  fSource : TAdrockDateTimeCustomClass;
begin
  if Source is TAdrockDateTimeCustomClass then
   begin
    BeginUpdate;
    try
      fSource := (Source as TAdrockDateTimeCustomClass);
      AllowInvalidDateTime:= TRUE;
      WeekNumber          := fSource.WeekNumber;
      WeekDayNum          := fSource.WeekDayNum;
      WeekDay             := fSource.WeekDay;
      WeekStart           := fSource.WeekStart;
      WeekNumberStyle     := fSource.WeekNumberStyle;
      DateTime            := fSource.DateTime;
      Hour12              := fSource.Hour12;
      Hour                := fSource.Hour;
      Minute              := fSource.Minute;
      Second              := fSource.Second;
      HSecond             := fSource.hSecond;
      AMPM                := fSource.AMPM;
      AllowInvalidDateTime:= fSource.AllowInvalidDateTime;
    finally
      EndUpdate;
    end;
    Exit;
  end;
  inherited Assign(Source);
end;

Function TAdrockDateTimeCustomClass.IsEmpty : Boolean;
begin
  Result := TRUE;
  if (Valid = TRUE) then
    Result := (Date = 0)
end;           

Procedure TAdrockDateTimeCustomClass.SetInitialDateTime(NewValue : TDateTime);
begin            
  fDateTime := newValue;
  DecodeDateTime;
  fIsValid := TRUE;
end;

procedure TAdrockDateTimeCustomClass.Change;
begin
  if (ChangeEventsOnStack > 0) then
    UpdateRequired := TRUE
  else
    begin
      UpdateRequired := FALSE;
      if (assigned(fOnChange)) then
        fOnChange(Self);
    end;
end;

procedure TAdrockDateTimeCustomClass.BeforeChange;
begin
  if (ChangeEventsOnStack > 0) then
    UpdateRequired := TRUE
  else
    begin
      UpdateRequired := FALSE;
      if (assigned(fOnBeforeChange)) then
        fOnBeforeChange(Self);
    end;
end;

Procedure TAdrockDateTimeCustomClass.BeginUpdate;
begin
  Inc(ChangeEventsOnStack);
end;

Procedure TAdrockDateTimeCustomClass.ClearUpdate;
begin
  ChangeEventsOnStack := 0;
  UpdateRequired := FALSE;
end;

Procedure TAdrockDateTimeCustomClass.EndUpdate;
begin
  if (ChangeEventsOnStack > 0) then
   begin
      Dec(ChangeEventsOnStack);
      if (ChangeEventsOnStack = 0) then
        if (UpdateRequired = TRUE) then
          Change;
   end;
end;

Function  TAdrockDateTimeCustomClass.ReadTime : TDateTime; { Returns -1 on error }
begin
  if (fisValid = FALSE) then
   if (fIsValidTime = TRUE) then
     Result := frac(fDateTime)
   else
    Result := -1
  else
    Result := Frac(fDateTime);
end;

Function  TAdrockDateTimeCustomClass.ReadDate : TDateTime; { Returns -1 on error }
begin
  if (fisValid = FALSE) then
   if (fIsValidTime = TRUE) then
     Result := Trunc(fDateTime)
   else
    Result := -1
  else
     Result := Trunc(fDateTime)
end;

Function  TAdrockDateTimeCustomClass.ReadDateTime : TDateTime; { Returns -1 on error }
begin
  if (fisValid = FALSE) then
   if (fIsValidTime = TRUE) then
     Result := frac(fDateTime)
   else
    Result := -1
  else
    Result := fDateTime;
end;


Procedure TAdrockDateTimeCustomClass.SetDate(NewValue : TDateTime);
begin
  if not (Options = opKeepDate) then
   begin
     if (fDateTime <> NewValue) then
       begin
          BeforeChange;
          SetDateTimeActual(Trunc(NewValue) + Frac(fDateTime));
          Change;
       end;
   end;
end;

Procedure TAdrockDateTimeCustomClass.SetTime(NewValue : TDateTime);
begin
  if not (Options = opKeepTime) then
   begin
     BeforeChange;
     SetDateTimeActual(Trunc(fdateTime) + Frac(NewValue));
     Change;
   end;
end;


{******************************************************************************************}
{** SetDate - This function will set a new date after setting the new date all the       **}
{**           date and time variables are updated to reflect the new date.               **}
{**                                                                                      **}
{**           The before change event is fired and then the date changed and then the    **}
{**           actual change event occurs. So you can do things when the date gets updated**}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetDateTime(NewValue : TDateTime);
begin
  if (Options = opKeepDate) then
    NewValue := Trunc(fdateTime) + Frac(NewValue);
  if (Options = opKeepTime) then
    NewValue := Trunc(NewValue) + Frac(fDateTime);

  if (NewValue <> DateTime) then
   begin
      BeforeChange;
      SetDateTimeActual(NewValue);
      Change;
   end;
end;

Procedure TAdrockDateTimeCustomClass.SetDateTimeActual(NewValue : TDateTime);
begin
  if (DateTime <> NewValue) then
    begin
      fIsValid := TRUE;
      fDateTime := NewValue;
      DecodeDateTime;
    end;
end;

Procedure TAdrockDateTimeCustomClass.DecodeDateTime;
Var
 NewDate, NewTime : TDateTime;
begin
    NewDate := Trunc(fDateTime);
    NewTime := abs(fDateTime-NewDate);
    if (NewDate = 0) then
      begin
        fYear  := 0;
        fMonth := 0;
        fDay   := 0;

        fWeekNumber := 0;
        fWeekDayNum := 0;
        fWeekDay    := wdSunday;
      end
    else
      begin
        DecodeDate(NewDate, fYear, fMonth, fDay);
        fWeekNumber := WeekOfYear(NewDate, fWeekStart, fWeekNumberStyle);
        fWeekDayNum := DayOfWeek(NewDate);
        fWeekDay := TAdrockWeekDay(fWeekDayNum-1);
      end;

    if (NewTime = 0) then
      begin
        fHour    := 0;
        fHour12  := 0;
        fMinute  := 0;
        fSecond  := 0;
        fHSecond := 0;
      end
    else
      DecodeTime(NewTime, fHour, fMinute, fSecond, fHSecond);
    if (fhour > 11) then
     begin
       fAMPM := isPM;
       fHour12 := fHour-12;
       if (fHour12 = 0) then
         fHour12 := 12
     end
    else
     begin
       if (fHour = 0) then
         fHour12 := 12
       else
         fHour12 := fHour;
       fAMPM := isAM;
     end;
end;

{************************************************************************************************************************}
{** Return true if the year specified is a leap year                                                                   **}
{************************************************************************************************************************}
function TAdrockDateTimeCustomClass.IsLeapYear(Year : Word) : Boolean;
begin
   if ((Year mod 4 = 0) and (Year mod 100 <> 0) or (Year mod 400 = 0)) then
     IsLeapYear := TRUE
   else
     IsLeapYear := FALSE;
end;

{************************************************************************************************************************}
{** Return the number of days in a month, Month starts at 1, not 0                                                     **}
{************************************************************************************************************************}
Function TAdrockDateTimeCustomClass.DaysInMonth(fMonth, fYear : Integer) : Integer;
begin
  if (FMonth = 2) and (IsLeapYear(fYear)) then
    Result := 29
  else if (fMonth = 0) or (fMonth > 12) or (fyear = 0) then
    Result := 0
  else
    result := TAdrockDateTimeCustomClass_DaysPerMonth[fMonth];
end;


{******************************************************************************************}
{** IsValidTime- This function tests the given hour, minute and second to see if they   **}
{**              comprize a valid time.                                                  **}
{**                                                                                      **}
{**               Returns TRUE if the time is valid, FALSE if it is not.                 **}
{******************************************************************************************}
Function TAdrockDateTimeCustomClass.IsValidTime(xHour12, xHour, xMinute, xSecond, xHSecond : Word) : Boolean;
begin
   { Check if the year is 0, or the month is not outside of 1..12 and the day is not 0 }
{   if ((XHour < 0) or (xHour > 23)) or ((Xminute < 0) or (Xminute > 59)) or ((xSecond < 0) or (XSecond>59)) then}
   if ((XHour12 < 1) or (xHour12 > 12)) or ({(XHour < 0) or }(xHour > 23)) or({(Xminute < 0) or}
     (Xminute > 59)) or ({(xSecond < 0) or }(XSecond>59)) then
      Result := FALSE
   else
      Result := TRUE
end;

{******************************************************************************************}
{** IsValidDate - This function tests the given year, month and day to see if they are a **}
{**               valid combination to produce a date.                                   **}
{**                                                                                      **}
{**               Returns TRUE if the date is valid, FALSE if it is not.                 **}
{******************************************************************************************}
Function TAdrockDateTimeCustomClass.IsValidDate(xYear, xMonth, xDay : Word) : Boolean;
begin
   if (xYear = 0) and (xMonth = 0) and (xDay = 0) then
     Result := TRUE
   else  { Check if the year is 0, or the month is not outside of 1..12 and the day is not 0 }
   if (XYear = 0) or ((Xmonth < 1) or (Xmonth > 12)) or (Xday = 0) then
      Result := FALSE
   else
     { Check the number of days in the specified date to verify the day given }
     if (DaysInMonth(xMonth, xYear) >= xDay) then
       Result := TRUE
     else
       Result := FALSE; { Bad day it does not exist in the month and year }
end;

Procedure TAdrockDateTimeCustomClass.RefreshDate;
Var
 NewDateTime : TDateTime;
 NewDate     : TDateTime;
 NewTime     : TDateTime;
begin
  fisValidTime := isValidTime(fHour12, fHour, fMinute, fSecond, fHSecond);
  fisValidDate := isValidDate(fYear, fMonth, fday);

  fIsValid := ((fisValidDate = TRUE) and (fisValidTime = TRUE));
  if (fIsValid) then
   begin
    if (fYear = 0) and (fMonth = 0) and (fDay = 0) then
      NewDate := 0
    else
      NewDate := EncodeDate(fYear, fMonth, fday);
    NewTime := EncodeTime(fHour, fMinute, fSecond, fHSecond);

    if (NewDate < 0) then
      NewDateTime := NewDate - NewTime
   else
      NewDateTime := NewDate + NewTime;
   SetDateTimeActual(NewDateTime);
   end;
{  else if (fIsValidTime) then
    SetDateTime(EncodeTime(fHour, fMinute, fSecond, fHSecond));}
end;
{******************************************************************************************}
{** SetDay  - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetDay(NewValue : Word);
begin
  if (fDay <> NewValue) and (Options <> opKeepDate) then
   begin
    if (IsValidDate(fYear, fMonth, NewValue) = FALSE) then
      begin
        fIsValid := FALSE;
        if (AllowInvalidDateTime = TRUE) then
         begin
           fDay := NewValue;
           RefreshDate;
          end
        else
          Raise EInvalidDateException.Create(IntToStr(NewValue)+' is not a valid day for the month and year. '+
               'This can also be caused by the month or year being 0')
     end
    else
     begin
       BeforeChange;
       fDay := NewValue;
       RefreshDate;
       Change;
     end;
   end;
end;

{******************************************************************************************}
{** SetMonth  - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetMonth(NewValue : Word);
begin
  if (fMonth <> NewValue) and (Options <> opKeepDate) then
   begin
    if (IsValidDate(fYear, NewValue, fday) = FALSE) then
      begin
       fIsValid := FALSE;
       if (AllowInvalidDateTime = TRUE) then
         begin
           fMonth := NewValue;
           RefreshDate;
         end
       else
          Raise EInvalidDateException.Create(IntToStr(NewValue)+' is not a valid month, it must be from 1 to 12')
      end
     else
       begin
          BeforeChange;
          fMonth := NewValue;
          RefreshDate;
          Change;
       end;
    end;
end;

{******************************************************************************************}
{** SetYear - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetYear(NewValue : Word);
begin
  if (fyear <> NewValue) and (Options <> opKeepDate) then
    begin
      if (IsValidDate(NewValue, fMonth, fday) = FALSE) then
        begin
          if (AllowInvalidDateTime = TRUE) then
            begin
              fYear := NewValue;
              RefreshDate;
            end
          else
             Raise EInvalidDateException.Create(IntToStr(NewValue)+
                ' is not a valid year, it must be > 0, Use .CLEAR to clear the date')
        end
      else
       begin
          BeforeChange; 
          fYear := NewValue;
          RefreshDate;
          Change;
       end;
    end;
end;

Procedure TAdrockDateTimeCustomClass.SetHourLong(Value : Word);
begin
  if (fHour <> Value) and (Options <> opKeepTime) then
    begin
      BeforeChange;
      fHour := Value;
(*
      if (NewValue in [0, 12]) then
        fHour12 := 12
      else
        fHour12 := fHour Mod 12;
*)      RefreshDate;
      Change;
    end;
end;

{******************************************************************************************}
{** SetHour - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetHour(NewValue : Word);
begin
  if (fHour <> NewValue) and (Options <> opKeepTime) then
    begin
      if {(NewValue < 0) or }(NewValue > 23) then
      begin
       fIsValid := FALSE;
       if (AllowInvalidDateTime = TRUE) then
         begin
           fHour := NewValue;
           RefreshDate;
         end
       else
         Raise EInvalidTimeException.Create(IntToStr(NewValue)+' is not a valid hour, please specify a 0 - 23')
      end
     else
       begin
          BeforeChange;
          fHour := NewValue;
          if (NewValue in [0, 12]) then
            fHour12 := 12
          else
            fHour12 := fHour Mod 12;
          RefreshDate;
          Change;
       end;
    end;
end;

{******************************************************************************************}
{** SetHour12 - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetHour12(NewValue : Word);
begin
  if (fHour12 <> NewValue) and (Options <> opKeepTime) then
    begin
      if (NewValue < 1) or (NewValue > 12) then
        begin
          fIsValid := FALSE;
          if (AllowInvalidDateTime = TRUE) then
            begin
              fHour := NewValue;
              fHour12 := NewValue;
              RefreshDate;
            end
          else
             Raise EInvalidTimeException.Create(IntToStr(NewValue)+
               ' is not a valid 12hour style hour, please specify a 1 - 12')
        end
      else
        begin
          BeforeChange;
          fHour12 := NewValue;
          if (fhour12 = 12) then
            begin
             if (fAMPM = isPM) then
                begin
                  fAMPM := isPM;
                  fHour := 12;
               end
             else
               begin
                 fAMPM := isAM;
                 fHour := 0;
               end;
            end
          else
            if (fAmPM = isPM) then
              fHour := 12+fHour12
            else
              fHour := fHour12;
          RefreshDate;
          Change;
        end;
    end;
end;

{******************************************************************************************}
{** SetMinute - This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetMinute(NewValue : Word);
begin
  if (fMinute <> NewValue) and (Options <> opKeepTime) then
    begin
      if {(NewValue < 0) or }(NewValue > 59) then
         begin
          fIsValid := FALSE;
          if (AllowInvalidDateTime = TRUE) then
            begin
              fMinute := NewValue;
              RefreshDate;
            end
          else
             Raise EInvalidTimeException.Create(IntToStr(NewValue)+' is not a valid minute, please specify a 0 - 59')
         end
      else
        begin
          BeforeChange;
          fMinute := NewValue;
          RefreshDate;
          Change;
        end;
    end;
end;

{******************************************************************************************}
{** SetSecond  - This function will attempt to set the day for the current date.         **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetSecond(NewValue : Word);
begin
  if (fSecond <> NewValue) and (Options <> opKeepTime) then
    begin
      if {(NewValue < 0) or }(NewValue > 59) then
      begin
       fIsValid := FALSE;
       if (AllowInvalidDateTime = TRUE) then
         begin
           fSecond := NewValue;
           RefreshDate;
         end
       else
         Raise EInvalidTimeException.Create(IntToStr(NewValue)+' is not a valid second, please specify a 0 - 59')
       end
      else
        begin
          BeforeChange;
          fSecond := NewValue;
          RefreshDate;
          Change;
        end;
    end;
end;

{******************************************************************************************}
{** SetHSecond- This function will attempt to set the day for the current date.            **}
{**                                                                                      **}
{**           If the day does not allow for a valid date then an exception is raised to  **}
{**           show the bad day.                                                          **}
{**                                                                                      **}
{**           What this means is that a date of say 0, and you set the day to 5 it will  **}
{**           fail because the date was not valid to start with, in this case you will   **}
{**           have needed to set the actual date for the class to something valid.       **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetHSecond(NewValue : Word);
begin
  if (fHSecond <> NewValue) then
    begin
     if ({(NewValue < 0) or }(NewValue > 999)) and (Options <> opKeepTime) then
      begin
       fIsValid := FALSE;
       if (AllowInvalidDateTime = TRUE) then
         begin
           fHsecond := NewValue;
           RefreshDate;
         end
       else
         Raise EInvalidTimeException.Create(IntToStr(NewValue)+
            ' is not a valid hundredth of a second, please specify a 0 - 99')
      end
     else
        begin
          BeforeChange;
          fHsecond := NewValue;
          RefreshDate;
          Change;
        end;
    end;
end;

{******************************************************************************************}
{** SetAMPM - This function will set the AM/PM flag for the time in the datetime         **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetAMPM(NewValue : TAdrockDateTimeCustomAMPM);
begin
  if (fAMPM <> NewValue) and (Options <> opKeepTime) then
   begin
     BeforeChange;
     fAMPM := NewValue;
     if (fHour = 12) then
       fHour := 0
     else if (fHour > 12) then
       fHour := fHour - 12
     else 
       fHour := fHour + 12;
     RefreshDate;
     Change;
   end;
end;

{******************************************************************************************}
{** SetWeekNumberStyle - Determines how week numbers are calculated 1-53 or 0-52           }
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetWeekNumberStyle(NewWeekNumberStyle  : TAdrockWeekStyle);
begin
   if (fWeekNumberStyle <> NewWeekNumberStyle) then
     begin
        fWeekNumberStyle := NewWeekNumberStyle;
        fWeekNumber := WeekOfYear(Date, fWeekStart, fWeekNumberStyle);
     end;
end;

function TAdrockDateTimeCustomClass.IsMidnight : Boolean;
begin
  result := (fHour = 0) and (fMinute = 0) and (fSecond = 0);
end;

{******************************************************************************************}
{** SetWeekStart - Decodes a date to a week number based on a starting day of the week     }
{******************************************************************************************}
procedure  TAdrockDateTimeCustomClass.SetWeekStart(NewWeekStart : TAdrockWeekDay);
begin
  if (fWeekStart <> NewWeekStart) then
    begin
       fWeekStart := NewWeekStart;
       fWeekNumber := WeekOfYear(Date, fWeekStart, fWeekNumberStyle);
    end;
end;

{******************************************************************************************}
{** Go to the Prev Month - based on the current date                                     **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.PrevMonth;
begin
    SetDate(AddMonths(-1, ReadDate));
end;

{******************************************************************************************}
{** Go to the next month - based on the current date                                     **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.NextMonth;
begin
    SetDate(AddMonths(1, ReadDate));
end;

{******************************************************************************************}
{** Go to the Prev Week - based on the current date                                      **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.PrevWeek;
begin
    SetDate(ReadDate-7);
end;

{******************************************************************************************}
{** Go to the Prev year - based on the current date                                      **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.PrevYear;
begin
    SetDate(AddMonths(-12, ReadDate));
end;

{******************************************************************************************}
{** Go to the next year - based on the current date                                      **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.NextYear;
begin
    SetDate(AddMonths(12, ReadDate));
end;

{******************************************************************************************}
{** Go to the next Week - based on the current date                                      **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.NextWeek;
begin
    SetDate(ReadDate+7);
end;


{*********************************************************************************}
{** Add the specified number of months to the workdate returning the new date   **}
{*********************************************************************************}
function TAdrockDateTimeCustomClass.AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
Var
  AYear, AMonth, ADay : Word;
  fMonth              : Integer;
begin
  if (NumberOfMonths = 0) then
    begin
      Result := WorkDate;
      exit;
    end;
  DecodeDate(WorkDate, AYear, AMonth, ADay);
  fMonth := AMonth;
  AYear  := AYear + (NumberOfMonths div 12);
  fMonth := fMonth + (NumberOfMonths mod 12);
  if (NumberOfMonths > 0) then
    begin
      if (fMonth > 12) then
        begin
          Inc(AYear);
          fMonth := fMonth-12;
        end;
    end
  else
    if (fMonth < 1) then
        begin
          Dec(AYear);
          fMonth := 12+fMonth;
        end;
  if ADay > DaysInMonth(fMonth, AYear) then
    ADay := DaysInMonth(fMonth, AYear);
  aMonth := fMonth;
  Result := EncodeDate(AYear, AMonth, ADay);
end;

{******************************************************************************************}
{** Clear - Clear the date - resetting it back to 0                                      **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.Clear;
begin
  SetDateTime(0);
end;

{******************************************************************************************}
{** IsToday                                                                              **}
{******************************************************************************************}
Function TAdrockDateTimeCustomClass.IsToday : Boolean;
begin
     if (Valid = TRUE) then
       IsToday := (Trunc(Date) = Trunc(Now))
     else
       IsToday := FALSE;
end;

{******************************************************************************************}
{** SetToday                                                                             **}
{******************************************************************************************}
Procedure TAdrockDateTimeCustomClass.SetToday;
begin
  SetDate(Now);
end;

Constructor TAdrockDateTimeClass.Create(Aowner : TComponent);
begin
  Inherited Create(Aowner);
  AllowInvalidDateTime := FALSE;
end;

Destructor  TAdrockDateTimeClass.Destroy;
begin
  inherited Destroy;
end;


Constructor TAdrockDateTimeValidClass.Create(Aowner : TComponent);
begin
 inherited Create(Aowner);
end;

Destructor  TAdrockDateTimeValidClass.Destroy;
begin
  inherited Destroy;
end;

Constructor TAdrockDateClass.Create(Aowner : TComponent);
begin
  Inherited Create(Aowner);
end;

Destructor TAdrockDateClass.Destroy;
begin               
  Inherited Destroy;
end;


end.
