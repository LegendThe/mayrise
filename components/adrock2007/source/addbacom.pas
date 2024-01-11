unit addbacom;

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
  StdCtrls, {DsgnIntf, }AdDBComb, AdString, dbctrls;

type
  TAdrockDBAutoCompletionComboBoxOption  = (cboItemMustExist, cboAllowBlank);
  TAdrockDBAutoCompletionComboBoxOptions  = set of TAdrockDBAutoCompletionComboBoxOption;
  TOnTAdrockDBAutoCompletionComboBoxComplete = procedure (Sender: TObject; Key:Word; var CompleteWith:String;
       var DoComplete:Boolean) of object;

  TAdrockDBAutoCompletionComboBox = class(TAdrockDBComboBox)
  private
    FComplete   : Boolean;
    FKey        : Word;
    FMinLength  : Word;
    FOnComplete : TOnTAdrockDBAutoCompletionComboBoxComplete;
    fOptions    : TAdrockDBAutoCompletionComboBoxOptions;
    procedure SetComplete(value:Boolean);
    procedure SetMinLength(value:Word);
  public
    OldHintHidePause:Integer;
    constructor Create(aOwner : TComponent); override;
    Destructor  Destroy; override;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure CMExit(Var message : TCMExit); message CM_EXIT;
    procedure Change; override;
  published
    property Complete : Boolean read FComplete write SetComplete;
    property MinLengthComplete : Word read FMinLength write SetMinLength;
    Property Options    : TAdrockDBAutoCompletionComboBoxOptions
             Read  fOptions
             Write fOptions;
    property OnComplete : TOnTAdrockDBAutoCompletionComboBoxComplete read FOnComplete write FOnComplete;
  end;


implementation

{ TAdrockDBAutoCompletionComboBox }

constructor TAdrockDBAutoCompletionComboBox.create(aOwner : Tcomponent);
begin
  inherited create(aOwner);
  FComplete:=True;
  FKey:=0;
  FMinLength:=0;
end;

Destructor TAdrockDBAutoCompletionComboBox.Destroy;
begin
  Inherited Destroy;
end;

procedure TAdrockDBAutoCompletionComboBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  Inherited KeyDown(Key,Shift);
  FKey:=Key;
end;

procedure TAdrockDBAutoCompletionComboBox.Change;
  var tmp:string;
      Pos  : Integer;
      {$ifndef VER90}
      fLen : Integer;
      {$endif}
      DoIt:boolean;
begin
   inherited Change;

   if (csDesigning in ComponentState) then
     exit;
     
   if (FComplete) and ((Style=csDropDown) or (Style=csSimple)) then
   if (FKey<>8) and (FKey<>46) and (length(text)>=FMinLength) and (Items.Count>0) then
    begin
      tmp:=uppercase(text);
      {$ifndef VER90}
      fLen := Length(tmp);
      {$endif}
      for Pos:=0 to Items.count-1 do
      begin
        if tmp=uppercase(copy(Items.strings[Pos],1,length(tmp))) then
        begin
          tmp:=copy(Items.strings[Pos],length(tmp)+1,length(Items.strings[Pos])-length(tmp));
          DoIt:=true;
          if assigned(FOnComplete) then
            FOnComplete(Self,FKey,tmp,DoIt);
          if Doit then
          begin
            {$ifNdef VER90}
            text:=text+tmp;
            selstart :=flen;
            sellength:=Length(Text)-fLen;
            {$endif}
          end;
          break;
        end;
      end;
    end;
end;

procedure TAdrockDBAutoCompletionComboBox.SetComplete(value:Boolean);
begin
  FComplete:=value;
end;

procedure TAdrockDBAutoCompletionComboBox.SetMinLength(value:Word);
begin
  FMinLength:=value;
end;

procedure TAdrockDBAutoCompletionComboBox.CMExit(Var message : TCMExit);
Var
  OK : Boolean;
begin
  OK := TRUE;
  if (cboItemMustExist in Options) then
   if (Text = '') and (cboAllowBlank in Options) then
     Ok := TRUE
   else if (Text = '') then
     Ok := FALSE
   else if (Items.Indexof(text) = -1) then
     OK := FALSE;
  if (OK = FALSE) then
    begin
      ShowMessage('You must select an item from the list!');
      SetFocus;
    end
  else
    inherited CMExit(Message);
end;

end.
