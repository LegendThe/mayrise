unit AdDrDaCl;

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
  winprocs, Wintypes, Messages, SysUtils, Classes, addatecc,
  AdWeek,
  AdMnth,              { DaysInMonth, IsLeap Year }
  ExtCtrls, Graphics, Controls, Forms, Dialogs, adDatecn;

type
  TAdrockDrawDatesClass = class(TPersistent)
  private
    { Private declarations }
    WeekNumberWidth   : Integer;
    fOnChange         : TNotifyEvent;
    fCalendarSettings : TAdrockCalendarSettings;

    fDateArray          : array[1..42] of string[3];  { Array to hold the days of the month, 6 rows of 7 days }

    Function  IsIndexToday( Index : Integer) : Boolean;
    Function  IsIndexSelected( Index : Integer) : Boolean;
    function  GetMonthBegin: Integer;
    procedure LoadDateArray;
  protected
    { Protected declarations }
    Procedure Change;
  public
    { Public declarations }
    MonthBeginIndex, MonthEndIndex : Integer;
    DateOfFirstCell : TDateTIme;

    Constructor Create(Aowner : TComponent);
    Destructor  Destroy; override;
    procedure   PaintIndex( Canvas : TCanvas; ClientRect : TRect; Index: Integer);
    Procedure   PaintDates(Canvas : TCanvas; ClientRect : TRect);
    Function    IndexByMouse(ClientRect : TRect; X,Y : Integer) : Integer;
    Procedure   Assign(Source : TPersistent); override;

    Property CalendarSettings : TAdrockCalendarSettings
             read    fCalendarSettings
             Write   fCalendarSettings;
    Property OnChange : TNotifyEvent
             read    fOnChange
             Write   fOnChange;
  end;

implementation

Constructor TAdrockDrawDatesClass.Create(Aowner : TComponent);
begin
end;

Destructor TAdrockDrawDatesClass.Destroy;
begin
  INherited Destroy;
end;

Procedure TAdrockDrawDatesClass.Assign(Source : TPersistent);
Var
 fSource : TAdrockDrawDatesClass;
begin
  if (Source is TAdrockDrawDatesClass) then
   begin
    fSource := (Source as TAdrockDrawDatesClass);

    CalendarSettings := fSource.CalendarSettings;
    exit;
   end;
  inherited Assign(Source);
end;

Procedure TAdrockDrawDatesClass.Change;
begin
  if (assigned(fOnChange)) then
    fOnChange(Self);
end;

Function TAdrockDrawDatesClass.IsIndexToday( Index : Integer) : Boolean;
begin
  Result := ((DateOfFirstCell + (Index-1)) = Date);
end;

Function TAdrockDrawDatesClass.IsIndexSelected( Index : Integer) : Boolean;
Var
 FDate : TDateTime;
begin
 fDate := DateOfFirstCell + (Index-1);
 if (opShowRangeErrors in CalendarSettings.Options) then
   if (CalendarSettings.DateMin.Date > 0) and (CalendarSettings.DateMax.Date > 0) then
     Result := (fDate < CalendarSettings.DateMin.Date) or (fDate > CalendarSettings.DateMax.Date)
   else
     result := FALSE
 else
     result := FALSE;
end;

{************************************************************************************************************************}
{* Return the index to the first day of the month                                                                       *}
{************************************************************************************************************************}
function TAdrockDrawDatesClass.GetMonthBegin: Integer;
var
  FirstDate: TDateTime;
  D : Integer;
begin
  if (Assigned(fCalendarSettings) = FALSE) then
    begin
      Result := -1;
      exit;
    end;
  if (CalendarSettings.Date.Year = 0) then
   CalendarSettings.Date.Date := Date;
  FirstDate := EncodeDate( CalendarSettings.Date.Year, CalendarSettings.Date.Month, 1 );
  D := DayOfWeek( FirstDate ); { D = Day of week for sunday }
  case CalendarSettings.WeekStart of
    wdSunday     : ;               { Do Nothing - Sunday }
    wdMonday     : Dec(D);
    wdTuesday    : Dec(D,2);
    wdWednesday  : Dec(D,3);
    wdThursday   : Dec(D,4);
    wdFriday     : Dec(D,5);
    wdSaturday   : Dec(D,6);
  end;
  if (D < 1) then
    d := d+7;
  Result := D;
end;

{************************************************************************************************************************}
{* Fill the date array with dates. If we are not showing prev/next months then make those cells blank.                  *}
{************************************************************************************************************************}
procedure TAdrockDrawDatesClass.LoadDateArray;
var
  nIndex          : Integer;
  DaysInPrevMonth : Integer;
begin
  MonthBeginIndex := GetMonthBegin;
  if (MonthBeginIndex = -1) then
   exit;

  if (CalendarSettings.Date.Month = 1) then
    DaysInPrevMonth := DaysInMonth(12, CalendarSettings.Date.Year-1)
  else
    DaysInPrevMonth := DaysInMonth(CalendarSettings.Date.Month-1, CalendarSettings.Date.Year);

  MonthEndIndex := MonthBeginIndex + DaysInMonth(CalendarSettings.Date.Month, CalendarSettings.Date.Year) - 1;
  DateOfFirstCell := EncodeDate(CalendarSettings.Date.Year, CalendarSettings.Date.Month, 1)-(MonthBeginIndex-1);
  for nIndex := 1 to 42 do
  begin
     If ( nIndex < MonthBeginIndex ) then
        if (opShowPrevNextMonth in CalendarSettings.options) then
           fDateArray[nIndex] := IntToStr(1+DaysInPrevMonth-MonthBeginIndex+nIndex)
        else
           fDateArray[nIndex] := ' '
     else if ( nIndex > MonthEndIndex ) Then
        if (opShowPrevNextMonth in CalendarSettings.options) then
           fDateArray[nIndex] := IntToStr( ( nIndex - MonthEndIndex))
        else
           fDateArray[nIndex] := ' '
     else
        fDateArray[nIndex] := IntToStr( ( nIndex - MonthBeginIndex ) + 1 );
  end;
end;

Function  TAdrockDrawDatesClass.IndexByMouse(ClientRect : TRect; X,Y : Integer) : Integer;
Var
 fFontHeight, nWeek, nDay, nIndex, Height, Width, CalendarOffsety, CalendarOffsetX, CellWidth : Integer;
 TempRect : TRect;
begin
  Result := -1;
  if (assigned(fCalendarSettings) = FALSE) then
   exit;
   
  { Special computations needed for showing of weeknumbers }
  Width := ClientRect.Right-ClientRect.LEft;
  if (opShowWeekNumbers in CalendarSettings.options) then
   begin
     Dec(Width, WeekNumberWidth);
     inc(ClientRect.Left, WeekNumberWidth);
   end;
  Height := ClientRect.Bottom-ClientRect.Top;
  fFontHeight  := ((Height-10) div 6);
  CalendarOffsety := (Height- (fFontheight * 6)) div 2;
  
  CellWidth    := ((Width-10) div 7);
  CalendarOffsetX := (Width - (CellWidth * 7)) div 2;

  for nWeek := 1 to 6 do
    begin
      { Cycle through the days }
      for nDay := 1 to 7 Do
         begin
           nIndex := nDay + ( ( nWeek - 1 ) * 7 );

           TempRect := ClientRect;
           inc(TempRect.Left, CalendarOffsetX);
           Inc(TempRect.Top,  CalendarOffsetY);
           With TempRect Do
           begin
              Left := left + CellWidth * (nDay - 1);
              Top := ClientRect.Top+5+(fFontHeight * (nWeek-1) );
              Bottom := Top +  fFontHeight ;
              Right := Left + CellWidth;

              if ((x >= Left) and (x <=Right)) and ((y>=Top) and (y <= Bottom)) then
                begin
                  result := nIndex-1;
                  exit;
                end;
         end;
      end;
    end;
end;

Procedure TAdrockDrawDatesClass.PaintDates(Canvas : TCanvas; ClientRect : TRect);
var
   fFontHeight, fCellWidth : Integer;
   Height, Width           : Integer;
   nIndex, nWeek, nDay     : Integer;
   WeekNumberRect          : TRect;
   pDate                   : Array[0..255] of char;
   TempRect                : Trect;
   WeekNumber              : Integer;
   WeekNumberString        : String;
   fWeekDate               : TDateTime;
   CurrentCalendarWeekDay  : TAdrockWeekDay;
begin
  LoadDateArray;
  with Canvas do
   begin
     { If the CustomCalendar property has not been assigned write message to canvas and exit }
     if (Assigned(fCalendarSettings) =FALSE) then
       begin
          Textout(CLientRect.Left, ClientRect.Top, 'Custom Calendar not assigned: ');
          exit;
      end;

     { We can now saftely use the CustomCalendar property }

     { Frame the calendar rectangle }
     Brush.Color := CalendarSettings.Colors.Back;
     Brush.Style := bsSolid;
     FillRect(ClientRect);

     { Compute the height, and width of the client rectangle to draw into }
     Height := ClientRect.Bottom-ClientRect.Top;
     Width  := (ClientRect.Right-ClientRect.Left);
     fFontHeight  := ((Height-10) div 6);
     CalendarSettings.CalendarOffsety := (Height- (fFontheight * 6)) div 2;

     fWeekDate := DateOfFirstCell;
     Font.Assign(CalendarSettings.Font);
     WeekNumberWidth := TextWidth('0000');
     CalendarSettings.WeekDayHeader.WeekNumberWidth := WeekNumberWidth;

     { Special computations needed for showing of weeknumbers }
     if (opShowWeekNumbers in CalendarSettings.options) then
      begin
        WeekNumberRect := Rect(ClientRect.Left+4, clientRect.Top+5, ClientRect.Left+WeekNumberWidth-1, ClientRect.Bottom-5);
        Dec(Width, WeekNumberWidth);
        inc(ClientRect.Left, WeekNumberWidth);

        { Paint and frame the WeekNumbers }
        Brush.Color := CalendarSettings.Colors.WeekNumberBack;
        FillRect(WeekNumberRect);
        WeekNumber := WeekOfYear(fWeekDate, CalendarSettings.WeekStart, CalendarSettings.WeekNumberStyle);
      end
     else
      WeekNumber := 0;
    fCellWidth    := ((Width-10) div 7);
    CalendarSettings.CalendarOffsetX := (Width - (fCellWidth * 7)) div 2;

    { Cycle through the weeks }
    CurrentCalendarWeekDay := CalendarSettings.WeekStart;
    for nWeek := 1 to 6 do
     begin
       { Display the weeknumber in the rectangle TempRect }
       Font.Color := CalendarSettings.Font.Color;
       if (opShowWeekNumbers in CalendarSettings.options) then
       begin
          Temprect := WeekNumberRect;
          Inc(TempRect.LEft);
          Dec(TempRect.Right);
          TempRect.Top := TempRect.Top+1+(fFontHeight * (nWeek-1) );
          TempRect.Bottom := TempRect.Top +  fFontHeight ;

          Brush.Color := CalendarSettings.Colors.WeekNumberBack;

          { Convert the week number to a string }
          WeekNumberString := IntToStr(WeekNumber);
          { Convert the string to a PCHAR }
          StrPCopy( pDate, WeekNumberString);

          { Draw a frame around the week number }
          if (CalendarSettings.WeekNumberBevel = bvNone) then
          else if (CalendarSettings.WeekNumberBevel = bvLowered) then
            Frame3d(Canvas, TempRect, clBtnShadow, clBtnHighlight, 1)
          else
            Frame3d(Canvas, TempRect, clBtnHighlight, clBtnShadow, 1);

          { Set the color of the WeekNumber }
          Canvas.Font.Color := CalendarSettings.Colors.WeekNumber;
          Canvas.Font.Style := CalendarSettings.Font.Style;
          { Draw the actual week number }
          DrawText(Canvas.Handle,pDate, length(WeekNumberString),TempRect,
              (DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE));

          { Add 7 days to get the next week number }
          fWeekDate := fWeekDate + 7;
          if (WeekNumber < 51) then
            Inc(Weeknumber)
          else
            WeekNumber := WeekOfYear(fWeekDate, CalendarSettings.WeekStart, CalendarSettings.WeekNumberStyle);
       end;

       { Cycle through the days }
       for nDay := 1 to 7 Do
          begin
                nIndex := nDay + ( ( nWeek - 1 ) * 7 );

                TempRect := ClientRect;
                inc(TempRect.Left, CalendarSettings.CalendarOffsetX);
                Inc(TempRect.Top,  CalendarSettings.CalendarOffsetY);
                With TempRect Do
                begin
                   Left := left + fCellWidth * (nDay - 1);
                   Top := ClientRect.Top+5+(fFontHeight * (nWeek-1) ); 
                   Bottom := Top +  fFontHeight ;
                   Right := Left + fCellWidth;
                end;

            Font.Color := CalendarSettings.Font.Color;
             if (CalendarSettings.Grid = cgWholeCalendar) or ((CalendarSettings.Grid = cgCurrentMonth)
               and ((nIndex >= MonthBeginIndex) and (nIndex <= MonthEndIndex))) then
                  begin
                     Pen.Color := CalendarSettings.Colors.Grid;
                     MoveTo(TempRect.Right, TempRect.Top);
                     LineTo(TempRect.Left, TempRect.Top);
                     LineTo(TempRect.Left, TempRect.Bottom);
                     LineTo(TempRect.Right, TempRect.Bottom);
                     LineTo(TempRect.Right, TempRect.Top);

                     Brush.Color := CalendarSettings.Colors.GridBackground;

                     if (CalendarSettings.GridBevel = bvNone) then
                     else if (CalendarSettings.GridBevel = bvLowered) then
                       Frame3d(Canvas, TempRect, clBtnShadow, clBtnHighlight, CalendarSettings.GridBevelWidth)
                     else
                       Frame3d(Canvas, TempRect, clBtnHighlight, clBtnShadow, CalendarSettings.GridBevelWidth);
                     Canvas.FillRect(TempRect);
                     if (CalendarSettings.GridBevel <> bvNone) then
                       InflateRect(TempRect, 1,1);
                  end
              else
                Brush.Color := CalendarSettings.Colors.Back;

              if (CurrentCalendarWeekDay = wdSunday) and (opShowSundayColor in CalendarSettings.Options) then
                 Canvas.Font.Color := CalendarSettings.Colors.Sunday
              else if (CurrentCalendarWeekDay = wdSaturday) and (opShowSaturdayColor in CalendarSettings.Options) then
                 Canvas.Font.Color := CalendarSettings.Colors.Saturday
              else
                 Canvas.Font.Color := CalendarSettings.Colors.Normal;

              if (opShowPrevNextMonth in CalendarSettings.options) then
                 if (nIndex < MonthBeginIndex) or (nIndex > MonthEndIndex) then
                   Canvas.Font.Color := CalendarSettings.Colors.PrevNextMonth;

              if (IsIndexSelected(NIndex) = TRUE) then
               if ((nIndex >= MonthBeginIndex) and (nIndex <= MonthEndIndex)) then
                 begin
                   Brush.Color := CalendarSettings.Colors.RangeErrors;
                   inflaterect(TempRect,-1,-1);
                   fillRect(TempRect);
                 end;

              if (nIndex = (MonthBeginIndex + (CalendarSettings.Date.day-1))) then
               begin
                 {Draw the Date in Bold font}
                 Canvas.Font.Style := [fsBold];
                 Canvas.Font.Color := CalendarSettings.Colors.Selected;
                 Brush.Color := CalendarSettings.Colors.DateBevel;
                 if (CalendarSettings.ShowDateBevelAs <> sbasCircle) then
                    begin
                       if (CalendarSettings.DateBevel = bvNone) then
                       else if (CalendarSettings.DateBevel = bvLowered) then
                         Frame3d(Canvas, TempRect, clBtnShadow, clBtnHighlight, 1)
                       else
                         Frame3d(Canvas, TempRect, clBtnHighlight, clBtnShadow, 1);

                       FillRect(TempRect);
                    end
                 else
                   begin
                    Pen.Color := clBtnShadow;
                    Ellipse(TempRect.Left, TempRect.Top, TempRect.Right-1, TempRect.Bottom);
                   end;
                end
               else
                 Canvas.Font.Style := CalendarSettings.Font.Style;

               if (IsIndexToday(nIndex)) then
               begin
                 if (CalendarSettings.ShowTodayBevelAs = sbasCircle) then
                  begin
                    Pen.Color := CalendarSettings.Colors.TodayRect;
                    Ellipse(TempRect.Left, TempRect.Top, TempRect.Right-1, TempRect.Bottom);
                  end
                 else
                   Frame3d(Canvas, TempRect, CalendarSettings.Colors.TodayRect, CalendarSettings.Colors.TodayRect, 1);
                 inflateRect(TempRect,-1,-1);
                 Canvas.Font.Color := CalendarSettings.Colors.Today;
               end;


              StrPCopy( pDate, fDateArray[nIndex] );
              inflateRect(TempRect,-1,-1);
              DrawText( Canvas.Handle, pDate, Length( fDateArray[nIndex] ),
                          TempRect, ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE ) );

              if (CurrentCalendarWeekDay = high(TAdrockWeekDay)) then
                CurrentCalendarWeekDay := Low(TAdrockWeekDay)
              else
                Inc(CurrentCalendarWeekDay);
             end;
        CurrentCalendarWeekDay := CalendarSettings.WeekStart;
       end;
     end;
   Canvas.Brush.Color := CalendarSettings.Colors.Back;
end;

{ This routine will draw a focus frame around the date on the calendar, this frame
  can be sunken, or raised. }
procedure TAdrockDrawDatesClass.PaintIndex( Canvas : TCanvas; ClientRect : TRect; Index: Integer);
var
   fFontHeight, fCellWidth : Integer;
   Height, Width           : Integer;
   nWeek, nDay             : Integer;
   pDate                   : Array[0..255] of char;
   TempRect                : Trect;
   nIndex                  : Integer;
begin
  with Canvas do
   begin
     { If the CustomCalendar property has not been assigned write message to canvas and exit }
     if (Assigned(fCalendarSettings) =FALSE) then
       begin
          Textout(CLientRect.Left, ClientRect.Top, 'Custom Calendar not assigned: ');
          exit;
      end;
     If ( Index < 0 ) and ( Index > 42 ) then
       exit;

     { Compute the height, and width of the client rectangle to draw into }
     Height := ClientRect.Bottom-ClientRect.Top;
     Width  := (ClientRect.Right-ClientRect.Left);
     fFontHeight  := ((Height-10) div 6);
     CalendarSettings.CalendarOffsety := (Height- (fFontheight * 6)) div 2;

     Font.Assign(CalendarSettings.Font);

     { Special computations needed for showing of weeknumbers }
     if (opShowWeekNumbers in CalendarSettings.options) then
      begin
        Dec(Width, WeekNumberWidth);
        inc(ClientRect.Left, WeekNumberWidth);
      end;
     fCellWidth    := ((Width-10) div 7);
     CalendarSettings.CalendarOffsetX := (Width - (fCellWidth * 7)) div 2;

    { Cycle through the weeks }
    for nWeek := 1 to 6 do
     begin
       { Cycle through the days }
       for nDay := 1 to 7 Do
          begin
                nIndex := nDay + ( ( nWeek - 1 ) * 7 );

                if (nIndex = Index) then
                 begin
                     TempRect := ClientRect;
                     inc(TempRect.Left, CalendarSettings.CalendarOffsetX);
                     Inc(TempRect.Top,  CalendarSettings.CalendarOffsetY);
                     With TempRect Do
                       begin
                          Left := left + fCellWidth * (nDay - 1);
                          Top := ClientRect.Top+5+(fFontHeight * (nWeek-1) );
                          Bottom := Top +  fFontHeight ;
                          Right := Left + fCellWidth;
                       end;
                     StrPCopy( pDate, fDateArray[nIndex] );
                     SetTextColor(Canvas.Handle, CalendarSettings.Colors.Highlight);

                     {Draw the Date in Bold font}
                     Canvas.Font.Style := [fsBold];
                     Brush.Style := bsSolid;
                     Brush.Color := CalendarSettings.Colors.DateBevel;
                     if (CalendarSettings.ShowDateBevelAs <> sbasCircle) then
                        begin
                           if (CalendarSettings.DateBevel = bvNone) then
                           else if (CalendarSettings.DateBevel = bvLowered) then
                             Frame3d(Canvas, TempRect, clBtnShadow, clBtnHighlight, 2)
                           else
                             Frame3d(Canvas, TempRect, clBtnHighlight, clBtnShadow, 2);

                           FillRect(TempRect);
                        end;
                        if (IsIndexToday(nIndex)) then
                          Frame3d(Canvas, TempRect, clred, clred, 1);
                        Pen.Color := clBtnShadow;
                        if (CalendarSettings.ShowDateBevelAs = sbasCircle) then
                          Ellipse(TempRect.Left, TempRect.Top, TempRect.Right-1, TempRect.Bottom);

                        DrawText( Canvas.Handle, pDate, Length( fDateArray[nIndex] ),
                                  TempRect, ( DT_CENTER or DT_VCENTER or DT_TOP or DT_SINGLELINE ) );

             end;
          end;
       end;
    end;
end;





end.
