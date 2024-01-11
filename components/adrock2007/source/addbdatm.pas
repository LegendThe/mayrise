unit addbdatm;

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
  AdDDFCl,

  {$IFDEF UNREGISTERED}
  ExtCtrls,
  Buttons,
  ShellAPI,
  {$ENDIF}

  DBCtrls,  { Delphi 3.0 requirement for TFieldDataLink }
  DBGrids,  { Required for access to a DBGrid }

  StdCtrls,

  AdDatecN, { TAdrockDateTimeConstants }
  AdDatetm, { TAdrockDateTime class }
  AdDateDt,
  adDateVA,

  DB, DBTables;

  {$ifdef UNREGISTERED}
  {$DEFINE ADROCK_NAG_SCREEN_TYPE}
  {$I ADNAG.PAS}
  {$UNDEF ADROCK_NAG_SCREEN_TYPE}
  {$ENDIF}

Const
  VersionString = 1.20;

type
  TAdrockDBDateTimeDisplayStyle = (dbtdsDateStyle,
                                   dbtdsTimeStyle,
                                   dbtdsDateAndTimeStyle,
                                   dbtdsInputStyle,
                                   dbtdsDatabaseFormat,
                                   dbtdsCustom);

  TAdrockDBDateTimeEdit = class(TAdrockDateTimeEditCustomNoDisplayStyle)
  private
    { Private declarations }
    fFocused                : Boolean;
    FCanvas                 : TControlCanvas;
    fDateBeforeCalendarOpen : TDateTime;    { Holds the date before the calendar was opened }
    fOnChange               : TNotifyEvent;
    fDataLink               : TFieldDataLink;
    InDataChangeEvent       : Boolean;
    fDBDisplayStyle         : TAdrockDBDateTimeDisplayStyle;
    fRefreshDisplayStyle    : Boolean;
    fOutsideReadOnly        : boolean;

    Procedure SetDBDisplayStyle(NewDisplayStyle : TAdrockDBDateTimeDisplayStyle);

    procedure EditingChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);
    Procedure DataChange(Sender : TObject);

    Function  GetDate : TAdrockDateTimeValidClass;
    Procedure SetDate(NewDate : TAdrockDateTimeValidClass);

    Function  GetDataField : String;                  { Returns the name of the data field }
    Procedure SetDataField(Const Value : String);   { Assigns name of data field }

    Function  GetDataSource : TDataSource;           { Returns a reference to the data field }
    Procedure SetDataSource(Value : TDataSource);   { Assigns New Data Source }

    function GetField: TField;
    Procedure SetInitialDBDateTime(DateTime : TDateTime);
  protected
    { Protected declarations }
    procedure   Notification(AComponent: TComponent; Operation: TOperation); override;
    function    GetFieldText: string;

    procedure   CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure   CMExit(var Message: TCMExit); message CM_EXIT;

    procedure   WMPaste (var Message: TMessage); message WM_PASTE;
    procedure   WMCut (var Message: TMessage); message WM_CUT;

    Procedure   WMPaint(Var Message : TWMPAINT); message WM_PAINT;
    procedure   KeyDown(var Key: Word; Shift: TShiftState); override;
    function    GetText:string;
    procedure   SetReadOnly(Value:boolean);
    procedure   SetText(const s:string);
    {$ifdef WIN32}
    procedure   CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    {$ENDIF}
  public
    { Public declarations }
    Constructor Create(AOwner : TComponent); override;
    Destructor  Destroy; override;

    procedure Loaded; override;
    procedure KeyPress(var Key: Char); override;
    Function  GetDisplayText : String; override;

    Procedure OnCalendarChangeEvent(Sender : Tobject); override;
    Procedure OnBeforeCalendarChangeEvent(Sender : Tobject); Override;

    Procedure OnDateChangeEvent(Sender : TObject); override;
    Procedure OnBeforeDateChangeEvent(Sender : TObject); override;
    property  Field: TField read GetField;

    Procedure   OpenCalendar; override;
    Function    CloseCalendar : Boolean; override;
  published
    { Published declarations }
{
    Property DBGridColumn          : TColumn               Read fDBGridColumn        Write fDBGridColumn;
    Property DBGrid                : TDBGrid               Read fDBGrid              Write fDBGrid;
}
    Property DataSource            : TDataSource           Read getDataSource        Write SetDataSource;
    Property DataField             : String                Read GetDataField         Write SetDataField;
    Property OnChange              : TNotifyEvent          Read fOnChange            Write fOnChange;

    Property Date                  : TAdrockDateTimeValidClass read GetDate         Write SetDate;
    Property DBDisplayStyle        : TAdrockDBDateTimeDisplayStyle read fDBDisplayStyle   write SetDBDisplayStyle
       default dbtdsDateStyle;
    property ReadOnly write SetReadOnly;
    property Text:string read GetText write setText;
  end;

implementation

{$ifdef UNREGISTERED}
Var
  HasNagScreenBeenShown  : Boolean;
{Include the NAG Screen Implementation Code }
{$DEFINE ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$I ADNAG.PAS}
{$UNDEF ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$ENDIF}

Constructor TAdrockDBDateTimeEdit.Create(AOwner : TComponent);
begin
  inherited Create(Aowner);
  {$ifdef win32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$endif}
  InDataChangeEvent := FALSE;
  fRefreshDisplayStyle := FALSE;
  FDataLink              := TFieldDataLink.Create;
  FDataLink.Control      := Self;
  FDataLink.OnEditingChange := EditingChange;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
  fDBDisplayStyle := dbtdsDateStyle;
  SetDBDisplayStyle(fDBDisplayStyle);
end;

Destructor  TAdrockDBDateTimeEdit.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.OnEditingChange := nil;
  FDataLink.OnUpdateData := nil;
  FDataLink.Free;
  FDataLink := nil;
  Inherited Destroy;
end;

function TAdrockDBDateTimeEdit.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TAdrockDBDateTimeEdit.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  { if the control being removed from the form is the datasource we are linked to then
    unlink it, if we do not then you get access violations and the form will not save
  }
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

{$ifdef WIN32}
procedure TAdrockDBDateTimeEdit.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$endif}

procedure TAdrockDBDateTimeEdit.EditingChange(Sender: TObject);
begin
{  inherited ReadOnly := not FDataLink.Editing;}
end;

procedure TAdrockDBDateTimeEdit.SetText(const s:string);
begin
  inherited Text:=s;
end;

function TAdrockDBDateTimeEdit.GetText:string;
begin
  result:=inherited Text;
  if (Result='') and not ((Date.DateTime = 0) or (Date.DateTime = DateIsNil)) then
    begin
      DisableChangeEvent;
      result := FormatDate(ReturnDisplayFormat, Date.DateTime);
      Inherited Text:=result;
      EnableChangeEvent;
    end;
end;

procedure TAdrockDBDateTimeEdit.UpdateData(Sender: TObject);
Var
  DateStr : String;
Begin
  if (GetDataField > '') then
   begin
{    try}
       if (Date.DateTime = 0) then
          FDataLink.Field.AsString := ''
       else if (fDataLink.Field.DataType = ftString) then
        begin
         DateStr := FormatDate(ReturnDisplayFormat, Date.DateTime);
         FDataLink.Field.AsString := DateStr;
         { FormatDate('D MMMM, YYYY HH:MM:SS AM/PM', Date.DateTime)}
        end
       else
         FDataLink.Field.AsDateTime := Date.DateTime;
{    except
      MessageDlg('Unable to update the database field : TAdrockDBDateTimeEdit', mtWarning, [mbOK],0);
    end;}
  end;
end;

Procedure TAdrockDBDateTimeEdit.SetInitialDBDateTime(DateTime : TDateTime);
begin
  if (CalendarSettings <> NIL) then
    CalendarSettings.CalendarSettings.Date.DateTime := DateTime;
  SetInitialDateTime(DateTime)
end;


Procedure TAdrockDBDateTimeEdit.DataChange(Sender : TObject);
Var
  DateTimeStr : String;
begin
  InDataChangeEvent := TRUE;
  try
    if (fRefreshDisplayStyle = TRUE) then
     begin
        fRefreshDisplayStyle := False;
        SetDBDisplayStyle(fDBDisplayStyle);
     end;
    if (FDataLink.Field = nil) then
      begin
        SetInitialDBDateTime(0);
      end
    else
      if (FDataLink.Field.AsString = '') then
       SetInitialDBDateTime(0)
      else
       if (fDataLink.Field.DataType = ftString) then
        begin
(*
           DateTimeStr := FDataLink.Field.DisplayText;
           if (AdrockIsValidDateTime(DateTimeStr) = TRUE) then
             SetInitialDateTime(AdrockStrToDateTime(DateTimeStr))
           else
              Raise Exception.Create('Invalid Date and/or Time for TAdrockDBDateTimeEdit : '+DateTimeStr);
           end
*)
           DateTimeStr := FDataLink.Field.DisplayText;
           if (InputStyle = isDate) or (InputStyle = isFreeForm) then
            begin
             if (AdrockIsValidDate(DateTimeStr) = TRUE) then
               SetInitialDBDateTime(AdrockStrToDateTime(DateTimeStr))
             else
                Raise Exception.Create('Invalid Date TAdrockDBDateTimeEdit : '+DateTimeStr);
            end
           else
            begin
             if (AdrockIsValidDateTime(DateTimeStr) = TRUE) then
                SetInitialDBDateTime(AdrockStrToDateTime(DateTimeStr))
             else
                Raise Exception.Create('Invalid Date and/or Time for TAdrockDBDateTimeEdit : '+DateTimeStr);
            end;
         end
       else if (InputStyle = isDate) or (InputStyle = isFreeForm) then
           SetInitialDBDateTime(trunc(FDataLink.Field.AsDateTime))
       else
           SetInitialDBDateTime(FDataLink.Field.AsDateTime);
    Inherited ReadOnly:= fOutsideReadOnly or ((FDataLink.Field<>nil)and(FDataLink.Field.ReadOnly));
  finally
    InDataChangeEvent := FALSE;
  end;
end;

Function TAdrockDBDateTimeEdit.GetDataField : String;
begin
  Result := FDataLink.FieldName;
end;

Procedure TAdrockDBDateTimeEdit.SetDataField(Const Value:String);
begin
  FDataLink.Fieldname := Value;
end;

Function TAdrockDBDateTimeEdit.GetDataSource : TDataSource;
begin
   Result := FDataLink.DataSource;
end;

Procedure TAdrockDBDateTimeEdit.SetDataSource(Value:TDataSource);
begin
  FDataLink.DataSource := Value;
end;

Procedure TAdrockDBDateTimeEdit.WMPaint(Var Message : TWMPAINT); 
var
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
begin
{$ifdef WIN32}  if not (csPaintCopy in ControlState) then {$endif}
  begin
    inherited;
    Exit;
  end;
{ Since edit controls do not handle justification unless multi-line (and
  then only poorly) we will draw right and center justify manually unless
  the edit has the focus. }
  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;
  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;

      {$ifDef WIN32} if (csPaintCopy in ControlState) and (FDataLink.Field <> nil) then {$Endif}
      begin
        S := FDataLink.Field.DisplayText;
        case CharCase of
          ecUpperCase: S := AnsiUpperCase(S);
          ecLowerCase: S := AnsiLowerCase(S);
        end;
      end
      {$ifDef WIN32}
        else
          S := GetDisplayText;
      {$else}
         ;
      {$endif}
      
      if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
      TextRect(R, r.Left, R.Top, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;

{************************************************************************************************************************}
{* This routine gets called when the control has loaded                                                                 *}
{************************************************************************************************************************}
procedure TAdrockDBDateTimeEdit.Loaded;
begin
  Inherited Loaded;
{
  if (DBgrid <> nil) then
    fDBGridColumn := DBgrid.Columns.Items[3]
  else
    fDBGridColumn := NIL;
}

  {$IFDEF UNREGISTERED}
   if (HasNagScreenBeenShown = FALSE) then
     TAdrockNagScreen.Create(NAG_IF_DELPHI_NOT_FOUND, 'AdrockDBDateTimeEdit', 'component', '',
         45, 80, 'XXXX', 'XXXX', 'XXXX', 'XXXX');
   HasNagScreenBeenShown := TRUE;
  {$ENDIF}  { This completes a Conditional Define }
end;

procedure TAdrockDBDateTimeEdit.KeyDown(var Key: Word; Shift: TShiftState); 
begin

  if not ReadOnly then //KM 16/03/2005
  if ((FDataLink.Active = FALSE) or (FDataLink.ReadOnly = TRUE)) then
  else
   begin
      if (Shift = []) and ((key = VK_PRIOR) or (Key = VK_NEXT)) then
       begin
        fDataLink.Edit;
       end;
      if (key = VK_DELETE) then
       begin
        fDataLink.Edit;
        fDataLink.Modified;
       end;
       Inherited KeyDOwn(Key, Shift);
   end;
end;

procedure TAdrockDBDateTimeEdit.KeyPress(var Key: Char);
begin
  if not ReadOnly then //KM 16/03/2005
  if ((Key in [#32..#255]) and (FDataLink.Field <> nil) and not FDataLink.Field.IsValidChar(Key)) or
   ((FDataLink.Active = FALSE) or (FDataLink.ReadOnly = TRUE)) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
  case Key of
    ^H, ^V, ^X, #32..#255:
      begin
        FDataLink.Edit;
        fDataLink.Modified;
      end;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        RefreshDateDetails;
        Key := #0;
      end;
  end;
  inherited KeyPress(Key);
end;

Function TAdrockDBDateTimeEdit.GetDate : TAdrockDateTimeValidClass;
begin
   Result := Inherited Date;
end;

Procedure TAdrockDBDateTimeEdit.OnBeforeDateChangeEvent(Sender : TObject);
begin
  inherited OnBeforeDateChangeEvent(Sender);
  if not (csLoading in ComponentState) then
    if (IsCalendarOpen = FALSE) then
      if (InDataChangeEvent = FALSE) then
        fDataLink.Edit;
end;

Procedure TAdrockDBDateTimeEdit.OnDateChangeEvent(Sender : TObject);
begin
  inherited OnDateChangeEvent(Sender);
  if not (csLoading in ComponentState) then
    if (IsCalendarOpen = FALSE) then
      begin
         if (InDataChangeEvent = FALSE) then
           fDataLink.Modified;
         if (Assigned(fOnChange)) then
           fOnChange(Self);
       end;
end;

Procedure TAdrockDBDateTimeEdit.OnBeforeCalendarChangeEvent(Sender : Tobject);
begin
  Inherited OnBeforeCalendarChangeEvent(Sender);
end;

Procedure TAdrockDBDateTimeEdit.OnCalendarChangeEvent(Sender : Tobject);
begin
  Inherited OnCalendarChangeEvent(Sender);
end;

{************************************************************************************************************************}
{* Set a New date for the control                                                                                       *}
{************************************************************************************************************************}
Procedure TAdrockDBDateTimeEdit.SetDate(NewDate : TAdrockDateTimeValidClass);
begin
  Inherited Date := NewDate;
end;

function TAdrockDBDateTimeEdit.GetFieldText: string;
begin
  if FDataLink.Field <> nil then
    Result := FDataLink.Field.DisplayText
  else
    if csDesigning in ComponentState then
        Result := Name
    else
        Result := '';
end;

Function TAdrockDBDateTimeEdit.GetDisplayText : String;
begin
{$ifdef WIN32}
if csPaintCopy in ControlState then
    Result := GetFieldText
  else {$endif}
    Result := FormatDate(ReturnDisplayFormat, Inherited Date.DateTime);
end;

procedure TAdrockDBDateTimeEdit.CMExit(var Message: TCMExit);
begin
  if (IsCalendarOpen = TRUE) then
    begin
      Inherited;
      exit;
    end;
  inherited;
  FDataLink.UpdateRecord; { tell data link to update database }
  fFocused := FALSE;
end;

procedure TAdrockDBDateTimeEdit.CMEnter(var Message: TCMEnter);
begin
  if (fFocused = TRUE) then
   begin
     inherited;
     exit
   end
  else
    begin
     fFocused := TRUE;
     Inherited;
     FDataLink.Reset;
    end;
end;

procedure TAdrockDBDateTimeEdit.WMPaste(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TAdrockDBDateTimeEdit.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

{************************************************************************************************************************}
{* Set the new display style, WindowShort, WinLong, Custom etc..                                                        *}
{************************************************************************************************************************}
Procedure TAdrockDBDateTimeEdit.SetDBDisplayStyle(NewDisplayStyle : TAdrockDBDateTimeDisplayStyle);
Var
  DisplayFormat : String;
begin
   fDBDisplayStyle := NewDisplayStyle;
   if (DBDisplayStyle = dbtdsDatabaseFormat) then
      begin
         if (FDataLink.Field = nil) then
           begin
             fRefreshDisplayStyle := TRUE;
             exit;
           end;
         DisplayFormat := (FDataLink.Field as TDateTimeField).DisplayFormat;
         CustomDisplayFormat := DisplayFormat;
         DisplayStyle := dtdsCustom;
      end
     else
      begin
        case DBDisplayStyle of
          dbtdsDateStyle         : DisplayStyle := dtdsDateStyle;
          dbtdsTimeStyle         : DisplayStyle := dtdsTimeStyle;
          dbtdsDateAndTimeStyle  : DisplayStyle := dtdsDateAndTimeStyle;
          dbtdsInputStyle        : DisplayStyle := dtdsInputStyle;
          dbtdsDatabaseFormat    : DisplayStyle := dtdsDateStyle;
          dbtdsCustom            : DisplayStyle := dtdsCustom;
        end;
      end;
end;

Procedure TAdrockDBDateTimeEdit.OpenCalendar;
begin
  if ((FDataLink.Active = FALSE) or (FDataLink.ReadOnly = TRUE)) then
  else
    begin
      FDataLink.Edit;//#11433
      fDateBeforeCalendarOpen := Date.DateTime;
      inherited OpenCalendar;
    end;
end;

Function TAdrockDBDateTimeEdit.CloseCalendar : Boolean;
Var
 NewDate : TDateTime;
begin
  if IsCalendarOpen then
    begin
      NewDate := Date.DateTime;
      if (fDateBeforeCalendarOpen <> NewDate) and (Visible = TRUE) then
        fDatalink.Edit;

      DoCloseCalendar;
      if (fDateBeforeCalendarOpen <> NewDate) then
       begin
         Date.SetInitialDateTime(Date.Time); { Clear the current value so the calendar value is different }
         Date.Date := NewDate;   {  Put the new date into the control                        }
    {    Date.SetInitialDateTime(NewDate); }{ Clear the current value so the calendar value is different }
       end;
    end;
  Result := TRUE;
end;


{TDBNumEdit.SetReadOnly ************************************************}
procedure TAdrockDBDateTimeEdit.SetReadOnly(Value:boolean);
begin
  fOutsideReadOnly:=Value;
  Inherited ReadOnly:=Value or  // never allow readonly off if the field is readonly
                     ((FDataLink<>nil)and(FDataLink.Field<>nil)and(FDataLink.Field.ReadOnly));
end;




{$IFDEF UNREGISTERED}
Initialization
  HasNagScreenBeenShown := FALSE;
{$endif}

end.
