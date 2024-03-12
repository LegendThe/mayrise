unit ISGMapi;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs;

const
  MAPI_UNREAD            = 1;
  MAPI_RECEIPT_REQUESTED = 2;
  MAPI_SENT              = 4;

  SUCCESS_SUCCESS                 = 0;
  MAPI_USER_ABORT                 = 1;
  MAPI_E_FAILURE                  = 2;
  MAPI_E_LOGIN_FAILURE            = 3;
  MAPI_E_DISK_FULL                = 4;
  MAPI_E_INSUFFICIENT_MEMORY      = 5;
  MAPI_E_BLK_TOO_SMALL            = 6;
  MAPI_E_TOO_MANY_SESSIONS        = 8;
  MAPI_E_TOO_MANY_FILES           = 9;
  MAPI_E_TOO_MANY_RECIPIENTS      = 10;
  MAPI_E_ATTACHMENT_NOT_FOUND     = 11;
  MAPI_E_ATTACHMENT_OPEN_FAILURE  = 12;
  MAPI_E_ATTACHMENT_WRITE_FAILURE = 13;
  MAPI_E_UNKNOWN_RECIPIENT        = 14;
  MAPI_E_BAD_RECIPTYPE            = 15;
  MAPI_E_NO_MESSAGE               = 16;
  MAPI_E_INVALID_MESSAGE          = 17;
  MAPI_E_TEXT_TOO_LARGE           = 18;
  MAPI_E_INVALID_SESSION          = 19;
  MAPI_E_TYPE_NOT_SUPPORTED       = 20;
  MAPI_E_AMBIGUOUS_RECIPIENT      = 21;
  MAPI_E_MESSAGE_IN_USE           = 22;
  MAPI_E_NETWORK_FAILURE          = 23;
  MAPI_E_INVALID_EDITFIELDS       = 24;
  MAPI_E_INVALID_RECIPS           = 25;
  MAPI_E_NOT_SUPPORTED            = 26;

  MAPI_LOGON_UI        = $00000001;
  MAPI_NEW_SESSION     = $00000002;
  MAPI_DIALOG          = $00000008;
  MAPI_UNREAD_ONLY     = $00000020;
  MAPI_ENVELOPE_ONLY   = $00000040;
  MAPI_PEEK            = $00000080;
  MAPI_GUARANTEE_FIFO  = $00000100;
  MAPI_BODY_AS_FILE    = $00000200;
  MAPI_AB_NOMODIFY     = $00000400;
  MAPI_SUPPRESS_ATTACH = $00000800;
  MAPI_FORCE_DOWNLOAD  = $00001000;  { Get new mail before return   }
  MAPI_PASSWORD_UI     = $00020000;  { prompt for password only     }
  MAPI_ALLOW_OTHERS    = $00000008;
  MAPI_EXPLICIT_PROFILE= $00000010;  { Don't use default profile    }
  MAPI_USE_DEFAULT     = $00000040;  { Use default profile in logon }

  MAPI_SIMPLE_DEFAULT  = MAPI_LOGON_UI + MAPI_FORCE_DOWNLOAD +
                         MAPI_ALLOW_OTHERS;
  MAPI_SIMPLE_EXPLICIT = MAPI_NEW_SESSION + MAPI_FORCE_DOWNLOAD +
                         MAPI_EXPLICIT_PROFILE;

type

  TMapiRecip = record
    Reserved: LongInt;
    RecipClass: LongInt;
    Name: PChar;
    Address: PChar;
    EIDSize: LongInt;
    EntryID: Pointer;
  end;
  lpTMapiRecip = ^TMapiRecip;

  TMapiFile = record
    Reserved: LongInt;
    Flags: LongInt;
    Position: LongInt;
    PathName: PChar;
    FileName: PChar;
    FileType: PChar;
  end;
  lpTMapiFile = ^TMapiFile;

  TMapiMessage = record
    Reserved: LongInt;
    Subject: PChar;
    NoteText: PChar;
    MessageType: PChar;
    DateReceived: PChar;
    ConversationID: PChar;
    Flags: LongInt;
    Originator: lpTMapiRecip;
    RecipCount: LongInt;
    Recipients: lpTMapiRecip;
    FileCount: LongInt;
    Files: lpTMapiFile;
  end;
  lpTMapiMessage = ^TMapiMessage;

  TMapiFlags = (mfShowUI, mfNewSession, mfDialog, mfEnvelopeOnly,
                mfSuppressAttach, mfBodyAsFile, mfPeek, mfUnreadOnly,
                mfGuaranteeFifo, mfABNoModify, mfForceDownload, mfPasswordUI,
                mfExplicitProfile, mfExtended, mfUseDefault );
  TFlagList = set of TMapiFlags;

  TMapiMsgFlags = (mmfUnread, mmfReceiptRequested, mmfSent);
  TMsgFlagList = set of TMapiMsgFlags;

  TPos = class
    Pos:Integer;
  end;

  TISGMapi = class(TComponent)
  private
    { Private declarations }
    Session: LongInt;
    rMessage: lpTMapiMessage;
    rMsgType: String;
    libAvailable: Boolean;
    libHandle: THandle;
    funcAddress: TFarProc;
    funcSaveMail: TFarProc;
    funcSendMail: TFarProc;
    funcReadMail: TFarProc;
    funcLogon: TFarProc;
    funcLogoff: TFarProc;
    funcFreeBuffer: TFarProc;
    funcFindNext: TFarProc;
    funcDeleteMail: TFarProc;
    funcResolveName: TFarProc;

    FRecipTypeCount: Integer;
    FRecipTo: TStringList;
    FRecipCC: TStringList;
    FRecipBCC: TStringList;
    FFiles: TStringList;
    FUserName: String;
    FPassword: String;
    FOptions: TFlagList;
    FMsgOptions: TMsgFlagList;
    FMessageId: String;
    FSubject: String;
    FNoteText: TStringList;
    FResult: LongInt;
    FOriginator: String;
    FDateTimeReceived:TDateTime;
    FAddrCaption: String;
    FEditLabel: String;
    FUseWindowHandle: Boolean;
    FWinHandle: HWND;

  protected
    { Protected declarations }
    procedure SetRecipTo(NewRecip: TStringList);
    procedure SetRecipCC(NewRecip: TstringList);
    procedure SetRecipBCC(NewRecip: TStringList);
    procedure SetFiles(NewFiles: TStringList);
    function GetConnected:Boolean;
    function GetLibAvailable:Boolean;
    procedure SetOptions(Value: TFlagList);
    Procedure SetNoteText(Value: TStringList);

  public
    { Public declarations }
    Constructor Create(AOwner:TComponent); override;
    Destructor Destroy; override;
    procedure Logon;
    procedure Logoff;
    procedure Address;
    procedure SaveMail;
    procedure SendMail;
    procedure ReadMail;
    function FindNext:Boolean;
    procedure DeleteMail;
    procedure FreeMsgMem;
    function ResolveName(var Name:string):Boolean;
    function WhoAmI:String;
    procedure Clear;
    function ErrorString(ErrorCode:Integer):String;
    Property MessageID: String read FMessageID write FMessageID;
    Property Result: LongInt read FResult;
    Property MessageType: String read rMsgType write rMsgType;
    Property Msg: lpTMapiMessage read rMessage;
    Property Connected: Boolean read GetConnected;
    Property WinHandle: HWND write FWinHandle;
    Property DateTimeReceived: TDateTime read FDateTimeReceived;
    Property MsgOptions: TMsgFlagList read FMsgOptions write FMsgOptions;
    Property Originator: String read FOriginator write FOriginator;
    Property Available: Boolean read GetLibAvailable;
  published
    { Published declarations }
    Property RecipientsTo: TStringList read FRecipTo write SetRecipTo;
    Property RecipientsCC: TStringList read FRecipCC write SetRecipCC;
    Property RecipientsBCC: TStringList read FRecipBCC write SetRecipBCC;
    Property Attachments: TStringList read FFiles write SetFiles;
    Property UserName: String read FUserName write FUserName;
    Property UserPassword: String read FPassword write FPassword;
    Property Options: TFlagList read FOptions write SetOptions;
    Property Subject: String read FSubject write FSubject;
    Property NoteText: TStringList read FNoteText write SetNoteText;
    Property RecipTypeCount: Integer read FRecipTypeCount write FRecipTypeCount;
    Property AddressCaption: String read FAddrCaption write FAddrCaption;
    Property UseWindowHandle: Boolean read FUseWindowHandle
                                      write FUseWindowHandle;
    Property EditLabel: String read FEditLabel write FEditLabel;
  end;

  fMapiAddress=function(Session:LongInt;UIParam:LongInt;
    Caption:PChar;EditFields:LongInt;Labels:PChar;nReceip:LongInt;
    Recip:lpTMapiRecip;Flags:LongInt;Reserved:LongInt;
    nNewRecip:Pointer;NewRecips:Pointer):LongInt stdcall;

  fMapiLogon=function(UIParam:LongInt;Name:PChar;Password:PChar;
    Flags:LongInt;Reserved:LongInt;Session:Pointer):LongInt stdcall;

  fMapiLogoff=function(Session:LongInt;UIParam:LongInt;Flags:LongInt;
    Reserved:LongInt):LongInt stdcall;

  fMapiSaveMail=function(Session:LongInt;UIParam:LongInt;
    Msg:lpTMapiMessage;Flags:LongInt;Reserved:LongInt;
    MessageID:PChar):LongInt stdcall;

  fMapiSendMail=function(Session:LongInt;UIParam:LongInt;
    Msg:lpTMapiMessage;Flags:LongInt;Reserved:LongInt):LongInt stdcall;

  fMapiReadMail=function(Session:LongInt;UIParam:LongInt;
    MessageID:PChar;Flags:LongInt;Reserved:LongInt;
    Msg:Pointer):LongInt stdcall;

  fMapiFindNext=function(Session:LongInt;UIParam:LongInt;
    MessageType:PChar;MessageID:PChar;Flags:LongInt;Reserved:LongInt;
    NewMessageID:PChar):LongInt stdcall;

  fMapiDeleteMail=function(Session:LongInt;UIParam:LongInt;
    MessageID:PChar;Flags:LongInt;Reserved:LongInt):LongInt stdcall;

  fMapiResolveName=function(Session:LongInt;UIParam:LongInt;
    Name:PChar;Flags:LongInt;Reserved:LongInt;
    Recip:Pointer):LongInt stdcall;

  fMapiFreeBuffer=function(Memory:Pointer):LongInt stdcall;

procedure Register;

function GetToken(var Str:String;C:Char):String;
function MapiName(Str:String):String;
function MapiAddress(Str:String):String;
function MapiFilePath(Str:String):String;
function MapiFileName(Str:String):String;

implementation

procedure Register;
begin
  RegisterComponents('ISG', [TISGMapi]);
end;

function GetToken(var Str:String;C:Char):String;
begin
  if (Pos(C,Str)>0) then
  begin
    Result:=Copy(Str,1,Pos(C,Str)-1);
    Str:=Copy(Str,Pos(C,Str)+1,Length(Str));
  end
  else
  begin
    Result:=Str;
    Str:='';
  end;
end;

function MapiName(Str:String):String;
Var
  TempStr:string;
begin
  TempStr:=Str;
  MapiName:=GetToken(TempStr,'|');
end;

function MapiAddress(Str:String):String;
Var
  TempStr:string;
begin
  TempStr:=Str;
  GetToken(TempStr,'|');
  MapiAddress:=TempStr;
end;

function MapiFilePath(Str:String):String;
Var
  TempStr:string;
begin
  TempStr:=Str;
  MapiFilePath:=GetToken(TempStr,'|');
end;

function MapiFileName(Str:String):String;
Var
  TempStr:string;
begin
  TempStr:=Str;
  GetToken(TempStr,'|');
  MapiFileName:=TempStr;
end;

procedure TISGMapi.SetRecipTo(NewRecip: TStringList);
Var
  i:integer;
begin
  FRecipTo.Clear;
  for i:=0 to NewRecip.Count-1 do
    FRecipTo.Add(NewRecip.Strings[i]);
end;

procedure TISGMapi.SetRecipCC(NewRecip: TStringList);
Var
  i:integer;
begin
  FRecipCC.Clear;
  for i:=0 to NewRecip.Count-1 do
    FRecipCC.Add(NewRecip.Strings[i]);
end;

procedure TISGMapi.SetRecipBCC(NewRecip: TStringList);
Var
  i:integer;
begin
  FRecipBCC.Clear;
  for i:=0 to NewRecip.Count-1 do
    FRecipBCC.Add(NewRecip.Strings[i]);
end;

procedure TISGMapi.SetFiles(NewFiles: TStringList);
Var
  i:integer;
begin
  FFiles.Clear;
  for i:=0 to NewFiles.Count-1 do
    FFiles.Add(NewFiles.Strings[i]);
end;

function TISGMapi.GetConnected:Boolean;
begin
  GetConnected:=(Session>0);
end;

function TISGMapi.GetLibAvailable:Boolean;
begin
  GetLibAvailable:=libAvailable;
end;

procedure TISGMapi.SetOptions(Value: TFlagList);
begin
  FOptions:=Value;
end;

Procedure TISGMapi.SetNoteText(Value: TStringList);
begin
  FNoteText.Text:=Value.Text;
end;

Constructor TISGMapi.Create(AOwner:TComponent);
Var
  tempWinDir,tempSysDir:Array[0..255] of Char;
begin
  Inherited Create(AOwner);
  libAvailable:=False;

  GetWindowsDirectory(tempWinDir,255);
  GetSystemDirectory(tempSysDir,255);

  if FileSearch('MAPI32.DLL',ExtractFilePath(ParamStr(0))+';'+
       StrPas(tempWinDir)+';'+StrPas(tempSysDir))>'' then
    libHandle:=LoadLibrary('MAPI32.DLL')
  else
    libHandle:=0;

  if libHandle>=HINSTANCE_ERROR then
  begin
    libAvailable:=True;
    funcAddress:=GetProcAddress(libHandle,'MAPIAddress');
    funcLogon:=GetProcAddress(libHandle,'MAPILogon');
    funcLogoff:=GetProcAddress(libHandle,'MAPILogoff');
    funcSaveMail:=GetProcAddress(libHandle,'MAPISaveMail');
    funcSendMail:=GetProcAddress(libHandle,'MAPISendMail');
    funcReadMail:=GetProcAddress(libHandle,'MAPIReadMail');
    funcFindNext:=GetProcAddress(libHandle,'MAPIFindNext');
    funcFreeBuffer:=GetProcAddress(libHandle,'MAPIFreeBuffer');
    funcDeleteMail:=GetProcAddress(libHandle,'MAPIDeleteMail');
    funcResolveName:=GetProcAddress(libHandle,'MAPIResolveName');
  end;
  FRecipTo:=TStringList.Create;
  FRecipCC:=TStringList.Create;
  FRecipBCC:=TStringList.Create;
  FFiles:=TStringList.Create;
  FNoteText:=TStringList.Create;
  Session:=0;
  FOptions:=[ mfShowUI ];
  FAddrCaption:='Address Book';
  FRecipTypeCount:=2;
  FUseWindowHandle:=False;
end;

Destructor TISGMapi.Destroy;
begin
  if Session>0 then
    Logoff;

  FRecipTo.Free;
  FRecipCC.Free;
  FRecipBCC.Free;
  FFiles.Free;
  FNoteText.Free;

  if libAvailable then
    FreeLibrary(libHandle);

  Inherited Destroy;
end;

procedure TISGMapi.Logon;
Var
  Flags:LongInt;
  WinHandle:LongInt;

begin
  if (not libAvailable) then exit;

  if (Session>0) then
    Logoff;

  Flags:=0;
  if (mfShowUI in FOptions) then
    Flags:=Flags + MAPI_LOGON_UI;
  if (mfNewSession in FOptions) then
    Flags:=Flags + MAPI_NEW_SESSION;
  if (mfForceDownload in FOptions) then
    Flags:=Flags + MAPI_FORCE_DOWNLOAD;
  if (mfPasswordUI in FOptions) then
    Flags:=Flags + MAPI_PASSWORD_UI;
  if (mfExplicitProfile in FOptions) then
    Flags:=Flags + MAPI_EXPLICIT_PROFILE;
  if (mfUseDefault in FOptions) then
    Flags:=Flags + MAPI_USE_DEFAULT;

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  FResult:=fMapiLogon(funcLogon)(WinHandle,PChar(FUserName),PChar(FPassword),
    Flags,0,Addr(Session));
  if FResult<>SUCCESS_SUCCESS then
  begin
    Session:=0;
    if (mfShowUI in FOptions) then
      MessageDlg('Unable to Logon.',mtWarning, [mbOk], 0);
  end;
end;

procedure TISGMapi.Logoff;
Var
  WinHandle:LongInt;
begin
  if (not libAvailable) then exit;

  if (Session=0) then exit;

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  FResult:=fMapiLogoff(funcLogoff)(Session,WinHandle,0,0);
  if (FResult<>SUCCESS_SUCCESS) then
  begin
    if (mfShowUI in FOptions) then
      MessageDlg('Unable to Logoff.',mtWarning, [mbOk], 0);
  end
  else Session:=0;
end;

{************* SPECIAL UTILITY FUNCTION **********}
{ Guard against Nil pointer Demon }
function CheckStrPas(inStr:PChar):String;
begin
  if inStr<>nil then
    CheckStrPas:=StrPas(inStr)
  else
    CheckStrPas:='';
end;
{*************************************************}

procedure TISGMapi.Address;
Var
  Flags:LongInt;
  Caption:array[0..80] of Char;

  i: Integer;
  TempString: String;
  TempStr: array[0..255] of Char;
  Rec: lpTMapiRecip;
  pRec: lpTMapiRecip;
  NewRec:lpTMapiRecip;
  nRecip:LongInt;
  TotRecip:Integer;
  WinHandle:LongInt;
  EdLbl:PChar;
begin
  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;
  if mfNewSession in FOptions then
    Flags:=Flags + MAPI_NEW_SESSION;
  if mfShowUI in FOptions then
    Flags:=Flags + MAPI_LOGON_UI;

  Rec:=nil;
  TotRecip:=FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count;
  if TotRecip>0 then
  begin
    GetMem(Rec,TotRecip*sizeof(TMapiRecip));

    { Build To Recipents List }
    if (FRecipTo.Count>0) then
    begin
      For i:=0 to FRecipTo.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=1;
        TempString:=FRecipTo.Strings[i];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build CC Recipents List }
    if (FRecipCC.Count>0) then
    begin
      For i:=FRecipTo.Count to FRecipTo.Count+FRecipCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=2;
        TempString:=FRecipCC.Strings[i-FRecipTo.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build BCC Recipents List }
    if (FRecipBCC.Count>0) then
    begin
      For i:=FRecipTo.Count+FRecipCC.Count to
             FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=3;
        TempString:=FRecipBCC.Strings[i-FRecipTo.Count-FRecipCC.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;
  end;

  StrPCopy(Caption,FAddrCaption);

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  if (FRecipTypeCount=1) and (FEditLabel<>'') then
  begin
    StrPCopy(TempStr,FEditLabel);
    EdLbl:=StrNew(TempStr);
  end
  else
    EdLbl:=nil;

  FResult:=fMAPIAddress(funcAddress)(Session,WinHandle,
    Caption,FRecipTypeCount,EdLbl,TotRecip,Rec,Flags,0,@nRecip,@NewRec);

  if EdLbl<>nil then
    StrDispose(EdLbl);

  if (TotRecip>0) then
  begin
    for i:=0 to TotRecip-1 do
    begin
      pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
      StrDispose(pRec^.Name);
      StrDispose(pRec^.Address);
    end;
    FreeMem(Rec,TotRecip*sizeof(TMapiRecip));
  end;

  if FResult=SUCCESS_SUCCESS then
  begin
    FRecipTo.Clear;
    FRecipCC.Clear;
    FRecipBCC.Clear;
    for i:=0 to nRecip-1 do
    begin
      pRec:=lpTMapiRecip(LongInt(NewRec)+i*sizeof(TMapiRecip));
      if (pRec^.RecipClass=1) then
        FRecipTo.Add(CheckStrPas(pRec^.Name)+'|'+CheckStrPas(pRec^.Address));
      if (pRec^.RecipClass=2) then
        FRecipCC.Add(CheckStrPas(pRec^.Name)+'|'+CheckStrPas(pRec^.Address));
      if (pRec^.RecipClass=3) then
        FRecipBCC.Add(CheckStrPas(pRec^.Name)+'|'+CheckStrPas(pRec^.Address));
    end;
    if nRecip>0 then
      fMapiFreeBuffer(funcFreeBuffer)(NewRec);
  end;
end;

procedure TISGMapi.FreeMsgMem;
begin
    fMapiFreeBuffer(funcFreeBuffer)(rMessage);
end;

procedure TISGMapi.SaveMail;
Var
  i,TotRecip: Integer;
  TempString:String;
  TempStr: array[0..255] of Char;
  MsgID: array[0..70] of Char;
  Flags,MsgFlags: LongInt;
  Msg: TMapiMessage;
  Rec: lpTMapiRecip;
  pRec: lpTMapiRecip;
  Fil: lpTMapiFile;
  pFil: lpTMapiFile;
  WinHandle:LongInt;

begin
  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;
  if mfNewSession in FOptions then
    Flags:=Flags + MAPI_NEW_SESSION;
  if mfShowUI in FOptions then
    Flags:=Flags + MAPI_LOGON_UI;

  Rec:=nil;
  TotRecip:=FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count;
  if TotRecip>0 then
  begin
    GetMem(Rec,TotRecip*sizeof(TMapiRecip));

    { Build To Recipents List }
    if (FRecipTo.Count>0) then
    begin
      For i:=0 to FRecipTo.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=1;
        TempString:=FRecipTo.Strings[i];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build CC Recipents List }
    if (FRecipCC.Count>0) then
    begin
      For i:=FRecipTo.Count to FRecipTo.Count+FRecipCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=2;
        TempString:=FRecipCC.Strings[i-FRecipTo.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build BCC Recipents List }
    if (FRecipBCC.Count>0) then
    begin
      For i:=FRecipTo.Count+FRecipCC.Count to
             FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=3;
        TempString:=FRecipBCC.Strings[i-FRecipTo.Count-FRecipCC.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;
  end;

  { Build Attachments List }
  Fil:=nil;
  if (FFiles.Count>0) then
  begin
    GetMem(Fil,FFiles.Count*sizeof(TMapiFile));
    for i:=0 to FFiles.Count-1 do
    begin
      pFil:=lpTMapiFile(LongInt(Fil)+i*sizeof(TMapiFile));
      pFil^.Reserved:=0;
      pFil^.Flags:=0;
      if FFiles.Objects[i]<>nil then
        pFil^.Position:=TPos(FFiles.Objects[i]).Pos
      else
        pFil^.Position:=-1;
      TempString:=FFiles.Strings[i];
      StrPCopy(TempStr,GetToken(TempString,'|'));
      pFil^.PathName:=StrNew(TempStr);
      if Length(MapiFileName(FFiles.Strings[i]))=0 then
        StrPCopy(TempStr,ExtractFileName(MapiFilePath(FFiles.Strings[i])))
      else
        StrPCopy(TempStr,MapiFileName(FFiles.Strings[i]));
      pFil^.FileName:=StrNew(TempStr);
      pFil^.FileType:=nil;
    end;
  end;

  { Build Message }

  MsgFlags:=0;
  if mmfReceiptRequested in FMsgOptions then
    MsgFlags:=MsgFlags + MAPI_RECEIPT_REQUESTED;

  Msg.RecipCount:=TotRecip;
  Msg.Recipients:=Rec;
  Msg.Reserved:=0;
  StrPCopy(TempStr,FSubject);
  Msg.Subject:=StrNew(TempStr);
  Msg.NoteText:=StrNew(PChar(FNoteText.Text));
  StrPCopy(TempStr,rMsgType);
  if StrLen(TempStr)>0 then
    Msg.MessageType:=StrNew(TempStr)
  else
    Msg.MessageType:=nil;
  Msg.DateReceived:=nil;
  Msg.ConversationID:=nil;
  Msg.Flags:=MsgFlags;
  Msg.Originator:=nil;
  Msg.FileCount:=FFiles.Count;
  Msg.Files:=Fil;

  {Fill MessageID}
  StrPCopy(MsgID,FMessageID);

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  FResult:=fMapiSaveMail(funcSaveMail)(Session,WinHandle,
    @Msg,Flags,0,MsgID);
  if FResult=SUCCESS_SUCCESS then
    FMessageID:=CheckStrPas(MsgID);

  StrDispose(Msg.Subject);
  StrDispose(Msg.NoteText);
  if (Msg.MessageType<>nil) then
    StrDispose(Msg.MessageType);
  if (FFiles.Count>0) then
  begin
    for i:=0 to FFiles.Count-1 do
    begin
      pFil:=lpTMapiFile(LongInt(Fil)+i*sizeof(TMapiFile));
      StrDispose(pFil^.PathName);
      StrDispose(pFil^.FileName);
    end;
    FreeMem(Fil,FFiles.Count*sizeof(TMapiFile));
  end;
  if (TotRecip>0) then
  begin
    for i:=0 to TotRecip-1 do
    begin
      pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
      StrDispose(pRec^.Name);
      StrDispose(pRec^.Address);
    end;
    FreeMem(Rec,TotRecip*sizeof(TMapiRecip));
  end;
end;

procedure TISGMapi.SendMail;
Var
  i,TotRecip: Integer;
  TempString:String;
  TempStr: array[0..255] of Char;
  Flags,MsgFlags: LongInt;
  Msg: TMapiMessage;
  Rec: lpTMapiRecip;
  pRec: lpTMapiRecip;
  Fil: lpTMapiFile;
  pFil: lpTMapiFile;
  WinHandle:LongInt;

begin
  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;
  if mfNewSession in FOptions then
    Flags:=Flags + MAPI_NEW_SESSION;
  if mfDialog in FOptions then
    Flags:=Flags + MAPI_DIALOG;
  if mfShowUI in FOptions then
    Flags:=Flags + MAPI_LOGON_UI;

  Rec:=nil;
  TotRecip:=FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count;
  if TotRecip>0 then
  begin
    GetMem(Rec,TotRecip*sizeof(TMapiRecip));

    { Build To Recipents List }
    if (FRecipTo.Count>0) then
    begin
      For i:=0 to FRecipTo.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=1;
        TempString:=FRecipTo.Strings[i];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build CC Recipents List }
    if (FRecipCC.Count>0) then
    begin
      For i:=FRecipTo.Count to FRecipTo.Count+FRecipCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=2;
        TempString:=FRecipCC.Strings[i-FRecipTo.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;

    { Build BCC Recipents List }
    if (FRecipBCC.Count>0) then
    begin
      For i:=FRecipTo.Count+FRecipCC.Count to
             FRecipTo.Count+FRecipCC.Count+FRecipBCC.Count-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
        pRec^.Reserved:=0;
        pRec^.RecipClass:=3;
        TempString:=FRecipBCC.Strings[i-FRecipTo.Count-FRecipCC.Count];
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Name:=StrNew(TempStr);
        StrPCopy(TempStr,GetToken(TempString,'|'));
        pRec^.Address:=StrNew(TempStr);
        pRec^.EIDSize:=0;
        pRec^.EntryID:=nil;
      end;
    end;
  end;

  { Build Attachments List }
  Fil:=nil;
  if (FFiles.Count>0) then
  begin
    GetMem(Fil,FFiles.Count*sizeof(TMapiFile));
    for i:=0 to FFiles.Count-1 do
    begin
      pFil:=lpTMapiFile(LongInt(Fil)+i*sizeof(TMapiFile));
      pFil^.Reserved:=0;
      pFil^.Flags:=0;
      if FFiles.Objects[i]<>nil then
        pFil^.Position:=TPos(FFiles.Objects[i]).Pos
      else
        pFil^.Position:=-1;
      TempString:=FFiles.Strings[i];
      StrPCopy(TempStr,GetToken(TempString,'|'));
      pFil^.PathName:=StrNew(TempStr);
      if Length(MapiFileName(FFiles.Strings[i]))=0 then
        StrPCopy(TempStr,ExtractFileName(MapiFilePath(FFiles.Strings[i])))
      else
        StrPCopy(TempStr,MapiFileName(FFiles.Strings[i]));
      pFil^.FileName:=StrNew(TempStr);
      pFil^.FileType:=nil;
    end;
  end;

  { Build Message }

  MsgFlags:=0;
  if mmfReceiptRequested in FMsgOptions then
    MsgFlags:=MsgFlags + MAPI_RECEIPT_REQUESTED;

  Msg.RecipCount:=TotRecip;
  Msg.Recipients:=Rec;
  Msg.Reserved:=0;
  StrPCopy(TempStr,FSubject);
  Msg.Subject:=StrNew(TempStr);
  Msg.NoteText:=StrNew(PChar(FNoteText.Text));
  StrPCopy(TempStr,rMsgType);
  if StrLen(TempStr)>0 then
    Msg.MessageType:=StrNew(TempStr)
  else
    Msg.MessageType:=nil;
  Msg.DateReceived:=nil;
  Msg.ConversationID:=nil;
  Msg.Flags:=MsgFlags;
  Msg.Originator:=nil;
  Msg.FileCount:=FFiles.Count;
  Msg.Files:=Fil;

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  FResult:=fMapiSendMail(funcSendMail)(Session,WinHandle,
    @Msg,Flags,0);

  StrDispose(Msg.Subject);
  StrDispose(Msg.NoteText);
  if (Msg.MessageType<>nil) then
    StrDispose(Msg.MessageType);
  if (FFiles.Count>0) then
  begin
    for i:=0 to FFiles.Count-1 do
    begin
      pFil:=lpTMapiFile(LongInt(Fil)+i*sizeof(TMapiFile));
      StrDispose(pFil^.PathName);
      StrDispose(pFil^.FileName);
    end;
    FreeMem(Fil,FFiles.Count*sizeof(TMapiFile));
  end;
  if (TotRecip>0) then
  begin
    for i:=0 to TotRecip-1 do
    begin
      pRec:=lpTMapiRecip(LongInt(Rec)+i*sizeof(TMapiRecip));
      StrDispose(pRec^.Name);
      StrDispose(pRec^.Address);
    end;
    FreeMem(Rec,TotRecip*sizeof(TMapiRecip));
  end;
end;

procedure TISGMapi.ReadMail;
Var
  MsgID: array[0..255] of Char;
  WinHandle,Flags,i: LongInt;
  Tm,tStr:string;
  pRec:lpTMapiRecip;
  pFil:lpTMapiFile;
begin
  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;
  if mfEnvelopeOnly in FOptions then
    Flags:=Flags + MAPI_ENVELOPE_ONLY;
  if mfSuppressAttach in FOptions then
    Flags:=Flags + MAPI_SUPPRESS_ATTACH;
  if mfBodyAsFile in FOptions then
    Flags:=Flags + MAPI_BODY_AS_FILE;
  if mfPeek in FOptions then
    Flags:=Flags + MAPI_PEEK;

  { Build MessageID }
  StrPCopy(MsgID,FMessageID);

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  if (StrLen(MsgID)>0) then
  begin
    FResult:=fMapiReadMail(funcReadMail)(Session,WinHandle,
      MsgID,Flags,0,@rMessage);
    if FResult=SUCCESS_SUCCESS then
    begin
      FMsgOptions:=[];
      if (rMessage^.Flags AND MAPI_UNREAD)=MAPI_UNREAD then
        FMsgOptions:=FMsgOptions+[mmfUnread];
      if (rMessage^.Flags AND MAPI_RECEIPT_REQUESTED)=MAPI_RECEIPT_REQUESTED then
        FMsgOptions:=FMsgOptions+[mmfReceiptRequested];
      if (rMessage^.Flags AND MAPI_SENT)=MAPI_SENT then
        FMsgOptions:=FMsgOptions+[mmfSent];
      if (rMessage^.Originator^.Name<>nil) then
        FOriginator:=StrPas(rMessage^.Originator^.Name)+'|'
      else
        FOriginator:='|';
      if (rMessage^.Originator^.Address<>nil) then
        FOriginator:=FOriginator+StrPas(rMessage^.Originator^.Address);

      if (rMessage^.DateReceived<>nil) then
        Tm:=StrPas(rMessage^.DateReceived);

      try
        FDateTimeReceived:=EncodeDate(StrToInt(Copy(Tm,1,4)),
          StrToInt(Copy(Tm,6,2)),StrToInt(Copy(Tm,9,2)));
        FDateTimeReceived:=FDateTimeReceived+EncodeTime(
          StrToInt(Copy(Tm,12,2)),StrToInt(Copy(Tm,15,2)),0,0);
      except
        on Exception do FDateTimeReceived:=Now;
      end;

      if (rMessage^.Subject<>nil) then
        FSubject:=StrPas(rMessage^.Subject)
      else
        FSubject:='';

      FNoteText.Clear;
      if (rMessage^.NoteText<>nil) then
        FNoteText.Text:=rMessage^.NoteText;

      FFiles.Clear;
      if not (mfSuppressAttach in FOptions) then
        for i:=0 to rMessage^.FileCount-1 do
        begin
          pFil:=lpTMapiFile(LongInt(rMessage^.Files)+i*sizeof(TMapiFile));
          tStr:='';
          if (pFil^.PathName<>nil) then
            tStr:=StrPas(pFil^.PathName);
          tStr:=tStr+'|';
          if (pFil^.FileName<>nil) then
            tStr:=tStr+StrPas(pFil^.FileName);

          FFiles.Add(tStr);
{          FFiles.Add(StrPas(pFil^.PathName)+'|'+StrPas(pFil^.FileName));}
        end;

      FRecipTo.Clear;
      FRecipCC.Clear;
      FRecipBCC.Clear;
      for i:=0 to rMessage^.RecipCount-1 do
      begin
        pRec:=lpTMapiRecip(LongInt(rMessage^.Recipients)+i*sizeof(TMapiRecip));
        if pRec^.Name<>nil then
          tStr:=StrPas(pRec^.Name)+'|'
        else
          tStr:='|';
        if pRec^.Address<>nil then
          tStr:=tStr+StrPas(pRec^.Address);
        if (pRec^.RecipClass=1) then
          FRecipTo.Add(tStr);
        if (pRec^.RecipClass=2) then
          FRecipCC.Add(tStr);
        if (pRec^.RecipClass=3) then
          FRecipBCC.Add(tStr);
      end;
    end;
  end
  else FResult:=-1;

end;

procedure TISGMapi.DeleteMail;
Var
  MsgID: array[0..255] of Char;
  WinHandle,Flags: LongInt;

begin
  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;

  { Build MessageID }
  StrPCopy(MsgID,FMessageID);

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  if (StrLen(MsgID)>0) then
    FResult:=fMapiDeleteMail(funcDeleteMail)(Session,WinHandle,
      MsgID,Flags,0)
  else FResult:=-1;

end;

function TISGMapi.FindNext:Boolean;
Var
  MsgID: array[0..255] of Char;
  NewID: array[0..70] of Char;
  MsgType: array[0..255] of Char;
  WinHandle,Flags: LongInt;

begin
  Result:=False;

  if (not libAvailable) then exit;

  { Build Flag }
  Flags:=0;
  if mfUnreadOnly in FOptions then
    Flags:=Flags + MAPI_UNREAD_ONLY;
  if mfGuaranteeFifo in FOptions then
    Flags:=Flags + MAPI_GUARANTEE_FIFO;

  { Build MessageID }
  StrPCopy(MsgID,FMessageID);

  { Build Message Type }
  StrPCopy(MsgType,rMsgType);

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  FResult:=fMapiFindNext(funcFindNext)(Session,WinHandle,
      MsgType,MsgID,Flags,0,NewID);

  if FResult=SUCCESS_SUCCESS then
  begin
    FMessageID:=CheckStrPas(NewID);
    Result:=True;
  end;
end;

function TISGMapi.ResolveName(var Name:string):Boolean;
Var
  AddrName:array[0..255] of Char;
  Flags,WinHandle:LongInt;
  NewRecip:lpTMapiRecip;
begin
  if (not libAvailable) then
  begin
    ResolveName:=False;
    exit;
  end;

  { Build Flag }
  Flags:=0;
  if mfNewSession in FOptions then
    Flags:=Flags + MAPI_NEW_SESSION;
  if mfDialog in FOptions then
    Flags:=Flags + MAPI_DIALOG;
  if mfShowUI in FOptions then
    Flags:=Flags + MAPI_LOGON_UI;
  if mfABNoModify in FOptions then
    Flags:=Flags + MAPI_AB_NOMODIFY;

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);

  StrPCopy(AddrName,Name);

  FResult:=fMapiResolveName(funcResolveName)(Session,WinHandle,
      AddrName,Flags,0,@NewRecip);
  if FResult=SUCCESS_SUCCESS then
  begin
    Name:=CheckStrPas(NewRecip^.Name)+'|'+CheckStrPas(NewRecip^.Address);
    fMapiFreeBuffer(funcFreeBuffer)(NewRecip);
    ResolveName:=True;
  end
  else
    ResolveName:=False;
end;

function TISGMapi.WhoAmI:String;
Var
  NewID: array[0..70] of Char;
  WinHandle: LongInt;
  Msg: TMapiMessage;
  rtempMsg: lpTMapiMessage;
  tempStr: String;
begin
  if not (libAvailable and Connected) then
  begin
    WhoAmI:='';
    Exit;
  end;

  Msg.RecipCount:=0;
  Msg.Recipients:=nil;
  Msg.Reserved:=0;
  Msg.Subject:=StrNew('Temp Message for WhoAmI Function');
  Msg.NoteText:=StrNew('Failed Call to WhoAmI function!');
  Msg.MessageType:=StrNew('');
  Msg.DateReceived:=nil;
  Msg.ConversationID:=nil;
  Msg.Flags:=0;
  Msg.Originator:=nil;
  Msg.FileCount:=0;
  Msg.Files:=nil;

  WinHandle:=0;
  if FUseWindowHandle then
    WinHandle:=LongInt(FWinHandle);
  StrCopy(NewID,'');

  FResult:=fMapiSaveMail(funcSaveMail)(Session,WinHandle,
    @Msg,0,0,NewID);

  {Release Memory}
  StrDispose(Msg.Subject);
  StrDispose(Msg.NoteText);
  if (Msg.MessageType<>nil) then
    StrDispose(Msg.MessageType);

  if FResult<>SUCCESS_SUCCESS then
  begin
    WhoAmI:='';
    Exit;
  end;

  FResult:=fMapiReadMail(funcReadMail)(Session,WinHandle,
    NewID,0,0,@rtempMsg);
  if FResult<>SUCCESS_SUCCESS then
  begin
    FResult:=fMapiDeleteMail(funcDeleteMail)(Session,WinHandle,
      NewID,0,0);
    WhoAmI:='';
    Exit;
  end;
  if (rtempMsg^.Originator^.Name<>nil) then
    tempStr:=StrPas(rtempMsg^.Originator^.Name)+'|'
  else
    tempStr:='|';
  if (rtempMsg^.Originator^.Address<>nil) then
    tempStr:=tempStr+StrPas(rtempMsg^.Originator^.Address);
  fMapiFreeBuffer(funcFreeBuffer)(rtempMsg);

  FResult:=fMapiDeleteMail(funcDeleteMail)(Session,WinHandle,
    NewID,0,0);

  WhoAmI:=tempStr;
end;

procedure TISGMapi.Clear;
begin
  FRecipTo.Clear;
  FRecipCC.Clear;
  FRecipBCC.Clear;
  FSubject:='';
  rMsgType:='';
  FMessageID:='';
  FNoteText.Clear;
  FOriginator:='';
  FMsgOptions:=[];
end;

function TISGMapi.ErrorString(ErrorCode:Integer):String;
begin
  case ErrorCode of
    SUCCESS_SUCCESS                 : Result:='Success';
    MAPI_USER_ABORT                 : Result:='User Abort';
    MAPI_E_FAILURE                  : Result:='Failure';
    MAPI_E_LOGIN_FAILURE            : Result:='Login Failure';
    MAPI_E_DISK_FULL                : Result:='Disk Full';
    MAPI_E_INSUFFICIENT_MEMORY      : Result:='Insufficient Memory';
    MAPI_E_BLK_TOO_SMALL            : Result:='Block too Small';
    MAPI_E_TOO_MANY_SESSIONS        : Result:='Too many Sessions';
    MAPI_E_TOO_MANY_FILES           : Result:='Too many Files';
    MAPI_E_TOO_MANY_RECIPIENTS      : Result:='Too many Recipients';
    MAPI_E_ATTACHMENT_NOT_FOUND     : Result:='Attachment not Found';
    MAPI_E_ATTACHMENT_OPEN_FAILURE  : Result:='Attachment Open Failure';
    MAPI_E_ATTACHMENT_WRITE_FAILURE : Result:='Attachment Write Failure';
    MAPI_E_UNKNOWN_RECIPIENT        : Result:='Unknown Recipient';
    MAPI_E_BAD_RECIPTYPE            : Result:='Bad Recipient Type';
    MAPI_E_NO_MESSAGE               : Result:='No Message';
    MAPI_E_INVALID_MESSAGE          : Result:='Invalid Message';
    MAPI_E_TEXT_TOO_LARGE           : Result:='Text to Large';
    MAPI_E_INVALID_SESSION          : Result:='Invalid Session';
    MAPI_E_TYPE_NOT_SUPPORTED       : Result:='Type not Supported';
    MAPI_E_AMBIGUOUS_RECIPIENT      : Result:='Ambiguous Recipient';
    MAPI_E_MESSAGE_IN_USE           : Result:='Message in Use';
    MAPI_E_NETWORK_FAILURE          : Result:='Network Failure';
    MAPI_E_INVALID_EDITFIELDS       : Result:='Invalid Edit Fields';
    MAPI_E_INVALID_RECIPS           : Result:='Invalid Recipients';
    MAPI_E_NOT_SUPPORTED            : Result:='Not Supported';
  else
    Result:='Unknown Error';
  end;
end;

end.
