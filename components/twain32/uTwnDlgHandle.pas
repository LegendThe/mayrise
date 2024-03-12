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
// $Log:  68843: uTwnDlgHandle.pas 
{
{   Rev 1.0    10/02/2011 15:02:18  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:14  mcm    Version: DT 2.0

unit uTwnDlgHandle;

interface

uses Windows;

var   hDlg            : array[0..64] of THandle;
      DlgCount        : integer;

procedure AddDlgHandle(DlgHandle : THandle);

procedure DeleteDlgHandle(DlgHandle : THandle);


implementation

procedure AddDlgHandle(DlgHandle : THandle);
begin
  hDlg[DlgCount] := DlgHandle;
  Inc(DlgCount);
end; { End AddDlgHandle.                                                       }


procedure DeleteDlgHandle(DlgHandle : THandle);
var i : integer;
begin
  i := 0;
  while (i < DlgCount) and (hDlg[i] <> DlgHandle)
  do inc(i);

  if (hDlg[i] <> DlgHandle)
  then begin
       hDlg[i] := 0;
       while (i < DlgCount)
       do begin
          hDlg[i] := hDlg[i+1];
          hDlg[i+1] := 0;
          inc(i);
       end;
       dec(DlgCount);
  end;
end; { End DeleteDlgHandle.                                                    }


end.
