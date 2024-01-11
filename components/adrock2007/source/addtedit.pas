unit addtedit;

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
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AdDDFCl,
  addatecc, { This is required since we use an instance of the custom calendar here }
  addatecn, { This is required for the constants isDateTime etc }
  StdCtrls, adEdit, adbutedt, AdDateTm, ExtCtrls, Buttons, adchkbx,
  adCombo, Tabs, AdCalSet, adgrpbox, adRadGrp;

type
  TAdrockDateTimeEditSampleForm = class(TForm)
    OpenDialog1: TOpenDialog;
    Notebook1: TNotebook;
    TabSet1: TTabSet;
    DisplayStylePanel: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    TAdrockDateTimeEditLabel: TLabel;
    AdrockDateTimeEdit1: TAdrockDateTimeEdit;
    OKButton: TBitBtn;
    CancelButton: TBitBtn;
    DisplayStyleNoteBook: TNotebook;
    Panel2: TPanel;
    LabelCustomDisplayFormat: TLabel;
    DisplayFormatRadioGroup: TRadioGroup;
    DateDisplayStyleRadioGroup: TRadioGroup;
    TimeDisplayStyleRadioGroup: TRadioGroup;
    CustomDisplayFormat: TAdrockComboBox;
    Label3: TLabel;
    LabelFreeFormDateDisplayStyle: TLabel;
    FreeFormDateDisplayFormat: TAdrockComboBox;
    LabelFreeFormDateTimeDisplayStyle: TLabel;
    FreeFormDateTimeDisplayFormat: TAdrockComboBox;
    LabelFreeFormDateTimeMidnightDisplayStyle: TLabel;
    FreeFormDateTimeMidnightDisplayFormat: TAdrockComboBox;
    InputStyleNoteBook: TNotebook;
    DateInputStyleRadioGroup: TRadioGroup;
    TimeInputStyleRadioGroup: TRadioGroup;
    Panel1: TPanel;
    InputStyleRadioGroup: TRadioGroup;
    RadioGroup1: TGroupBox;
    LabelFreeFormDateInputStyle: TLabel;
    LabelFreeFormTimeDateInputStyle: TLabel;
    LabelFreeFormDateTimeMidnightInputStyle: TLabel;
    FreeFormDateInputStyle: TAdrockComboBox;
    FreeFormDateTimeInputStyle: TAdrockComboBox;
    FreeFormDateTimeMidnightInputStyle: TAdrockComboBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    AdrockCalendarSettingsComponent1: TAdrockCalendarSettingsComponent;
    ButtonBitmapGroupBox: TAdrockGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ComboBoxButtonBitmapStyle: TAdrockComboBox;
    ComboBoxButtonBitmapType: TAdrockComboBox;
    SpinEditButtonBitmapWidth: TAdrockEdit;
    SelectCustomBitmapButton: TBitBtn;
    MiscGroupBox: TAdrockGroupBox;
    AdrockCheckBoxUseTabAsArrows: TAdrockCheckBox;
    RadioGroupColor: TAdrockRadioGroup;
    ComboBoxColor: TAdrockComboBox;
    TimeGroupBox: TAdrockGroupBox;
    SecondIncrement: TAdrockComboBox;
    MinuteIncrement: TAdrockComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Year2000GroupBox: TAdrockGroupBox;
    Label8: TLabel;
    Year2000Cutoff: TAdrockEdit;
    Label10: TLabel;
    LabelShowMonthAs: TLabel;
    ComboBoxShowMonthAs: TAdrockComboBox;
    ComboBoxWeekDayStyle: TAdrockComboBox;
    DateRangeGroupBox: TAdrockGroupBox;
    MinDate: TAdrockDateTimeEdit;
    MaxDate: TAdrockDateTimeEdit;
    Label9: TLabel;
    Label11: TLabel;
    EnableRangeChecking: TAdrockCheckBox;
    MessagesGroupBox: TAdrockGroupBox;
    textNilDate: TAdrockEdit;
    textBadDate: TAdrockEdit;
    textRangeError: TAdrockEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    YearDigitStyle: TAdrockComboBox;
    Label19: TLabel;
    ColorDialog1: TColorDialog;
    Bevel1: TBevel;
    TextExtraText: TAdrockEdit;
    Label15: TLabel;
    CheckBoxShowCheckBox: TAdrockCheckBox;
    CheckBoxAutoJumpSubFields: TAdrockCheckBox;
    DateValidityOptions: TAdrockComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateInputStyleRadioGroupClick(Sender: TObject);
    procedure TimeInputStyleRadioGroupClick(Sender: TObject);
    procedure CustomDisplayFormatExit(Sender: TObject);
    procedure DisplayFormatRadioGroupClick(Sender: TObject);
    procedure DateDisplayStyleRadioGroupClick(Sender: TObject);
    procedure TimeDisplayStyleRadioGroupClick(Sender: TObject);
    procedure CheckBoxEnabledClick(Sender: TObject);
    procedure AdrockCheckBoxReadOnlyClick(Sender: TObject);
    procedure ComboBoxShowMonthAsChange(Sender: TObject);
    procedure CustomDisplayFormatChange(Sender: TObject);
    procedure InputStyleRadioGroupClick(Sender: TObject);
    procedure AdrockCheckBoxUseTabAsArrowsClick(Sender: TObject);
    procedure ComboBoxWeekDayStyleChange(Sender: TObject);
    procedure ComboBoxButtonBitmapStyleChange(Sender: TObject);
    procedure SelectCustomBitmapButtonClick(Sender: TObject);
    procedure SpinEditButtonBitmapWidthChange(Sender: TObject);
    procedure ComboBoxButtonBitmapTypeChange(Sender: TObject);
    procedure TabSet1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FreeFormDateInputStyleChange(Sender: TObject);
    procedure FreeFormDateTimeInputStyleChange(Sender: TObject);
    procedure FreeFormDateTimeMidnightInputStyleChange(Sender: TObject);
    procedure FreeFormDateDisplayFormatChange(Sender: TObject);
    procedure FreeFormDateTimeDisplayFormatChange(Sender: TObject);
    procedure FreeFormDateTimeMidnightDisplayFormatChange(Sender: TObject);
    procedure ComboBoxColorDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ComboBoxColorChange(Sender: TObject);
    procedure RadioGroupColorClick(Sender: TObject);
    procedure MinDateChange(Sender: TObject);
    procedure MaxDateChange(Sender: TObject);
    procedure EnableRangeCheckingClick(Sender: TObject);
    procedure Year2000CutoffChange(Sender: TObject);
    procedure YearDigitStyleChange(Sender: TObject);
    procedure CheckBoxShowCheckBoxClick(Sender: TObject);
    procedure CheckBoxAutoJumpSubFieldsClick(Sender: TObject);
    procedure SecondIncrementChange(Sender: TObject);
    procedure MinuteIncrementChange(Sender: TObject);
    procedure textNilDateChange(Sender: TObject);
    procedure textBadDateChange(Sender: TObject);
    procedure textRangeErrorChange(Sender: TObject);
    procedure TextExtraTextChange(Sender: TObject);
    procedure DateValidityOptionsChange(Sender: TObject);
    procedure Year2000CutoffKeyPress(Sender: TObject; var Key: Char);
    procedure SpinEditButtonBitmapWidthKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Private declarations }
    procedure RefreshFreeFormControls;
  public
    { Public declarations }
    Function  GetColorByIndex(Index : integer) : TColor;
    procedure SetColorByIndex(Index : integer; Color : TColor);
  end;

  Function OpenTAdrockDateTimeEditComponentEditor(Component : TAdrockDateTimeEdit) : Boolean;

var
  AdrockDateTimeEditSampleForm: TAdrockDateTimeEditSampleForm;

implementation

{$R *.DFM}

Procedure CopyPropertyValues(SourceComponent, DestinationComponent : TAdrockDateTimeEdit);
begin
  DestinationComponent.Colors.Assign(SourceComponent.Colors);

  DestinationComponent.ButtonBitmap.Assign(SourceComponent.ButtonBitmap);
  DestinationComponent.ButtonBitmapStyle               := SourceComponent.ButtonBitmapStyle;
  DestinationComponent.ButtonBitmapType                := SourceComponent.ButtonBitmapType;
  DestinationComponent.ButtonBitmapWidth               := SourceComponent.ButtonBitmapWidth;
  
  

  DestinationComponent.FreeFormFormatDate              := SourceComponent.FreeFormFormatDate;
  DestinationComponent.FreeFormFormatDateTime          := SourceComponent.FreeFormFormatDateTime;
  DestinationComponent.FreeFormFormatDateTimeMidnight  := SourceComponent.FreeFormFormatDateTimeMidnight;

  DestinationComponent.FreeFormFormatDisplayDate             := SourceComponent.FreeFormFormatDisplayDate;
  DestinationComponent.FreeFormFormatDisplayDateTime         := SourceComponent.FreeFormFormatDisplayDateTime;
  DestinationComponent.FreeFormFormatDisplayDateTimeMidnight := SourceComponent.FreeFormFormatDisplayDateTimeMidnight;

  DestinationComponent.CenturyCutoff       := SourceComponent.CenturyCutoff;
  DestinationComponent.Options             := SourceComponent.Options;
  DestinationComponent.YearStyle           := SourceComponent.YearStyle;
  DestinationComponent.ShowMonthAs         := SourceComponent.ShowMonthAs;
  DestinationComponent.WeekDayStyle        := SourceComponent.WeekDayStyle;
  DestinationComponent.IncrementSecond     := SourceComponent.IncrementSecond;
  DestinationComponent.IncrementMinute     := SourceComponent.IncrementMinute;
  DestinationComponent.BadDateText         := SourceComponent.BadDateText;
  DestinationComponent.NilDateText         := SourceComponent.NilDateText;
  DestinationComponent.NoDateText          := SourceComponent.NoDateText;
  DestinationComponent.RangeErrorText      := SourceComponent.RangeErrorText;
  DestinationComponent.ExtraText           := SourceComponent.ExtraText;
  DestinationComponent.DateMax.DateTime    := SourceComponent.DateMax.DateTime;
  DestinationComponent.DateMin.DateTime    := SourceComponent.DateMin.DateTime;
  DestinationComponent.Date.DateTime       := SourceComponent.Date.DateTime;
  DestinationComponent.DateValidityOptions := SourceComponent.DateValidityOptions;
  DestinationComponent.InputStyle          := SourceComponent.InputStyle;
  DestinationComponent.DisplayStyle        := SourceComponent.DisplayStyle;
  DestinationComponent.DateDisplayStyle    := SourceComponent.DateDisplayStyle;
  DestinationComponent.TimeDisplayStyle    := SourceComponent.TimeDisplayStyle;
  DestinationComponent.DateInputStyle      := SourceComponent.DateInputStyle;
  DestinationComponent.TimeInputStyle      := SourceComponent.TimeInputStyle;
  DestinationComponent.CustomDisplayFormat := SourceComponent.CustomDisplayFormat;
end;

Procedure RefreshControlsToComponentValue(fForm : TAdrockDateTimeEditSampleForm; Component : TAdrockDateTimeEdit);
begin
  with fForm do
   begin
     case Component.InputStyle of
       isDateTime           : InputStyleRadioGroup.ItemIndex := 0;
       isDate               : InputStyleRadioGroup.ItemIndex := 1;
       isTime               : InputStyleRadioGroup.ItemIndex := 2;
       isDateKeepTime       : InputStyleRadioGroup.ItemIndex := 3;
       isTimeKeepDate       : InputStyleRadioGroup.ItemIndex := 4;
       isFreeForm           : InputStyleRadioGroup.ItemIndex := 5;
       isFreeFormDateTime   : InputStyleRadioGroup.ItemIndex := 6;
     end;
     RefreshFreeFormControls;

     case Component.DateInputStyle of
       disDMY               : DateInputStyleRadioGroup.ItemIndex := 0;
       disMDY               : DateInputStyleRadioGroup.ItemIndex := 1;
       disYMD               : DateInputStyleRadioGroup.ItemIndex := 2;
       disMonthYear         : DateInputStyleRadioGroup.ItemIndex := 3;
       disWeekDayDMY        : DateInputStyleRadioGroup.ItemIndex := 4;
       disWeekDayMDY        : DateInputStyleRadioGroup.ItemIndex := 5;
       disWeekDayYMD        : DateInputStyleRadioGroup.ItemIndex := 6;
       disWeekDayWindows    : DateInputStyleRadioGroup.ItemIndex := 7;
       disWindows           : DateInputStyleRadioGroup.ItemIndex := 8;
     end;
     case Component.TimeInputStyle of
       tisHM12              : TimeInputStyleRadioGroup.ItemIndex := 0;
       tisHM24              : TimeInputStyleRadioGroup.ItemIndex := 1;
       tisHMAMPM            : TimeInputStyleRadioGroup.ItemIndex := 2;
       tisHMS12             : TimeInputStyleRadioGroup.ItemIndex := 3;
       tisHMS24             : TimeInputStyleRadioGroup.ItemIndex := 4;
       tisHMSAMPM           : TimeInputStyleRadioGroup.ItemIndex := 5;
       tisWindowsLong       : TimeInputStyleRadioGroup.ItemIndex := 6;
       tisWindowsShort      : TimeInputStyleRadioGroup.ItemIndex := 7;
     end;

     DateValidityOptions.ItemIndex              := ord(Component.DateValidityOptions);
     CustomDisplayFormat.Text                   := Component.CustomDisplayFormat;
     FreeFormDateInputStyle.Text                := Component.FreeFormFormatDate;
     FreeFormDateTimeInputStyle.Text            := Component.FreeFormFormatDateTime;
     FreeFormDateTimeMidnightInputStyle.Text    := Component.FreeFormFormatDateTimeMidnight;

     FreeFormDateDisplayFormat.Text             := Component.FreeFormFormatDisplayDate;
     FreeFormDateTimeDisplayFormat.Text         := Component.FreeFormFormatDisplayDateTime;
     FreeFormDateTimeMidnightDisplayFormat.Text := Component.FreeFormFormatDisplayDateTimeMidnight;

     TextNilDate.Text                           := Component.NilDateText;
     TextBadDate.Text                           := Component.BadDateText;
     TextRangeError.Text                        := Component.RangeErrorText;
     TextExtraText.Text                         := Component.ExtraText;
     if (Component.YearStyle = ys2Digit) then
       YearDigitStyle.ItemIndex := 0
     else
       YearDigitStyle.ItemIndex := 1;
     Year2000Cutoff.Text                   := inttostr(Component.CenturyCutoff);
     MinDate.Date.DateTime                 := Component.DateMin.DateTime;
     MaxDate.Date.DateTime                 := Component.DateMax.DateTime;
     EnableRangeChecking.Checked           := (deoShowRangeErrors in Component.Options);
     CheckBoxShowCheckBox.Checked          := (deoShowCheckBox in Component.Options);
     CheckBoxAutoJumpSubFields.Checked     :=(deoAutoJumpSubFields in Component.Options);
     AdrockCheckBoxUseTabAsArrows.Checked  := (deoUsetabAsArrows in Component.Options);
     if (Component.ShowMonthAs = smNumber) then
       ComboBoxShowMonthAs.ItemIndex := 0
     else if (Component.ShowMonthAs = smShortMonth) then
       ComboBoxShowMonthAs.ItemIndex := 1
     else
       ComboBoxShowMonthAs.ItemIndex :=2;

     if (Component.WeekDayStyle = wdsShortWeekDay) then
       ComboBoxWeekDayStyle.ItemIndex :=0
     else
       ComboBoxWeekDayStyle.ItemIndex :=1;
     SecondIncrement.ItemIndex := ord(Component.IncrementSecond);
     MinuteIncrement.ItemIndex := ord(Component.IncrementMinute);
     RadioGroupColorClick(nil);

     case Component.DisplayStyle of
       dtdsDateStyle        : DisplayFormatRadioGroup.ItemIndex := 0;
       dtdsTimeStyle        : DisplayFormatRadioGroup.ItemIndex := 1;
       dtdsDateAndTimeStyle : DisplayFormatRadioGroup.ItemIndex := 2;
       dtdsInputStyle       : DisplayFormatRadioGroup.ItemIndex := 3;
       dtdsCustom           : DisplayFormatRadioGroup.ItemIndex := 4;
     end;
     case Component.DateDisplayStyle of
       ddsDDMMYYYY          : DateDisplayStyleRadioGroup.ItemIndex := 0;
       ddsMMDDYYYY          : DateDisplayStyleRadioGroup.ItemIndex := 1;
       ddsYYYYMMDD          : DateDisplayStyleRadioGroup.ItemIndex := 2;
       ddsDateInputStyle    : DateDisplayStyleRadioGroup.ItemIndex := 3;
       ddsWindowsShortDate  : DateDisplayStyleRadioGroup.ItemIndex := 4;
       ddsWindowsLongDate   : DateDisplayStyleRadioGroup.ItemIndex := 5;
       ddsMonthYear         : DateDisplayStyleRadioGroup.ItemIndex := 6;
     end;
     case Component.TimeDisplayStyle of
       tdsHM12              : TimeDisplayStyleRadioGroup.ItemIndex := 0;
       tdsHM24              : TimeDisplayStyleRadioGroup.ItemIndex := 1;
       tdsHMS12             : TimeDisplayStyleRadioGroup.ItemIndex := 2;
       tdsHMS24             : TimeDisplayStyleRadioGroup.ItemIndex := 3;
       tdsHMAMPM            : TimeDisplayStyleRadioGroup.ItemIndex := 4;
       tdsHMSAMPM           : TimeDisplayStyleRadioGroup.ItemIndex := 5;
       tdsTimeInputStyle    : TimeDisplayStyleRadioGroup.ItemIndex := 6;
       tdsWindowsShortTime  : TimeDisplayStyleRadioGroup.ItemIndex := 7;
       tdsWindowsLongTime   : TimeDisplayStyleRadioGroup.ItemIndex := 8;
     end;
   end;
end;

Function OpenTAdrockDateTimeEditComponentEditor(Component : TAdrockDateTimeEdit) : Boolean;
begin
  Result := FALSE;
  AdrockDateTimeEditSampleForm := TAdrockDateTimeEditSampleForm.Create(Application);
  CopyPropertyValues(Component, AdrockDateTimeEditSampleForm.AdrockDateTimeEdit1);
  RefreshControlsToComponentValue(AdrockDateTimeEditSampleForm, AdrockDateTimeEditSampleForm.AdrockDateTimeEdit1);
  if (AdrockDateTimeEditSampleForm.ShowModal = mrOK) then
   begin
     CopyPropertyValues(AdrockDateTimeEditSampleForm.AdrockDateTimeEdit1, Component);
     Result := TRUE;
   end;
  AdrockDateTimeEditSampleForm.Free;
end;

procedure TAdrockDateTimeEditSampleForm.Button1Click(Sender: TObject);
begin
 TAdrockCalendarSettings.Create(Self);
end;

procedure TAdrockDateTimeEditSampleForm.FormCreate(Sender: TObject);
begin
 DisplayStyleNoteBook.PageIndex := 0;
 InputStyleNoteBook.PageIndex   := 0;
 Notebook1.PageIndex            := 0;
 TabSet1.TabIndex               := 0;

 AdrockDateTimeEdit1.Date.DateTime := Now;
 ComboBoxShowMonthAs.ItemIndex := 0;
 ComboBoxWeekDayStyle.ItemIndex := 0;
 ComboBoxButtonBitmapType.ItemIndex := 0;
 ComboBoxButtonBitmapStyle.ItemIndex := 0;
 SpinEditButtonBitmapWidth.Text := Inttostr(AdrockDatetimeEdit1.ButtonBitmapWidth);
 SelectCustomBitmapButton.Glyph.Assign(AdrockDateTimeEdit1.ButtonBitmap);
end;

procedure TAdrockDateTimeEditSampleForm.DateInputStyleRadioGroupClick(Sender: TObject);
begin
     Case DateInputStyleRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.DateInputStyle := disDMY;
       1 : AdrockDateTimeEdit1.DateInputStyle := disMDY;
       2 : AdrockDateTimeEdit1.DateInputStyle := disYMD;
       3 : AdrockDateTimeEdit1.DateInputStyle := disMonthYear;
       4 : AdrockDateTimeEdit1.DateInputStyle := disWeekDayDMY;
       5 : AdrockDateTimeEdit1.DateInputStyle := disWeekDayMDY;
       6 : AdrockDateTimeEdit1.DateInputStyle := disWeekDayYMD;
       7 : AdrockDateTimeEdit1.DateInputStyle := disWeekDayWindows;
       8 : AdrockDateTimeEdit1.DateInputStyle := disWindows;
     end;
end;

procedure TAdrockDateTimeEditSampleForm.TimeInputStyleRadioGroupClick(
  Sender: TObject);
begin
     Case TimeInputStyleRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.TimeInputStyle := tisHM12;
       1 : AdrockDateTimeEdit1.TimeInputStyle := tisHM24;
       2 : AdrockDateTimeEdit1.TimeInputStyle := tisHMAMPM;
       3 : AdrockDateTimeEdit1.TimeInputStyle := tisHMS12;
       4 : AdrockDateTimeEdit1.TimeInputStyle := tisHMS24;
       5 : AdrockDateTimeEdit1.TimeInputStyle := tisHMSAMPM;
       6 : AdrockDateTimeEdit1.TimeInputStyle := tisWindowsLong;
       7 : AdrockDateTimeEdit1.TimeInputStyle := tisWindowsShort;
     end;
end;

procedure TAdrockDateTimeEditSampleForm.CustomDisplayFormatExit(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.CustomDisplayFormat := CustomDisplayFormat.Text;
end;

procedure TAdrockDateTimeEditSampleForm.DisplayFormatRadioGroupClick(Sender: TObject);
begin
     Case DisplayFormatRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.DisplayStyle := dtdsDateStyle;
       1 : AdrockDateTimeEdit1.DisplayStyle := dtdsTimeStyle;
       2 : AdrockDateTimeEdit1.DisplayStyle := dtdsDateAndTimeStyle;
       3 : AdrockDateTimeEdit1.DisplayStyle := dtdsInputStyle;
       4 : AdrockDateTimeEdit1.DisplayStyle := dtdsCustom;
     end;
end;

procedure TAdrockDateTimeEditSampleForm.DateDisplayStyleRadioGroupClick(
  Sender: TObject);
begin
     Case DateDisplayStyleRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.DateDisplayStyle := ddsDDMMYYYY;
       1 : AdrockDateTimeEdit1.DateDisplayStyle := ddsMMDDYYYY;
       2 : AdrockDateTimeEdit1.DateDisplayStyle := ddsYYYYMMDD;
       3 : AdrockDateTimeEdit1.DateDisplayStyle := ddsDateInputStyle;
       4 : AdrockDateTimeEdit1.DateDisplayStyle := ddsWindowsShortDate;
       5 : AdrockDateTimeEdit1.DateDisplayStyle := ddsWindowsLongDate;
       6 : AdrockDateTimeEdit1.DateDisplayStyle := ddsMonthYear;
       end;
end;

procedure TAdrockDateTimeEditSampleForm.TimeDisplayStyleRadioGroupClick(
  Sender: TObject);
begin
     Case TimeDisplayStyleRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHM12;
       1 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHM24;
       2 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHMS12;
       3 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHMS24;
       4 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHMAMPM;
       5 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsHMSAMPM;
       6 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsTimeInputStyle;
       7 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsWindowsShortTime;
       8 : AdrockDateTimeEdit1.TimeDisplayStyle := tdsWindowsLongTime;
       end;
end;

procedure TAdrockDateTimeEditSampleForm.CheckBoxEnabledClick(Sender: TObject);
begin
  AdrockDateTimeEdit1.Enabled := (Sender as TAdrockCheckBox).Checked;
end;

procedure TAdrockDateTimeEditSampleForm.AdrockCheckBoxReadOnlyClick(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.ReadOnly := (Sender as TAdrockCheckBox).Checked;
end;

procedure TAdrockDateTimeEditSampleForm.ComboBoxShowMonthAsChange(
  Sender: TObject);
begin
  Case (Sender as TAdrockComboBox).ItemIndex of
    0 : AdrockDateTimeEdit1.ShowMonthAs := smNumber;
    1 : AdrockDateTimeEdit1.ShowMonthAs := smShortMonth;
    2 : AdrockDateTimeEdit1.ShowMonthAs := smLongMonth;
  end;


end;

procedure TAdrockDateTimeEditSampleForm.CustomDisplayFormatChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.CustomDisplayFormat :=CustomDisplayFormat.Text;
end;

procedure TAdrockDateTimeEditSampleForm.InputStyleRadioGroupClick(
  Sender: TObject);
begin
     Case InputStyleRadioGroup.ItemIndex of
       0 : AdrockDateTimeEdit1.InputStyle := isDateTime;
       1 : AdrockDateTimeEdit1.InputStyle := isDate;
       2 : AdrockDateTimeEdit1.InputStyle := isTime;
       3 : AdrockDateTimeEdit1.InputStyle := isDateKeepTime;
       4 : AdrockDateTimeEdit1.InputStyle := isTimeKeepDate;
       5 : AdrockDateTimeEdit1.InputStyle := isFreeForm;
       6 : AdrockDateTimeEdit1.InputStyle := isFreeFormDateTime;
     end;
     RefreshFreeFormControls;
end;

procedure TAdrockDateTimeEditSampleForm.RefreshFreeFormControls;
begin
  if (InputStyleRadioGroup.ItemIndex < 5) then
      begin
        DisplayStyleNoteBook.PageIndex := 0;
        InputStyleNoteBook.PageIndex   := 0;
      end
     else
      begin
        DisplayStyleNoteBook.PageIndex := 1;
        InputStyleNoteBook.PageIndex   := 1;
        if (InputStyleRadioGroup.ItemIndex = 5) then
          begin
            FreeFormDateDisplayFormat.Enabled                 := TRUE;
            LabelFreeFormDateDisplayStyle.Enabled             := TRUE;
            FreeFormDateTimeDisplayFormat.Enabled             := FALSE;
            LabelFreeFormDateTimeDisplayStyle.Enabled         := FALSE;
            FreeFormDateTimeMidnightDisplayFormat.Enabled     := FALSE;
            LabelFreeFormDateTimeMidnightDisplayStyle.Enabled := FALSE;

            FreeFormDateInputStyle.Enabled                  := TRUE;
            LabelFreeFormDateInputStyle.Enabled             := TRUE;
            FreeFormDateTimeInputStyle.Enabled              := FALSE;
            LabelFreeFormTimeDateInputStyle.Enabled         := FALSE;
            FreeFormDateTimeMidnightInputStyle.Enabled      := FALSE;
            LabelFreeFormDateTimeMidnightInputStyle.Enabled := FALSE;
          end
        else
         begin
            FreeFormDateDisplayFormat.Enabled                 := FALSE;
            LabelFreeFormDateDisplayStyle.Enabled             := FALSE;
            FreeFormDateTimeDisplayFormat.Enabled             := TRUE;
            LabelFreeFormDateTimeDisplayStyle.Enabled         := TRUE;
            FreeFormDateTimeMidnightDisplayFormat.Enabled     := TRUE;
            LabelFreeFormDateTimeMidnightDisplayStyle.Enabled := TRUE;

            FreeFormDateInputStyle.Enabled                  := FALSE;
            LabelFreeFormDateInputStyle.Enabled             := FALSE;
            FreeFormDateTimeInputStyle.Enabled              := TRUE;
            LabelFreeFormTimeDateInputStyle.Enabled         := TRUE;
            FreeFormDateTimeMidnightInputStyle.Enabled      := TRUE;
            LabelFreeFormDateTimeMidnightInputStyle.Enabled := TRUE;
         end;
      end;
end;

procedure TAdrockDateTimeEditSampleForm.AdrockCheckBoxUseTabAsArrowsClick(
  Sender: TObject);
begin
  if ((Sender as TAdrockCheckBox).Checked) then
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options + [deoUseTabAsArrows]
  else
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options - [deoUseTabAsArrows];
end;


procedure TAdrockDateTimeEditSampleForm.ComboBoxWeekDayStyleChange(
  Sender: TObject);
begin
  Case (Sender as TAdrockComboBox).ItemIndex of
    0 : AdrockDateTimeEdit1.WeekDayStyle := wdsShortWeekDay;
    1 : AdrockDateTimeEdit1.WeekDayStyle := wdsLongWeekDay;
  end;
end;


procedure TAdrockDateTimeEditSampleForm.ComboBoxButtonBitmapStyleChange(
  Sender: TObject);
begin
  Case (Sender as TAdrockComboBox).ItemIndex of
    0 : AdrockDateTimeEdit1.ButtonBitmapStyle := bsStandard;
    1 : AdrockDateTimeEdit1.ButtonBitmapStyle := bsCustom;
  end;
end;




procedure TAdrockDateTimeEditSampleForm.SelectCustomBitmapButtonClick(
  Sender: TObject);
begin
  if (OpenDialog1.Execute = TRUE) then
   begin
    SelectCustomBitmapButton.Glyph.LoadFromFile(OpenDialog1.FileName);
    AdrockDateTimeEdit1.ButtonBitmap.LoadFromFile(OpenDialog1.FileName);
    AdrockDateTimeEdit1.ButtonBitmapStyle := bsCustom;
    ComboBoxButtonBitmapStyle.ItemIndex := 1;
   end;
end;

procedure TAdrockDateTimeEditSampleForm.SpinEditButtonBitmapWidthChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.ButtonBitmapWidth := Strtoint(SpinEditButtonBitmapWidth.Text);
  SpinEditButtonBitmapWidth.Text := inttostr(AdrockDateTimeEdit1.ButtonBitmapWidth);
end;

procedure TAdrockDateTimeEditSampleForm.ComboBoxButtonBitmapTypeChange(
  Sender: TObject);
begin
  Case (Sender as TAdrockComboBox).ItemIndex of
    0 : AdrockDateTimeEdit1.ButtonBitmapType := bbtDefault;
    1 : AdrockDateTimeEdit1.ButtonBitmapType := bbtCalendar;
    2 : AdrockDateTimeEdit1.ButtonBitmapType := bbtDate;
  end;
 ComboBoxButtonBitmapStyle.ItemIndex := 1; 

end;





procedure TAdrockDateTimeEditSampleForm.TabSet1Change(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
   NoteBook1.PageIndex := NewTab;
end;


procedure TAdrockDateTimeEditSampleForm.FreeFormDateInputStyleChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDate := (Sender as TComboBox).Text;
end;

procedure TAdrockDateTimeEditSampleForm.FreeFormDateTimeInputStyleChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDateTime := (Sender as TComboBox).Text;
end;

procedure TAdrockDateTimeEditSampleForm.FreeFormDateTimeMidnightInputStyleChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDateTimeMidnight := (Sender as TComboBox).Text;
end;

procedure TAdrockDateTimeEditSampleForm.FreeFormDateDisplayFormatChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDisplayDate := (Sender as TComboBox).Text;
   AdrockDateTimeEdit1.RefreshDateDetails;
end;

procedure TAdrockDateTimeEditSampleForm.FreeFormDateTimeDisplayFormatChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDisplayDateTime := (Sender as TComboBox).Text;
   AdrockDateTimeEdit1.RefreshDateDetails;
end;

procedure TAdrockDateTimeEditSampleForm.FreeFormDateTimeMidnightDisplayFormatChange(
  Sender: TObject);
begin
   AdrockDateTimeEdit1.FreeFormFormatDisplayDateTimeMidnight := (Sender as TComboBox).Text;
   AdrockDateTimeEdit1.RefreshDateDetails;
end;

procedure TAdrockDateTimeEditSampleForm.ComboBoxColorDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
Var
 fRect : TRect;
begin
  with ComboBoxColor.Canvas do
   begin
     fillRect(Rect);
     fRect := Rect;
     Dec(fRect.Right,20);
     textrect(fRect, fRect.Left+1, fRect.Top, ComboBoxColor.Items.Strings[Index]);
     fRect := Rect;
     fRect.Left := fRect.Right-18;
     InflateRect(fRect,-1,-1);
     if (Index  = ComboBoxColor.Items.Count-1) then
       Brush.Color := GetColorByIndex(RadioGroupColor.ItemIndex)
     else
       Brush.Color := StringToColor(ComboBoxColor.Items.Strings[Index]);
     FillRect(fRect);
     Brush.Color := ClBlack;
     FrameRect(fRect);
   end;
end;

Function TAdrockDateTimeEditSampleForm.GetColorByIndex(Index : integer) : TColor;
begin
  case Index of
     0 : { Bad Date}
         Result := AdrockDateTimeEdit1.Colors.BadDate;
     1 : { Bad Segment }
         Result := AdrockDateTimeEdit1.Colors.BadSegment;
     2 : { Extra Text }
         Result := AdrockDateTimeEdit1.Colors.ExtraText;
     3 : { Nil Date }
         Result := AdrockDateTimeEdit1.Colors.NilDate;
     4 : { Range Errors        }
         Result := AdrockDateTimeEdit1.Colors.RangeErrors;
     5 : { Week Day }
         Result := AdrockDateTimeEdit1.Colors.WeekDay;
     6 : { Edit Highlight}
         Result := AdrockDateTimeEdit1.Colors.EditHighlight;
  end;
end;

procedure TAdrockDateTimeEditSampleForm.SetColorByIndex(Index : integer; Color : TColor);
begin
  case Index of
     0 : { Bad Date }
         AdrockDateTimeEdit1.Colors.BadDate := Color;
     1 : { Bad Segment        }
         AdrockDateTimeEdit1.Colors.BadSegment := Color;
     2 : { Extra Text  }
         AdrockDateTimeEdit1.Colors.ExtraText := Color;
     3 : { Nil Date }
         AdrockDateTimeEdit1.Colors.NilDate := Color;
     4 : { Range Errors }
         AdrockDateTimeEdit1.Colors.RangeErrors := Color;
     5 : { Week Day }
         AdrockDateTimeEdit1.Colors.WeekDay := Color;
     6 : { Edit Highlight }
         AdrockDateTimeEdit1.Colors.EditHighlight :=  Color;
  end;
end;

procedure TAdrockDateTimeEditSampleForm.ComboBoxColorChange(
  Sender: TObject);
Var
  OldColor,
  NewColor : TColor;
begin
  OldColor := clRed;
  if (ComboBoxColor.ItemIndex = ComboBoxColor.Items.Count-1) then
   begin
     { User Defined }
     ColorDialog1.Color := OldColor;
     if (ColorDialog1.Execute = TRUE) then
       NewColor := ColorDialog1.Color
     else
      exit;
   end
  else
    NewColor := StringToColor(ComboBoxColor.Text);
  SetColorByIndex(RadioGroupColor.ItemIndex, newColor);
end;

procedure TAdrockDateTimeEditSampleForm.RadioGroupColorClick(
  Sender: TObject);
Var
  TheColor    : TColor;
  ColorString : String;
begin
  TheColor := GetColorByIndex(RadioGroupColor.ItemIndex);
  ColorString := ColorToString(TheColor);
  if (ComboBoxColor.Items.IndexOf(ColorString) <> -1) then
    ComboBoxColor.ItemIndex := ComboBoxColor.Items.IndexOf(ColorString)
  else
    ComboBoxColor.ItemIndex := ComboBoxColor.Items.Count-1;
end;

procedure TAdrockDateTimeEditSampleForm.MinDateChange(Sender: TObject);
begin
   AdrockDateTimeEdit1.DateMin.DateTime := MinDate.Date.DateTime;
end;

procedure TAdrockDateTimeEditSampleForm.MaxDateChange(Sender: TObject);
begin
   AdrockDateTimeEdit1.DateMax.DateTime := MaxDate.Date.DateTime;
end;

procedure TAdrockDateTimeEditSampleForm.EnableRangeCheckingClick(
  Sender: TObject);
begin
  if (EnableRangeChecking.Checked = TRUE) then
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options + [deoShowRangeErrors]
  else
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options - [deoShowRangeErrors];

end;

procedure TAdrockDateTimeEditSampleForm.Year2000CutoffChange(
  Sender: TObject);
begin
    AdrockDateTimeEdit1.CenturyCutoff := Strtoint(Year2000Cutoff.Text);
end;

procedure TAdrockDateTimeEditSampleForm.YearDigitStyleChange(
  Sender: TObject);
begin
  if (YearDigitStyle.ItemIndex = 0) then
    AdrockDateTimeEdit1.YearStyle := ys2Digit
  else
    AdrockDateTimeEdit1.YearStyle := ys4Digit;

end;

procedure TAdrockDateTimeEditSampleForm.CheckBoxShowCheckBoxClick(
  Sender: TObject);
begin
  if ((Sender as TAdrockCheckBox).Checked) then
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options + [deoShowCheckBox]
  else
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options - [deoShowCheckBox];
end;

procedure TAdrockDateTimeEditSampleForm.CheckBoxAutoJumpSubFieldsClick(
  Sender: TObject);
begin
  if ((Sender as TAdrockCheckBox).Checked) then
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options + [deoAutoJumpSubFields]
  else
    AdrockDateTimeEdit1.Options := AdrockDateTimeEdit1.Options - [deoAutoJumpSubFields];
end;

procedure TAdrockDateTimeEditSampleForm.SecondIncrementChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.IncrementSecond := TAdrockDateTimeIncrement(SecondIncrement.ItemIndex);
end;

procedure TAdrockDateTimeEditSampleForm.MinuteIncrementChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.IncrementMinute := TAdrockDateTimeIncrement(MinuteIncrement.ItemIndex);

end;

procedure TAdrockDateTimeEditSampleForm.textNilDateChange(Sender: TObject);
begin
  AdrockDateTimeEdit1.NilDateText := TextNilDate.text;
end;

procedure TAdrockDateTimeEditSampleForm.textBadDateChange(Sender: TObject);
begin
  AdrockDateTimeEdit1.BadDateText := TextBadDate.text;
end;

procedure TAdrockDateTimeEditSampleForm.textRangeErrorChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.rangeErrorText := TextRangeError.text;
end;

procedure TAdrockDateTimeEditSampleForm.TextExtraTextChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.ExtraText := TextExtraText.text;

end;

procedure TAdrockDateTimeEditSampleForm.DateValidityOptionsChange(
  Sender: TObject);
begin
  AdrockDateTimeEdit1.DateValidityOptions := TAdrockDateCriteriaOptions(DateValidityOptions.ItemIndex);
end;

procedure TAdrockDateTimeEditSampleForm.Year2000CutoffKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TAdrockDateTimeEditSampleForm.SpinEditButtonBitmapWidthKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

end.
