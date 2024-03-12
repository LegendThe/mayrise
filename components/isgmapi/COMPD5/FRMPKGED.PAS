unit Frmpkged;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, Isgclist;

type
  TfrmPackEdit = class(TForm)
    bbtnOk: TBitBtn;
    bbtnCancel: TBitBtn;
    lblControl: TLabel;
    grpVisible: TGroupBox;
    chboxAddr: TCheckBox;
    chboxForward: TCheckBox;
    chboxReply: TCheckBox;
    chboxInfo: TCheckBox;
    edFormType: TEdit;
    lblFormType: TLabel;
    lbControls: TISGCList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPackEdit: TfrmPackEdit;

implementation

{$R *.DFM}


end.
