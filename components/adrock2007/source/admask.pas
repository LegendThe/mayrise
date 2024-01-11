unit admask;

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
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Extctrls, stdctrls, Mask,
  AdWFoc;

Const
  Version = 1.01;

type
  TAdrockMaskEditCustom = class(TMaskEdit)
  private    { Protected declarations }
    { Private declarations }
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;
    procedure OnUnknownEnter(Sender : TObject; fOwner : TObject; NewBackColor : TColor; Var fSavedBackColor : TColor);
    procedure OnUnknownExit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);

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

  TAdrockMaskEdit = class(TAdrockMaskEditCustom)
  published
    { Published declarations }
    Property WhenFocused;
    Property Align;
  end;


implementation


Constructor TAdrockMaskEditCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  {$IFDEF WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := OnUnKnownEnter;
  fWhenFocused.OnUnknownOwnerExit  := OnUnKnownExit;
  Width     := 133;
end;

Destructor TAdrockMaskEditCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockMaskEditCustom.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockMaskEditCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockMaskEditCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;
                                         
Procedure TAdrockMaskEditCustom.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockMaskEditCustom.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

procedure TAdrockMaskEditCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

procedure TAdrockMaskEditCustom.OnUnknownEnter(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
  Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
  Color := NewBackColor;
end;

procedure TAdrockMaskEditCustom.OnUnknownExit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
begin
  Color := fSavedBackColor;
end;

end.
