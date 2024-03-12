// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwprpds.pas' rev: 11.00

#ifndef WwprpdsHPP
#define WwprpdsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Wwquery.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit
#include <Wwstorep.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Wwqbe.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwprpds
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwDataSetProperty;
class PASCALIMPLEMENTATION TwwDataSetProperty : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
public:
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
	void __fastcall wwGetStrProc(const AnsiString s);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDataSetProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDataSetProperty(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwprpds */
using namespace Wwprpds;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwprpds
