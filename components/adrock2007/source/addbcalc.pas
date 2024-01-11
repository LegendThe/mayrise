unit Addbcalc;

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
  Forms, StdCtrls, Buttons, Dialogs, DB, DBTables, DbCtrls,
  AdCalc;

type

  TAdrockDBCalcEdit = class( TAdrockCalcEdit)
  private
     FDataLink : TFieldDataLink;
     fOnChange               : TNotifyEvent;
     
     Function GetDataField : String;                  { Returns the name of the data field }
     Function GetDataSource : TDataSource;           { Returns a reference to the data field }
     Procedure SetDataField(Const Value : String);   { Assigns name of data field }
     Procedure SetDataSource(Value : TDataSource);   { Assigns New Data Source }
     Procedure DataChange(Sender : TObject);
     procedure UpdateData(Sender: TObject); { called when control changes }
     procedure FOnBeforeChangeEvent(Sender : TObject);
     Procedure NewChange(Sender: TObject);

  protected
     procedure KeyDown(var Key: Word; Shift: TShiftState); override;
     procedure Change; { override;}
  public
     constructor Create( AOwner: TComponent ); override;
     destructor Destroy; override;
     procedure  Notification(AComponent: TComponent;  Operation: TOperation); override;
     procedure  CMExit(var Message: TCMExit);   Message CM_EXIT;
     procedure  CMEnter(var Message: TCMEnter); Message CM_ENTER;
  published { Make properties available at design time }
     Property OnChange              : TNotifyEvent          Read fOnChange            Write fOnChange;
     
     Property DataField : String Read GetDataField Write SetDataField;
     Property DataSource : TDataSource Read getDataSource Write SetDataSource;
  end;

implementation

constructor TAdrockDBCalcEdit.Create( AOwner: TComponent );
begin
  inherited Create( AOwner );
  Inherited OnChange := NewChange;
  Inherited OnBeforeDataChange := fOnBeforeChangeEvent;
  
  FDataLink := TFieldDataLink.Create;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData; { attach method to event }
end;

destructor TAdrockDBCalcEdit.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.OnUpdateData := nil;
  FDataLink.Free;
  inherited Destroy;
end;

Function TAdrockDBCalcEdit.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

Function TAdrockDBCalcEdit.GetDataSource : TDataSource;
begin
   Result := FDataLink.DataSource;
end;

Procedure TAdrockDBCalcEdit.SetDataField(Const Value:String);
begin
  FDataLink.Fieldname := Value;
end;

Procedure TAdrockDBCalcEdit.SetDataSource(Value:TDataSource);
begin
  FDataLink.DataSource := Value;
end;

Procedure TAdrockDBCalcEdit.DataChange(Sender : TObject);
begin
 if (FDataLink.Field = nil) then
    SetValue(0)
  else
    SetValue(FDataLink.Field.AsFloat);
end;

{ UpdateData

  UpdateData is only called after calls to both FDataLink.Modified and
  FDataLink.UpdateRecord. }
procedure TAdrockDBCalcEdit.UpdateData(Sender: TObject);
begin
  try
     FDataLink.Field.AsFloat:= Value;
  except
     MessageDlg( 'Bad Number : "' + Text+'"', mtWarning, [mbOK],0);
     SetFocus;
  end;

end;

procedure TAdrockDBCalcEdit.KeyDown(var Key: Word; Shift: TShiftState);
var
  MyKeyDown: TKeyEvent;
begin
{ if not FDataLink.ReadOnly and (Key in [VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, VK_END,
    VK_HOME, VK_PRIOR, VK_NEXT]) and FDataLink.Edit then
    inherited KeyDown(Key, Shift)
else
}
if (Key = VK_DOWN) and (Shift = [SSAlt]) then
       begin
        ButtonClick;
        Key :=0;
       end
  else
  begin
    MyKeyDown := OnKeyDown;
    if Assigned(MyKeyDown) then MyKeyDown(Self, Key, Shift);
  end;
end;

procedure TAdrockDBCalcEdit.Change;
begin
  { Comment out line below to make control read only }
  FDataLink.Edit;
  FDataLink.Modified;          { tell data link that data changed }
  inherited Change;   { and call inherited, which calls event handler }
end;

Procedure TAdrockDBCalcEdit.NewChange(Sender: TObject);
begin
  if (csReading in ComponentState) or (csLoading In ComponentState) or (csDesigning In ComponentState) then
    exit;
  if (Inherited ReadOnly = FALSE) then
   FDataLink.Modified;
  if (assigned(fOnChange)) then
    fOnChange(Self);
end;

procedure TAdrockDBCalcEdit.FOnBeforeChangeEvent(Sender : TObject);
begin
   FDataLink.Edit;
end;

procedure TAdrockDBCalcEdit.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
End;

procedure TAdrockDBCalcEdit.CMExit(var Message: TCMExit);
begin
  try
    if (FDataLink.Editing = TRUE) then
      FDataLink.UpdateRecord; { tell data link to update database }
  except
    SetFocus; { if it failed, don't let focus leave }
    raise;
  end;
  inherited;
end;


procedure TAdrockDBCalcEdit.CMEnter(var Message: TCMEnter);
begin
  inherited;
  FDataLink.Reset;
end;



end.
