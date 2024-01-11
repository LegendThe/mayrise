unit AdDriLst;

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

{**************************************************************************}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}
interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  filectrl, AdWFoc;
              
type
  TAdrockDriveComboBoxOK = (okFloppy, okFixed, okNetwork, okCDROM, okRAM);
  TAdrockDriveComboBoxOKSet = set of TAdrockDriveComboBoxOK;

  TAdrockDriveComboBoxAllowChangeEvent = Procedure (Sender : TObject; NewDrive : Char; var AllowChange : Boolean) of object;
  TAdrockDriveComboBoxErrorEvent = Procedure (Sender : TObject; NewDrive : Char; var ReSelectOldDrive : Boolean) of object;
  TAdrockDriveComboBoxCustom = class(TDriveComboBox)
  private    { Protected declarations }
    { Private declarations }
    fDrives               : TAdrockDriveComboBoxOKSet;
    fOnErrorEvent          : TAdrockDriveComboBoxErrorEvent;
    fOnAllowChange         : TAdrockDriveComboBoxAllowChangeEvent;
    fOnBeforeChange        : TNotifyEvent;
    fOnBeforeDataChange    : TnotifyEvent;
    fWhenFocused           : TAdrockWhenFocused;

    Procedure CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject; NewBackColor : TColor;
      Var fSavedBackColor : TColor);
    Procedure CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject; fSavedBackColor : TColor);

    Function  GetDrive : Char;
    Procedure SetDrive(NewDrive : Char);
  protected
    { Protected declarations }
    Procedure CMEnter(Var Message : TCMEnter);   message CM_ENTER;
    Procedure CMExit(Var Message : TCMExit);     message CM_EXIT;
    Procedure Loaded; override;
    procedure Notification(AComponent: TComponent;  Operation: TOperation); override;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    Destructor  Destroy;                     override;

    procedure   Click; override;
    Procedure   BeforeChange(Sender : TObject); virtual;
    Procedure   BeforeDataChange(Sender : TObject); virtual;

    procedure BuildList; override;

    Property  Drives : TAdrockDriveComboBoxOKSet
              Read    fDrives
              Write   fDrives
              default [okFloppy, okFixed, okNetwork, okCDROM, okRAM];

    Property  WhenFocused  : TAdrockWhenFocused
              Read    fWhenFocused
              Write   fWhenFocused;

    Property  OnBeforeDataChange : TNotifyEvent
              Read    fOnBeforeDataChange
              Write   fOnBeforeDataChange;

    Property  OnBeforeChange : TNotifyEvent
              Read    fOnBeforeChange
              Write   fOnBeforeChange;

    property  Drive: Char
              read    GetDrive
              write   SetDrive;

    Property  OnAllowChange : TAdrockDriveComboBoxAllowChangeEvent
              Read    fOnAllowChange
              Write   fOnAllowChange;

    Property  OnError : TAdrockDriveComboBoxErrorEvent
              Read    fOnErrorEvent
              Write   fOnErrorEvent;

  published
    { Published declarations }
  end;

  TAdrockDriveComboBox = class(TAdrockDriveComboBoxCustom)
  published
    { Published declarations }
    Property Align;
    Property WhenFocused;
    Property OnAllowChange;
    Property OnError;
    Property Drives;
  end;


implementation

Constructor TAdrockDriveComboBoxCustom.Create(Aowner : TComponent);
begin
  Inherited Create(AOwner);

  fDrives:=  [okFloppy, okFixed, okNetwork, okCDROM, okRAM];

  fWhenFocused            := TAdrockWhenFocused.Create(Self);
  fWhenFocused.OnUnknownOwnerEnter := CustomOnEnterWhenFocusedHandle;
  fWhenFocused.OnUnknownOwnerExit  := CustomOnExitWhenFocusedHandle;
end;

Destructor TAdrockDriveComboBoxCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

Procedure TAdrockDriveComboBoxCustom.Loaded;
begin
  inherited Loaded;
end;

Procedure TAdrockDriveComboBoxCustom.CMEnter(Var Message : TCMEnter);
begin
  Inherited;
  fWhenFocused.OnEnter;
end;

Procedure TAdrockDriveComboBoxCustom.CMExit(Var Message : TCMExit);
begin
  fWhenFocused.OnExit;
  Inherited;
end;

Procedure TAdrockDriveComboBoxCustom.BeforeChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeChange)) then
    fOnBeforeChange(Sender);
end;

Procedure TAdrockDriveComboBoxCustom.BeforeDataChange(Sender : TObject);
begin
  if (Assigned(fOnBeforeDataChange)) then
    fOnBeforeDataChange(Sender);
end;

Procedure TAdrockDriveComboBoxCustom.CustomOnEnterWhenFocusedHandle(Sender : TObject; fOwner : TObject;
    NewBackColor : TColor; Var fSavedBackColor : TColor);
begin
  fSavedBackColor := Color;
  Color := NewBackColor;
end;

Procedure TAdrockDriveComboBoxCustom.CustomOnExitWhenFocusedHandle(Sender : TObject; fOwner : TObject;
  fSavedBackColor : TColor);
begin
  Color := fSavedBackColor;
end;

procedure TAdrockDriveComboBoxCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

Function  TAdrockDriveComboBoxCustom.GetDrive : Char;
begin
  result := Inherited Drive;
end;

Procedure TAdrockDriveComboBoxCustom.SetDrive(NewDrive : Char);
Var
 OldDrive             : Char;
 Pos                  : Integer;
 AllowChange          : Boolean;
 RestoreOriginalDrive : Boolean;
begin
  { Save the original drive letter }
  OldDrive := Inherited Drive;

  { Check to see if we are allowed to change to the selected drive }
  AllowChange := TRUE;
  if (Assigned(fOnAllowChange)) then
    fOnAllowChange(Self, NewDrive, AllowChange);

  { IF we are not allowed to change to the drive then restore the original drive letter and exit }
  if (AllowChange = FALSE) then
    begin
      inherited Drive := OldDrive;
      for Pos := 0 to Items.Count-1 do
        if (upcase(Items.Strings[pos][1]) = upcase(OldDrive)) then
         begin
          ItemIndex := Pos;
          break;
         end;
      exit;
    end;

  { Attempt to set the drive }
  try
    inherited Drive := NewDrive;
  except;
    { An Error has occurred, set the restore flag to true, the developer can override this }
    RestoreOriginalDrive := TRUE;

    { If the developer has provided an error routine call it }
    if (Assigned(fOnErrorEvent)) then
      fOnErrorEvent(Self, NewDrive, RestoreOriginalDrive);

    { If we should restore the drive to the original then do it }
    if (RestoreOriginalDrive = TRUE) then
      inherited Drive := OldDrive;
  end;
end;

procedure TAdrockDriveComboBoxCustom.Click;
begin
  if ItemIndex >= 0 then
    Drive := Items[ItemIndex][1];
end;


function VolumeID(DriveChar: Char): string;
var
  OldErrorMode: Integer;
  {$ifdef WIN32}
  NotUsed, VolFlags: DWORD;
  {$else}
  NotUsed, VolFlags: INteger;
  {$endif}
  Buf: array [0..1023] of Char;

{$ifNdef WIN32}
function VolumeID16Bit(DriveChar: Char): string;
var
  SearchMask: string[7];
  SearchRec: TSearchRec;
  DotPos: Byte;
  OldErrorMode: Word;
begin
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    SearchMask := 'c:\*.*';
    SearchMask[1] := DriveChar;
    if FindFirst(SearchMask, faVolumeID, SearchRec) = 0 then
    begin
      Result := SearchRec.Name;
      DotPos := Pos('.', Result);
      if DotPos <> 0 then
        System.Delete(Result, DotPos, 1);
      if DriveChar < 'a' then
        Result := ': [' + UpperCase(Result) + ']'
      else
        Result := ': [' + LowerCase(Result) + ']'
    end
    else Result := '';
  finally
    SetErrorMode(OldErrorMode);
  end;
end;
{$EndIf}
begin

  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    Buf[0] := #$00;

    {$ifdef WIN32}
    if GetVolumeInformation(PChar(DriveChar + ':\'), Buf, DWORD(sizeof(Buf)),
      nil, NotUsed, VolFlags, nil, 0) then
      SetString(Result, Buf, StrLen(Buf))
    else Result := '';
    if DriveChar < 'a' then
      Result := AnsiUpperCase(Result)
    else
      Result := AnsiLowerCase(Result);

    {$else}
      Result := VolumeID16Bit(DriveChar);
      if DriveChar < 'a' then
        Result := UpperCase(Result)
      else
        Result := LowerCase(Result);
    {$endif}

    Result := Format('[%s]',[Result]);
  finally
    SetErrorMode(OldErrorMode);
  end;
end;

{$ifNdef WIN32}
function NetworkVolume(DriveChar: Char): string;
const
  LocalName: array[0..2] of Char = 'D:'#0;
var
  BufferSize: Word;
  TempName: array[0..128] of Char;
begin
  LocalName[0] := DriveChar;
  BufferSize := SizeOf(TempName) - 1;
  if WNetGetConnection(LocalName, TempName, @BufferSize) = WN_SUCCESS then
  begin
    if DriveChar < 'a' then
      Result := ': ' + AnsiUpperCase(StrPas(TempName))
    else
      Result := ': ' + AnsiLowerCase(StrPas(TempName));
  end
  else
    Result := VolumeID(DriveChar);
end;

function IsCDROM(DriveNum: Integer): Boolean; assembler;
asm
  MOV   AX,1500h { look for MSCDEX }
  XOR   BX,BX
  INT   2fh
  OR    BX,BX
  JZ    @Finish
  MOV   AX,150Bh { check for using CD driver }
  MOV   CX,DriveNum
  INT   2fh
  OR    AX,AX
  @Finish:
end;

function IsRAMDrive(DriveNum: Integer): Boolean; assembler;
var
  TempResult: Boolean;
asm
  MOV   TempResult,False
  PUSH  DS
  MOV   BX,SS
  MOV   DS,BX
  SUB   SP,0200h
  MOV   BX,SP
  MOV   AX,DriveNum
  MOV   CX,1
  XOR   DX,DX
  INT   25h  { read boot sector }
  ADD   SP,2
  JC    @ItsNot
  MOV   BX,SP
  CMP   BYTE PTR SS:[BX+15h],0F8h  { reverify fixed disk }
  JNE   @ItsNot
  CMP   BYTE PTR SS:[BX+10h],1  { check for single FAT }
  JNE   @ItsNot
  MOV   TempResult,True
  @ItsNot:
  ADD   SP,0200h
  POP   DS
  MOV   AL, TempResult
end;

function FindDriveType(DriveNum: Integer): TDriveType;
begin
  Result := TDriveType(GetDriveType(DriveNum));
  if (Result = dtFixed) or (Result = dtNetwork) then
  begin
    if IsCDROM(DriveNum) then Result := dtCDROM
    else if (Result = dtFixed) then
    begin
        { do not check for RAMDrive under Windows NT }
      if ((GetWinFlags and $4000) = 0) and IsRAMDrive(DriveNum) then
        Result := dtRAM;
    end;
  end;
end;

{$Else}
function NetworkVolume(DriveChar: Char): string;
var
  Buf: Array [0..1024] of Char;
  DriveStr: array [0..3] of Char;
  BuffSize: DWORD;
begin
  BuffSize := sizeof(Buf);
  DriveStr[0] := UpCase(DriveChar);
  DriveStr[1] := ':';
  DriveStr[2] := #0;
  if WNetGetConnection(DriveStr, Buf, BuffSize) = WN_SUCCESS then
  begin
    SetString(Result, Buf, BuffSize);
    if DriveChar < 'a' then
      Result := AnsiUpperCase(Result)
    else
      Result := AnsiLowerCase(Result);
   end
  else
    Result := VolumeID(DriveChar);
end;
{$Endif}



procedure TAdrockDriveComboBoxCustom.BuildList;
var
  DriveNum: Integer;
  DriveChar: Char;
  DriveType: TDriveType;
  DriveBits: set of 0..25;
{  Bit        : Longint;}

  procedure AddDrive(const VolName: string; Obj: TObject);
  begin
    Items.AddObject(Format('%s: %s',[DriveChar, VolName]), Obj);
  end;

begin
  { fill list }
  Clear;

  {$ifNDef Win32}
  for DriveNum := 0 to 25 do
  begin
    DriveType := FindDriveType(DriveNum);
    DriveChar := Chr(DriveNum + ord('a'));
    if TextCase = tcUpperCase then
      DriveChar := Upcase(DriveChar);
  {$else}
  Integer(DriveBits) := GetLogicalDrives;
  for DriveNum := 0 to 25 do
  begin
    if not (DriveNum in DriveBits) then
      Continue;

    DriveChar := Char(DriveNum + Ord('a'));
    DriveType := TDriveType(GetDriveType(PChar(DriveChar + ':\')));
    if TextCase = tcUpperCase then
      DriveChar := Upcase(DriveChar);
  {$endif}

    case DriveType of
      dtFloppy:   if (okFloppy in Drives) then
                     Items.AddObject(DriveChar + ':', FloppyBMP);
      dtFixed:    if (okFixed in Drives) then
                    AddDrive(VolumeID(DriveChar), FixedBMP);
      dtNetwork:  if (okNetwork in Drives) then
                    AddDrive(NetworkVolume(DriveChar), NetworkBMP);
      dtCDROM:    if (okCDROM in Drives) then
                    AddDrive(VolumeID(DriveChar), CDROMBMP);
      dtRAM:      if (okRAM in Drives) then
                    AddDrive(VolumeID(DriveChar), RAMBMP);
    end;
  end;
end;



end.
