unit AdCapt;

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

{ *****************************************************
                 TAdrockCustomCaption Component
  ***************************************************** }

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs; {dsgnIntf;}

type
  TAdrockCustomCaptionAlignmentStyle = (
                                          alignTopLeft,   alignMiddleLeft,  alignBottomLeft,
                                          alignTopCenter, alignCenter,      alignBottomCenter,
                                          alignTopRight,  alignMiddleRight, alignBottomRight
                                        );

  TAdrockCustomCaptionOnChangeEvent = TNotifyEvent;
  TAdrockCustomCaption = class(TPersistent)
  private
    { private declarations }
    CaptionHeight     : Integer;
    falignment        : TAdrockCustomCaptionAlignmentStyle;
    OldCaptionheightWidth : Integer;
    fOffsetY          : Integer;
    fOffsetX          : Integer;
    fEnabled          : Boolean;
    fOwner            : TComponent;
    AllowChangeEvent  : Boolean;
    UpdateRequired    : Boolean;

    fOnChange         : TAdrockCustomCaptionOnChangeEvent;
    fFont             : TFont;
    fCaption          : TCaption;

    procedure SetAlignment(NewAlignment : TAdrockCustomCaptionAlignmentStyle);
    procedure SetFont(NewFont : TFont);
    procedure SetCaption(NewCaption : TCaption);
    procedure SetOffsetX(NewOffset : Integer);
    procedure SetOffsetY(NewOffset : Integer);
    Procedure SetEnabled(NewEnabled : Boolean);

    Function StoreFont : Boolean;
    Function StoreAlignment : Boolean;
    Function StoreOffsetX : Boolean;
    Function StoreOffsetY : Boolean;
    Function StoreEnabled : Boolean;
  protected
    { protected declarations }
    procedure Change;
  public
    { public declarations }
    Constructor    Create(Aowner : TComponent); virtual;
    Destructor     Destroy; override;

    Procedure      Assign(Source : TPersistent); override;

    Procedure      BeginUpdate;
    Procedure      EndUpdate;
    Procedure      RefreshCaptionHeight(Width : Integer);
    Function       ReturnTextoffsetAfterAlignment(Canvas : TCanvas; str : String;
                     Alignment : TAdrockCustomCaptionAlignmentStyle; Rect : TRect) : TPoint;

    Function       PaintCaption(Canvas : TCanvas; fOffset : TPoint; Rect : TRect) : TRect;
    Function       ReturnCaptionHeight(fWidth : Integer):Integer;

    Property       OnChange           : TAdrockCustomCaptionOnChangeEvent         read fOnChange         Write fOnChange;

    Property       Caption : TCaption
                   Read    fCaption
                   Write   SetCaption;

    Property       Font : TFont
                   Read    ffont
                   Write   SetFont
                   Stored  StoreFont;

    Property       Alignment : TAdrockCustomCaptionAlignmentStyle
                   Read    fAlignment
                   Write   SetAlignment
                   Stored  StoreAlignment
                   Default alignCenter;

    Property       OffsetX : Integer
                   Read    fOffsetX
                   Write   SetOffsetX
                   Stored  StoreOffsetX
                   Default 0;

    Property       OffsetY : Integer
                   Read    fOffsetY
                   Write   SetOffsetY
                   Stored  StoreOffsetY
                   Default 0;

    Property       Enabled : Boolean
                   Read    fEnabled
                   Write   SetEnabled
                   Stored  StoreEnabled
                   Default TRUE;
end;


  TAdrockCaption = class(TAdrockCustomCaption)
  Published
    Property Caption;
    Property Font;
    Property Alignment;
    Property OffsetX;
    Property OffsetY;
    Property Enabled;
  end;

  TAdrockSimpleCaption = class(TAdrockCustomCaption)
  Private
    fAlignment : TAlignment;
    Procedure SetAlignment(NewAlignment : TAlignment);
    Function  StoreSimpleAlignment : Boolean;
  Public
    Constructor Create(Aowner : TComponent); override;
  Published
    Property Alignment : TAlignment
             read    fAlignment
             Write   SetAlignment
             Stored  StoreSimpleAlignment
             default taCenter;

    Property Caption;
    Property Font;
    Property Enabled;
  end;

  TAdrockSimpleVisibleCaption = class(TAdrockSimpleCaption)
  Private
    fVisible : Boolean;
  Public
    Constructor Create(Aowner : TComponent); override;
  Published
    Property Visible : Boolean
             read fVisible
             Write fVisible
             Default TRUE;

  end;

implementation

{ Constructor for the component TAdrockCustomCaption }
Constructor TAdrockCustomCaption.Create(Aowner : TComponent);
begin
 fOwner := AOwner;

 OldCaptionheightWidth := -1;
 fEnabled   := TRUE;
 fAlignment := alignCenter;
 fOffsetY   := 0;
 fOffsetX   := 0;

 AllowChangeEvent  := TRUE;
 UpdateRequired    := TRUE;
 fFont := TFont.Create;
end;                          

Destructor TAdrockCustomCaption.Destroy;
begin
  fFont.Free;
  inherited Destroy;
end;

Procedure  TAdrockCustomCaption.Assign(Source : TPersistent);
Var
 fSource : TAdrockCustomCaption;
begin
  if (Source is TAdrockCustomCaption) then
   begin
     fSource := (Source as TAdrockCustomCaption);

     Caption   := fSource.Caption;
     Alignment := fSource.Alignment;
     OffsetX   := fSource.OffsetX;
     OffsetY   := fSource.OffsetY;
     Enabled   := fSource.Enabled;

     Font.Assign(fSource.Font);
     exit;
   end;
   inherited Assign(Source);
end;

procedure TAdrockCustomCaption.Change;
begin
  if (AllowChangeEvent = FALSE) then
    UpdateRequired := TRUE
  else
    begin
      UpdateRequired := FALSE;
      if (assigned(fOnChange)) then
        fOnChange(Self);
    end;
end;

procedure TAdrockCustomCaption.SetAlignment(NewAlignment : TAdrockCustomCaptionAlignmentStyle);
begin
  if (NewAlignment <> fAlignment) then
    begin
      fAlignment := newAlignment;
      Change;
    end;
end;

procedure TAdrockCustomCaption.SetOffsetX(NewOffset : Integer);
begin
 if (fOffsetX <> NewOffset) then
   begin
     fOffsetX := NewOffset;
     Change;
   end;
end;

procedure TAdrockCustomCaption.SetOffsetY(NewOffset : Integer);
begin
 if (fOffsetY <> NewOffset) then
   begin
     fOffsetY := NewOffset;
     Change;
   end;
end;

procedure TAdrockCustomCaption.SetFont(NewFont : TFont);
begin
  OldCaptionheightWidth := -1;
  fFont.Assign(NewFont);
  Change;
end;

procedure TAdrockCustomCaption.SetCaption(NewCaption : TCaption);
begin
  OldCaptionheightWidth := -1;
  fCaption := NewCaption;
  Change;
end;

Procedure TAdrockCustomCaption.BeginUpdate;
begin
  AllowChangeEvent := FALSE;
end;

Procedure TAdrockCustomCaption.EndUpdate;
begin
  AllowChangeEvent := TRUE;
  if (UpdateRequired = TRUE) then
    Change;
end;

Function  TAdrockCustomCaption.ReturnTextOffsetAfterAlignment(Canvas : TCanvas; str : String;
     Alignment : TAdrockCustomCaptionAlignmentStyle; Rect : TRect) : TPoint;
Var
  fStrHeight, fStrWidth, fRectWidth, fRectHeight : Integer;
  ExtraX, ExtraY : INteger;
  fPoint  : TPoint;
begin
  fStrHeight := Canvas.TextHeight(Str);
  fStrWidth  := Canvas.TextWidth(Str);
  fRectWidth := Rect.Right-Rect.Left;
  fRectHeight := Rect.Bottom-Rect.Top;
  ExtraX := 0;
  ExtraY := 0;
  Case Alignment of
    alignTopLeft      : begin ExtraX := 0; ExtraY := 0; end;
    alignMiddleLeft   : begin ExtraX := 0; ExtraY := (fRectheight div 2) - (fStrHeight div 2); end;
    alignBottomLeft   : begin ExtraX := 0; ExtraY := (fRectheight - fStrHeight); end;

    alignTopCenter    : begin ExtraX := (fRectWidth div 2) - (fStrWidth div 2); ; ExtraY := 0; end;
    alignCenter       : begin
                          ExtraX := (fRectWidth div 2) - (fStrWidth div 2);
                          ExtraY := (fRectheight div 2) - (fStrHeight div 2);
                        end;
    alignBottomCenter : begin ExtraX := (fRectWidth div 2) - (fStrWidth div 2); ExtraY := (fRectheight - fStrHeight); end;

    alignTopRight     : begin ExtraX := (fRectWidth-fStrWidth); ExtraY := 0; end;
    alignMiddleRight  : begin ExtraX := (fRectWidth-fStrWidth); ExtraY := (fRectheight div 2) - (fStrHeight div 2); end;
    alignBottomRight  : begin ExtraX := (fRectWidth-fStrWidth); ExtraY := (fRectheight - fStrHeight); end;
  end;
  fPoint.X := Rect.Left+ExtraX;
  fPoint.Y := Rect.Top+ExtraY;
  Result := fPoint;
end;

Procedure TAdrockCustomCaption.SetEnabled(NewEnabled : Boolean);
begin
  if (fEnabled <> NewEnabled)then
    begin
      fEnabled := NewEnabled;
      Change;
    end;
end;

Function TAdrockCustomCaption.PaintCaption(Canvas : TCanvas; fOffset : TPoint; Rect : TRect) : TRect;
Var
  CaptionZ : Array [0..255] of char;
begin
  Result := Rect;
  if (Enabled = FALSE) then
     exit;
{  R := CreateRectRgn(Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
  oldHandle := SelectObject(Canvas.handle, R);
}
  try
    Canvas.Pen.Style := psSolid;
    Canvas.Brush.Style := bsClear;
    Canvas.Font.Assign(Font);
    OffsetRect(Rect, OffsetX, OffsetY);
    StrPCopy(CaptionZ, Caption);
      DrawText(Canvas.Handle, CaptionZ, -1, Rect, DT_VCENTER or DT_CENTER or DT_SINGLELINE);
  finally;
  end;
end;

Procedure TAdrockCustomCaption.RefreshCaptionHeight(Width : Integer);
Var
 fBitmap : tBitmap;
 fRect   : TRect;
 CaptionZ : Array [0..255] of char;
begin
 fBitmap := TBitmap.Create;
 try
   fbitmap.Width := Width;
   fbitmap.Height := 100;
   fbitmap.Canvas.Font.Assign(Font);
   fRect := Rect(0,0,Width,100);

   StrPCopy(CaptionZ, Caption);
   CaptionHeight := DrawText(fbitmap.Canvas.Handle, CaptionZ, -1, fRect, DT_CALCRECT or DT_LEFT or DT_WORDBREAK);
   fbitmap.Width := 0;
   fbitmap.Height := 0;
 finally;
   fbitmap.free;
 end;
end;


Function TAdrockCustomCaption.StoreFont : Boolean;
Var
  StoreIt : Boolean;
begin
  StoreIt := FALSE;
  if (Font.Name <> 'MS Sans Serif') then
    StoreIt := TRUE
  else if (Font.Size <> 8) then
    StoreIt := TRUE
  else if (Font.Style <> []) then
    StoreIt := TRUE;
  Result := StoreIT;
end;

Function TAdrockCustomCaption.StoreAlignment : Boolean;
begin
  Result := (Alignment <> alignCenter);
end;

Function TAdrockCustomCaption.StoreOffsetX : Boolean;
begin
  Result := (OffsetX <> 0);
end;

Function TAdrockCustomCaption.StoreOffsetY : Boolean;
begin
  Result := (OffsetY <> 0);
end;

Function TAdrockCustomCaption.StoreEnabled : Boolean;
begin
  Result := (Enabled <> TRUE);
end;

Function TAdrockCustomCaption.ReturnCaptionHeight(fWidth : Integer):Integer;
begin
 if (OldCaptionheightWidth <> fWidth) then
   RefreshCaptionHeight(fWidth);
 OldCaptionheightWidth := fWidth;
 Result := CaptionHeight;
end;

Constructor TAdrockSimpleCaption.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  Inherited Alignment := alignCenter;
  fAlignment := taCenter;
end;

Procedure TAdrockSimpleCaption.SetAlignment(NewAlignment : TAlignment);
begin
  case NewAlignment Of
    taLeftJustify   : Inherited Alignment := alignMiddleLeft;
    taCenter        : Inherited Alignment := alignCenter;
    taRightJustify  : Inherited Alignment := alignMiddleRight;
  end;
  fAlignment := NewAlignment;
end;

Function  TAdrockSimpleCaption.StoreSimpleAlignment : Boolean;
begin
  Result := (Alignment <> taCenter);
end;

Constructor TAdrockSimpleVisibleCaption.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  fVisible := TRUE;
end;
end.
