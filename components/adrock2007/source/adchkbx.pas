unit adchkbx;

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

uses StdCtrls, Messages, Winprocs, WinTypes, SysUtils, Classes, Controls, Forms, Menus, Graphics,
     AdWFoc;

Type
  TAdrockCustomCheckBx = class(TButtonControl)
  private
    fReadOnly              : Boolean;
    FAlignment: TLeftRight;
    FAllowGrayed: Boolean;
    FState: TCheckBoxState;
    function GetCheckedState: Boolean;
    procedure SetAlignment(Value: TLeftRight);
    procedure SetCheckedState(Value: Boolean);
    procedure SetState(Value: TCheckBoxState);
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    procedure Toggle; virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWindowHandle(const Params: TCreateParams); override;
    procedure CreateWnd; override;
    property  Alignment: TLeftRight read FAlignment write SetAlignment default taRightJustify;
    property  AllowGrayed: Boolean read FAllowGrayed write FAllowGrayed default False;
    property  Checked: Boolean read GetCheckedState write SetCheckedState stored False;
    property  State: TCheckBoxState read FState write SetState default cbUnchecked;
  public
    constructor Create(AOwner: TComponent); override;
    Property  ReadOnly : Boolean
              Read fReadOnly
              Write fReadOnly
              Default FALSE;
  published
    property TabStop default True;
  end;

  TAdrockCustomCheckBox = Class(TAdrockCustomCheckBx)
  private    { Protected declarations }
    { Private declarations }
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;

    OldBackColor           : TColor;
    OldFontColor           : TColor;
    OldFontStyle           : TFontStyles;
  protected
    { Protected declarations }
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
 public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    Procedure   BeforeChange(Sender : TObject); virtual;
    Procedure   BeforeDataChange(Sender : TObject); virtual;

    property ReadOnly;

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;


    Property  OnBeforeDataChange : TNotifyEvent
              Read    fOnBeforeDataChange
              Write   fOnBeforeDataChange;

    Property  OnBeforeChange : TNotifyEvent
              Read    fOnBeforeChange
              Write   fOnBeforeChange;
  published
    { Published declarations }
  end;

  TAdrockCheckBox = class(TAdrockCustomCheckBox)
  published
    property Alignment;
    property Align;
    property AllowGrayed;
    property Caption;
    property Checked;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property State;
    Property WhenFocused;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$ifdef WIN32}
    property OnStartDrag;
    {$endif}
  end;

implementation

{ TAdrockCustomCheckBox }

constructor TAdrockCustomCheckBx.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 97;
  Height := 17;
  TabStop := True;
  ControlStyle := [csSetCaption, csDoubleClicks];
  FAlignment := taRightJustify;
  FState := cbUnchecked;
  fReadOnly := FALSE;
end;

procedure TAdrockCustomCheckBx.Toggle;
begin
  if (ReadOnly = FALSE) then
  case State of
    cbUnchecked:
      if AllowGrayed then State := cbGrayed else State := cbChecked;
    cbChecked: State := cbUnchecked;
    cbGrayed: State := cbChecked;
  end;
end;

function TAdrockCustomCheckBx.GetCheckedState: Boolean;
begin
  Result := State = cbChecked;
end;

procedure TAdrockCustomCheckBx.SetAlignment(Value: TLeftRight);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    RecreateWnd;
  end;
end;

procedure TAdrockCustomCheckBx.SetCheckedState(Value: Boolean);
begin
  if Value then State := cbChecked else State := cbUnchecked;
end;

procedure TAdrockCustomCheckBx.SetState(Value: TCheckBoxState);
Var
 OK : Boolean;
begin
  OK := TRUE;
  if (OK) then
   if FState <> Value then
    begin
     FState := Value;
     if HandleAllocated then
       SendMessage(Handle, BM_SETCHECK, Integer(FState), 0);
     Click;
   end;
end;

procedure TAdrockCustomCheckBx.CreateParams(var Params: TCreateParams);
const
  {$ifndef WIN32}
  Alignments: array[TLeftRight] of LONGINT = (BS_LEFTTEXT, 0);
  {$else}
  Alignments: array[TLeftRight] of DWORD= (BS_LEFTTEXT, 0);
  {$endif}
begin
  inherited CreateParams(Params);
  CreateSubClass(Params, 'BUTTON');
  with Params do
    Style := Style or BS_3STATE or Alignments[FAlignment];
end;

procedure TAdrockCustomCheckBx.CreateWnd;
begin
  inherited CreateWnd;
  SendMessage(Handle, BM_SETCHECK, Integer(FState), 0);
end;

procedure TAdrockCustomCheckBx.CreateWindowHandle(const Params: TCreateParams);
begin
  if Ctl3D and not NewStyleControls then
  begin      { special subclassing required by unicode Ctl3D on NT}
    with Params do
      WindowHandle := CreateWindowEx(ExStyle, 'BUTTON', Caption, Style,
        X, Y, Width, Height, WndParent, 0, HInstance, Param);
    Subclass3DWnd(WindowHandle);
    DefWndProc := Pointer(GetWindowLong(WindowHandle, GWL_WNDPROC));
    CreationControl := Self;
    SetWindowLong(WindowHandle, GWL_WNDPROC, Longint(@InitWndProc));
    SendMessage(WindowHandle, WM_NULL, 0, 0);
  end
  else
    inherited CreateWindowHandle(Params);
end;

procedure TAdrockCustomCheckBx.CMCtl3DChanged(var Message: TMessage);
begin
  RecreateWnd;
end;

procedure TAdrockCustomCheckBx.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, Caption) and CanFocus then
    begin
      SetFocus;
      if Focused then Toggle;
      Result := 1;
    end else
      inherited;
end;

procedure TAdrockCustomCheckBx.CNCommand(var Message: TWMCommand);
begin
  if Message.NotifyCode = BN_CLICKED then Toggle;
end;

procedure TAdrockCustomCheckBx.WMSetFocus(var Message: TWMSetFocus);
begin  { fix double focus rect drawing bug in Ctl3D when switching notebook pages }
  if Ctl3D and not NewStyleControls then  UpdateWindow(Handle);
  inherited;
end;

{TAdrockCustomCheckBox}

Constructor TAdrockCustomCheckBox.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$endif}
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  Width     := 133;
end;

Destructor TAdrockCustomCheckBox.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockCustomCheckBox.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockCustomCheckBox.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  if (fWhenFocused.Enabled) then
   begin
     OldFontColor := Font.Color;
     OldFontStyle := Font.Style;
     OldBackColor := Color;
     Font.Color := fWhenFocused.FocusLabelStyle.FontColor;
     Font.Style := fWhenFocused.FocusLabelStyle.FontStyle;
     if (fWhenFocused.UseBackColorOnCheckBoxAndRadioButtons) then
       Color      := fWhenFocused.backColor;
   end;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockCustomCheckBox.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  if (fWhenFocused.Enabled) then
   begin
     Font.Color := OldFontColor;
     Font.Style := OldFontStyle;
     if (fWhenFocused.UseBackColorOnCheckBoxAndRadioButtons) then
       Color      := OldBackColor;
   end;
  Inherited;
end;

Procedure TAdrockCustomCheckBox.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockCustomCheckBox.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

procedure TAdrockCustomCheckBox.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;


end.
