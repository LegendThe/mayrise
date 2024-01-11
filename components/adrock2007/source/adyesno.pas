unit AdyesNo;

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
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, AdCombo;

type
  TAdrockYesNoComboChange = (ccClosed, ccOpen);
  TAdrockYesNoComboBox = class(TAdrockComboBox)
  private
    { Private declarations }

    fTriggerChange : TAdrockYesNoComboChange;
    fComboOpen     : Boolean;
    fDoIncSearch   : Boolean;
    OpenItemIndex  : Integer;
    InsideSetValue : Boolean;
    fValue         : Boolean;
    fTrue          : String;
    fFalse         : String;
    fNothing             : Boolean;

    procedure SetupItems;
    procedure FindNearest(FindWhat : String);
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMEnter(var Message: TCMExit); message CM_ENTER;
  protected
    { Protected declarations }
    fOnValueChangedEvent : TNotifyEvent;

    Constructor Create(AOwner : TComponent);  override;
    procedure   Change; override;
    procedure   Loaded; override;

    Procedure SetValue(NewValue : Boolean);
    Procedure SetTRUE(NewValue : String);
    Procedure SetFALSE(NewValue : String);
  public
    { Public declarations }
    BestMatch      : String;
    BestMatchIndex : Integer;

    Property OnValueChangedEvent : TNotifyEvent read fOnValueChangedEvent write fOnValueChangedEvent;
  published
    { Published declarations }

    Property DoIncrementalSearch   : Boolean               Read fDoIncSearch         Write fDoIncSearch   default TRUE;
    { All the properties below are to remove standard properties from the object inspector }
    Property TriggerChange : TAdrockYesNoComboChange read fTriggerChange write fTriggerChange;
    { New Event when the user selects a color }
    Property TextTrue  : String     read fTrue     Write SetTrue;
    Property TextFalse : String     read fFalse    Write SetFalse;
    Property Value     : Boolean    read fValue    Write SetValue;
    Property Sorted default TRUE;
    Property Items  : Boolean read fNothing;
  end;

procedure Register;

implementation

Constructor TAdrockYesNoComboBox.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  Sorted        := TRUE;
  fDoIncSearch  := TRUE;
  fComboOpen    := FALSE;
  fTrue         := 'True';
  fFalse        := 'False';
end;

procedure TAdrockYesNoComboBox.Loaded;
begin
  inherited Loaded;
  SetupItems;
  Setvalue(Value);
end;

procedure TAdrockYesNoComboBox.SetupItems;
begin
  Inherited Items.Clear;
  Inherited Items.Add(TextTrue);
  Inherited Items.Add(TextFalse);
end;

Procedure TAdrockYesNoComboBox.SetTRUE(NewValue : String);
begin
  fTrue := NewValue;
  SetupItems;
  Setvalue(Value);
end;

Procedure TAdrockYesNoComboBox.SetFALSE(NewValue : String);
begin
  fFalse := NewValue;
  SetupItems;
  Setvalue(Value);
end;

Procedure TAdrockYesNoComboBox.SetValue(NewValue : Boolean);
begin
{  if (fValue <> NewValue) then}
 if (InsideSetValue = FALSE) then
  begin
    InsideSetValue := TRUE;
    fValue := NewValue;
    if (fValue = TRUE) then
      begin
        text := TextTrue;
        Inherited ItemIndex := Inherited Items.IndexOf(TextTrue);
        BestMatch := TextTrue;
        BestMatchIndex := ItemIndex;
      end
    else
      begin
        text := TextFalse;
        Inherited ItemIndex := Inherited Items.IndexOf(TextFalse);
        BestMatch := TextTrue;
        BestMatchIndex := ItemIndex;
     end;
    if (Assigned(FOnValueChangedEvent)) then
      fOnValueChangedEvent(Self);
    InsideSetValue := FALSE;
  end;
end;

{ lets see if there is something to do? }
procedure TAdrockYesNoComboBox.Change;
begin
  if (Style = csDropDown) and (DoIncrementalSearch = TRUE) then
     FindNearest(Text) ;
end;

{************************************************************************************************************************}
{* Gets called when the user is about to exit the control                                                               *}
{************************************************************************************************************************}
procedure TAdrockYesNoComboBox.CMExit(var Message: TCMExit);
begin
  Inherited;
  if (Text <> '') and (DoIncrementalSearch = TRUE) then
    begin
      if (Style = csDropDown) then
        Text := BestMatch
      else
        ItemIndex := BestMatchIndex;
      Value := (TextTrue = Text);
    end;
end;

procedure TAdrockYesNoComboBox.CMEnter(var Message: TCMEnter);
begin
  Inherited;
  if (Text = '') then
   Text := TextTrue;
  if (Style <> csDropDown) then { This will set the text property }
     ItemIndex := Inherited Items.Indexof(Text);
  BestMatch := Text;
  BestMatchIndex := Itemindex;
  if (Text = TextTrue) then
    fValue := TRUE
  else
    fValue := FALSE;
end;


procedure TAdrockYesNoComboBox.FindNearest(FindWhat : String);
Var
 Pos : Integer;
begin
  { If the datasource or dataset not setup or table query closed then exit }
  if (Inherited Items.Count = 0) then
    exit;

  Pos := 0;
  BestMatch := '';
  BestMatchIndex := -1;
  While Pos < Inherited Items.Count do
    begin
      if (CompareText(FindWhat, Inherited Items[Pos]) <= 0) then
        begin
          BestMatch := Inherited Items[pos];
          BestMatchIndex := Pos;
          if (Inherited Items[Pos] = TextTrue) then
            fValue := TRUE
          else
            fValue := FALSE;
          Break;
        end;
      Inc(Pos);
    end;
end;

{ slightly modified CNCommand handler }
procedure TAdrockYesNoComboBox.CNCommand(var Message: TWMCommand);
begin
  case Message.NotifyCode of
    CBN_DROPDOWN: { in this case only, we will take over }
      begin
        fComboOpen := TRUE;
        OpenItemIndex := ItemIndex;
        inherited;
      end;
    CBN_CLOSEUP: { in this case only, we will take over }
      begin
        fComboOpen := FALSE;
        if (ItemIndex <> OpenItemIndex) then
          begin
            if (Inherited Items[Inherited ItemIndex] = TextTrue) then
               Value := True
            else
               Value := FALSE;
          end;
        inherited;
      end;
    CBN_SELCHANGE: { in this case only, we will take over }
      begin
{        if (fComboOpen = FALSE) or (fTriggerChange = ccOpen) then
          Change;}
      end;
  else             { let mom handle the rest }
      inherited;
  end;
end;

procedure Register;
begin
  RegisterComponents('Adrock', [TAdrockYesNoComboBox]);
end;

end.
