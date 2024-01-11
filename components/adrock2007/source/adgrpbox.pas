unit adgrpbox;

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

uses Messages, WinProcs, WinTypes, SysUtils, Classes, Controls, Forms, Menus, Graphics,
     AdWFOc;

{$R-}

type
  TAdrockCustomGroupBx = class(TCustomControl)
  private
    fDrawFrame             : Boolean;
    fFontTitle : TFont;

    Procedure SetDrawFrame(Value : Boolean);

    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;

    Procedure SetTitleFont(NewFont : TFont);
  protected
    procedure AlignControls(AControl: TControl; var Rect: TRect); override;
    procedure Paint; override;
    Procedure OnFontChanged(Sender : TOBject); dynamic;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor  Destroy; override;

    Property TitleFont : TFont read fFontTitle write SetTitleFont;

    property  DrawFrame : Boolean
              Read    fDrawFrame
              Write   SetDrawFrame
              Default TRUE;

  Published
  end;

  TAdrockCustomGroupBox = class(TAdrockCustomGroupBx)
  private    { Protected declarations }
    { Private declarations }
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;

    OldFontColor           : TColor;
    OldFontStyle           : TFontStyles;

  protected
    { Protected declarations }
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;

    Function GetEnabledState : Boolean;
    Procedure SetEnabledState(Value : Boolean);
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    Procedure   BeforeChange(Sender : TObject); virtual;
    Procedure   BeforeDataChange(Sender : TObject); virtual;

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;

    Property  OnBeforeDataChange : TNotifyEvent
              Read    fOnBeforeDataChange
              Write   fOnBeforeDataChange;

    Property  OnBeforeChange : TNotifyEvent
              Read    fOnBeforeChange
              Write   fOnBeforeChange;

    Property  Enabled : Boolean
              Read GetEnabledState
              Write SetEnabledState;
  published
    { Published declarations }
  end;

  TAdrockGroupBox = class(TAdrockCustomGroupBox)
  published
    property Align;
    property Caption;
    property Color;
    property Ctl3D;
    Property DrawFrame;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    Property TitleFont;
    property Visible;
    Property WhenFocused;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$ifdef WIn32}
    property OnStartDrag;
    {$endif}
  end;

implementation

{ TAdrockCustomGroupBx }

constructor TAdrockCustomGroupBx.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$ifdef Win32}
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csDoubleClicks, csReplicatable];
  {$else}
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csDoubleClicks];
  {$endif}
  Width := 185;
  Height := 105;

  fFontTitle := TFont.Create;
  fFontTitle.OnChange := OnFontChanged;

  fDrawFrame := TRUE;
end;

Destructor TAdrockCustomGroupBx.Destroy;
begin
  fFontTitle.Free;
  Inherited Destroy;
end;

procedure TAdrockCustomGroupBx.AlignControls(AControl: TControl; var Rect: TRect);
begin
  Canvas.Font := TitleFont;
  Inc(Rect.Top, Canvas.TextHeight('0'));
  Inc(Rect.Left,5);
  Inc(Rect.Top, 2);
  Dec(Rect.Right,5);
  Dec(Rect.Bottom,5);
  if Ctl3d then InflateRect(Rect, -1, -1);
  Canvas.Font := Font;
  inherited AlignControls(AControl, Rect);
end;

Procedure TAdrockCustomGroupBx.OnFontChanged(Sender : TOBject);
begin
  Invalidate;
end;

Procedure TAdrockCustomGroupBx.SetTitleFont(NewFont : TFont);
begin
  fFontTitle.Assign(NewFont);
end;

Procedure TAdrockCustomGroupBx.SetDrawFrame(Value : Boolean);
begin
  fDrawFrame := Value;
  Invalidate;
end;

procedure TAdrockCustomGroupBx.Paint;
var
  H: Integer;
  R: TRect;
  TextZ : Array [0..255] of char;
begin
  with Canvas do
  begin
    Font := Self.TitleFont;
    H := TextHeight('0');
    R := Rect(0, H div 2 - 1, Width, Height);

    if (DrawFrame) then
      if Ctl3D then
        begin
          Inc(R.Left);
          Inc(R.Top);
          Brush.Color := clBtnHighlight;
          FrameRect(R);
          OffsetRect(R, -1, -1);
          Brush.Color := clBtnShadow;
        end
      else
        Brush.Color := clWindowFrame;

    if (DrawFrame) then
      FrameRect(R);
    if Text <> '' then
    begin
      R := Rect(8, 0, 0, H);
      StrPCopy(TextZ, Text);
      DrawText(Handle, TextZ, Length(Text), R, DT_LEFT or DT_SINGLELINE or
        DT_CALCRECT);
      Brush.Color := Color;
      StrPCopy(TextZ, Text);
      DrawText(Handle, TextZ, Length(Text), R, DT_LEFT or DT_SINGLELINE);
    end;
    Font := Self.Font;
  end;
end;

procedure TAdrockCustomGroupBx.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, Caption) and CanFocus then
    begin
      SelectFirst;
      Result := 1;
    end else
      inherited;
end;

procedure TAdrockCustomGroupBx.CMTextChanged(var Message: TMessage);
begin
  Invalidate;
  Realign;
end;

procedure TAdrockCustomGroupBx.CMCtl3DChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
  Realign;
end;

{ TAdrockCustomGroupBox }

Constructor TAdrockCustomGroupBox.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$endif}
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  Width     := 133;
end;

Destructor TAdrockCustomGroupBox.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockCustomGroupBox.Loaded;
begin
  inherited Loaded;
  SetEnabledState(Enabled);
end;

Procedure TAdrockCustomGroupBox.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  if (fWhenFocused.Enabled) then
   begin
     OldFontColor := TitleFont.Color;
     OldFontStyle := TitleFont.Style;
     TitleFont.Color := fWhenFocused.FocusLabelStyle.FontColor;
     TitleFont.Style := fWhenFocused.FocusLabelStyle.FontStyle;
   end;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockCustomGroupBox.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  if (fWhenFocused.Enabled) then
   begin
     TitleFont.Color := OldFontColor;
     TitleFont.Style := OldFontStyle;
   end;
  Inherited;
end;

Procedure TAdrockCustomGroupBox.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockCustomGroupBox.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

procedure TAdrockCustomGroupBox.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

Function TAdrockCustomGroupBox.GetEnabledState : Boolean;
begin
  Result := Inherited Enabled;
end;

Procedure TAdrockCustomGroupBox.SetEnabledState(Value : Boolean);
Var
 Pos : Integer;
begin
  Inherited Enabled := Value;
  for Pos := 0 to ControlCount-1 do
    Controls[Pos].Enabled := Value;
end;



end.
