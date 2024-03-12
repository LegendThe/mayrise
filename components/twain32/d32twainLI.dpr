{------------------------------------------------------------------------------}
{ MCM DESIGN                                                                   }
{                                                                              }
{ For further information / comments, visit our WEB site at                    }
{   www.mcm-design.com                                                         }
{ or e-mail to                                                                 }
{   CustomerCare@mcm-design.dk                                                 }
{------------------------------------------------------------------------------}
{}
{ $Log:  15878: d32twainLI.dpr 
//
//   Rev 1.0    04-12-2001 16:49:04  mcm    Version: DT 2.0

{
{   Rev 1.0    09-04-00 15:29:40  mcm    Version: 1.8.4
{ Initial version
}
{}
program d32twainLI;

uses
  Forms,
  uTwainFormLI in 'uTwainFormLI.pas' {FormTWAIN};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'TWAIN Toolkit for Delphi';
  Application.CreateForm(TFormTWAIN, FormTWAIN);
  Application.Run;
end.
