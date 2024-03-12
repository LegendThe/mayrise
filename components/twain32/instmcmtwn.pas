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
// $Log:  68805: instmcmtwn.pas 
{
{   Rev 1.0    10/02/2011 15:02:08  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:06  mcm    Version: DT 2.0

unit InstmcmTwn;

interface

procedure Register;


implementation

uses
{$IFDEF VER140}
  DesignIntf, DesignEditors,
{$ELSE}
  {$IFDEF VER185}
  DesignEditors, DesignIntf,
  {$ELSE}
  Dsgnintf,
  {$ENDIF}
{$ENDIF}
  Classes, Windows, SysUtils, Dialogs,
  mcmTWAIN,
  mcmTWAINContainer,
  twain,
{$IFDEF VER100} uTwnAbout3; {$ENDIF} { DELPHI 3  = VER100 }
{$IFDEF VER110} uTwnAbout3; {$ENDIF} { BUILDER 3 = VER110 }
{$IFDEF VER120} uTwnAbout4; {$ENDIF} { DELPHI 4  = VER120 }
{$IFDEF VER125} uTwnAbout4; {$ENDIF} { BUILDER 4 = VER125 }
{$IFDEF VER130} uTwnAbout5; {$ENDIF} { DELPHI 5  = VER130 }
{$IFDEF VER135} uTwnAbout5; {$ENDIF} { BUILDER 5 = VER135 }
{$IFDEF VER140} uTwnAbout6; {$ENDIF} { DELPHI 6  = VER140 }
{$IFDEF VER185} uTwnAbout2007; {$ENDIF} { DELPHI 6  = VER140 }

type
  TmcmPropMenu = class(TComponentEditor)
  public
    function GetVerbCount : Integer; override;
    function GetVerb(Index : Integer): string; override;
    procedure ExecuteVerb(Index : Integer); override;
  end;

  TFilenameProperty = class(TStringProperty)
  public
    { Public Declarations }
    procedure Edit; override;
    function  GetAttributes : TPropertyAttributes; override;
  end;

  TFileFormatsProperty = class(TEnumProperty)
  public
    function  GetAttributes : TPropertyAttributes; override;
  end;


procedure Register;
begin
  RegisterNoIcon([TTwnContainer]);
  RegisterNoIcon([TTwnContainerList]);
  RegisterNoIcon([TTwnFrame]);
  RegisterNoIcon([TTwnSourceInfo]);
//  RegisterComponents('MCM DESIGN', [TTwnSourceInfo]);
  RegisterComponents('MCM DESIGN', [TmcmTWAIN]);
  RegisterPropertyEditor(TypeInfo(TFileName),
                         TmcmTWAIN,
                         'FileName',
                         TFilenameProperty);
  RegisterPropertyEditor(TypeInfo(TTwnFileFmt),
                         TmcmTWAIN,
                         'FileFormats',
                         TFileFormatsProperty);
  RegisterComponentEditor(TmcmTWAIN, TmcmPropMenu);
end; { End Register.                                                           }

function TmcmPropMenu.GetVerbCount : Integer;
begin
  Result := 1;
end; { End TmcmPropMenu.GetVerbCount.                                          }


function TmcmPropMenu.GetVerb(Index : Integer): string;
begin
  case Index of
  0 : Result := '&About';
  1 : Result := '&Preferrences';
  end;
end; { End TmcmPropMenu.GetVerb.                                               }


procedure TmcmPropMenu.ExecuteVerb(Index : Integer);
begin
  case Index of
  0 : begin
        mcmAboutBox := TmcmAboutBox.Create(Nil);
        mcmAboutBox.ShowModal;
        mcmAboutBox.Free;
      end;
  1 : begin
      end;
  end;
end; { End TmcmPropMenu.ExecuteVerb.                                           }


procedure TFilenameProperty.Edit;
var SaveDialog : TSaveDialog;
    SaveName   : string;
begin
  SaveDialog := TSaveDialog.create(Nil);
  try
    SaveName := lowercase(GetValue);
    SaveDialog.FilterIndex := 2;
    if (pos('.tif', SaveName) = (Length(SaveName) - 3))
    then SaveDialog.FilterIndex := 1
    else if (pos('.bmp', Value) = (Length(Value) - 3))
         then SaveDialog.FilterIndex := 2
         else if (pos('.jpg', Value) = (Length(Value) - 3))
              then SaveDialog.FilterIndex := 3
              else if (pos('.fpx', Value) = (Length(Value) - 3))
                   then SaveDialog.FilterIndex := 4
                   else if (pos('.png', Value) = (Length(Value) - 3))
                        then SaveDialog.FilterIndex := 5;

    SaveDialog.DefaultExt := 'bmp';
    // SaveDialog.filename := RemoveExt(SaveName);
    SaveDialog.filter := 'TIFF (*.tif)|*.tif|Bitmap (*.bmp)|*.bmp|JPEG (*.jpg)|*.jpg|FPX (*.fpx)|*.fpx|PNG (*.png)|*.png';
    SaveDialog.options := [ofHideReadOnly,ofPathMustExist];
    if SaveDialog.execute
    then SetValue(SaveDialog.Filename);
  finally
    SaveDialog.free;
  end;
end; { End TFilenameProperty.Edit.                                             }


function TFilenameProperty.GetAttributes : TPropertyAttributes;
begin
  Result := [paDialog];
end; { End TFilenameProperty.GetAttributes.                                    }


function TFileFormatsProperty.GetAttributes : TPropertyAttributes;
begin
  Result := [paSubProperties];
end; { End TFileFormatsProperty.GetAttributes.                                 }

end.
