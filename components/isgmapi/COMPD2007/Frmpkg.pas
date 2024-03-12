unit Frmpkg;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs,
{$IFDEF VER185}
  DesignEditors, DesignIntf,
{$ELSE}
  DsgnIntf,
{$ENDIF}
  StdCtrls, ExtCtrls, Buttons, ISGMapi;

type

  TFormPackageEditor = class(TComponentEditor)
  public
    procedure Edit; override;
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerbCount: Integer; override;
    function GetVerb(Index: Integer): String; override;
  end;

  TFormControlListEditor = class(TPropertyEditor)
  public
    function GetValue:String; override;
    function GetAttributes:TPropertyAttributes; override;
    procedure Edit; override;
  end;

  TPackageVisible = (pvAddress, pvForward, pvReply, pvInfo);

  TPackageVisibleSet = set of TPackageVisible;

  TPackageOption = (poDisplayErrors);

  TPackageOptionSet = set of TPackageOption;

  TPkgCmdType = (pctCreate, pctRead, pctReply, pctReplyAll, pctForward);

  TSendQueryEvent = procedure(Sender:TObject;var CanSend:Boolean) of object;
  TPackageSetupEvent = procedure(Sender:TObject;CmdType:TPkgCmdType) of object;

  TFormPackage = class(TCustomPanel)
  private
    { Private declarations }
    FControlList:TStringList;
    FRoutingList:TStringList;
    FVisibleItems:TPackageVisibleSet;
    FFormTypeId:String;
    FOnSendQuery:TSendQueryEvent;
    FOnSending:TNotifyEvent;
    FOnReading:TNotifyEvent;
    FOnForward:TNotifyEvent;
    FOnReply:TNotifyEvent;
    FOnSetup:TPackageSetupEvent;
    FOptions:TPackageOptionSet;
    FSubject:String;
    FCommand:Integer;
    FMessageID:String;
    FMapi:TISGMapi;
    FMapiResult:LongInt;
    cmboxAddr:TComboBox;
    pnlReceiveInfo:TPanel;
    spbtnAddress:TSpeedButton;
    spbtnSend:TSpeedButton;
    spbtnReply:TSpeedButton;
    spbtnForward:TSpeedButton;
    spbtnDelete:TSpeedButton;
  protected
    { Protected declarations }
    procedure SetView;
    procedure Resize; Override;
    procedure Loaded; Override;
    procedure SetControlList(AList:TStringList);
    procedure SetRoutingList(AList:TStringList);
    function GetRecipientsTo:TStringList;
    procedure SetRecipientsTo(AList:TStringList);
    function GetRecipientsCc:TStringList;
    procedure SetRecipientsCc(AList:TStringList);
    Procedure SetVisibleItems(ASet:TPackageVisibleSet);
    procedure UpdateAddressList;
    procedure ShowReplyMailDlg;
    procedure ReadPackageItems;
    procedure SendBtnClicked(Sender:TObject);
    procedure AddrBtnClicked(Sender:TObject);
    procedure DeleteBtnClicked(Sender:TObject);
    procedure ReplyBtnClicked(Sender:TObject);
    procedure ForwardBtnClicked(Sender:TObject);

  public
    { Public declarations }
    Procedure ShowAddressBook;
    Procedure ExecSend;
    Procedure ExecDelete;
    Procedure ExecReply;
    Procedure ExecForward;
    procedure WriteItem(itemID:String;Data:Pointer;Size:LongInt);
    function ReadItem(itemID:String;Data:Pointer;Size:LongInt):Boolean;
    procedure WriteString(itemID:String;Data:String);
    function ReadString(itemID:String):String;
    procedure WriteInteger(itemID:String;Data:Integer);
    function ReadInteger(itemID:String):Integer;
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    property MapiResult:LongInt read FMapiResult;
    property Mapi:TISGMapi read FMapi;

  published
    { Published declarations }
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BorderStyle;
    property BorderWidth;
    property ShowHint;
    property Visible;
    Property Options:TPackageOptionSet read FOptions write FOptions;
    property ControlList:TStringList read FControlList write SetControlList;
    property RoutingList:TStringList read FRoutingList write SetRoutingList;
    property VisibleItems:TPackageVisibleSet read FVisibleItems
                                             write SetVisibleItems;
    property FormTypeId:String read FFormTypeId write FFormTypeId;
    property Subject:String read FSubject write FSubject;
    property RecipientsTo:TStringList read GetRecipientsTo
                                      write SetRecipientsTo;
    property RecipientsCc:TStringList read GetRecipientsCc
                                      write SetRecipientsCc;

    property OnSendQuery:TSendQueryEvent read FOnSendQuery write FOnSendQuery;
    property OnSending:TNotifyEvent read FOnSending write FOnSending;
    property OnSetup:TPackageSetupEvent read FOnSetup write FOnSetup;
    property OnReading:TNotifyEvent read FOnReading write FOnReading;
    property OnForward:TNotifyEvent read FOnForward write FOnForward;
    property OnReply:TNotifyEvent read FOnReply write FOnReply;
  end;

procedure Register;

implementation

{$R Frmpkg.res}

uses Frmpkged, Eflib;

procedure Register;
begin
  RegisterComponentEditor(TFormPackage,TFormPackageEditor);
  RegisterPropertyEditor(TypeInfo(TStringList),TFormPackage,'ControlList',
    TFormControlListEditor);
  RegisterComponents('ISG', [TFormPackage]);
end;

procedure TFormPackageEditor.Edit;
Var
  i:integer;
  tStr:String;
begin
  frmPackEdit:=TfrmPackEdit.Create(Application.MainForm);
  for i:=0 to Component.Owner.ComponentCount-1 do
  begin
    tStr:=Component.Owner.Components[i].ClassName;
    if (tStr='TEdit') or (tStr='TMaskEdit') or (tStr='TRadioButton') or
       (tStr='TRadioGroup') or (tStr='TCheckBox') or (tStr='TMemo') or
       (tStr='TListBox') or (tStr='TStringGrid') or (tStr='TComboBox') then
      frmPackEdit.lbControls.Items.Add(Component.Owner.Components[i].Name);
  end;

  {Setup Form}
  for i:=0 to frmPackEdit.lbControls.Items.Count-1 do
    if TFormPackage(Component).FControlList.
         IndexOf(frmPackEdit.lbControls.Items[i])>-1 then
      frmPackEdit.lbControls.Selected[i]:=True;
  frmPackEdit.chboxAddr.Checked:=
    (pvAddress in TFormPackage(Component).FVisibleItems);
  frmPackEdit.chboxForward.Checked:=
    (pvForward in TFormPackage(Component).FVisibleItems);
  frmPackEdit.chboxReply.Checked:=
    (pvReply in TFormPackage(Component).FVisibleItems);
  frmPackEdit.chboxInfo.Checked:=
    (pvInfo in TFormPackage(Component).FVisibleItems);
  frmPackEdit.edFormType.Text:=TFormPackage(Component).FFormTypeId;
  if frmPackEdit.ShowModal=idOk then
  begin
    {Update Properties}
    TFormPackage(Component).FControlList.Clear;
    for i:=0 to frmPackEdit.lbControls.Items.Count-1 do
      if frmPackEdit.lbControls.Selected[i] then
        TFormPackage(Component).FControlList.Add(
          frmPackEdit.lbControls.Items[i]);
    TFormPackage(Component).FVisibleItems:=[];
    if frmPackEdit.chboxAddr.Checked then
      TFormPackage(Component).FVisibleItems:=
        TFormPackage(Component).FVisibleItems + [pvAddress];
    if frmPackEdit.chboxForward.Checked then
      TFormPackage(Component).FVisibleItems:=
        TFormPackage(Component).FVisibleItems + [pvForward];
    if frmPackEdit.chboxReply.Checked then
      TFormPackage(Component).FVisibleItems:=
        TFormPackage(Component).FVisibleItems + [pvReply];
    if frmPackEdit.chboxInfo.Checked then
      TFormPackage(Component).FVisibleItems:=
        TFormPackage(Component).FVisibleItems + [pvInfo];
    TFormPackage(Component).FFormTypeID:=frmPackEdit.edFormType.Text;
    Designer.Modified;
  end;
  frmPackEdit.Free;
end;

procedure TFormPackageEditor.ExecuteVerb(Index: Integer);
begin
  if Index=0 then
    Edit;
end;

function TFormPackageEditor.GetVerbCount: Integer;
begin
  Result:=1;
end;

function TFormPackageEditor.GetVerb(Index: Integer): String;
begin
  if Index=0 then
    Result:='&Select Controls ...';
end;

{TFormControlListEditor Implementation}

function TFormControlListEditor.GetValue:String;
Var
  i:integer;
  tStr:String;
  Cmp:TFormPackage;
begin
  tStr:='';
  Cmp:=TFormPackage(GetComponent(0));
  for i:=0 to Cmp.FControlList.Count-1 do
  begin
    tStr:=tStr+Cmp.FControlList[i];
    if i<Cmp.FControlList.Count-1 then
      tStr:=tStr+';';
  end;
  Result:=tStr;
end;

function TFormControlListEditor.GetAttributes:TPropertyAttributes;
begin
  Result:=[paDialog];
end;

procedure TFormControlListEditor.Edit;
Var
  i:integer;
  tStr:String;
  Cmp:TFormPackage;
begin
  Cmp:=TFormPackage(GetComponent(0));
  frmPackEdit:=TfrmPackEdit.Create(Application.MainForm);
  for i:=0 to Cmp.Owner.ComponentCount-1 do
  begin
    tStr:=Cmp.Owner.Components[i].ClassName;
    if (tStr='TEdit') or (tStr='TMaskEdit') or (tStr='TRadioButton') or
       (tStr='TRadioGroup') or (tStr='TCheckBox') or (tStr='TMemo') or
       (tStr='TListBox') or (tStr='TStringGrid') or (tStr='TComboBox') then
      frmPackEdit.lbControls.Items.Add(Cmp.Owner.Components[i].Name);
  end;

  {Setup Form}
  for i:=0 to frmPackEdit.lbControls.Items.Count-1 do
    if TFormPackage(GetComponent(0)).FControlList.
         IndexOf(frmPackEdit.lbControls.Items[i])>-1 then
      frmPackEdit.lbControls.Selected[i]:=True;
  frmPackEdit.grpVisible.Visible:=False;
  frmPackEdit.edFormType.Visible:=False;
  frmPackEdit.lblFormType.Visible:=False;
  if frmPackEdit.ShowModal=idOk then
  begin
    {Update Properties}
    TFormPackage(GetComponent(0)).FControlList.Clear;
    for i:=0 to frmPackEdit.lbControls.Items.Count-1 do
      if frmPackEdit.lbControls.Selected[i] then
        TFormPackage(GetComponent(0)).FControlList.Add(
          frmPackEdit.lbControls.Items[i]);
    Designer.Modified;
  end;
  frmPackEdit.Free;
end;

{TFormPackage Implementation}

procedure TFormPackage.SetView;
begin
  if (pvAddress in FVisibleItems) and
     (FCommand in [0,4]) then
  begin
    cmboxAddr.Visible:=True;
    spbtnAddress.Visible:=True;
  end
  else
  begin
    cmboxAddr.Visible:=False;
    spbtnAddress.Visible:=False;
  end;
  if FCommand in [0,4] then
    spbtnSend.Visible:=True
  else
    spbtnSend.Visible:=False;
  if (FCommand in [1,2,3]) and
     (pvForward in FVisibleItems) then
    spbtnForward.Visible:=True
  else
    spbtnForward.Visible:=False;
  if (FCommand in [1,2,3]) and
     (pvReply in FVisibleItems) then
    spbtnReply.Visible:=True
  else
    spbtnReply.Visible:=False;
  if (FCommand in [1,2,3]) then
    spbtnDelete.Visible:=True
  else
    spbtnDelete.Visible:=False;
  if (FCommand in [1,2,3]) and
     (pvInfo in FVisibleItems) then
    pnlReceiveInfo.Visible:=True
  else
    pnlReceiveInfo.Visible:=False;
  Resize;
end;

procedure TFormPackage.Resize;
Var
  nNewTop:Integer;
  newLeft:Integer;
begin
  inherited Resize;
  cmboxAddr.Top:=(Height-cmboxAddr.Height) div 2;
  if pnlReceiveInfo<>nil then
    pnlReceiveInfo.Top:=(Height-pnlReceiveInfo.Height) div 2;
  nNewTop:=(Height-25) div 2;
  spbtnAddress.Top:=nNewTop;
  spbtnSend.Top:=nNewTop;
  if spbtnReply<>nil then
  begin
    spbtnReply.Top:=nNewTop;
    spbtnForward.Top:=nNewTop;
    spbtnDelete.Top:=nNewTop;
  end;
  if pvAddress in FVisibleItems then
    spbtnSend.Left:=208
  else
    spbtnSend.Left:=8;
  if spbtnReply<>nil then
  begin
    newLeft:=8;
    if pvInfo in FVisibleItems then
      newLeft:=256;
    spbtnDelete.Left:=newLeft;
    newLeft:=newLeft+40;
    spbtnReply.Left:=newLeft;
    if pvReply in FVisibleItems then
      newLeft:=newLeft+40;
    spbtnForward.Left:=newLeft;
  end;
end;

procedure TFormPackage.Loaded;
begin

  if (csDesigning in ComponentState) then
  begin
    Resize;
    Exit;
  end;

  FMapiResult:=0;
  FMapi.Logon;
  FMapiResult:=FMapi.Result;
  if not FMapi.Connected then
  begin
    Application.Terminate;
    Exit;
  end;

  SetView;
  UpdateAddressList;

  if Assigned(FOnSetup) then
  case FCommand of
    0 : FOnSetup(Self,pctCreate);
    1 : FOnSetup(Self,pctRead);
    2 : FOnSetup(Self,pctReply);
    3 : FOnSetup(Self,pctReplyAll);
    4 : FOnSetup(Self,pctForward);
  end;

  Case FCommand of
    1 : ReadPackageItems;
    2,3 :
        begin
          ReadPackageItems;
          ShowReplyMailDlg;
        end;
    4 : ReadPackageItems;
  end;
end;

procedure TFormPackage.SetControlList(AList:TStringList);
begin
  FControlList.Clear;
  FControlList.AddStrings(AList);
end;

procedure TFormPackage.SetRoutingList(AList:TStringList);
begin
  FRoutingList.Clear;
  FRoutingList.AddStrings(AList);
end;

function TFormPackage.GetRecipientsTo:TStringList;
begin
  Result:=FMapi.RecipientsTo;
end;

procedure TFormPackage.SetRecipientsTo(AList:TStringList);
begin
  FMapi.RecipientsTo.Clear;
  FMapi.RecipientsTo.AddStrings(AList);
  UpdateAddressList;
end;

function TFormPackage.GetRecipientsCc:TStringList;
begin
  Result:=FMapi.RecipientsCc;
end;

procedure TFormPackage.SetRecipientsCc(AList:TStringList);
begin
  FMapi.RecipientsCc.Clear;
  FMapi.RecipientsCc.AddStrings(AList);
  UpdateAddressList;
end;

Procedure TFormPackage.SetVisibleItems(ASet:TPackageVisibleSet);
begin
  FVisibleItems:=ASet;
  if not (csDesigning in ComponentState) then
    SetView;
end;

procedure TFormPackage.UpdateAddressList;
Var
  i:integer;
begin
  cmboxAddr.Clear;
  for i:=0 to FMapi.RecipientsTo.Count-1 do
    cmboxAddr.Items.Add('To: '+MapiName(FMapi.RecipientsTo[i]));
  for i:=0 to FMapi.RecipientsCC.Count-1 do
    cmboxAddr.Items.Add('Cc: '+MapiName(FMapi.RecipientsCC[i]));
  cmboxAddr.ItemIndex:=0;
end;

procedure TFormPackage.ShowReplyMailDlg;
begin
  with FMapi do
  begin
    Options:=[mfShowUI,mfDialog];
    MessageType:='';
    MessageId:='';
    if FCommand=2 then
    begin
      RecipientsTo.Clear;
      RecipientsCc.Clear;
    end;
    RecipientsTo.Insert(0,Originator);
    Subject:='Re: '+Subject;
    NoteText.Clear;
    Attachments.Clear;
    SendMail;
    Options:=[mfShowUI];
  end;
end;

procedure TFormPackage.ReadPackageItems;
Var
  i:integer;
  Size:LongInt;
  Buf:PChar;
begin
  FMapi.MessageID:=FMessageId;
  FMapi.ReadMail;
  FMapiResult:=FMapi.Result;
  if FMapi.Result=SUCCESS_SUCCESS then
  begin
    pnlReceiveInfo.Caption:='From: '+MapiName(FMapi.Originator)+' '+
      DateTimeToStr(FMapi.DateTimeReceived);
    EFOpenPackage(StrPas(FMapi.Msg^.Files^.PathName));

    if (Owner.ComponentCount>0) then
      for i:=0 to Owner.ComponentCount-1 do
        if FControlList.IndexOf(Owner.Components[i].Name)>-1 then
          EFReadControl(Owner.Components[i]);

    if (EFReadItem('C-Routing',@Size,0)=0) and (Size>0) then
    begin
      Buf:=StrAlloc(Size);
      EFReadItem('C-Routing',Buf,Size);
      FRoutingList.Text:=Buf;
      StrDispose(Buf);
    end
    else
      FRoutingList.Clear;

    if Assigned(FOnReading) then
      FOnReading(Self);

    EFFreePackage;
    if not DeleteFile(FMapi.Msg^.Files^.PathName) then
      ShowMessage('Unable to Delete Temporary file: '+
        StrPas(FMapi.Msg^.Files^.PathName));
    FMapi.FreeMsgMem;
  end
  else if poDisplayErrors in FOptions then
    MessageDlg('Unable to read form information.'+#13#10+
      'Mail message may be corrupt ('+FMapi.ErrorString(FMapi.Result)+').',
      mtError,[mbOk],0);
end;

procedure TFormPackage.SendBtnClicked(Sender:TObject);
Var
  i:integer;
  CanSend:Boolean;
begin
  CanSend:=(FMapi.RecipientsTo.Count>0);
  if (not CanSend) and (poDisplayErrors in FOptions) then
    MessageDlg('No Recipients have been specified.',mtError,[mbOk],0);

  if CanSend and Assigned(FOnSendQuery) then
    FOnSendQuery(Self,CanSend);

  if not CanSend then exit;

  FMapi.MessageType:=FFormTypeId;
  FMapi.Subject:=FSubject;
  FMapi.NoteText.Clear;
  FMapi.NoteText.Add('EForm support must be installed before you '+
    'can read this form.');

  FMapi.Attachments.Clear;
  FMapi.Attachments.Add('EFPACK.DAT');
  EFCreatePackage;

  if Assigned(FOnSending) then
    FOnSending(Self);

  if (Owner.ComponentCount>0) then
    for i:=0 to Owner.ComponentCount-1 do
      if FControlList.IndexOf(Owner.Components[i].Name)>-1 then
        EFWriteControl(Owner.Components[i]);

  if FRoutingList.Count>0 then
    EFWriteItem('C-Routing',PChar(FRoutingList.Text),
      StrLen(PChar(FRoutingList.Text))+1);

  EFSavePackage('EFPACK.DAT');
  FMapi.SendMail;
  FMapiResult:=FMapi.Result;

  EFFreePackage;
  DeleteFile('EFPACK.DAT');
  if FMapiResult=SUCCESS_SUCCESS then
    Application.Terminate
  else if poDisplayErrors in FOptions then
    MessageDlg('Unable to send form information. '+
      'Mail error: '+FMapi.ErrorString(FMapiResult)+' occured.',mtError,
      [mbOk],0);
end;

procedure TFormPackage.AddrBtnClicked(Sender:TObject);
begin
  FMapi.Address;
  FMapiResult:=FMapi.Result;
  UpdateAddressList;
end;

procedure TFormPackage.DeleteBtnClicked(Sender:TObject);
begin
  FMapi.MessageID:=FMessageID;
  FMapi.DeleteMail;
  Application.Terminate;
end;

procedure TFormPackage.ReplyBtnClicked(Sender:TObject);
begin
  if Assigned(FOnReply) then
    FOnReply(Self);
  FCommand:=2;
  ShowReplyMailDlg;
end;

procedure TFormPackage.ForwardBtnClicked(Sender:TObject);
begin
  FCommand:=4;
  RecipientsTo.Clear;
  RecipientsCc.Clear;
  if RoutingList.Count>0 then
  begin
    RecipientsTo.Add(RoutingList[0]);
    RoutingList.Delete(0);
    UpdateAddressList;
  end;
  SetView;
  if Assigned(FOnForward) then
    FOnForward(Self);
end;

Procedure TFormPackage.ShowAddressBook;
Begin
  FMapi.Address;
  FMapiResult:=FMapi.Result;
  UpdateAddressList;
end;

Procedure TFormPackage.ExecSend;
begin
  SendBtnClicked(Self);
end;

Procedure TFormPackage.ExecDelete;
begin
  DeleteBtnClicked(Self);
end;

Procedure TFormPackage.ExecReply;
begin
  ReplyBtnClicked(Self);
end;

Procedure TFormPackage.ExecForward;
begin
  ForwardBtnClicked(Self);
end;

procedure TFormPackage.WriteItem(itemID:String;Data:Pointer;Size:LongInt);
begin
  EFWriteItem(itemID,Data,Size);
end;

function TFormPackage.ReadItem(itemID:String;Data:Pointer;Size:LongInt):Boolean;
begin
  Result:=(EFReadItem(itemID,Data,Size)=0);
end;

procedure TFormPackage.WriteString(itemID:String;Data:String);
Var
  lData:PChar;
  lSize:Integer;
begin
  lSize:=Length(Data)+1;
  GetMem(lData,lSize);
  StrPCopy(lData,Data);
  EFWriteItem(itemID,lData,lSize);
  FreeMem(lData,lSize);
end;

function TFormPackage.ReadString(itemID:String):String;
Var
  Buffer:PChar;
  Size:LongInt;
begin
  EFReadItem(ItemId,Pointer(@Size),0);
  GetMem(Buffer, Size);
  EFReadItem(ItemId,Buffer, Size);
  Result:=StrPas(Buffer);
  FreeMem(Buffer,Size);
end;

procedure TFormPackage.WriteInteger(itemID:String;Data:Integer);
begin
  EFWriteItem(itemID,@Data,sizeof(Data));
end;

function TFormPackage.ReadInteger(itemID:String):Integer;
var
  temp:Integer;
begin
  EFReadItem(itemID,@temp,sizeof(temp));
  Result:=temp;
end;

constructor TFormPackage.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  FControlList:=TStringList.Create;
  FRoutingList:=TStringList.Create;
  FMapi:=TISGMapi.Create(Self);
  FVisibleItems:=[pvAddress, pvReply, pvForward, pvInfo];
  Height:=33;
  Align:=alTop;
  Font.Name:='MS Sans Serif';
  Font.Size:=8;
  Caption:=' ';

  {Create Children Controls}
  cmboxAddr:=TComboBox.Create(Self);
  cmboxAddr.Parent:=Self;
  cmboxAddr.Hint:='Recipients';
  cmboxAddr.Height:=20;
  cmboxAddr.Left:=8;
  cmboxAddr.Top:=6;
  cmboxAddr.Visible:=True;

  spbtnAddress:=TSpeedButton.Create(Self);
  spbtnAddress.Parent:=Self;
  spbtnAddress.OnClick:=AddrBtnClicked;
  spbtnAddress.Glyph.Handle:=LoadBitmap(HInstance,'ADDRESS_BMP');
  spbtnAddress.NumGlyphs:=1;
  spbtnAddress.Hint:='Display Address Book';
  spbtnAddress.Left:=160;
  spbtnAddress.Top:=4;
  spbtnAddress.Width:=35;
  spbtnAddress.Height:=25;
  spbtnAddress.Visible:=True;

  spbtnSend:=TSpeedButton.Create(Self);
  spbtnSend.Parent:=Self;
  spbtnSend.OnClick:=SendBtnClicked;
  spbtnSend.Glyph.Handle:=LoadBitmap(HInstance,'SEND_BMP');
  spbtnSend.NumGlyphs:=1;
  spbtnSend.Hint:='Send E-Form';
  spbtnSend.Left:=208;
  spbtnSend.Top:=4;
  spbtnSend.Width:=40;
  spbtnSend.Height:=25;
  spbtnSend.Visible:=True;

  if not (csDesigning in ComponentState) then
  begin
    pnlReceiveInfo:=TPanel.Create(Self);
    pnlReceiveInfo.Parent:=Self;
    pnlReceiveInfo.Hint:='Origination Information';
    pnlReceiveInfo.Caption:=' ';
    pnlReceiveInfo.Left:=8;
    pnlReceiveInfo.Height:=17;
    pnlReceiveInfo.Top:=8;
    pnlReceiveInfo.Width:=241;
    pnlReceiveInfo.Alignment:=taLeftJustify;
    pnlReceiveInfo.BevelOuter:=bvLowered;
    pnlReceiveInfo.BorderWidth:=4;
    pnlReceiveInfo.Visible:=False;

    spbtnDelete:=TSpeedButton.Create(Self);
    spbtnDelete.Parent:=Self;
    spbtnDelete.OnClick:=DeleteBtnClicked;
    spbtnDelete.Glyph.Handle:=LoadBitmap(HInstance,'DELETE_BMP');
    spbtnDelete.NumGlyphs:=1;
    spbtnDelete.Hint:='Delete E-Form';
    spbtnDelete.Left:=256;
    spbtnDelete.Top:=4;
    spbtnDelete.Width:=35;
    spbtnDelete.Height:=25;
    spbtnDelete.Visible:=False;

    spbtnReply:=TSpeedButton.Create(Self);
    spbtnReply.Parent:=Self;
    spbtnReply.OnClick:=ReplyBtnClicked;
    spbtnReply.Glyph.Handle:=LoadBitmap(HInstance,'REPLY_BMP');
    spbtnReply.NumGlyphs:=1;
    spbtnReply.Hint:='Reply with E-Mail';
    spbtnReply.Left:=296;
    spbtnReply.Top:=4;
    spbtnReply.Width:=35;
    spbtnReply.Height:=25;
    spbtnReply.Visible:=False;

    spbtnForward:=TSpeedButton.Create(Self);
    spbtnForward.Parent:=Self;
    spbtnForward.OnClick:=ForwardBtnClicked;
    spbtnForward.Glyph.Handle:=LoadBitmap(HInstance,'FORWARD_BMP');
    spbtnForward.NumGlyphs:=1;
    spbtnForward.Hint:='Forward E-Form';
    spbtnForward.Left:=336;
    spbtnForward.Top:=4;
    spbtnForward.Width:=35;
    spbtnForward.Height:=25;
    spbtnForward.Visible:=False;

    if ParamCount>0 then
    begin
      FCommand:=StrToInt(ParamStr(2));
      FMessageID:=ParamStr(3);
    end
    else
      FCommand:=0;

  end;

end;

destructor TFormPackage.Destroy;
begin
  FControlList.Free;
  FRoutingList.Free;
  if FMapi<>nil then
    FMapi.Free;

  {Destroy Children Controls}
  cmboxAddr.Free;
  spbtnAddress.Free;
  spbtnSend.Free;
  if spbtnReply<>nil then
  begin
    pnlReceiveInfo.Free;
    spbtnReply.Free;
    spbtnForward.Free;
    spbtnDelete.Free;
  end;

  inherited Destroy;
end;

end.
