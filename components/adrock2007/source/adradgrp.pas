unit adRadGrp;

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

{**************************************************************************}
{**                Base class for Adrock Edit Controls.                  **}
{**************************************************************************}
{** This control is the base class for all the Adrock Controls that are  **}
{** based on TRadio Group Fields. It add the following enhancements.     **}
{**                                                                      **}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}
interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus, AdGrpBox, AdRadBtn, AdWFoc;

 type
  TAdrockCustomRadioGroup = class(TAdrockGroupBox)
  private
    fWhenFocusedButtons : TAdrockWhenFocused;

    FButtons: TList;
    FItems: TStrings;
    FItemIndex: Integer;
    FColumns: Integer;
    FReading: Boolean;
    FUpdating: Boolean;
    procedure ArrangeButtons;
    procedure ButtonClick(Sender: TObject);
    procedure ItemsChange(Sender: TObject);
    procedure SetButtonCount(Value: Integer);
    procedure SetColumns(Value: Integer);
    procedure SetItemIndex(Value: Integer);
    procedure SetItems(Value: TStrings);
    procedure SetWhenFocusedButtons(Value : TAdrockWhenFocused);
    procedure UpdateButtons;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;

  protected
    procedure ReadState(Reader: TReader); override;
    Procedure Loaded; override;
    function  CanModify: Boolean; virtual;
    property  Columns: Integer read FColumns write SetColumns default 1;
    property  ItemIndex: Integer read FItemIndex write SetItemIndex default -1;
    property  Items: TStrings read FItems write SetItems;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    Property  WhenFocused;
    Property  WhenFocusedButtons  : TAdrockWhenFocused
              Read    fWhenFocusedButtons
              Write   SetWhenFocusedButtons;
  end;

  TAdrockRadioGroup = class(TAdrockCustomRadioGroup)
  published
    property Align;
    property Caption;
    property Color;
    property Columns;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ItemIndex;
    property Items;
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
    Property WhenFocusedButtons;
    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    {$ifdef WIN32}
    property OnStartDrag;
    {$endif}
  end;


implementation

{ TAdrockRadioGroupButton }

type
  TAdrockRadioGroupButton = class(TAdrockRadioButton)
  private
    FInClick: Boolean;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    procedure ChangeScale(M, D: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor CreateButton(RadioGroup: TAdrockCustomRadioGroup);
    destructor Destroy; override;
   end;

constructor TAdrockRadioGroupButton.CreateButton(RadioGroup: TAdrockCustomRadioGroup);
begin
  inherited Create(RadioGroup);
  RadioGroup.FButtons.Add(Self);
  Visible := False;
  Enabled := RadioGroup.Enabled;
  ParentShowHint := False;
  OnClick := RadioGroup.ButtonClick;
  Parent := RadioGroup;
end;

destructor TAdrockRadioGroupButton.Destroy;
begin
  TAdrockCustomRadioGroup(Owner).FButtons.Remove(Self);
  inherited Destroy;
end;

procedure TAdrockRadioGroupButton.CNCommand(var Message: TWMCommand);
begin
  if not FInClick then
  begin
    FInClick := True;
    try
      if ((Message.NotifyCode = BN_CLICKED) or
        (Message.NotifyCode = BN_DOUBLECLICKED)) and
        TAdrockCustomRadioGroup(Parent).CanModify then
        inherited;
    except
      Application.HandleException(Self);
    end;
    FInClick := False;
  end;
end;

procedure TAdrockRadioGroupButton.ChangeScale(M, D: Integer);
begin
end;

procedure TAdrockRadioGroupButton.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  TAdrockCustomRadioGroup(Parent).KeyPress(Key);
  if (Key = #8) or (Key = ' ') then
  begin
    if not TAdrockCustomRadioGroup(Parent).CanModify then Key := #0;
  end;
end;

procedure TAdrockRadioGroupButton.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  TAdrockCustomRadioGroup(Parent).KeyDown(Key, Shift);
end;

{ TAdrockCustomRadioGroup }

constructor TAdrockCustomRadioGroup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csSetCaption, csDoubleClicks];
  FButtons := TList.Create;
  FItems := TStringList.Create;
  TStringList(FItems).OnChange := ItemsChange;
  FItemIndex := -1;
  FColumns := 1;
  fWhenFocusedButtons            := TAdrockWhenFocused.Create(Self);
end;

destructor TAdrockCustomRadioGroup.Destroy;
begin
  fWhenFocusedButtons.free;
  fWhenFocusedButtons := NIL;
  SetButtonCount(0);
  TStringList(FItems).OnChange := nil;
  FItems.Free;
  FButtons.Free;
  inherited Destroy;
end;

Procedure TAdrockCustomRadioGroup.Loaded;
begin
  Inherited Loaded;
end;

procedure TAdrockCustomRadioGroup.SetWhenFocusedButtons(Value : TAdrockWhenFocused);
begin
  fWhenFocusedButtons.Enabled         := Value.Enabled;
  fWhenFocusedButtons.BackColor       := Value.BackCOlor;
  fWhenFocusedButtons.FocusLabel      := Value.FocusLabel;
  fWhenFocusedButtons.FocusLabelStyle.FontColor := Value.FocusLabelStyle.FontColor;
  fWhenFocusedButtons.FocusLabelStyle.FontStyle := Value.FocusLabelStyle.FontStyle;
end;

procedure TAdrockCustomRadioGroup.ArrangeButtons;
var
  ButtonsPerCol, ButtonWidth, ButtonHeight, TopMargin, I: Integer;
  DC: HDC;
  SaveFont: HFont;
  Metrics: TTextMetric;
begin
  if (FButtons.Count <> 0) and not FReading then
  begin
    DC := GetDC(0);
    SaveFont := SelectObject(DC, Font.Handle);
    GetTextMetrics(DC, Metrics);
    SelectObject(DC, SaveFont);
    ReleaseDC(0, DC);
    ButtonsPerCol := (FButtons.Count + FColumns - 1) div FColumns;
    ButtonWidth := (Width - 10) div FColumns;
    I := Height - Metrics.tmHeight - 5;
    ButtonHeight := I div ButtonsPerCol;
    TopMargin := Metrics.tmHeight + 1 + (I mod ButtonsPerCol) div 2;
    for I := 0 to FButtons.Count - 1 do
      with TAdrockRadioGroupButton(FButtons[I]) do
      begin
        SetBounds((I div ButtonsPerCol) * ButtonWidth + 8,
          (I mod ButtonsPerCol) * ButtonHeight + TopMargin,
          ButtonWidth, ButtonHeight);
        Visible := True;
      end;
  end;
end;

procedure TAdrockCustomRadioGroup.ButtonClick(Sender: TObject);
begin
  if not FUpdating then
  begin
    FItemIndex := FButtons.IndexOf(Sender);
    Click;
  end;
end;

procedure TAdrockCustomRadioGroup.ItemsChange(Sender: TObject);
begin
  if not FReading then
  begin
    if FItemIndex >= FItems.Count then FItemIndex := FItems.Count - 1;
    UpdateButtons;
  end;
end;

procedure TAdrockCustomRadioGroup.ReadState(Reader: TReader);
begin
  FReading := True;
  inherited ReadState(Reader);
  FReading := False;
  UpdateButtons;
end;

procedure TAdrockCustomRadioGroup.SetButtonCount(Value: Integer);
begin
  while FButtons.Count < Value do
     TAdrockRadioGroupButton.CreateButton(Self);
  while FButtons.Count > Value do
    TAdrockRadioGroupButton(FButtons.Last).Free;
end;

procedure TAdrockCustomRadioGroup.SetColumns(Value: Integer);
begin
  if Value < 1 then Value := 1;
  if Value > 16 then Value := 16;
  if FColumns <> Value then
  begin
    FColumns := Value;
    ArrangeButtons;
  end;
end;

procedure TAdrockCustomRadioGroup.SetItemIndex(Value: Integer);
begin
  if FReading then FItemIndex := Value else
  begin
    if Value < -1 then Value := -1;
    if Value >= FButtons.Count then Value := FButtons.Count - 1;
    if FItemIndex <> Value then
    begin
      if FItemIndex >= 0 then
        TAdrockRadioGroupButton(FButtons[FItemIndex]).Checked := False;
      FItemIndex := Value;
      if FItemIndex >= 0 then
        TAdrockRadioGroupButton(FButtons[FItemIndex]).Checked := True;
    end;
  end;
end;

procedure TAdrockCustomRadioGroup.SetItems(Value: TStrings);
begin
  FItems.Assign(Value);
end;

procedure TAdrockCustomRadioGroup.UpdateButtons;
var
  I: Integer;
begin
  SetButtonCount(FItems.Count);
  for I := 0 to FButtons.Count - 1 do
   begin
     TAdrockRadioGroupButton(FButtons[I]).Caption := FItems[I];
     TAdrockRadioGroupButton(FButtons[I]).WhenFocused.Enabled         := WhenFocusedButtons.Enabled;
     TAdrockRadioGroupButton(FButtons[I]).WhenFocused.BackColor       := WhenFocusedButtons.BackCOlor;
     TAdrockRadioGroupButton(FButtons[I]).WhenFocused.FocusLabel      := WhenFocusedButtons.FocusLabel;
     TAdrockRadioGroupButton(FButtons[I]).WhenFocused.FocusLabelStyle.FontColor :=
        WhenFocusedButtons.FocusLabelStyle.FontColor;
     TAdrockRadioGroupButton(FButtons[I]).WhenFocused.FocusLabelStyle.FontStyle :=
        WhenFocusedButtons.FocusLabelStyle.FontStyle;
   end;
  if FItemIndex >= 0 then
  begin
    FUpdating := True;
    TAdrockRadioGroupButton(FButtons[FItemIndex]).Checked := True;
    FUpdating := False;
  end;
  ArrangeButtons;
end;

procedure TAdrockCustomRadioGroup.CMEnabledChanged(var Message: TMessage);
var
  I: Integer;
begin
  inherited;
  for I := 0 to FButtons.Count - 1 do
    TAdrockRadioGroupButton(FButtons[I]).Enabled := Enabled;
end;

procedure TAdrockCustomRadioGroup.CMFontChanged(var Message: TMessage);
begin
  inherited;
  ArrangeButtons;
end;

procedure TAdrockCustomRadioGroup.WMSize(var Message: TWMSize);
begin
  inherited;
  ArrangeButtons;
end;

function TAdrockCustomRadioGroup.CanModify: Boolean;
begin
  Result := True;
end;

procedure TAdrockCustomRadioGroup.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocusedButtons <> NIL) and (WhenFocusedButtons.FocusLabel <> nil) and
    (AComponent = WhenFocusedButtons.FocusLabel) then
      WhenFocusedButtons.FocusLabel := nil;
end;

end.
