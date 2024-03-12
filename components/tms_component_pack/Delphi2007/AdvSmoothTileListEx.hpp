// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothtilelistex.pas' rev: 11.00

#ifndef AdvsmoothtilelistexHPP
#define AdvsmoothtilelistexHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Advsmoothtilelist.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothtilelistex
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothTileContentEx;
class PASCALIMPLEMENTATION TAdvSmoothTileContentEx : public Advsmoothtilelist::TAdvSmoothTileContent 
{
	typedef Advsmoothtilelist::TAdvSmoothTileContent inherited;
	
private:
	AnsiString FExtra;
	
__published:
	__property AnsiString Extra = {read=FExtra, write=FExtra};
public:
	#pragma option push -w-inl
	/* TAdvSmoothTileContent.Create */ inline __fastcall TAdvSmoothTileContentEx(Advsmoothtilelist::TAdvSmoothTile* AOwner) : Advsmoothtilelist::TAdvSmoothTileContent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothTileContent.Destroy */ inline __fastcall virtual ~TAdvSmoothTileContentEx(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothTileEx;
class PASCALIMPLEMENTATION TAdvSmoothTileEx : public Advsmoothtilelist::TAdvSmoothTile 
{
	typedef Advsmoothtilelist::TAdvSmoothTile inherited;
	
private:
	AnsiString FExtra;
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual Advsmoothtilelist::TAdvSmoothTileContent* __fastcall CreateContent(void);
	virtual Advsmoothtilelist::TAdvSmoothTileContent* __fastcall CreateContentMaximized(void);
	
__published:
	__property AnsiString Extra = {read=FExtra, write=FExtra};
public:
	#pragma option push -w-inl
	/* TAdvSmoothTile.Create */ inline __fastcall virtual TAdvSmoothTileEx(Classes::TCollection* Collection) : Advsmoothtilelist::TAdvSmoothTile(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothTile.Destroy */ inline __fastcall virtual ~TAdvSmoothTileEx(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothTilesEx;
class PASCALIMPLEMENTATION TAdvSmoothTilesEx : public Advsmoothtilelist::TAdvSmoothTiles 
{
	typedef Advsmoothtilelist::TAdvSmoothTiles inherited;
	
public:
	virtual TMetaClass* __fastcall CreateItemClass(void);
public:
	#pragma option push -w-inl
	/* TAdvSmoothTiles.Create */ inline __fastcall TAdvSmoothTilesEx(Advsmoothtilelist::TAdvSmoothTileList* AOwner) : Advsmoothtilelist::TAdvSmoothTiles(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TAdvSmoothTilesEx(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothTileListEx;
class PASCALIMPLEMENTATION TAdvSmoothTileListEx : public Advsmoothtilelist::TAdvSmoothTileList 
{
	typedef Advsmoothtilelist::TAdvSmoothTileList inherited;
	
public:
	virtual Advsmoothtilelist::TAdvSmoothTiles* __fastcall CreateTiles(void);
public:
	#pragma option push -w-inl
	/* TAdvSmoothTileList.Create */ inline __fastcall virtual TAdvSmoothTileListEx(Classes::TComponent* AOwner) : Advsmoothtilelist::TAdvSmoothTileList(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothTileList.Destroy */ inline __fastcall virtual ~TAdvSmoothTileListEx(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothTileListEx(HWND ParentWindow) : Advsmoothtilelist::TAdvSmoothTileList(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advsmoothtilelistex */
using namespace Advsmoothtilelistex;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothtilelistex
