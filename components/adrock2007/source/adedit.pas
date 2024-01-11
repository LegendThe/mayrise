unit adEdit;

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
{** based on TEdit Fields. It add the following enhancements.            **}
{**                                                                      **}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Extctrls, stdctrls,Trim,
  AdWFoc;

Const
  Version = 1.01;

type
  TAdrockEditCustom = class(TEdit)
  private    { Protected declarations }
    { Private declarations }
    fAllowSpacesAtStart    : Boolean;
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;

    Function  ReadEnabled : Boolean;
    Procedure WriteEnabled(Enabled : Boolean);

  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    procedure   KeyPress(var Key: Char); override;
    Procedure   BeforeChange(Sender : TObject); virtual;
    Procedure   BeforeDataChange(Sender : TObject); virtual;

    Property  Enabled : Boolean read ReadEnabled Write WriteEnabled;

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;

    Property  OnBeforeDataChange : TNotifyEvent
              Read    fOnBeforeDataChange
              Write   fOnBeforeDataChange;

    Property  OnBeforeChange : TNotifyEvent
              Read    fOnBeforeChange
              Write   fOnBeforeChange;
    Property  AllowSpacesAtStart : Boolean
              Read    fAllowSpacesAtStart
              Write   fAllowSpacesAtStart
              default TRUE;
  published
    { Published declarations }
  end;

  TAdrockEdit = class(TAdrockEditCustom)
  published
    { Published declarations }
    Property WhenFocused;
    Property Align;
    Property AllowSpacesAtStart;
  end;


implementation


Constructor TAdrockEditCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$IFDEF WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fAllowSpacesAtStart     := TRUE;

  Width     := 133;
end;

Destructor TAdrockEditCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockEditCustom.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockEditCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockEditCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  if (AllowSpacesAtStart = FALSE) and (Text > '') and (Text[1] = ' ') then
     Text := LeftTrimString(Text);
  Inherited;
end;
                                         
Procedure TAdrockEditCustom.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockEditCustom.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

procedure TAdrockEditCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

Function  TAdrockEditCustom.ReadEnabled : Boolean;
begin
  Result := Inherited Enabled;
end;

Procedure TAdrockEditCustom.WriteEnabled(Enabled : Boolean);
begin
  Inherited Enabled := Enabled;
  if (WhenFocused.FocusLabel <> nil) then
    if (Enabled = FALSE) then
      WhenFocused.FocusLabel.Font.Color := clGrayText
    else
      WhenFocused.FocusLabel.Font.Color := clWindowText;
end;

procedure TAdrockEditCustom.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if (Key = ' ') and (AllowSpacesAtStart = FALSE) and (SelStart = 0) then
    Key := #0;
end;


end.
