unit addscan;

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
  WinProcs, WinTypes, Messages, SysUtils, Classes, Graphics, Controls, Forms,

(*
   { $ ifdef WIN32}
  Registry,
  { $ else}
*)
  IniFiles,
   { $ endif}
  Dialogs;

Const
  Countries       : Array [0..1] of string = ('Austrailia', 'New Zealand');
type
  TAdrockCountry = (coAuto, coAustrailia, coNewZealand);
  TAdrockDateStringTranslater = class(TComponent)
  private
    { Private declarations }
    Sectionloaded : Boolean;
    fEnabled  : Boolean;
    fFound    : Boolean;
    fExact    : Boolean;
    fResult   : TDateTime;
    fSearch,
    fFilename : String;
    fCountry  : TAdrockCountry;

    Function StripAnyQuoteSFromWord(Word : String) : String;
  protected
    { Protected declarations }
    Procedure SetSearch(NewSearch : String);
  public
    { Public declarations }
    fLines    : TStrings;
    Year, Month, Day : Word;

    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy; override;
    Procedure   Loaded; override;
    Function    Found : Boolean;
    Function    GetDefaultCountryName : String;
    Function    Result : TDateTime;
    Function    LoadSection(CountryName : String) : Boolean;
  published
    { Published declarations }
    property Country    : TAdrockCountry read fCountry  write fCountry   default coAuto;
    property FileName   : String         read fFileName write fFileName;

    Property Search     : String         read fSearch   write SetSearch;
    Property ExactMatch : Boolean        read fExact    write fExact     default FALSE;
    Property Enabled    : Boolean        read fEnabled  write fEnabled   default TRUE;
  end;

implementation

Constructor TAdrockDateStringTranslater.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  Sectionloaded := FALSE;
  fLines        := TStringList.Create;
  fCountry      := coAuto;
  fFound        := FALSE;
  fExact        := FALSE;
  fEnabled      := TRUE;
end;

Destructor  TAdrockDateStringTranslater.Destroy;
begin
  fLines.Free;
  inherited Destroy;
end;

Function TAdrockDateStringTranslater.StripAnyQuoteSFromWord(Word : String) : String;
Var
 XPos,len : Integer;
begin
 len := Length(Word);
 XPos := Pos('''S', Uppercase(Word));
 if (XPos > 0) then
  if (XPos = Len-2) then
     Result := Copy(Word,1,len-2)
  else
     Result := Copy(Word,1,XPos-1)+Copy(Word,XPOs+2,Len)
 else
   Result := Word;
end;

Procedure TAdrockDateStringTranslater.SetSearch(NewSearch : String);
Var
  Pos : Integer;
  Countryname : String;
begin
  fFound := FALSE;
  if (Enabled = FALSE) then
    exit;
    
  fSearch := NewSearch;
  if (Country = coAuto) then
    Countryname := GetDefaultCountryName
  else
    Countryname := Countries[Ord(Country)];

  if not (csDesigning in ComponentState) and (Sectionloaded = FALSE) then
    LoadSection(CountryName);

  for Pos := 0 to fLines.Count-1 do
    begin
      fFound := FALSE;
      if (ExactMatch = TRUE) or (Length(NewSearch) < 4) then
        begin
          if (AnsiCompareText(NewSearch, fLines.Strings[Pos]) = 0) then
            fFound := TRUE;
        end
     else
       if (AnsiCompareText(NewSearch, Copy(fLines.Strings[Pos],1, length(NewSearch))) = 0) then
         fFound := TRUE;

    if (fFound = TRUE) then
      begin
       fResult := longint(fLines.Objects[Pos]);
       DecodeDate(fResult, Year, Month, Day);
       exit;
     end;
   end;
end;

Function TAdrockDateStringTranslater.Found : Boolean;
begin
 Result := fFound;
end;

Function TAdrockDateStringTranslater.GetDefaultCountryName : String;
(*
{ $ ifdef WIN32}
Var
  fRegistry : TRegistry;
begin
  fRegistry := TRegistry.Create;
  Result := '';
  try
    if (fRegistry.OpenKey('Control Panel\International', FALSE) = TRUE) then
      Result := fRegistry.ReadString('sCountry');
  finally
    fRegistry.Free;
  end;
{ $ else}
*)
Var
  fIniFile : TIniFile;
begin
  fIniFile := TIniFile.Create('Win.INI');
  Result := '';
  try
    Result := fIniFile.ReadString('International', 'sCountry', '');
    if (Result = '') then  { Windows 98}
       Result := fIniFile.ReadString('Intl', 'sCountry', '');
  finally
    fIniFile.Free;
  end;
(* {$ENDIF} *)
end;

Procedure TAdrockDateStringTranslater.Loaded;
begin
  Inherited Loaded;
end;

Function TAdrockDateStringTranslater.LoadSection(CountryName : String) : Boolean;
var
  F       : TextFile;
  Working : Boolean;
  SearchCountry : String;
  xYears         : String;
  xMonths        : String;
  xDays          : String;

  DayName,
  FileSpec, S             : string;
  CommaPos      : Integer;
  fYear, fMonth, fDay : Word;
  fDate         : TDateTime;
  SystemDirZ    : Array [0..255] of char;
begin
  Result := FALSE;
  
  if (FileName = '') then
    exit;
  GetSystemDirectory(SystemDirZ, 255);
  FileSpec :=  StrPas(SystemDirZ)+'\'+fileName;
  if (fileExists(FileSpec) = FALSE) then
   begin
      { Raise Exception.Create('Adrock Date Scan - File not found : '+FileSpec+' !');}
      exit;
   end;
  Sectionloaded := FALSE;
  DecodeDate(Now, fYear, fMonth, fDay);
  AssignFile(F, FileSpec);   { File selected in dialog box }
  Reset(F);
  try
    Working := FALSE;
    { Out search criteria }
    SearchCountry := '['+CountryName+']';
    fLines.Clear;
    while not (EOF(F)) do
      begin
         { Read a line from the file }
         Readln(F, S);
         { See if the first character in the line is a [ if so we are on a heading }
         if (S[1] = '[') then
           begin
             { Copy the string up to the ] }
             S := copy(S, 1, pos(']', S));
             { See if there is a match on the country, if so set the flag working }
             if (AnsiCompareText(SearchCountry, S) = 0) then
               Working := TRUE
             else { Not the right country so stop the working flag }
              if (Working = TRUE) then
                begin
                  Result := TRUE;
                  Sectionloaded := TRUE;
                  exit;
                end
              else
                 Working := FALSE;
           end
         else if (Working = TRUE) then
           begin
             { Decode the parts of the line into the date components }
             CommaPos := Pos(',', S);
             xYears  := Copy(S, CommaPos+2, 4);
             { If this is the year we are looking for then }
             if (StrToInt(xYears) = fYear) then
               begin
                 { Get the month and the day and build a date }
                 xMonths := Copy(S, CommaPos+7, 2);
                 xDays   := Copy(S, CommaPos+10, 2);
                 { Rebuild the date from the date components above }
                 Year  := StrToint(xYears);
                 Month := StrToint(xMonths);
                 Day   := StrToint(xDays);
                 fDate   := EncodeDate(Year, Month, Day);
                 { Add this entry to our list, we use the object here to hold the date }

                 DayName := StripAnyQuoteSFromWord(Copy(S, 1, CommaPos-1));
                 fLines.AddObject(DayName, tObject(Trunc(fDate)));
              end;
           end;
      end;
    finally
      CloseFile(F);
    end;
end;

Function TAdrockDateStringTranslater.Result : TDateTime;
begin
  result := fResult; 
end;

end.
