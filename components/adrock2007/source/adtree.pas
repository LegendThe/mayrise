unit AdTree;

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
{**                Base class for Adrock Tree View Controls.             **}
{**************************************************************************}
{** This control is the base class for all the Adrock Controls that are  **}
{** based on TTreeView Fields. It add the following enhancements.        **}
{**                                                                      **}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Extctrls, stdctrls,       ComCtrls, ShellAPI,
  AdWFoc;

type
  TAdrockTreeViewCustomDropFile= procedure(Sender : Tobject; Node : TTreeNode; FileName : String) of object;
  TAdrockTreeViewCustom = class(TTreeView)
  private    { Protected declarations }
    { Private declarations }
    fOnDropFile            : TAdrockTreeViewCustomDropFile;
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;

    Procedure CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
      Var fSavedBackColor : TColor);
    Procedure CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
    Procedure DropFiles(Var Message : TWMDropFiles); message WM_DROPFILES;

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
    Property  OnDropFile : TAdrockTreeViewCustomDropFile
              Read    fOnDropFile
              Write   fOnDropFile;

  published
    { Published declarations }
  end;

  TAdrockTreeView = class(TAdrockTreeViewCustom)
  published
    { Published declarations }
    Property WhenFocused;
    Property OnDropFile;
  end;


implementation


Constructor TAdrockTreeViewCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := CustomOnEnterWhenFocusedHandle;
  fWhenFocused.OnUnknownOwnerExit  := CustomOnExitWhenFocusedHandle;
end;

Destructor TAdrockTreeViewCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

{
Procedure TAdrockTreeViewCustom.WMEraseBkGnd(Var Message : TWMEraseBkgnd);
Var
  fCanvas : TCanvas;
begin
  fCanvas := TCanvas.Create;
  fCanvas.Handle := Message.dc;
  fCanvas.Brush.Color := Color;
  fCanvas.FillRect(ClientRect);
  fCanvas.Free;
  Message.Result := 1;
end;
}
Procedure TAdrockTreeViewCustom.Loaded;
begin
  inherited Loaded;
  DragAcceptFiles(Handle, TRUE);
end;

Procedure TAdrockTreeViewCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockTreeViewCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockTreeViewCustom.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockTreeViewCustom.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

Procedure TAdrockTreeViewCustom.CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject;
    NewBackColor : TColor; Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
//  Color := NewBackColor;
end;

Procedure TAdrockTreeViewCustom.CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
begin
//  Color := fSavedBackColor;
end;


procedure TAdrockTreeViewCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

Procedure TAdrockTreeViewCustom.DropFiles(Var Message : TWMDropFiles);
var
  FileName : PChar;
  Drop : THandle;
  fText : String;
  FilesToDrop, Pos   : Integer;
  Node : TTreeNode;
  FPoint : TPoint;
begin
  GetCursorPos(fPoint);
  fPoint := ScreenToClient(fPoint);
  Node := GetNodeAt(FPoint.X, FPoint.Y);
  Drop:=Message.Drop;
  FileName:=StrAlloc(255);
  try
    FilesToDrop := DragQueryFile(Drop, $FFFFFFFF, FileName,255);
    for Pos := 0 to FilesToDrop-1 do
      begin
        DragQueryFile(Drop, Pos, FileName,255);
        fText := StrPas(FileName);
        if (assigned(fOnDropfile)) then
          fOnDropFile(Self, Node, fText);
      end;
  finally
    StrDispose(FileName);
    DragFinish(Drop);
  end;
end;

end.
