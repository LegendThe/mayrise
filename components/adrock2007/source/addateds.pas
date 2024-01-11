{ These routines only return true or false on weither or not the property has changed
  from the default value. If the default value has changed the function returns true and
  the property is written to the .DFM for the form the control is on.
}

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

Function TAdrockDateTimeEditCustom.StoreDateTimeGap : Boolean;
begin
  Result := (DateTimeGap <> 10);
end;

Function TAdrockDateTimeEditCustom.StoreVisible : Boolean;
begin
  Result := (Visible <> True);
end;

Function TAdrockDateTimeEditCustom.StoreIncrementMinute : Boolean;
begin
  Result := (IncrementMinute <> Inc1);
end;

Function TAdrockDateTimeEditCustom.StoreIncrementSecond : Boolean;
begin
  Result := (IncrementSecond <> Inc1);
end;

Function TAdrockDateTimeEditCustom.StoreCenturyCutoff : Boolean;
begin
  Result := (CenturyCutoff <> DEFAULT_CENTURY_CUTOFF);
end;


Function TAdrockDateTimeEditCustom.StoreOptions : Boolean;
begin
  Result := (Options <> [deoCalendarRetainTime, deoAutoJumpSubFields, deoUnderlineBadSegments]);
end;

Function TAdrockDateTimeEditCustom.StoreDateValidityOptions : Boolean;
begin
  Result := (DateValidityOptions <> dcoStandard);
end;

Function TAdrockDateTimeEditCustom.StoreInputStyle : Boolean;
begin
  Result := (InputStyle <> isDate);
end;

Function TAdrockDateTimeEditCustom.StoreLockedSegments : Boolean;
begin
  Result := (LockedSegments <> []);
end;

Function TAdrockDateTimeEditCustom.StoreDateInpuyStyle : Boolean;
begin
  Result := (DateInputStyle <> disWeekDayWindows);
end;

Function TAdrockDateTimeEditCustom.StoreTimeInpuyStyle : Boolean;
begin
  Result := (TimeInputStyle <> tisHMS12);
end;

Function TAdrockDateTimeEditCustom.StoreDateDisplayStyle : Boolean;
begin
  Result := (DateDisplayStyle <> ddsWindowsShortDate);
end;

Function TAdrockDateTimeEditCustom.StoreTimeDisplayStyle : Boolean;
begin
  Result := (TimeDisplayStyle <> tdsWindowsShortTime);
end;

Function TAdrockDateTimeEditCustom.StoreDisplayStyle : Boolean;
begin
  Result := (DisplayStyle <> dtdsInputStyle);
end;

Function TAdrockDateTimeEditCustom.StoreOpenStyle : Boolean;
begin
  Result := (OpenStyle <> osAltDownArrow);
end;

Function TAdrockDateTimeEditCustom.StoreWeekDayStyle : Boolean;
begin
  Result := (WeekDayStyle <> wdsShortWeekDay);
end;

Function TAdrockDateTimeEditCustom.StoreShowMonthAs : Boolean;
begin
  Result := (ShowMonthAs <> smNumber);
end;

Function TAdrockDateTimeEditCustom.StoreButtonBitmapType : Boolean;
begin
  Result := (ButtonBitmapType <> bbtDefault);
end;

Function TAdrockDateTimeEditCustom.StoreBadDateText : Boolean;
begin
  Result := (BadDateText <> 'Bad');
end;

Function TAdrockDateTimeEditCustom.StoreNoDateText : Boolean;
begin
  Result := (NoDateText <> '(No Date)');
end;

Function TAdrockDateTimeEditCustom.StoreRangeErrorText : Boolean;
begin
  Result := (RangeErrorText <> 'Range');
end;

Function TAdrockDateTimeEditCustom.StoreNilDateText : Boolean;
begin
  Result := (NilDateText <> 'Nil');
end;

Function TAdrockDateTimeEditCustom.StoreInitialSubFieldToEdit : Boolean;
begin
  Result := (InitialSubFieldToEdit <> iefDefault);
end;


{**********************************}
Function TAdrockDateTimeEditColors.StoreRangeErrorColor : Boolean;
begin
  Result := (RangeErrors <> clRed);
end;

Function TAdrockDateTimeEditColors.StoreColorBadDateText : Boolean;
begin
  Result := (BadDate <> clRed);
end;

Function TAdrockDateTimeEditColors.StoreColorNilDateText : Boolean;
begin
  Result := (NilDate <> clPurple);
end;

Function TAdrockDateTimeEditColors.StoreColorWeekDay : Boolean;
begin
  Result := (WeekDay <> clWindowText);
end;

Function TAdrockDateTimeEditColors.StoreColorExtraText : Boolean;
begin
  Result := (ExtraText <> clWindowText);
end;

Function TAdrockDateTimeEditColors.StoreColorEditHighlight : Boolean;
begin
  Result := (EditHighlight <> clHighlightText);
end;

Function TAdrockDateTimeEditColors.StoreColorEditingHighlight : Boolean;
begin
  Result := (EditingHighlight <> clYellow);
end;

Function TAdrockDateTimeEditColors.StoreColorBadSegment : Boolean;
begin
  Result := (BadSegment <> clred);
end;

