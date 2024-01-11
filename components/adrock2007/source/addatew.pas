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


{ These routines only return true or false on weither or not the property has changed
  from the default value. If the default value has changed the function returns true and
  the property is written to the .DFM for the form the control is on.
}

Function TAdrockCalendarSettings.StoreDateBevel : Boolean;
begin                                                                         
  Result := (DateBevel  <> bvRaised);
end;

Function TAdrockCalendarSettings.StoreSelectionStyle : Boolean;
begin
  Result := (SelectionStyle <> ssDays);
end;

Function TAdrockCalendarSettings.StoreShowOnCalendar : Boolean;
begin
  Result := (ShowOnCalendar <> swMonthAndYearArrows);
end;

Function TAdrockCalendarSettings.StoreMinHeightFromBottom : Boolean;
begin
  Result := (MinHeightFromBottom <> 0);
end;

Function TAdrockCalendarSettings.StoreMinHeightFromTop : Boolean;
begin
  Result := (MinHeightFromBottom <> 0);
end;


Function TAdrockCalendarSettings.StoreCalendarPosition : Boolean;
begin
  Result := (Position <> cpLeftBottom);
end;

Function TAdrockCalendarSettings.StoreCalendarGrid : Boolean;
begin
  Result := (Grid <> cgCurrentMonth);
end;

Function TAdrockCalendarSettings.StoreCalendarGridBevel : Boolean;
begin
  Result := (GridBevel <> bvRaised);
end;

Function TAdrockCalendarSettings.StoreCalendarGridBevelWidth : Boolean;
begin
  Result := (GridBevelWidth <> 1);
end;

Function TAdrockCalendarSettings.StoreCalendarWeekNumberBevel : Boolean;
begin
  Result := (WeekNumberBevel <> BvRaised);
end;

Function TAdrockCalendarSettings.StoreShowDateBevelas : Boolean;
begin
  Result := (ShowDateBevelAs <> sbasRectangle);
end;

Function TAdrockCalendarSettings.StoreShowTodayBevelas : Boolean;
begin
  Result := (ShowTodayBevelAs <> sbasRectangle);
end;

Function TAdrockCalendarSettings.StoreWeekStart : Boolean;
begin
  Result := (WeekStart <> wdSunday);
end;

Function TAdrockCalendarSettings.StoreWeekStyle: Boolean;
begin
  Result := (WeekNumberStyle <> wsFirstJan1);
end;

Function TAdrockCalendarSettings.StoreOptions : Boolean;
begin
  Result := (Options <> [opShowClearAndTodayButtons,opShowAcceptCancelButtons, opShowPrevNextMonth,opShowDate]);
end;

Function TAdrockCalendarSettings.StoreFontCalendar : Boolean;
Var
  StoreIt : Boolean;
begin
  StoreIt := FALSE;
  if (Font.Name <> 'MS Sans Serif') then
    StoreIt := TRUE
  else if (Font.Size <> 8) then
    StoreIt := TRUE
  else if (Font.Style <> []) then
    StoreIt := TRUE;
  Result := StoreIT;
end;

{*************************************************************************}
Function TAdrockCalendarColors.StoreColorToday : Boolean;
begin
  Result := (Today <> clRed);
end;

Function TAdrockCalendarColors.StoreColorGrid : Boolean;
begin
  Result := (Grid <> clBtnShadow);
end;

Function TAdrockCalendarColors.StoreColorWeekDay : Boolean;
begin
  Result := (WeekDay <> clWindowText);
end;

Function TAdrockCalendarColors.StoreColorGridBackground : Boolean;
begin
  Result := (GridBackGround <> clBtnFace);
end;

Function TAdrockCalendarColors.StoreColorRangeErrors : Boolean;
begin
  Result := (RangeErrors <> clOlive);
end;

Function TAdrockCalendarColors.StoreColorMonFri : Boolean;
begin
  Result := (MonFri <> clMaroon);
end;

Function TAdrockCalendarColors.StoreColorSaturday : Boolean;
begin
  Result := (Saturday <> clRed);
end;

Function TAdrockCalendarColors.StoreColorSunday : Boolean;
begin
  Result := (Sunday <> clRed);
end;

Function TAdrockCalendarColors.StoreColorNormal : Boolean;
begin
  Result := (Normal <> clBlack);
end;

Function TAdrockCalendarColors.StoreColorHighlight : Boolean;
begin
  Result := (Highlight <> clPurple);
end;

Function TAdrockCalendarColors.StoreColorBack : Boolean;
begin
  Result := (Back <> clBtnface);
end;

Function TAdrockCalendarColors.StoreColorDateBevel : Boolean;
begin
  Result := (DateBevel <> clHighlight);
end;

Function TAdrockCalendarColors.StoreColorPrevNextMonth : Boolean;
begin
  Result := (PrevNextMonth <> clGreen);
end;

Function TAdrockCalendarColors.StoreColorWeekNumber : Boolean;
begin
  Result := (WeekNumber <> clBlack);
end;

Function TAdrockCalendarColors.StoreColorWeekNumberBack : Boolean;
begin
  Result := (WeekNumberBack <> clBtnFace);
end;

Function TAdrockCalendarColors.StoreColorCaptionBack : Boolean;
begin
  Result := (CaptionBack <> clBtnFace);
end;

Function TAdrockCalendarColors.StoreColorStatusBack : Boolean;
begin
  Result := (StatusBack <> clBtnFace);
end;

Function TAdrockCalendarColors.StoreColorSelected : Boolean;
begin
  Result := (Selected <> clPurple);
end;

Function TAdrockCalendarColors.StoreColorTodayRect : Boolean;
begin
  Result := (TodayRect <> clRed);
end;

Function TAdrockCalendarColors.StoreNavigator: Boolean;
begin
  Result := (Navigator <> clBtnFace);
end;


