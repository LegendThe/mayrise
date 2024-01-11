unit trim;

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

Function TrimString(Text:String) : String;
Function RightTrimString(Text:String) : String;
Function LeftTrimString(Text:String) : String;

implementation

Function LeftTrimString(Text:String) : String;
Var
   S : String;
   L, CharsToDelete : Integer;
begin
  S := Text;
  CharsToDelete :=0;
  L := 1;
  while (Length(S) >= L) and (S[l] = #32) do
   begin
     inc (CharsToDelete);
     Inc(L);
   end;
  if (CharsToDelete > 0) then
    Delete(S,1,CharsToDelete);
  result := s;
end;

Function RightTrimString(Text:String) : String;
Var
   S : String;
   CharsToDelete ,
   L : Integer;
begin
  S := Text;
  L := Length(S);
  CharsToDelete :=0;
  while (L > 0) and (S[l] = #32) do
   begin
     inc(CharsToDelete);
     dec(L);
   end;
  if (CharsToDelete>0) then
    Delete(S,L+(CharsToDelete-1),CharstoDelete);
  result := s;
end;

Function TrimString(Text:String) : String;
begin
  result := RightTrimString(LeftTrimString(Text));
end;


end.
