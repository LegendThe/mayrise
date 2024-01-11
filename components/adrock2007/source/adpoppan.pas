unit adpoppan;

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
  WinProcs, WinTypes, Menus, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs,  ExtCtrls;

type

  TAdrockCustomCalendarPanel = class(TCustomPanel)
  published
    Property Height default 200;
    Property Width  default 250;
    Property Enabled;
    Property Visible;
    Property Align;
  end;

  TAdrockCustomPopupPanel = class(TWInControl)
  private
    { Private declarations }
    fFloating : Boolean;
  protected
    { Protected declarations }
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); override;
    procedure CreateWnd; override;
    procedure CreateParams(var Params: TCreateParams); override;
    property Floating : Boolean read fFloating write fFloating; 
  published
    { Published declarations }
    Property Height default 200;
    Property Width  default 250;
    Property Enabled;
    Property Visible;
    Property Align;
  end;

  TAdrockPopupPanel = class(TAdrockCustomPopupPanel)
  published
    property Align;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Caption;
    property Color;
    property Ctl3D;
    property Font;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$ifdef WIN32}
    property OnStartDrag;
    {$endif}
  end;

  procedure Register;

implementation

Constructor TAdrockCustomPopupPanel.Create(Aowner : TComponent);
begin
  inherited Create(Aowner);
  {$ifdef WIN32}
  ControlStyle := ControlStyle + [csReplicatable, csAcceptsControls];
  {$else}
  ControlStyle := ControlStyle + [csAcceptsControls];
  {$ENDIF}
  height := 200;
  Width := 250;
end;

procedure TAdrockCustomPopupPanel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
end; { CreateParams }

procedure TAdrockCustomPopupPanel.CreateWnd;
begin
  inherited CreateWnd;
end;


procedure Register;
begin
  RegisterComponents('Adrock', [TAdrockPopupPanel]);
end;

end.
