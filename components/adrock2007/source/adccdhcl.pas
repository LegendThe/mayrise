unit AdCCDHCL;

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
  WinProcs, WinTypes, Messages, SysUtils, Classes,
  AdDaHeCl, { TAdrockDateHeaderClass }
  AdCalSet, { TAdrockCalendarSettings }
  AdDateCC, { TAdrockCustomClalendar }
  adDatecn, { TAdrockDateTimeEdit Constants }
  ExtCtrls, Graphics, Controls, Forms, Dialogs;

type
  TAdrockCustomCalendarDateHeaderClass = class(TAdrockWeekDayHeaderClass)
  private
    { Private declarations }
    fCalendarSettings : TAdrockCalendarSettingsComponent;
  protected
    { Protected declarations }
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy; override;
    Procedure   PaintWeekdayHeader(Canvas : TCanvas; ClientRect : TRect); override;
  published
    { Published declarations }
    Property CalendarSettings : TAdrockCalendarSettingsComponent
             read    fCalendarSettings
             Write   fCalendarSettings;
  end;

implementation

Constructor TAdrockCustomCalendarDateHeaderClass.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
end;

Destructor TAdrockCustomCalendarDateHeaderClass.Destroy;
begin
  INherited Destroy;
end;

Procedure TAdrockCustomCalendarDateHeaderClass.PaintWeekDayHeader(Canvas : TCanvas; ClientRect : TRect);
begin
  OffsetLeft := 35;
  OffsetRight :=10;
  if (Assigned(fCalendarSettings)) then
   begin
     Colors.BAck      := CalendarSettings.CalendarSettings.Colors.Back;
     Colors.Monday    := CalendarSettings.CalendarSettings.Colors.MonFri;
     Colors.Tuesday   := CalendarSettings.CalendarSettings.Colors.MonFri;
     Colors.Wednesday := CalendarSettings.CalendarSettings.Colors.MonFri;
     Colors.Thursday  := CalendarSettings.CalendarSettings.Colors.MonFri;
     Colors.Friday    := CalendarSettings.CalendarSettings.Colors.MonFri;
     Colors.Saturday  := CalendarSettings.CalendarSettings.Colors.Saturday;
     Colors.Sunday    := CalendarSettings.CalendarSettings.Colors.Sunday;
     StartDayOfWeek   := CalendarSettings.CalendarSettings.WeekStart;
     WeekNumbers      := (opShowWeekNumbers in CalendarSettings.CalendarSettings.options);
     inherited PaintWeekDayHeader(Canvas, ClientRect);
   end
  else
    Canvas.Textout(CLientRect.Left, ClientRect.Top, 'Calendar Property is Nil');
end;

end.
