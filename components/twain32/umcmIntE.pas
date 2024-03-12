{------------------------------------------------------------------------------}
{ MCM DESIGN                                                                   }
{                                                                              }
{ For further information / comments, visit our WEB site at                    }
{   www.mcm-design.com                                                         }
{ or e-mail to                                                                 }
{   CustomerCare@mcm-design.dk                                                 }
{------------------------------------------------------------------------------}
{}
{ $Log:  68831: umcmIntE.pas 
{
{   Rev 1.0    10/02/2011 15:02:16  Kacper
{ init
}
//
//   Rev 1.2    22-11-2001 12:52:58  
// Changed header

{
{   Rev 1.1    18-02-00 16:34:52  mcm
}
{
{   Rev 1.0    04-01-00 23:16:03  mcm    Version: 1.0
{ Initial Revision
}
{}
unit umcmIntE;

interface

uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
     Forms, Dialogs, StdCtrls, ExtCtrls, Menus, Buttons;

{$R RMCMSPIN.RES}

type

{------------------------------------------------------------------------------}
{ TmcmIntEdit.                                                                 }
{------------------------------------------------------------------------------}

  TmcmIntEdit = class(TCustomEdit)
  private
    { Private declarations                                                     }
    FMinValue      : LongInt;
    FMaxValue      : LongInt;
       procedure CMEnter   (var Message  : TCMGotFocus); message CM_ENTER;
       procedure CMExit    (var Message  : TCMExit);     message CM_EXIT;
  protected
    { Protected declarations                                                   }
       procedure Change; override;
       procedure KeyPress  (var Key      : Char); override;
       function  IsValidKey(    Key      : Char) : boolean;
       function  GetValue : longint;
       procedure SetValue  (    NewValue : longint);
       function  CheckValue(    NewValue : longint) : longint;
  public
    { Public declarations                                                      }
       constructor Create  (    AOwner   : TComponent); override;
  published
    { Published declarations                                                   }
       property AutoSelect;
       property AutoSize;
       property Color;
       property Ctl3D;
       property DragCursor;
       property DragMode;
       property Enabled;
       property Font;
       property MaxLength;
       property ParentColor;
       property ParentCtl3D;
       property ParentFont;
       property ParentShowHint;
       property PopupMenu;
       property ReadOnly;
       property ShowHint;
       property TabOrder;
       property TabStop;
       property Visible;
       property OnChange;
       property OnClick;
       property OnDblClick;
       property OnDragDrop;
       property OnDragOver;
       property OnEndDrag;
       property OnEnter;
       property OnExit;
       property OnKeyDown;
       property OnKeyPress;
       property OnKeyUp;
       property OnMouseDown;
       property OnMouseMove;
       property OnMouseUp;

       property Value : longint
          read  GetValue
          write SetValue;
       property MaxValue : longint
          read  FMaxValue
          write FMaxValue;
       property MinValue : longint
          read  FMinValue
          write FMinValue;
  end;

{------------------------------------------------------------------------------}
{ TmcmRealEdit.                                                                }
{------------------------------------------------------------------------------}

  TmcmRealEdit = class(TCustomEdit)
  private
    { Private declarations                                                     }
    FMinValue      : extended;
    FMaxValue      : extended;
    FValue         : extended;
    FDecimals      : word;
       procedure CMEnter   (var Message  : TCMGotFocus); message CM_ENTER;
       procedure CMExit    (var Message  : TCMExit);     message CM_EXIT;
  protected
    { Protected declarations                                                   }
       procedure Change; override;
       procedure KeyPress   (var Key      : Char); override;
       function  IsValidKey (    Key      : Char) : boolean;
       function  GetValue : extended;
       procedure SetValue   (    NewValue : extended);
       function  CheckValue (    NewValue : extended) : extended;
       procedure SetDecimals(    Decimals : word);
  public
    { Public declarations                                                      }
       constructor Create   (    AOwner   : TComponent); override;
  published
    { Published declarations                                                   }
       property AutoSelect;
       property AutoSize;
       property Color;
       property Ctl3D;
       property DragCursor;
       property DragMode;
       property Enabled;
       property Font;
       property MaxLength;
       property ParentColor;
       property ParentCtl3D;
       property ParentFont;
       property ParentShowHint;
       property PopupMenu;
       property ReadOnly;
       property ShowHint;
       property TabOrder;
       property TabStop;
       property Visible;
       property OnChange;
       property OnClick;
       property OnDblClick;
       property OnDragDrop;
       property OnDragOver;
       property OnEndDrag;
       property OnEnter;
       property OnExit;
       property OnKeyDown;
       property OnKeyPress;
       property OnKeyUp;
       property OnMouseDown;
       property OnMouseMove;
       property OnMouseUp;

       property Value : extended
          read  GetValue
          write SetValue;
       property MaxValue : extended
          read  FMaxValue
          write FMaxValue;
       property MinValue : extended
          read  FMinValue
          write FMinValue;
       property Decimals : word
          read  FDecimals
          write SetDecimals;
  end;


const
  mcmInitRepeatPause = 400;  { pause before repeat timer (ms)                  }
  mcmRepeatPause     = 100;  { pause before hint window displays (ms)          }

type
  TmcmTimeSpeedBtn = class;

  TmcmTimeBtnState = set of (tbFocusRect, tbAllowTimer);

{------------------------------------------------------------------------------}
{ TmcmRealSpinBtn.                                                             }
{------------------------------------------------------------------------------}

  TmcmRealSpinBtn = class (TWinControl)
  private
    { Private declarations                                                     }
    FUpButton      : TmcmTimeSpeedBtn;
    FDownButton    : TmcmTimeSpeedBtn;
    FFocusedButton : TmcmTimeSpeedBtn;
    FFocusControl  : TWinControl;
    FOnUpClick     : TNotifyEvent;
    FOnDownClick   : TNotifyEvent;
       function  CreateButton : TmcmTimeSpeedBtn;
       function  GetUpGlyph   : TBitmap;
       function  GetDownGlyph : TBitmap;
       procedure SetUpGlyph  (    Value   : TBitmap);
       procedure SetDownGlyph(    Value   : TBitmap);
       procedure BtnClick    (    Sender  : TObject);
       procedure BtnMouseDown(    Sender  : TObject;
                                  Button  : TMouseButton;
                                  Shift   : TShiftState;
                                  X, Y    : Integer);
       procedure SetFocusBtn (    Btn     : TmcmTimeSpeedBtn);
       procedure Adjust_Size  (var W       : Integer;
                              var H       : Integer);
       procedure WMSize      (var Message : TWMSize);       message WM_SIZE;
       procedure WMSetFocus  (var Message : TWMSetFocus);   message WM_SETFOCUS;
       procedure WMKillFocus (var Message : TWMKillFocus);  message WM_KILLFOCUS;
       procedure WMGetDlgCode(var Message : TWMGetDlgCode); message WM_GETDLGCODE;
  protected
    { Protected declarations                                                   }
       procedure Loaded; override;
       procedure KeyDown     (var Key     : Word;
                                  Shift   : TShiftState); override;
  public
    { Public declarations                                                      }
       constructor Create    (    AOwner  : TComponent); override;
       procedure SetBounds   (    ALeft   : integer;
                                  ATop    : integer;
                                  AWidth  : integer;
                                  AHeight : integer); override;
  published
    { Published declarations                                                   }
       property Align;
       property Ctl3D;
       property DownGlyph : TBitmap
          read  GetDownGlyph
          write SetDownGlyph;
       property DragCursor;
       property DragMode;
       property Enabled;
       property FocusControl : TWinControl
          read  FFocusControl
          write FFocusControl;
       property ParentCtl3D;
       property ParentShowHint;
       property PopupMenu;
       property ShowHint;
       property TabOrder;
       property TabStop;
       property UpGlyph : TBitmap
          read  GetUpGlyph
          write SetUpGlyph;
       property Visible;
       property OnDownClick : TNotifyEvent
          read  FOnDownClick
          write FOnDownClick;
       property OnDragDrop;
       property OnDragOver;
       property OnEndDrag;
       property OnEnter;
       property OnExit;
       property OnUpClick : TNotifyEvent
          read  FOnUpClick
          write FOnUpClick;
  end;

{------------------------------------------------------------------------------}
{ TmcmTimeSpeedBtn.                                                            }
{------------------------------------------------------------------------------}

  TmcmTimeSpeedBtn = class(TSpeedButton)
  private
    { Private declarations                                                     }
    FmcmRepeatTimer  : TTimer;
    FmcmTimeBtnState : TmcmTimeBtnState;
       procedure TimerExpired(   Sender  : TObject);
  protected
    { Protected declarations                                                   }
       procedure Paint; override;
       procedure MouseDown   (    Button : TMouseButton;
                                  Shift  : TShiftState;
                                  X, Y   : integer); override;
       procedure MouseUp     (    Button : TMouseButton;
                                  Shift  : TShiftState;
                                  X, Y   : Integer); override;
  public
    { Public declarations                                                      }
       destructor Destroy; override;
       property TimeBtnState : TmcmTimeBtnState
          read  FmcmTimeBtnState
          write FmcmTimeBtnState;
  end;

{------------------------------------------------------------------------------}
{ TmcmRealSpin.                                                                }
{------------------------------------------------------------------------------}

  TmcmRealSpin = class(TmcmRealEdit)
  private
    { Private declarations                                                     }
    FIncrement : Extended;
    FButton    : TmcmRealSpinBtn;
       function  GetMinHeight : integer;
       procedure SetEditRect;
       procedure WMSize (var Message : TWMSize);     message WM_SIZE;
       procedure WMPaste(var Message : TWMPaste);    message WM_PASTE;
       procedure WMCut  (var Message : TWMCut);      message WM_CUT;
  protected
    { Protected declarations                                                   }
       procedure UpClick     (    Sender : TObject); virtual;
       procedure DownClick   (    Sender : TObject); virtual;
       procedure KeyDown     (var Key    : Word;
                                  Shift  : TShiftState);   override;
       procedure CreateParams(var Params : TCreateParams); override;
       procedure CreateWnd; override;
  public
    { Public declarations                                                      }
       constructor Create(AOwner: TComponent); override;
       destructor Destroy; override;
       property Button : TmcmRealSpinBtn
          read  FButton;
  published
    { Published declarations                                                   }
       property Increment : extended
          read  FIncrement
          write FIncrement;
  end;

procedure Register;


implementation

{R RMCMSPIN}

{------------------------------------------------------------------------------}
{ TmcmIntEdit.                                                                 }
{------------------------------------------------------------------------------}


procedure Register;
begin
  RegisterComponents('MCM DESIGN', [TmcmIntEdit]);
  RegisterComponents('MCM DESIGN', [TmcmRealEdit]);
  RegisterComponents('MCM DESIGN', [TmcmRealSpin]);
end; { End Register.                                                           }


constructor TmcmIntEdit.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
  ControlStyle := ControlStyle - [csSetCaption];
  Text      := '0';
  Width     := 41;
  FMinValue := 0;
  FMaxValue := 0;
end; { End TmcmIntEdit.Create.                                                 }


function TmcmIntEdit.IsValidKey(Key : Char) : boolean;
begin
  Result := (Key in ['0', '1'..'9', '-', '+',
                     Chr(VK_BACK), Chr(VK_DELETE), Char(VK_RETURN), Char(VK_ESCAPE)]);
  if (Key = DecimalSeparator)
  then Result := False;
end; { End TmcmIntEdit.IsValidKey.                                             }


procedure TmcmIntEdit.KeyPress(var Key : Char);
begin
  if Not(IsValidKey(Key))
  then begin
       Key := #0;
       MessageBeep(0);
  end;
  if (Key <> #0)
  then inherited KeyPress(Key);
end; { End TmcmIntEdit.KeyPress.                                               }


function TmcmIntEdit.GetValue : longint;
begin
  if (Text <> '') and (Text <> '-') and (Text <> '+')
  then begin
       try
         Result := StrToInt(Text);
         if Result <> CheckValue(Result)
         then Result := CheckValue(Result);
       except
         Result := FMinValue;
       end;
  end
  else Result := FMinValue;
end; { End TmcmIntEdit.GetValue.                                               }


procedure TmcmIntEdit.SetValue(NewValue : longint);
begin
  Text := IntToStr(CheckValue(NewValue));
end; { End TmcmIntEdit.SetValue.                                               }


function TmcmIntEdit.CheckValue(NewValue : longint) : longint;
begin
  Result := NewValue;
  if ((FMinValue <= NewValue) and (NewValue <= FMaxValue)) or
     ((FMinValue  =        0) and (0         = FMaxValue))
  then Result := NewValue
  else begin
       if (FMinValue > NewValue)
       then Result := FMinValue
       else if (FMaxValue < NewValue)
            then Result := FMaxValue;
  end;
end; { End TmcmIntEdit.CheckValue.                                             }


procedure TmcmIntEdit.CMExit(var Message : TCMExit);
var AValue : longint;
begin
  AValue := Value;
  inherited;
  if (CheckValue(Value) <> AValue)
  then SetValue(Value);
end; { End TmcmIntEdit.CMExit.                                                 }


procedure TmcmIntEdit.CMEnter(var Message : TCMGotFocus);
begin
  if AutoSelect and not (csLButtonDown in ControlState)
  then SelectAll;
  inherited;
end; { End TmcmIntEdit.CMEnter.                                                }


procedure TmcmIntEdit.Change;
var AValue : longint;
begin
  Inherited Change;
  if (Text <> '')  and
     (Text <> '-') and
     (Text <> '+')
  then begin
       try
         AValue := StrToInt(Text);
         if (AValue <> CheckValue(AValue))
         then SetValue(Value);
       except
       end;
  end;
end; { TmcmIntEdit.OnChange.                                                   }


{------------------------------------------------------------------------------}
{ TmcmRealEdit.                                                                }
{------------------------------------------------------------------------------}

constructor TmcmRealEdit.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
  ControlStyle := ControlStyle - [csSetCaption];
  Width     := 41;
  FDecimals := 2;
  FMinValue := 0;
  FMaxValue := 0;
  Text      := '1';
end; { End TmcmRealEdit.Create.                                                }


function TmcmRealEdit.IsValidKey(Key : Char) : boolean;
var DecPos : integer;
begin
  Result := (Key in [DecimalSeparator, '0', '1'..'9', '-', '+',
                     Chr(VK_BACK), Chr(VK_DELETE){, Char(VK_RETURN)}, Char(VK_ESCAPE)]);
  DecPos := Pos(',', Text);
  if (DecPos = 0)
  then DecPos := Pos('.', Text);
  if (DecPos <> 0) and ((Key = ',') or (Key = '.'))
  then Result := False;
end; { End TmcmRealEdit.IsValidKey.                                            }


procedure TmcmRealEdit.KeyPress(var Key : Char);
begin
  if Not(IsValidKey(Key))
  then begin
       Key := #0;
       MessageBeep(0);
  end;
  if (Key <> #0)
  then inherited KeyPress(Key);
end; { End TmcmRealEdit.KeyPress.                                              }


function TmcmRealEdit.GetValue : extended;
begin
  if (Text <> '') and (Text <> '-') and (Text <> '+')
  then begin
       try
         Result := StrToFloat(Text);
         if Result <> CheckValue(Result)
         then Result := CheckValue(Result);
       except
         Result := FMinValue;
       end;
  end
  else Result := FMinValue;
end; { End TmcmRealEdit.GetValue.                                              }


procedure TmcmRealEdit.SetValue(NewValue : extended);
var ValStr : String;
    DecPos : integer;
begin
  FValue := CheckValue(NewValue);
  ValStr := FloatToStr(FValue);
  DecPos := Pos(DecimalSeparator, ValStr);
  if (DecPos = 0)
  then begin
       DecPos := Pos(',', ValStr);
       if (DecPos = 0)
       then DecPos := Pos('.', ValStr);
  end;
  if (DecPos > 0)
  then begin
       if (FDecimals = 0)
       then dec(DecPos);
       if (FDecimals < (Length(ValStr) - DecPos))
       then ValStr := Copy(ValStr, 1, DecPos + FDecimals);
  end;
  try
    Text := ValStr;
  except
    on e:Exception
    do ;
  end;
end; { End TmcmRealEdit.SetValue.                                              }


function TmcmRealEdit.CheckValue(NewValue : extended) : extended;
begin
  Result := NewValue;
  if ((FMinValue <= NewValue) and (NewValue <= FMaxValue)) or
     ((FMinValue  =        0) and (0         = FMaxValue))
  then Result := NewValue
  else begin
       if (FMinValue > NewValue)
       then Result := FMinValue
       else if (FMaxValue < NewValue)
            then Result := FMaxValue;
  end;
end; { End TmcmRealEdit.CheckValue.                                            }


procedure TmcmRealEdit.SetDecimals(Decimals : word);
begin
  if (Decimals < 13)
  then begin
       if (Decimals > 0)
       then FDecimals := Decimals
       else FDecimals := 0; // 1;
       SetValue(GetValue);
  end
  else FDecimals := 12;
end; { End TmcmRealEdit.SetDecimals.                                           }


procedure TmcmRealEdit.CMExit(var Message : TCMExit);
var AValue : extended;
begin
  AValue := Value;
  inherited;
  if (CheckValue(Value) <> AValue)
  then SetValue(Value);
end; { End TmcmRealEdit.CMExit.                                                }


procedure TmcmRealEdit.CMEnter(var Message : TCMGotFocus);
begin
  if AutoSelect and not (csLButtonDown in ControlState)
  then SelectAll;
  inherited;
end; { End TmcmRealEdit.CMEnter.                                               }


procedure TmcmRealEdit.Change;
var AValue : extended;
begin
  if Assigned(Parent) 
  then Inherited Change;
  if (Text <> '') and (Text <> '-') and (Text <> '+')
  then begin
       try
         AValue := StrToFloat(Text);
         if (AValue <> CheckValue(AValue))
         then SetValue(Value);
       except
       end;
  end;
end; { TmcmRealEdit.OnChange.                                                  }


{------------------------------------------------------------------------------}
{ TmcmTimeSpeedBtn.                                                            }
{------------------------------------------------------------------------------}

destructor TmcmTimeSpeedBtn.Destroy;
begin
  if (FmcmRepeatTimer <> nil)
  then FmcmRepeatTimer.Free;
  inherited Destroy;
end; { TmcmTimeSpeedBtn.Destroy.                                               }


procedure TmcmTimeSpeedBtn.MouseDown(Button : TMouseButton;
                                     Shift  : TShiftState;
                                     X, Y   : integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  if tbAllowTimer in FmcmTimeBtnState
  then begin
       if (FmcmRepeatTimer = nil)
       then FmcmRepeatTimer := TTimer.Create(Self);
       FmcmRepeatTimer.OnTimer  := TimerExpired;
       FmcmRepeatTimer.Interval := mcmInitRepeatPause;
       FmcmRepeatTimer.Enabled  := True;
  end;
end; { End TmcmTimeSpeedBtn.MouseDown.                                         }


procedure TmcmTimeSpeedBtn.MouseUp(Button : TMouseButton;
                                   Shift  : TShiftState;
                                   X, Y   : Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);
  if (FmcmRepeatTimer <> nil)
  then FmcmRepeatTimer.Enabled := False;
end; { TmcmTimeSpeedBtn.MouseUp.                                               }


procedure TmcmTimeSpeedBtn.TimerExpired(Sender : TObject);
begin
  FmcmRepeatTimer.Interval := mcmRepeatPause;
  if (FState = bsDown) and MouseCapture
  then begin
       try
         Click;
       except
         FmcmRepeatTimer.Enabled := False;
       raise;
       end;
  end;
end; { End TmcmTimeSpeedBtn.TimerExpired.                                      }


procedure TmcmTimeSpeedBtn.Paint;
var R : TRect;
begin
  inherited Paint;
  if tbFocusRect in FmcmTimeBtnState
  then begin
       R := Bounds(0, 0, Width, Height);
       InflateRect(R, -3, -3);
       if FState = bsDown
       then OffsetRect(R, 1, 1);
       DrawFocusRect(Canvas.Handle, R);
  end;
end; { End TmcmTimeSpeedBtn.Paint.                                             }


{------------------------------------------------------------------------------}
{ TmcmRealSpinBtn.                                                             }
{------------------------------------------------------------------------------}

constructor TmcmRealSpinBtn.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle - [csAcceptsControls, csSetCaption] + [csFramed, csOpaque];
  FUpButton    := CreateButton;
  FDownButton  := CreateButton;
  UpGlyph      := nil;
  DownGlyph    := nil; 
  Width        := 20;
  Height       := 25;
  FFocusedButton := FUpButton;
end; { End TmcmRealSpinBtn.Create.                                             }


function TmcmRealSpinBtn.CreateButton : TmcmTimeSpeedBtn;
begin
  Result := TmcmTimeSpeedBtn.Create(Self);
  Result.OnClick      := BtnClick;
  Result.OnMouseDown  := BtnMouseDown;
  Result.Visible      := True;
  Result.Enabled      := True;
  Result.TimeBtnState := [tbAllowTimer];
  Result.NumGlyphs    := 1;
  Result.Parent       := Self;
end; { End TmcmRealSpinBtn.CreateButton.                                       }


procedure TmcmRealSpinBtn.Adjust_Size(var W : integer;
                                     var H : integer);
begin
  if (FUpButton = nil) or (csLoading in ComponentState)
  then Exit;
  if W < 15
  then W := 15;
  FUpButton.SetBounds(0, 0, W, H div 2);
  FDownButton.SetBounds(0, FUpButton.Height - 1, W, H - FUpButton.Height + 1);
end; { End TmcmRealSpinBtn.Adjust_Size.                                         }


procedure TmcmRealSpinBtn.SetBounds(ALeft, ATop, AWidth, AHeight : integer);
var W, H : integer;
begin
  W := AWidth;
  H := AHeight;
  Adjust_Size(W, H);
  inherited SetBounds (ALeft, ATop, W, H);
end; { End TmcmRealSpinBtn.SetBounds.                                          }


procedure TmcmRealSpinBtn.WMSize(var Message : TWMSize);
var W, H : integer;
begin
  inherited;
  { check for minimum size                                                     }
  W := Width;
  H := Height;
  Adjust_Size(W, H);
  if (W <> Width) or (H <> Height)
  then inherited SetBounds(Left, Top, W, H);
  Message.Result := 0;
end; { End TmcmRealSpinBtn.WMSize.                                             }


procedure TmcmRealSpinBtn.WMSetFocus(var Message : TWMSetFocus);
begin
  FFocusedButton.TimeBtnState := FFocusedButton.TimeBtnState + [tbFocusRect];
  FFocusedButton.Invalidate;
end; { End TmcmRealSpinBtn.WMSetFocus.                                         }


procedure TmcmRealSpinBtn.WMKillFocus(var Message : TWMKillFocus);
begin
  FFocusedButton.TimeBtnState := FFocusedButton.TimeBtnState - [tbFocusRect];
  FFocusedButton.Invalidate;
end; { End TmcmRealSpinBtn.WMKillFocus.                                        }


procedure TmcmRealSpinBtn.KeyDown(var Key : Word; Shift: TShiftState);
begin
  case Key of
  VK_UP    : begin
               SetFocusBtn(FUpButton);
               FUpButton.Click;
             end;
  VK_DOWN  : begin
               SetFocusBtn(FDownButton);
               FDownButton.Click;
             end;
  VK_SPACE : FFocusedButton.Click;
  end;
end; { End TmcmRealSpinBtn.KeyDown.                                            }


procedure TmcmRealSpinBtn.BtnMouseDown(Sender : TObject;
                                       Button : TMouseButton;
                                       Shift  : TShiftState;
                                       X, Y   : integer);
begin
  if (Button = mbLeft)
  then begin
       SetFocusBtn(TmcmTimeSpeedBtn(Sender));
       if (FFocusControl <> nil) and
           FFocusControl.TabStop and
           FFocusControl.CanFocus and
          (FFocusControl.Handle <> GetFocus)
       then FFocusControl.SetFocus
       else if TabStop and (GetFocus <> Handle) and CanFocus
            then SetFocus;
  end;
end; { End TmcmRealSpinBtn.BtnMouseDown.                                       }


procedure TmcmRealSpinBtn.BtnClick(Sender : TObject);
begin
  if (Sender = FUpButton)
  then begin
       if Assigned(FOnUpClick)
       then FOnUpClick(Self);
  end
  else if Assigned(FOnDownClick)
       then FOnDownClick(Self);
end; { End TmcmRealSpinBtn.BtnClick.                                           }


procedure TmcmRealSpinBtn.SetFocusBtn(Btn : TmcmTimeSpeedBtn);
begin
  if TabStop and CanFocus and (Btn <> FFocusedButton)
  then begin
       FFocusedButton.TimeBtnState := FFocusedButton.TimeBtnState - [tbFocusRect];
       FFocusedButton := Btn;
       if (GetFocus = Handle)
       then begin
            FFocusedButton.TimeBtnState := FFocusedButton.TimeBtnState + [tbFocusRect];
            Invalidate;
       end;
  end;
end; { End TmcmRealSpinBtn.SetFocusBtn.                                        }


procedure TmcmRealSpinBtn.WMGetDlgCode(var Message : TWMGetDlgCode);
begin
  Message.Result := DLGC_WANTARROWS;
end; { End TmcmRealSpinBtn.WMGetDlgCode.                                       }


procedure TmcmRealSpinBtn.Loaded;
var W, H : integer;
begin
  inherited Loaded;
  W := Width;
  H := Height;
  Adjust_Size(W, H);
  if (W <> Width) or (H <> Height)
  then inherited SetBounds(Left, Top, W, H);
end; { End TmcmRealSpinBtn.Loaded.                                             }


function TmcmRealSpinBtn.GetUpGlyph : TBitmap;
begin
  Result := FUpButton.Glyph;
end; { End TmcmRealSpinBtn.GetUpGlyph.                                         }


procedure TmcmRealSpinBtn.SetUpGlyph(Value : TBitmap);
begin
  if (Value <> nil)
  then FUpButton.Glyph := Value
  else begin
       FUpButton.Glyph.Handle := LoadBitmap(HInstance, 'mcmSpinUp');
       FUpButton.NumGlyphs    := 1;
       FUpButton.Invalidate;
  end;
end; { End TmcmRealSpinBtn.SetUpGlyph.                                         }


function TmcmRealSpinBtn.GetDownGlyph : TBitmap;
begin
  Result := FDownButton.Glyph;
end; { End TmcmRealSpinBtn.GetDownGlyph.                                       }


procedure TmcmRealSpinBtn.SetDownGlyph(Value : TBitmap);
begin
  if (Value <> nil)
  then FDownButton.Glyph := Value
  else begin
       FDownButton.Glyph.Handle := LoadBitmap(HInstance, 'mcmSpinDown');
       FDownButton.NumGlyphs    := 1;
       FDownButton.Invalidate;
  end;
end; { End TmcmRealSpinBtn.SetDownGlyph.                                       }


{------------------------------------------------------------------------------}
{ TmcmRealSpin.                                                                }
{------------------------------------------------------------------------------}

constructor TmcmRealSpin.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FButton              := TmcmRealSpinBtn.Create(Self);
  FButton.Width        := 15{15};
  FButton.Height       := 17{14};
  FButton.Visible      := True;
  FButton.Parent       := Self;
  FButton.FocusControl := Self;
  FButton.OnUpClick    := UpClick;
  FButton.OnDownClick  := DownClick;
{  Text                 := '0.0'; }
 // Value                := 0.0;
  ControlStyle         := ControlStyle - [csSetCaption];
  FIncrement           := 1.0;
end; { End TmcmRealSpin.Create.                                                }


destructor TmcmRealSpin.Destroy;
begin
  FButton := nil;
  inherited Destroy;
end; { End TmcmRealSpin.Destroy.                                               }


procedure TmcmRealSpin.KeyDown(var Key   : Word;
                                   Shift : TShiftState);
begin
  if (Key = VK_UP)
  then UpClick(Self)
  else if (Key = VK_DOWN)
       then DownClick(Self);
  inherited KeyDown(Key, Shift);
end; { End TmcmRealSpin.KeyDown.                                               }


procedure TmcmRealSpin.CreateParams(var Params : TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or ES_MULTILINE or WS_CLIPCHILDREN;
end; { End TmcmRealSpin.CreateParams.                                          }


procedure TmcmRealSpin.CreateWnd;
begin
  inherited CreateWnd;
  SetEditRect;
end; { End TmcmRealSpin.CreateWnd.                                             }


procedure TmcmRealSpin.SetEditRect;
var Loc : TRect;
begin
  SendMessage(Handle, EM_GETRECT, 0, LongInt(@Loc));
  Loc.Bottom := ClientHeight + 1;
  Loc.Right  := ClientWidth - FButton.Width - 2;
  Loc.Top    := 0;
  Loc.Left   := 0;
  SendMessage(Handle, EM_SETRECTNP, 0, LongInt(@Loc));
  SendMessage(Handle, EM_GETRECT,   0, LongInt(@Loc));
end; { End TmcmRealSpin.SetEditRect.                                           }


procedure TmcmRealSpin.WMSize(var Message : TWMSize);
var MinHeight : Integer;
begin
  inherited;
  MinHeight := GetMinHeight;
  { text edit bug: if size to less than minheight, then edit ctrl does not     }
  { display the text.                                                          }
  if (Height < MinHeight)
  then Height := MinHeight
  else begin
       if (FButton <> nil)
       then FButton.SetBounds(Width - FButton.Width - 5, 0, FButton.Width, Height - 5)
       else FButton.SetBounds(Width - FButton.Width, 0, FButton.Width, Height);
       SetEditRect;
  end;
end; { End TmcmRealSpin.WMSize.                                                }


function TmcmRealSpin.GetMinHeight : integer;
var DC         : HDC;
    SaveFont   : HFont;
    i          : integer;
    SysMetrics : TTextMetric;
    Metrics    : TTextMetric;
begin
  DC := GetDC(0);
  GetTextMetrics(DC, SysMetrics);
  SaveFont := SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  i := SysMetrics.tmHeight;
  if (i > Metrics.tmHeight)
  then i := Metrics.tmHeight;
  Result := Metrics.tmHeight + i div 4 + GetSystemMetrics(SM_CYBORDER) * 4 + 2;
end; { End TmcmRealSpin.GetMinHeight.                                          }


procedure TmcmRealSpin.UpClick(Sender : TObject);
begin
  if ReadOnly
  then MessageBeep(0)
  else Value := Value + FIncrement;
end; { End TmcmRealSpin.UpClick.                                               }


procedure TmcmRealSpin.DownClick(Sender : TObject);
begin
  if ReadOnly
  then MessageBeep(0)
  else Value := Value - FIncrement;
end; { End TmcmRealSpin.DownClick.                                             }


procedure TmcmRealSpin.WMPaste(var Message : TWMPaste);
begin
  if {not FEditorEnabled or} ReadOnly
  then Exit;
  inherited;
end; { End TmcmRealSpin.WMPaste.                                               }


procedure TmcmRealSpin.WMCut(var Message : TWMPaste);
begin
  if {not FEditorEnabled or} ReadOnly
  then Exit;
  inherited;
end; { End TmcmRealSpin.WMCut.                                                 }


end.
