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
// $Log:  68849: uTwnDlgSimEvents.pas 
{
{   Rev 1.0    10/02/2011 15:02:20  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:14  mcm    Version: DT 2.0

unit uTwnDlgSimEvents;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, mcmTWAINContainer;

type
  TFormEvents = class(TForm)
    gbEvents  : TGroupBox;
    lEvents   : TLabel;
    cbEvents  : TComboBox;
    btnSend   : TButton;
    btnClose  : TButton;
    procedure FormCreate(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure cbEventsChange(Sender : TObject);
    procedure btnSendClick(Sender : TObject);
  private
    { Private declarations }
    FContainer : TtwnContainer;
    FCurDevice : integer;
  public
    { Public declarations }
    property DeviceEventContainer : TtwnContainer
      read   FContainer
      write  FContainer;
    property Event : integer
      read   FCurDevice;
  end;

var FormEvents : TFormEvents;

implementation

{$R *.DFM}

procedure TFormEvents.FormCreate(Sender : TObject);
begin
  cbEvents.ItemIndex := -1;
  FCurDevice := -1;
end; { End TFormEvents.FormCreate.                                             }


procedure TFormEvents.FormShow(Sender : TObject);
begin
  if (FContainer <> Nil)
  then cbEvents.Enabled := True
  else cbEvents.Enabled := False;
  cbEvents.ItemIndex := 0;
  cbEventsChange(Sender);
end; { End TFormEvents.FormShow.                                               }


procedure TFormEvents.cbEventsChange(Sender : TObject);
var i : integer;
begin
  if (FContainer <> Nil)
  then begin
       FCurDevice := -1;
       i := 0;
       while (FCurDevice = -1) and (i < FContainer.NumItems)
       do begin
          if (FContainer.Items[i] = cbEvents.ItemIndex)
          then FCurDevice := i;
          inc(i);
       end;
       if (FCurDevice >= 0)
       then btnSend.Enabled := True
       else btnSend.Enabled := False;
  end
  else btnSend.Enabled := False;
end; { End TFormEvents.cbEventsChange.                                         }


procedure TFormEvents.btnSendClick(Sender : TObject);
begin
;
end; { End TFormEvents.btnSendClick.                                           }

end.
