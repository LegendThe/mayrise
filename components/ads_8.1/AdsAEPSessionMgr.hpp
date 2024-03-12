// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsaepsessionmgr.pas' rev: 11.00

#ifndef AdsaepsessionmgrHPP
#define AdsaepsessionmgrHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Syncobjs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsaepsessionmgr
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdsAEPSessionObject;
class PASCALIMPLEMENTATION TAdsAEPSessionObject : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	int id;
	Classes::TDataModule* dm;
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TAdsAEPSessionObject(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TAdsAEPSessionObject(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsAEPSessionMgr;
class PASCALIMPLEMENTATION TAdsAEPSessionMgr : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
protected:
	Classes::TList* Items;
	Syncobjs::TCriticalSection* ItemsCS;
	TAdsAEPSessionObject* __fastcall GetItem(int id);
	
public:
	__fastcall virtual TAdsAEPSessionMgr(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdsAEPSessionMgr(void);
	void __fastcall AddDM(int id, Classes::TDataModule* dm);
	Classes::TDataModule* __fastcall GetDM(int id);
	void __fastcall FreeDM(int id);
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Adsaepsessionmgr */
using namespace Adsaepsessionmgr;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsaepsessionmgr
