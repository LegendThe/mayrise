// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwstr.pas' rev: 11.00

#ifndef WwstrHPP
#define WwstrHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwtypes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwstr
{
//-- type declarations -------------------------------------------------------
typedef Set<char, 0, 255>  strCharSet;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE strCharSet __fastcall strWhiteSpace();
extern PACKAGE AnsiString __fastcall wwExtractFileNameOnly(const AnsiString FileName);
extern PACKAGE AnsiString __fastcall strGetToken(AnsiString s, AnsiString delimeter, int &APos);
extern PACKAGE void __fastcall strBreakApart(AnsiString s, AnsiString delimeter, Classes::TStrings* parts);
extern PACKAGE void __fastcall strStripWhiteSpace(AnsiString &s);
extern PACKAGE void __fastcall strStripPreceding(AnsiString &s, const strCharSet &delimeter);
extern PACKAGE void __fastcall strStripTrailing(AnsiString &s, const strCharSet &delimeter);
extern PACKAGE AnsiString __fastcall strRemoveChar(AnsiString str, char removeChar);
extern PACKAGE AnsiString __fastcall strReplaceChar(AnsiString str, char removeChar, char replaceChar);
extern PACKAGE AnsiString __fastcall strReplaceCharWithStr(AnsiString str, char removeChar, AnsiString replaceStr);
extern PACKAGE bool __fastcall wwEqualStr(AnsiString s1, AnsiString s2);
extern PACKAGE int __fastcall strCount(AnsiString s, char delimeter);
extern PACKAGE AnsiString __fastcall wwGetWord(AnsiString s, int &APos, Wwtypes::TwwGetWordOptions Options, const strCharSet &DelimSet);
extern PACKAGE AnsiString __fastcall strTrailing(AnsiString s, char delimeter);
extern PACKAGE AnsiString __fastcall strPreceding(AnsiString s, char delimeter);
extern PACKAGE AnsiString __fastcall strReplace(AnsiString s, AnsiString Find, AnsiString Replace);

}	/* namespace Wwstr */
using namespace Wwstr;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwstr
