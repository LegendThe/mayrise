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
// $Log:  68817: mcmTWAINFix.pas 
{
{   Rev 1.0    10/02/2011 15:02:12  Kacper
{ init
}
//
//   Rev 1.0    04-12-2001 16:49:08  mcm    Version: DT 2.0

unit mcmTWAINFix;

interface

uses Windows,
     twain;

function FloatToFIX32(floater : Real) : TW_FIX32;

function FIX32ToFloat(fix32 : TW_FIX32) : Real;

implementation


function FloatToFIX32(floater : Real) : TW_FIX32;
// FloatToFIX32 - Convert a floating point value into a FIX32.
var Fix32_value : TW_FIX32;
    Value       : TW_INT32;
begin
  Value := TW_INT32(Round(floater * 65536.0{ + 0.50}));
  Fix32_value.Whole := Trunc(floater); 
  Fix32_value.Frac  := LOWORD(value and $0000FFFF);
  FloatToFIX32      := Fix32_value;
end; { End FloatToFIX32.                                                       }


function FIX32ToFloat(fix32 : TW_FIX32) : Real;
// FIX32ToFloat - Convert a FIX32 value into a floating point value.
var floater : Real;
begin
  floater      := (1.0 * fix32.Frac / 65536.0);
  floater      := Round(10000.0 * (floater + 0.000005)) / 10000.0;
  floater      := floater + 1.0 * fix32.Whole;
  FIX32ToFloat := floater;
end; { End FIX32ToFloat.                                                       }



end.
