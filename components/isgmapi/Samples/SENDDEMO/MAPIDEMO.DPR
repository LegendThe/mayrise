program Mapidemo;

uses
  Forms,
  Untdemo in 'UNTDEMO.PAS' {frmSampleMail};

{$R *.RES}

begin
  Application.CreateForm(TfrmSampleMail, frmSampleMail);
  Application.Run;
end.
