// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwfilter.pas' rev: 11.00

#ifndef WwfilterHPP
#define WwfilterHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Wwstacks.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Bde.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwfilter
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall wwSetFilter(AnsiString a_line, Dbtables::TTable* table, Bde::hDBIFilter &fh, bool InOpen);
extern PACKAGE void __fastcall wwRemoveFilter(Dbtables::TDBDataSet* table, Bde::hDBIFilter &fh);
extern PACKAGE bool __fastcall wwAddFilter(AnsiString a_line, Dbtables::TTable* table, Bde::hDBIFilter &fh);
extern PACKAGE bool __fastcall wwSetFilterFunction(void * func, Dbtables::TDBDataSet* table, Bde::hDBIFilter &fh);

}	/* namespace Wwfilter */
using namespace Wwfilter;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwfilter
