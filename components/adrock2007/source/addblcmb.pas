unit adDBLCmb;

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
interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Extctrls, stdctrls, DB,
  {$ifdef WIN32}
  ComCtrls,
  {$else} 
  DBLookup,
  {$endif}
  Trim,
  DBCtrls,AdWFoc;

type
  TAdrockDBLookupComboBoxCustom = class({$ifdef WIN32}TDBLookupComboBox{$Else}TDBLookupCombo{$endif})
  private    { Protected declarations }
    { Private declarations }
    fWhenFocused           : TAdrockWhenFocused;

    Procedure CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
      Var fSavedBackColor : TColor);
    Procedure CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
  protected
    { Protected declarations }
    procedure KeyPress(var Key: Char); override;
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;
  published
    { Published declarations }
  end;

  TAdrockDBLookupComboBox = class(TAdrockDBLookupComboBoxCustom)
  published
    { Published declarations }
    Property Color;
    Property Font;
    Property WhenFocused;
  end;


implementation


Constructor TAdrockDBLookupComboBoxCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := CustomOnEnterWhenFocusedHandle;
  fWhenFocused.OnUnknownOwnerExit  := CustomOnExitWhenFocusedHandle;
end;

Destructor TAdrockDBLookupComboBoxCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockDBLookupComboBoxCustom.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockDBLookupComboBoxCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockDBLookupComboBoxCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockDBLookupComboBoxCustom.CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject;
    NewBackColor : TColor; Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
  Color := NewBackColor;
end;

Procedure TAdrockDBLookupComboBoxCustom.CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject;
   fSavedBackColor : TColor);
begin
  Color := fSavedBackColor;
end;

procedure TAdrockDBLookupComboBoxCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

procedure TAdrockDBLookupComboBoxCustom.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
end;



end.
