unit MainPckg;

interface

uses
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Frmpkg, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    FormPackage1: TFormPackage;
    Label2: TLabel;
    cDate: TMaskEdit;
    Label3: TLabel;
    cTime: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cName: TEdit;
    cCompany: TEdit;
    cPhone: TMaskEdit;
    cFax: TMaskEdit;
    GroupBox2: TGroupBox;
    cbTelephone: TCheckBox;
    cbCame: TCheckBox;
    cbWants: TCheckBox;
    cbFax: TCheckBox;
    Bevel1: TBevel;
    cbPlease: TCheckBox;
    cbReturn: TCheckBox;
    cbWillCall: TCheckBox;
    cbUrgent: TCheckBox;
    GroupBox3: TGroupBox;
    cMessage: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
