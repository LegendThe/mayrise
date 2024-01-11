unit adtimspd;

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

Uses WinProcs, WinTypes, Controls, Classes, Buttons,
     {$ifndef win32}
     graphics,
     {$endif}
     ExtCtrls;

const
  DefaultInitRepeatPause = 400;  { pause before repeat timer (ms) }
  DefaultRepeatPause     = 100;  { pause before hint window displays (ms)}
  InitRepeatPause        = 400;  { pause before repeat timer (ms) }
  RepeatPause            = 100;  { pause before hint window displays (ms)}

Type
  TTimeBtnState = set of (tbFocusRect, tbAllowTimer);

  TAdrockTimerSpeedButtonCustom = class(TSpeedButton)
  private
    fAllowTimer          : Boolean;
    fRepeatPause        : Integer;
    fInitialRepeatPause : Integer;
    FRepeatTimer        : TTimer;
    FTimeBtnState       : TTimeBtnState;
    procedure TimerExpired(Sender: TObject);
  protected
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  public
    Constructor Create(AOwner : TComponent); override;
    Destructor Destroy; override;
    property AllowTimer   : Boolean
             Read    fAllowTimer
             Write   fAllowTimer
             default TRUE;

    property TimeBtnState : TTimeBtnState
             Read FTimeBtnState
             Write FTimeBtnState;

    Property RepeatPauseInitial : Integer
             Read    fInitialRepeatPause
             Write   fInitialRepeatPause
             Default DefaultInitRepeatPause;

    Property RepeatPause     : Integer
             Read    fRepeatPause
             Write   fRepeatPause
             Default DefaultRepeatPause;
  end;

  TAdrockTimerSpeedButton = class(TAdrockTimerSpeedButtonCustom)
  Published
    {$ifdef WIN32}
    property TimeBtnState;
    {$endif}
    Property Color;
    Property RepeatPauseInitial;
    Property RepeatPause;
  end;

Procedure Register;

implementation

{TAdrockTimerSpeedButtonCustom}
Constructor TAdrockTimerSpeedButtonCustom.Create;
begin
  Inherited Create(AOwner);
  fInitialRepeatPause := DefaultInitRepeatPause;
  fRepeatPause        := DefaultRepeatPause;
  AllowTimer          := TRUE;
end;


destructor TAdrockTimerSpeedButtonCustom.Destroy;
begin
  if FRepeatTimer <> nil then
    FRepeatTimer.Free;
  inherited Destroy;
end;

procedure TAdrockTimerSpeedButtonCustom.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited MouseDown (Button, Shift, X, Y);
  if (tbAllowTimer in FTimeBtnState) and (AllowTimer = TRUE) then
  begin
    if FRepeatTimer = nil then
      FRepeatTimer := TTimer.Create(Self);

    FRepeatTimer.OnTimer := TimerExpired;
    FRepeatTimer.Interval := InitRepeatPause;
    FRepeatTimer.Enabled  := True;
  end;
end;

procedure TAdrockTimerSpeedButtonCustom.MouseUp(Button: TMouseButton; Shift: TShiftState;
                                  X, Y: Integer);
begin
  inherited MouseUp (Button, Shift, X, Y);
  if FRepeatTimer <> nil then
    FRepeatTimer.Enabled  := False;
end;

procedure TAdrockTimerSpeedButtonCustom.TimerExpired(Sender: TObject);
begin
  FRepeatTimer.Interval := RepeatPause;
  if (FState = bsDown) and MouseCapture then
  begin
    try
      Click;
    except
      FRepeatTimer.Enabled := False;
      raise;
    end;
  end;
end;

procedure TAdrockTimerSpeedButtonCustom.Paint;
var
  R: TRect;
begin
  inherited Paint;
  if tbFocusRect in FTimeBtnState then
  begin
    R := Bounds(0, 0, Width, Height);
    InflateRect(R, -3, -3);
    if FState = bsDown then
      OffsetRect(R, 1, 1);
    DrawFocusRect(Canvas.Handle, R);
  end;
end;

Procedure Register;
begin
  RegisterCOmponents('Adrock', [TAdrockTimerSpeedButton]);
end;

end.
