unit adradbtn;

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

uses StdCtrls, Messages, WinProcs, Wintypes, SysUtils, Classes, Controls, Forms, Menus, Graphics,
     AdWFoc;

Type
  TAdrockCustomRadioBtn = class(TButtonControl)
  private
    FAlignment: TLeftRight;
    FChecked : Boolean;
    fGroup   : Integer;
    procedure SetAlignment(Value: TLeftRight);
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    procedure SetCheckedState(Value: Boolean);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWindowHandle(const Params: TCreateParams); override;
    procedure CreateWnd; override;
  public
    constructor Create(AOwner: TComponent); override;
    property Alignment: TLeftRight read FAlignment write SetAlignment default taRightJustify;
    property Checked: Boolean read FChecked write SetCheckedState default False;
    Property Group  : INteger read fGroup  Write fGroup default 0;
  end;

 TAdrockCustomRadioButton = class(TAdrockCustomRadioBtn)
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
    Procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
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
  published
    { Published declarations }
  end;

  TAdrockRadioButton = class(TAdrockCustomRadioButton)
    property Align;
    property Alignment;
    property Caption;
    property Checked;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    Property Group;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property WhenFocused;
    property OnClick;
    property OnDblClick;
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
    {$ifdef Win32}
    property OnStartDrag;
    {$endif}
  end;


implementation

{ TAdrockCustomRadioBtn }

constructor TAdrockCustomRadioBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 113;
  Height := 17;
  fGroup := 0;
  ControlStyle := [csSetCaption, csDoubleClicks];
  FAlignment := taRightJustify;
end;

procedure TAdrockCustomRadioBtn.SetAlignment(Value: TLeftRight);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    RecreateWnd;
  end;
end;

procedure TAdrockCustomRadioBtn.SetCheckedState(Value: Boolean);

  procedure TurnSiblingsOff;
  var
    I: Integer;
    Sibling: TControl;
  begin
    if Parent <> nil then
      with Parent do
        for I := 0 to ControlCount - 1 do
        begin
          Sibling := Controls[I];
          if (Sibling <> Self) and (Sibling is TAdrockCustomRadioBtn) then
            if (Group = 0) or (TAdrockCustomRadioBtn(Sibling).Group = Group) then
            TAdrockCustomRadioBtn(Sibling).SetCheckedState(False);
        end;
  end;

begin
  if FChecked <> Value then
  begin
    FChecked := Value;
    TabStop := Value;
    if HandleAllocated then
      SendMessage(Handle, BM_SETCHECK, Integer(Checked), 0);
    if Value then
    begin
      TurnSiblingsOff;
      Click;
    end;
  end;
end;

procedure TAdrockCustomRadioBtn.CreateParams(var Params: TCreateParams);
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
    Style := Style or BS_RADIOBUTTON or Alignments[FAlignment];
end;

procedure TAdrockCustomRadioBtn.CreateWnd;
begin
  inherited CreateWnd;
  SendMessage(Handle, BM_SETCHECK, Integer(FChecked), 0);
end;

procedure TAdrockCustomRadioBtn.CreateWindowHandle(const Params: TCreateParams);
begin
  if Ctl3D and not NewStyleControls then
  begin      {  special subclassing required by unicode Ctl3D on NT }
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

procedure TAdrockCustomRadioBtn.CMCtl3DChanged(var Message: TMessage);
begin
  RecreateWnd;
end;

procedure TAdrockCustomRadioBtn.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(Message.CharCode, Caption) and CanFocus then
    begin
      SetFocus;
      Result := 1;
    end else
      inherited;
end;

procedure TAdrockCustomRadioBtn.CNCommand(var Message: TWMCommand);
begin
  case Message.NotifyCode of
    BN_CLICKED: SetCheckedState(True);
    BN_DOUBLECLICKED: DblClick;
  end;
end;

procedure TAdrockCustomRadioBtn.WMSetFocus(var Message: TWMSetFocus);
begin { fix double focus rect drawing bug in Ctl3D when switching notebook pages }
  if Ctl3D and not NewStyleControls then  UpdateWindow(Handle);
  inherited;
end;

{ TAdrockCustomRadioButton }

Constructor TAdrockCustomRadioButton.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$endif}
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  Width     := 133;
end;

Destructor TAdrockCustomRadioButton.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockCustomRadioButton.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockCustomRadioButton.CMEnter(Var Message : TCMEnter);
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
       Color := fWhenFocused.BackColor;
   end;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockCustomRadioButton.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  if (fWhenFocused.Enabled) then
   begin
     Font.Color := OldFontColor;
     Font.Style := OldFontStyle;
     if (fWhenFocused.UseBackColorOnCheckBoxAndRadioButtons) then
       Color := OldBackColor;
   end;
  Inherited;
end;

Procedure TAdrockCustomRadioButton.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockCustomRadioButton.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

procedure TAdrockCustomRadioButton.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;


end.
