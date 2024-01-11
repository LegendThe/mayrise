unit adCombo;

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
{** based on TMEMO Fields. It add the following enhancements.            **}
{**                                                                      **}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}
interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, AdWFOC;

type
  TAdrockComboBoxChange = (ccClosed, ccOpen);
  TAdrockComboCustomBox = class(TComboBox)
  private    { Protected declarations }
    { Private declarations }
    fOnClick               : TNotifyEvent;
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;
    fTriggerChange         : TAdrockComboBoxChange;
    fComboOpen             : Boolean;
    OpenItemIndex          : Integer;
    LastItemIndex          : Integer;
    SelectionChanges       : Integer;

    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    { Protected declarations }
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure KeyPress(var Key: Char); override;
    Procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    Procedure Loaded; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    Function    IsComboOpen : Boolean;
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

    Property TriggerChange : TAdrockComboBoxChange read fTriggerChange write fTriggerChange;
  published
    { Published declarations }
    property OnClick  : TNotifyEvent read FOnClick  write fonClick;
  end;

  TAdrockComboBox = class(TAdrockComboCustomBox)
  published
    { Published declarations }
    Property TriggerChange;
    Property WhenFocused;
    Property Align;
  end;

implementation

Constructor TAdrockComboCustomBox.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);

  {$ifdef WIN32}
  ControlStyle  := ControlStyle + [csReplicatable];
  {$Endif}
  fWhenFocused  := TAdrockWhenFocused.Create(Self);
  fComboOpen    := FALSE;
  Width         := 133;
end;

Destructor TAdrockComboCustomBox.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockComboCustomBox.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockComboCustomBox.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;


Procedure TAdrockComboCustomBox.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockComboCustomBox.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockComboCustomBox.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

Procedure TAdrockComboCustomBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  Inherited KeyDOwn(Key, Shift);
end;

Procedure TAdrockComboCustomBox.KeyPress(var Key: Char);
begin
 if (Key = #13) then
   begin
{     SelectNext((Self as TWINControl), TRUE, TRUE); }
   end;
  Inherited KeyPress(Key);
end;

{ slightly modified CNCommand handler }
procedure TAdrockComboCustomBox.CNCommand(var Message: TWMCommand);
begin
  case Message.NotifyCode of
    CBN_DROPDOWN: { in this case only, we will take over }
      begin
        fComboOpen := TRUE;
        OpenItemIndex := ItemIndex;
        LastItemIndex := ItemIndex;
        SelectionChanges := 0;
        inherited;
      end;
    CBN_CLOSEUP:
      begin
        inherited;
        if (TriggerChange = ccClosed) then
          begin
             if (SelectionChanges > 0) then
               begin
                  if (Assigned(fOnClick)) then
                    fOnClick(Self);
                  Change;
               end;
          end;
        fComboOpen := FALSE;
      end;
    CBN_SELCHANGE: { in this case only, we will take over }
      begin
        Text := Items[ItemIndex];
        if (TriggerChange = ccOpen) or (fComboOpen = FALSE) then
          begin
           if (Assigned(fOnClick)) then
             fOnClick(Self);
            Change;
          end
        else
         Inc(SelectionChanges);
        LastItemIndex := ItemIndex;
      end;
  else             { let mom handle the rest }
      inherited;
  end;
end;

Function TAdrockComboCustomBox.IsComboOpen : Boolean;
begin
 Result := fComboOpen;
end;

procedure TAdrockComboCustomBox.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

end.
