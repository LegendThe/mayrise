unit AdMnth;

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

  { Return TRUE if the specified year is a leap year }
  function IsLeapYear(fYear : Integer) : Boolean;

  { Returns the number of days in the given month and year, January = 1      }
  { Leap Years are taken into account when calculating the days in the month }
  function DaysInMonth(Month, Year : Word) : Word;

  { Returns the number of days in the given year taking into account leap years}
  function DaysInYear(Year : Word) : Word;

implementation

{***************************************************************************}
{** Returns true if the year specified is a LEAP year.                    **}
{***************************************************************************}
function IsLeapYear(fYear : Integer) : Boolean;
begin
  Result := ( fYear mod 4 = 0 ) and
            ( ( fYear mod 100 <> 0 ) or ( fYear mod 400 = 0 ) );
end;

{***************************************************************************}
{** Returns the number of days in the specified month, year incl leap year**}
{***************************************************************************}
function DaysInMonth(Month, Year : Word) : Word;
Const
 m_DaysPerMonth: array[1..12] of SmallInt = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := m_DaysPerMonth[Month];
  if ( Month = 2 ) and IsLeapYear(Year) then
    Inc( Result ); { leap-year Feb is special }
end;

{ Returns the number of days in the given year taking into account leap years}
function DaysInYear(Year : Word) : Word;
begin
  if (IsLeapYear(Year)) then
    Result := 366
  else
    Result := 365;
end;

end.
