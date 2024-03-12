unit wwframestyle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TwwFrameStyle = class(TComponent)
  private
    FFrame: TwwEditFrame;
    FButtonEffects: TwwButtonEffects;
  protected
    { Protected declarations }
  public
    property Frame: TwwEditFrame read FFrame write FFrame;
    property ButtonEffects: TwwButtonEffects read FButtonEffects write FButtonEffects;
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('IP Controls', [TwwFrameStyle]);
end;

constructor TwwFrameStyle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFrame:= TwwEditFrame.create(self);
  FButtonEffects:= TwwComboButtonEffects.create(self, FButton);
end;

destructor TwwFrameStyle.Destroy;
begin
  FFrame.Free;
  FButtonEffects.Free;
  inherited Destroy;
end;

end.
