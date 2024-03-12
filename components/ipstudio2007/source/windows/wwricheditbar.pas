unit wwricheditbar;

{
//
// Components : TwwRichEditBar
//
// Copyright (c) 2007 by Woll2Woll Software
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, StdCtrls, ComCtrls, wwriched, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, ToolWin, ExtCtrls, wwtrackicon, printers,
  RichEdit, wwintl, ActnPopup;

type
  TwwRichEditBarOption=(rebShowLoad, rebShowSaveAs, rebShowPrint, rebShowPrintPreview,
                     rebShowPageSetup,
                     rebShowFormatBar, rebShowToolBar,
                     rebShowHints, rebShowRuler,
                     rebFlatButtons, rebShowSpellCheck,
                     rebShowJustifyButton);
  TwwRichEditBarOptions=Set of TwwRichEditBarOption;

  TwwRichBarFrame = class(TFrame)
    RichEditBar: TPanel;
    FormatBarBevel: TBevel;
    RulerBevel: TBevel;
    FormatBar: TToolBar;
    FontNameCombo: TwwDBComboBox;
    FontSizeCombo: TwwDBComboBox;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ColorButton: TToolButton;
    ToolButton3: TToolButton;
    LeftButton: TToolButton;
    CenterButton: TToolButton;
    RightButton: TToolButton;
    JustifyButton: TToolButton;
    ToolButton1: TToolButton;
    BulletButton: TToolButton;
    HighlightButton: TToolButton;
    Toolbar: TToolBar;
    NewButton: TToolButton;
    LoadButton: TToolButton;
    SaveAsButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    FindButton: TToolButton;
    SpellButton: TToolButton;
    ToolButton7: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton6: TToolButton;
    UndoButton: TToolButton;
    RedoButton: TToolButton;
    ToolButton8: TToolButton;
    RichEditButtonIcons: TImageList;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    Black1: TMenuItem;
    Green1: TMenuItem;
    Red1: TMenuItem;
    Blue1: TMenuItem;
    Yellow1: TMenuItem;
    Purple1: TMenuItem;
    Teal1: TMenuItem;
    Gray1: TMenuItem;
    Silver1: TMenuItem;
    Red2: TMenuItem;
    Lime1: TMenuItem;
    Yellow2: TMenuItem;
    Blue2: TMenuItem;
    Fuchsia1: TMenuItem;
    Aqua1: TMenuItem;
    White1: TMenuItem;
    Automatic1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PrintPreviewButton: TToolButton;
    ToolButton4: TToolButton;
    FormatMenu: TPopupMenu;
    Font1: TMenuItem;
    Paragraph1: TMenuItem;
    abs1: TMenuItem;
    FormatOptionsButton: TToolButton;
    PopupActionBar1: TPopupActionBar;
    Font2: TMenuItem;
    Paragraph2: TMenuItem;
    abs2: TMenuItem;
    InsertObjectButton: TToolButton;
    procedure FontNameComboCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure FontSizeComboCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure FindButtonClick(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure ColorButtonClick(Sender: TObject);
    procedure CenterButtonClick(Sender: TObject);
    procedure BulletButtonClick(Sender: TObject);
    procedure BoldButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BoldButtonClick(Sender: TObject);
    procedure LeftButtonClick(Sender: TObject);
    procedure RightButtonClick(Sender: TObject);
    procedure JustifyButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure RedoButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure SpellButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure SaveAsButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure NewButtonClick(Sender: TObject);
    procedure HighlightButtonClick(Sender: TObject);
    procedure PrintPreviewButtonClick(Sender: TObject);
    procedure RichEditBarEnter(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Paragraph1Click(Sender: TObject);
    procedure abs1Click(Sender: TObject);
    procedure InsertObjectButtonClick(Sender: TObject);
  private
    { Private declarations }
    FCanvas: TCanvas;
    tempDown: boolean;
    RichEdit1: TwwDBRichEdit;

    procedure InitColorMenu;
    procedure ColorClick(Sender: TObject);
    Procedure SetRichEditFontName(Value: string);  { Bypass VCL bug as it doesn't set the CharSet}
  public
    wwRulerPanel : TwwRulerPanel;
    procedure ResizeBar; virtual;
    destructor Destroy; override;
    procedure RefreshControls;
    procedure Initialize;
  end;

TwwRichEditBar = class (TPanel)
 private
    FCanvas: TCanvas;
    RichEdit1: TwwDBRichEdit;
    FOptions: TwwRichEditBarOptions;

    procedure WMMeasureItem(var Message: TWMMeasureItem); message WM_MEASUREITEM;
    procedure WMDrawItem(var Message: TWMDrawItem); message WM_DRAWITEM;
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;
    function GetRichEdit: TwwDBRichEdit;
//    procedure SetRichEdit(value: TwwDBRichEdit);
    procedure SetOptions(val: TwwRichEditBarOptions);

//    function GetToolBar: TToolBar;
    procedure CreateComponent(Reader: TReader;
                ComponentClass: TComponentClass; var Component: TComponent);
    procedure RichEditSelectionChange(Sender: TObject);
 protected
//    procedure WriteComponents(Writer: TWriter); override;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure ReadState(Reader: TReader); override;
    procedure SetParent(AParent: TWinControl); override;
    procedure Loaded; override;
    procedure RichEditBarFrameNeeded;
    procedure ApplyIntl; virtual;

 public
    RichEditBarFrame: TwwRichBarFrame;

    constructor Create(AOwner: TComponent); override;
    procedure CreateWnd; override;
    destructor Destroy; override;
    procedure Resize; override;
    procedure UpdateControlPositions;

//    property ToolBar: TToolBar read GetToolBar;

  published
    property RichEdit: TwwDBRichEdit read GetRichEdit;// stored false;// write SetRichEdit;
    property Options: TwwRichEditBarOptions read FOptions write SetOptions default
             [rebShowLoad, rebShowSaveAs, rebShowPrint, rebShowPrintPreview,
                     rebShowPageSetup,
                     rebShowFormatBar, rebShowToolBar,
                     rebShowHints, rebShowRuler,
                     rebFlatButtons, rebShowJustifyButton];

end;



implementation


{$R *.dfm}
const ColorBoxWidth = 40;

function TwwRichEditBar.GetRichEdit: TwwDBRichEdit;
begin
   result:= RichEdit1;
end;

//function TwwRichEditBar.GetToolBar: TToolBar;
//begin
//   result:= RichEditBarFrame.Toolbar;
//end;

procedure TwwRichEditBar.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
   inherited;
   if RichEdit<>nil then begin
      Proc(RichEdit);
   end;
end;


{procedure TwwRichEditBar.SetRichEdit(value: TwwDBRichEdit);
begin
 //  RichEditBarFrame.RichEdit1:= value;
end;
}

procedure TwwRichEditBar.SetParent(AParent: TWinControl);
begin
//  if csLoading in ComponentState then
//     exit;
  inherited SetParent(AParent);

end;

procedure TwwRichEditBar.Loaded;
begin
  inherited Loaded;
  if csDesigning in ComponentState then exit;

  RichEditBarFrameNeeded;
//  RichEditBarFrame.ResizeBar;
  UpdateControlPositions;
  RichEdit1.Visible:=true;
  RichEditBarFrame.RefreshControls;

  if RichEdit1.EffectiveEditWidth = rewPrinterSize then // editwidth streamed in after createwnd
  begin
     RichEditBarFrame.wwRulerPanel.UpdateSize(RichEdit1);
     RichEditBarFrame.wwRulerPanel.UpdateDragIcons;
     RichEditBarFrame.wwRulerPanel.UpdateRulerProp(RichEditBarFrame.wwRulerPanel.RightDragButton);
  end;

end;


    {
procedure TRichBarFrame.CreateWnd;
begin
   inherited CreateWnd;
   Initialize;
end;
}

procedure TwwRichEditBar.ReadState(Reader: TReader);
begin
  Classes.RegisterClass(TwwDBRichEdit); // necessary or TwwDBRichEdit class not recognized
  Reader.OnCreateComponent := CreateComponent;
  inherited;
  Reader.OnCreateComponent := Nil;
end;

procedure TwwRichEditBar.CreateComponent(Reader: TReader;
  ComponentClass: TComponentClass; var Component: TComponent);
begin
  // Do not create new instances of the subcomponents
  // but use the ones created by the constructor.
  if (ComponentClass = TwwDBRichEdit) then
  begin
    Component := RichEdit1;
  end;
end;


constructor TwwRichEditBar.Create(AOwner: TComponent);
begin
   RichEditBarFrame:=nil;
   inherited Create(AOwner);
   FCanvas:= TCanvas.create;

   RichEdit1 := TwwDBRichEdit.Create(Self);
   RichEdit1.HideScrollBars:=false;
   RichEdit1.HideSelection:= false;
   Richedit1.ScrollBars:= ssVertical;
//   RichEdit1.Parent := Self;
   RichEdit1.SetSubComponent(True);
   RichEdit1.Name:= 'RichEdit';
   RichEdit1.ParentFont:= false;

   FOptions:=
             [rebShowLoad, rebShowSaveAs, rebShowPrint, rebShowPrintPreview,
                     rebShowPageSetup,
                     rebShowFormatBar, rebShowToolBar,
                     rebShowHints, rebShowRuler,
                     rebFlatButtons, rebShowJustifyButton];

   if csDesigning in ComponentState then
      ControlStyle:= ControlStyle - [csAcceptsControls];  // Don't allow controls to be dropped in at design time



end;

destructor TwwRichEditBar.Destroy;
begin
   if RichEditBarFrame<>nil then
   begin
     RichEditBarFrame.Free;
     RichEditBarFrame:=nil;
   end;

   inherited Destroy;
   FCanvas.Free;

end;

destructor TwwRichBarFrame.Destroy;
begin
   inherited Destroy;

   FCanvas.Free;
//   RichEdit.Free;
end;

procedure TwwRichEditBar.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
//      if (RichEdit=AComponent) then
//         SetRichEdit(nil);
  end;
end;


procedure TwwRichBarFrame.ResizeBar;
//var
//    frameoffset: integer;
//    RichEditTop, RichEditHeight, RulerPanelTop: integer;
begin

   // Vista support
   //frameOffset:=GetSystemMetrics(sm_cxframe) * 2;
   //wwRulerPanel.Top:= FormatBar.Top + FormatBar.height;

   if (richedit1.EffectiveEditWidth <> rewPrinterSize) then
   begin
      wwRulerPanel.Width:=  RichEditBar.Width;// - frameOffset;
      TwwRulerPanel(wwRulerPanel).RulerRect:= Rect(6, 4, wwRulerPanel.Width-6, wwRulerPanel.Height-4);
   end;
   TwwRulerPanel(wwRulerPanel).RightDragButton.MaxValue:=
      TwwRulerPanel(wwRulerPanel).RulerRect.Right-(TwwRulerPanel(wwRulerPanel).RightDragButton.Width div 2);
   TwwRulerPanel(wwRulerPanel).UpdateDragIcons;

   RichEdit1.top:= wwRulerpanel.Top + wwRulerPanel.Height + 2;
   RichEdit1.Height:= RichEditBar.Height - RichEdit1.Top - 2;
   RichEdit1.Left:= 4;
   RichEdit1.Width:= RichEditBar.Width - 8;



//! Refer to options here
end;

procedure TwwRichEditBar.ApplyIntl;
begin
    with wwInternational.RichEdit, RichEditBarFrame do begin

       if (reoShowHints in richedit1.EditorOptions) then begin
          FontNameCombo.ShowHint := True;
          FontSizeCombo.ShowHint := True;
          NewButton.ShowHint := True;
          LoadButton.ShowHint := True;
          SaveAsButton.ShowHint := True;
          PrintButton.ShowHint := True;
          PrintPreviewButton.ShowHint := True;          
          FindButton.ShowHint := True;
          CutButton.ShowHint := True;
          CopyButton.ShowHint := True;
          UndoButton.ShowHint := True;
          RedoButton.ShowHint := True;
          PasteButton.ShowHint := True;
          BoldButton.ShowHint := True;
          UnderlineButton.ShowHint := True;
          ColorButton.ShowHint := True;
          ItalicButton.ShowHint := True;
          LeftButton.ShowHint := True;
          CenterButton.ShowHint := True;
          RightButton.ShowHint := True;
          JustifyButton.ShowHint := True;
          BulletButton.ShowHint := True;
          HighlightButton.ShowHint:= True;
          SpellButton.ShowHint:= True;
          InsertObjectButton.ShowHint:= True;
          FormatOptionsButton.ShowHint:= true;

         {Change Hints}
         FontNameCombo.Hint := FontNameComboHint;
         FontSizeCombo.Hint := FontSizeComboHint;

        {Buttons}
        NewButton.Hint := NewButtonHint;
        LoadButton.Hint := LoadButtonHint;
        SaveAsButton.Hint := SaveAsButtonHint;
        PrintButton.Hint := PrintButtonHint;
        PrintPreviewButton.Hint := PrintPreviewButtonHint;
        FindButton.Hint := FindButtonHint;
        CutButton.Hint := CutButtonHint;
        CopyButton.Hint := CopyButtonHint;
        UndoButton.Hint := UndoButtonHint;
        SpellButton.Hint := SpellCheckHint;
        FormatOptionsButton.Hint:= FormatCaptionHint;

       RedoButton.Hint := RedoButtonHint;
       if RedoButton.Hint='' then RedoButton.Hint:= 'Redo | Reverses the last undo action';

       PasteButton.Hint := PasteButtonHint;
       BoldButton.Hint := BoldButtonHint;
       ColorButton.Hint := ColorButtonHint;
       InsertObjectButton.Hint:= InsertObjectHint;

       UnderlineButton.Hint := UnderlineButtonHint;
       ItalicButton.Hint := ItalicButtonHint;
       LeftButton.Hint := LeftButtonHint;
       CenterButton.Hint := CenterButtonHint;
       JustifyButton.Hint := JustifyButtonHint;
       RightButton.Hint := RightButtonHint;
       BulletButton.Hint := BulletButtonHint;
       HighlightButton.Hint:= HighlightButtonHint;

       //File Menu Items
{       Load1.Hint:= LoadButton1.Hint;
       SaveAs1.Hint:= SaveAsButton.Hint;
       SaveExit1.Hint := SaveExitHint;
       Print1.Hint := PrintButton.Hint;
       PrintPreview1.Hint := PrintPreviewButton.Hint;
       PageSetup1.Hint:=PageSetupHint;
       Exit1.Hint:= ExitHint;

       //Edit Menu Items
       Undo1.Hint:= UndoButton.Hint;
       Cut1.Hint:= CutButton.Hint;
       Copy1.Hint:= CopyButton.Hint;
       Paste1.Hint:= PasteButton.Hint;
       Find1.Hint:=FindButton.Hint;
       Clear1.Hint:= ClearHint;
       SelectAll1.Hint:= SelectAllHint;
       FindNext1.Hint:= FindNextHint;
       Replace1.Hint:=ReplaceHint;
       InsertObject1.Hint:=InsertObjectHint;
       Spelling1.Hint:= SpellCheckHint;
}
       {View Menu Items}
       Toolbar.Hint:= ToolbarHint;
       FormatBar.Hint:= FormatBarHint;
//       Options1.Hint:=OptionsHint;

       //Format Menu Items
       {
       Font1.Hint:=FontHint;
       BulletStyle1.Hint:= BulletButton.Hint;
       Paragraph1.Hint:= ParagraphHint;
       Tabs1.Hint:=TabsHint;
       }
    end;

    // Change Menu Item Labels
    {
    File1.Caption := MenuLabels.FileCaption;
    Load1.Caption := MenuLabels.LoadCaption;
    SaveAs1.Caption := MenuLabels.SaveAsCaption;
    SaveExit1.Caption := MenuLabels.SaveExitCaption;
    Print1.Caption := MenuLabels.PrintCaption;
    PrintPreview1.Caption := MenuLabels.PrintPreviewCaption;
    PageSetup1.Caption := MenuLabels.PageSetupCaption;
    Exit1.Caption := MenuLabels.ExitCaption;

    Edit1.Caption := MenuLabels.EditCaption;
    Undo1.Caption := MenuLabels.UndoCaption;
    Cut1.Caption := MenuLabels.CutCaption;
    Copy1.Caption := MenuLabels.CopyCaption;
    Paste1.Caption := MenuLabels.PasteCaption;
    Clear1.Caption := MenuLabels.ClearCaption;
    Selectall1.Caption := MenuLabels.SelectallCaption;
    Find1.Caption:= MenuLabels.FindCaption;
    FindNext1.Caption:=MenuLabels.FindNextCaption;
    Replace1.Caption:=MenuLabels.ReplaceCaption;
    InsertObject1.Caption:=MenuLabels.InsertObjectCaption;

    Insert1.Caption:= MenuLabels.InsertCaption;
    if Insert1.Caption='' then Insert1.caption:= '&Insert';
    Ruler1.Caption:= MenuLabels.RulerCaption;
    if Ruler1.Caption='' then Ruler1.caption:= '&Ruler';
    Redo1.Caption:= MenuLabels.RedoCaption;
    if Redo1.Caption='' then Redo1.caption:= '&Redo';


    View1.Caption := MenuLabels.ViewCaption;
    Tools1.Caption := MenuLabels.ToolCaption;
    Spelling1.Caption := MenuLabels.SpellCheckCaption;
    Toolbar1.Caption:= MenuLabels.ToolbarCaption;
    FormatBar1.Caption:=MenuLabels.FormatBarCaption;
    StatusBar1.Caption:=MenuLabels.ViewStatusBarCaption;
    Options1.Caption:=MenuLabels.OptionsCaption;

    Format1.Caption:=MenuLabels.FormatCaption;
    Font1.Caption:=MenuLabels.FontCaption;
    BulletStyle1.Caption:=MenuLabels.BulletStyleCaption;
    Paragraph1.Caption:=MenuLabels.ParagraphCaption;
    Tabs1.Caption := MenuLabels.TabsCaption;

    Help1.Caption := MenuLabels.HelpCaption;
    }
    end;
end;


procedure TwwRichEditBar.UpdateControlPositions;
var CurrentTop: integer;
    ShowInsertObject: boolean;
begin
   RichEditBarFrame.ResizeBar;
   CurrentTop:= 0;

   with RichEditBarFrame do begin
      LoadButton.Visible:= rebShowLoad in Options;
      SaveAsbutton.visible:= rebShowSaveAs in Options;
      Printbutton.visible:= rebshowPrint in Options;
      PrintPreviewButton.Visible:= rebShowPrintPreview in Options;
      JustifyButton.visible:= rebShowJustifyButton in Options;
      SpellButton.visible:= rebShowSpellCheck in Options;      
      ApplyIntl;

      ShowInsertObject:= (rpoPopupInsertObject in RichEdit1.PopupOptions) and
                          not (reoDisableOLE in RichEdit1.OLEOPtions);
      InsertObjectButton.visible:= ShowInsertObject;

      if (rebShowToolbar in Options) then
      begin
         if csDesigning in ComponentState then
         begin
            ToolBar.ControlStyle:= Toolbar.Controlstyle - [csNoDesignVisible];
         end;
         ToolBar.Width:= ToolBar.Parent.Width;
         ToolBar.Visible:=true;

         CurrentTop:= ToolBar.Top + ToolBar.height + 2;
         if (rebShowFormatBar in Options) then
         begin
            FormatbarBevel.visible:=true;
            FormatBarBevel.Top:= CurrentTop - 2;
         end;

      end
      else begin
         if csDesigning in ComponentState then
         begin
            ToolBar.ControlStyle:= Toolbar.Controlstyle + [csNoDesignVisible];
         end;
         ToolBar.Visible:=false;
         FormatBarBevel.Visible:=false;
      end;

      if (rebShowFormatBar in Options) then
      begin
         Formatbar.Top:= CurrentTop+1;
         FormatBar.Width:= FormatBar.Parent.Width;         
         FormatBar.Visible:=true;
         CurrentTop:= FormatBar.Top + FormatBar.height + 2;
         if (rebShowRuler in Options) then
         begin
            RulerBevel.visible:= true;
            RulerBevel.Top:= CurrentTop;
         end;
//         RulerBevel.Top:= CurrentTop;
      end
      else begin
         FormatBar.Visible:= false;
//         RulerBevel.Top:= CurrentTop;
         RulerBevel.Visible:= false;
      end;

      if (rebShowRuler in Options) then
      begin
//         RulerBevel.visible:=true;
//         RulerBevel.Top:= CurrentTop + 1;
         wwRulerPanel.Top:= CurrentTop+1;
         CurrentTop:= wwRulerPanel.Top + wwRulerPanel.height +1;
      end
      else begin
         RulerBevel.visible:=false;
      end;
      RichEdit.Top:= CurrentTop;
   end;



{
   if not (rebShowToolbar in Options) then
   begin
      Currenttop:=
      if (rebShowFormatbar in Options) then
      begin
         RichEditbarFrame.ToolBar.Visible:= false;
         RichEditbarFrame.FormatBar.Visible:=true;
         RichEditbarFrame.FormatBarBevel.Visible:=false;
         RichEditBarFrame.RulerBevel.visible:=true;
         RichEditbarFrame.FormatBar.Top:=4;
         RichEditbarFrame.RulerBevel.Top:= RichEditBarFrame.FormatBar.Top + 23;
         RichEditBarFrame.wwRulerPanel.Top:= RichEditBarFrame.FormatBar.Top + RichEditBarFrame.FormatBar.height;
      end
      else begin
         RichEditbarFrame.FormatBar.Visible:= false;
         RichEditbarFrame.ToolBar.Visible:= false;
         RichEditbarFrame.FormatBarBevel.Visible:=false;
         RichEditBarFrame.RulerBevel.visible:=false;
         RichEditBarFrame.wwRulerPanel.Top:= 0;
      end;
   end
   else begin
      if (rebShowFormatbar in Options) then
      begin
         CurrentTop:= FormatBar.Top + FormatBar.Height + 2;
      end
      else begin
         RichEditbarFrame.ToolBar.Visible:= true;
         RichEditbarFrame.FormatBarBevel.Visible:=true;
         RichEditbarFrame.FormatBar.Top:=30;
         RichEditbarFrame.RulerBevel.Top:= RichEditBarFrame.FormatBar.Top + 23;
         RichEditBarFrame.wwRulerPanel.Top:= RichEditBarFrame.FormatBar.Top + RichEditBarFrame.FormatBar.height;
         CurrentTop:= RichEditBarFrame.ToolBar.Top + RichEditBarFrame.ToolBar.Height + 2;
      end;
   end;

   RichEdit.Top:= CurrentTop;
 }
end;

procedure TwwRichEditBar.RichEditSelectionChange(Sender: TObject);
begin
  if richedit1.visible then
     self.RichEditBarFrame.RefreshControls;
end;

procedure TwwRichBarFrame.RichEditBarEnter(Sender: TObject);
begin
//  richedit1.setfocus;
end;

procedure TwwRichBarFrame.RightButtonClick(Sender: TObject);
begin
  richedit1.Paragraph.Alignment:= taRightJustify;
  RefreshControls;
end;

procedure TwwRichBarFrame.RedoButtonClick(Sender: TObject);
begin
    SendMessage(RichEdit1.Handle, EM_REDO, 0, 0);
    RefreshControls;

end;

Procedure TwwRichBarFrame.RefreshControls;
var haveSelection: boolean;
//    haveText: boolean;
begin
  RichEdit1.HandleNeeded;
  BoldButton.down:= fsBold in richedit1.SelAttributes.Style;
  UnderlineButton.down:= fsUnderline in richedit1.SelAttributes.Style;
  ItalicButton.down:= fsItalic in richedit1.SelAttributes.Style;
  FontNameCombo.itemIndex:= FontNameCombo.items.indexOf(RichEdit1.SelAttributes.Name);
  if FontNameCombo.itemIndex<0 then begin
     FontNameCombo.text:= RichEdit1.SelAttributes.Name;
     FontNameCombo.font.color:=clRed;
  end
  else FontNameCombo.font.color:=clWindowText;
  FontSizeCombo.itemIndex:= FontSizeCombo.items.indexOf(inttostr(RichEdit1.SelAttributes.Size));
  //9/5/2001- If no font size in dropdown still set text to current size. Just like wordpad.
  if FontSizeCombo.itemindex = -1 then
     FontSizeCombo.Text :=inttostr(RichEdit1.SelAttributes.Size);

  BulletButton.down:= richedit1.Paragraph.Numbering = nsBullet;

  //10/02/2001 - More accurate way of determining if background color is highlighted.
  HighlightButton.Down:= (ColorToRGB(richedit1.GetTextBackgroundColor)=ColorToRGB(RichEdit1.HighlightColor));
//  HighlightButton.Down:= (richedit1.GetTextBackgroundColor<>0) and
//                         (richedit1.GetTextBackgroundColor<>ColorToRGB(clWindow));

//  BulletStyle1.checked:= BulletButton.down;
  if ord(richedit1.Paragraph.Alignment) = PFA_FULLJUSTIFY-1 then
     JustifyButton.Down:= True
  else begin
    case richedit1.Paragraph.Alignment of
      taLeftJustify: LeftButton.Down:= True;
      taCenter: CenterButton.Down:= True;
      taRightJustify: RightButton.Down:= True;
    end;
  end;


    PasteButton.enabled:= RichEdit1.CanPaste and (not RichEdit1.readonly);

    UndoButton.enabled:= RichEdit1.CanUndo;
    RedoButton.enabled:= RichEdit1.CanRedo;

    haveSelection:= RichEdit1.CanCut;
//    haveText:= RichEdit1.text<>''; { This line was very slow for larger buffers }
{    haveText:= (RichEdit1.Lines.Count>1) or
               (RichEdit1.Lines.Count=1) and (RichEdit1.Lines[0]<>'');
}
    CutButton.enabled:= haveSelection and (not RichEdit1.readonly);

    CopyButton.enabled:= haveSelection;
    {
    Clear1.enabled:= haveSelection and (not RichEdit1.readOnly);
    SelectAll1.enabled:= haveText;
    Find1.enabled:= haveText;
    FindButton.enabled:= haveText;
    FindNext1.enabled:= RichEdit1.CanFindNext;
    Replace1.enabled:= haveText and (not RichEdit1.readOnly);
     }
    TwwRulerPanel(wwRulerPanel).UpdateDragIcons;

end;



procedure TwwRichBarFrame.ColorClick(Sender: TObject);
begin
   RichEdit1.SelAttributes.Color:= (Sender as TMenuItem).Tag;
end;

procedure TwwRichBarFrame.InitColorMenu;
var i: Integer;
  procedure SetOwnerDraw(Item: TMenuItem);
  type TwwMenuItemInfo = packed record
    cbSize: UINT;
    fMask: UINT;
    fType: UINT;             { used if MIIM_TYPE}
    fState: UINT;            { used if MIIM_STATE}
    wID: UINT;               { used if MIIM_ID}
    hSubMenu: HMENU;         { used if MIIM_SUBMENU}
    hbmpChecked: HBITMAP;    { used if MIIM_CHECKMARKS}
    hbmpUnchecked: HBITMAP;  { used if MIIM_CHECKMARKS}
    dwItemData: DWORD;       { used if MIIM_DATA}
    dwTypeData: PAnsiChar;      { used if MIIM_TYPE}
    cch: UINT;               { used if MIIM_TYPE}
  end;
  var mii: TMenuItemInfo;
  begin
    FillChar(mii, SizeOf(TMenuItemInfo), 0);
    mii.cbSize := SizeOf(TwwMenuItemInfo);
    mii.fMask := MIIM_TYPE or MIIM_DATA;
    mii.fType := MFT_OWNERDRAW;
    mii.dwItemData := Integer(Item);
    SetMenuItemInfo(Item.Parent.Handle, Item.MenuIndex, True, mii);
  end;
begin
  for i := 0 to PopupMenu1.Items.Count - 1 do
  begin
    SetOwnerDraw(PopupMenu1.Items[i]);
    PopupMenu1.Items[i].OnClick:= ColorClick;
  end;
  Automatic1.Tag:= RichEdit1.Font.Color; { Use richedit's font color }
end;

procedure TwwRichBarFrame.abs1Click(Sender: TObject);
begin
   richEdit1.ExecuteTabDialog;
end;

procedure TwwRichBarFrame.BoldButtonClick(Sender: TObject);
begin
  RichEdit1.SetStyleAttribute(fsBold, not TempDown);
  RefreshControls;
end;

procedure TwwRichBarFrame.BoldButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   tempdown:= (Sender as TToolButton).down;
end;

procedure TwwRichBarFrame.BulletButtonClick(Sender: TObject);
begin
  RichEdit1.SetBullet(not TempDown);
  RefreshControls;
end;

procedure TwwRichBarFrame.CenterButtonClick(Sender: TObject);
begin
  richedit1.Paragraph.Alignment:= taCenter;
  RefreshControls;
end;

procedure TwwRichBarFrame.ColorButtonClick(Sender: TObject);
var p: TPoint;
begin
  p:= FormatBar.ClientToScreen(Point(ColorButton.left, ColorButton.Top + ColorButton.Height));

  TrackPopupMenu(PopupMenu1.Handle, TPM_LEFTALIGN,
     p.x-1, p.y, 0, RichEditBar.Parent.handle, nil);
//     p.x-1, p.y, 0, handle, nil);
end;

procedure TwwRichBarFrame.CopyButtonClick(Sender: TObject);
begin
   Richedit1.CopyToClipboard;
end;

procedure TwwRichBarFrame.CutButtonClick(Sender: TObject);
begin
   Richedit1.CutToClipboard;
end;

procedure TwwRichBarFrame.FindButtonClick(Sender: TObject);
begin
   richedit1.ExecuteFindDialog;
end;

procedure TwwRichBarFrame.Font1Click(Sender: TObject);
begin
   richEdit1.ExecuteFontDialog;
end;

procedure TwwRichBarFrame.FontNameComboCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
  if not Select then exit;
  SetRichEditFontName(FontNameCombo.Text);
  RichEdit1.SetFocus;
  RefreshControls;
end;

procedure TwwRichBarFrame.FontSizeComboCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
   if not Select then exit;
   if FontSizeCombo.text='' then exit;
   RichEdit1.SelAttributes.Size:= StrToInt(FontSizeCombo.Text);
   RichEdit1.SetFocus;
   RefreshControls;
end;

procedure TwwRichBarFrame.HighlightButtonClick(Sender: TObject);
begin
  with (Sender as TToolButton) do begin
     if not Down then RichEdit1.SetTextBackgroundColor(-1)
     else RichEdit1.SetTextBackgroundColor(RichEdit1.HighlightColor);
  end;
  RefreshControls;

end;

procedure TwwRichBarFrame.Initialize;
var dragButton: TwwTrackIcon;
    i: integer;
    PixelsPerInch: integer;
begin

      wwRulerPanel:= TwwRulerPanel.create(self);

      with wwRulerPanel do begin
         RichEdit:= richedit1;
         ParentColor:=true;
         Parent:=RichEditBar;
         Top:= FormatBar.Top + FormatBar.Height + 10;
         PixelsPerInch:= Screen.PixelsPerInch;

//         PixelsPerInch:= GetDeviceCaps(DC, LOGPIXELSY);

         if PixelsPerInch>96 then Height:= 27
         else Height:= 25;

         //         align:= alTop;
         BevelOuter:= bvNone;
         wwRulerPanel.RulerRect:= Rect(6, 4, wwRulerPanel.Width-6, wwRulerPanel.Height-4); //RulerHeight);
      end;


      if RichEdit1.EffectiveEditWidth = rewPrinterSize then wwRulerPanel.UpdateSize(RichEdit1)
      else wwRulerPanel.Width:=  Width;

      wwRulerPanel.RulerRect:= Rect(6, 4, wwRulerPanel.Width-6,wwRulerPanel.Height-4); //RulerHeight);


      dragButton:= TwwTrackIcon.create(self);
      dragButton.parent:= wwRulerPanel;
      dragButton.BitmapName:= 'wwRulerUp';
      dragButton.MinValue:= wwRulerPanel.RulerRect.Left -
        ((dragButton.Width) div 2);
      dragButton.MaxValue:= wwRulerPanel.RulerRect.Right-(dragButton.Width div 2);
      dragButton.Left:= dragButton.MinValue;
      dragButton.Top:= wwRulerPanel.RulerRect.Bottom - dragButton.Height + 4;
      dragButton.OnEndDrag:= wwRulerPanel.UpdateRulerProp;
      wwRulerPanel.LeftDragButton:= dragButton;

      dragButton:= TwwTrackIcon.create(self);
      dragButton.parent:= wwRulerPanel;
      dragButton.BitmapName:= 'wwRulerUp';
      dragButton.MinValue:= wwRulerPanel.RulerRect.Left -
        ((dragButton.Width) div 2);
      dragButton.MaxValue:= wwRulerPanel.RulerRect.Right-(dragButton.Width div 2);
      dragButton.Left:= dragButton.MaxValue;
      dragButton.Top:= wwRulerPanel.RulerRect.Bottom - dragButton.Height + 4;
      dragButton.OnEndDrag:= wwRulerPanel.UpdateRulerProp;
      wwRulerPanel.RightDragButton:= dragButton;

      dragButton:= TwwTrackIcon.create(self);
      dragButton.parent:= wwRulerPanel;
      dragButton.BitmapName:= 'wwRulerDown';
      dragButton.MinValue:= wwRulerPanel.RulerRect.Left -
        ((dragButton.Width) div 2);
      dragButton.MaxValue:= wwRulerPanel.RulerRect.Right-(dragButton.Width div 2);
      dragButton.Left:= dragButton.MinValue+10;
      dragButton.Top:= wwRulerPanel.RulerRect.Top -2;
      dragButton.OnEndDrag:= wwRulerPanel.UpdateRulerProp;
      wwRulerPanel.FirstLineDragButton:= dragButton;

      wwRulerPanel.Align:= alNone;

      for i:= 0 to Screen.Fonts.Count-1 do begin
         if (RichEdit1.EffectiveEditWidth=rewWindowSize) or
           (Printer.Fonts.indexOf(Screen.Fonts[i])>=0) then
            FontNameCombo.Items.Add(Screen.Fonts[i]);
      end;


      RefreshControls;

     InitColorMenu;
    FCanvas := TCanvas.Create;
end;

procedure TwwRichBarFrame.InsertObjectButtonClick(Sender: TObject);
begin
  RichEdit1.InsertObjectDialog;
end;

procedure TwwRichBarFrame.ItalicButtonClick(Sender: TObject);
begin
  RichEdit1.SetStyleAttribute(fsItalic, not TempDown);
  RefreshControls;
end;

procedure TwwRichBarFrame.JustifyButtonClick(Sender: TObject);
begin
   richedit1.SetParaFormat([rpoAlignment],
      wwInternational.RichEdit.ParagraphDialog.AlignJustify,
      False, 0, 0, 0, 0, nil, 0, 0, 0, 0);
   RefreshControls;
end;

procedure TwwRichBarFrame.LeftButtonClick(Sender: TObject);
begin
  richedit1.Paragraph.Alignment:= taLeftJustify;
  RefreshControls;

end;

procedure TwwRichBarFrame.LoadButtonClick(Sender: TObject);
begin

  if OpenDialog1.Execute then
  begin
    RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    RichEdit1.SetFocus;
  end;


end;

procedure TwwRichBarFrame.NewButtonClick(Sender: TObject);
begin
   if MessageDlg(wwInternational.UserMessages.RichEditClearWarning,
                 mtConfirmation, [mbOK, mbCancel], 0)  <> mrOK then exit;
   richedit1.clear;
   richedit1.modified:= True;
end;

procedure TwwRichBarFrame.Paragraph1Click(Sender: TObject);
begin
   richEdit1.ExecuteParagraphDialog;
end;

procedure TwwRichBarFrame.PasteButtonClick(Sender: TObject);
begin
   Richedit1.PasteFromClipboard;
end;

procedure TwwRichBarFrame.PrintButtonClick(Sender: TObject);
begin
   printdialog1.collate:= True;
   if printdialog1.execute then
   begin
         richedit1.Print(RichEdit1.PrintJobName);
   end

end;

procedure TwwRichBarFrame.SaveAsButtonClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if FileExists(SaveDialog1.FileName) then
      if MessageDlg(Format('OK to overwrite %s', [SaveDialog1.FileName]),
        mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
    if savedialog1.filterindex=2 then { 6/8/00 - Save as plain text }
    begin
      RichEdit1.plaintext:=true;
      RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
      RichEdit1.plaintext:=false;
    end
    else
      RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
  end;

end;

Procedure TwwRichBarFrame.SetRichEditFontName(Value: string);
var Format: TCharFormat;
begin
  if RichEdit1.selAttributes.Name=Value then exit;
  FillChar(Format, SizeOf(TCharFormat), 0);
  Format.cbSize := SizeOf(TCharFormat);
  with Format do
  begin
    dwMask:= CFM_FACE OR CFM_CHARSET;
    StrPLCopy(szFaceName, Value, SizeOf(szFaceName));
    bCharSet := RichEdit1.GetCharSetOfFontName(Value);
  end;
  SendMessage(RichEdit1.Handle, EM_SETCHARFORMAT, SCF_SELECTION, LPARAM(@Format));
end;

procedure TwwRichBarFrame.SpellButtonClick(Sender: TObject);
begin
   richedit1.MSWordSpellChecker;
end;

procedure TwwRichBarFrame.PrintPreviewButtonClick(Sender: TObject);
begin
  RichEdit1.PrintPreview;
end;

procedure TwwRichBarFrame.UnderlineButtonClick(Sender: TObject);
begin
  RichEdit1.SetStyleAttribute(fsUnderline, not TempDown);
  RefreshControls;

end;

procedure TwwRichBarFrame.UndoButtonClick(Sender: TObject);
begin
    SendMessage(RichEdit1.Handle, EM_UNDO, 0, 0);
    RefreshControls;

end;



function DrawText(Canvas: TCanvas;
   AText: string; ARect: TRect; Style: Integer): TRect;
const
  DT_DISABLED = $80000;
begin
  with Canvas do begin
  // Used by DrawText API Function when "Item" has focus.
  SetBkColor(Handle, ColorToRGB(Brush.Color));
  SetTextColor(Handle, ColorToRGB(Font.Color));

  Refresh;
  if (Style and DT_DISABLED <> 0) and (Style and DT_CALCRECT = 0) then
  begin
    Font.Color := clBtnHighlight;
    OffSetRect(ARect, 1, 1);
    Windows.DrawText(Handle, PChar(AText), Length(AText), ARect, Style);
    SetBkMode(Handle, TRANSPARENT);
    OffSetRect(ARect, -1, -1);
    Font.Color := clBtnShadow;
  end;
  Windows.DrawTextEx(Handle, PChar(AText), Length(AText), ARect, Style, nil);
  result := ARect;
  end;
end;


procedure TwwRichEditBar.WMCommand(var Message: TWMCommand);
var item: TMenuItem;
begin
   inherited;
   if (Message.NotifyCode = 0) and (RichEditBarFrame.PopupMenu1<>nil) then
   begin
      item:= RichEditBarFrame.PopupMenu1.FindItem(Message.itemID, fkCommand);
      if item<>nil then Item.Click;
   end
end;

procedure TwwRichEditBar.WMMeasureItem(var Message: TWMMeasureItem);
var Item: TMenuItem;
  function GetMenuFont: HFONT;
  var
    NonClientMetrics: TNonClientMetrics;
  begin
    NonClientMetrics.cbSize := sizeof(NonClientMetrics);
    if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0) then
      Result := CreateFontIndirect(NonClientMetrics.lfMenuFont)
    else
      Result := GetStockObject(SYSTEM_FONT);
  end;
const
  VertPadding = 2;
  HorzPadding = 5;
begin
  inherited;
  if Message.MeasureItemStruct^.CtlType <> ODT_MENU then Exit;
  with Message.MeasureItemStruct^ do
  begin
    Item := TMenuItem(itemData);
    FCanvas.Handle := GetDC(0);
    FCanvas.Font.Handle := GetMenuFont;
    itemHeight := FCanvas.TextHeight(Item.Caption) + VertPadding;
    itemWidth := FCanvas.TextWidth(Item.Caption) + HorzPadding + ColorBoxWidth;
    FCanvas.Font.Handle := 0;
    ReleaseDC(0, FCanvas.Handle);
    FCanvas.Handle := 0;
  end;
end;

procedure TwwRichEditBar.WMDrawItem(var Message: TWMDrawItem);
const
  VertMargin = 2;
  HorzMargin = 3;
var
  Item: TMenuItem;
  ColorRect: TRect;
begin
  inherited;
  if Message.DrawItemStruct^.CtlType <> ODT_MENU then Exit;
  with Message.DrawItemStruct^ do
  begin
    FCanvas.Handle := hDC;
    Item := TMenuItem(ItemData);
    if ODS_SELECTED and itemState <> 0 then begin
      FCanvas.Brush.Color := clHighlight;
      FCanvas.Pen.Color := clHighlightText;
      FCanvas.Pen.Color := clBlack;
      FCanvas.Font.Color := clHighlightText;
    end else begin
      FCanvas.Brush.Color := clBtnFace;
      FCanvas.Pen.Color := clWindowText;
      FCanvas.Font.Color := clWindowText
    end;
    FCanvas.FillRect(rcItem);

    ColorRect := Rect(rcItem.Left + HorzMargin, rcItem.Top + VertMargin, rcItem.Left + HorzMargin + ColorBoxWidth, rcItem.Bottom - VertMargin);
    DrawText(FCanvas, Item.Caption, Rect(ColorRect.Right + 1 * HorzMargin, rcItem.Top, rcItem.Right, rcItem.Bottom), DT_VCENTER or DT_SINGLELINE);

    FCanvas.Brush.Color := Item.Tag;
    FCanvas.Rectangle(ColorRect.Left, ColorRect.Top, ColorRect.Right, ColorRect.Bottom);

    FCanvas.Handle := 0;
  end;
end;

Procedure TwwRichEditBar.RichEditBarFrameNeeded;
begin
   if RichEditBarFrame=nil then
   begin
     RichEditBarFrame:= TwwRichBarFrame.create(self);
     RichEdit1.Parent:= RichEditBarFrame.RichEditBar;
     RichEditBarFrame.RichEdit1:= self.RichEdit1;
     RichEditBarFrame.Initialize;
     RichEditBarFrame.RichEditBar.parent:= self;
     RichEditbarFrame.RichEditBar.Align:= alClient;
     RichEdit1.OnSelectionChange:= RichEditSelectionChange;
   end;

end;

procedure TwwRichEditBar.CreateWnd;
begin
   inherited CreateWnd;
   RichEditBarFrameneeded;
   UpdateControlPositions;
//   RichEditBarFrame.ResizeBar;

end;

procedure TwwRichEditBar.Resize;
begin
   inherited Resize;
   if (RichEditBarFrame<>nil) then
      RichEditBarFrame.ResizeBar;
end;

procedure TwwRichEditBar.SetOptions(val: TwwRichEditBarOptions);
begin
   FOptions:=val;
   if (RichEditBarFrame<>nil) then
      UpdateControlPositions;

end;

end.
