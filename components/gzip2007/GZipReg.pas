unit GZipReg;

interface

  procedure Register;

implementation

uses
  Classes, DelphiGZip;

procedure Register;
begin
  RegisterComponents('Samples', [TGzip]);
//  RegisterPropertyEditor(TypeInfo(TAboutProperty), TGzip, 'ABOUT', TAboutProperty);
end;

end.
