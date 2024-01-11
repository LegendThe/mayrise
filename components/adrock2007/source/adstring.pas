unit AdString;

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
{$ifdef Win32}
  Windows,
{$else}
  WinTypes, WinProcs,
{$endif}
  Classes, Messages;

type
  TOnTAdrockStringsComplete = procedure (Sender: TObject; Key:Word; var CompleteWith:String;
    var DoComplete : Boolean) of object;

  TAdrockStrings = class(TComponent)
  private
    fStrings  : TStrings;
    fOnChange : TNotifyEvent;
  public
    constructor Create(aOwner : TComponent); override;
    Destructor  Destroy; override;
  protected
    Procedure SetStrings(Strings : TStrings);
    Procedure Change; dynamic;
  published
    Property Strings : TStrings read fStrings Write SetStrings;
    Property OnChange : TNotifyEvent read fOnChange write fOnChange;
  end;

procedure Register;

implementation

{ TAdrockStrings }
constructor TAdrockStrings.create(aOwner : Tcomponent);
begin
  inherited create(aOwner);
  fStrings := TStringlIst.Create;
end;

Destructor TAdrockStrings.Destroy;
begin
  fStrings.Free;
  Inherited Destroy;
end;

Procedure TAdrockStrings.SetStrings(Strings : TStrings);
begin
  fStrings.assign(Strings);
  Change;
end;

Procedure TAdrockStrings.Change;
begin
 if (Assigned(fOnChange)) then
   fOnChange(Self);
end;

procedure Register;
begin
  RegisterComponents('Adrock', [TAdrockStrings]);
end;

end.
