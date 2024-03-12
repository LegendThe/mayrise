// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsconnectionlist.pas' rev: 11.00

#ifndef AdsconnectionlistHPP
#define AdsconnectionlistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Syncobjs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsconnectionlist
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdsConnectionList;
class PASCALIMPLEMENTATION TAdsConnectionList : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	Syncobjs::TCriticalSection* FSync;
	int __fastcall AddConnectionInt(const AnsiString aDatabaseName);
	int __fastcall FindConnectionInt(const AnsiString aDatabaseName);
	
public:
	Classes::TStringList* ConnectionList;
	__fastcall TAdsConnectionList(void);
	__fastcall virtual ~TAdsConnectionList(void);
	void __fastcall CloseAllConnections(void);
	int __fastcall AddConnection(const AnsiString aDatabaseName);
	int __fastcall FindConnection(const AnsiString aDatabaseName);
	bool __fastcall DoLoginConnection(const AnsiString aDatabaseName, bool UseALS, bool UseADS, int &ConnectionHandle, unsigned &ErrorCode);
	bool __fastcall CloseConnection(const AnsiString aDatabaseName);
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TAdsConnectionList* GlobalAdsConnectionList;

}	/* namespace Adsconnectionlist */
using namespace Adsconnectionlist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsconnectionlist
