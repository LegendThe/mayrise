unit addbYesN;

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
  WinProcs, WinTypes, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {Delphi 3.0 Requirement for TFieldDataLink }
  dbCtrls,

  StdCtrls, AdYesNo, DB, DBTables;

type
  TAdrockDBYesNoComboBox = class(TAdrockYesNoComboBox)
  private
    { Private declarations }
    fOnChange    : TNotifyEvent;
    fDataLink    : TFieldDataLink;
    InDataChangeEvent : Boolean;
    fRefreshDisplayStyle : Boolean;
    HasChanged           : Boolean;

    procedure NewChange(Sender: TObject);

    procedure EditingChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);
    Procedure DataChange(Sender : TObject);

    Function  GetValue : Boolean;
    Procedure SetValue(NewValue : Boolean);

    Function  GetDataField : String;                  { Returns the name of the data field }
    Procedure SetDataField(Const Value : String);   { Assigns name of data field }

    Function  GetDataSource : TDataSource;           { Returns a reference to the data field }
    Procedure SetDataSource(Value : TDataSource);   { Assigns New Data Source }
  protected
    { Protected declarations }
    Constructor Create(AOwner : TComponent); override;
    Destructor  Destroy; override;
    procedure   Loaded; override;
    procedure   Notification(AComponent: TComponent; Operation: TOperation); override;

    procedure   CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure   CMExit(Var Message : TCMExit);   message CM_EXIT;

    procedure   WMPaste (var Message: TMessage); message WM_PASTE;
    procedure   WMCut (var Message: TMessage); message WM_CUT;

    Procedure   KeyDown(var Key: Word; Shift : TShiftState); override;
    procedure   KeyPress(var Key: Char); override;
  public
    { Public declarations }
  published
    { Published declarations }
    Property DataSource            : TDataSource           Read getDataSource        Write SetDataSource;
    Property DataField             : String                Read GetDataField         Write SetDataField;
    Property OnChange              : TNotifyEvent          Read fOnChange            Write fOnChange;

    Property Value                 : Boolean               read GetValue             Write SetValue;
  end;

procedure Register;

implementation

Constructor TAdrockDBYesNoComboBox.Create(AOwner : TComponent);
begin
  inherited Create(Aowner);
  HasChanged := FALSE;
  InDataChangeEvent := FALSE;
  fRefreshDisplayStyle := FALSE;
  FDataLink              := TFieldDataLink.Create;
  FDataLink.Control      := Self;
  FDataLink.OnEditingChange := EditingChange;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
{  Inherited OnChange := NewChange;}
  Inherited OnValueChangedEvent := NewChange;
end;

Destructor  TAdrockDBYesNoComboBox.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.OnEditingChange := nil;
  FDataLink.OnUpdateData := nil;
  FDataLink.Free;
  FDataLink := nil;
  Inherited Destroy;
end;

procedure TAdrockDBYesNoComboBox.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

procedure TAdrockDBYesNoComboBox.EditingChange(Sender: TObject);
begin
{  inherited ReadOnly := not FDataLink.Editing;}
end;

procedure TAdrockDBYesNoComboBox.UpdateData(Sender: TObject);
Begin
 if (GetDataField > '') then
   FDataLink.Field.AsBoolean := Value;
end;

Procedure TAdrockDBYesNoComboBox.DataChange(Sender : TObject);
begin
  InDataChangeEvent := TRUE;
  if (FDataLink.Field = nil) then
    Inherited Value := False
  else
    Inherited Value := FDataLink.Field.AsBoolean;
  InDataChangeEvent := FALSE;
end;

Function TAdrockDBYesNoComboBox.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

Procedure TAdrockDBYesNoComboBox.SetDataField(Const Value:String);
begin
  FDataLink.Fieldname := Value;
end;

Function TAdrockDBYesNoComboBox.GetDataSource : TDataSource;
begin
   Result := FDataLink.DataSource;
end;

Procedure TAdrockDBYesNoComboBox.SetDataSource(Value:TDataSource);
begin
  FDataLink.DataSource := Value;
end;

{************************************************************************************************************************}
{* This routine gets called when the control has loaded                                                                 *}
{************************************************************************************************************************}
procedure TAdrockDBYesNoComboBox.Loaded;
begin
  Inherited Loaded;
{  Value := Value;}
end;

Procedure TAdrockDBYesNoComboBox.KeyDown(var Key: Word; Shift : TShiftState);
begin
    if (Key = VK_NEXT)  or (Key = VK_PRIOR) or
       (Key = VK_RIGHT) or (Key = VK_LEFT) or
       (Key = VK_DOWN) or (Key = VK_UP) then
        begin
           fDataLink.Edit;
           HasChanged := TRUE;
           fDataLink.Modified;
        end;
     inherited KeyDown(Key, Shift);
end;

procedure TAdrockDBYesNoComboBox.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  case Key of
    ^H, ^V, ^X, #32..#255:  begin
                              FDataLink.Edit;
                              FDataLink.Modified;
                              HasChanged := TRUE;
                            end;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        HasChanged := FALSE;
        Key := #0;
      end;
  end;
end;

Function TAdrockDBYesNoComboBox.GetValue : Boolean;
begin
   Result := Inherited Value;
end;

{************************************************************************************************************************}
{* Set a New date for the control                                                                                       *}
{************************************************************************************************************************}
Procedure TAdrockDBYesNoComboBox.SetValue(NewValue : Boolean);
begin
  Inherited Value := NewValue;
end;

procedure TAdrockDBYesNoComboBox.NewChange(Sender: TObject);
Var
  fOldValue : Boolean;
begin
  if (InDataChangeEvent = TRUE) then
    exit;
  
  fOldValue := Value;
  fDataLink.Edit;
  Value := fOldValue;
  FDataLInk.Modified;
  HasChanged := TRUE;
end;

procedure TAdrockDBYesNoComboBox.CMExit(Var Message : TCMExit);
begin
  if (HasChanged = TRUE) then
   FDataLink.UpdateRecord; { tell data link to update database }
  if (Value = TRUE) then
    TExt := TextTrue
  else
    Text := TextFalse;
  Inherited;
end;

procedure TAdrockDBYesNoComboBox.CMEnter(var Message: TCMEnter);
begin
  inherited;
  FDataLink.Reset;
  HasChanged := FALSE;
end;

procedure TAdrockDBYesNoComboBox.WMPaste(var Message: TMessage);
begin
  FDataLink.Edit;
  HasChanged := TRUE;
  inherited;
end;

procedure TAdrockDBYesNoComboBox.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  HasChanged := TRUE;
  inherited;
end;

procedure Register;
begin
  RegisterComponents('Adrock', [TAdrockDBYesNoComboBox]);
end;

end.
