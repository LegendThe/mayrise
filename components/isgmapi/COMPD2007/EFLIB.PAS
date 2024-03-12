unit Eflib;

interface

Uses Classes;

{**************************************
 *          EF LIBRARY FUNCTIONS      *
 **************************************}

function EFCreatePackage:Integer;

function EFOpenPackage(PackageFile:String):Integer;

function EFSavePackage(PackageFile:String):Integer;

function EFFreePackage:Integer;

function EFWriteItem(itemID:String;Data:Pointer;Size:LongInt):Integer;

function EFReadItem(itemID:String;Data:Pointer;Size:LongInt):Integer;

function EFWriteControl(Control:TComponent):Integer;

function EFReadControl(Control:TComponent):Integer;

implementation

Uses
  StdCtrls, ExtCtrls, SysUtils, Mask, Grids, ISGMapi;

Type
  TItem = class
    ItemID:String;
    Item:PChar;
    Size:LongInt;
    Constructor Create(sItemID:String;sItem:PChar;sSize:LongInt);
    Destructor Destroy; Override;
  end;

Var
  lstPack:TList;

function EFCreatePackage:Integer;
begin
  EFCreatePackage:=0;
  lstPack:=TList.Create;
end;

function EFOpenPackage(PackageFile:String):Integer;
Var
  Item:TItem;
  hFile:TextFile;
  ItemStr,SizeStr:String;
  SingleData:Char;
  Data:PChar;
  i,size:LongInt;
begin
  Result:=0;
  if lstPack=nil then
    lstPack:=TList.Create;
  AssignFile(hFile,PackageFile);
  Reset(hFile);
  while not Eof(hFile) do
  begin
    ReadLn(hFile,ItemStr);
    ReadLn(hFile,SizeStr);
    Size:=StrToInt(SizeStr);
    if Size>0 then
    begin
      GetMem(Data,Size);
      for i:=0 to Size-1 do
      begin
        Read(hFile,SingleData);
        (Data+i)^:=SingleData;
      end;
      ReadLn(hFile);

      Item:=TItem.Create(ItemStr,Data,Size);
      lstPack.Add(Item);
      FreeMem(Data,Size);
    end;
  end;
  CloseFile(hFile);
end;

function EFSavePackage(PackageFile:String):Integer;
Var
  i,j:integer;
  hFile:TextFile;
begin
  Result:=0;
  AssignFile(hFile,PackageFile);
  Rewrite(hFile);
  for i:=0 to lstPack.Count-1 do
  begin
    WriteLn(hFile,TItem(lstPack.Items[i]).ItemID);
    WriteLn(hFile,TItem(lstPack.Items[i]).Size);
    for j:=0 to TItem(lstPack.Items[i]).Size-1 do
      Write(hFile,Char((TItem(lstPack.Items[i]).Item+j)^));
    WriteLn(hFile);
  end;
  CloseFile(hFile);
end;

function EFFreePackage:Integer;
begin
  Result:=0;
  lstPack.Clear;
  lstPack.Free;
end;

function EFWriteItem(itemID:String;Data:Pointer;Size:LongInt):Integer;
Var
  i,Amt:integer;
  found:Boolean;
  NewItem:TItem;
begin

  i:=0;
  found:=False;
  Amt:=lstPack.Count;

  while (not found) and (i<Amt) do
  begin
    if CompareText(TItem(lstPack.Items[i]).ItemID,itemID)=0 then
    begin
      found:=True;
      lstPack.Delete(i);
      NewItem:=TItem.Create(itemID,Data,Size);
      lstPack.Add(NewItem);
    end
    else
      inc(i);
  end;
  if not found then
  begin
    NewItem:=TItem.Create(itemID,Data,Size);
    lstPack.Add(NewItem);
  end;

  EFWriteItem:=0;

end;

function EFReadItem(itemID:String;Data:Pointer;Size:LongInt):Integer;
Var
  i:integer;
  found:Boolean;
begin
  i:=0;
  found:=False;
  while (not found) and (i<lstPack.Count) do
  begin
    if CompareText(TItem(lstPack.Items[i]).ItemID,itemID)=0 then
    begin
      found:=True;
      if Size=0 then
        LongInt(Data^):=TItem(lstPack.Items[i]).Size
      else
      begin
        if Size<TItem(lstPack.Items[i]).Size then
          Move(TItem(lstPack.Items[i]).Item^,Data^,Size)
        else
          Move(TItem(lstPack.Items[i]).Item^,Data^,TItem(lstPack.Items[i]).Size);
      end;
    end
    else
      inc(i);
  end;

  if found then
    EFReadItem:=0
  else
    EFReadItem:=1;
end;

function EFWriteControl(Control:TComponent):Integer;
Var
  TempStr:array[0..255] of Char;
  IdStr:String;
  Buffer: PChar;
  Size: Integer;
  i,j,Col,Row:LongInt;
begin
  Result:=0;
  if Control is TEdit then
  begin
    StrPCopy(TempStr,TEdit(Control).Text);
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TMaskEdit then
  begin
    StrPCopy(TempStr,TMaskEdit(Control).Text);
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TRadioButton then
  begin
    if (TRadioButton(Control).Checked) then
      StrPCopy(TempStr,'1')
    else
      StrPCopy(TempStr,'0');
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TRadioGroup then
  begin
    StrPCopy(TempStr,IntToStr(TRadioGroup(Control).ItemIndex));
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TCheckBox then
  begin
    if (TCheckBox(Control).Checked) then
      StrPCopy(TempStr,'1')
    else
      StrPCopy(TempStr,'0');
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TMemo then
  begin
    Size := TMemo(Control).GetTextLen;
    Inc(Size);
    GetMem(Buffer, Size);
    TMemo(Control).GetTextBuf(Buffer,Size);
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Buffer,Size);
    FreeMem(Buffer, Size);
  end
  else
  if Control is TStringGrid then
  begin
    Col:=TStringGrid(Control).ColCount;
    Row:=TStringGrid(Control).RowCount;
    StrPCopy(TempStr,IntToStr(Row)+','+IntToStr(Col));
    IdStr:='I-'+Control.Name+'*';
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@TempStr[0]),StrLen(TempStr)+1);
    for i:=1 to Row do
      for j:=1 to Col do
      begin
        IdStr:='I-'+Control.Name+':'+IntToStr(i)+':'+IntToStr(j);
        StrPCopy(TempStr,TStringGrid(Control).Cells[j-1,i-1]);
        EFWriteControl:=EFWriteItem(IdStr,Pointer(@TempStr[0]),StrLen(TempStr)+1);
      end;
  end
  else
  if Control is TListBox then
  begin
    if TListBox(Control).ItemIndex>-1 then
      StrPCopy(TempStr,TListBox(Control).Items.Strings[TListBox(Control).ItemIndex])
    else StrPCopy(TempStr,'');
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end
  else
  if Control is TComboBox then
  begin
    StrPCopy(TempStr,IntToStr(TComboBox(Control).ItemIndex)+'|'+
      TComboBox(Control).Text);
    IdStr:='I-'+Control.Name;
    EFWriteControl:=EFWriteItem(IdStr,Pointer(@(TempStr[0])),StrLen(TempStr)+1);
  end;
end;

function EFReadControl(Control:TComponent):Integer;
Var
  Text:array[0..255] of Char;
  ItemId:String;
  TempString:string;
  Buffer:PChar;
  Size,Row,Col,i,j: LongInt;
begin
  Result:=0;
  ItemId:='I-'+Control.Name;
  if Control is TEdit then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    TEdit(Control).Text:=StrPas(Text);
  end
  else
  if Control is TMaskEdit then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    TMaskEdit(Control).Text:=StrPas(Text);
  end
  else
  if Control is TRadioButton then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    if StrPas(Text)='1' then
      TRadioButton(Control).Checked:=True
    else
      TRadioButton(Control).Checked:=False;
  end
  else
  if Control is TRadioGroup then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    TRadioGroup(Control).ItemIndex:=StrToInt(StrPas(Text));
  end
  else
  if Control is TCheckBox then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    if StrPas(Text)='1' then
      TCheckBox(Control).Checked:=True
    else
      TCheckBox(Control).Checked:=False;
  end
  else
  if Control is TMemo then
  begin
    EFReadItem(ItemId,Pointer(@Size),0);
    GetMem(Buffer, Size);
    EFReadItem(ItemId,Buffer, Size);
    TMemo(Control).SetTextBuf(Buffer);
    FreeMem(Buffer,Size);
  end
  else
  if Control is TStringGrid then
  begin
    ItemId:='I-'+Control.Name+'*';
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    TempString:=StrPas(Text);
    Row:=StrToInt(GetToken(TempString,','));
    Col:=StrToInt(TempString);
    for i:=1 to Row do
      for j:=1 to Col do
      begin
        ItemId:='I-'+Control.Name+':'+IntToStr(i)+':'+IntToStr(j);
        EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
        TStringGrid(Control).Cells[j-1,i-1]:=StrPas(Text);
      end;
  end
  else
  if Control is TListBox then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    if TListBox(Control).Items.IndexOf(StrPas(Text))>-1 then
      TListBox(Control).ItemIndex:=
        TListBox(Control).Items.IndexOf(StrPas(Text));
  end
  else
  if Control is TComboBox then
  begin
    EFReadControl:=EFReadItem(ItemId,Pointer(@(Text[0])),sizeof(Text));
    TempString:=StrPas(Text);
    Row:=StrToInt(GetToken(TempString,'|'));
    if (Row<0) then
      TComboBox(Control).Text:=TempString
    else
      TComboBox(Control).ItemIndex:=Row;
  end;
end;

Constructor TItem.Create(sItemID:String;sItem:PChar;sSize:LongInt);
begin
  Inherited Create;

  ItemID:=sItemID;
  Item:=StrNew(sItem);
  Size:=sSize;
end;

Destructor TItem.Destroy;
begin
  StrDispose(Item);

  inherited Destroy;
end;

end.
