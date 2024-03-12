unit AdsConnectionList;

interface

uses
  Classes, Ace, SyncObjs;

type
  TAdsConnectionList = class
  private
    FSync:TCriticalSection;
    LockTypeList:TStringList;
    function AddConnectionInt(const aDatabaseName:string):ADSHANDLE;
    function FindConnectionInt(const aDatabaseName:string):ADSHANDLE;
  public
    ConnectionList:TStringList;
    constructor Create;
    destructor Destroy; override;
    procedure CloseAllConnections;
    function AddConnection(const aDatabaseName:string):ADSHANDLE;
    function FindConnection(const aDatabaseName:string):ADSHANDLE;
    function DoLoginConnection(const aDatabaseName:string;
                               UseALS,UseADS:boolean;
                               var ConnectionHandle:ADSHANDLE;
                               var ErrorCode:UNSIGNED32):boolean;
    function CloseConnection(const aDatabaseName:string):boolean;
    function GetLockingType(const aDatabaseName:string):word;
  end;

var
  GlobalAdsConnectionList:TAdsConnectionList;

implementation

uses
  Windows, SysUtils;

{TAdsConnectionList.Create ****************************************************}
constructor TAdsConnectionList.Create;
begin
  inherited Create;
  ConnectionList:=TStringList.create;
  ConnectionList.Sorted:=true;
  LockTypeList:=TStringList.create;
  LockTypeList.Sorted:=true;
  fSync:=TCriticalSection.Create;
end;

{TAdsConnectionList.Destroy ***************************************************}
destructor TAdsConnectionList.Destroy;
begin
  CloseAllConnections;
  ConnectionList.Free;
  LockTypeList.Free;
  FSync.free;
end;

{TAdsConnectionList.GetLockingType ***************************************}
function TAdsConnectionList.GetLockingType(const aDatabaseName:string):word;

  function RemoveBackslashUnlessRoot(const S:String):String;
  var
    L: Integer;
  begin
    Result := S;
    L := Length(Result);
    if L < 2 then
      Exit;
    if (AnsiLastChar(Result)^ = '\') and
       ((Result[L-1] <> ':') or (ByteType(Result, L-1) <> mbSingleByte)) then
      SetLength(Result, L-1);
  end;

  function DoesFileExist(const Name: String): Boolean;
  var
    Attr: Cardinal;
    OldErrorMode: Cardinal;
  begin
    OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);  { Prevent "Network Error" boxes }
    try
      Attr := GetFileAttributes(PChar(Name));
    finally
      SetErrorMode (OldErrorMode);
    end;
    Result := (Attr <> $FFFFFFFF) and (Attr and faDirectory = 0);
  end;

var
  l,i,x:integer;
  aDir:string;
begin
  FSync.Enter;
  try
    result:=ADS_COMPATIBLE_LOCKING;
    aDir:=RemoveBackslashUnlessRoot(Uppercase(trim(aDatabaseName)));
    l:=Length(aDir);
    if l<2 then
      exit;

    i:=LockTypeList.IndexOf(aDir);
    if i=-1 then
      for x:=0 to LockTypeList.Count-1 do
        if LockTypeList[x]=copy(aDir,1,length(LockTypeList[x])) then
          begin
            i:=x;
            break;
          end;

    if i>-1 then
      result:=word(LockTypeList.Objects[i])
    else
      begin
        if DoesFileExist(aDir+'\_PROPRIETARY.LOCK') then
          result:=ADS_PROPRIETARY_LOCKING;
        LockTypeList.AddObject(aDir,TObject(result));
      end;

  finally
    FSync.Leave;
  end;
end;

{TAdsConnectionList.CloseAllConnections ***************************************}
procedure TAdsConnectionList.CloseAllConnections;
var
  i:integer;
begin
  FSync.Enter;
  try
    for i:=0 to ConnectionList.Count-1 do
      AdsDisconnect(ADSHANDLE(ConnectionList.Objects[i]));
    ConnectionList.Clear;
    LockTypeList.Clear;
  finally
    FSync.Leave;
  end;
end;

{TAdsConnectionList.AddConnection *********************************************}
function TAdsConnectionList.AddConnection(const aDatabaseName:string):ADSHANDLE;
begin
  FSync.Enter;
  try
    result:=AddConnectionInt(aDatabaseName);
  finally
    FSync.Leave;
  end;
end;

{TAdsConnectionList.AddConnectionInt ******************************************}
function TAdsConnectionList.AddConnectionInt(const aDatabaseName:string):ADSHANDLE;
var
  i:integer;
  aDir:string;
begin
  aDir:=Uppercase(aDatabaseName);
  i:=Length(aDir);
  if (i>0) and (aDir[i]='\') then //lose trailing slash
    System.Delete(aDir,i,1);

  result:=FindConnectionInt(aDir);
  if result=0 then
    if AdsConnect(PChar(aDir),@result)=AE_SUCCESS then
      ConnectionList.AddObject(aDir,TObject(result))
    else
      result:=0;
end;

{TAdsConnectionList.DoLoginConnection *****************************************}
function TAdsConnectionList.DoLoginConnection(const aDatabaseName:string;
                                              UseALS,UseADS:boolean;
                                              var ConnectionHandle:ADSHANDLE;
                                              var ErrorCode:UNSIGNED32):boolean;
var
  i:integer;
  aDir:string;
  usOption:UNSIGNED16;
begin
  aDir:=Uppercase(aDatabaseName);
  i:=Length(aDir);
  if (i>0) and (aDir[i]='\') then //lose trailing slash
    System.Delete(aDir,i,1);

  FSync.Enter;
  try
    ConnectionHandle:=FindConnectionInt(aDir);
    if ConnectionHandle=0 then
      begin
        if UseALS then
          usOption:=ADS_LOCAL_SERVER
        else
          usOption:=0;
        if UseADS then
          usOption:=usOption+ADS_REMOTE_SERVER;

        ErrorCode:=AdsConnect26(pchar(aDir),usOption,@ConnectionHandle);
        if ErrorCode=AE_SUCCESS then
          begin
            ConnectionList.AddObject(aDir,TObject(ConnectionHandle));
            result:=true;
          end
        else
          result:=false;
      end
    else
      result:=true;

  finally
    FSync.Leave;
  end;
end;

{TAdsConnectionList.FindConnection ********************************************}
function TAdsConnectionList.FindConnection(const aDatabaseName:string):ADSHANDLE;
begin
  FSync.Enter;
  try
    result:=FindConnectionInt(aDatabaseName);
  finally
    FSync.Leave;
  end;
end;


{TAdsConnectionList.FindConnectionInt *****************************************}
function TAdsConnectionList.FindConnectionInt(const aDatabaseName:string):ADSHANDLE;
var
  i:integer;
  aDir:string;
begin
  aDir:=Uppercase(aDatabaseName);
  i:=Length(aDir);
  if (i>0) and (aDir[i]='\') then //lose trailing slash
    System.Delete(aDir,i,1);

  result:=0;
  i:=ConnectionList.IndexOf(aDir);
  if i>-1 then
    result:=ADSHANDLE(ConnectionList.Objects[i]);
end;

{TAdsConnectionList.CloseConnection *******************************************}
function TAdsConnectionList.CloseConnection(const aDatabaseName:string):boolean;
var
  i:integer;
  aDir:string;
begin
  aDir:=Uppercase(aDatabaseName);
  i:=Length(aDir);
  if (i>0) and (aDir[i]='\') then //lose trailing slash
    System.Delete(aDir,i,1);

  FSync.Enter;
  try
    i:=ConnectionList.IndexOf(aDir);
    if i>-1 then
      begin
        AdsDisconnect(ADSHANDLE(ConnectionList.Objects[i]));
        ConnectionList.Delete(i);
        result:=true;
      end
    else
      result:=true;
  finally
    FSync.Leave;
  end;
end;

initialization

  GlobalAdsConnectionList:=TAdsConnectionList.Create;

finalization

  GlobalAdsConnectionList.Free;

end.
