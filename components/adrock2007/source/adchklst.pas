unit AdChkLst;

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
  {$IFDEF WIN32}
  Windows,
  {$ELSE}
  WinTypes, WinProcs, Menus,
  {$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, {DsgnIntf, }TypInfo,
  AdWFOC;

type
  TAdrockCheckState = (csUnchecked, csChecked, csGrayed);
  TAdrockCheckStyle = (csAutoDetect, csNew, csWin31);
  TAdrockCheckMode = (cmCheckboxClick, cmDoubleClick, cmBoth, cmNone);
  TAdrockCheckOrder = (coCheckUncheck, coCheckUncheckGray, coCheckGrayUncheck);

  TAdrockDrawItemEvent = Procedure(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState) of object;
  TAdrockRedrawEvent = procedure(Sender: TObject; AItem : LongInt) of object;

  TAdrockStateChangedEvent = procedure(Sender : TObject; Index : Integer; State : TAdrockCheckState) of object;
  TAdrockStateChangeEvent = procedure(Sender : TObject; Index : Integer; var NewState : TAdrockCheckState) of object;

  TAdrockCheckListStrings = class(TStringList)
  private
    FOnCheckRows : TNotifyEvent;
    FOnRedraw    : TAdrockRedrawEvent;
    FSorted      : Boolean;
    procedure SetState(Index: Integer; AState: TAdrockCheckState);
    function  GetState(Index: Integer): TAdrockCheckState;
    procedure SetEnabled(Index: Integer; AEnabled: Boolean);
    function  GetEnabled(Index: Integer): Boolean;
    procedure SetTag(Index: Integer; ATag: Longint);
    function  GetTag(Index: Integer): Longint;
    procedure SetSorted(Value : Boolean);
  protected
    function Transform(const S: string; PutIt : Boolean): string;
    function GetItem(Item: String; Index: Integer; Default: String): String;
    function PutItem(Item, Value: String; Index: Integer): String;
    procedure ReadState(Reader : TReader);
    procedure WriteState(Writer : TWriter);
    procedure ReadEnabled(Reader : TReader);
    procedure WriteEnabled(Writer : TWriter);
    procedure ReadTag(Reader : TReader);
    procedure WriteTag(Writer : TWriter);
    function  OldGet(Index: Integer): string;
    procedure OldPut(Index: Integer; const S: string);
    procedure QuickSort(L, R: Integer);
  public
    procedure DefineProperties(Filer : TFiler); override;
    function Add(const S: string): Integer; override;
    function AddObject(const S: string; AObject: TObject): Integer; override;
    procedure Delete(Index: Integer); override;
    procedure Insert(Index: Integer; const S: string); override;
    function Get(Index: Integer): string; override;
    procedure Put(Index: Integer; const S: string); override;
    procedure Sort; override;
    property Sorted: Boolean read FSorted write SetSorted;
    property Enabled[Index: Integer]: Boolean read GetEnabled write SetEnabled;
    property State[Index: Integer]: TAdrockCheckState read GetState write SetState;
    property Tag[Index: Integer]: Longint read GetTag write SetTag;
    property OnCheckRows: TNotifyEvent read FOnCheckRows write FOnCheckRows;
    property OnRedraw   : TAdrockRedrawEvent read FOnRedraw write FOnRedraw;
  end;

  TAdrockCheckListBox = class(TCustomGrid)
  private
    fWhenFocused    : TAdrockWhenFocused;
    FOnStateChanged : TAdrockStateChangedEvent;
    FOnStateChange  : TAdrockStateChangeEvent;
    FSelectDisabled : Boolean;
    fOnDraw         : TAdrockDrawItemEvent;
    FCheckCtl3D     : Boolean;
    FCheckStyle     : TAdrockCheckStyle;
    FCheckOrder     : TAdrockCheckOrder;
    FCheckMode      : TAdrockCheckMode;
    FFocusRect      : TRect;
    FItems          : TStrings;
    FIntegralHeight : Boolean;
    FItemHeight     : Integer;
    FItemIndex      : Integer;
    FMinWidth       : Integer;
    FGrayCheckMark  : Boolean;
    FShowFocusRect  : Boolean;


{    function min(const x, y : integer): integer;
}
    function max(const x, y : integer): integer;
    Procedure CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
      Var fSavedBackColor : TColor);
    Procedure CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
    procedure SetItems(Value : TStrings);
    procedure SetItemIndex(Value : Integer);
    function  GeTAdrockCheckState(Index: Integer): TAdrockCheckState;
    procedure SeTAdrockCheckState(Index : Integer; Value : TAdrockCheckState);
    function  GetItemEnabled(Index: Integer): Boolean;
    procedure SetItemEnabled(Index : Integer; Value : Boolean);
    function  GetItemTag(Index: Integer): Longint;
    procedure SetItemTag(Index : Integer; Value : Longint);
    procedure SetIntegralHeight(Value : Boolean);
    procedure SeTAdrockCheckCtl3D(Value : Boolean);
    procedure SeTAdrockCheckStyle(Value : TAdrockCheckStyle);
    procedure SetGrayCheckMark(Value : Boolean);
    procedure SetShowFocusRect(Value : Boolean);
    procedure SetSorted(Value : Boolean);
    function  GetSorted: Boolean;
    { Private declarations }
  protected
    Procedure CMEnter(Var Message : TCMEnter); message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);   message CM_EXIT;
    function  FindLast: Integer;
    function  FindFirst: Integer;
    function  FindNext: Integer;
    function  FindPrevious: Integer;
    procedure Check(Sender : TObject);
    procedure RedrawLine(Sender : TObject; AItem: LongInt);
    procedure wmSize(var Msg: TWMSize); message WM_SIZE;
    procedure cmFontChanged(var Msg : TMessage); message CM_FONTCHANGED;
    procedure cmEnabledChanged(var Msg : TMessage); message CM_ENABLEDCHANGED;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure DblClick; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure Toggle(const Index : Integer);
    function  SetIndex(Index: Integer): Integer;
    function  NewStyle: Boolean;
    procedure CheckRows;
    procedure ResizeControl;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    procedure SetRowHeight;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
    { Protected declarations }
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    Procedure  SelectAll;
    Procedure  SelectNone;
    Function   CheckedCount: Integer;
    procedure Clear;
    property ItemIndex: Integer read FItemIndex write SetItemIndex;
    property ItemState[Index: Integer]: TAdrockCheckState read GeTAdrockCheckState write SeTAdrockCheckState;
    property ItemEnabled[Index: Integer]: Boolean read GetItemEnabled write SetItemEnabled;
    property ItemTag[Index: Integer]: Longint read GetItemTag write SetItemTag;
    Property Canvas;
    { Public declarations }
  published
    property Align;
    property BorderStyle;
    property Enabled;
    property Font;
    property CheckCtl3D: Boolean read FCheckCtl3D write SeTAdrockCheckCtl3D default True;
    property CheckMode: TAdrockCheckMode read FCheckMode write FCheckMode default cmBoth;
    property CheckOrder: TAdrockCheckOrder read FCheckOrder write FCheckOrder default coCheckUncheck;
    property CheckStyle: TAdrockCheckStyle read FCheckStyle write SeTAdrockCheckStyle default csAutoDetect;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property GrayCheckMark: Boolean read FGrayCheckMark write SetGrayCheckMark default False;
    property IntegralHeight: Boolean read FIntegralHeight write SetIntegralHeight default True;
    property Items: TStrings read FItems write SetItems;
    property ItemHeight: Integer read FItemHeight;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property SelectDisabled: Boolean read FSelectDisabled write FSelectDisabled default True;
    property ShowHint;
    property ShowFocusRect: Boolean read FShowFocusRect write SetShowFocusRect default True;
    property Sorted: Boolean read GetSorted write SetSorted default False;
    Property OnDrawItem : TAdrockDrawItemEvent read fOnDraw write fOnDraw;
    property TabOrder;
    property TabStop;
    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;
    property Visible;

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
{$IFDEF WIN32}
    property OnStartDrag;
{$ENDIF}
    property OnStateChange: TAdrockStateChangeEvent read FOnStateChange write FOnStateChange;
    property OnStateChanged: TAdrockStateChangedEvent read FOnStateChanged write FOnStateChanged;
    { Published declarations }
  end;


implementation

(*
function TAdrockCheckListBox.min(const x, y : integer): integer;
begin
  if x<y then result := x else result := y;
end;
*)
function TAdrockCheckListBox.max(const x, y : integer): integer;
begin
  if x<y then result := y else result := x;
end;

{ TAdrockCheckListStrings }

function TAdrockCheckListStrings.GetItem(Item: String; Index: Integer; Default: String): String;
var
  iPos, iCount: Integer;
begin
  Result := '';
  iCount := 1;
  iPos := Pos('|', Item);
  while (iPos > 0) and (iCount < Index) do
   begin
     inc(iCount);
     System.Delete(Item, 1, iPos);
     iPos := Pos('|', Item);
   end;
  if iCount = Index then
   begin
     if iPos = 0 then
      Result := Item
     else
      Result := Copy(Item, 1, iPos-1);
   end;
  if Result = '' then Result := Default;
end;

function TAdrockCheckListStrings.PutItem(Item, Value: String; Index: Integer): String;
var
  iPos, iCount: Integer;
begin
  Result := '';
  iCount := 1;
  iPos := Pos('|', Item);
  while (iPos > 0) and (iCount < Index) do
   begin
     inc(iCount);
     Result := Result + Copy(Item, 1, iPos);
     System.Delete(Item, 1, iPos);
     iPos := Pos('|', Item);
   end;
  if iCount = Index then
   begin
     if iPos=0 then
      begin
        if (Result<>'') and (Result[Length(Result)]<>'|') then Result := Result + '|';
        Result := Result + Value;
      end
     else
      begin
        Result := Result + Value;
        if Result[Length(Result)]<>'|' then Result := Result + '|';
        Result := Result + Copy(Item, iPos+1, Length(Item));
      end;
   end
  else
   begin
     if Item<>'' then Result := Result + Item;
     while iCount < Index do
      begin
        Result := Result + '|';
        inc(iCount);
      end;
     Result := Result + Value;
   end;
end;

function TAdrockCheckListStrings.GetState(Index: Integer): TAdrockCheckState;
begin
  try
    case StrToInt(GetItem(OldGet(Index), 1, '0')) of
      1 :  Result := csChecked;
      2 :  Result := csGrayed;
      else Result := csUnchecked;
    end;
  except
    Result := csUnchecked;
  end;
end;

procedure TAdrockCheckListStrings.SetState(Index : Integer; AState : TAdrockCheckState);
begin
  case AState of
   csUnchecked : OldPut(Index, PutItem(OldGet(Index), '0', 1));
   csChecked   : OldPut(Index, PutItem(OldGet(Index), '1', 1));
   csGrayed    : OldPut(Index, PutItem(OldGet(Index), '2', 1));
  end;
end;

function TAdrockCheckListStrings.GetEnabled(Index: Integer): Boolean;
begin
  try
    Result := Boolean(StrToInt(GetItem(OldGet(Index), 3, '1')));
  except
    Result := True;
  end;
end;

procedure TAdrockCheckListStrings.SetEnabled(Index : Integer; AEnabled : Boolean);
begin
  OldPut(Index, PutItem(OldGet(Index), IntToStr(Integer(AEnabled)), 3));
end;

function TAdrockCheckListStrings.GetTag(Index: Integer): Longint;
begin
  try
    Result := StrToInt(GetItem(OldGet(Index), 4, '0'));
  except
    Result := 0;
  end;
end;

procedure TAdrockCheckListStrings.SetTag(Index : Integer; ATag : Longint);
begin
  OldPut(Index, PutItem(OldGet(Index), IntToStr(ATag), 4));
end;

procedure TAdrockCheckListStrings.SetSorted(Value : Boolean);
begin
  if FSorted<>Value then
   begin
     if Value then Sort;
     FSorted := Value;
   end;
end;

procedure TAdrockCheckListStrings.QuickSort(L, R: Integer);
var
  I, J: Integer;
  P: String;
begin
  I := L;
  J := R;
  P := Get((L + R) shr 1);
  repeat
    while AnsiCompareText(Get(I), P) < 0 do Inc(I);
    while AnsiCompareText(Get(J), P) > 0 do Dec(J);
    if I <= J then
    begin
      Exchange(I, J);
      Inc(I);
      Dec(J);
    end;
  until I > J;
  if L < J then QuickSort(L, J);
  if I < R then QuickSort(I, R);
end;

procedure TAdrockCheckListStrings.Sort;
begin
  if not Sorted and (Count > 1) then
  begin
    Changing;
    BeginUpdate;
    QuickSort(0, Count - 1);
    EndUpdate;
    Changed;
    If Assigned(FOnRedraw) then FOnRedraw(Self, -1);
  end;
end;

function TAdrockCheckListStrings.Transform(const S: string; PutIt : Boolean): string;
begin
  if PutIt then
   begin
     if Pos('|', S)=0 then
       Result := '0|' + S + '|1|0'
     else
      Result := GetItem(S, 1, '0') + '|' + GetItem(S, 2,  S ) + '|' +
                GetItem(S, 3, '1') + '|' + GetItem(S, 4, '0')
   end
  else
   Result := GetItem(S, 2, S);
end;

function TAdrockCheckListStrings.Add(const S: string): Integer;
begin
  Result := inherited Add(Transform(S, True));
  if Assigned(FOnCheckRows) then FOnCheckRows(Self);
end;

function TAdrockCheckListStrings.AddObject(const S: string; AObject: TObject): Integer;
begin
  Result := inherited AddObject(Transform(S, True), AObject);
  if Assigned(FOnCheckRows) then FOnCheckRows(Self);
end;

procedure TAdrockCheckListStrings.Delete(Index: Integer);
begin
  inherited Delete(Index);
  if Assigned(FOnCheckRows) then FOnCheckRows(Self);
end;

procedure TAdrockCheckListStrings.Insert(Index: Integer; const S: string);
begin
  inherited Insert(Index, Transform(S, True));
  if Assigned(FOnCheckRows) then FOnCheckRows(Self);
end;

procedure TAdrockCheckListStrings.OldPut(Index: Integer; const S: string);
begin
  inherited Put(Index, S);
end;

function TAdrockCheckListStrings.OldGet(Index: Integer): string;
begin
  Result := inherited Get(Index);
end;

procedure TAdrockCheckListStrings.Put(Index: Integer; const S: string);
var
  sNew : string;
begin
  sNew := Transform(S, True);
  OldPut(Index, sNew);
  If Assigned(FOnRedraw) then FOnRedraw(Self, Index);
end;

function TAdrockCheckListStrings.Get(Index: Integer): string;
begin
  Result := OldGet(Index);
  Result := Transform(Result, False);
end;

procedure TAdrockCheckListStrings.ReadState(Reader : TReader);
var
  i  : integer;
  ct : TAdrockCheckState;
begin
  i := 0;
  Reader.ReadListBegin;
  while not Reader.EndOfList do
   begin
     ct := TAdrockCheckState(GetEnumValue(TypeInfo(TAdrockCheckState), Reader.ReadString));
     if i<Count then State[i] := ct;
     inc(i);
   end;
  Reader.ReadListEnd;
end;

procedure TAdrockCheckListStrings.WriteState(Writer : TWriter);
var
  i : Integer;
begin
  Writer.WriteListBegin;
  for i:=0 to Count-1 do
  {$IFDEF WIN32}
   Writer.WriteString(GetEnumName(TypeInfo(TAdrockCheckState), ord(State[i])));
  {$ELSE}
   Writer.WriteString(GetEnumName(TypeInfo(TAdrockCheckState), ord(State[i]))^);
  {$ENDIF}
  Writer.WriteListEnd;
end;

procedure TAdrockCheckListStrings.ReadEnabled(Reader : TReader);
var
  i  : integer;
  en : Boolean;
begin
  i := 0;
  Reader.ReadListBegin;
  while not Reader.EndOfList do
   begin
     en := Reader.ReadBoolean;
     if i<Count then Enabled[i] := en;
     inc(i);
   end;
  Reader.ReadListEnd;
end;

procedure TAdrockCheckListStrings.WriteEnabled(Writer : TWriter);
var
  i : Integer;
begin
  Writer.WriteListBegin;
  for i:=0 to Count-1 do
   Writer.WriteBoolean(Enabled[i]);
  Writer.WriteListEnd;
end;

procedure TAdrockCheckListStrings.ReadTag(Reader : TReader);
var
  i  : integer;
  tg : Longint;
begin
  i := 0;
  Reader.ReadListBegin;
  while not Reader.EndOfList do
   begin
     tg := Reader.ReadInteger;
     if i<Count then Tag[i] := tg;
     inc(i);
   end;
  Reader.ReadListEnd;
end;

procedure TAdrockCheckListStrings.WriteTag(Writer : TWriter);
var
  i : Integer;
begin
  Writer.WriteListBegin;
  for i:=0 to Count-1 do
   Writer.WriteInteger(Tag[i]);
  Writer.WriteListEnd;
end;

procedure TAdrockCheckListStrings.DefineProperties(Filer : TFiler);

{$IFDEF WIN32}
  function DoWrite: Boolean;
  begin
    if Filer.Ancestor <> nil then
    begin
      Result := True;
      if Filer.Ancestor is TAdrockCheckListStrings then
        Result := not Equals(TAdrockCheckListStrings(Filer.Ancestor))
    end
    else Result := Count > 0;
  end;
{$ELSE}
  const DoWrite = True;
{$ENDIF}

begin
  inherited DefineProperties(Filer);
  Filer.DefineProperty('State', ReadState, WriteState, DoWrite);
  Filer.DefineProperty('Enabled', ReadEnabled, WriteEnabled, DoWrite);
  Filer.DefineProperty('Tag', ReadTag, WriteTag, DoWrite);
end;

{ TAdrockCheckListBox }

constructor TAdrockCheckListBox.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := CustomOnEnterWhenFocusedHandle;
  fWhenFocused.OnUnknownOwnerExit  := CustomOnExitWhenFocusedHandle;

  FMinWidth := 13;
  Width := 121;
  Height := 97;
  Color := clWindow;
  ParentColor := False;
  RowCount := 0;
  ColCount := 1;
  FixedCols := 0;
  FixedRows := 0;
  DefaultDrawing := False;
  FItems := TAdrockCheckListStrings.Create;
  with TAdrockCheckListStrings(FItems) do
   begin
     OnCheckRows := Check;
     OnRedraw := RedrawLine;
   end;
  FItemIndex := -1;
  FCheckCtl3D := True;
  FCheckStyle := csAutoDetect;
  FIntegralHeight := True;
  FGrayCheckMark := False;
  FCheckMode := cmBoth;
  FCheckOrder := coCheckUncheck;
  FSelectDisabled := True;
  FShowFocusRect := True;
  SetRowHeight;
  CheckRows;
  inherited Options := [goThumbTracking];
end;

destructor TAdrockCheckListBox.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  FItems.Free;
  fItems := NIL;
  inherited Destroy;
end;

Procedure TAdrockCheckListBox.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockCheckListBox.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockCheckListBox.CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject;
    NewBackColor : TColor; Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
  Color := NewBackColor;
end;

Procedure TAdrockCheckListBox.CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);
begin
  Color := fSavedBackColor;
end;

procedure TAdrockCheckListBox.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;


procedure TAdrockCheckListBox.Check(Sender : TObject);
begin
  CheckRows;
end;

procedure TAdrockCheckListBox.RedrawLine(Sender : TObject; AItem: LongInt);
begin
  if AItem>=0 then
   InvalidateCell(0, AItem)
  else
   Repaint;
end;

function TAdrockCheckListBox.NewStyle: Boolean;
begin
  Result := ((CheckStyle = csAutoDetect) and NewStyleControls) or (CheckStyle = csNew);
end;

function TAdrockCheckListBox.GeTAdrockCheckState(Index: Integer): TAdrockCheckState;
begin
  Result := TAdrockCheckListStrings(Items).State[Index];
end;

procedure TAdrockCheckListBox.SeTAdrockCheckState(Index : Integer; Value : TAdrockCheckState);
begin
  TAdrockCheckListStrings(Items).State[Index] := Value;
  InvalidateCell(0,Index);
end;

function TAdrockCheckListBox.GetItemEnabled(Index: Integer): Boolean;
begin
  Result := TAdrockCheckListStrings(Items).Enabled[Index];
end;

procedure TAdrockCheckListBox.SetItemEnabled(Index : Integer; Value : Boolean);
begin
  TAdrockCheckListStrings(Items).Enabled[Index] := Value;
  InvalidateCell(0,Index);
end;

function TAdrockCheckListBox.GetItemTag(Index: Integer): Longint;
begin
  Result := TAdrockCheckListStrings(Items).Tag[Index];
end;

procedure TAdrockCheckListBox.SetItemTag(Index : Integer; Value : Longint);
begin
  TAdrockCheckListStrings(Items).Tag[Index] := Value;
end;

procedure TAdrockCheckListBox.SetItems(Value : TStrings);
begin
  FItems.Assign(Value);
  CheckRows;
end;

procedure TAdrockCheckListBox.Clear;
begin
  FItems.Clear;
  CheckRows;
end;

procedure TAdrockCheckListBox.SetItemIndex(Value: Integer);
begin
  if Value<>FItemIndex then
   begin
     if FItemIndex>=0 then InvalidateCell(0, FItemIndex);
     FItemIndex := Value;
     if FItemIndex>=0 then InvalidateCell(0, FItemIndex);
   end;
end;

procedure TAdrockCheckListBox.SetShowFocusRect(Value : Boolean);
begin
  if FShowFocusRect<>Value then
   begin
     FShowFocusRect := Value;
     if Focused then InvalidateCell(0, Col);
   end;
end;

procedure TAdrockCheckListBox.SetSorted(Value : Boolean);
begin
  TAdrockCheckListStrings(Items).Sorted := Value;
end;

function TAdrockCheckListBox.GetSorted: Boolean;
begin
  Result := TAdrockCheckListStrings(Items).Sorted;
end;

procedure TAdrockCheckListBox.ResizeControl;
var
  iOffs, iRows : integer;
begin
  iOffs := 0;
  iRows := max(1, Height div DefaultRowHeight);
  if BorderStyle=bsSingle then
   begin
     inc(iOffs, 2);
     if Ctl3D then inc(iOffs, 2);
   end;
  Height := iRows * DefaultRowHeight + iOffs;
end;

procedure TAdrockCheckListBox.SetIntegralHeight(Value : Boolean);
begin
  if Value<>FIntegralHeight then
   begin
     if Value then
       ResizeControl;
     FIntegralHeight := Value;
   end;
end;

procedure TAdrockCheckListBox.SeTAdrockCheckCtl3D(Value : Boolean);
begin
  if FCheckCtl3D<>Value then
   begin
     FCheckCtl3D := Value;
     Repaint;
   end;
end;

procedure TAdrockCheckListBox.SetGrayCheckMark(Value : Boolean);
begin
  if FGrayCheckMark<>Value then
   begin
     FGrayCheckMark := Value;
     Repaint;
   end;
end;

procedure TAdrockCheckListBox.SeTAdrockCheckStyle(Value : TAdrockCheckStyle);
begin
  if FCheckStyle<>Value then
   begin
     FCheckStyle := Value;
     Repaint;
   end;
end;

procedure TAdrockCheckListBox.CheckRows;
begin
  FItemIndex := -1;
  if RowCount<>Items.Count then
   begin
     if Items.Count>0 then
      RowCount := Items.Count
     else
      RowCount := 1;
   end
  else
   Invalidate;
end;

procedure TAdrockCheckListBox.SetRowHeight;
var
  ScreenDC: HDC;
  FontSize: Integer;
begin
  ScreenDC := GetDC(0);
  try
    FontSize := MulDiv(Font.Size, GetDeviceCaps(ScreenDC, LOGPIXELSY), 72);
    FItemHeight := max(FMinWidth, MulDiv(FontSize, 120, 100)+3);
    DefaultRowHeight := FItemHeight;
  finally
    ReleaseDC(0, ScreenDC);
  end;
end;

procedure TAdrockCheckListBox.wmSize(var Msg: TWMSize);
begin
  inherited;
  if IntegralHeight then
    ResizeControl;
  DefaultColWidth := ClientWidth;
end;

procedure TAdrockCheckListBox.cmFontChanged(var Msg : TMessage);
begin
  inherited;
  SetRowHeight;
  if IntegralHeight then
    ResizeControl;
end;

procedure TAdrockCheckListBox.cmEnabledChanged(var Msg : TMessage);
begin
  inherited;
  Repaint;
end;

procedure TAdrockCheckListBox.Toggle(const Index : Integer);
var
  NewState : TAdrockCheckState;
begin
  if (Index=-1) or (ItemEnabled[Index]=False) then Exit;
  case CheckOrder of
    coCheckUncheck:
     begin
       if ItemState[Index]=csUnchecked then
        NewState := csChecked
       else
        NewState := csUnchecked;
     end;
    coCheckUncheckGray:
     begin
       case ItemState[Index] of
         csUnchecked: NewState := csGrayed;
         csChecked  : NewState := csUnchecked;
         csGrayed   : NewState := csChecked;
       end;
     end;
    coCheckGrayUncheck:
     begin
       case ItemState[Index] of
         csUnchecked: NewState := csChecked;
         csChecked  : NewState := csGrayed;
         csGrayed   : NewState := csUnchecked;
       end;
     end;
  end;
  if Assigned(FOnStateChange) then FOnStateChange(Self, Index, NewState);
  ItemState[Index] := NewState;
  if Assigned(FOnStateChanged) then FOnStateChanged(Self, Index, NewState);
end;

procedure TAdrockCheckListBox.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if Key=#32 then
   if (CheckMode <> cmNone) then
     Toggle(ItemIndex);
end;

function TAdrockCheckListBox.SetIndex(Index : Integer): Integer;
begin
  if Items.Count>0 then Result := Index else Result := -1;
end;

function TAdrockCheckListBox.FindFirst: Integer;
var
  i : integer;
begin
  if Items.Count=0 then
   begin
     Result := -1;
     Exit;
   end
  else
   begin
     i := 0;
     if ItemIndex=-1 then ItemIndex := Items.Count-1;
     while (i<ItemIndex) and (i<Items.Count) do
      if ItemEnabled[i]=False then
       inc(i)
      else
       begin
         Result := i;
         Exit;
       end;
   end;
  Result := ItemIndex;
end;

function TAdrockCheckListBox.FindLast: Integer;
var
  i : integer;
begin
  if Items.Count=0 then
   begin
     Result := -1;
     Exit;
   end
  else
   begin
     i := Items.Count-1;
     if ItemIndex=-1 then ItemIndex := 0;
     while (i>ItemIndex) and (i>=0) do
      if ItemEnabled[i]=False then
       dec(i)
      else
       begin
         Result := i;
         Exit;
       end;
   end;
  Result := ItemIndex;
end;

function TAdrockCheckListBox.FindPrevious: Integer;
var
  i : integer;
begin
  if Items.Count=0 then
   begin
     Result := -1;
     Exit;
   end
  else
   begin
     if ItemIndex=-1 then
      begin
        Result := FindFirst;
        Exit;
      end;
     i := ItemIndex-1;
     while (i>=0) do
      if ItemEnabled[i]=False then
       dec(i)
      else
       begin
         Result := i;
         Exit;
       end;
   end;
  Result := ItemIndex;
end;

function TAdrockCheckListBox.FindNext: Integer;
var
  i : integer;
begin
  if Items.Count=0 then
   begin
     Result := -1;
     Exit;
   end
  else
   begin
     if ItemIndex=-1 then
      begin
        Result := FindFirst;
        Exit;
      end;
     i := ItemIndex+1;
     while (i<Items.Count) do
      if ItemEnabled[i]=False then
       inc(i)
      else
       begin
         Result := i;
         Exit;
       end;
   end;
  Result := ItemIndex;
end;

procedure TAdrockCheckListBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  if Items.Count = 0 then Exit;
  case Key of
    VK_HOME:
      begin
        if not SelectDisabled then
         ItemIndex := SetIndex(FindFirst)
        else
         ItemIndex := SetIndex(0);
        Click;
        Exit;
      end;
    VK_END:
      begin
        if not SelectDisabled then
         ItemIndex := SetIndex(FindLast)
        else
         ItemIndex := SetIndex(Items.Count-1);
        Click;
        Exit;
      end;
    VK_UP:
      begin
        if ItemIndex>0 then
         begin
           if not SelectDisabled then
            ItemIndex := SetIndex(FindPrevious)
           else
            ItemIndex := SetIndex(ItemIndex-1)
         end;
        Click;
        Exit;
      end;
    VK_DOWN:
      begin
        if ItemIndex<Items.Count-1 then
         begin
           if not SelectDisabled then
            ItemIndex := SetIndex(FindNext)
           else
            ItemIndex := SetIndex(ItemIndex+1);
         end;
        Click;
        Exit;
      end;
  end;
end;

procedure TAdrockCheckListBox.DblClick;
begin
  inherited DblClick;
  if Row=ItemIndex then
   if (CheckMode=cmBoth) or (CheckMode=cmDoubleClick) then
     Toggle(ItemIndex);
end;

procedure TAdrockCheckListBox.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);

  if (Items.Count > 0) then
   begin
     if ItemEnabled[Row] or SelectDisabled then
      begin
        ItemIndex := SetIndex(Row);
        if (X<=ItemHeight) and ((CheckMode=cmBoth) or (CheckMode=cmCheckboxClick)) then Toggle(Row);
      end;
   end;
end;

procedure TAdrockCheckListBox.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var
  RecTAdrockCheck      : TRect;
  OldColor,
  OldPenColor    : TColor;
  pText          : PChar;
  State          : TOwnerDrawState;

  procedure DrawCheckMark;
  var
    Halfy, i,
    x, y      : Integer;
  begin
    with Canvas do
     begin
       InflateRect(RecTAdrockCheck, -3, -3);
       if (ItemState[ARow]=csGrayed) and GrayCheckMark then
        Pen.Color := clBtnShadow
       else
        Pen.Color := clBlack;
       Pen.Width := 1;
       with RecTAdrockCheck do
        begin
          if NewStyle then
           begin
             { Draw the real 95 style checkmark }
             halfy := top+(bottom-top) div 2 + 1;
             for i:=0 to 2 do
              begin
                PolyLine([Point(left,halfy-i), Point(left+2, halfy+2-i)]);
                PolyLine([Point(left+2, halfy+2-i), Point(left+7, halfy-3-i)]);
              end;
           end
          else
           begin
             if CheckCtl3D then
              begin
                { Draw a fat cross }
                PolyLine([Point(left,top), Point(right, bottom)]);
                PolyLine([Point(left+1,top), Point(right, bottom-1)]);
                PolyLine([Point(left,top+1), Point(right-1, bottom)]);
                PolyLine([Point(left,bottom-1), Point(right, top-1)]);
                PolyLine([Point(left,bottom-2), Point(right-1, top-1)]);
                PolyLine([Point(left+1,bottom-1), Point(right, top)]);
              end
             else
              begin
                if ItemState[ARow]=csGrayed then
                 begin
                   for x:=0 to right-left+1 do
                    for y:=0 to bottom-top+1 do
                     if ((x mod 2=0) and (y mod 2<>0)) or
                        ((x mod 2<>0) and (y mod 2=0)) then
                      Pixels[left-1+x,top-1+y] := clBlack;
                 end
                else
                 begin
                   { Draw a thin cross }
                   PolyLine([Point(left-1,top-1), Point(right+1, bottom+1)]);
                   PolyLine([Point(left-1,bottom), Point(right+1, top-2)]);
                 end;
              end;
           end;
        end;
     end;
  end;


begin
  CopyRect(RecTAdrockCheck, ARect);
  RecTAdrockCheck.left := ((ARect.Bottom-ARect.Top) - (FMinWidth)) div 2;
  RecTAdrockCheck.top := ARect.top + ((ARect.Bottom-ARect.Top) - (FMinWidth)) div 2;
  RecTAdrockCheck.bottom := RecTAdrockCheck.top + FMinWidth;
  RecTAdrockCheck.right := RecTAdrockCheck.left + FMinWidth;
  with Canvas do
   begin
     Font := Self.Font;
     Brush.Color := Color;
     if ItemIndex=ARow then
      begin
        Font.Color := clHighlightText;
        Brush.Color := clHighlight;
      end;
     FillRect(ARect);
     if Items.Count>0 then
      begin
        OldColor := Brush.Color;
        OldPenColor := Pen.Color;
        try
          if CheckCtl3D then
           begin
             with RecTAdrockCheck do
              begin
                Pen.Color := clBtnShadow;
                PolyLine([Point(left, bottom-1), Point(left, top), Point(right, top)]);
                Pen.Color := clBlack;
                PolyLine([Point(left+1, bottom-2), Point(left+1, top+1), Point(right-1, top+1)]);
                Pen.Color := clBtnFace;
                PolyLine([Point(right-2, top+1), Point(right-2, bottom-2), Point(left, bottom-2)]);
                Pen.Color := clBtnHighlight;
                PolyLine([Point(left, bottom-1), Point(right-1, bottom-1), Point(right-1, top-1)]);
              end;
           end
          else
           begin
             if NewStyle then Pen.Color := clBtnShadow;
             Rectangle(RecTAdrockCheck.left+1, RecTAdrockCheck.top+1, RecTAdrockCheck.right-1, RecTAdrockCheck.bottom-1);
           end;
          if (ItemState[ARow]=csGrayed) and (NewStyle or ((not NewStyle) and CheckCtl3D)) then
           Brush.Color := clBtnFace
          else
           Brush.Color := clWindow;
          InflateRect(RecTAdrockCheck, -2, -2);
          FillRect(RecTAdrockCheck);
          InflateRect(RecTAdrockCheck, 2, 2);
          if ItemState[ARow]<>csUnchecked then DrawCheckMark;
        finally
          Brush.Color := OldColor;
          Pen.Color := OldPenColor;
        end;
      end;
     inc(ARect.left, ARect.bottom-ARect.top);
     if Items.Count>0 then
      begin
        pText := StrAlloc(Length(Items[ARow])+1);
        try
          StrPCopy(pText, Items[ARow]);
          OldColor := Font.Color;
          if (not Enabled) or (not ItemEnabled[ARow]) then
             Font.Color := clBtnShadow;
          try
            if (Assigned(fOnDraw)) then
              begin
                State := [];
                if (gdSelected in AState) then
                 State := State + [odSelected];
                if (gdFocused in AState) then
                 State := State + [odFocused];
                fOnDraw(Self, ARow, ARect, State)
              end
            else
              DrawText(Handle, pText, Length(Items[ARow]), ARect, DT_SINGLELINE or DT_VCENTER or DT_LEFT);
          finally
            Font.Color := OldColor;
          end;
        finally
          StrDispose(pText);
        end;
      end;
     if Focused and ((ItemIndex=ARow) or ((ItemIndex=-1) and (ARow=0))) then
      begin
        dec(ARect.left, ARect.bottom-ARect.top);
        FFocusRect := ARect;
        if FShowFocusRect then DrawFocusRect(FFocusRect);
      end;
   end;
end;

Procedure TAdrockCheckListBox.SelectAll;
var
 Pos : integer;
begin
  for Pos := 0 to items.Count-1 do
    ItemState[Pos] := csChecked;
end;

Procedure TAdrockCheckListBox.SelectNone;
var
 Pos : integer;
begin
  for Pos := 0 to items.Count-1 do
    ItemState[Pos] := csUnchecked;
end;

Function TAdrockCheckListBox.CheckedCount: Integer;
var
 Pos : integer;
begin
 result := 0;
  for Pos := 0 to items.Count-1 do
    if (ItemState[Pos] = csChecked) then
      Inc(Result);
end;


end.
