// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwdatsrc.pas' rev: 11.00

#ifndef WwdatsrcHPP
#define WwdatsrcHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwdatsrc
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwDataSource;
class PASCALIMPLEMENTATION TwwDataSource : public Db::TDataSource 
{
	typedef Db::TDataSource inherited;
	
public:
	#pragma option push -w-inl
	/* TDataSource.Create */ inline __fastcall virtual TwwDataSource(Classes::TComponent* AOwner) : Db::TDataSource(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TDataSource.Destroy */ inline __fastcall virtual ~TwwDataSource(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Wwdatsrc */
using namespace Wwdatsrc;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwdatsrc
