unit addbmemo;

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
  Extctrls, StdCtrls,
  DBCtrls,
  AdDBWFOC; 

type
  TAdrockDBMemoCustom = class(TDBMemo)
  private    { Protected declarations }
    { Private declarations }
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockDBWhenFocused;
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

    Property  WhenFocused  : TAdrockDBWhenFocused
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

  TAdrockDBMemo = class(TAdrockDBMemoCustom)
  published
    { Published declarations }
    Property WhenFocused;
  end;

implementation


Constructor TAdrockDBMemoCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}
  fWhenFocused            := TAdrockDBWhenFocused.Create(Self);

  Width     := 133;
end;

Destructor TAdrockDBMemoCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockDBMemoCustom.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockDBMemoCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockDBMemoCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockDBMemoCustom.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockDBMemoCustom.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;


procedure TAdrockDBMemoCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

end.
