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
// $Log:  68833: usabout.pas 
{
{   Rev 1.0    10/02/2011 15:02:18  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:10  mcm    Version: DT 2.0

unit Usabout;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

type
  TFormAbout = class(TForm)
    Panel1      : TPanel;
    ProgramIcon : TImage;
    ProductName : TLabel;
    Version     : TLabel;
    Copyright   : TLabel;
    Image1      : TImage;
    OkButton    : TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var FormAbout : TFormAbout;

implementation

{$R *.DFM}

end.
