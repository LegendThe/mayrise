unit AdGraphi;

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

Uses Classes, Winprocs, Wintypes, Graphics;

Function ReturnCheckBox(Checked : Boolean) : TBitmap; { You must free the bitmap object }
Function ReturnRadioButton(Checked : Boolean) : TBitmap; { You must free the bitmap object }

implementation

Const
  OBM_CHECKBOXES          = 32759;

Function ReturnCheckBox(Checked : Boolean) : TBitmap;
var
  Bitmap : TBitmap;
  MyRect : TRect;
begin
  if (Checked = FALSE) then
    MyRect := Rect(0,0,13,13)
  else
    MyRect := Rect(13,0,13+13,13);

  Result := TBitmap.Create;

  Bitmap := TBitmap.Create;
  try
    bitmap.handle := LoadBitmap(0, MAKEINTRESOURCE(OBM_CHECKBOXES));
    Result.Width := 13;
    Result.Height := 12;
    Result.Canvas.CopyRect(Rect(0,0,13,13),Bitmap.Canvas,MyRect);
  finally
    DeleteObject(Bitmap.Handle);
    Bitmap.Free;
  end;
end;

Function ReturnRadioButton(Checked : Boolean) : TBitmap;
var
  Bitmap : TBitmap;
  MyRect : TRect;
begin
  if (Checked = FALSE) then
    MyRect := Rect(0,13,13,13+13)
  else
    MyRect := Rect(13,13,13+13,13+13);

  Result := TBitmap.Create;

  Bitmap := TBitmap.Create;
  try
    bitmap.handle := LoadBitmap(0, MAKEINTRESOURCE(OBM_CHECKBOXES));
    Result.Width := 13;
    Result.Height := 13;
    Result.Canvas.CopyRect(Rect(0,0,13,13),Bitmap.Canvas,MyRect);
  finally
    DeleteObject(Bitmap.Handle);
    Bitmap.Free;
  end;
end;

end.
