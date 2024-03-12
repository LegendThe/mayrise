// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwprovider.pas' rev: 11.00

#ifndef WwproviderHPP
#define WwproviderHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Provider.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwprovider
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwProvider;
class PASCALIMPLEMENTATION TwwProvider : public Provider::TProvider 
{
	typedef Provider::TProvider inherited;
	
public:
	virtual OleVariant __fastcall DataRequest(const OleVariant &Input);
public:
	#pragma option push -w-inl
	/* TDataSetProvider.Create */ inline __fastcall virtual TwwProvider(Classes::TComponent* AOwner) : Provider::TProvider(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TDataSetProvider.Destroy */ inline __fastcall virtual ~TwwProvider(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwprovider */
using namespace Wwprovider;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwprovider
