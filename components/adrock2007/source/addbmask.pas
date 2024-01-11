unit addbmask;

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
  Winprocs, WinTypes, Messages, Classes, Graphics, Controls, StdCtrls, Mask, Menus,
  Forms, DB, DBCtrls, DBTables, adwfoc;

type
  TAdrockDBMaskEditCustom = class(TCustomMaskEdit)
  private
    FDataLink    : TFieldDataLink;
    FCanvas      : TControlCanvas;
    FAlignment   : TAlignment;
    FFocused     : Boolean;
    FTextMargin  : Integer;
    fWhenFocused : TAdrockWhenFocused;

    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetFocused(Value: Boolean);
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure CalcTextMargin;
    procedure DataChange(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    function  GetDataField: string;
    function  GetDataSource: TDataSource;
    function  GetField: TField;
    function  GetReadOnly: Boolean;

    procedure OnUnknownEnter(Sender : TObject; fOwner : TObject; NewBackColor : TColor; Var fSavedBackColor : TColor);
    procedure OnUnknownExit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
  protected
    procedure Change; override;
    procedure Reset; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    function  EditCanModify: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Field: TField read GetField;

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;

    property  DataField    : string
              Read    GetDataField
              Write   SetDataField;

    property  DataSource   : TDataSource
              Read    GetDataSource
              Write   SetDataSource;

    property  ReadOnly     : Boolean
              Read    GetReadOnly
              write   SetReadOnly
              default False;
  end;

  TAdrockDBMaskEdit = class(TAdrockDBMaskEditCustom)
  Published
    Property WhenFocused;
    property DataField;
    property DataSource;
    property ReadOnly;
    property AutoSelect;
    property AutoSize;
    property BorderStyle;
    property CharCase;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property EditMask;
    property Enabled;
    property Font;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

implementation

constructor TAdrockDBMaskEditCustom.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  inherited ReadOnly := True;

  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := OnUnKnownEnter;
  fWhenFocused.OnUnknownOwnerExit  := OnUnKnownExit;

  MaskState := [msDBSetText];
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnEditingChange := EditingChange;
  FDataLink.OnUpdateData := UpdateData;
  CalcTextMargin;
  EditMask := '';
end;

destructor TAdrockDBMaskEditCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  FDataLink.Free;
  FDataLink := nil;
  FCanvas.Free;
  inherited Destroy;
end;

procedure TAdrockDBMaskEditCustom.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
     (AComponent = DataSource) then DataSource := nil;
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;

end;

procedure TAdrockDBMaskEditCustom.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    FDataLink.Edit;
end;

procedure TAdrockDBMaskEditCustom.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if (Key in [#32..#255]) and (FDataLink.Field <> nil) and
     not FDataLink.Field.IsValidChar(Key) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        Key := #0;
      end;
  end;
end;

function TAdrockDBMaskEditCustom.EditCanModify: Boolean;
begin
  Result := FDataLink.Edit;
end;

procedure TAdrockDBMaskEditCustom.Reset;
begin
  FDataLink.Reset;
  SelectAll;
end;

procedure TAdrockDBMaskEditCustom.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    if (FAlignment <> taLeftJustify) and not IsMasked then
      Invalidate;
    FDataLink.Reset;
  end;
end;

procedure TAdrockDBMaskEditCustom.Change;
begin
  FDataLink.Modified;
  inherited Change;
end;

function TAdrockDBMaskEditCustom.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TAdrockDBMaskEditCustom.SetDataSource(Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

function TAdrockDBMaskEditCustom.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TAdrockDBMaskEditCustom.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TAdrockDBMaskEditCustom.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TAdrockDBMaskEditCustom.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TAdrockDBMaskEditCustom.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TAdrockDBMaskEditCustom.DataChange(Sender: TObject);
begin
  if FDataLink.Field <> nil then
  begin
    if FAlignment <> FDataLink.Field.Alignment then
    begin
      EditText := '';  
      FAlignment := FDataLink.Field.Alignment;
    end;
    if FDataLink.Field.EditMask <> '' then
      EditMask := FDataLink.Field.EditMask;

    if FDataLink.Field.DataType = ftString then
      MaxLength := FDataLink.Field.Size else
      MaxLength := 0;
    if FFocused and FDataLink.CanModify then
      Text := FDataLink.Field.Text
    else
      EditText := FDataLink.Field.DisplayText;
  end
  else
  begin
    FAlignment := taLeftJustify;
    EditMask := '';
    MaxLength := 0;
    if csDesigning in ComponentState then
      EditText := Name
    else
      EditText := '';
  end;
end;

procedure TAdrockDBMaskEditCustom.EditingChange(Sender: TObject);
begin
  inherited ReadOnly := not FDataLink.Editing;
end;

procedure TAdrockDBMaskEditCustom.UpdateData(Sender: TObject);
begin
  ValidateEdit;
  FDataLink.Field.Text := Text;
end;

procedure TAdrockDBMaskEditCustom.WMPaste(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TAdrockDBMaskEditCustom.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TAdrockDBMaskEditCustom.CMEnter(var Message: TCMEnter);
begin
  SetFocused(True);
  inherited;
  fWhenFocused.OnEnter;
end;

procedure TAdrockDBMaskEditCustom.CMExit(var Message: TCMExit);
begin
  try
    FDataLink.UpdateRecord;
  except
    SelectAll;
    SetFocus;
    raise;
  end;
  SetFocused(False);
  SetCursor(0);
  DoExit;
  fWhenFocused.OnExit;
end;

procedure TAdrockDBMaskEditCustom.WMPaint(var Message: TWMPaint);
var
  Width, Indent, Left, I: Integer;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
begin
  if (FAlignment = taLeftJustify) or FFocused then
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
  if DC = 0 then
    DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      S := EditText;
      if PasswordChar <> #0 then
      begin
        for I := 1 to Length(S) do
          S[I] := PasswordChar;
      end;
      Width := TextWidth(S);
      if BorderStyle = bsNone then
        Indent := 0
      else
        Indent := FTextMargin;
      if FAlignment = taRightJustify then
        Left := R.Right - Width - Indent
      else if FAlignment = taRightJustify then
        Left := R.Right - Width - Indent
      else
        Left := (R.Left + R.Right - Width) div 2;
      TextRect(R, Left, Indent, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then
      EndPaint(Handle, PS);
  end;
end;

procedure TAdrockDBMaskEditCustom.CMFontChanged(var Message: TMessage);
begin
  inherited;
  CalcTextMargin;
end;

procedure TAdrockDBMaskEditCustom.CalcTextMargin;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  DC := GetDC(0);
  GetTextMetrics(DC, SysMetrics);
  SaveFont := SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  I := SysMetrics.tmHeight;
  if I > Metrics.tmHeight then
    I := Metrics.tmHeight;
  FTextMargin := I div 4;
end;

procedure TAdrockDBMaskEditCustom.OnUnknownEnter(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
  Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
  Color := NewBackColor;
end;

procedure TAdrockDBMaskEditCustom.OnUnknownExit(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
begin
  Color := fSavedBackColor;
end;


end.
