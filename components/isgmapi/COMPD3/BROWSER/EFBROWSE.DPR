program Efbrowse;

uses
  Forms,
  Main in 'MAIN.PAS' {frmEFBrowse};

{$R *.RES}

begin
  Application.CreateForm(TfrmEFBrowse, frmEFBrowse);
  Application.Run;
end.
