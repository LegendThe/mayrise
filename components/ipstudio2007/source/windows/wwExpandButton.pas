{
//
// Components : TwwCheckbox
//
// Copyright (c) 2001 by Woll2Woll Software
}
unit wwExpandButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwframe, dbctrls, db, wwcommon, imglist, wwradiobutton, grids;

type
  TwwCustomCheckBox = class(TCustomCheckBox)
  private
    FCanvas: TControlCanvas;
    FFrame: TwwEditFrame;
    FIndents: TwwWinButtonIndents;
    FAlwaysTransparent: boolean;
    FValueChecked: string;
    FValueUnchecked: string;
    FShowFocusRect: boolean;
    FDynamicCaption: boolean;
    FImages: TCustomImageList;
    FWordWrap: boolean;

    FPaintBitmap: TBitmap;
    FPaintCanvas: TCanvas;
    UseTempCanvas: Boolean;
    SpaceKeyPressed: boolean;
    FModified: Boolean;
//    PaintCopyState: TCheckBoxState;

    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FShowAsButton: boolean;

    function isTransparentEffective: boolean;
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure DrawItem(const DrawItemStruct: TDrawItemStruct); virtual;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message WM_LBUTTONUP;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure BMSetCheck(var Message: TMessage); message BM_SETCHECK;
    procedure WMNCPaint(var Message: TMessage); message WM_NCPAINT;
    procedure WMMouseMove(var Message: TWMMouseMove); message WM_MOUSEMOVE;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CNKeyDown(var Message: TWMKeyDown); message CN_KEYDOWN;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure EMGetModify(var Message: TMessage); message EM_GETMODIFY;

    Function IsMouseInControl: boolean;
    procedure SetValueChecked(const Value: string);
    procedure SetValueUnchecked(const Value: string);
    procedure ComputeGlyphRect(var DrawRect: TRect);
    procedure ComputeTextRect(var DrawRect: TRect);
    function GetModified: Boolean;
    procedure SetModified(Value: Boolean);

  protected
    function GetFieldState: TCheckBoxState; virtual;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure CreateWnd; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; virtual;
    procedure PaintBorder;
    procedure DataChange(Sender: TObject); virtual;
    Function GetCanvas: TCanvas; virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    { Protected declarations }
    procedure DoMouseEnter; virtual;
    procedure DoMouseLeave; virtual;
    function GetField: TField; virtual;
  public
     destructor Destroy; override;
     constructor Create(AOwner: TComponent); override;
     property Canvas: TCanvas read GetCanvas;
     property Images: TCustomImageList read FImages write FImages;
     property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
     property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
     property Modified: Boolean read GetModified write SetModified;

  published
    property AlwaysTransparent: boolean read FAlwaysTransparent write FAlwaysTransparent;
    property Frame: TwwEditFrame read FFrame write FFrame;
    property Indents: TwwWinButtonIndents read FIndents write FIndents;
    property DynamicCaption: boolean read FDynamicCaption write FDynamicCaption default False;
    property ValueChecked: string read FValueChecked write SetValueChecked;
    property ValueUnchecked: string read FValueUnchecked write SetValueUnchecked;
    property ShowFocusRect: boolean read FShowFocusRect write FShowFocusRect default true;
    property WordWrap: boolean read FWordWrap write FWordWrap default False;
    property Action;
    property Alignment;
    property AllowGrayed;
    property Anchors;
    property BiDiMode;
    property Caption;
    property Checked;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property State;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

{ TDBCheckBox }

  TwwCheckBox = class(TwwCustomCheckBox)
  private
    FDataLink: TFieldDataLink;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetReadOnly: Boolean;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    function ValueMatch(const ValueList, Value: string): Boolean;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
  protected
    Function IsDataBound: boolean;
    procedure DataChange(Sender: TObject); override;
    procedure Toggle; override;
    procedure KeyPress(var Key: Char); override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure WndProc(var Message: TMessage); override;
    function GetField: TField; override;
    function GetFieldState: TCheckBoxState; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function UseRightToLeftAlignment: Boolean; override;
    property Field: TField read GetField;
  published
    property AlwaysTransparent: boolean read FAlwaysTransparent write FAlwaysTransparent;
    property Frame: TwwEditFrame read FFrame write FFrame;
    property DynamicCaption: boolean read FDynamicCaption write FDynamicCaption default False;
    property ValueChecked: string read FValueChecked write SetValueChecked;
    property ValueUnchecked: string read FValueUnchecked write SetValueUnchecked;
    property ShowFocusRect: boolean read FShowFocusRect write FShowFocusRect default true;

    property Action;
    property Alignment;
    property AllowGrayed;
    property Anchors;
    property BiDiMode;
    property Caption;
    property Checked;
    property Color;
    property Constraints;
    property Ctl3D;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property Images;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property State;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseEnter;
    property OnMouseLeave;

    property OnStartDock;
    property OnStartDrag;

    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
  end;


implementation

uses wwdbigrd, wwdbgrid;

procedure TwwCustomCheckBox.CNDrawItem(var Message: TWMDrawItem);
begin
  DrawItem(Message.DrawItemStruct^);
end;

procedure TwwCustomCheckBox.DrawItem(const DrawItemStruct: TDrawItemStruct);
  procedure CanvasNeeded;
  begin
    if FCanvas = nil then
    begin
      FCanvas := TControlCanvas.Create;
      FCanvas.Control := Self;
    end;
  end;
begin
  CanvasNeeded;
  FCanvas.Handle := DrawItemStruct.hDC;
  Paint;
  PaintBorder;
  FCanvas.Handle := 0;
end;

procedure TwwCustomCheckBox.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  if IsInwwObjectViewPaint(self) or
    ((IsTransparentEffective and not Focused) or AlwaysTransparent) then
  begin
     if not (csDesigning in ComponentState) then Message.result:= 1
     else inherited;
  end
  else
     inherited;
{   if Frame.enabled and not (csDesigning in ComponentState) then
      message.result:=1
   else inherited;}
end;

procedure TwwCustomCheckBox.CreateParams(var Params: TCreateParams);
const
  Alignments: array[Boolean, TLeftRight] of DWORD =
    ((BS_LEFTTEXT, 0), (0, BS_LEFTTEXT));
begin
   inherited;
   CreateSubClass(Params, 'BUTTON');
   if IsTransparentEffective then
     Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;  // For transparency
   with Params do begin
     Style:= Style and not BS_3STATE;
     Style := Style or BS_ownerdraw;
//     Style:= Style or ws_border;
     WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
   end;
end;

procedure TwwCustomCheckBox.CreateWnd;
  procedure DisableParentClipping;
  begin
     SetWindowLong(GetParent(Handle), GWL_STYLE,
      GetWindowLong(GetParent(Handle), GWL_STYLE) and not WS_CLIPCHILDREN);
  end;
begin
   inherited;
   if IsTransparentEffective then
   begin
     DisableParentClipping;
   end;
   Modified := FModified;
end;

destructor TwwCustomCheckBox.Destroy;
begin
   FIndents.Free;
   FCanvas.Free;
   FFrame.Free;
   inherited;
end;
{
procedure TwwCustomCheckBox.PaintGlyph(drawrect: TRect; b: TBitmap);
var TempRect: TRect;
    FGlyphs: TImageList;
    i: integer;
begin
 for i:= 1 to 1 do
  begin
   FGlyphs:= TImageList.createsize(b.Width, b.Height);
   FGlyphs.AddMasked(b, b.Canvas.Pixels[0, b.Height-1]);
   Canvas.Lock;
   TempRect:= Rect(0, 0, b.Width, b.Height);
   try
      FGlyphs.Draw(Canvas, drawrect.left, drawrect.top,
        0, True);
//      FCanvas.Brush.Style:= bsClear;
//      FCanvas.BrushCopy(DrawRect, b, TempRect,
//          b.Canvas.Pixels[0, b.Height-1]);
   finally
      Canvas.Unlock;
      FGlyphs.Free;
   end;
end
end;
}

procedure TwwCustomCheckBox.ComputeGlyphRect(var DrawRect: TRect);
var offsetx, offsety: integer;
    checkboxSizeX, checkboxSizeY: integer;
    pt: TPoint;
    TempIndentCheckboxX: integer;
begin
   if (Images<>nil) and (Images.count>0) then
   begin
      checkboxSizeX:= Images.Width;
      checkboxSizeY:= Images.Height;
   end
   else begin
      checkboxSizex:= 13;
      checkboxSizey:= 13;
   end;

     offsetx:= checkboxsizex div 2;
     offsety:= checkboxsizey div 2;

     TempIndentCheckboxX:= Indents.ButtonX+1;
     if parent is TCustomGrid then inc(TempIndentCheckboxX);

     if Frame.Enabled and
        (efLeftBorder in Frame.FocusBorders) then
     begin
        TempIndentCheckboxX:= wwmax(TempIndentCheckboxX, 3);
     end;

     if Alignment = taRightJustify then
        pt.x:= offsetx + TempIndentCheckboxX
     else
        pt.x:= ClientWidth - TempIndentCheckboxX - offsetx -2;
     pt.y:= Height div 2;

     DrawRect.Left:= pt.x - offsetx;
     DrawRect.Right:= pt.x + offsetx+1;
     DrawRect.Top:= pt.y-offsety+Indents.ButtonY;
     DrawRect.Bottom:= pt.y+offsety+1+Indents.ButtonY;

end;

procedure TwwCustomCheckBox.ComputeTextRect(var DrawRect: TRect);
var TempIndentTextX: integer;
    pt: TPoint;
    NewDrawRect: TRect;
    DrawFlags: integer;
    TempCaption : string;
begin
   ComputeGlyphRect(DrawRect);

   TempIndentTextX:= Indents.TextX;
   if Frame.Enabled and
      (efLeftBorder in Frame.FocusBorders) then
      TempIndentTextX:= wwmax(TempIndentTextX, 3);
   if FShowAsButton then TempIndentTextX:= wwmax(TempIndentTextX, 3);

   pt.y:= Height div 2;
   if Alignment = taRightJustify then
       NewDrawRect:= Rect(DrawRect.Right + 4 + TempIndentTextX, 0,
                     Width, Height)
   else
      NewDrawRect:= Rect(TempIndentTextX + 2, 0, DrawRect.Left, Height);
   DrawFlags:= 0;
   if WordWrap then
      DrawFlags:= DrawFlags or DT_EDITCONTROL or DT_WORDBREAK;
   if DynamicCaption then
   begin
      TempCaption:=  ValueChecked;
      if length(TempCaption)<length(ValueUnchecked) then
         TempCaption:= ValueUnchecked;
   end
   else TempCaption:= Caption;
   DrawTextEx(Canvas.Handle, PChar(TempCaption),
              Length(TempCaption), newdrawrect, DrawFlags or DT_CALCRECT, nil);
   DrawRect:= NewDrawRect;
   DrawRect.Top:= Indents.TextY + (ClientHeight -
                   (NewDrawRect.Bottom-NewDrawRect.Top)) div 2;
   DrawRect.Bottom:= DrawRect.Top + NewDrawRect.Bottom; //DrawRect.Bottom - (NewDrawRect.Bottom-NewDrawRect.Top) div 2;
   if wwIsClass(parent.classtype, 'TwwDBGrid') and
      (dgRowLines in TwwDBGrid(parent).Options) then
       DrawRect.Top:= DrawRect.Top +1;

end;

type
  TwwCheatGridCast = class(TwwDBGrid);

procedure TwwCustomCheckBox.Paint;
var checkboxSizex, checkboxsizey, offsetx, offsety: integer;
    pt: TPoint;
    TempIndentTextX, TempIndentCheckboxX: integer;
    r: TRect;

  function DrawHighlight: boolean;
  begin
     result:= False;
     if wwIsClass(parent.classtype, 'TwwDBGrid') then begin
       result:= parent.focused and
                not wwInPaintCopyState(ControlState)
     end
  end;

  procedure PaintText;
  var ARect, FocusRect: TRect;
      Flags: integer;
      HaveText: boolean;
      TempCaption: string;
      PaintFieldState : TCheckBoxState;
  begin
    ComputeTextRect(ARect);
    tempCaption:= Caption;

    if DynamicCaption then
    begin
       HaveText:= True;
       if csPaintCopy in ControlState then
       begin
          PaintFieldState:= GetFieldState;
          if (PaintFieldState = cbChecked) then TempCaption:= ValueChecked
          else if PaintFieldState=cbUnchecked then TempCaption:= ValueUnchecked
          else TempCaption:= ''
       end
    end
    else
       HaveText:= Caption<>'';

    if Focused and ShowFocusRect and HaveText and not (parent is TCustomGrid) then
    begin
      FocusRect:= Rect(ARect.Left - 2, ARect.Top - 2,
                     wwMin(ARect.Right+2, ARect.Left + Canvas.TextWidth(TempCaption) + 2),
                     ARect.Bottom + 2);
      Canvas.Brush.Color := Color;
      Canvas.Font.Color := clBlack;
      Canvas.FrameRect(FocusRect);
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Color := clBlack;
      Canvas.DrawFocusRect(FocusRect);
    end;

    SetBkMode(Canvas.Handle, TRANSPARENT);
    Flags:= 0;
    if WordWrap then flags:= flags or DT_EDITCONTROL or DT_WORDBREAK;

    InflateRect(ARect, 0, 2);
    ARect.Top:= ARect.Top + 2;
    if DrawHighlight then begin
//       Canvas.Font.Color := clHighlightText;
    end
    else if not (csPaintCopy in ControlState) then
       Canvas.Font.Color:= Font.Color;

    if (not Focused) and IsTransparentEffective and
       (Frame.NonFocusTransparentFontColor<>clNone) then
        Canvas.Font.Color:= Frame.NonFocusTransparentFontColor;

    DrawTextEx(Canvas.Handle, Pchar(Tempcaption), length(Tempcaption), ARect, Flags, nil);
  end;

  procedure PaintCheckbox;
  var
      DrawRect, TempRect: TRect;
      FrameStateFlags, StateFlags: integer;
      cp: TPoint;
      TempState: TCheckboxState;
  begin
    ComputeGlyphRect(DrawRect);

    if State=cbChecked then
       StateFlags:= DFCS_BUTTONCHECK
    else
       StateFlags:= DFCS_BUTTON3STATE;

    if (cslbuttondown in controlstate) and Focused and not (csPaintCopy in ControlState) then
    begin
        if IsInGrid(self) then
        begin
           GetCursorPos(cp);
           cp:= ScreenToClient(cp);
           if IsMouseInControl then
              StateFlags := StateFlags or DFCS_PUSHED;
        end
        else begin
            if IsMouseInControl then
              StateFlags := StateFlags or DFCS_PUSHED;
        end
    end;

    if SpaceKeyPressed and (GetKeyState(vk_space)<0) and Focused then
       StateFlags := StateFlags or DFCS_PUSHED;

    if State=cbChecked then
       StateFlags := StateFlags or DFCS_CHECKED
    else if State = cbGrayed then
       StateFlags:= StateFlags or DFCS_CHECKED;

    if csPaintCopy in ControlState then
       TempState:= GetFieldState
    else
       TempState:= State;

    If (Images<>nil) and (Images.Count>0) and (FShowAsButton) then
    begin
          FrameStateFlags:= DFCS_BUTTONPUSH;
          if (StateFlags and DFCS_PUSHED <> 0) then
             FrameStateFlags:= FrameStateFlags or DFCS_PUSHED;
          TempRect:= DrawRect;
          InflateRect(TempRect, 2, 2);
          with DrawRect do
              DrawFrameControl(Canvas.Handle, TempRect,
                      DFC_BUTTON, FrameStateFlags);
    end;

    if TempState=cbChecked then
    begin
       if (Images<>nil) and (Images.count>1) then begin
          if FShowAsButton and (StateFlags and DFCS_PUSHED <> 0) then begin
             FImages.Draw(Canvas, drawrect.left+1, drawrect.top+1, 1, True);
          end
          else
             FImages.Draw(Canvas, drawrect.left, drawrect.top, 1, True);
          exit;
       end
    end
    else if TempState=cbUnchecked then
    begin
       if (Images<>nil) and (Images.count>0) then begin

          if FShowAsButton and (StateFlags and DFCS_PUSHED <> 0) then  // Add property - default does not press
          begin
             FImages.Draw(Canvas, drawrect.left+1, drawrect.top+1, 0, True);
          end
          else
             FImages.Draw(Canvas, drawrect.left, drawrect.top, 0, True);
          exit;
       end
    end
    else begin
       if (Images<>nil) and (Images.count>2) then begin
          FImages.Draw(Canvas, drawrect.left, drawrect.top, 2, True);
          exit;
       end
    end;

    Canvas.Brush.Color := clBtnFace;
    Canvas.FillRect(DrawRect);
    Canvas.Brush.Color := clBtnShadow;

    if Images=nil then
    begin
      with DrawRect do
         DrawFrameControl(Canvas.Handle, DrawRect,
             DFC_BUTTON, StateFlags);
    end
  end;

  Function Max(x,y: integer): integer;
  begin
     if x>y then result:=x else result:=y
  end;

  procedure EndPainting;
  begin
     if (FCanvas = Canvas) then exit;
     r:= ClientRect;
//     InflateRect(r, -2, -2); // Seems to cause glyph to not appear
     FCanvas.CopyRect(r, FPaintCanvas, r);
  end;

begin
   if False and Focused and (not AlwaysTransparent) then
   begin
      FPaintBitmap:= TBitmap.create;
      FPaintCanvas:= FPaintBitmap.canvas;
      FPaintBitmap.Width:= ClientWidth;
      FPaintBitmap.Height:= ClientHeight;
   end;

   try
     if (not (Frame.Enabled and Frame.Transparent)) or
       (not AlwaysTransparent) and (Focused) then
     begin
        if not (IsInGridPaint(self)) then
        begin
          r:= ClientRect;
//          InflateRect(r, -2, -2); // Seems to cause glyph to not appear
          Canvas.Brush.Color:= Color;
          if DrawHighlight then begin
             Canvas.Brush.Color := clHighlight;
             Canvas.Font.Color := clHighlightText;
          end;
          {  Honor grid's colors when painting cell }
          if DrawHighlight and (wwIsClass(parent.classtype, 'TwwCustomDBGrid')) then
          begin
             if (GetField<>nil) then
                TwwCheatGridCast(Parent).DoCalcCellColors(GetField, [], True, Canvas.Font, Canvas.Brush);
          end;
          Canvas.FillRect(r);
        end
     end;
     PaintCheckbox;
     PaintText;

    if DrawHighlight then
    begin
      r:= ClientRect;
      Canvas.Brush.Color := clHighlight;
      Canvas.Font.Color := clHighlightText;
      Canvas.Pen.Color:= clHighlight;
      Canvas.FrameRect(r);
      SetTextColor(Canvas.Handle, ColorToRGB(clHighlightText));
      SetBkColor(Canvas.Handle, ColorToRGB(clHighlight));
      Canvas.DrawFocusRect(r);
    end

   finally
     EndPainting;
     FPaintBitmap.Free;
     FPaintBitmap:=nil;
   end
end;

procedure TwwCustomCheckBox.WMLButtonUp(var Message: TWMLButtonUp);
var r: TRect;
begin
   inherited;
   if not IsInGrid(self) then begin
      if PtInRect(ClientRect, Point(Message.xpos,Message.ypos)) then
         Toggle;
   end
   else begin
      ComputeGlyphRect(r);
      InflateRect(r, 3, 3);
      if PtInRect(r, Point(Message.xpos,Message.ypos)) then
         Toggle;
   end
end;

procedure TwwCustomCheckBox.BMSetCheck(var Message: TMessage);
var r: TRect;
begin
   inherited;
   if DynamicCaption then begin
     if State=cbChecked then Caption:= ValueChecked
     else if State=cbUnchecked then Caption:= ValueUnchecked
     else Caption:= ''
   end
   else begin
      if IsTransparentEffective and
         ((not Focused) or AlwaysTransparent) then
      begin
        ComputeGlyphRect(r);
        r:= Rect(r.left + left, r.top + top, r.right+left, r.bottom+top);
        InvalidateRect(parent.handle, @r, False);
//       Frame.RefreshTransparentText(False, False);
      end
   end;

   invalidate;
end;

procedure TwwCustomCheckBox.PaintBorder;
begin
   if HandleAllocated then
   begin
     if not Frame.Enabled then exit;
     Frame.Ncpaint(Focused, AlwaysTransparent);
   end;
end;

procedure TwwCustomCheckBox.WMKillFocus(var Message: TWMKillFocus);
var
   exStyle, origStyle: longint;
   r: TRect;
begin
   inherited;

   if IsTransparentEffective then
   begin
     OrigStyle:= Windows.GetWindowLong(handle, GWL_EXSTYLE);
     exStyle:= OrigStyle or WS_EX_TRANSPARENT;
     Windows.SetWindowLong(handle, GWL_EXSTYLE, exStyle);
     Frame.RefreshTransparentText(True);
//     r:= BoundsRect;
//     InvalidateRect(Parent.handle, @r, False);
   end;

   invalidate;
//   InvalidateBorder;
end;

procedure TwwCheckBox.WMSetFocus(var Message: TWMSetFocus);
begin
   inherited;
   if (FDataLink.Field<>nil) then Modified:=False;
end;

procedure TwwCustomCheckBox.WMSetFocus(var Message: TWMSetFocus);
var r: TRect;
    exStyle, origStyle: longint;
begin
   inherited;

   SpaceKeyPressed:=False;

   if IsTransparentEffective and (not AlwaysTransparent) then begin
     OrigStyle:= Windows.GetWindowLong(handle, GWL_EXSTYLE);
     exStyle:= OrigStyle and not WS_EX_TRANSPARENT;
     Windows.SetWindowLong(handle, GWL_EXSTYLE, exStyle);
     invalidate;
   end;

{  if Frame.enabled then begin
     if IsTransparentEffective then begin
        r:= BoundsRect;
        InvalidateRect(Parent.Handle, @r, False);
     end;
     invalidate;
  end;
}

   if IsTransparentEffective and AlwaysTransparent then
   begin
     r:= BoundsRect;
     InvalidateRect(Parent.handle, @r, False);
   end;
   invalidate;

//   if Frame.Enabled then {(not AlwaysTransparent) then }InvalidateBorder;
end;

procedure TwwCustomCheckBox.WMNCPaint(var Message: TMessage);
begin
   inherited;
{   if not Frame.Enabled then exit;
   Frame.Ncpaint(Focused, AlwaysTransparent);
   message.result:= 0;
}
end;

constructor TwwCustomCheckBox.Create(AOwner: TComponent);
begin
   inherited;
   FShowAsButton:= True;
   FFrame:= TwwEditFrame.create(self);
   FIndents:= TwwWinButtonIndents.create(self);
   FValueChecked:= 'True';
   FValueUnchecked:= 'False';
   FShowFocusRect:= True;
end;

function TwwCustomCheckBox.isTransparentEffective: boolean;
begin
   result:= Frame.Transparent and Frame.IsFrameEffective
end;


Function TwwCustomCheckBox.IsMouseInControl: boolean;
var p: TPoint;
    AHandle: HWND;
begin
  GetCursorPos(p);
  p:= ScreenToClient(p);
  p.x:= p.x + Left;
  p.y:= p.y + Top;
  AHandle := ChildWindowFromPoint(Parent.Handle, p);
  result:= FindControl(AHandle) = self;
end;

procedure TwwCustomCheckBox.WMMouseMove(var Message: TWMMouseMove);
begin
  inherited;
end;

procedure TwwCustomCheckBox.DataChange(Sender: TObject);
begin
end;

procedure TwwCustomCheckBox.CMTextChanged(var Message: TMessage);
begin
  if IsTransparentEffective and
    ((not Focused) or AlwaysTransparent) then
     Frame.RefreshTransparentText(False, False);

  inherited;
end;

procedure TwwCustomCheckBox.SetValueChecked(const Value: string);
begin
  FValueChecked := Value;
  DataChange(Self);
end;

procedure TwwCustomCheckBox.SetValueUnchecked(const Value: string);
begin
  FValueUnchecked := Value;
  DataChange(Self);
end;

constructor TwwCheckBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  State := cbUnchecked;
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
//  FPaintControl := TPaintControl.Create(Self, 'BUTTON');
//  FPaintControl.Ctl3DButton := True;
end;

destructor TwwCheckBox.Destroy;
begin
//  FPaintControl.Free;
  FDataLink.Free;
  FDataLink := nil;
  inherited Destroy;
end;

procedure TwwCheckBox.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TwwCheckBox.UseRightToLeftAlignment: Boolean;
begin
  Result := DBUseRightToLeftAlignment(Self, Field);
end;

function TwwCustomCheckBox.GetFieldState: TCheckBoxState;
begin
   result:= State;
end;

function TwwCheckBox.GetFieldState: TCheckBoxState;
var
  Text: string;
begin
  if FDatalink.Field <> nil then
    if FDataLink.Field.IsNull then
      Result := cbGrayed
    else if FDataLink.Field.DataType = ftBoolean then
      if FDataLink.Field.AsBoolean then
        Result := cbChecked
      else
        Result := cbUnchecked
    else
    begin
      Result := cbGrayed;
      Text := FDataLink.Field.Text;
      if ValueMatch(FValueChecked, Text) then Result := cbChecked else
        if ValueMatch(FValueUnchecked, Text) then Result := cbUnchecked;
    end
  else
    Result:= State;
//    Result := cbUnchecked;
end;

procedure TwwCheckBox.DataChange(Sender: TObject);
begin
  State := GetFieldState;
  if (DataSource<>nil) and (DataSource.State=dsBrowse) then FModified:=False;
end;

procedure TwwCheckBox.UpdateData(Sender: TObject);
var
  Pos: Integer;
  S: string;
begin
  if State = cbGrayed then
    FDataLink.Field.Clear
  else
    if FDataLink.Field.DataType = ftBoolean then
      FDataLink.Field.AsBoolean := Checked
    else
    begin
      if Checked then S := FValueChecked else S := FValueUnchecked;
      Pos := 1;
      FDataLink.Field.Text := ExtractFieldName(S, Pos);
    end;
end;

function TwwCheckBox.ValueMatch(const ValueList, Value: string): Boolean;
var
  Pos: Integer;
begin
  Result := False;
  Pos := 1;
  while Pos <= Length(ValueList) do
    if AnsiCompareText(ExtractFieldName(ValueList, Pos), Value) = 0 then
    begin
      Result := True;
      Break;
    end;
end;

Function TwwCheckBox.IsDataBound: boolean;
begin
   result:= (DataSource<>nil) and
            (DataField<>'');
end;

function TwwCustomCheckbox.GetModified: Boolean;
begin
  Result := FModified;
end;

procedure TwwCustomCheckbox.SetModified(Value: Boolean);
begin
   FModified := Value;
end;

procedure TwwCheckBox.Toggle;
begin
  if IsDataBound then
  begin
     if FDataLink.Edit then
     begin
       inherited Toggle;
       FDataLink.Modified;
       Modified:= True;
//       if not (csPaintCopy in ControlState) then modified:=True;
     end;
  end
  else if not ReadOnly then inherited Toggle
end;

function TwwCheckBox.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TwwCheckBox.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TwwCheckBox.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TwwCheckBox.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TwwCheckBox.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TwwCheckBox.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TwwCheckBox.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TwwCheckBox.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  case Key of
    #8, ' ':
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        Modified:= False;
      end
  end;
end;

procedure TwwCheckBox.WndProc(var Message: TMessage);
begin
  inherited;
end;

procedure TwwCheckBox.WMPaint(var Message: TWMPaint);
var OldState: TCheckboxState;
    tc,bc: TColor;
  procedure CanvasNeeded;
  begin
    if FCanvas = nil then
    begin
      FCanvas := TControlCanvas.Create;
      FCanvas.Control := Self;
    end;
  end;

begin
  if not (csPaintCopy in ControlState) then
  begin
     inherited;
     PaintBorder;
  end
  else
  begin
//      OldState:= State;
      ClicksDisabled:= True;
      Try
        // This code works for inspector
        if IsInGridPaint(self) and (message.dc<>0) then
        begin
           tc:= GetTextColor(message.dc);
//           bc:= GetBkColor(message.dc);
        end;
        CanvasNeeded;
        FCanvas.Handle := Message.dc;
        FCanvas.Font:= Font;
        if IsInGridPaint(self) and (message.dc<>0) then
        begin
           FCanvas.Font.Color:= tc;
//           FCanvas.Brush.Color:= bc;
        end;
        Paint;
        FCanvas.Handle := 0;

      finally
        ClicksDisabled:= False;
      end;
  end;
end;

procedure TwwCheckBox.CMExit(var Message: TCMExit);
begin
  try
    FDataLink.UpdateRecord;
  except
    SetFocus;
    raise;
  end;
  inherited;
end;

procedure TwwCheckBox.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

function TwwCheckBox.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TwwCheckBox.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;

Function TwwCustomCheckBox.GetCanvas: TCanvas;
begin
   if Focused and (FPaintBitmap<>nil) then
      result:= FPaintCanvas
   else
      result:= FCanvas;
end;

procedure TwwCustomCheckBox.KeyUp(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_space then
  begin
     if SpaceKeyPressed then Toggle;
     SpaceKeyPressed:=False;
  end
end;

procedure TwwCustomCheckBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_space then
  begin
     SpaceKeyPressed:=True;
  end
end;

procedure TwwCustomCheckBox.CNKeyDown(var Message: TWMKeyDown);
begin
  if not (csDesigning in ComponentState) then
  begin
    with Message do
       if (charcode = VK_SPACE) then SpaceKeyPressed:=True;
  end;

  inherited;
end;

procedure TwwCustomCheckBox.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if Operation = opRemove then
  begin
    if AComponent = Images then Images := nil;
  end;
end;

procedure TwwCustomCheckBox.CNCommand(var Message: TWMCommand);
begin
  // Handle toggling ourselves instead of control
  // as when control is in inspector it does not work otherwise
  // Therefore we do not call inherited CNCommand
end;

procedure TwwCustomCheckBox.DoMouseEnter;
begin
  try
     If Assigned( FOnMouseEnter ) Then FOnMouseEnter( self );
  except
    exit;
  end;
  if Frame.IsFrameEffective and (not Focused) and
     Frame.MouseEnterSameAsFocus then
     wwDrawEdge(self, Frame, GetCanvas, True);
end;

procedure TwwCustomCheckBox.DoMouseLeave;
begin
  try
    If Assigned( FOnMouseLeave ) Then FOnMouseLeave( self );
  except
    exit;
  end;
  if Frame.IsFrameEffective and (not Focused) and
     Frame.MouseEnterSameAsFocus then begin
     wwDrawEdge(self, Frame, GetCanvas, False);
     if IsTransparentEffective then
        Frame.CreateTransparent:= True;
     RecreateWnd;
  end;
end;

procedure TwwCustomCheckBox.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  DoMouseEnter;
//  if cslButtonDown in ControlState then
//     Invalidate;
end;

procedure TwwCustomCheckBox.CMMouseLeave(var Message: TMessage);
var r:TRect;
    pt:TPoint;
begin
  GetCursorPos(pt);
  pt := ScreenToClient(pt);
  r := ClientRect;
  if (PtInRect(r,pt)) then exit;

  inherited;
  DoMouseLeave;

//  if cslButtonDown in ControlState then Invalidate;
end;

function TwwCustomCheckbox.GetField: TField;
begin
   result:=nil;
end;

procedure TwwCustomCheckbox.EMGetModify(var Message: TMessage);
begin
   If FModified then message.result:=1
   else message.result:=0;
end;

end.
