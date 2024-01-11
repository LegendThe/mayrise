unit AdCalPN;

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

Interface

{$I Adrock.INC}

{ $ DEFINE DEBUG}

{$ifdef ADROCK_CC}
{$undef DEBUG}
{$endif}

Uses
  dialogs,
 {$IFDEF DEBUG}
  dbugintf,
 {$endif}
  {$IFDEF ADROCK_DELPHI_1}
  WinProcs, WinTypes,
  {$else}
  Windows,
  {$endif}
  Classes,Controls, ExtCtrls, Buttons, Messages,
  Graphics,
  SysUtils,
  addatecn,   { TAdrockDateTimeEdit Constants         }
  AdCalSet,   { TAdrockCalendarSettingsComponent      }
  addatecc,   { TAdrockCalendarSettings               }
  AdCapt,     { TAdrockCaption                        }
  AdCCDHCL,   { TAdrockCustomCalendarDateHeader Class }
  AdDatnav,   { TAdrockDateNavigator                  }
  AdBev,      { TAdrockBevel                          }
  AdDrDaCl,   { TAdrockDrawDatesClass                 }
  AdPopPan,   { TAdrockPopupPanel                     }
  ADDateDT;   { TAdrockDateTimeCustomClass            }

Const
  ADCALPN_ACCEPT     = 54500;
  ADCALPN_CANCEL     = 54501;
  ADCALPN_CLEARDATE  = 54502;
  ADCALPN_GOTOTODAY  = 54503;
  CM_CALENDAR_SETTINGS_CHANGED = WM_USER + 653;
  
Type
  TAdrockCalendarPanel =  Class(TAdrockCustomPopupPanel)
  private
    DateHeaderRect     : TRect;
    TopCaptionRect     : TRect;
    BottomCaptionRect  : TRect;
    CalendarRect       : TRect;
    MouseIsDown        : Boolean;
    InSetDate          : Boolean;
    FonShutCalendar    : TAdrockShutCalendarEvent;
    FonClearCalendar   : TNotifyEvent;
    DrawDates          : TAdrockDrawDatesClass;
    fCalendarSettings  : TAdrockCalendarSettingsComponent;
    fonChange          : TNotifyEvent;
    InNavigatorChange  : Boolean;
    fDate              : TAdrockDateClass;

    procedure NavigatorChange(Sender: TObject);
    procedure SetCalendar(NewValue : TAdrockCalendarSettingsComponent);
    procedure SetDate(NewValue : TAdrockDateClass);
    procedure GotoTodayButtonClick(Sender: TObject);
    procedure ClearDateButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure AcceptButtonClick(Sender: TObject);

    procedure PaintBoxPaint(Sender: TObject);
    procedure PanelResize(Sender: TObject);
    procedure PaintBoxMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PaintBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBoxDblClick(Sender: TObject);

    procedure DateChanged(Sender: TObject);
    Procedure CalendarSettingsChanged(var Message : TMessage); message CM_CALENDAR_SETTINGS_CHANGED;
    Procedure Change;
  Protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    OldIndex        : Integer;
    Panel           : TPanel;
    PaintBox        : TPaintBox;
    BottomBevel     : TAdrockBevel;
    TopBevel        : TAdrockBevel;
    Navigator       : TAdrockDateNavigator;
    ButtonPanel     : TPanel;
    ClearDateButton : TSpeedButton;
    GotoTodayButton : TSpeedButton;
    AcceptButton    : TSpeedButton;
    CancelButton    : TSpeedButton;

    Procedure   RefreshButtonPanel;
    Procedure   RefreshNavigator;
    procedure   SetDateLocal(NewValue : TDateTime);
    procedure   RefreshRectangles;
    procedure   Refresh;
    Procedure   Resync;
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy; override;
    procedure   CreateWnd; override;
    procedure   WMSize(Var Message : TWMSize); message WM_SIZE;

    Property OnShutCalendar  : TAdrockShutCalendarEvent
             Read    fOnShutCalendar
             write   fOnShutCalendar;

    Property OnClearCalendar  : TNotifyEvent
             Read    fOnClearCalendar
             write   fOnClearCalendar;

    Property    Date : TAdrockDateClass
                read fDate
                Write SetDate;
  published
    Property    Align;
    Property    Enabled;
    Property    Visible;

    Property    CalendarSettings : TAdrockCalendarSettingsComponent
                Read fCalendarSettings
                Write SetCalendar;

{    Property    Refresh : Boolean read fRefresh write SetRefresh;}

    Property    OnChange : TNotifyEvent
                read fonChange Write fOnChange;
  end;

  TAdrockCalendarPopupPanel = Class(TAdrockCalendarPanel)
  public
    Constructor Create(Aowner : TComponent);             Override;
    procedure   CreateParams(var Params: TCreateParams); override;
    procedure   CreateWnd; override;
  end;

implementation

{$R *.RES}
{$R ADCALPN1.RES}

Constructor TAdrockCalendarPopupPanel.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}

  Floating := TRUE;
end;

procedure TAdrockCalendarPopupPanel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
   begin
     Style := Style or WS_BORDER;
     {$ifdef win32}
     if not (csdesigning in ComponentState) then
       ExStyle := WS_EX_TOOLWINDOW or WS_EX_TOPMOST;
     {$endif}
     WindowClass.Style := CS_SAVEBITS;
  end;
end;

procedure   TAdrockCalendarPopupPanel.CreateWnd;
begin
  inherited CreateWnd;
  if not (csdesigning in ComponentState) then
   begin
     {$IFDEF ADROCK_DELPHI_1}
     WinProcs.SetParent(Handle, 0);
     {$else}
     Windows.SetParent(Handle, 0);
     {$endif}
     CallWindowProc(DefWndProc, Handle, wm_SetFocus, 0, 0);
   end;
end;

Constructor TAdrockCalendarPanel.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);

 {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}

  fDate := TAdrockDateClass.Create(Self);
  fDate.OnChange := DateChanged;

  Panel:= TPanel.Create(Self);
  Panel.Parent := Self;
  Panel.Align := alClient;
  Panel.BevelWidth := 2;
  Panel.BorderWidth := 3;
  Panel.TabOrder := 0;
  Panel.OnReSize := PanelResize;

  ButtonPanel := TPanel.Create(Self);
  ButtonPanel.Parent := Panel;
  ButtonPanel.Height := 0;
  ButtonPanel.Align := alBottom;
  ButtonPanel.BevelOuter := bvNone;
  ButtonPanel.TabOrder := 1;

  ClearDateButton:= TSpeedButton.Create(Self);
  ClearDateButton.Parent := ButtonPanel;
  ClearDateButton.Left := 2;
  ClearDateButton.Top := 2;
  ClearDateButton.Width := 25;
  ClearDateButton.Height := 21;
  ClearDateButton.Caption := '';
  ClearDateButton.Glyph.Handle := LoadBitmap(hInstance, 'TADROCKCALENDARPOPUPFORM_CLEAR');
  ClearDateButton.OnClick := ClearDateButtonClick;
  ClearDateButton.Hint := LoadStr(ADCALPN_CLEARDATE);
  ClearDateButton.ShowHint := TRUE;

  GotoTodayButton:= TSpeedButton.Create(Self);
  GotoTodayButton.Parent := ButtonPanel;
  GotoTodayButton.Left := 30;
  GotoTodayButton.Top := 2;
  GotoTodayButton.Width := 25;
  GotoTodayButton.Height := 21;
  GotoTodayButton.Caption := '';
  GotoTodayButton.OnClick := GotoTodayButtonClick;
  GotoTodayButton.Glyph.Handle := LoadBitmap(hInstance, 'TADROCKCALENDARPOPUPFORM_TODAY');
  GotoTodayButton.Hint := LoadStr(ADCALPN_GOTOTODAY)+FormatDateTime('D MMMM, YYYY', Now);
  GotoTodayButton.ShowHint := TRUE;

  CancelButton := TSpeedButton.Create(Self);
  CancelButton.Parent := ButtonPanel;
  CancelButton.Width := 65;
  CancelButton.Top := 2;
  CancelButton.Height := 21;
  CancelButton.Caption := LoadStr(ADCALPN_CANCEL);
  CancelButton.OnClick := CancelButtonClick;
  CancelButton.Glyph.Handle := LoadBitmap(hInstance, 'TADROCKCALENDARPOPUPFORM_CANCEL');

  AcceptButton:= TSpeedButton.Create(Self);
  AcceptButton.Parent := ButtonPanel;
  AcceptButton.Width := 65;
  AcceptButton.Top := 2;
  AcceptButton.Height := 21;
  AcceptButton.Caption := LoadStr(ADCALPN_ACCEPT);
  AcceptButton.OnClick := AcceptButtonClick;
  AcceptButton.Glyph.Handle := LoadBitmap(hInstance, 'TADROCKCALENDARPOPUPFORM_ACCEPT');

  PaintBox:= TPaintBox.Create(Self);
  PaintBox.Parent      := Panel;
  PaintBox.Align       := alClient;
  PaintBox.OnMouseDown := PaintBoxMouseDown;
  PaintBox.OnMouseMove := PaintBox1MouseMove;
  PaintBox.OnDblClick  := PaintBoxDblClick;
  PaintBox.OnMouseUp   := PaintBoxMouseUp;
  PaintBox.OnPaint     := PaintBoxPaint;

  Navigator := TAdrockDateNavigator.Create(Self);
  Navigator.Parent := Panel;
  Navigator.BevelInner := bvNone;
  Navigator.BevelOuter := bvNone;
  Navigator.Color := clBtnFace;
  Navigator.BevelWidth := 1;
  Navigator.BorderWidth := 1;
  Navigator.Align := alTop;
  Navigator.Color := $00FF7777;
  Navigator.OnChange := NavigatorChange;

  TopBevel:= TAdrockBevel.Create(Self);
  TopBevel.Parent := Panel;
  TopBevel.Height := 0;
  TopBevel.Align := alTop;
  TopBevel.Shape := bsnONE;
  TopBevel.tOP := 200;

  BottomBevel := TAdrockBevel.Create(Self);
  BottomBevel.Parent := Panel;
  BottomBevel.Height := 0;
  BottomBevel.Align := alBottom;
  BottomBevel.Shape := bsTopLine;

  DrawDates     := TAdrockDrawDatesClass.Create(Self);

  OldIndex      := -1;
  MouseIsDown   := FALSE;
end;

Destructor TAdrockCalendarPanel.Destroy;
begin
{$IFDEF DEBUG}
SendDebugEx('Before fDate.Free',mtInformation);
{$ENDIF}
  fDate.Free;
{$IFDEF DEBUG}
SendDebugEx('Before DrawDates.Free',mtInformation);
{$ENDIF}
  DrawDates.Free;
{$IFDEF DEBUG}
SendDebugEx('Before Naviagator.Free',mtInformation);
{$ENDIF}
{  Navigator.Free;}
{$IFDEF DEBUG}
SendDebugEx('Before TopBevel.Free',mtInformation);
{$ENDIF}
  TopBevel.Free;
{$IFDEF DEBUG}
SendDebugEx('Before BottomBevel.Free',mtInformation);
{$ENDIF}
  BottomBevel.Free;
{$IFDEF DEBUG}
SendDebugEx('Before PaintBox.Free',mtInformation);
{$ENDIF}
  PaintBox.Free;
{$IFDEF DEBUG}
SendDebugEx('Before clearDateButton.Free',mtInformation);
{$ENDIF}
  ClearDateButton.Free;
{$IFDEF DEBUG}
SendDebugEx('Before GototodayButton.Free',mtInformation);
{$ENDIF}
  GotoTodayButton.Free;
{$IFDEF DEBUG}
SendDebugEx('Before ButtonPanel.Free',mtInformation);
{$ENDIF}
  ButtonPanel.Free;
{$IFDEF DEBUG}
SendDebugEx('Before Inherited Destroy',mtInformation);
{$ENDIF}
  inherited Destroy;
end;

procedure TAdrockCalendarPanel.CreateWnd;
begin
  inherited CreateWND;
end;

procedure TAdrockCalendarPanel.Resync;
begin
  OldIndex := -1;
  SetCalendar(CalendarSettings);
  Refresh;
end;

Procedure TAdrockCalendarPanel.Change;
Var
 OldOnChange : TNotifyEvent;
begin
  OldOnChange := Navigator.OnChange;
  Navigator.OnChange := Nil;
  Navigator.Date.Date := CalendarSettings.CalendarSettings.Date.Date;
  Navigator.OnChange := OldOnChange;
  if (assigned(fONChange)) then
    fOnChange(Self);
end;

Procedure TAdrockCalendarPanel.CalendarSettingsChanged(var Message : TMessage);
begin
  Navigator.Color := CalendarSettings.CalendarSettings.Colors.Navigator;
  Navigator.CustomFormat         := CalendarSettings.CalendarSettings.DateDisplayFormat.ReturnDisplayFormat;
  Navigator.Font.Assign(CalendarSettings.CalendarSettings.DateDisplayFormat.Font);
  Navigator.Date.Date            := CalendarSettings.CalendarSettings.Date.Date;
  Navigator.Date.WeekStart       := CalendarSettings.CalendarSettings.WeekStart;
  Navigator.Date.WeekNumberStyle := CalendarSettings.CalendarSettings.WeekNumberStyle;

  if ((Message.WParam and 1) = 1) then
    Refresh;
  if ((Message.WParam and 2) =2) then
    RefreshNavigator;
  if ((Message.WParam and 4) = 4)then
    RefreshButtonPanel;
end;

procedure TAdrockCalendarPanel.PaintBoxDblClick(Sender: TObject);
Var
  Index : Integer;
  ClientRect : TRect;
  fPoint : TPoint;
begin
   if (Assigned(fCalendarSettings)) then
   begin
     GetCursorPos(fPoint);
     fPoint := PaintBox.ScreenToClient(FPoint);
     ClientRect := Rect(0,18,PaintBox.Width, PaintBox.Height);
     Index := DrawDates.IndexByMouse(ClientRect, Fpoint.X, Fpoint.Y);
     if (Index <> -1) and  ((Index >= DrawDates.MonthBeginIndex-1)
       and (Index < DrawDates.MonthEndIndex)) then
         begin
            DrawDates.CalendarSettings :=CalendarSettings.CalendarSettings;
            Change;
            AcceptButtonClick(sender);
         end;
   end;
end;

procedure TAdrockCalendarPanel.PaintBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  ClientRect : TRect;
  Index      : Integer;
begin
  if (Button = mbLeft) then
   if (Assigned(fCalendarSettings)) then
   begin
     MouseIsDown := TRUE;
     DrawDates.CalendarSettings :=CalendarSettings.CalendarSettings;
     ClientRect := Rect(0,18,PaintBox.Width, PaintBox.Height);
     Index := DrawDates.IndexByMouse(ClientRect, X,Y);
     if (Index <> -1) and (Index <> OldIndex) and ((Index >= DrawDates.MonthBeginIndex-1)
       and (Index < DrawDates.MonthEndIndex)) then
       begin
          OldIndex := Index;
          CalendarSettings.CalendarSettings.Date.Day := (1+((Index+1)-DrawDates.MonthBeginIndex));
{          Change;}
          Refresh;
       end;
   end;
end;

procedure TAdrockCalendarPanel.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var
  ClientRect : TRect;
  Index      : Integer;
begin
 if (MouseIsDown) then
   begin
{     DrawDates.CustomCalendar :=Calendar;
     fHeader.CustomCalendar := Calendar;
}
     ClientRect := Rect(0,18,PaintBox.Width, PaintBox.Height);
     Index := DrawDates.IndexByMouse(ClientRect, X,Y);
     if (Index <> -1) and (Index <> OldIndex) and ((Index >= DrawDates.MonthBeginIndex-1)
       and (Index < DrawDates.MonthEndIndex)) then
       begin
          OldIndex := Index;
          CalendarSettings.CalendarSettings.Date.Day := 1+((Index+1)-DrawDates.MonthBeginIndex);
          Change;
          Refresh;
       end;
   end;
end;

procedure TAdrockCalendarPanel.PaintBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  ClientRect : TRect;
  Index      : Integer;
begin
  if (Button = mbLeft) and (MouseIsDown = TRUE) then
   begin
     ClientRect := Rect(0,18,PaintBox.Width, PaintBox.Height);
     Index := DrawDates.IndexByMouse(ClientRect, X,Y);
     MouseIsDown := FALSE;
     if (Index <> -1) and  ((Index >= DrawDates.MonthBeginIndex-1)
       and (Index < DrawDates.MonthEndIndex)) then
      begin
        CalendarSettings.CalendarSettings.Date.Day := (1+((Index+1)-DrawDates.MonthBeginIndex));
        if ((Index >= DrawDates.MonthBeginIndex-1) and (Index < DrawDates.MonthEndIndex)) then
         if (opMouseUpCloseCalendar in CalendarSettings.CalendarSettings.Options) then
           AcceptButtonClick(Sender);
      end;
   end;
end;

procedure TAdrockCalendarPanel.PanelResize(Sender: TObject);
begin
{}
end;

procedure TAdrockCalendarPanel.PaintBoxPaint(Sender: TObject);
begin
  Refresh;
end;

procedure TAdrockCalendarPanel.RefreshRectangles;
Var
 TopCaptionHeight, BottomCaptionHeight : Integer;
begin
    if (CalendarSettings <> Nil) then
     begin
        TopCaptionHeight :=0;
        BottomCaptionHeight := 0;

        if (CalendarSettings.CalendarSettings.CaptionMsg.Enabled) and
          (CalendarSettings.CalendarSettings.CaptionMsg.Caption > '') then
          TopCaptionHeight := CalendarSettings.CalendarSettings.CaptionMsg.ReturnCaptionHeight(PaintBox.ClientWidth);
        if (CalendarSettings.CalendarSettings.StatusMsg.Enabled) and
          (CalendarSettings.CalendarSettings.StatusMsg.Caption > '') then
          BottomCaptionHeight := CalendarSettings.CalendarSettings.StatusMsg.ReturnCaptionHeight(PaintBox.ClientWidth);

        if (TopCaptionHeight >0) then
          TopCaptionRect := Rect(0,0, PaintBox.ClientWidth, TopCaptionHeight)
        else
          TopCaptionRect := Rect(0,0, 0,0);

        if (BottomCaptionHeight>0) then
          BottomCaptionRect := Rect(0,PaintBox.ClientHeight-BottomCaptionHeight, PaintBox.ClientWidth, PaintBox.ClientHeight)
        else
          BottomCaptionRect := Rect(0,0, 0,0);

        CalendarRect := Rect(0,TopCaptionRect.Bottom+18,PaintBox.ClientWidth,PaintBox.CLientHeight-BottomCaptionHeight);
        DateHeaderRect := Rect(0,TopCaptionRect.Bottom, PaintBox.ClientWidth,TopCaptionRect.Bottom+18);
     end;
end;

procedure TAdrockCalendarPanel.Refresh;
Var
  ClientRect : TRect;
  fBitmap    : TBitmap;
  frect      : TRect;
begin
  RefreshRectangles;
  if (CalendarSettings <> nil) then
    DrawDates.CalendarSettings :=CalendarSettings.CalendarSettings
  else
    DrawDates.CalendarSettings :=Nil;
  ClientRect := Rect(0,18,PaintBox.Width, PaintBox.Height);
  fBitmap := TBitmap.Create;
 try
    fbitmap.Width := PaintBox.ClientWidth;
    fBitmap.Height := PaintBox.ClientHeight;

    if (assigned(fCalendarSettings) = FALSE) then
     begin
      fbitmap.Canvas.Brush.Color := clBtnFace;
      fRect := Rect(0,0, PaintBox.Width, PaintBox.Height);
      fbitmap.Canvas.FillRect(fRect);
      fbitmap.Canvas.Font.Color := clBlack;
      DrawText(fBitmap.Canvas.handle, 'Calendar Property is Nil', -1, fRect, DT_SINGLELINE OR DT_CENTER OR DT_VCENTER);
     end
    else
      begin
        if (CalendarSettings.CalendarSettings.CaptionMsg.Enabled) and
          (CalendarSettings.CalendarSettings.CaptionMsg.Caption > '') then
         begin
          fbitmap.Canvas.Brush.Color := CalendarSettings.CalendarSettings.Colors.CaptionBack;
          fbitmap.Canvas.FillRect(TopCaptionRect);
          CalendarSettings.CalendarSettings.CaptionMsg.PaintCaption(fbitmap.Canvas, Point(0,0), TopCaptionRect);
         end;

        CalendarSettings.CalendarSettings.WeekDayHeader.PaintWeekDayHeader(fbitmap.Canvas, DateHeaderRect);
        DrawDates.PaintDates(fbitmap.Canvas, CalendarRect);
        if (CalendarSettings.CalendarSettings.StatusMsg.Enabled) and
           (CalendarSettings.CalendarSettings.StatusMsg.Caption > '') then
         begin
          fbitmap.Canvas.Brush.Color := CalendarSettings.CalendarSettings.Colors.StatusBack;
          fbitmap.Canvas.FillRect(BottomCaptionRect);
          CalendarSettings.CalendarSettings.StatusMsg.PaintCaption(fbitmap.Canvas, Point(0,0), BottomCaptionRect);
         end;
    end;
    PaintBox.Canvas.Draw(0, 0, fbitmap);
  finally
    fbitmap.free;
  end;
end;

procedure TAdrockCalendarPanel.SetDate(NewValue : TAdrockDateClass);
begin
  if (InSetDate= TRUE) then
    exit;
  InSetDate := TRUE;
  try
    fDate.Assign(NewValue);
    if (Assigned(fCalendarSettings)) then
      begin
        CalendarSettings.CalendarSettings.Date.Date := NewValue.Date;
        Refresh;
      end;
   Change;
  finally
    InSetDate := FALSE;
  end;
end;

procedure TAdrockCalendarPanel.SetDateLocal(NewValue : TDateTime);
begin
  if (InSetDate= TRUE) then
    exit;
  InSetDate := TRUE;
  try
    fDate.Date := NewValue;
    if (Assigned(fCalendarSettings)) then
      begin
        if (CalendarSettings.CalendarSettings.Date.Date <> NewValue) then
          CalendarSettings.CalendarSettings.Date.Date := NewValue;
        RefreshRectangles;
        Refresh;
      end;
   Change;
  finally
    InSetDate := FALSE;
  end;
end;

procedure TAdrockCalendarPanel.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fCalendarSettings <> nil) and (AComponent = CalendarSettings) then
    CalendarSettings := nil;
end;

Procedure TAdrockCalendarPanel.RefreshNavigator;
begin
  if (CalendarSettings.CalendarSettings <> nil) then
    begin
     Navigator.Color := CalendarSettings.CalendarSettings.Colors.Navigator;
     Navigator.ShowDate := opShowDate in CalendarSettings.CalendarSettings.Options;
     Navigator.Date.Date := CalendarSettings.CalendarSettings.Date.DateTime;
     Navigator.CustomFormat  := CalendarSettings.CalendarSettings.DateDisplayFormat.ReturnDisplayFormat;
     Navigator.Font.Assign(CalendarSettings.CalendarSettings.DateDisplayFormat.Font);

    if (CalendarSettings.CalendarSettings.ShowOnCalendar = swNothing) then
       begin
          Navigator.Height := 0;
          TopBevel.Height := 0;
       end
     else
       begin
         Navigator.Height := 20;
         TopBevel.Height := 4;

         { Setup the style for the navigator.}
         case CalendarSettings.CalendarSettings.ShowOnCalendar of
           swMonthArrows          : Navigator.Style := styMonth;
           swYearArrows           : Navigator.Style := styYear;
           swMonthAndYearArrows   : Navigator.Style := styMonthYear;
           swAll                  : Navigator.Style := styDayMonthYear;
         end;
         TopBevel.Visible := TRUE;
       end
    end;
end;

Procedure TAdrockCalendarPanel.RefreshButtonPanel;
begin
  if (CalendarSettings.CalendarSettings <> nil) then
    begin
     ButtonPanel.Visible := (opShowClearAndTodayButtons in CalendarSettings.CalendarSettings.Options)
       or (opShowAcceptCancelButtons in CalendarSettings.CalendarSettings.Options);
     ClearDateButton.Visible := (opShowClearAndTodayButtons in CalendarSettings.CalendarSettings.Options);
     GotoTodayButton.Visible := (opShowClearAndTodayButtons in CalendarSettings.CalendarSettings.Options);
     AcceptButton.Visible    := (opShowAcceptCancelButtons in CalendarSettings.CalendarSettings.Options);
     CancelButton.Visible    := (opShowAcceptCancelButtons in CalendarSettings.CalendarSettings.Options);

     if (Buttonpanel.Visible = TRUE) then
       ButtonPanel.Height := 23
     else
       ButtonPanel.Height := 0;
   end;
end;

procedure TAdrockCalendarPanel.SetCalendar(NewValue : TAdrockCalendarSettingsComponent);
begin
  fCalendarSettings := NewValue;
  if (Assigned(fCalendarSettings) = true) then
   begin
     RefreshButtonPanel;
     CalendarSettings.CalendarSettings.WeekDayHeader.Weeknumbers :=
        (opShowWeekNumbers in CalendarSettings.CalendarSettings.Options);
     RefreshNavigator;
   end
  else
   begin
     Navigator.Height := 0;
     TopBevel.Height := 0;
   end;
  BottomBevel.Visible := ButtonPanel.Visible;
  Refresh;
end;

procedure TAdrockCalendarPanel.WMSize(Var Message :TWmSize);
begin
  inherited;
  CancelButton.Left := (ClientWidth - (CancelButton.Width+10));
  AcceptButton.Left := (CancelButton.Left - (AcceptButton.Width + 5));
  RefreshRectangles;
end;

procedure TAdrockCalendarPanel.NavigatorChange(Sender: TObject);
begin
  if (InNavigatorChange = TRUE) then
    exit;
  InNavigatorChange := TRUE;
  try
    SetDateLocal(Navigator.Date.Date);
  finally
    InNavigatorChange := FALSE;
  end;
end;

procedure TAdrockCalendarPanel.ClearDateButtonClick(Sender: TObject);
begin
  if (Assigned(fOnClearCalendar)) then
    fOnClearCalendar(Self);
end;

procedure TAdrockCalendarPanel.CancelButtonClick(Sender: TObject);
begin
  if (Assigned(fOnShutCalendar)) then
    fOnShutCalendar(Self, ccsCancel);
end;

procedure TAdrockCalendarPanel.AcceptButtonClick(Sender: TObject);
begin
  if (Assigned(fOnShutCalendar)) then
    fOnShutCalendar(Self, ccsNormal);
end;

procedure TAdrockCalendarPanel.GotoTodayButtonClick(Sender: TObject);
begin
  SetDateLocal(Trunc(Now));
  OldIndex := -1;                
end;

procedure TAdrockCalendarPanel.DateChanged(Sender: TObject);
begin
{ Change;}
end;


end.
