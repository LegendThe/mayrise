unit AdDDFCl;

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

Uses Sysutils,Classes, Graphics, addatnav;


Type
  TAdrockDateInputStyle   = (disWindows,
                             disWeekDayWindows,
                             disDMY,
                             disMDY,
                             disYMD,
                             disMonthYear,
                             disDayMonth,
                             disWeekDayDMY,
                             disWeekDayMDY,
                             disWeekDayYMD);

  { Specifies the TIME input style for the control }
  TAdrockTimeInputStyle   = (tisWindowsShort, { Windows Short Time Format 12 or 24  }
                             tisWindowsLong,  { Windows Long Time Format  12 or 24  }
                             tisHMS24,        { Hour Minute Second        - 24 Hour }
                             tisHM24,         { Hour Minute               - 24 Hour }
                             tisHMS12,        { Hour Minute Second        - 12 Hour }
                             tisHM12,         { Hour Minute               - 12 Hour }
                             tisHMSAMPM,      { Hour Minute Second AMPM   - 12 Hour }
                             tisHMAMPM        { Hour Minute AMPM          - 12 Hour }
                             );

  { Specifies the display style for the edit SubField when it does not have the focus }
  TAdrockDateDisplayStyle         = ( ddsWindowsShortDate,
                                      ddsWindowsLongDate,
                                      ddsDayMonth,
                                      ddsMonthYear,
                                      ddsDDMMYYYY,
                                      ddsMMDDYYYY,
                                      ddsYYYYMMDD,
                                      ddsDateInputStyle);

  TAdrockTimeDisplayStyle         = ( tdsWindowsShortTime,
                                      tdsWindowsLongTime,
                                      tdsHMSAMPM,
                                      tdsHMS12,
                                      tdsHMS24,
                                      tdsHM12,
                                      tdsHM24,
                                      tdsHMAMPM,
                                      tdsTimeInputStyle);

  TAdrockDateTimeDisplayStyle =       (dtdsDateStyle,
                                       dtdsTimeStyle,
                                       dtdsDateAndTimeStyle,
                                       dtdsInputStyle,
                                       dtdsCustom);

  TAdrockDateDisplayFormatClass =  class(TPersistent)
  private
    fStyle        : TAdrockDateNavigatorStyle;
    fOnChange     : TNotifyEvent;
    fCustomFormat : String;
    fFont         : TFont;
    fAllowChange  : Integer;

    Procedure FontChange(Sender : Tobject);
    Procedure SetFont(NewFont : TFont);
    Procedure SetCustomFormat(Value : String);
    Procedure SetStyle(Value : TAdrockDateNavigatorStyle);
  Public
    Procedure BeginUpdate;
    Procedure EndUpdate;

    Procedure   Change;
    Constructor Create;
    Destructor  Destroy; override;
    Function    ReturnDisplayFormat : String;
    Procedure   Assign(Source : TPersistent); override;

    Property OnChange : TNotifyEvent
             Read   fOnChange
             Write  fOnChange;
  published
    Property Font         : TFont
             Read   fFont
             Write  SetFont;

    property CustomFormat : String
             read   fCustomFormat
             Write  SetCustomFormat;

    Property Style : TAdrockDateNavigatorStyle
             read   fStyle
             Write  SetStyle
             Default styShortMonthYear;
  end;

  TAdrockTimeDisplayFormatClass =  class(TPersistent)
  private
    fStyle : TAdrockTimeDisplayStyle;
  Public
   Function ReturnDisplayFormat : String;
   Procedure Assign(Source : TPersistent); override;
  published
    Property  Style : TAdrockTimeDisplayStyle
              read  fStyle
              Write fStyle;
  end;

  TAdrockDateInputFormatClass =  class(TPersistent)
  private
    fStyle : TAdrockDateInputStyle;
  published
    Property  Style : TAdrockDateInputStyle
              read  fStyle
              Write fStyle;
  end;

  TAdrockTimeInputFormatClass =  class(TPersistent)
  private
    fStyle : TAdrockTimeInputStyle;
  Public
    Procedure Assign(Source : TPersistent); override;
  published
    Property  Style : TAdrockTimeInputStyle
              read  fStyle
              Write fStyle;
  end;

implementation

Constructor TAdrockDateDisplayFormatClass.Create;
begin
  fStyle := styShortMonthYear;
  fFont  := TFont.Create;
  fFont.OnChange := FontChange;
  fAllowChange := 0;
end;

Destructor  TAdrockDateDisplayFormatClass.Destroy;
begin
  fFont.Free;
  Inherited Destroy;
end;

Procedure TAdrockDateDisplayFormatClass.SetFont(NewFont : TFont);
begin
  fFont.Assign(NewFont);
  Change;
end;

Procedure TAdrockDateDisplayFormatClass.FontChange(Sender : Tobject);
begin
  Change;
end;

Procedure TAdrockDateDisplayFormatClass.SetCustomFormat(Value : String);
begin
  fCustomFormat := Value;
  Change;
end;

Procedure TAdrockDateDisplayFormatClass.SetStyle(Value : TAdrockDateNavigatorStyle);
begin
  fStyle := Value;
  Change;
end;

Procedure TAdrockDateDisplayFormatClass.BeginUpdate;
begin
  Inc(fAllowChange);
end;

Procedure TAdrockDateDisplayFormatClass.EndUpdate;
begin
  Dec(fAllowChange);
end;

Procedure TAdrockDateDisplayFormatClass.Change;
begin
  if (fAllowChange = 0) then
    if (Assigned(fOnchange)) then
      fOnChange(Self);
end;


Procedure TAdrockDateDisplayFormatClass.Assign(Source : TPersistent);
Var
 fSource : TAdrockDateDisplayFormatClass;
begin
  if (Source is TAdrockDateDisplayFormatClass) then
   begin
     fSource := (Source as TAdrockDateDisplayFormatClass);

     fStyle := FSource.Style;
     fCustomFormat := FSource.CustomFormat;
     fFont.Assign(FSource.Font);
   end
  else
    inherited Assign(Source);
end;

{************************************************************************************************************************}
{* This routine will return the format to display the date in.                                                          *}
{************************************************************************************************************************}
Function TAdrockDateDisplayFormatClass.ReturnDisplayFormat : String;
begin
   if (CustomFormat <> '') then
     result := CustomFormat
   else
    case Style of
      styDay                 : Result := 'D';
      styDayTh               : Result := 'DZ';
      styShortMonth          : Result := 'MMM';
      styMonth               : Result := 'MMMM';
      styYear                : Result := 'YYYY';
      styShortMonthYear      : Result := 'MMM, YYYY';
      styMonthYear           : Result := 'MMMM, YYYY';
      styDayMonthYear        : Result := 'MMMM D, YYYY';
      styDayShortMonthYearTh : Result := 'MMM DZ, YYYY';
      styDayMonthYearTh      : Result := 'MMMM DZ, YYYY';
      styWeek                : Result := '''Week ''W''';
      styWeekYear            : Result := '''Week ''W'' of ''YYYY''';
    end;
end;

{************************************************************************************************************************}
Procedure TAdrockTimeDisplayFormatClass.Assign(Source : TPersistent);
Var
 fSource : TAdrockTimeDisplayFormatClass;
begin
  if (Source is TAdrockTimeDisplayFormatClass) then
   begin
     fSource := (Source as TAdrockTimeDisplayFormatClass);

     Style := FSource.Style;
     exit;
   end;
  inherited Assign(Source);
end;

{************************************************************************************************************************}
{* This routine will return the format to display the time in.                                                          *}
{************************************************************************************************************************}
Function TAdrockTimeDisplayFormatClass.ReturnDisplayFormat : String;
Var
  Value : TAdrockTimeDisplayStyle;
begin
  Value := fStyle;
  case Value of
    tdsWindowsShortTime   : Result := ShortTimeFormat;
    tdsWindowsLongTime    : Result := LongTimeFormat;
    tdsHMAMPM             : Result := 'HH:MM AM/PM';
    tdsHM12               : Result := 'HH:MM';
    tdsHM24               : Result := 'HH:MM';
    tdsHMSAMPM            : Result := 'HH:MM:SS AM/PM';
    tdsHMS12              : Result := 'HH:MM:SS';
    tdsHMS24              : Result := 'HH:MM:SS';
  end;
end;

Procedure TAdrockTimeInputFormatClass.Assign(Source : TPersistent);
Var
 fSource : TAdrockTimeInputFormatClass;
begin
  if (Source is TAdrockTimeInputFormatClass) then
   begin
     fSource := (Source as TAdrockTimeInputFormatClass);

     Style := FSource.Style;
     exit;
   end;
  inherited Assign(Source);
end;

end.


