unit AdCalSet;

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
  Winprocs, WinTypes, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,

  AdDateCC,
  AdDatedt;

{$I *.VER} { Include Version Information }

Const
  CM_CALENDAR_SETTINGS_CHANGED = WM_USER + 653;
type
  TAdrockCalendarSettingsComponent = class(TComponent)
  private
    { Private declarations }
    fVersion           : String;
    fVersion1          : String;
    fCalendarSettings  : TAdrockCalendarSettings;
    fOnChange          : TNotifyEvent;
    Procedure CalendarOnChange(Sender : TObject; ChangeMode : TAdrockChangeEventStyles);

    { Protected declarations }
  public
    { Public declarations }
    Procedure Change; dynamic;
    Constructor Create(Aowner : TCOmponent); override;
    Destructor  Destroy;                     override;
    Property OnChange : TNotifyEvent
             read  fOnChange
             Write fOnChange;
  published
    { Published declarations }
    Property CalendarSettings   : TAdrockCalendarSettings
             Read    fCalendarSettings
             Write   fCalendarSettings;

    Property Version : String
             Read    fVersion
             Write   fVersion1
             Stored  FALSE;
  end;

Var
  AdrockName : String;

implementation

Uses
 adCalPN,
 AdDatetm;

Constructor TAdrockCalendarSettingsComponent.Create(Aowner : TCOmponent);
begin
  inherited Create(Aowner);

  { Create an instance of the Custom Calendar Class }
  fCalendarSettings:= TAdrockCalendarSettings.Create(Aowner);
  fCalendarSettings.OnChange := CalendarOnChange;

  fVersion := ComponentVersionString;
end;

Destructor TAdrockCalendarSettingsComponent.Destroy;
begin
  fCalendarSettings.free; 
  inherited  Destroy;
end;

Procedure TAdrockCalendarSettingsComponent.CalendarOnChange(Sender : TObject; ChangeMode : TAdrockChangeEventStyles);
var
  Pos         : Integer;
  ChangeStyle : Word;
begin
  Change;

  ChangeStyle := 0;
  if (changeCalendarFace in ChangeMode) then
    ChangeStyle := 1;
  if (changeNavigator in ChangeMode) then
    ChangeStyle := ChangeStyle + 2;
  if (changeButtons in ChangeMode) then
    ChangeStyle := ChangeStyle + 4;

  { Loop through all calendar panel controls to tell them of the changes that have been made }
  for Pos :=  0 to Owner.ComponentCount-1 do
   begin
     if (Owner.Components[Pos] is TAdrockCalendarPanel) and
       (TAdrockCalendarPanel(Owner.Components[POs]).CalendarSettings = Self) then
         TAdrockCalendarPanel(Owner.Components[POs]).Perform(CM_CALENDAR_SETTINGS_CHANGED,ChangeStyle,0);
     if (Owner.Components[Pos] is TAdrockDateTimeEdit) and
        (TAdrockDateTimeEdit(Owner.Components[POs]).CalendarSettings = Self) then
         TAdrockDateTimeEdit(Owner.Components[POs]).Perform(CM_CALENDAR_SETTINGS_CHANGED,ChangeStyle,0);
   end;
end;

Procedure TAdrockCalendarSettingsComponent.Change;
begin
  if (Assigned(fOnChange)) then
    fOnChange(Self);

end;


end.
