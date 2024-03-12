// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Astapatchutil.pas' rev: 11.00

#ifndef AstapatchutilHPP
#define AstapatchutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Wupdate.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Astapatchutil
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAstaPatchUtility;
class PASCALIMPLEMENTATION TAstaPatchUtility : public Wupdate::TWebUpdateUtility 
{
	typedef Wupdate::TWebUpdateUtility inherited;
	
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TAstaPatchUtility(Classes::TComponent* AOwner) : Wupdate::TWebUpdateUtility(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAstaPatchUtility(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Astapatchutil */
using namespace Astapatchutil;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Astapatchutil
