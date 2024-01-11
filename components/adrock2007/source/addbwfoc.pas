unit addbwfoc;

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
{**                                                                      **}
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
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  DBCtrls, AdWFoc;

type
  TAdrockDBWhenFocused = class(TAdrockWhenFocused)
  private    { Protected declarations }
    { Private declarations }
    Procedure  Enter(Sender : TObject; fOwner : TObject; NewBackColor : TColor; Var fSavedBackColor : TColor);
    Procedure  Exit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
  Public
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;
  end;

implementation

Constructor TAdrockDBWhenFocused.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  OnUnknownOwnerEnter := Enter;
  OnUnknownOwnerExit  := Exit;
end;

Destructor TAdrockDBWhenFocused.Destroy;
begin
  Inherited Destroy;
end;

Procedure  TAdrockDBWhenFocused.Enter(Sender : TObject; fOwner : TObject; NewBackColor : TColor; Var fSavedBackColor:TColor);
begin
 if (fOwner is TDBEdit) then
   begin
      fSavedBackColor := (FOwner as TDBEdit).Color;
      (FOwner as TDBEdit).Color := NewBackColor;
    end
 else if (fOwner is TDBmemo) then
   begin
      fSavedBackColor := (FOwner as TDBMemo).Color;
      (FOwner as TDBMemo).Color := NewBackColor;
    end
 else if (FOwner is TDBListBox) then
   begin
      fSavedBackColor := (FOwner as TDBListBox).Color;
      (FOwner as TDBListBox).Color := NewBackColor;
    end
 else if (fOwner is TDBComboBox) then
   begin
      fSavedBackColor := (FOwner as TDBComboBox).Color;
      (FOwner as TDBComboBox).Color := NewBackColor;
    end;
end;

Procedure  TAdrockDBWhenFocused.Exit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
begin
  if (fOwner is TDBEdit) then
    (FOwner as TDBEdit).Color := fSavedBackColor
  else if (fOwner is TDBmemo) then
    (FOwner as TDBmemo).Color := fSavedBackColor
  else if (fOwner is TDBListBox) then
    (FOwner as TDBListBox).Color := fSavedBackColor
  else if (FOwner is TDBComboBox) then
    (FOwner as TDBComboBox).Color := fSavedBackColor;
end;


end.
