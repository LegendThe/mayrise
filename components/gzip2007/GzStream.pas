unit GzStream;

interface

uses
  Classes, GzIO;

type
  TGzFileStream=class(TStream)
  private
    SrcFile:gzFile;
    fUncompressedSize:integer;
  public
    constructor Create(const FileName: string);
    destructor Destroy; override;
    function Read(var Buffer; Count: Longint): Longint; override;
    function Write(const Buffer; Count: Longint): Longint; override;
    function Seek(Offset: Longint; Origin: Word): Longint; override;
    property UncompressedSize:integer read fUncompressedSize;
  end;

implementation

uses
  SysUtils, Zutil;

{******************************************************************************}
{ TGzFileStream ***************************************************************}
{******************************************************************************}

{TGzFileStream.Create *********************************************************}
constructor TGzFileStream.Create(const FileName: string);
var
  LenStream:TFileStream;
begin
  SrcFile:=GzOpen(FileName,'r',0);
  if SrcFile=nil then
{$IFDEF VER150}
    raise Exception.Create('Error Opening '+FileName);
{$ELSE}
  {$IFDEF VER185}
    raise Exception.Create('Error Opening '+FileName);
  {$ELSE}
    raise EFOpenError.Create('Error opening '+FileName);
  {$ENDIF}
{$ENDIF}

  try
    LenStream:=TFileStream.Create(FileName,fmOpenRead or fmShareDenyNone);
    //Last 4 bytes is uncompressed file size
    LenStream.Seek(-4,soFromEnd);
    LenStream.Read(fUncompressedSize,4);
    LenStream.Free;
  except
  end;
end;

{TGzFileStream.Destroy ********************************************************}
destructor TGzFileStream.Destroy;
begin
  if SrcFile<>nil then
    GzClose(SrcFile);
end;

{TGzFileStream.Read ***********************************************************}
function TGzFileStream.Read(var Buffer; Count: Longint): Longint;
begin
  Result:=GzRead(SrcFile,voidp(@Buffer),Count);
  if Result = -1 then
    Result := 0;
end;

{TGzFileStream.Write **********************************************************}
function TGzFileStream.Write(const Buffer; Count: Longint): Longint;
begin
  raise EStreamError.Create('Not allowed to write to a GzStream');
end;

{TGzFileStream.Seek ***********************************************************}
function TGzFileStream.Seek(Offset: Longint; Origin: Word): Longint;
begin
  Result:=GzSeek(SrcFile,Offset,Origin);
end;

end.
