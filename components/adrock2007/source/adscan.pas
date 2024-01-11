unit adScan;

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
 SysUtils, Windows;

Const
 MAX_SINGLEDIGIT_WORD_STRINGS = 10;
 SingleDigitWordStrings : array [0..MAX_SINGLEDIGIT_WORD_STRINGS] of string =
                ('invalid',
                 'first',
                 'second',
                 'third',
                 'fourth',
                 'fifth',
                 'sixth',
                 'seventh',
                 'eighth',
                 'ninth',
                 'tenth'
                );

 MAX_DOUBLEDIGIT_WORD_STRINGS = 8;
 DoubleDigitWordStrings : array [0..MAX_DOUBLEDIGIT_WORD_STRINGS] of string =
                ('invalid',
                 'twenty',
                 'thirty',
                 'fourty',
                 'fifty',
                 'sixty',
                 'seventy',
                 'eighty',
                 'ninty'
                );

 MAX_DAYTH_STRINGS = 4;
 DayThStrings : array [0..MAX_DAYTH_STRINGS] of string = ('invalid', 'st', 'nd', 'rd', 'th');

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and move up past any Spaces, Commas, and the Extra Character Specified**}
     {***************************************************************************}
     procedure ScanCommasAndBlanksAndExtra(const S: string; var Pos: Integer; ExtraChar : Char);

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and move up past any blanks (spaces).                                 **}
     {***************************************************************************}
     procedure ScanBlanks(const S: string; var Pos: Integer);

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a number from the current positon. Any commas   **}
     {** or blanks (spaces) are removed before the scan for the number starts  **}
     {***************************************************************************}
     function ScanNumber(const S: string; var Pos: Integer; var Number: Word): Boolean;


     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a number from the current positon. Any commas   **}
     {** or blanks (spaces) are removed before the scan for the number starts  **}
     {***************************************************************************}
     function ScanFloatNumber(const S: string; var Pos: Integer; var Number: Double): Boolean;
     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a number from the current positon. Any commas   **}
     {** or blanks (spaces) are removed before the scan for the number starts  **}
     {** and at the end of the number can be st, nd, rd, etc..                 **}
     {***************************************************************************}
     function ScanNumberTh(const S: string; var Pos: Integer; var Number: Word): Boolean;

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a weekday by searching for text that matches the**}
     {** word from the specified pos. Blanks are removed at start              **}
     {***************************************************************************}
     function ScanWeekDayWord(const S: string; var Pos: Integer; var Number: Word): Boolean;

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a month by searching for text that matches the  **}
     {** word from the specified pos. Blanks and commas are removed at start   **}
     {***************************************************************************}
     function ScanMonthWord(const S: string; var Pos: Integer; var Number: Word): Boolean;

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to decode a number from first, second, etc..              **}
     {***************************************************************************}
     function ScanSingleDigitWordStrings(const S: string; var Pos: Integer; var Number: Word): Boolean;

     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to locate a character, like a date seperator, or time     **}
     {** seperator. Scan only blanks no commas at this point.                  **}
     {***************************************************************************}
     function ScanChar(const S: string; var Pos: Integer; Ch: Char): Boolean;
     {***************************************************************************}
     {** Scan through the string specified by S starting at the specified pos  **}
     {** and attempt to locate the specified symbol. If the symbol is found    **}
     {** then return true, uses ANSI String Comparision.                       **}
     {***************************************************************************}
     function ScanString(const S: string; var Pos: Integer; const Symbol: string): Boolean;

implementation

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and move up past any blanks (spaces) or commas.                       **}
{***************************************************************************}
procedure ScanCommasAndBlanksAndExtra(const S: string; var Pos: Integer; ExtraChar : Char);
var
  I: Integer;
begin
  if (S = '') then
    exit;
  I := Pos;
  while (I <= Length(S)) and (S[I] in [' ', ',', ExtraChar]) do
    Inc(I);
  Pos := I;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and move up past any blanks (spaces).                                 **}
{***************************************************************************}
procedure ScanBlanks(const S: string; var Pos: Integer);
var
  I: Integer;
begin
  if (S = '') then
    exit;
  I := Pos;
  while (I <= Length(S)) and (S[I] = ' ') do Inc(I);
  Pos := I;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and skip past any st, nd, rd, or th, eg: 1st, if none of these then   **}
{** leave alone and return the original position.                         **}
{***************************************************************************}
procedure SkipDayTH(const S: string; var Pos: Integer);
var
  StartPos, I: Integer;
  fSubString  : String;
begin
  if (S = '') then
    exit;
  StartPos := Pos;

  fSubString := '';
  i := Pos;
  while (I <= Length(S)) and not (S[i] in [' ',',','-',dateSeparator]) do
  begin
    fSubString := fSubString + Upcase(S[I]);
    Inc(I);
    Inc(StartPos);
  end;
  for i := 0 to MAX_DAYTH_STRINGS do
    begin
      if (AnsiCompareText(DayThStrings[i], fSubString) = 0) then
        begin
          Pos := StartPos;
          exit;
        end;
    end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a number from the current positon. Any commas   **}
{** or blanks (spaces) are removed before the scan for the number starts  **}
{***************************************************************************}
function ScanNumber(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  I: Integer;
  N: Word;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  N := 0;
  while (I <= Length(S)) and (S[I] in ['0'..'9']) and (N < 1000) do
  begin
    N := N * 10 + (Ord(S[I]) - Ord('0'));
    Inc(I);
  end;
  if I > Pos then
  begin
    Pos := I;
    Number := N;
    Result := True;

    { Something special here, if the next characters are st, nd, rd, or th }
    { then skip them }
    SkipDayTH(S, Pos);
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a number from the current positon. Any commas   **}
{** or blanks (spaces) are removed before the scan for the number starts  **}
{***************************************************************************}
function ScanNumberTh(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  I: Integer;
  N: Word;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  N := 0;
  while (I <= Length(S)) and (S[I] in ['0'..'9']) and (N < 1000) do
  begin
    N := N * 10 + (Ord(S[I]) - Ord('0'));
    Inc(I);
  end;
  if I > Pos then
  begin
    Pos := I;
    Number := N;
    Result := True;

    { Something special here, if the next characters are st, nd, rd, or th }
    { then skip them }
    SkipDayTH(S, Pos);
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a number from the current positon. Any commas   **}
{** or blanks (spaces) are removed before the scan for the number starts  **}
{***************************************************************************}
function ScanFloatNumber(const S: string; var Pos: Integer; var Number: Double): Boolean;
var
  I: Integer;
  Diva : Single;
  N: Word;
  Dot : Boolean;
begin
  Result := False;
  if (S = '') then
    exit;
  diva := 1.0;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  N := 0;
  Dot := FALSE;
  while (I <= Length(S)) and (S[I] in ['0'..'9', DecimalSeparator]) and (N < 1000) do
  begin
    if (S[i] = DecimalSeparator) then
      begin
        Dot := TRUE;
      end
    else
      begin
        if (dot = TRUE) then
          Diva := Diva * 10;
        N := N * 10 + (Ord(S[I]) - Ord('0'))
      end;
    Inc(I);
  end;
  if I > Pos then
  begin
    Pos := I;
    Number := N / diva;
    Result := True;
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a weekday by searching for text that matches the**}
{** word from the specified pos. Blanks are removed at start              **}
{***************************************************************************}
function ScanWeekDayWord(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  fWeekDay : String;
  fPos, I  : Integer;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  fWeekDay := '';
  while (I <= Length(S)) and not (S[i] in [' ', ',','-','/',DateSeparator]) do
  begin
    fWeekDay := fWeekDay + Upcase(S[I]);
    Inc(I);
  end;
  if I > Pos then
  begin
    { Scan the fmonth variable for a valid month name... }
    Number := 0;
    for fPos := 1 to 7 do
      if (fWeekDay = uppercase(LongDayNames[fPos])) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    for fPos := 1 to 7 do
      if (fWeekDay = uppercase(ShortDayNames[fPos])) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    Pos := I;
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a month by searching for text that matches the  **}
{** word from the specified pos. Blanks and commas are removed at start   **}
{***************************************************************************}
function ScanMonthWord(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  fMonth   : String;
  fPos, I  : Integer;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  fMonth := '';
  while (I <= Length(S)) and not (S[i] in [' ', ',','-','/',DateSeparator]) do
  begin
    fMonth := fMonth + Upcase(S[I]);
    Inc(I);
  end;
  if I > Pos then
  begin
    { Scan the fmonth variable for a valid month name... }
    Number := 0;
    for fPos := 1 to 12 do
      if (fMonth = uppercase(LongMonthNames[fPos])) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    for fPos := 1 to 12 do
      if (fMonth = uppercase(ShortMonthNames[fPos])) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    Pos := I;
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to decode a number from first, second, etc..              **}
{***************************************************************************}
function ScanSingleDigitWordStrings(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  fMonth   : String;
  fPos, I  : Integer;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanCommasAndBlanksAndExtra(S, Pos,#0);
  I := Pos;
  fMonth := '';
  while (I <= Length(S)) and not (S[i] in [' ']) do
  begin
    fMonth := fMonth + Upcase(S[I]);
    Inc(I);
  end;
  if I > Pos then
  begin
    { Scan the fmonth variable for a valid month name... }
    Number := 0;
    for fPos := 1 to MAX_SINGLEDIGIT_WORD_STRINGS do
      if (fMonth = uppercase(Copy(SingleDigitWordStrings[fPos],1,Length(fMonth))) ) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    Pos := I;
  end;
end;


{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to locate a character, like a date seperator, or time     **}
{** seperator. Scan only blanks no commas at this point.                  **}
{***************************************************************************}
function ScanChar(const S: string; var Pos: Integer; Ch: Char): Boolean;
begin
  Result := False;
  if (S = '') then
    exit;
  ScanBlanks(S, Pos);
  if (Pos <= Length(S)) and (S[Pos] in ['-','/',Ch]) then
  begin
    Inc(Pos);
    Result := True;
  end;
end;

{***************************************************************************}
{** Scan through the string specified by S starting at the specified pos  **}
{** and attempt to locate the specified symbol. If the symbol is found    **}
{** then return true, uses ANSI String Comparision.                       **}
{***************************************************************************}
function ScanString(const S: string; var Pos: Integer; const Symbol: string): Boolean;
Var
 SubString : String; 
begin
  Result := False;
  if (S = '') then
    exit;
  if Symbol <> '' then
  begin
    ScanBlanks(S, Pos);
    SubString := Copy(S, Pos, Length(Symbol));
    if AnsiCompareText(Symbol, SubString) = 0 then
    begin
      Inc(Pos, Length(Symbol));
      Result := True;
    end;
  end;
end;

end.
