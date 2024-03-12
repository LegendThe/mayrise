{------------------------------------------------------------------------------}
{ MCM DESIGN                                                                   }
{                                                                              }
{ For further information / comments, visit our WEB site at                    }
{   www.mcm-design.com                                                         }
{ or e-mail to                                                                 }
{   CustomerCare@mcm-design.dk                                                 }
{------------------------------------------------------------------------------}
{}
{ $Log:  15876: d32twain.dpr 
//
//   Rev 1.0    04-12-2001 16:49:04  mcm    Version: DT 2.0

{
{   Rev 1.3    24-01-01 08:40:20  mcm
{ Updated version info.
}
{
{   Rev 1.2    24-10-00 00:23:09  mcm    Version: 1.9.1
{ Updated version 1.9.1.
}
{
{   Rev 1.1    09-04-00 15:17:15  mcm    Version: 1.8.4
}
{
{   Rev 1.0    15-02-00 12:01:20  mcm    Version: 1.8.3
{ Initial Revision
}
{
{   Rev 1.1    14-02-00 02:30:56  mcm
}
{
{   Rev 1.0    30-12-99 00:19:06  Marc Martin    Version: 1.8.2
{ TWAIN Toolkit for Delphi
}
{}
program d32twain;

uses
  Forms,
  uTwainForm in 'uTwainForm.pas' {FormTWAIN},
  uTwnDlgSrcInfo in 'uTwnDlgSrcInfo.pas' {FormSrcInfo};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'TWAIN Toolkit for Delphi';
  Application.CreateForm(TFormTWAIN, FormTWAIN);
  Application.Run;
end.
