// Copyright (c) 2002-2006 Extended Systems, Inc.  ALL RIGHTS RESERVED.
//
// This source code can be used, modified, or copied by the licensee as long as
// the modifications (or the new binary resulting from a copy or modification of
// this source code) are used with Extended Systems' products. The source code
// is not redistributable as source code, but is redistributable as compiled
// and linked binary code. If the source code is used, modified, or copied by
// the licensee, Extended Systems Inc. reserves the right to receive from the
// licensee, upon request, at no cost to Extended Systems Inc., the modifications.
//
// Extended Systems Inc. does not warrant that the operation of this software
// will meet your requirements or that the operation of the software will be
// uninterrupted, be error free, or that defects in software will be corrected.
// This software is provided "AS IS" without warranty of any kind. The entire
// risk as to the quality and performance of this software is with the purchaser.
// If this software proves defective or inadequate, purchaser assumes the entire
// cost of servicing or repair. No oral or written information or advice given
// by an Extended Systems Inc. representative shall create a warranty or in any
// way increase the scope of this warranty.
{*******************************************************************************
* Source File :  IndexDlg.PAS
* Date Created:  05/20/97
* Description :  Implementation of index files dialog.
* Notes       :
*******************************************************************************}
unit indexdlg;

{* Override any compiler directives we don't want, but that that user might have
 * defined in their project. *}
{$T-}   // turns off typed @ operator
{$B-}   // use short-circuit boolean expressions
{$R-}   // no range checking
{$V-}   // no var-string checking

{$INCLUDE versions.inc}

{$IFDEF ADSDELPHI7_OR_NEWER}

   {$WARN UNSAFE_TYPE OFF}
   {$WARN UNSAFE_CODE OFF}
   {$WARN UNSAFE_CAST OFF}

{$ENDIF}


interface

uses
{$ifdef WIN32}
   Windows,
   Messages,
   Graphics,
   Controls,
   Forms,
   Dialogs,
   StdCtrls,
   Grids,
   ComCtrls,
{$endif}

{$ifdef LINUX}
   QGraphics,
   QControls,
   QForms,
   QDialogs,
   QStdCtrls,
   QGrids,
   QComCtrls,
{$endif}

{$ifndef ADSDELPHI6_OR_NEWER}
  outline,
{$endif}

   SysUtils,
   Classes,
   AdsData;

type
  TIndexFileNames = class(TForm)
    GroupBox1: TGroupBox;
    btnAdd: TButton;
    btnDelete: TButton;
    btnClearAll: TButton;
    btnOK: TButton;
    btnCancel: TButton;
    btnBrowse: TButton;
    edAddString: TEdit;
    tvFileListTreeView: TTreeView;
    procedure btnBrowseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure OnAddStringKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     AdsComponent: TAdsDataSet;
     bOkPressed:   Boolean;

     constructor Create(AOwner: TComponent);  override;
  end;

var
  IndexFileNames: TIndexFileNames;

implementation

{* Linux unit necessary for virtual key codes. *}
{$ifdef LINUX}
   uses
      Qt;
{$endif}

{$IFDEF WIN32}
{$R *.dfm}
{$ENDIF}
{$IFDEF LINUX}
{$R *.xfm}
{$ENDIF}
constructor TIndexFileNames.Create(AOwner: TComponent);
begin
   inherited Create( AOwner );
   bOkPressed := False;
end;

procedure TIndexFileNames.btnBrowseClick(Sender: TObject);
var
   fmStruct : TOpenDialog;
   i : integer;
begin
   fmStruct := TOpenDialog.Create( Application );
   fmStruct.Options := [ofAllowMultiSelect];
   fmStruct.Title := 'Find Index File';
   if AdsComponent.GetDatabasePath <> '' then
      fmStruct.InitialDir := AdsComponent.GetDatabasePath;
   if AdsComponent.TableType = ttAdsNTX then
      fmStruct.Filter := 'Clipper Indexes (*.ntx)|*.ntx|Fox Pro Indexes (*.cdx)|*.cdx|Fox Pro Indexes (*.idx)|*.idx|Advantage Indexes (*.adi)|*.adi|All Files (*.*)|*.*'
   else if AdsComponent.TableType = ttAdsCDX then
      fmStruct.Filter := 'Fox Pro Indexes (*.cdx)|*.cdx|Fox Pro Indexes (*.idx)|*.idx|Clipper Indexes (*.ntx)|*.ntx|Advantage Indexes (*.adi)|*.adi|All Files (*.*)|*.*'
   else
      fmStruct.Filter := 'Advantage Indexes (*.adi)|*.adi|Fox Pro Indexes (*.cdx)|*.cdx|Fox Pro Indexes (*.idx)|*.idx|Clipper Indexes (*.ntx)|*.ntx|All Files (*.*)|*.*';

   fmStruct.Execute;
      if fmStruct.FileName <> '' then
      begin
         for i := 0 to fmStruct.Files.Count - 1 do
         begin
            tvFileListTreeView.Items.Add( TTreeNode.Create(tvFileListTreeView.Items),
               ExtractFileName( fmStruct.Files[i] ) );
         end;
      end;
   fmStruct.free;
end;

procedure TIndexFileNames.btnOKClick(Sender: TObject);
begin
   bOkPressed := True;
   Close;
end;

procedure TIndexFileNames.btnCancelClick(Sender: TObject);
begin
   bOkPressed := False;
   Close;
end;

procedure TIndexFileNames.btnClearAllClick(Sender: TObject);
begin
   tvFileListTreeView.Items.Clear;
end;

procedure TIndexFileNames.btnAddClick(Sender: TObject);
begin
   if edAddString.Text = '' then exit;
   tvFileListTreeView.Items.Add( TTreeNode.Create(tvFileListTreeView.Items), edAddString.Text );
   edAddString.Text := '';
end;

procedure TIndexFileNames.OnAddStringKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   {$ifdef WIN32}
   if Key = VK_RETURN then
   {$else}
   if Key = Key_Return then
   {$endif}
   begin
      if edAddString.Text = '' then exit;
      tvFileListTreeView.Items.Add( TTreeNode.Create(tvFileListTreeView.Items), edAddString.Text );
      edAddString.Text := '';
   end;
end;

procedure TIndexFileNames.btnDeleteClick(Sender: TObject);
var
   currTreeNode : TTreeNode;
begin
   currTreeNode := tvFileListTreeView.Selected;
   if currTreeNode = nil then exit;
   tvFileListTreeView.Items.Delete( currTreeNode );
end;

end.

