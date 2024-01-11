unit adCBEdit;

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
{$ifdef Win32}
  Windows,
{$else}
  WinTypes, WinProcs,
{$endif}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, AdButEdt, AdString;

type
  TOnTAdrockAutoCompletionButtonEditComplete = procedure (Sender: TObject; Key:Word; var CompleteWith:String;
     var DoComplete:Boolean) of object;

  TAdrockAutoCompletionButtonEdit = class(TAdrockButtonEdit)
  private
    fAdrockStrings : TAdrockStrings;
    FComplete:Boolean;
    FKey:Word;
    FMinLength:Word;
    FOnComplete:TOnTAdrockAutoCompletionButtonEditComplete;
    procedure SetComplete(value:Boolean);
    procedure SetMinLength(value:Word);
  public
    OldHintHidePause:Integer;
    constructor Create(aOwner : TComponent); override;
    Destructor  Destroy; override;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure Change; override;
  published
    property AdrockStrings : TAdrockStrings read fAdrockStrings write fAdrockStrings;
    property Complete : Boolean read FComplete write SetComplete;
    property MinLengthComplete : Word read FMinLength write SetMinLength;
    property OnComplete : TOnTAdrockAutoCompletionButtonEditComplete read FOnComplete write FOnComplete;
  end;


implementation

{ TAdrockAutoCompletionButtonEdit }

constructor TAdrockAutoCompletionButtonEdit.create(aOwner : Tcomponent);
begin
  inherited create(aOwner);
  FComplete:=True;
  FKey:=0;
  FMinLength:=0;
end;

Destructor TAdrockAutoCompletionButtonEdit.Destroy;
begin
  Inherited Destroy;
end;

procedure TAdrockAutoCompletionButtonEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  Inherited KeyDown(Key,Shift);
  FKey:=Key;
end;

procedure TAdrockAutoCompletionButtonEdit.Change;
  var tmp:string;
      c,d:word;
      DoIt:boolean;
      fWorkStrings : TStrings;
begin
   inherited Change;
   if not (Assigned(fAdrockStrings)) then
     exit;
   fWorkStrings := fAdrockStrings.Strings;

   if (FComplete) then
   if (FKey<>8) and (FKey<>46) and (length(text)>=FMinLength) and (fWorkStrings.Count>0) then
    begin
      tmp:=uppercase(text);
      for c:=0 to fWorkStrings.count-1 do
      begin
        if tmp=uppercase(copy(fWorkStrings.strings[c],1,length(tmp))) then
        begin
          d:=length(tmp);
          tmp:=copy(fWorkStrings.strings[c],length(tmp)+1,length(fWorkStrings.strings[c])-length(tmp));
          DoIt:=true;
          if assigned(FOnComplete) then
            FOnComplete(Self,FKey,tmp,DoIt);
          if Doit then
          begin
            text:=text+tmp;
            selstart:=d;
            sellength:=length(text)-d;
          end;
          break;
        end;
      end;
    end;
end;

procedure TAdrockAutoCompletionButtonEdit.SetComplete(value:Boolean);
begin
  FComplete:=value;
end;

procedure TAdrockAutoCompletionButtonEdit.SetMinLength(value:Word);
begin
  FMinLength:=value;
end;

end.
