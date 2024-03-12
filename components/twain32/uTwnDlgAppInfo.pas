// $HDR$
//----------------------------------------------------------------------------//
// MCM DESIGN                                                                 //  
//                                                                            //  
// For further information / comments, visit our WEB site at                  //  
//   www.mcm-design.com                                                       //  
// or e-mail to                                                               //  
//   CustomerCare@mcm-design.dk                                               //  
//----------------------------------------------------------------------------//
//
// $Log:  68841: uTwnDlgAppInfo.pas 
{
{   Rev 1.0    10/02/2011 15:02:18  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:12  mcm    Version: DT 2.0

unit uTwnDlgAppInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  twain;

type
  TFormAppInfo        = class(TForm)
    gbInformation     : TGroupBox;
    btnOK             : TButton;
    lTWAINID          : TLabel;
    lAppVersion       : TLabel;
    lAppLanguage      : TLabel;
    lAppCountry       : TLabel;
    lAppInfo          : TLabel;
    lAppProtocol      : TLabel;
    lAppGroups        : TLabel;
    lAppManufacturer  : TLabel;
    lAppProductFamily : TLabel;
    lAppProductName   : TLabel;
    lValTWAINID       : TLabel;
    lValVersion       : TLabel;
    lValLanguage      : TLabel;
    lValCountry       : TLabel;
    lValInfo          : TLabel;
    lValProtocol      : TLabel;
    lValGroups        : TLabel;
    lValManufacturer  : TLabel;
    lValProductFamily : TLabel;
    lValProductName   : TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetAppID(Identity : pTW_IDENTITY);
  end;

var FormAppInfo : TFormAppInfo;

implementation

{$R *.DFM}

procedure TFormAppInfo.SetAppID(Identity : pTW_IDENTITY);
var TmpStr : string;
begin
  if (Identity <> Nil)
  then begin
       with Identity^
       do begin
          lValTWAINID.Caption       := IntToStr(Id);
          lValVersion.Caption       := IntToStr(Version.MajorNum) + '.' + IntToStr(Version.MinorNum);
          lValLanguage.Caption      := IntToStr(Version.Language);
          lValCountry.Caption       := IntToStr(Version.Country);
          lValInfo.Caption          := StrPas(Version.Info);
          lValProtocol.Caption      := IntToStr(ProtocolMajor) + '.' + IntToStr(ProtocolMinor);
          TmpStr := '';
          if ((SupportedGroups and DG_CONTROL) <> 0)
          then TmpStr := TmpStr + 'DG_CONTROL, ';
          if ((SupportedGroups and DG_IMAGE) <> 0)
          then TmpStr := TmpStr + 'DG_IMAGE, ';
          if ((SupportedGroups and DG_AUDIO) <> 0)
          then TmpStr := TmpStr + 'DG_AUDIO, ';
          lValGroups.Caption        := Copy(TmpStr, 1, Length(TmpStr) - 2);
          lValManufacturer.Caption  := StrPas(Manufacturer);
          lValProductFamily.Caption := StrPas(ProductFamily);
          lValProductName.Caption   := StrPas(ProductName);
       end;
  end;
end; { End TFormAppInfo.SetAppID.                                              }

end.
