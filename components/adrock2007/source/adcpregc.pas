unit AdcpRegc;

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
  Dialogs, designintf, DesignEditors, AdCalSet, adcalpn, AdDateTm;

{ TAdrockCalendarPanelEditor }
type
  TAdrockCalendarPanelComponentEditor = class(TComponentEditor)
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

implementation

procedure TAdrockCalendarPanelComponentEditor.ExecuteVerb(Index: Integer);
Var
  CalendarSettingsComponent : TAdrockCalendarSettingsComponent;
  POs                       : Integer;
begin
  case Index of
    0 :  begin
            CalendarSettingsComponent := NIL;
            for Pos := 0 to (Component.Owner).ComponentCount-1 do
              if ((Component.Owner).Components[POs] is TAdrockCalendarSettingsComponent) then
                begin
                  CalendarSettingsComponent := TAdrockCalendarSettingsComponent((Component.Owner).Components[Pos]);
                  break;
                end;
            if (CalendarSettingsComponent = nil) then
              ShowMessage('Unable to find a TAdrockCalendarSettingsComponent on the current form!')
            else
              begin
                TAdrockCalendarPanel(Component).CalendarSettings := CalendarSettingsComponent;
                Designer.Modified;
              end;
         end;
  end;
end;

function TAdrockCalendarPanelComponentEditor.GetVerb(Index: Integer): string;
begin
  case Index of
   0 : Result := 'Link to TAdrockCalendarSettingsComponent';
  end;
end;

function TAdrockCalendarPanelComponentEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;
                                
end.
