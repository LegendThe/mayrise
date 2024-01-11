unit addbcomb;

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
  AdDBWFoc, { TAdrockDBWhenFocused class }
  Trim,
  Forms, Dialogs, StdCtrls, DB, DBCtrls;

type
  TAdrockDBComboChange = (ccClosed, ccOpen);

  TAdrockDBComboBoxCustom = class(TDBComboBox)
  private
    { Private declarations }
    fOnClick               : TNotifyEvent;
    fAllowSpacesAtStart    : Boolean;

    fTriggerChange : TAdrockDBComboChange;
    fWhenFocused   : TAdrockDBWhenFocused;
    fComboOpen     : Boolean;
    fDoIncSearch   : Boolean;
    OpenItemIndex  : Integer;
    LastItemIndex  : Integer;
    SelectionChanges  :Integer;
    BestMatch      : String;

    procedure FindNearest(FindWhat : String);
  protected
    { Protected declarations }
    FOnChange: TNotifyEvent;

    procedure   KeyPress(var Key: Char); override;
    procedure   Change; override;
    procedure   InheritedChange(Sender : TObject);
    procedure   CNCommand(var Message: TWMCommand); message CN_COMMAND;
    procedure   CMExit(var Message: TCMExit); message  CM_EXIT;
    procedure   CMEnter(var Message: TCMExit); message CM_ENTER;
    procedure   Notification(AComponent: TComponent;  Operation: TOperation); override;
  public
    { Public declarations }
    Constructor Create(AOwner : TComponent);  override;
    Destructor  Destroy; override;

    Property DoIncrementalSearch   : Boolean
             Read     fDoIncSearch
             Write    fDoIncSearch
             Default  TRUE;

    Property TriggerChange : TAdrockDBComboChange
             Read     fTriggerChange
             Write    fTriggerChange;

    property OnChange: TNotifyEvent
             Read     FOnChange
             Write    FOnChange;

    property OnClick  : TNotifyEvent
             Read FOnClick
             Write fonClick;

    Property WhenFocused  : TAdrockDBWhenFocused
             Read    fWhenFocused
             Write   fWhenFocused;

    Property  AllowSpacesAtStart : Boolean
              Read    fAllowSpacesAtStart
              Write   fAllowSpacesAtStart
              default TRUE;
  end;

  TAdrockDBComboBox = class(TAdrockDBComboBoxCustom)
  published
    { Published declarations }
    Property WhenFocused;
    Property DoIncrementalSearch;
    Property TriggerChange;
    Property OnChange;
    property OnClick;
    Property AllowSpacesAtStart;
  end;

implementation

Constructor TAdrockDBComboBoxCustom.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  Inherited OnChange    := InheritedChange;
  fWhenFocused          := TAdrockDBWhenFocused.Create(Self);
  fDoIncSearch          := TRUE;
  fComboOpen            := FALSE;
  fAllowSpacesAtStart   := TRUE;
end;

Destructor TAdrockDBComboBoxCustom.Destroy;
begin
  fWhenFocused.Free;
  fWhenFocused := NIL;
  Inherited Destroy;
end;

{ lets see if there is something to do? }
procedure TAdrockDBComboBoxCustom.Change;
begin
  if (Style = csDropDown) and (DoIncrementalSearch = TRUE) then
     FindNearest(Text) ;
  if Assigned(FOnChange) then
     FOnChange(Self);
  inherited Change;
end;

{ lets see if there is something to do? }
procedure TAdrockDBComboBoxCustom.InheritedChange(Sender : TObject);
begin
  if (Style = csDropDown) and (DoIncrementalSearch = TRUE) then
     FindNearest(Text) ;
end;

{************************************************************************************************************************}
{* Gets called when the user is about to exit the control                                                               *}
{************************************************************************************************************************}
procedure TAdrockDBComboBoxCustom.CMExit(var Message: TCMExit);
begin
  if (AllowSpacesAtStart = FALSE) and (Text > '') and (Text[1] = ' ') then
     Text := LeftTrimString(Text);
  fWhenFocused.OnExit;
  Inherited;
end;

procedure TAdrockDBComboBoxCustom.CMEnter(var Message: TCMExit);
begin
  Inherited;
  fWhenFocused.OnEnter;
  BestMatch := Text;
end;

procedure TAdrockDBComboBoxCustom.FindNearest(FindWhat : String);
Var
 Pos : Integer;
begin
  { If the datasource or dataset not setup or table query closed then exit }
  if (Items.Count = 0) then
    exit;

  Pos := 0;
  BestMatch := '';
  While Pos < Items.Count do
    begin
      if (CompareText(FindWhat, Items[Pos]) <= 0) then
        begin
          BestMatch := Items[pos];
          Break;
        end;
      Inc(Pos);
    end;
end;

{ slightly modified CNCommand handler }
procedure TAdrockDBComboBoxCustom.CNCommand(var Message: TWMCommand);
begin
  case Message.NotifyCode of
    CBN_DROPDOWN: { in this case only, we will take over }
      begin
        fComboOpen := TRUE;
        OpenItemIndex := ItemIndex;
        LastItemIndex := ItemIndex;
        SelectionChanges := 0;
        inherited;
      end;
    CBN_CLOSEUP:
      begin
        inherited;
        if (TriggerChange = ccClosed) then
          begin
             if (SelectionChanges > 0) then
               begin
                  if (Assigned(fOnClick)) then
                    fOnClick(Self);
                  Change;
               end;
          end;
        fComboOpen := FALSE;
      end;
    CBN_SELCHANGE: { in this case only, we will take over }
      begin
        Text := Items[ItemIndex];
        if (TriggerChange = ccOpen) or (fComboOpen = FALSE) then
          begin
           if (Assigned(fOnClick)) then
             fOnClick(Self);
            Change;
          end
        else
         Inc(SelectionChanges);
        LastItemIndex := ItemIndex;
      end;
  else             { let mom handle the rest }
      inherited;
  end;
end;

procedure TAdrockDBComboBoxCustom.Notification(AComponent: TComponent;  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (fWhenFocused <> NIL) and (WhenFocused.FocusLabel <> nil) and
    (AComponent = WhenFocused.FocusLabel) then
      WhenFocused.FocusLabel := nil;
end;

procedure TAdrockDBComboBoxCustom.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  if (Key = ' ') and (AllowSpacesAtStart = FALSE) and (SelStart = 0) then
    Key := #0;
end;


end.
