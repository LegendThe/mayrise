// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Ipdsgn.pas' rev: 11.00

#ifndef IpdsgnHPP
#define IpdsgnHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Ipdsgn
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Inifiles::TIniFile* __fastcall IniPict(void);
extern PACKAGE void __fastcall wwVerifyPictureKeyValue(AnsiString &Key, AnsiString &Value);
extern PACKAGE AnsiString __fastcall wwIniGetPictureDescription(AnsiString Mask);
extern PACKAGE AnsiString __fastcall wwIniGetRegexDescription(AnsiString Mask);
extern PACKAGE void __fastcall wwOpenPictureIni(void);
extern PACKAGE void __fastcall wwClosePictureIni(void);

}	/* namespace Ipdsgn */
using namespace Ipdsgn;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Ipdsgn
