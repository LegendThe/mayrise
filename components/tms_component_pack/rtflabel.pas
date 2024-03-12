{************************************************************************}
{ TRTFLabel component                                                    }
{ for Delphi & C++Builder                                                }
{                                                                        }
{ written by                                                             }
{  TMS Software                                                          }
{  copyright © 1999-2011                                                 }
{  Email : info@tmssoftware.com                                          }
{  Website : http://www.tmssoftware.com                                  }
{                                                                        }
{ The source code is given as is. The author is not responsible          }
{ for any possible damage done due to the use of this code.              }
{ The component can be freely used in any application. The complete      }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source   }
{ code can be included in any other component or application without     }
{ written authorization of the author.                                   }
{************************************************************************}

unit rtflabel;

{$I TMSDEFS.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  StdCtrls, richedit, comctrls, forms;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 3; // Minor version nr.
  REL_VER = 1; // Release nr.
  BLD_VER = 0; // Build nr.

  // version history
  // v1.0.0.0 : First release
  // v1.3.1.0 : New : Added public method PaintTo()

type
  TRichText = string;

  {$IFDEF DELPHIXE2_LVL}
  [ComponentPlatformsAttribute(pidWin32 or pidWin64)]
  {$ENDIF}
  TRTFLabel = class(TCustomLabel)
  private
    { Private declarations }
    FRichedit: TRichEdit;
    FRichtext: TRichText;
    Fupdatecount: integer;
    FWordWrap: boolean;
    FPainting: boolean;
    procedure RTFPaint(Canvas:TCanvas;ARect:TRect);
    procedure RTFResizeRequest(Sender: TObject; Rect: TRect);
    function GetRichEdit:TRichEdit;
    procedure SetWordWrap(const Value: boolean);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  protected
    { Protected declarations }
    function GetVersionNr: Integer; virtual;
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;  X, Y: Integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override;
    property RTF: TRichEdit read GetRichEdit;
    procedure ShowRTF;
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure CopyFromRichEdit(richedit:TRichEdit);
    procedure CopyToRichEdit(richedit:TRichEdit);
    procedure Print(Caption:string);
    procedure PaintTo(ACanvas: TCanvas);
  published
    { Published declarations }
    property RichText: TRichText read FRichText write FRichText;
    property Align;
    property Color;
    property Transparent;
    property Visible;
    property Hint;
    property ShowHint;
    property FocusControl;
    property ParentShowHint;
    property DragCursor;
    property DragMode;
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property PopupMenu;
    property OnEndDock;
    property OnStartDock;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property WordWrap:boolean read FWordWrap write SetWordWrap;
    property Version: string read GetVersion write SetVersion;
  end;



implementation

procedure TRTFLabel.BeginUpdate;
begin
 inc(fUpdateCount);
end;

procedure TRTFLabel.EndUpdate;
begin
 if fUpdateCount>0 then
   begin
    dec(fUpdateCount);
    if (fUpdateCount=0) then ShowRTF;
   end;
end;

function TRTFLabel.GetRichEdit:TRichEdit;
begin
 if assigned(self.Parent) and assigned(fRichEdit) then
  begin
   fRichEdit.parent:=self.Parent;
   if fRichEdit.parent.handleallocated then
     begin
      fRichEdit.Lines.Clear;
      fRichEdit.Selattributes:=fRichEdit.DefAttributes;
     end;
    result:=fRichEdit;
  end
 else
  result:=nil;
end;

procedure TRTFLabel.ShowRTF;
var
 ms:tmemorystream;
 s:string;
 ch:char;
 i:integer;
begin
 if not assigned(self.Parent) then exit;
 if not assigned(fRichEdit) then exit;
 if not self.parent.handleallocated then exit;

 fRichEdit.parent:=self.Parent;
 ms:=tmemorystream.create;
 fRichEdit.lines.savetostream(ms);
 ms.position:=0;
 s:='';
 if ms.size>0 then
   for i:=0 to ms.size-1 do
    begin
     ms.read(ch,1);
     s:=s+ch;
     end;
 ms.free;
 RichText:=s;
 self.Repaint;
 fRichEdit.parent:=nil;
end;

procedure TRTFLabel.RTFPaint(Canvas:TCanvas; ARect:TRect);
const
  RTF_OFFSET :integer = 1;
type
  rFormatRange = record
    hdcSrc: HDC;
    hdcTarget: HDC;
    rc: TRect;
    rcPage: TRect;
    chrg: TCharRange;
  end;

var
  ms:tmemorystream;
  i:integer;
  s:string;

var
  fr:rFORMATRANGE;
  nLogPixelsX,nLogPixelsY:integer;
begin
  s := RichText;

  ms := TMemoryStream.Create;

  for i := 1 to length(s) do ms.write(s[i],1);
  ms.position := 0;
  FRichedit.Lines.LoadFromStream(ms);
  ms.free;

  FillChar(fr, SizeOf(TFormatRange), 0);

  nLogPixelsX := GetDeviceCaps(Canvas.Handle,LOGPIXELSX);
  nLogPixelsY := GetDeviceCaps(Canvas.Handle,LOGPIXELSY);

  if nLogPixelsX = 0 then
    nLogPixelsX := 96;

  if nLogPixelsY = 0 then
    nLogPixelsY := 96;

  if Transparent then
    Sendmessage(frichedit.handle,EM_SETBKGNDCOLOR,0,colortorgb(Parent.Brush.Color))
  else
    Sendmessage(frichedit.handle,EM_SETBKGNDCOLOR,0,colortorgb(Color));

  with fr do
  begin
    fr.hdcSrc := Canvas.Handle;
    fr.hdctarget := Canvas.Handle;
    fr.rcPage.left:=round(((arect.left+RTF_OFFSET)/nLogPixelsX)*1440);
    fr.rcPage.top:=round(((arect.top+RTF_OFFSET)/nLogPixelsY)*1440);
    fr.rcPage.right:=fr.rcPage.left+round(((arect.right-arect.left-RTF_OFFSET)/nLogPixelsX) * 1440);
    fr.rcPage.bottom:=(fr.rcPage.top+round(((arect.bottom-arect.top-RTF_OFFSET)/nLogPixelsY) * 1440));
    fr.rc.left:=fr.rcPage.left;  { 1440 TWIPS = 1 inch. }
    fr.rc.top:=fr.rcPage.top;
    fr.rc.right:=fr.rcPage.right;
    fr.rc.bottom:=fr.rcPage.bottom;
    fr.chrg.cpMin := 0;
    fr.chrg.cpMax := -1;
  end;

  SendMessage(frichedit.Handle,EM_FORMATRANGE,1,longint(@fr));
  //clear the richtext cache
  SendMessage(frichedit.Handle,EM_FORMATRANGE,0,0);
end;


procedure TRTFLabel.Paint;
var
  r: TRect;
  es: Integer;
begin
  Caption := '';

  inherited Paint;

  if FUpdateCount > 0 then
    Exit;

  if not Assigned(FRichEdit) then
    Exit;

  if FPainting then
    Exit;
    
  FPainting := true;

  FRichEdit.Parent := Parent;
  if not frichedit.Parent.HandleAllocated then
  begin
    FPainting := false;
    Exit;
  end;

  es := GetWindowLong(frichedit.handle,GWL_EXSTYLE);
  es := es OR WS_EX_TRANSPARENT;
  SetWindowLong(frichedit.handle,GWL_EXSTYLE,es);
  frichedit.brush.style := bsClear;
  frichedit.height:=0;

  r.left := 0;
  r.right := r.left + self.width;
  r.top := 0;
  r.bottom := r.top + self.Height;

  SetBkMode(Canvas.handle,1);
  RTFPaint(Canvas,r);
  FRichedit.Parent := nil;

  FPainting := false;
end;

procedure TRTFLabel.PaintTo(ACanvas: TCanvas);
begin
  FRichEdit.Parent := Parent;
  RTFPaint(ACanvas, ClientRect);
  FRichedit.Parent := nil;
end;

constructor TRTFLabel.Create(AOwner: TComponent);
begin
  inherited;
  FRichEdit := TRichEdit.Create(self);
  FRichEdit.OnResizeRequest := RTFResizeRequest;
  AutoSize := false;
  Caption := '';
  FUpdateCount := 0;
end;

destructor TRTFLabel.Destroy;
begin
  FRichEdit.Free;
  FRichEdit := nil;
  inherited;
end;

procedure TRTFLabel.Loaded;
begin
  inherited;
  FRichEdit.Visible := False;
  FRichEdit.Left := 0;
  FRichEdit.Top := 0;
  FRichEdit.Width := 10;
  FRichEdit.Height := 10;
  FRichEdit.WordWrap := False;
  FRichEdit.BorderStyle := bsNone;
  Caption := '';
end;

procedure TRTFLabel.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited MouseDown(Button,Shift,X,Y);
end;

procedure TRTFLabel.CopyFromRichEdit(richedit: TRichEdit);
var
  ms: TMemoryStream;
  s: string;
  i: integer;
  ch: char;
begin
  ms := TMemoryStream.create;
  RichEdit.Lines.SaveToStream(ms);
  ms.position := 0;
  s := '';
  if ms.Size>0 then
    for i := 0 to ms.Size - 1 do
    begin
      ms.Read(ch,1);
      s := s + ch;
    end;
  ms.Free;
  RichText := s;
  Repaint;
end;

procedure TRTFLabel.CopyToRichEdit(richedit: TRichEdit);
var
  ms: TMemoryStream;
  i:integer;
  ch:char;
begin
  ms := TMemoryStream.Create;
  for i := 1 to length(RichText) do
  begin
    ch := richtext[i];
    ms.write(ch,1);
  end;
  ms.position := 0;
  RichEdit.plaintext:=false;
  RichEdit.Lines.LoadFromStream(ms);
  ms.Free;
end;

procedure TRTFLabel.Print(Caption: string);
begin
  if Assigned(Parent) and Assigned(FRichEdit) then
  begin
    FRichEdit.Parent := Parent;
    if FRichEdit.Parent.Handleallocated then
    begin
      Copytorichedit(fRichEdit);
      FRichEdit.print(Caption);
    end;
    FRichEdit.Parent := nil;
  end;
end;


procedure TRTFLabel.RTFResizeRequest(Sender: TObject; Rect: TRect);
begin
// outputdebugstring(pchar(inttostr(rect.left)+':'+inttostr(rect.top)+':'+inttostr(rect.right)+':'+inttostr(rect.bottom)));

// self.BoundsRect:=rect;
end;

procedure TRTFLabel.SetWordWrap(const Value: boolean);
begin
  fWordWrap := Value;
  if assigned(self.Parent) and assigned(fRichEdit) and not (csLoading in ComponentState) then
    fRichEdit.WordWrap:=value;
end;

function TRTFLabel.GetVersion: string;
var
  vn: Integer;
begin
  vn := GetVersionNr;
  Result := IntToStr(Hi(Hiword(vn)))+'.'+IntToStr(Lo(Hiword(vn)))+'.'+IntToStr(Hi(Loword(vn)))+'.'+IntToStr(Lo(Loword(vn)));
end;

function TRTFLabel.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER,REL_VER),MakeWord(MIN_VER,MAJ_VER));
end;

procedure TRTFLabel.SetVersion(const Value: string);
begin

end;

end.
