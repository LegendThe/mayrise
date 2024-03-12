unit Isgclist;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Menus;

type
  TCheckStyle = (chsNormal, chsDraw3D);
  TISGCList = class(TCustomListBox)
  private
    { Private declarations }
    FCheckBoxStyle:TCheckStyle;

  protected
    { Protected declarations }
    procedure SetCheckBoxStyle(AStyle:TCheckStyle);
    procedure DrawItem(Index: Integer;
      Rect: TRect; State: TOwnerDrawState); override;
    procedure WMSetFont(var Message:TWMSetFont); Message WM_SETFONT;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;

  published
    { Published declarations }
    property CheckBoxStyle:TCheckStyle read FCheckBoxStyle
                                       write SetCheckBoxStyle;
    { Make Properties Visible }
    property Align;
    property BorderStyle;
    property Color;
    property Columns;
    property Ctl3D;
    Property Cursor;
    Property DragCursor;
    Property Enabled;
    Property Font;
    Property Height;
    Property HelpContext;
    Property Hint;
    Property IntegralHeight;
    Property ItemHeight;
    Property Items;
    Property Left;
    Property Name;
    Property ParentColor;
    Property ParentCtl3D;
    Property ParentFont;
    Property ParentShowHint;
    Property PopupMenu;
    Property ShowHint;
    Property Sorted;
    Property TabOrder;
    Property TabStop;
    Property Tag;
    Property Top;
    Property Visible;
    Property Width;

    { Make Events Visible }
    Property OnClick;
    Property OnDblClick;
    Property OnDragDrop;
    Property OnDragOver;
    Property OnEndDrag;
    Property OnEnter;
    Property OnExit;
    Property OnKeyDown;
    Property OnKeyPress;
    Property OnKeyUp;
    Property OnMeasureItem;
    Property OnMouseDown;
    Property OnMouseMove;
    Property OnMouseUp;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ISG', [TISGCList]);
end;

constructor TISGCList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  MultiSelect:=True;
  ExtendedSelect:=False;
  Style:=lbOwnerDrawFixed;
end;

procedure TISGCList.SetCheckBoxStyle(AStyle:TCheckStyle);
begin
  if FCheckBoxStyle<>AStyle then
  begin
    FCheckBoxStyle:=AStyle;
    if AStyle=chsDraw3D then
      Color:=clBtnFace
    else
      Color:=clWindow;
  end;
end;

procedure TISGCList.DrawItem(Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Offset: Integer;	{ text offset width }
  R:TRect;
  Metrics: TTextMetric;
begin

  with Canvas do
  begin
    Brush.Style:=bsSolid;
    Pen.Style:=psSolid;
    Brush.Color:=Color; {clWhite;}
    FillRect(Rect);
    Offset := Rect.Bottom-Rect.Top;
    if (odGrayed in State) or (odDisabled in State) then
    begin
      Pen.Color:=clGray;
      Font.Color:=clGray;
    end
    else
    begin
      Pen.Color:=clBlack;
      Font.Color:=clBlack;
    end;
    if FCheckBoxStyle=chsDraw3D then
    begin
      Pen.Width:=1;
      Pen.Color:=clBtnShadow;
      R:=Rect;
      if ItemHeight>16 then
        R.Top:=R.Top+(ItemHeight-16) div 2;
      R.Right:=R.Left+14;
      R.Bottom:=R.Top+14;
      MoveTo(R.Left+1,R.Bottom-2);
      LineTo(R.Left+1,R.Top+1);
      LineTo(R.Right-1,R.Top+1);
      Pen.Color:=clWhite;
      MoveTo(R.Right-1,R.Top+2);
      LineTo(R.Right-1,R.Bottom-1);
      LineTo(R.Left+1,R.Bottom-1);
      Pen.Color:=clBlack;
      MoveTo(R.Left+2,R.Bottom-2);
      LineTo(R.Left+2,R.Top+2);
      LineTo(R.Right-2,R.Top+2);
      Pen.Color:=clBtnFace;
      MoveTo(R.Right-2,R.Top+2);
      LineTo(R.Right-2,R.Bottom-2);
      LineTo(R.Left+3,R.Bottom-2);
      Brush.Color:=clWhite;
      R.Left:=R.Left+3;
      R.Right:=R.Right-2;
      R.Top:=R.Top+3;
      R.Bottom:=R.Bottom-2;
      FillRect(R);
      Pen.Width:=1;
      Pen.Color:=clBlack;
      Brush.Color:=clBlack;
      if odSelected in State then
      begin
        MoveTo(R.Left+1,R.Top+1);
        LineTo(R.Right-1,R.Bottom-1);
        MoveTo(R.Right-2,R.Top+1);
        LineTo(R.Left,R.Bottom-1);

        MoveTo(R.Left+1,R.Top+2);
        LineTo(R.Right-2,R.Bottom-1);
        MoveTo(R.Right-2,R.Top+2);
        LineTo(R.Left+1,R.Bottom-1);

        MoveTo(R.Left+2,R.Top+1);
        LineTo(R.Right-1,R.Bottom-2);
        MoveTo(R.Right-3,R.Top+1);
        LineTo(R.Left,R.Bottom-2);
      end;
      Brush.Color:=Color;
      Rect.Left:=R.Right+4;
      GetTextMetrics(Handle,Metrics);
      Rect.Top:=Rect.Top+(ItemHeight-Metrics.tmHeight) div 2;
    end
    else
    begin
      Rectangle(Rect.Left+2,Rect.Top+2,Rect.Left+Offset-2,Rect.Bottom-2);
      if odSelected in State then
      begin
        MoveTo(Rect.Left+2,Rect.Top+2);
        LineTo(Rect.Left+Offset-2,Rect.Bottom-2);
        MoveTo(Rect.Left+Offset-3,Rect.Top+2);
        LineTo(Rect.Left+1,Rect.Bottom-2);
      end;
      Rect.Left:=Rect.Left+Offset+2;
    end;

    TextOut(Rect.Left, Rect.Top, Items[Index])
  end;

end;

procedure TISGCList.WMSetFont(var Message:TWMSetFont);
begin
  inherited;
  ItemHeight:=Abs(Font.Height)+2;
end;

end.
