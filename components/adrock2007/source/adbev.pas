unit AdBev;

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
  WinProcs, WinTypes, Menus,Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;


Type
  TAdrockBevelStyle = (bsLowered, bsRaised);
  TAdrockBevelShape = (bsNone, bsBox, bsEditFrame, bsButton, bsFrame, bsTopLine, bsBottomLine,
                       bsLeftAndRightLine, bsTopAndBottomLine, bsLeftLine, bsRightLine, bsCenterLine,
                       bsCenterVerticleLine);

  TAdrockBevel = class(TGraphicControl)
  private
    FStyle: TAdrockBevelStyle;
    FShape: TAdrockBevelShape;
    procedure SetStyle(Value: TAdrockBevelStyle);
    procedure SetShape(Value: TAdrockBevelShape);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Shape:TAdrockBevelShape read FShape write SetShape default bsBox;
    property Align;
    Property PopupMenu;
    property ParentShowHint;
    property ShowHint;
    property Style: TAdrockBevelStyle read FStyle write SetStyle default bsLowered;
    property Visible;
  end;

Procedure Register;

implementation


  { TAdrockBevel }

constructor TAdrockBevel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$ifdef WIN32}
{  ControlStyle := ControlStyle + [csAcceptsControls, csReplicatable];}
  ControlStyle := ControlStyle + [csReplicatable] - [csAcceptsControls];
  {$endif}
  FStyle := bsLowered;
  FShape := bsBox;
  Width := 50;
  Height := 50;
end;

procedure TAdrockBevel.SetStyle(Value: TAdrockBevelStyle);
begin
  if Value <> FStyle then
  begin
    FStyle := Value;
    Invalidate;
  end;
end;

procedure TAdrockBevel.SetShape(Value: TAdrockBevelShape);
begin
  if Value <> FShape then
  begin
    FShape := Value;
    Invalidate;
  end;
end;

procedure TAdrockBevel.Paint;
var
  Color1, Color2: TColor;
  Temp: TColor;

  procedure BevelRect(const R: TRect);
  begin
    with Canvas do
    begin
      Pen.Color := Color1;
      PolyLine([Point(R.Left, R.Bottom), Point(R.Left, R.Top),
        Point(R.Right, R.Top)]);
      Pen.Color := Color2;
      PolyLine([Point(R.Right, R.Top), Point(R.Right, R.Bottom),
        Point(R.Left, R.Bottom)]);
    end;
  end;

  procedure BevelLine(C: TColor; X1, Y1, X2, Y2: Integer);
  begin
    with Canvas do
    begin
      Pen.Color := C;
      MoveTo(X1, Y1);
      LineTo(X2, Y2);
    end;
  end;

begin
  with Canvas do
  begin
    Pen.Width := 1;

    if FStyle = bsLowered then
    begin
      Color1 := clBtnShadow;
      Color2 := clBtnHighlight;
    end
    else
    begin
      Color1 := clBtnHighlight;
      Color2 := clBtnShadow;
    end;

    case FShape of
      bsBox: BevelRect(Rect(0, 0, Width - 1, Height - 1));
      bsEditFrame :
        begin
          Color1 := clBtnShadow;
          Color2 := clBtnHighlight;
          BevelRect(Rect(0, 0, Width - 1, Height - 1));
          Color1 := clBlack;
          Color2 := clbtnFace;
          BevelRect(Rect(1, 1, Width - 2, Height - 2));
        end;
      bsButton:
        begin
          Color1 := clBtnHighlight;
          Color2 := clBlack;
          BevelRect(Rect(0, 0, Width - 1, Height - 1));
          Color1 := clBtnFace;
          Color2 := clBtnShadow;
          BevelRect(Rect(1, 1, Width - 2, Height - 2));
        end;
      bsFrame:
        begin
          Temp := Color1;
          Color1 := Color2;
          BevelRect(Rect(1, 1, Width - 1, Height - 1));
          Color2 := Temp;
          Color1 := Temp;
          BevelRect(Rect(0, 0, Width - 2, Height - 2));
        end;
      bsTopLine:
        begin
          BevelLine(Color1, 0, 0, Width, 0);
          BevelLine(Color2, 0, 1, Width, 1);
        end;
      bsBottomLine:
        begin
          BevelLine(Color1, 0, Height - 2, Width, Height - 2);
          BevelLine(Color2, 0, Height - 1, Width, Height - 1);
        end;
      bsLeftLine:
        begin
          BevelLine(Color1, 0, 0, 0, Height);
          BevelLine(Color2, 1, 0, 1, Height);
        end;
      bsRightLine:
        begin
          BevelLine(Color1, Width - 2, 0, Width - 2, Height);
          BevelLine(Color2, Width - 1, 0, Width - 1, Height);
        end;
      bsCenterVerticleLine :
        begin
          BevelLine(Color1, (Width Div 2)-1, 0, (Width Div 2)-1, Height);
          BevelLine(Color2, (Width div 2), 0, (Width div 2), height);
        end;
      bsCenterLine:
        begin
          BevelLine(Color1, 0, (Height Div 2)-1, Width-2, (Height Div 2)-1);
          BevelLine(Color2, 0, (Height Div 2), Width-2, (Height Div 2));
        end;
      bsLeftAndRightLine:
        begin
          BevelLine(Color1, 0, 0, 0, Height);
          BevelLine(Color2, 1, 0, 1, Height);
          BevelLine(Color1, Width - 2, 0, Width - 2, Height);
          BevelLine(Color2, Width - 1, 0, Width - 1, Height);
        end;
      bsTopAndBottomLine:
        begin
          BevelLine(Color1, 0, 0, Width, 0);
          BevelLine(Color2, 0, 1, Width, 1);
          BevelLine(Color1, 0, Height - 2, Width, Height - 2);
          BevelLine(Color2, 0, Height - 1, Width, Height - 1);
        end;
      bsNone : ;
    end;
  end;
end;

procedure Register;
begin
  RegisterComponents('Adrock', [TAdrockBevel]);
end;

end.

