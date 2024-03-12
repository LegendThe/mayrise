unit Main;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmEFBrowse = class(TForm)
    lbEformList: TListBox;
    bbtOk: TBitBtn;
    bbCancel: TBitBtn;
    memoDescript: TMemo;
    lblDescript: TLabel;
    Image1: TImage;
    procedure bbtOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbEformListClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    DescriptList:TStringList;
    ProgramList:TStringList;
    function GetName(ndx:integer;cStr:String):String;

  public
    { Public declarations }
  end;

var
  frmEFBrowse: TfrmEFBrowse;

implementation

uses IniFiles, ShellAPI;

{$R *.DFM}

procedure TfrmEFBrowse.bbtOkClick(Sender: TObject);
Var
  ndx:integer;
  ProgName:array[0..255] of Char;
begin
  ndx:=lbEformList.ItemIndex;
  if ndx>-1 then
  begin
    if Length(ProgramList[ndx])>0 then
    begin
      StrPCopy(ProgName,ProgramList[ndx]);
      StrCat(ProgName,' 0 0000000000000000');
      WinExec(ProgName,SW_NORMAL);
    end;
  end;
  Close;
end;

function TfrmEFBrowse.GetName(ndx:integer;cStr:String):String;
Var
  i,cnt,lpos:integer;
  tStr:String;
begin
  tStr:=cStr;
  for i:=1 to ndx-1 do
  begin
    if Pos(';',tStr)>0 then
      tStr:=Copy(tStr,Pos(';',tStr)+1,Length(tStr))
    else
      tStr:='';
  end;

  if Length(tStr)>0 then
    tStr:=Copy(tStr,1,Pos(';',tStr)-1);
  GetName:=tStr;
end;

procedure TfrmEFBrowse.FormCreate(Sender: TObject);
Var
  MyFile:TStringList;
  WinDir:array[0..100] of Char;
  i,ndex:integer;
  tStr:String;
  MsMailIni:TIniFile;
begin
  DescriptList:=TStringList.Create;
  ProgramList:=TStringList.Create;

  {Load Titles from MSMAIL.INI}
  MyFile:=TStringList.Create;
  GetWindowsDirectory(WinDir,sizeof(WinDir));
  if StrLen(WinDir)>3 then
    StrCat(WinDir,'\');
  StrCat(WinDir,'msmail.ini');

  MsMailIni := TIniFile.Create(StrPas(WinDir));
  MsMailIni.ReadSection('Custom Messages',MyFile);

  for i:=0 to MyFile.Count-1 do
  begin
    tStr:=MsMailIni.ReadString('Custom Messages',MyFile[i],'');
    if Pos('ISGMEF.DLL',tStr)>0 then
    begin
      ndex:=lbEformList.Items.Add(GetName(3,tStr));
      DescriptList.Insert(ndex,GetName(8,tStr));
      ProgramList.Insert(ndex,GetName(6,tStr));
    end;
  end;

  tStr:=MsMailIni.ReadString('Microsoft Mail','SharedExtensionsDir','');
  if Length(tStr)>0 then
  begin
    MsMailIni.Free;
    tStr:=tStr+'\shared.ini';
    MsMailIni := TIniFile.Create(tStr);
    MyFile.Clear;
    MsMailIni.ReadSection('Custom Messages',MyFile);

    for i:=0 to MyFile.Count-1 do
    begin
      tStr:=MsMailIni.ReadString('Custom Messages',MyFile[i],'');
      if Pos('ISGMEF.DLL',tStr)>0 then
      begin
        ndex:=lbEformList.Items.Add(GetName(3,tStr));
        DescriptList.Insert(ndex,GetName(8,tStr));
        ProgramList.Insert(ndex,GetName(6,tStr));
      end;
    end;
  end;

  MsMailIni.Free;
  MyFile.Free;
end;

procedure TfrmEFBrowse.FormDestroy(Sender: TObject);
begin
  DescriptList.Free;
  ProgramList.Free;
end;

procedure TfrmEFBrowse.lbEformListClick(Sender: TObject);
Var
  hIcon:TIcon;
  appName:array[0..255] of Char;
begin
  memoDescript.Clear;
  memoDescript.Lines.Add(DescriptList[lbEformList.ItemIndex]);
  hIcon:=TIcon.Create;
  StrPCopy(appName,ProgramList[lbEformList.ItemIndex]);
  if StrScan(appName,' ')<>nil then
    StrScan(appName,' ')^:=#0;
  hIcon.Handle:=ExtractIcon(Application.Handle,appName,0);
  Image1.Picture:=TPicture(hIcon);
end;

procedure TfrmEFBrowse.bbCancelClick(Sender: TObject);
begin
  Close;
end;

end.
