unit adwfoc;

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
{**                                                                      **}
{**************************************************************************}
{** This control is the base class for all the Adrock Controls that are  **}
{** based on TEdit Fields. It add the following enhancements.            **}
{**                                                                      **}
{** When the control gets the focus the back color changes, and when the **}
{** focus leaves the original color is restored, so as you move around   **}
{** the fields the current field is always highlighted.                  **}
{**************************************************************************}
interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, {dsgnIntf,}

  {$IFDEF UNREGISTERED}
  ShellAPI,
  Extctrls,
  Buttons, { This is for the NAG screen ONLY }
  {$ENDIF}
  AdFStyl, { TAdrockFontStyle - Handles font style and Color }
  StdCtrls;

{ This lines opens the file, which contains a global variable called }
{ ComponentVersion which holds the version number for the component  }
{ $ I *.VER}
Const
  ComponentVersion = 1.60;

type
  TAdrockUnknownOwnerEnter = Procedure (Sender : TObject; fOwner : TObject; NewBackColor : TColor;
     Var fSavedBackColor : TColor) of object;
  TAdrockUnknownOwnerExit = Procedure (Sender : TObject; fOwner : TObject; fSavedBackColor : TColor) of object;

  TAdrockWhenFocusedGlobalStatus = (gsGlobalDisableAll, gsGlobalDisabled, gsGlobalEnabled);

  TAdrockWhenFocusedGlobal = class(TComponent)
  Private
    Function  ReadFontSize : Integer;
    Procedure SetFontSize(NewSize : Integer);

    Function  ReadEnabled : Boolean;
    procedure SetEnabled(NewValue : Boolean);
    Function  ReadBackColor : TColor;
    procedure SetBackColor(NewValue : TColor);
    Function  ReadFocusLabelStyle : TAdrockFontColorStyle;
    Procedure SetFocusLabelStyle(NewValue : TAdrockFontColorStyle);
    Function  ReadGlobalStatus : TAdrockWhenFocusedGlobalStatus;
    Procedure SetGlobalStatus(NewValue : TAdrockWhenFocusedGlobalStatus);
    Procedure SetUseBackColorOnCheckBoxAndRadioButtons(NewValue : Boolean);
    Function  ReadUseBackColorOnCheckBoxAndRadioButtons : Boolean;
  Public
    Constructor Create(AOwner : TComponent); override;
    Destructor  Destroy; override;
  Published
    Property Enabled   : Boolean
             Read    ReadEnabled
             Write   SetEnabled;

    Property FontSize : Integer
             Read    ReadFontSize
             Write   SetFontSize
             default 0;

    Property BackColor : TColor
             Read    ReadBackColor
             Write   SetBackColor;

    Property FocusLabelStyle : TAdrockFontColorStyle
             Read    ReadFocusLabelStyle
             Write   SetFocusLabelStyle;

    Property GlobalStatus  : TAdrockWhenFocusedGlobalStatus
             Read    ReadGlobalStatus
             Write   SetGlobalStatus;

    Property UseBackColorOnCheckBoxAndRadioButtons : Boolean
             read    ReadUseBackColorOnCheckBoxAndRadioButtons
             Write   SetUseBackColorOnCheckBoxAndRadioButtons;
  end;


  TAdrockWhenFocused = class(TPersistent)
  private    { Protected declarations }
    { Private declarations }
    fOwner                 : TComponent;

    OriginalFontSize       : Integer;
    fOnUnknownOwnerEnter   : TAdrockUnknownOwnerEnter;
    fOnUnknownOwnerExit    : TAdrockUnknownOwnerExit;
    fFontColorStyles       : TAdrockFontColorStyle;
    fSavedFontStyles       : TAdrockFontColorStyle;
    fUseBackColorOnCheckBoxAndRadioButtons : Boolean;
    fGlobalOverrideStatus  : Boolean;
    fFocusLabel            : TLabel;
    fEnabled               : Boolean;
    fFontSize              : Integer;

    fSavedBackColor        : TColor;
    fBackColor             : TColor;

    Function StoreEnabled : Boolean;
    Function StoreBackColor : Boolean;
    Function StoreFontSize : Boolean;
    Function StoreUseBackColorOnCheckBoxAndRadioButtons : Boolean;

    Procedure SetFocusLabel(NewFocusLabel : TLabel);
    Procedure SetBackColor(NewColor : TColor);
    Procedure SetFontSize(NewSize : Integer);
    Procedure SetEnabled(IsEnabled : Boolean);
    Procedure SetUseBackColorOnCheckBoxAndRadioButtons(NewValue : Boolean);
  protected
    { Protected declarations }
    Function  ReadFontSize : Integer;
    Function  ReadEnabled : Boolean;
    Function  ReadBackColor   : TColor;
    Function  ReadStyle   : TAdrockFontColorStyle;
    Function  ReadUseBackColorOnCheckBoxAndRadioButtons : Boolean;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); virtual;
    Destructor  Destroy;                     override;

    Procedure   OnEnter;
    Procedure   OnExit;

    Procedure  Assign(Source : TPersistent); override;
    Function   GetGlobalStatus : TAdrockWhenFocusedGlobalStatus;
    Procedure  SetGlobalStyle(fEnabled : Boolean; fBackColor, fFontColor : TColor;
                                       fFontStyle : TFontStyles; fFontSize : Integer);

    Procedure  SetGlobalStatus(Status : TAdrockWhenFocusedGlobalStatus);
    Procedure  SetGlobalOverrideStatus(OverrideStatus : Boolean);

    Function   GetVersion : String;
    Procedure  SetVersion(NewVersion : String);
  published
    { Published declarations }
    Property FontSize : Integer
             Read    ReadFontSize
             Write   SetFontSize
             Stored  StoreFontSize
             default 0;

    Property Version : String
             Read    GetVersion
             Write   SetVersion
             Stored  False;

    Property Enabled : Boolean
             Read    ReadEnabled
             Write   SetEnabled
             Stored  StoreEnabled
             Default TRUE;

    Property FocusLabel : TLabel
             Read    fFocusLabel
             Write   SetFocusLabel;

    Property UseBackColorOnCheckBoxAndRadioButtons : Boolean
             read    ReadUseBackColorOnCheckBoxAndRadioButtons
             Write   SetUseBackColorOnCheckBoxAndRadioButtons
             Stored  StoreUseBackColorOnCheckBoxAndRadioButtons
             Default False;

    Property BackColor : TColor
             Read    ReadBackColor
             Write   SetBackColor
             Stored  StoreBackColor
             Default clBtnHighlight;

    Property FocusLabelStyle : TAdrockFontColorStyle
             Read   ReadStyle
             Write  fFontColorStyles;
             
    Property OnUnknownOwnerEnter : TAdrockUnknownOwnerEnter
             Read fOnUnknownOwnerEnter
             Write fOnUnknownOwnerEnter;
    Property OnUnknownOwnerExit : TAdrockUnknownOwnerExit
             Read fOnUnknownOwnerExit
             Write fOnUnknownOwnerExit;
  end;

implementation

Var
 fGlobalBackColor       : TColor;
 fGlobalFontSize        : Integer;
 fGlobalEnabled         : Boolean;
 fGlobalStatus          : TAdrockWhenFocusedGlobalStatus;
 fGlobalFocusLabelStyle : TAdrockFontColorStyle;
 fGlobalUseBackColorOnCheckBoxAndRadioButtons : Boolean;

Constructor TAdrockWhenFocused.Create(Aowner : TComponent);
begin
  fOwner                 := AOwner;
  fEnabled               := TRUE;
  fBackColor             := clBtnHighlight;
  fFontSize              := 0;
  fGlobalStatus          := gsGlobalDisabled;
  fFontColorStyles       := TAdrockFontColorStyle.Create;
  fSavedFontStyles       := TAdrockFontColorStyle.Create;
  fGlobalOverrideStatus  := FALSE;
end;

Destructor TAdrockWhenFocused.Destroy;
begin
  fFontColorStyles.Free;
  fSavedFontStyles.Free;
  Inherited Destroy;
end;

{ Return the version of the component }
Function TAdrockWhenFocused.GetVersion : String;
begin
  Result := FormatFloat('#.00', ComponentVersion);
end;

Procedure TAdrockWhenFocused.SetVersion(NewVersion : String);
begin
  { Do nothing, who cares if the user types something into the version property }
end;

Procedure TAdrockWhenFocused.OnEnter;
begin
  if (Enabled =  TRUE) then
   begin
     if (fOwner is TEdit) then
       begin
          fSavedBackColor := (FOwner as TEdit).Color;
          (FOwner as TEdit).Color := BackColor;
          OriginalFontSize := (FOwner as TEdit).Font.Size;
          if (FontSize > 0) then
            (FOwner as TEdit).Font.Size := FontSize;
        end
     else if (fOwner is Tmemo) then
       begin
          fSavedBackColor := (FOwner as TMemo).Color;
          (FOwner as TMemo).Color := BackColor;
          OriginalFontSize := (FOwner as TMemo).Font.Size;
          if (FontSize > 0) then
            (FOwner as TMemo).Font.Size := FontSize;
        end
     else if (FOwner is TListBox) then
       begin
          fSavedBackColor := (FOwner as TListBox).Color;
          (FOwner as TListBox).Color := BackColor;
          OriginalFontSize := (FOwner as TListBox).Font.Size;
          if (FontSize > 0) then
            (FOwner as TListBox).Font.Size := FontSize;
        end
     else if (fOwner is TComboBox) then
       begin
          fSavedBackColor := (FOwner as TComboBox).Color;
          (FOwner as TComboBox).Color := BackColor;
          OriginalFontSize := (FOwner as TComboBox).Font.Size;
          if (FontSize > 0) then
            (FOwner as TComboBox).Font.Size := FontSize;
        end
     else
       if (Assigned(fOnUnknownOwnerEnter)) then
          fOnUnknownOwnerEnter(Self, FOwner, BackColor, fSavedBackColor);

     if (Assigned(fFocusLabel)) then
       begin
        fSavedFontStyles.FontStyle := fFocusLabel.Font.Style;
        fSavedFontStyles.FontColor := fFocusLabel.Font.Color;

        fFocusLabel.Font.Style := FocusLabelStyle.FontStyle;
        fFocusLabel.Font.Color := FocusLabelStyle.FontColor;
      end;
   end;
end;

Procedure TAdrockWhenFocused.OnExit;
begin
  if (Enabled = TRUE) then
   begin
    if (Assigned(fFocusLabel)) then
      begin
        fFocusLabel.Font.Style := fSavedFontStyles.FontStyle;
        fFocusLabel.Font.Color := fSavedFontStyles.FontColor;
      end;

     if (fOwner is TEdit) then
      begin
       (FOwner as TEdit).Color := fSavedBackColor;
       if (FontSize > 0) then
         (FOwner as TEdit).Font.Size := OriginalFontSize;
       end
     else if (fOwner is Tmemo) then
      begin
       (FOwner as Tmemo).Color := fSavedBackColor;
       if (FontSize > 0) then
         (FOwner as TMemo).Font.Size := OriginalFontSize;
       end
     else if (fOwner is TListBox) then
      begin
       (FOwner as TListBox).Color := fSavedBackColor;
       if (FontSize > 0) then
         (FOwner as TListBox).Font.Size := OriginalFontSize;
       end
     else if (FOwner is TComboBox) then
      begin
       (FOwner as TComboBox).Color := fSavedBackColor;
       if (FontSize > 0) then
         (FOwner as TComboBox).Font.Size := OriginalFontSize;
       end
     else
       if (Assigned(fOnUnknownOwnerExit)) then
          fOnUnknownOwnerExit(Self, FOwner, fSavedBackColor);
   end;
end;

Procedure TAdrockWhenFocused.SetFontSize(NewSize : Integer);
begin
  fFontSize := NewSize;
end;

Procedure TAdrockWhenFocused.SetBackColor(NewColor : TColor);
begin
  fBackColor := NewColor;
end;

Procedure TAdrockWhenFocused.SetEnabled(IsEnabled : Boolean);
begin
  fEnabled := IsEnabled;
end;

Procedure TAdrockWhenFocused.SetUseBackColorOnCheckBoxAndRadioButtons(NewValue : Boolean);
begin
  fUseBackColorOnCheckBoxAndRadioButtons := NewValue;
end;


Procedure TAdrockWhenFocused.SetFocusLabel(NewFocusLabel : TLabel);
begin
  fFocusLabel := NewFocusLabel;
  if (newFocusLabel <> nil) and (NewFocusLabel.FocusControl = nil) then
    NewFocusLabel.FocusControl := (fOwner as TWinControl);
end;

Function TAdrockWhenFocused.ReadEnabled : Boolean;
begin
  Result := fEnabled;
  if (fGlobalOverrideStatus = FALSE) then
    if (fGlobalStatus = gsGlobalDisableAll) then
      Result := FALSE
    else if (fGlobalStatus = gsGlobalEnabled) then
      Result := fGlobalEnabled;
end;

Function TAdrockWhenFocused.ReadBackColor : TColor;
begin
  Result := fBackColor;
  if (fGlobalOverrideStatus = FALSE) then
   if (fGlobalStatus = gsGlobalEnabled) then
    Result := fGlobalBackColor;
end;

Function TAdrockWhenFocused.ReadFontSize : Integer;
begin
  Result := fFontSize;
  if (fGlobalOverrideStatus = FALSE) then
   if (fGlobalStatus = gsGlobalEnabled) then
    Result := fGlobalFontSize;
end;

Function  TAdrockWhenFocused.ReadStyle : TAdrockFontColorStyle;
begin
  Result := fFontColorStyles;
  if (fGlobalOverrideStatus = FALSE) then
   if (fGlobalStatus = gsGlobalEnabled) then
    Result := fGlobalFocusLabelStyle;
end;

Function TAdrockWhenFocused.ReadUseBackColorOnCheckBoxAndRadioButtons : Boolean;
begin
  Result := fUseBackColorOnCheckBoxAndRadioButtons;
  if (fGlobalOverrideStatus = FALSE) then
   if (fGlobalStatus = gsGlobalEnabled) then
    Result := fGlobalUseBackColorOnCheckBoxAndRadioButtons; 
end;

Function  TAdrockWhenFocused.GetGlobalStatus : TAdrockWhenFocusedGlobalStatus;
begin
  Result := fGlobalStatus;
end;

Procedure TAdrockWhenFocused.SetGlobalStatus(Status : TAdrockWhenFocusedGlobalStatus);
begin
  fGlobalStatus := Status;
end;

Procedure TAdrockWhenFocused.SetGlobalOverrideStatus(OverrideStatus : Boolean);
begin
  fGlobalOverrideStatus := OverrideStatus;
end;

Procedure TAdrockWhenFocused.SetGlobalStyle(fEnabled : Boolean; fBackColor, fFontColor : TColor;
   fFontStyle : TFontStyles; fFontSize : Integer);
begin
  fGlobalEnabled := fEnabled;
  fGlobalBackColor := fBackColor;
  fGlobalFontSize  := fFontSize;
  fGlobalFocusLabelStyle.FontColor := fFontColor;
  fGlobalFocusLabelStyle.FontStyle := fFontStyle;
end;

Function TAdrockWhenFocused.StoreEnabled : Boolean;
begin
  Result := (Enabled <> TRUE);
end;

Function TAdrockWhenFocused.StoreBackColor : Boolean;
begin
  Result := (BackColor <> clBtnHighlight);
end;

Function TAdrockWhenFocused.StoreFontSize : Boolean;
begin
  Result := (FontSize <> 0);
end;

Function TAdrockWhenFocused.StoreUseBackColorOnCheckBoxAndRadioButtons : Boolean;
begin
  Result := (UseBackColorOnCheckBoxAndRadioButtons <> False);
end;

Procedure  TAdrockWhenFocused.Assign(Source : TPersistent);
begin
  if Source is TAdrockWhenFocused then
  begin
    fEnabled   := TAdrockWhenFocused(Source).Enabled;
    fFontSize  := TAdrockWhenFocused(Source).FontSize;
    fBackColor := TAdrockWhenFocused(Source).BackColor;
  end
  else
    inherited Assign(Source);
end;


{ TAdrockWhenFocusedGlobal }
Constructor TAdrockWhenFocusedGlobal.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
end;

Destructor  TAdrockWhenFocusedGlobal.Destroy;
begin
  Inherited Destroy;
end;

Function  TAdrockWhenFocusedGlobal.ReadEnabled : Boolean;
begin
  result := fGlobalEnabled;
end;

procedure TAdrockWhenFocusedGlobal.SetEnabled(NewValue : Boolean);
begin
  fGlobalEnabled := NewValue;
end;

Function  TAdrockWhenFocusedGlobal.ReadFontSize : Integer;
begin
  Result := fGlobalFontSize;
end;

Procedure TAdrockWhenFocusedGlobal.SetFontSize(NewSize : Integer);
begin
  fGlobalFontSize := NewSize;
end;

Function  TAdrockWhenFocusedGlobal.ReadBackColor : TColor;
begin
  Result := fGlobalBackColor;
end;

procedure TAdrockWhenFocusedGlobal.SetBackColor(NewValue : TColor);
begin
  fGlobalBackColor := NewValue;
end;

Function  TAdrockWhenFocusedGlobal.ReadFocusLabelStyle : TAdrockFontColorStyle;
begin
  Result := fGlobalFocusLabelStyle;
end;

Procedure TAdrockWhenFocusedGlobal.SetFocusLabelStyle(NewValue : TAdrockFontColorStyle);
begin
  fGlobalFocusLabelStyle.FontColor := NewValue.FontColor;
  fGlobalFocusLabelStyle.FontStyle := NewValue.FontStyle;
end;

Procedure TAdrockWhenFocusedGlobal.SetUseBackColorOnCheckBoxAndRadioButtons(NewValue : Boolean);
Begin
  fGlobalUseBackColorOnCheckBoxAndRadioButtons := NewValue;
end;

Function  TAdrockWhenFocusedGlobal.ReadUseBackColorOnCheckBoxAndRadioButtons : Boolean;
Begin
  Result := fGlobalUseBackColorOnCheckBoxAndRadioButtons;
End;

Function  TAdrockWhenFocusedGlobal.ReadGlobalStatus : TAdrockWhenFocusedGlobalStatus;
begin
  Result := fGlobalStatus;
end;

Procedure TAdrockWhenFocusedGlobal.SetGlobalStatus(NewValue : TAdrockWhenFocusedGlobalStatus);
begin
  fGlobalStatus := NewValue;
end;

Initialization
fGlobalFontSize  := 0;
fGlobalEnabled   := TRUE;
fGlobalBackColor := clWindow;
fGlobalFocusLabelStyle := TAdrockFontColorStyle.Create;
fGlobalFocusLabelStyle.FontColor := clWindowText;
fGlobalFocusLabelStyle.FontStyle := [fsBold];
fGlobalUseBackColorOnCheckBoxAndRadioButtons := False;

{$ifdef Win32}
Finalization
  fGlobalFocusLabelStyle.Free;
  fGlobalFocusLabelStyle := Nil;
{$endif}

end.
