unit uTwnAbout2007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TmcmAboutBox = class(TForm)
    Panel: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    OkButton: TButton;
    bgLicense: TGroupBox;
    lDemoNote: TLabel;
    lmcm: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mcmAboutBox:TmcmAboutBox;

implementation

{$R *.DFM}

procedure TmcmAboutBox.FormCreate(Sender: TObject);
begin
  //
end;

procedure TmcmAboutBox.FormDestroy(Sender: TObject);
begin
  //
end;

procedure TmcmAboutBox.FormShow(Sender: TObject);
begin
  //
end;

procedure TmcmAboutBox.OKButtonClick(Sender: TObject);
begin
  Close;
end;

end.
