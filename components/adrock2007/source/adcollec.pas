unit adcollec;

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

{$R-}

interface

uses SysUtils, WinTypes, WinProcs, classes;

type
  TAdrockCollection = class;

  { TAdrockPersistent abstract class }

{$M+}

  TAdrockPersistent = class(TObject)
  private
    procedure AssignError(Source: TAdrockPersistent);
  protected
    procedure AssignTo(Dest: TAdrockPersistent); virtual;
    procedure DefineProperties(Filer: TFiler); virtual;
    function  GetOwner: TAdrockPersistent; dynamic;
  public
    destructor Destroy; override;
    procedure Assign(Source: TAdrockPersistent); virtual;
    function  GetNamePath: string; dynamic;
  end;

{$M-}

{ TAdrockPersistent class reference type }

  TAdrockPersistentClass = class of TAdrockPersistent;

  TAdrockCollectionItem = class(TAdrockPersistent)
  private
    FCollection: TAdrockCollection;
    FID: Integer;
    function GetIndex: Integer;
    procedure SeTAdrockCollection(Value: TAdrockCollection);
  protected
    procedure Changed(AllItems: Boolean);
    function GetOwner: TAdrockPersistent; override;
    function GetDisplayName: string; virtual;
    procedure SetIndex(Value: Integer); virtual;
    procedure SetDisplayName(const Value: string); virtual;
  public
    constructor Create(Collection: TAdrockCollection); virtual;
    destructor Destroy; override;
    property Collection: TAdrockCollection read FCollection write SeTAdrockCollection;
    function GetNamePath: string; override;
    property ID: Integer read FID;
    property Index: Integer read GetIndex write SetIndex;
    property DisplayName: string read GetDisplayName write SetDisplayName;
  end;

  TAdrockCollectionItemClass = class of TAdrockCollectionItem;

  TAdrockCollection = class(TAdrockPersistent)
  private
    FItemClass: TAdrockCollectionItemClass;
    FItems: TList;
    FUpdateCount: Integer;
    FNextID: Integer;
    FPropName: string;
    function GetCount: Integer;
    function GetPropName: string;
    procedure InsertItem(Item: TAdrockCollectionItem);
    procedure RemoveItem(Item: TAdrockCollectionItem);
  protected
    { Design-time editor support }
    function GetAttrCount: Integer; dynamic;
    function GetAttr(Index: Integer): string; dynamic;
    function GetItemAttr(Index, ItemIndex: Integer): string; dynamic;
    procedure Changed;
    function GetItem(Index: Integer): TAdrockCollectionItem;
    procedure SetItem(Index: Integer; Value: TAdrockCollectionItem);
    procedure SetItemName(Item: TAdrockCollectionItem); virtual;
    procedure Update(Item: TAdrockCollectionItem); virtual;
    property PropName: string read GetPropName write FPropName;
  public
    constructor Create(ItemClass: TAdrockCollectionItemClass);
    destructor Destroy; override;
    function GetNamePath: string; override;
    function Add: TAdrockCollectionItem;
    procedure Assign(Source: TAdrockPersistent); override;
    procedure BeginUpdate;
    procedure Clear;
    procedure EndUpdate;
    function FindItemID(ID: Integer): TAdrockCollectionItem;
    property Count: Integer read GetCount;
    property ItemClass: TAdrockCollectionItemClass read FItemClass;
    property Items[Index: Integer]: TAdrockCollectionItem read GetItem write SetItem;
  end;

implementation

uses Consts, TypInfo;

{ TAdrockPersistent }

destructor TAdrockPersistent.Destroy;
begin
  {$ifdef win32}
{  RemoveFixups(Self);}
  {$endif}
  inherited Destroy;
end;

procedure TAdrockPersistent.Assign(Source: TAdrockPersistent);
begin
  if Source <> nil then Source.AssignTo(Self) else AssignError(nil);
end;

procedure TAdrockPersistent.AssignError(Source: TAdrockPersistent);
var
  SourceName: string;
begin
  if Source <> nil then
    SourceName := Source.ClassName else
    SourceName := 'nil';
  raise EConvertError.CreateFmt('AssignError', [SourceName, ClassName]);
end;

procedure TAdrockPersistent.AssignTo(Dest: TAdrockPersistent);
begin
  Dest.AssignError(Self);
end;

procedure TAdrockPersistent.DefineProperties(Filer: TFiler);
begin
end;

function TAdrockPersistent.GetNamePath: string;
var
  S: string;
begin
  Result := ClassName;
  if (GetOwner <> nil) then
  begin
    S := GetOwner.GetNamePath;
    if S <> '' then
      Result := S + '.' + Result;
  end;
end;

function TAdrockPersistent.GetOwner: TAdrockPersistent;
begin
  Result := nil;
end;

{ TCollectionItem }

constructor TAdrockCollectionItem.Create(Collection: TAdrockCollection);
begin
  SeTAdrockCollection(Collection);
end;

destructor TAdrockCollectionItem.Destroy;
begin
  SeTAdrockCollection(nil);
  inherited Destroy;
end;

procedure TAdrockCollectionItem.Changed(AllItems: Boolean);
var
  Item: TAdrockCollectionItem;
begin
  if (FCollection <> nil) and (FCollection.FUpdateCount = 0) then
  begin
    if AllItems then Item := nil else Item := Self;
    FCollection.Update(Item);
  end;
end;

function TAdrockCollectionItem.GetIndex: Integer;
begin
  if FCollection <> nil then
    Result := FCollection.FItems.IndexOf(Self) else
    Result := -1;
end;

function TAdrockCollectionItem.GetDisplayName: string;
begin
  Result := ClassName;
end;

function TAdrockCollectionItem.GetNamePath: string;
begin
  if FCollection <> nil then
    Result := Format('%s[%d]',[FCollection.GetNamePath, Index])
  else
    Result := ClassName;
end;

function TAdrockCollectionItem.GetOwner: TAdrockPersistent;
begin
  Result := FCollection;
end;

procedure TAdrockCollectionItem.SeTAdrockCollection(Value: TAdrockCollection);
begin
  if FCollection <> Value then
  begin
    if FCollection <> nil then FCollection.RemoveItem(Self);
    if Value <> nil then Value.InsertItem(Self);
  end;
end;

procedure TAdrockCollectionItem.SetDisplayName(const Value: string);
begin
  Changed(False);
end;

procedure TAdrockCollectionItem.SetIndex(Value: Integer);
var
  CurIndex: Integer;
begin
  CurIndex := GetIndex;
  if (CurIndex >= 0) and (CurIndex <> Value) then
  begin
    FCollection.FItems.Move(CurIndex, Value);
    Changed(True);
  end;
end;

{ TAdrockCollection }

constructor TAdrockCollection.Create(ItemClass: TAdrockCollectionItemClass);
begin
  FItemClass := ItemClass;
  FItems := TList.Create;
end;

destructor TAdrockCollection.Destroy;
begin
  FUpdateCount := 1;
  if FItems <> nil then Clear;
  FItems.Free;
  inherited Destroy;
end;

function TAdrockCollection.Add: TAdrockCollectionItem;
begin
  Result := FItemClass.Create(Self);
end;

procedure TAdrockCollection.Assign(Source: TAdrockPersistent);
var
  I: Integer;
begin
  if Source is TAdrockCollection then
  begin
    BeginUpdate;
    try
      Clear;
      for I := 0 to TAdrockCollection(Source).Count - 1 do
        Add.Assign(TAdrockCollection(Source).Items[I]);
    finally
      EndUpdate;
    end;
    Exit;
  end;
  inherited Assign(Source);
end;

procedure TAdrockCollection.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TAdrockCollection.Changed;
begin
  if FUpdateCount = 0 then Update(nil);
end;

procedure TAdrockCollection.Clear;
begin
  if FItems.Count > 0 then
  begin
    BeginUpdate;
    try
      while FItems.Count > 0 do TAdrockCollectionItem(FItems.Last).Free;
    finally
      EndUpdate;
    end;
  end;
end;

procedure TAdrockCollection.EndUpdate;
begin
  Dec(FUpdateCount);
  Changed;
end;

function TAdrockCollection.FindItemID(ID: Integer): TAdrockCollectionItem;
var
  I: Integer;
begin
  for I := 0 to FItems.Count-1 do
  begin
    Result := TAdrockCollectionItem(FItems[I]);
    if Result.ID = ID then Exit;
  end;
  Result := nil;
end;

function TAdrockCollection.GetAttrCount: Integer;
begin
  Result := 0;
end;

function TAdrockCollection.GetAttr(Index: Integer): string;
begin
  Result := '';
end;

function TAdrockCollection.GetItemAttr(Index, ItemIndex: Integer): string;
begin
  Result := Items[ItemIndex].DisplayName;
end;

function TAdrockCollection.GetCount: Integer;
begin
  Result := FItems.Count;
end;

function TAdrockCollection.GetItem(Index: Integer): TAdrockCollectionItem;
begin
  Result := FItems[Index];
end;

function TAdrockCollection.GetNamePath: string;
var
  S, P: string;
begin
  Result := ClassName;
  if GetOwner = nil then Exit;
  S := GetOwner.GetNamePath;
  if S = '' then Exit;
  P := PropName;
  if P = '' then Exit;
  Result := S + '.' + P;
end;

function TAdrockCollection.GetPropName: string;
var
  I: Integer;
  Props: PPropList;
  TypeData: PTypeData;
  Owner: TAdrockPersistent;
begin
  Result := FPropName;
  Owner := GetOwner;
  if (Result <> '') or (Owner = nil) or (Owner.ClassInfo = nil) then Exit;
  TypeData := GetTypeData(Owner.ClassInfo);
  if (TypeData = nil) or (TypeData^.PropCount = 0) then Exit;
  GetMem(Props, TypeData^.PropCount * sizeof(Pointer));
  try
    GetPropInfos(Owner.ClassInfo, Props);
    for I := 0 to TypeData^.PropCount-1 do
    begin
      with Props^[I]^ do
        if (PropType^.Kind = tkClass) and
          (GetOrdProp(Owner, Props^[I]) = Integer(Self)) then
          FPropName := Name;
    end;
  finally
    {$ifdef Win32}
    Freemem(Props);
    {$else}
    Freemem(Props, TypeData^.PropCount * sizeof(Pointer));
    {$endif}
  end;
  Result := FPropName;
end;

procedure TAdrockCollection.InsertItem(Item: TAdrockCollectionItem);
begin
{  if not (Item is FItemClass) then TList.Error(SInvalidProperty, 0);}
  if not (Item is FItemClass) then
   begin
      raise EListError.CreateFmt('Invalid Property', [0]);
{    TList.Error(SInvalidProperty, 0);}
   end;
  FItems.Add(Item);
  Item.FCollection := Self;
  Item.FID := FNextID;
  Inc(FNextID);
  SetItemName(Item);
  Changed;
end;

procedure TAdrockCollection.RemoveItem(Item: TAdrockCollectionItem);
begin
  FItems.Remove(Item);
  Item.FCollection := nil;
  Changed;
end;

procedure TAdrockCollection.SetItem(Index: Integer; Value: TAdrockCollectionItem);
begin
  TAdrockCollectionItem(FItems[Index]).Assign(Value);
end;

procedure TAdrockCollection.SetItemName(Item: TAdrockCollectionItem);
begin
end;

procedure TAdrockCollection.Update(Item: TAdrockCollectionItem);
begin
end;

end.
