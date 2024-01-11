unit AdcsRegc;

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
  Dialogs, DesignIntf, DesignEditors, AdCalSet, AdcsEdit; { TAdrockCalendarSettings Component Editor Form }

{ TAdrockCalendarSettingsEditor }
type
  TAdrockCalendarSettingsComponentEditor = class(TComponentEditor)
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

implementation

procedure TAdrockCalendarSettingsComponentEditor.ExecuteVerb(Index: Integer);
begin
  case Index of
    0 :  begin
           if (OpenTAdrockCalendarSettingsComponentEditor(TAdrockCalendarSettingsComponent(Component)) = TRUE) then
             Designer.Modified;
         end;
  end;
end;

function TAdrockCalendarSettingsComponentEditor.GetVerb(Index: Integer): string;
begin
  case Index of
   0 : Result := 'TAdrockCalendarSettings Component Editor';
  end;
end;

function TAdrockCalendarSettingsComponentEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

end.
