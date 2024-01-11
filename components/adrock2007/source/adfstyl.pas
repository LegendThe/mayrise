unit AdFStyl;

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
  Forms, Dialogs,

  {$IFDEF UNREGISTERED}
  {$ENDIF}
  StdCtrls;

type
  TAdrockFontColorStyle = class(TPersistent)
  private    { Protected declarations }
    { Private declarations }
    fFontStyle             : TFontStyles;
    FFontColor             : TColor;
    fOnChange              : TNotifyEvent;

    Procedure SetFontStyle(NewFontStyle : TFontStyles);
    Procedure SetFontColor(NewFontColor : TColor);

    Function  StoreFontColor : Boolean;
    Function  StoreFontStyle : Boolean;
    Procedure Change;
  public
    { Public declarations }
    Constructor Create;
    Destructor  Destroy;                      override;
  published
    { Published declarations }
    Property FontStyle : TFontStyles
             Read    fFontStyle
             Write   SetFontStyle
             Stored  StoreFontStyle
             Default [fsBold];

    Property FontColor : TColor
             Read    FFontColor
             Write   SetFontColor
             Stored  StoreFontColor
             Default clBlack;

    Property OnChange : TNotifyEvent
             Read    fOnChange
             Write   fOnChange;

end;

implementation

Constructor TAdrockFontColorStyle.Create;
begin
  fFontStyle  := [fsBold];
  FFontColor  := clBlack;
end;

Destructor TAdrockFontColorStyle.Destroy;
begin
  Inherited Destroy;
end;

Procedure TAdrockFontColorStyle.Change;
begin
  if (Assigned(fOnchange)) then
    fOnChange(Self);
end;

Procedure TAdrockFontColorStyle.SetFontStyle(NewFontStyle : TFontStyles);
begin
  fFontStyle := NewFontStyle;
  Change;
end;

Procedure TAdrockFontColorStyle.SetFontColor(NewFontColor : TColor);
begin
  fFontColor := NewFontColor;
  Change;
end;

Function TAdrockFontColorStyle.StoreFontColor : Boolean;
begin
  Result := (fFontColor <> clBlack);
end;

Function TAdrockFontColorStyle.StoreFontStyle : Boolean;
begin
  Result := (FontStyle <> [fsBold]);
end;


end.
