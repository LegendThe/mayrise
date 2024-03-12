// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsstrng.pas' rev: 11.00

#ifndef AdsstrngHPP
#define AdsstrngHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsstrng
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall BinToStr(void * pBuffer, int iSizeBuffer, AnsiString &strResult);
extern PACKAGE void __fastcall StrToArray(AnsiString strTarget, void * pBuffer, int iSizeBuffer);
extern PACKAGE AnsiString __fastcall FindReplace(char cFind, char cReplace, AnsiString strTarget);
extern PACKAGE void __fastcall RemoveSubstr(AnsiString strSubToRemove, AnsiString &strTarget);
extern PACKAGE AnsiString __fastcall StrBeforeToken(AnsiString strToken, AnsiString strTarget);
extern PACKAGE AnsiString __fastcall StrAfterToken(AnsiString strToken, AnsiString strTarget);
extern PACKAGE AnsiString __fastcall AllTrim(AnsiString strTarget);
extern PACKAGE AnsiString __fastcall Pad(AnsiString strTarget, int iStringLength, char cPadChar);
extern PACKAGE AnsiString __fastcall DOW(System::TDateTime TheDate);
extern PACKAGE void __fastcall NonNullCopy(char * &pucDest, char * pucSource, int iOffset, int iLength);
extern PACKAGE bool __fastcall EmptyString(char * pucSource, int iLength);

}	/* namespace Adsstrng */
using namespace Adsstrng;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsstrng
