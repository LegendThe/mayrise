{********************************************************************}
{ TAdvGlowButton component                                           }
{ for Delphi & C++Builder                                            }
{                                                                    }
{ written                                                            }
{   TMS Software                                                     }
{   copyright © 2006 - 2012                                          }
{   Email : info@tmssoftware.com                                     }
{   Web : http://www.tmssoftware.com                                 }
{                                                                    }
{ The source code is given as is. The author is not responsible      }
{ for any possible damage done due to the use of this code.          }
{ The component can be freely used in any application. The source    }
{ code remains property of the writer and may not be distributed     }
{ freely as such.                                                    }
{********************************************************************}

unit AdvGlowButtonRegDE;

interface
{$I TMSDEFS.INC}
uses
  AdvGlowButton, GDIPicDE, Classes, GDIPicture, AdvHintInfo, ImgList,
{$IFDEF DELPHI6_LVL}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
{$IFDEF DELPHIXE3_LVL}
  , System.UITypes
{$ENDIF}
  ;

procedure Register;

implementation

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(TGDIPPicture), TAdvGlowButton, 'Picture', TGDIPPictureProperty);
  RegisterPropertyEditor(TypeInfo(TGDIPPicture), TAdvGlowButton, 'DisabledPicture', TGDIPPictureProperty);
  RegisterPropertyEditor(TypeInfo(TGDIPPicture), TAdvHintInfo, 'Picture', TGDIPPictureProperty);
  RegisterPropertyEditor(TypeInfo(TGDIPPicture), TAdvGlowButton, 'HotPicture', TGDIPPictureProperty);
{$IFDEF DELPHI6_LVL}
  RegisterPropertyEditor(TypeInfo(TImageIndex), TAdvGlowButton, 'ImageIndex', TAdvImageIndexProperty);
{$ENDIF}
end;


end.

