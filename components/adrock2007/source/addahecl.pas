unit AdDaHeCl;

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
  WinProcs, WinTypes, Messages, SysUtils, Classes,
  AdWeek,
  ExtCtrls, Graphics, Controls, Forms, Dialogs, adDatecn;

type
  TAdrockWeekdayHeaderClassColors = class(TPersistent)
  private
    { Private declarations }
    fColorSaturday  : TColor;
    fColorSunday    : TColor;
    fColorMonday    : TColor;
    fColorTuesday   : TColor;
    fColorWednesday : TColor;
    fColorThursday  : TColor;
    fColorFriday    : TColor;

    fBackColor : TColor;
    fOnChange  : TNotifyEvent;

    Procedure SetBackColor(NewValue : TColor);
    Procedure SetColorSaturday(NewValue : TColor);
    Procedure SetColorSunday(NewValue : TColor);
    Procedure SetColorMonday(NewValue : TColor);
    Procedure SetColorTuesday(NewValue : TColor);
    Procedure SetColorWednesday(NewValue : TColor);
    Procedure SetColorThursday(NewValue : TColor);
    Procedure SetColorFriday(NewValue : TColor);

    Function  StoreColorSunday    : Boolean;
    Function  StoreColorMonday    : Boolean;
    Function  StoreColorTuesday   : Boolean;
    Function  StoreColorWednesday : Boolean;
    Function  StoreColorThursday  : Boolean;
    Function  StoreColorFriday    : Boolean;
    Function  StoreColorSaturday  : Boolean;
    Function  StoreColorBack      : Boolean;
  protected
    { Protected declarations }
    Procedure Change;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); dynamic;
    Destructor  Destroy; override;
    Procedure   Assign(Source : TPersistent); override;
  published
    { Published declarations }
    Property Saturday  : TColor Read fColorSaturday  Write SetColorSaturday    Stored StoreColorSaturday  Default clBlack;
    Property Sunday    : TColor Read fColorSunday    Write SetColorSunday      Stored StoreColorSunday    Default clBlack;
    Property Monday    : TColor Read fColorMonday    Write SetColorMonday      Stored StoreColorMonday    Default clBlack;
    Property Tuesday   : TColor Read fColorTuesday   Write SetColorTuesday     Stored StoreColorTuesday   Default clBlack;
    Property Wednesday : TColor Read fColorWednesday Write SetColorWednesday   Stored StoreColorWednesday Default clBlack;
    Property Thursday  : TColor Read fColorThursday  Write SetColorThursday    Stored StoreColorThursday  Default clBlack;
    Property Friday    : TColor Read fColorFriday    Write SetColorFriday      Stored StoreColorFriday    Default clBlack;

    Property Back : TColor      Read fBackColor      Write SetBackColor        Stored StoreColorBack      Default clBtnFace;
    Property OnChange : TNotifyEvent
             read    fOnChange
             Write   fOnChange;
  end;

  TAdrockWeekdayHeaderClass = class(TPersistent)
  private
    { Private declarations }
    fWeekNumberWidth : Integer;
    fColors         : TAdrockWeekdayHeaderClassColors;

    fWeekDayLen     : TAdrockDateWeekDayLen;
    fWeekStart      : TAdrockWeekDay;
    fBevelWidth     : Integer;
    fBevel          : TBevelStyle;
    fFont           : TFont;
    fOnChange       : TNotifyEvent;

    Procedure SetBevel(NewValue : TBevelStyle);
    Procedure SetBevelWidth(NewValue : Integer);
    Procedure SetFont(NewFont : TFont);
    Procedure SetWeekDayLen(NewValue : TAdrockDateWeekDayLen);
    Procedure SetWeekStart(NewValue : TAdrockWeekDay);
    Procedure SetWeekNumbers(NewValue : Boolean);

  protected
    { Protected declarations }
    Procedure OnFontChange(Sender : TObject);
    Procedure Change(Sender : Tobject);
  public
    { Public declarations }
    OffsetLeft  : Integer;
    OffsetRight : Integer;
    Gap         : Integer;
    fWeekNumbers: Boolean;
    Constructor Create(Aowner : TComponent); dynamic;
    Destructor  Destroy; override;
    Procedure   Assign(Source : TPersistent); override;
    Procedure   PaintWeekdayHeader(Canvas : TCanvas; ClientRect : TRect); dynamic;

    property    WeekNumbers : Boolean read fWeekNumbers Write SetWeekNumbers default FALSE;
    property    WeekNumberWidth : Integer read fWeekNumberWidth write fWeekNumberWidth;
  published
    { Published declarations }
    Property Colors  : TAdrockWeekdayHeaderClassColors
             read  fColors
             Write fColors;

    Property BevelWidth : Integer
             read fBevelWidth
             Write SetBevelWidth
             default 1;

    Property Bevel : TBevelStyle
             read fBevel
             Write SetBevel
             default bsRaised;

    Property Font : TFont
             read    fFont
             Write   SetFont;

    Property StartDayOfWeek :  TAdrockWeekDay
             Read    fWeekStart
             Write   SetWeekStart
             default wdSunday;

    Property WeekDayLen : TAdrockDateWeekDayLen
             Read  fWeekDayLen
             Write SetWeekDayLen
             default wdlDDD;

    Property OnChange : TNotifyEvent
             read    fOnChange
             Write   fOnChange;
  end;

implementation

Constructor TAdrockWeekdayHeaderClassColors.Create(Aowner : TComponent);
begin
  FBackColor := clBtnFace;

  fColorSunday    := clBlack;
  fColorMonday    := clBlack;
  fColorTuesday   := clBlack;
  fColorWednesday := clBlack;
  fColorThursday  := clBlack;
  fColorFriday    := clBlack;
  fColorSaturday  := clBlack;
end;

Destructor TAdrockWeekdayHeaderClassColors.Destroy;
begin
  INherited Destroy;
end;

Procedure TAdrockWeekdayHeaderClassColors.Assign(Source : TPersistent);
Var
 fSource : TAdrockWeekdayHeaderClassColors;
begin
  if (Source is TAdrockWeekdayHeaderClassColors) then
   begin
    fSource := (Source as TAdrockWeekdayHeaderClassColors);

    Saturday  := fSource.Saturday;
    Sunday    := fSource.Sunday;
    Monday    := fSource.Monday;
    Tuesday   := fSource.Tuesday;
    Wednesday := fSource.Wednesday;
    Thursday  := fSource.Thursday;
    Friday    := fSource.Friday;
    Back      := fSource.Back;

    exit;
   end;
  Inherited Assign(Source);
end;

Procedure TAdrockWeekdayHeaderClassColors.Change;
begin
  if (assigned(fOnChange)) then
    fOnChange(Self);
end;


Procedure TAdrockWeekdayHeaderClassColors.SetBackColor(NewValue : TColor);
begin
  if (NewValue <> Back) then
   begin
     fBackColor := NewValue;
     Change;
   end;
end;


Procedure TAdrockWeekdayHeaderClassColors.SetColorSaturday(NewValue : TColor);
begin
  if (Saturday<> NewValue) then
   begin
     fColorSaturday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorSunday(NewValue : TColor);
begin
  if (Sunday <> NewValue) then
   begin
     fColorSunday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorMonday(NewValue : TColor);
begin
  if (Monday <> NewValue) then
   begin
     fColorMonday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorTuesday(NewValue : TColor);
begin
  if (Tuesday <> NewValue) then
   begin
     fColorTuesday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorWednesday(NewValue : TColor);
begin
  if (Wednesday <> NewValue) then
   begin
     fColorWednesday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorThursday(NewValue : TColor);
begin
  if (Thursday <> NewValue) then
   begin
     fColorThursday := NewValue;
     Change;
   end;
end;

Procedure TAdrockWeekdayHeaderClassColors.SetColorFriday(NewValue : TColor);
begin
  if (Friday <> NewValue) then
   begin
     fColorFriday := NewValue;
     Change;
   end;
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorSunday    : Boolean;
begin
  Result := (fColorSunday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorMonday    : Boolean;
begin
  Result := (fColorMonday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorTuesday   : Boolean;
begin
  Result := (fColorTuesday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorWednesday : Boolean;
begin
  Result := (fColorWednesday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorThursday  : Boolean;
begin
  Result := (fColorThursday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorFriday    : Boolean;
begin
  Result := (fColorFriday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorSaturday  : Boolean;
begin
  Result := (fColorSaturday <> clBlack);
end;

Function  TAdrockWeekdayHeaderClassColors.StoreColorBack      : Boolean;
begin
  Result := (fBackColor <> clBtnFace);
end;


Constructor TAdrockWeekdayHeaderClass.Create(Aowner : TComponent);
begin
  fWeekNumbers := FALSE;
  fWeekStart  := wdSunday;
  fFont       := TFont.Create;
  fFont.OnChange := OnFontChange;
  fBevelWidth := 1;
  fBevel      := bsRaised;
  fWeekDayLen := wdlDDD;
  fColors     := TAdrockWeekdayHeaderClassColors.Create(Aowner);
  fColors.OnChange := Change;
end;

Destructor TAdrockWeekdayHeaderClass.Destroy;
begin
  fColors.Free;
  fFont.Free;
  INherited Destroy;
end;

Procedure TAdrockWeekdayHeaderClass.SetFont(NewFont : TFont);
begin
  ffont.assign(NewFont);
end;

Procedure TAdrockWeekdayHeaderClass.Assign(Source : TPersistent);
Var
 fSource : TAdrockWeekdayHeaderClass;
begin
  if (Source is TAdrockWeekdayHeaderClass) then
   begin
    fSource := (Source as TAdrockWeekdayHeaderClass);

    BevelWidth     := fSource.BevelWidth;
    Bevel          := fSource.Bevel;
    StartDayOfWeek := fSource.StartDayOfWeek;
    WeekDayLen     := fSource.WeekDayLen;
    WeekNumberWidth:= fSource.WeekNumberWidth;

    Font.Assign(fSource.Font);
    Colors.Assign(fSource.Colors);
    exit;
   end;
  Inherited Assign(Source);
end;

Procedure TAdrockWeekdayHeaderClass.Change(Sender : TObject);
begin
  if (assigned(fOnChange)) then
    fOnChange(Self);
end;

Procedure TAdrockWeekdayHeaderClass.OnFontChange(Sender : TObject);
begin
  Change(Sender);
end;

Procedure TAdrockWeekdayHeaderClass.SetWeekNumbers(NewValue : Boolean);
begin
  if (WeekNumbers <> NewValue) then
   begin
     fWeekNumbers := NewValue;
     Change(Self);
   end;
end;

Procedure TAdrockWeekdayHeaderClass.SetWeekStart(NewValue : TAdrockWeekDay);
begin
  if (NewValue <> StartDayOfWeek) then
   begin
     fWeekStart := NewValue;
     Change(Self);
   end;
end;

Procedure TAdrockWeekdayHeaderClass.SetBevel(NewValue : TBevelStyle);
begin
  if (NewValue <> Bevel) then
   begin
     fBevel := NewValue;
     Change(Self);
   end;
end;

Procedure TAdrockWeekdayHeaderClass.SetBevelWidth(NewValue : Integer);
begin
  if (NewValue <> BevelWidth) then
   begin
     fBevelWidth := NewValue;
     Change(Self);
   end;
end;

Procedure TAdrockWeekdayHeaderClass.SetWeekDayLen(NewValue : TAdrockDateWeekDayLen);
begin
  if (NewValue <> WeekDayLen) then
   begin
     fWeekDayLen := NewValue;
     Change(Self);
   end;
end;

Procedure TAdrockWeekdayHeaderClass.PaintWeekdayHeader(Canvas : TCanvas; ClientRect : TRect);
Var
  ftext                 : String;
  fCellWidth            : Integer;
  TempRect, fRect       : TRect;
  WeekDayID, X, Y, Pos  : Integer;
  Width                 : Integer;
  WeekNumberRect        : TRect;
  CalendarOffsetX       : Integer;
begin
  with Canvas do
   begin
     fRect := ClientRect;

     if (Bevel = bsRaised) then
       Frame3d(Canvas, fRect, clBtnHighlight, clBtnShadow, BevelWidth)
     else
       Frame3d(Canvas, fRect, clBtnShadow, clBtnHighlight, BevelWidth);

     Brush.Color := Colors.Back;
     Brush.Style := bsSolid;
     FillRect(fRect);

     Width  := (fRect.Right-fRect.Left);

     Brush.Color := Colors.Back; {CustomCalendar.ColorWeekNumberBack;}

     { Special computations needed for showing of weeknumbers }
     if (WeekNumbers) then
      begin
        WeekNumberRect := Rect(ClientRect.Left+4, clientRect.Top+2, ClientRect.Left+WeekNumberWidth-1, ClientRect.Bottom-2);
        Dec(Width, WeekNumberWidth);
        inc(fRect.Left, WeekNumberWidth);
        inc(ClientRect.Left, WeekNumberWidth);

        { Paint and frame the WeekNumbers }
{       Frame3d(Canvas, WeekNumberRect, clBtnHighlight, clBtnShadow,1);}
        X := ((WeekNumberRect.Right-WeekNumberRect.Left) div 2) - (TextWidth('#') div 2);
        Y := ((WeekNumberRect.Bottom-WeekNumberRect.Top) div 2) - (TextHeight('#') div 2);
        TextRect(WeekNumberRect, WeekNumberRect.Left+(X-1), WeekNumberRect.Top+(Y-1), '#');
      end;
    fCellWidth    := ((Width-10) div 7);
    CalendarOffsetX := (Width - (fCellWidth * 7)) div 2;

     Font.Assign(fFont);
     for Pos := 1 to 7 do
      begin
        TempRect := fRect;
        Dec(TempRect.Bottom, 1);
        
        inc(TempRect.Top,2);
        inc(TempRect.Left, CalendarOffsetX);
        With TempRect Do
        begin
         Left := left + fCellWidth * (Pos - 1);
         Right := Left + fCellWidth;
        end;
       WeekDayID := Pos + Ord(StartDayOfWeek);
       if (WeekDayID> 7) then
         WeekDayID:= WeekDayID- 7;

       case WeekdayID of
          1 : Font.Color := Colors.Sunday;
          2 : Font.Color := Colors.Monday;
          3 : Font.Color := Colors.Tuesday;
          4 : Font.Color := Colors.Wednesday;
          5 : Font.Color := Colors.Thursday;
          6 : Font.Color := Colors.Friday;
          7 : Font.Color := Colors.Saturday;
       end;

       if (WeekDayLen = WdlD) then
          fText := Copy(ShortDayNames[WeekDayID],1,1)
       else if (WeekDayLen = WdlDD) then
          fText := Copy(ShortDayNames[WeekDayID],1,2)
       else if (WeekDayLen = WdlDDD) then
          fText := ShortDayNames[WeekDayID]
        else
          fText := LongDayNames[WeekDayID];
        X := ((TempRect.Right-TempRect.Left) div 2) - (TextWidth(fText) div 2);
        Y := ((TempRect.Bottom-TempRect.Top) div 2) - (TextHeight(fText) div 2);
        TextRect(TempRect, TempRect.Left+X, TempRect.Top+Y, fText);
      end;
   end;
end;


end.
