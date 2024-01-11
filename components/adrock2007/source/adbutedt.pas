unit adbutedt;

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
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Buttons,
  Forms, Dialogs, StdCtrls, ExtCtrls, AdSpinB,  
  {$ifdef UNREGISTERED}
  ShellAPI,
  {$endif}
  AdEdit;

  {$ifdef UNREGISTERED}
  {$DEFINE ADROCK_NAG_SCREEN_TYPE}
  {$I ADNAG.PAS}
  {$UNDEF ADROCK_NAG_SCREEN_TYPE}
  {$ENDIF}

Const
  DEFAULT_BITMAP_WIDTH = 20;
  VersionString        = 1.10;

type
  {************************************************************************************************************************}

  {************************************************************************************************************************}
  {* Class for TAdrockButtonEditButton : This button is for the user to click                                           *}
  {************************************************************************************************************************}
  TAdrockButtonEditButton = class(TSpeedButton)
  protected
    Procedure   Loaded; override;
  Public
    Constructor Create(AOwner : TComponent); override;
  end;


  TAdrockSpinEditButton = class(TAdrockSpinButton)
  protected
    Procedure   Loaded; override;
  Public
    Constructor Create(AOwner : TComponent); override;
  end;

  TAdrockButtonEditBitmapStyle  = (bsStandard, bsEllipse, bsCustom);
  TAdrockButtonEditDisplayStyle = (dsNeverShow, dsOnlyWhenFocused, dsShowAlways);
  {************************************************************************************************************************}
  {* Class for TAdrockButtonEditCustom                                                                                    *}
  {************************************************************************************************************************}
  TAdrockButtonEditCustom = class(TAdrockEdit)
  private
    { Private declarations }
    fLeftAdditional            : Integer;
    fRightAdditional           : Integer;
    fStyle                     : TAdrockButtonEditBitmapStyle;

    fBitmap                    : TBitmap;
    fButtonBitmapWidth         : Integer;

    fMiddleBitmap              : TBitmap;
    fMiddleButtonBitmapWidth   : Integer;

    fAutoResize                : Boolean; { True the control will always be large enough for the text to fit inside }
    fFocused                   : Boolean; { True if the control has the input focus }
    FTextMargin                : Integer;

    FShowButtonHint            : Boolean;
    FAdrockButtonHint          : String;

    fOnButtonClick             : TNotifyEvent;
    fOnSpinUpClick             : TNotifyEvent;
    fOnSpinDownClick           : TNotifyEvent;
    fOnMiddleButtonClick       : TNotifyEvent;

    FAdrockBtnControl          : TWinControl;            { Window control for the button                   }
    FAdrockSpinControl         : TWinControl;            { Window control for the Spin button              }
    FAdrockMiddleBtnControl    : TWinControl;            { Window control for the button                   }

    fSpinEditDisplayStyle      : TAdrockButtonEditDisplayStyle;
    fMiddleButtonDisplayStyle  : TAdrockButtonEditDisplayStyle;
    fButtonDisplayStyle        : TAdrockButtonEditDisplayStyle;

    Function  StoreAutoSize                    : Boolean;
    Function  StoreLeftAdditional              : Boolean;
    Function  StoreRightAdditional             : Boolean;
    Function  StoreButtonDisplayStyle          : Boolean;
    Function  StoreSpinDisplayStyle            : Boolean;

    Function  StoreShowButtonHint              : Boolean;

    Function  StoreButtonBitmapStyle           : Boolean;
    Function  StoreButtonBitmapWidth           : Boolean;

    function StoreButtonBitmap                 : boolean;  {KM 09/01/01}

    Function  StoreMiddleButtonDisplayStyle    : Boolean;
    Function  StoreMiddleButtonBitmapWidth     : Boolean;
    Procedure RefreshMiddleBitmap;

    { functions to handle the control }
    procedure SetButtonHint(Hint : String);
    procedure SetButtonShowHint(ShowHint : Boolean);

    Procedure SetBitmap(NewBitmap : TBitmap);
    Procedure SetMiddleBitmap(NewBitmap : TBitmap);

    Procedure SetButtonBitmapStyle(NewStyle  : TAdrockButtonEditBitmapStyle);

    procedure RefreshButtonSize;

    Procedure SetLeftAdditional(NewAdditional : Integer);
    Procedure SetRightAdditional(NewAdditional : Integer);

    procedure SetButtonBitmapWidth(NewWidth : integer);
    procedure SetMiddleButtonBitmapWidth(NewWidth : integer);
  protected
    { Protected declarations }

    procedure   ButtonClick(Sender : TObject); dynamic;
    procedure   MiddleButtonClick(Sender : TObject); dynamic;
    procedure   SpinButtonUpClick(Sender : TObject); dynamic;
    procedure   SpinButtonDownClick(Sender : TObject); dynamic;

    procedure   SetNewSpinDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle); virtual;
    procedure   SetNewButtonDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle); virtual;
    procedure   SetNewMiddleButtonDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle); virtual;

    procedure   SetEditRect;
    function    GetMinHeight: Integer;

    procedure   WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure   WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;

    procedure   WMSize(var Message: TWMSize); message WM_SIZE;
    procedure   CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure   CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;

    procedure   CMExit(var Message: TCMExit); message CM_EXIT;
    procedure   CMEnter(var Message: TCMEnter); message CM_ENTER;

    procedure   FAdrockButtonOnClick(Sender : TObject);
    procedure   FAdrockSpinButtonUpClick(Sender : TObject);
    procedure   FAdrockSpinButtonDownClick(Sender : TObject);
    procedure   FAdrockMiddleButtonOnClick(Sender : TObject);
  public
    { Public declarations }
    InnerClientWidth             : TRect;

    FAdrockButton                : TAdrockButtonEditButton;  { Button that the user can click  }
    fAdrockMiddleButton          : TAdrockButtonEditButton;  { Button that the user can click  }
    fAdrockSpinButton            : TAdrockSpinEditButton;    { Spin Edit Buttons }

    Constructor Create(Aowner : TComponent);             override;
    Destructor  Destroy;                                 override;
    procedure   CreateWnd;                               override;
    procedure   CreateParams(var Params: TCreateParams); override;
    procedure   Loaded;                                  override;

    Function    ISSenderSelf(Sender : TObject) : Boolean;
    Function    ReturnMiddleButtonWidth   : Integer;
    Function    ReturnButtonWidth   : Integer;
    Function    ReturnSpinButtonWidth: Integer;

    Property    LeftAdditional   : Integer
                read    fLeftAdditional
                write   SetLeftAdditional
                Stored  StoreLeftAdditional
                default 0;

    Property    RightAdditional  : Integer
                read    fRightAdditional
                write   SetRightAdditional
                Stored  StoreRightAdditional
                default 0;

    Property    ButtonDisplayStyle    : TAdrockButtonEditDisplayStyle
                read    fButtonDisplayStyle
                Write   SetNewButtonDisplayStyle
                Stored  StoreButtonDisplayStyle
                default dsShowAlways;

    Property    MiddleButtonDisplayStyle      : TAdrockButtonEditDisplayStyle
                read    fMiddleButtonDisplayStyle
                Write   SetNewMiddleButtonDisplayStyle
                Stored  StoreMiddleButtonDisplayStyle
                default dsNeverShow;

    Property    SpinDisplayStyle      : TAdrockButtonEditDisplayStyle
                read    fSpinEditDisplayStyle
                Write   SetNewSpinDisplayStyle
                Stored  StoreSpinDisplayStyle
                default dsOnlyWhenFocused;

    Property    AutoResize     : Boolean
                Read    fAutoResize
                Write   fAutoResize
                Stored  StoreAutoSize
                default TRUE;

    Property    ButtonHint     : String
                Read FAdrockButtonHint
                Write SetButtonHint;

    Property    ButtonBitmap   : TBitmap
                read fBitmap
                write SetBitmap
                stored StoreButtonBitmap; {KM 09/01/01}

    Property    MiddleButtonBitmap   : TBitmap
                read fMiddleBitmap
                write SetMiddleBitmap;

    Property    ButtonBitmapWidth : Integer
                read    fButtonBitmapWidth
                write   SetButtonBitmapWidth
                Stored  StoreButtonBitmapWidth
                default DEFAULT_BITMAP_WIDTH;

    Property    MiddleButtonBitmapWidth : Integer
                read    fMiddleButtonBitmapWidth
                write   SetMiddleButtonBitmapWidth
                Stored  StoreMiddleButtonBitmapWidth
                default DEFAULT_BITMAP_WIDTH;

    Property    ButtonBitmapStyle : TAdrockButtonEditBitmapStyle
                read    fStyle
                write   SetButtonBitmapStyle
                Stored  StoreButtonBitmapStyle
                default bsStandard;

    Property    ShowButtonHint : Boolean
                Read    FShowButtonHint
                Write   SetButtonShowHint
                Stored  StoreShowButtonHint
                default FALSE;

    Property    OnButtonClick  : TNotifyEvent
                Read fOnButtonClick
                Write fOnButtonClick;

    Property    OnMiddleButtonClick  : TNotifyEvent
                Read fOnMiddleButtonClick
                Write fOnMiddleButtonClick;

    Property    OnSpinUpClick  : TNotifyEvent
                Read fOnSpinUpClick
                Write fOnSpinUpClick;

    Property    OnSpinDownClick: TNotifyEvent
                Read fOnSpinDownClick
                Write fOnSpinDownClick;
  published
  end;

  {************************************************************************************************************************}
  {* Class for TAdrockButtonEditCustom                                                                                    *}
  {************************************************************************************************************************}
  TAdrockButtonEdit = class(TAdrockButtonEditCustom)
  published
    { Published declarations }
    Property ButtonBitmap;
    Property MiddleButtonBitmap;

    Property ButtonBitmapStyle;
    Property ButtonBitmapWidth;
    Property MiddleButtonBitmapWidth;
    
    Property ButtonHint;
    Property ShowButtonHint;

    Property ButtonDisplayStyle;
    Property MiddleButtonDisplayStyle;
    Property SpinDisplayStyle;

    Property LeftAdditional;
    Property RightAdditional;
    Property AutoResize;

    Property OnButtonClick;
    Property OnMiddleButtonClick;
    Property OnSpinUpClick;
    Property OnSpinDownClick;
  end;


implementation
{$R *.RES}

{$IFDEF UNREGISTERED}
Var
  HasNagScreenBeenShown  : Boolean;

{Include the NAG Screen Implementation Code }
{$DEFINE ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$I ADNAG.PAS}
{$UNDEF ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$ENDIF}

{************************************************************************************************************************}
Constructor TAdrockButtonEditButton.Create(AOwner : TComponent);
begin
  Inherited Create(Aowner);
end;

Procedure TAdrockButtonEditButton.Loaded;
begin
  Inherited Loaded;
  ShowHint := FALSE;
end;

{************************************************************************************************************************}
Constructor TAdrockSpinEditButton.Create(AOwner : TComponent);
begin
  Inherited Create(Aowner);
end;

Procedure TAdrockSpinEditButton.Loaded;
begin
  Inherited Loaded;
  ShowHint := FALSE;
end;


{************************************************************************************************************************}
{* Constructor for the control                                                                                          *}
{************************************************************************************************************************}
Constructor TAdrockButtonEditCustom.Create(Aowner : TComponent);
begin
  Inherited Create(Aowner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable];
  {$ENDIF}

  fMiddleButtonBitmapWidth  := DEFAULT_BITMAP_WIDTH;
  fButtonBitmapWidth        := DEFAULT_BITMAP_WIDTH;
  fLeftAdditional           := 0;
  fRightAdditional          := 0;
  fBitmap                   := TBitmap.Create;
  fMiddleBitmap             := TBitmap.Create;
  fStyle                    := bsStandard;

  { Create the button for the control }
  FAdrockBtnControl         := TWinControl.Create (Self);
  FAdrockBtnControl.Parent  := Self;
  FAdrockBtnControl.Name    := 'TAdrockBtnControl';

  {$ifDEF WIN32}
  FAdrockBtnControl.ControlStyle :=  FAdrockBtnControl.ControlStyle + [csReplicatable];
  FAdrockBtnControl.Width   := GetSystemMetrics(SM_CXHTHUMB);
  {$ELSE}
  FAdrockBtnControl.Width   := GetSystemMetrics(SM_CXHTHUMB);
  {$ENDIF}
  FAdrockBtnControl.Height  := FAdrockBtnControl.Width;
  FAdrockBtnControl.Visible := True;

  FAdrockButton := TAdrockButtonEditButton.Create (Self);
  FAdrockButton.Parent      := FAdrockBtnControl;
  FAdrockButton.Name := 'TAdrockButtonEditButton';
  {$ifDEF WIN32}
  FAdrockButton.ControlStyle :=  FAdrockButton.ControlStyle + [csReplicatable];
  {$ENDIF}
  FAdrockButton.SetBounds (0, 0, FAdrockBtnControl.Width, FAdrockBtnControl.Height);
  FAdrockButton.NumGlyphs   := 1;
  FAdrockButton.Visible     := True;
  FAdrockButton.OnClick     := FAdrockButtonOnClick;

  { Create the button for the control }
  FAdrockMiddleBtnControl         := TWinControl.Create (Self);
  FAdrockMiddleBtnControl.Parent  := Self;
  FAdrockMiddleBtnControl.Name    := 'TWinControl1';

  {$ifDEF WIN32}
  FAdrockMiddleBtnControl.ControlStyle :=  FAdrockMiddleBtnControl.ControlStyle + [csReplicatable];
  FAdrockMiddleBtnControl.Width   := GetSystemMetrics(SM_CXHTHUMB);
  {$ELSE}
  FAdrockMiddleBtnControl.Width   := GetSystemMetrics(SM_CXHTHUMB);
  {$ENDIF}
  FAdrockMiddleBtnControl.Height  := FAdrockMiddleBtnControl.Width;
  FAdrockMiddleBtnControl.Visible := True;

  FAdrockMiddleButton := TAdrockButtonEditButton.Create (Self);
  FAdrockMiddleButton.Parent      := FAdrockMiddleBtnControl;
  FAdrockMiddleButton.Name := 'TAdrockButtonEditMiddleButton';
  {$ifDEF WIN32}
  FAdrockMiddleButton.ControlStyle :=  FAdrockMiddleButton.ControlStyle + [csReplicatable];
  {$ENDIF}
  FAdrockMiddleButton.SetBounds (0, 0, FAdrockMiddleBtnControl.Width, FAdrockMiddleBtnControl.Height);
  FAdrockMiddleButton.NumGlyphs   := 1;
  FAdrockMiddleButton.Visible     := True;
  FAdrockMiddleButton.OnClick     := FAdrockMiddleButtonOnClick;

  { Create the button for the control }
  FAdrockSpinControl        := TWinControl.Create (Self);
  FAdrockSpinControl.Parent := Self;
  FAdrockSpinControl.Name    := 'TWinControl_Spin';
  {$ifDEF WIN32}
  FAdrockSpinControl.ControlStyle :=  FAdrockBtnControl.ControlStyle + [csReplicatable];
  FAdrockSpinControl.Width  := GetSystemMetrics(SM_CXHTHUMB);
  {$ELSE}
  FAdrockSpinControl.Width  := GetSystemMetrics(SM_CXHTHUMB);
  {$ENDIF}
  FAdrockSpinControl.Height := FAdrockSpinControl.Width;
  FAdrockSpinControl.Visible:= True;

  {TAdrockSpinEditButton.}
  FAdrockSpinButton         := TAdrockSpinEditButton.Create(Self);
  FAdrockSpinButton.Parent     := FAdrockSpinControl;
  FAdrockSpinButton.Name    := 'TAdrockSpinEditButton1';
  {$ifDEF WIN32}
  FAdrockSpinButton.ControlStyle :=  FAdrockSpinButton.ControlStyle + [csReplicatable];
  {$ENDIF}
  FAdrockSpinButton.SetBounds (0, 0, FAdrockSpinControl.Width, FAdrockSpinControl.Height);
  FAdrockSpinButton.Visible    := True;
  FAdrockSpinButton.OnUpClick  := FAdrockSpinButtonUpClick;
  FAdrockSpinButton.OnDownClick:= FAdrockSpinButtonDownClick;

  fAutoResize                := TRUE;
  fFocused                   := FALSE;
  FShowButtonHint            := FALSE;
  fButtonDisplayStyle        := dsShowAlways;
  fSpinEditDisplayStyle      := dsOnlyWhenFocused;
  fMiddleButtonDisplayStyle  := dsNeverShow;
end;

{************************************************************************************************************************}
{* This routine gets called when the control is being destroyed                                                         *}
{************************************************************************************************************************}
Destructor TAdrockButtonEditCustom.Destroy;
begin
  fBitmap.Free;
  fMiddleBitmap.Free;
  FAdrockSpinButton.free;
  FAdrockSpinControl.free;
  fAdrockMiddleButton.free;
  fAdrockMiddleBtnControl.free;
  FAdrockButton.Free;
  FAdrockBtnControl.Free;

  Inherited Destroy;
end;

procedure TAdrockButtonEditCustom.CreateWnd;
begin
  inherited CreateWnd; 
  RefreshMiddleBitmap;
  SetButtonBitmapStyle(fStyle);
  RefreshButtonSize;
  SetEditRect;
end;

{************************************************************************************************************************}
{* Override the default parameters for the new window. Make the control multiline and ClipAnyChildren                   *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or {ES_MULTILINE or }WS_CLIPCHILDREN;
end;

Procedure TAdrockButtonEditCustom.SetBitmap(NewBitmap : TBitmap);
begin
  fBitmap.Assign(NewBitmap);
  SetButtonBitmapStyle(fStyle);
  RefreshButtonSize;
end;

Procedure TAdrockButtonEditCustom.RefreshMiddleBitmap;
begin
    FAdrockMiddleButton.Glyph.Assign(fMiddleBitmap);
    if (fMiddleBitmap.Width = fMiddleBitmap.Height *2) then
      FAdrockMiddleButton.NumGlyphs :=2
    else if (fMiddleBitmap.Width = fMiddleBitmap.Height *4) then
      FAdrockMiddleButton.NumGlyphs :=4
    else
      FAdrockMiddleButton.NumGlyphs :=1;
end;

Procedure TAdrockButtonEditCustom.SetMiddleBitmap(NewBitmap : TBitmap);
begin
  fMiddleBitmap.Assign(NewBitmap);
  RefreshMiddleBitmap;
  RefreshButtonSize;
end;

procedure TAdrockButtonEditCustom.SetButtonBitmapWidth(NewWidth : integer);
begin
  if (NewWidth < 0) then
    NewWidth := 0;
  fbuttonBitmapWidth := NewWidth;
  RefreshButtonSize;
end;

procedure TAdrockButtonEditCustom.SetMiddleButtonBitmapWidth(NewWidth : integer);
begin
  if (NewWidth < 0) then
    NewWidth := 0;
  fMiddlebuttonBitmapWidth := NewWidth;
  RefreshButtonSize;
end;

{************************************************************************************************************************}
{* Loaded : gets called when the control has been loaded                                                                *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.Loaded;
begin
  Inherited Loaded;
  {$IFDEF UNREGISTERED}
  if (HasNagScreenBeenShown = FALSE) then
    TAdrockNagScreen.Create(NAG_IF_DELPHI_NOT_FOUND,'TAdrockButtonEdit','Component','TAdrockDateTimeSuite', 0,0, '','','','');
  HasNagScreenBeenShown := TRUE;
  {$ENDIF}
end;

{************************************************************************************************************************}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetButtonBitmapStyle(NewStyle : TAdrockButtonEditBitmapStyle);
Var
  SomeBMP : TBitmap;
begin
  fStyle := NewStyle;
  SomeBMP := TBitmap.Create;
  try
     if (fStyle = bsStandard) then
       SomeBMP.Handle := LoadBitmap(0, PChar(32738))
     else if (fStyle = bsEllipse) then
       SomeBMP.Handle := LoadBitmap(hinstance, 'TADROCKBUTTONEDIT_ELLIPSE')
     else
       SomeBmp.Assign(ButtonBitmap);

    FAdrockButton.Glyph.Assign(SomeBMP);
    if (SomeBmp.Width = SomeBmp.Height *2) then
      FAdrockButton.NumGlyphs :=2
    else if (SomeBmp.Width = SomeBmp.Height *4) then
      FAdrockButton.NumGlyphs :=4
    else
      FAdrockButton.NumGlyphs :=1;
  finally;
    SomeBMP.Free;
  end;
  RefreshButtonSize;
end;

{************************************************************************************************************************}
{* This routine will set the editing rectangle, so the user can type without the text going under the button            *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetEditRect;
var
  Loc: TRect;
  fRight : INteger;
begin
  Loc.Bottom := ClientHeight + 1;  {+1 is workaround for windows paint bug}

  if (ButtonDisplayStyle <> dsNeverShow) then
   begin
     if ((ButtonDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE)) then
       fRight := ClientWidth+1
     else
       fRight := FAdrockBtnControl.Left - 2;
   end
  else
    fRight := ClientWidth+1;

  if (fMiddleButtonDisplayStyle <> dsNeverShow) then
   begin
     if ((fMiddleButtonDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE)) then
       { Do nothing }
     else
       fRight := FAdrockMiddleBtnControl.Left - 2;
   end;

  if (fSpinEditDisplayStyle <> dsNeverShow) then
   begin
     if ((fSpinEditDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE)) then
       { Do nothing }
     else
       fRight := FAdrockSpinControl.Left - 2;
   end;
  Loc.Right := fRight;

  Loc.Top := 0;
  Loc.Left := LeftAdditional;
  Loc.Right := Loc.Right - RightAdditional;
  InnerClientWidth := Loc;
  SendMessage(Handle, EM_SETRECTNP, 0, LongInt(@Loc));
end;

{************************************************************************************************************************}
{* This routine determines the min height to display the currently selected font, and sets up the editing rectangle...  *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.WMSize(var Message: TWMSize);
var
  MinHeight: Integer;
begin
  inherited;
  if (AutoResize) then
    begin
     MinHeight := GetMinHeight;
     { text edit bug: if size to less than minheight, then edit ctrl does not display the text }
     if (Height < MinHeight) then
       Height := MinHeight
    end;
  RefreshButtonSize
end;

{************************************************************************************************************************}
{* This routine calculates the minimum height the control should be based on the current font                           *}
{************************************************************************************************************************}
function TAdrockButtonEditCustom.GetMinHeight: Integer;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  if (AutoSize = FALSE) or (AutoResize = FALSE) then
     Result := Height
  else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      FTextMargin := I div 4;
      Result := Metrics.tmHeight + FTextMargin + GetSystemMetrics(SM_CYBORDER) * 4;
    end;
end;

{************************************************************************************************************************}
{* Set the hint for the button.                                                                                         *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetButtonHint(Hint : String);
begin
  FAdrockButtonHint := Hint;
  FAdrockButton.Hint := Hint;
end;

{************************************************************************************************************************}
{* Set the display style for the Spin buttons                                                                           *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetNewSpinDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle);
begin
  fSpinEditDisplayStyle  := NewButtonDisplayStyle;
  RefreshButtonSize;
end;

{************************************************************************************************************************}
{* Set the display style for the Spin buttons                                                                           *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetNewMiddleButtonDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle);
begin
  fMiddleButtonDisplayStyle  := NewButtonDisplayStyle;
  RefreshButtonSize;
end;

{************************************************************************************************************************}
{* Set the display style for the button. The display style affects how the button is shown on the edit field.           *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetNewButtonDisplayStyle(NewButtonDisplayStyle : TAdrockButtonEditDisplayStyle);
begin
  fButtonDisplayStyle := NewButtonDisplayStyle;
  RefreshButtonSize;
end;

Function TAdrockButtonEditCustom.ReturnButtonWidth   : Integer;
Var
 fWidth : Integer;
begin
 fWidth := 0;
 case ButtonDisplayStyle of
    dsShowAlways,
    dsOnlyWhenFocused : begin
                        if (ButtonDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE) then
                          fWidth := 0
                        else
                          {$IFDEF Win32}
                          if (ButtonBitmapStyle = bsCustom) then
                            fWidth := ButtonBitmapWidth
                          else
                            fWidth := GetSystemMetrics(SM_CXHTHUMB);
                          {$ELSE}
                            fWidth := GetSystemMetrics(SM_CXHTHUMB);
                          {$ENDIF}
                        end;
    dsNeverShow      : begin
                         fWidth := 0;
                       end;
  end;
  Result := FWidth;
end;

Function TAdrockButtonEditCustom.ReturnMiddleButtonWidth   : Integer;
Var
 fWidth : Integer;
begin
 fWidth := 0;
 case MiddleButtonDisplayStyle of
    dsShowAlways,
    dsOnlyWhenFocused : begin
                        if ((MiddleButtonDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE)) then
                          fWidth := 0
                        else
                          fWidth := MiddleButtonBitmapWidth;
                        end;
    dsNeverShow      : begin
                         fWidth := 0;
                       end;
  end;
  Result := FWidth;
end;

Function TAdrockButtonEditCustom.ReturnSpinButtonWidth: Integer;
Var
 fWidth : Integer;
begin
  fWidth := 0;
  case fSpinEditDisplayStyle of
    dsShowAlways,
    dsOnlyWhenFocused : begin
                        if ((fSpinEditDisplayStyle = dsOnlyWhenFocused) and (FFocused = FALSE)) then
                          fWidth := 0
                        else
                          {$IFDEF Win32}
                          fWidth := GetSystemMetrics(SM_CXHTHUMB);
                          {$ELSE}
                          fWidth := GetSystemMetrics(SM_CXHTHUMB);
                          {$ENDIF}
                        end;
    dsNeverShow      : begin
                          fWidth := 0;
                        end;
  end;
  Result := fWidth;
end;

{************************************************************************************************************************}
{* Refresh the buttons size based on the display mode and the current focus state                                       *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.RefreshButtonSize;
Var
 fMax : Integer;
 fWidth : Integer;
begin
 if (FAdrockButton = nil) or (Parent = nil) then
   exit;

  fWidth := ReturnButtonWidth;
  if (FAdrockButton.Width <> fWidth) then
    FAdrockButton.Width := fWidth;
  fMax := ClientWidth;
  if not NewStyleControls then
     FAdrockBtnControl.SetBounds (fMax - FAdrockButton.Width, 0, FAdrockButton.Width, Height)
  else
    {$ifDef WIN32}
      FAdrockBtnControl.SetBounds (fMax - FAdrockButton.Width, 0, FAdrockButton.Width, ClientHeight);
    {$ELSE}
      FAdrockBtnControl.SetBounds (fMax - FAdrockButton.Width - 2, 2, FAdrockButton.Width, ClientHeight - 4);
    {$ENDIF}
  FAdrockButton.Height := FAdrockBtnControl.Height;
{*********************}
  fWidth := ReturnMiddleButtonWidth;
  if (FAdrockMiddleButton.Width <> fWidth) then
    FAdrockMiddleButton.Width := fWidth;
  fMax := FAdrockBtnControl.Left;
  if not NewStyleControls then
     FAdrockMiddleBtnControl.SetBounds (fMax - FAdrockMiddleButton.Width, 0, FAdrockMiddleButton.Width, Height)
   else
    {$ifDef WIN32}
      FAdrockMiddleBtnControl.SetBounds (fMax - FAdrockMiddleButton.Width, 0, FAdrockMiddleButton.Width, ClientHeight);
    {$ELSE}
      if (FAdrockMiddleButton.Width = 0) then
        FAdrockMiddleBtnControl.SetBounds (fMax - FAdrockMiddleButton.Width, 2, FAdrockMiddleButton.Width, ClientHeight-4)
      else
        FAdrockMiddleBtnControl.SetBounds (fMax - FAdrockMiddleButton.Width+1, 2, FAdrockMiddleButton.Width, ClientHeight-4);
    {$ENDIF}
  FAdrockMiddleButton.Height := FAdrockMiddleBtnControl.Height;
{*********************}
  fMax := FAdrockMiddleBtnControl.Left;
  fWidth := ReturnSpinButtonWidth;
  if (FAdrockSpinButton.Width <> fWidth) then
    FAdrockSpinButton.Width := fWidth;
  if (FAdrockSpinControl.Width <> fWidth) then
    FAdrockSpinControl.Width := fWidth;
  FAdrockSpinControl.Visible := (fWidth > 0);

  if (FAdrockSpinControl.Visible = FALSE) then
     FAdrockSpinControl.SetBounds (-999, 0, FAdrockSpinButton.Width, Height)
  else if not NewStyleControls then
     FAdrockSpinControl.SetBounds (fMax- FAdrockSpinButton.Width, 0, FAdrockSpinButton.Width, Height)
   else
    {$ifDef WIN32}
      FAdrockSpinControl.SetBounds (fMax- FAdrockSpinButton.Width, 0, FAdrockSpinButton.Width, ClientHeight);
    {$ELSE}
      if (FAdrockSpinButton.Width = 0) then
        FAdrockSpinControl.SetBounds (fMax- FAdrockSpinButton.Width, 2, FAdrockSpinButton.Width, ClientHeight - 4)
      else
        FAdrockSpinControl.SetBounds (fMax- FAdrockSpinButton.Width+1, 2, FAdrockSpinButton.Width, ClientHeight - 4);
    {$ENDIF}
  if (FAdrockSpinButton.Height <> FAdrockSpinControl.Height) then
    FAdrockSpinButton.Height := FAdrockSpinControl.Height;
  SetEditRect;
  Invalidate;
end;

{************************************************************************************************************************}
{* Set the ShowHint property of the button                                                                              *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.SetButtonShowHint(ShowHint : Boolean);
begin
  fShowButtonHint := ShowHint;
  FAdrockButton.ShowHint := ShowHint;
end;

{************************************************************************************************************************}
{* Gets called when the user changes the font. Must recalc when this occurs.                                            *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.CMFontChanged(var Message: TMessage);
begin
  inherited;
  GetMinHeight;  { set FTextMargin }
end;

{************************************************************************************************************************}
{* Gets called when the control's enabled property changes                                                              *}
{************************************************************************************************************************}
procedure TAdrockButtonEditCustom.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  FAdrockButton.Enabled := Enabled;
end;

procedure TAdrockButtonEditCustom.ButtonClick;
begin
  { Dynamic routine - can be trapped in other classes }
end;

procedure TAdrockButtonEditCustom.MiddleButtonClick(Sender : TObject);
begin
  { Dynamic routine - can be trapped in other classes }
end;

procedure TAdrockButtonEditCustom.SpinButtonUpClick(Sender : TObject);
begin
  { Dynamic routine - can be trapped in other classes }
end;

procedure TAdrockButtonEditCustom.SpinButtonDownClick(Sender : TObject);
begin
  { Dynamic routine - can be trapped in other classes }
end;

procedure TAdrockButtonEditCustom.FAdrockSpinButtonUpClick(Sender : TObject);
begin
  if (ReadOnly = TRUE) then
    exit;
  if (GetFocus <> Self.Handle) and (CanFocus) then
     SetFocus;
  if (GetFocus <> Self.Handle) then
     Exit;

  SpinButtonUpClick(Self);

  if (Assigned(fOnSpinUpClick)) then
   fOnSpinUpClick(SELF);
end;

procedure TAdrockButtonEditCustom.FAdrockSpinButtonDownClick(Sender : TObject);
begin
  if (ReadOnly = TRUE) then
    exit;
  if (GetFocus <> Self.Handle) and (CanFocus) then
     SetFocus;
  if (GetFocus <> Self.Handle) then
     Exit;

  SpinButtonDownClick(Self);

  if (Assigned(fOnSpinDownClick)) then
   fOnSpinDownClick(SELF);
end;

procedure TAdrockButtonEditCustom.FAdrockButtonOnClick(Sender : TObject);
begin
  if (ReadOnly = TRUE) then
    exit;
  if (GetFocus <> Self.Handle) and (CanFocus) then
     SetFocus;
  if (GetFocus <> Self.Handle) then
     Exit;

  ButtonClick(Self);

  if (Assigned(fOnButtonClick)) then
   fOnButtonClick(SELF);
end;

procedure TAdrockButtonEditCustom.FAdrockMiddleButtonOnClick(Sender : TObject);
begin
  if (ReadOnly = TRUE) then
    exit;
  if (GetFocus <> Self.Handle) and (CanFocus) then
     SetFocus;
  if (GetFocus <> Self.Handle) then
     Exit;

  MiddleButtonClick(Self);
  
  if (Assigned(fOnMiddleButtonClick)) then
   fOnMiddleButtonClick(SELF);
end;

Function TAdrockButtonEditCustom.ISSenderSelf(Sender : TObject) : Boolean;
begin
  Result := TRUE;
  if (Sender <> Self) and (Sender <> FAdrockButton) and (Sender <> FAdrockBtnControl)
  and (Sender <> FAdrockMiddleButton) and (Sender <> FAdrockMiddleBtnControl)  
  and (Sender <> FAdrockSpinButton) and (Sender <> FAdrockSpinControl)  then
    Result := FALSE;
end;

procedure TAdrockButtonEditCustom.CMExit(var Message: TCMExit);
begin
  fFocused := FALSE;
  RefreshButtonSize;
  inherited CMExit(Message);
end;

procedure TAdrockButtonEditCustom.CMEnter(var Message: TCMEnter);
begin
  fFocused := TRUE;
  RefreshButtonSize;
  inherited CMEnter(Message);
end;

procedure TAdrockButtonEditCustom.WMSetFocus(var Message: TWMSetFocus);
begin
  fFocused := TRUE;
  RefreshButtonSize;
  SelectAll;
  Inherited;
end;

procedure TAdrockButtonEditCustom.WMKillFocus(var Message: TWMKillFocus);
begin
  fFocused := FALSE;
  if not (csDestroying in ComponentState) then
    RefreshButtonSize;
  Inherited;
end;


Procedure TAdrockButtonEditCustom.SetLeftAdditional(NewAdditional : Integer);
begin
  fLeftAdditional := NewAdditional;
  SetEditRect;
end;

Procedure TAdrockButtonEditCustom.SetRightAdditional(NewAdditional : Integer);
begin
  fRightAdditional := NewAdditional;
  SetEditRect;
end;

Function TAdrockButtonEditCustom.StoreButtonBitmapWidth : Boolean;
begin
  Result := (ButtonBitmapWidth <> 20);
end;

Function TAdrockButtonEditCustom.StoreMiddleButtonBitmapWidth : Boolean;
begin
  Result := (MiddleButtonBitmapWidth <> 20);
end;

Function TAdrockButtonEditCustom.StoreLeftAdditional : Boolean;
begin
  Result := (LeftAdditional <> 0);
end;

Function TAdrockButtonEditCustom.StoreRightAdditional : Boolean;
begin
  Result := (RightAdditional <> 0);
end;

Function TAdrockButtonEditCustom.StoreButtonDisplayStyle : Boolean;
begin
  Result := (ButtonDisplayStyle <> dsShowAlways);
end;

Function TAdrockButtonEditCustom.StoreMiddleButtonDisplayStyle : Boolean;
begin
  Result := (MiddleButtonDisplayStyle <> dsNeverShow);
end;

Function TAdrockButtonEditCustom.StoreSpinDisplayStyle : Boolean;
begin
  Result := (SpinDisplayStyle <> dsOnlyWhenFocused);
end;

Function TAdrockButtonEditCustom.StoreAutoSize : Boolean;
begin
  Result := (AutoSize <> True);
end;

Function TAdrockButtonEditCustom.StoreButtonBitmapStyle : Boolean;
begin
  Result := (ButtonBitmapStyle <> bsStandard);
end;

Function TAdrockButtonEditCustom.StoreShowButtonHint : Boolean;
begin
  Result := (ShowButtonHint <> False);
end;


{KM 09/01/01}
Function TAdrockButtonEditCustom.StoreButtonBitmap: Boolean;
begin
  Result := false;
end;
{$ifdef UNREGISTERED}
Initialization
  HasNagScreenBeenShown := FALSE;
{$endif}

end.
