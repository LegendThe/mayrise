unit AdWeek;

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

Uses
  SysUtils;

Type
  TAdrockWeekStyle    = (wsFirstFullWeek, wsFirstJan1, wsFirstFourDayWeek);
  TAdrockWeekDay      = (wdSunday, wdMonday, wdTuesday, wdWednesday, wdThursday, wdFriday, wdSaturday);
  TAdrockWeekDaySet   = Set of TAdrockWeekDay;

  function WeekOfYear( Reqdate: TDateTime; WeekStart : TAdrockWeekDay; fWeekNumberStyle : TAdrockWeekStyle): integer;

implementation

function IsThere4Days(StartingDayOfTheWeek, DayOfTheWeek : TAdrockWeekDay) : Boolean;
const
  ValidDays : array[wdSunday..wdSaturday,1..4] of byte = (
                                { Sunday    }       (1,2,3,4),
                                { Monday    }       (2,3,4,5),
                                { Tuesday   }       (3,4,5,6),
                                { Wednesday }       (4,5,6,7),
                                { Thursday  }       (5,6,7,1),
                                { Friday    }       (6,7,1,2),
                                { Saturday  }       (7,1,2,3)
                                                  );
Var
 Pos : integer;
begin
  for Pos := 1 to 4 do
    if (ValidDays[StartingDayOfTheWeek][Pos] = 1+Ord(DayOfTheWeek)) then
      begin
        { Yes there is at least 4 days in the week for the day given }
        Result := TRUE;
        exit;
      end;
  Result := FALSE;
end;

Function ReturnWeekofYear_FirstJan1(StartingDayOfWeek : TAdrockWeekDay; WorkDate : TDateTime) : Word;
var
  TestDate, Jan01: TDateTime;
{  aValue: longint; }
  StartDayOfWeek ,
  Week : Integer;
  Year, Month, Day : Word;
begin
  { Decode the date, extract the year, month and day }
  DecodeDate(WorkDate, Year, Month, Day);

  { Create a date to represent January 01, for the specific year }
 Jan01 := EncodeDate(Year, 1, 1);
 TestDate :=jan01;

 { Determine the day of the week }
 Week := 1;
 StartDayOfWeek := DayOfWeek(TestDate);

 StartDayOfWeek := StartDayOfWeek - Ord(StartingDayOfWeek);
 if (StartDayOfWeek < 1) then
   StartDayOfWeek := StartDayOfWeek + 7;

 while (TestDate < WorkDate) do
  begin
    TestDate := TestDate + 1;
    inc(StartDayOfWeek);
    if (StartDayOfWeek = 8) then
     begin
      StartDayOfWeek := 1;
      Inc(Week);
     end;
  end;
  Result := Week;
end;


Function ReturnWeekofYear_FirstFourDayWeekNew(StartingDayOfTheWeek : TAdrockWeekDay; WorkDate : TDateTime) : Word;
var
  TestDate,
  NextJan01,
  Jan01             : TDateTime;
{  Pos               : Byte; }
{  StandardDayOfWeek, }
  StartDayOfWeek    : Integer;  { Required uncase we go to a number < 0 }
{  HadtoGoBackToThePast, }
  Is4Days           : Boolean;
  CheckEachDay      : Boolean;
  DayOfWeekForJan01 : TAdrockWeekDay;
  Week              : Integer;
  NextYear,
  Year, Month, Day  : Word;
begin
  { Decode the date, extract the year, month and day }
  DecodeDate(WorkDate, Year, Month, Day);

  { Now check to see that there is 4 days in the week at least, we use the array above to handle this }
  Is4Days := FALSE;
{  HadtoGoBackToThePast := FALSE; }
  Jan01 := 0;
  DayOfWeekForJan01 := TAdrockWeekDay(0);
  while (Is4Days = FALSE) do
   begin
     { Create a date to represent January 01, for the specific year }
     Jan01 := EncodeDate(Year, 1, 1);

     { Determine the day of the week for January 1 }
     DayOfWeekForJan01 := TAdrockWeekDay(DayOfWeek(Jan01)-1);

     { Check to see if there is at least 4 days }
     Is4Days := isThere4Days(StartingDayOfTheWeek, DayOfWeekForJan01);

     { We did not find the 4 days we need, so go back to the previous year, and try again. }
     if (Is4Days = FALSE) then
      begin
       Dec(Year);
{       HadtoGoBackToThePast := TRUE; }
      end;
   end;
   { Date of the next jan 01 }
   NextYear := Year+1;
   NextJan01 := EncodeDate(NextYear, 1,1);

   { Determine the day of the week }
   Week := 1;
   StartDayOfWeek := 1+Ord(DayOfWeekForJan01);

   StartDayOfWeek := StartDayOfWeek - (Ord(StartingDayOfTheWeek));
   if (StartDayOfWeek < 1) then
     StartDayOfWeek := StartDayOfWeek + 7;

   TestDate := Jan01;
{   StandardDayOfWeek := DayOfWeek(Jan01); }
   CheckEachDay := FALSE;
   while (TestDate < WorkDate) do
    begin
      TestDate := TestDate + 1;

      inc(StartDayOfWeek);
      if (StartDayOfWeek = 8) then
       begin
        StartDayOfWeek := 1;
        Inc(Week);

        if (NextJan01 >= TestDate) and (NextJan01 <= testDate+ 6) then
          CheckEachDay := TRUE;
        if (NextJan01 < TestDate) then
         begin
           Week := 1;
           Inc(NextYear);
           NextJan01 := EncodeDate(NextYear, 1,1);
           CheckEachDay := FALSE;
         end;
       end;

      if (CheckEachDay = true) then
        begin
          if (isThere4Days(StartingDayOfTheWeek, TAdrockWeekDay(DayOfWeek(NextJan01)-1)) = TRUE) then
           if (isThere4Days(StartingDayOfTheWeek, TAdrockWeekDay(DayOfWeek(TestDate)-1)) = TRUE) then
            begin
              Week := 1;
              CheckEachDay := FALSE;
              Inc(NextYear);
              NextJan01 := EncodeDate(NextYear, 1,1);
           end;
        end;
    end;
    Result := Week;
end;

Function ReturnWeekofYear_FirstFullWeekNew(StartingDayOfTheWeek : TAdrockWeekDay; WorkDate : TDateTime) : Word;
var
  TestDate,
  NextJan01,
  Jan01             : TDateTime;
{  Pos               : Byte; }
{  StandardDayOfWeek, }
  StartDayOfWeek    : Integer;  { Required uncase we go to a number < 0 }
{  HadtoGoBackToThePast, }
  Is4Days           : Boolean;
{  CheckEachDay      : Boolean; }
  DayOfWeekForJan01 : TAdrockWeekDay;
  Week              : Integer;
  NextYear,
  Year, Month, Day  : Word;
begin
  { Decode the date, extract the year, month and day }
  DecodeDate(WorkDate, Year, Month, Day);

  { Now check to see that there is 4 days in the week at least, we use the array above to handle this }
  Is4Days := FALSE;
{  HadtoGoBackToThePast := FALSE; }
  Jan01 := 0;
  DayOfWeekForJan01 := TAdrockWeekDay(0);
  while (Is4Days = FALSE) do
   begin
     { Create a date to represent January 01, for the specific year }
     Jan01 := EncodeDate(Year, 1, 1);

     { Determine the day of the week for January 1 }
     DayOfWeekForJan01 := TAdrockWeekDay(DayOfWeek(Jan01)-1);

     { Check to see if there is at least 4 days }
     is4Days := (DayOfWeekForJan01 = StartingDayOfTheWeek);


     { We did not find the 4 days we need, so go back to the previous year, and try again. }
     if (Is4Days = FALSE) then
      begin
       Dec(Year);
{       HadtoGoBackToThePast := TRUE; }
      end;
   end;
   { Date of the next jan 01 }
   NextYear := Year+1;
   NextJan01 := EncodeDate(NextYear, 1,1);

   { Determine the day of the week }
   Week := 1;
   StartDayOfWeek := 1+Ord(DayOfWeekForJan01);

   StartDayOfWeek := StartDayOfWeek - (Ord(StartingDayOfTheWeek));
   if (StartDayOfWeek < 1) then
     StartDayOfWeek := StartDayOfWeek + 7;

   TestDate := Jan01;
{   StandardDayOfWeek := DayOfWeek(Jan01); }
{   CheckEachDay := FALSE; }
   while (TestDate < WorkDate) do
    begin
      TestDate := TestDate + 1;

      inc(StartDayOfWeek);
      if (StartDayOfWeek = 8) then
       begin
        StartDayOfWeek := 1;
        Inc(Week);

{        if (NextJan01 >= TestDate) and (NextJan01 <= testDate+ 6) then }
{          CheckEachDay := TRUE; }
        if (NextJan01 < TestDate) then
         begin
           Week := 1;
           Inc(NextYear);
           NextJan01 := EncodeDate(NextYear, 1,1);
{           CheckEachDay := FALSE; }
         end;
       end;
    end;
    Result := Week;
end;


function WeekOfYear( Reqdate: TDateTime; WeekStart : TAdrockWeekDay; fWeekNumberStyle : TAdrockWeekStyle): integer;
begin
  case fWeekNumberStyle of
    wsFirstJan1      : Result := ReturnWeekOfYear_FirstJan1(WeekStart, ReqDate);
    wsFirstFullWeek  : Result := ReturnWeekofYear_FirstFullWeekNew(WeekStart, ReqDate);
  else
    { wsFirstFourDayWeek : } Result := ReturnWeekofYear_FirstFourDayWeekNew(WeekStart, ReqDate);
  end;
end;

end.
