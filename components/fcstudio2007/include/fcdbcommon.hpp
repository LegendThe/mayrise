// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcdbcommon.pas' rev: 11.00

#ifndef FcdbcommonHPP
#define FcdbcommonHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcdbcommon
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Db::TDataSource* __fastcall fcGetControlDataSource(Classes::TComponent* ctrl);
extern PACKAGE Db::TDataSource* __fastcall fcGetControlMasterSource(Classes::TComponent* ctrl);
extern PACKAGE Db::TDataSet* __fastcall fcGetControlMasterDataSet(Classes::TComponent* ctrl);
extern PACKAGE bool __fastcall fcSetSQLProp(Db::TDataSet* ctrl, Classes::TStrings* sql);
extern PACKAGE bool __fastcall fcSetDatabaseName(Db::TDataSet* ctrl, AnsiString df);
extern PACKAGE AnsiString __fastcall fcGetDatabaseName(Db::TDataSet* dataSet);
extern PACKAGE AnsiString __fastcall fcGetTableName(Db::TDataSet* dataSet);
extern PACKAGE Db::TParams* __fastcall fcGetParamsProp(Db::TDataSet* ctrl);
extern PACKAGE bool __fastcall fcSetParamsProp(Db::TDataSet* ctrl, Db::TParams* Params);

}	/* namespace Fcdbcommon */
using namespace Fcdbcommon;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcdbcommon
