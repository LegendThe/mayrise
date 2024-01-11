unit AdDBSpin;

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
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, AdSpinEd, DBCtrls, DBTables, DB;

type
  TAdrockDBSpinEdit = class(TAdrockSpinEdit)
  private
    FIncrement: longint;
    FReadOnly: boolean;
    FDataLink: TFieldDataLink;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const VDataField: string);
    procedure SetDataSource(VDataSource: TDataSource);
    procedure DataChange(Sender: TObject);
    procedure CMEnter(var Message: TCMGotFocus); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure UpdateData(Sender: TObject);

  protected
    procedure DownClick(Sender: TObject); override;
    procedure UpClick(Sender: TObject); override;
    function  IsValidChar(Key: Char): boolean; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  published
    property ReadOnly: boolean read FReadOnly write FReadOnly;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

implementation

constructor TAdrockDBSpinEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FIncrement := 1;
  FDataLink := TFieldDataLink.Create;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
end;

destructor TAdrockDBSpinEdit.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.Free;
  inherited Destroy;
end;

function TAdrockDBSpinEdit.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TAdrockDBSpinEdit.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TAdrockDBSpinEdit.SetDatafield(const VDatafield: string);
begin
  FDataLink.FieldName := VDatafield;
end;

procedure TAdrockDBSpinEdit.SetDataSource(VDataSource: TDataSource);
begin
  FDataLink.DataSource := VDataSource;
end;

procedure TAdrockDBSpinEdit.DataChange(Sender: TObject);
begin
  if FDataLink.Field = nil then
     Value := 0
  else if (FDatalink.Field.AsString = '') then
     Value := 0
 else
     Value := FDataLink.Field.AsInteger;
end;

procedure TAdrockDBSpinEdit.CMEnter(var Message: TCMGotFocus);
begin
  inherited;
  UpdateData(Self);
end;

procedure TAdrockDBSpinEdit.CMExit(var Message: TCMExit);
begin
  try
    UpdateData(Self);
  except
    SetFocus;
    raise;
  end;
  inherited;
end;

procedure TAdrockDBSpinEdit.UpdateData(Sender: TObject);
begin
  FDataLink.Modified;
  FDataLink.Edit;
  if (Fdatalink.Field <> nil) then
    FDataLink.Field.AsInteger := Value;
end;

procedure TAdrockDBSpinEdit.DownClick(Sender: TObject);
begin
  if ReadOnly then MessageBeep(0)
  else begin
    if (Fdatalink.Field <> nil) then
       Value := Value - FIncrement;
    UpdateData(Self);
    end;
end;

procedure TAdrockDBSpinEdit.UpClick(Sender: TObject);
begin
  if ReadOnly then
    MessageBeep(0)
  else
   begin
    if (Fdatalink.Field <> nil) then
       Value := Value + FIncrement;
     UpdateData(Self);
   end;
end;

function TAdrockDBSpinEdit.IsValidChar(Key: Char): boolean;
begin
  if ReadOnly then
   begin
      Result := FALSE;
      MessageBeep(0);
   end
  else
    Result := inherited IsValidChar(Key);

  if Result then
    UpdateData(Self);
end;

procedure TAdrockDBSpinEdit.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) and (WhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;

  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

end.
