// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdippicturecontainer.pas' rev: 11.00

#ifndef GdippicturecontainerHPP
#define GdippicturecontainerHPP

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
#include <Comobj.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Wininet.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdippicturecontainer
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TPictureItem;
class PASCALIMPLEMENTATION TPictureItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	Advgdip::TAdvGDIPPicture* FPicture;
	int FTag;
	AnsiString FName;
	void __fastcall SetPicture(const Advgdip::TAdvGDIPPicture* Value);
	
public:
	__fastcall virtual TPictureItem(Classes::TCollection* Collection);
	__fastcall virtual ~TPictureItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Advgdip::TAdvGDIPPicture* Picture = {read=FPicture, write=SetPicture};
	__property AnsiString Name = {read=FName, write=FName};
	__property int Tag = {read=FTag, write=FTag, nodefault};
};


class DELPHICLASS TPictureCollection;
class PASCALIMPLEMENTATION TPictureCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TPictureItem* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TComponent* FOwner;
	HIDESBASE TPictureItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TPictureItem* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TPictureCollection(Classes::TComponent* AOwner);
	HIDESBASE TPictureItem* __fastcall Add(void);
	HIDESBASE TPictureItem* __fastcall Insert(int index);
	__property TPictureItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TPictureCollection(void) { }
	#pragma option pop
	
};


class DELPHICLASS TGDIPPictureContainer;
class PASCALIMPLEMENTATION TGDIPPictureContainer : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TPictureCollection* FItems;
	void __fastcall SetItems(const TPictureCollection* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TGDIPPictureContainer(Classes::TComponent* AOwner);
	__fastcall virtual ~TGDIPPictureContainer(void);
	virtual Advgdip::TAdvGDIPPicture* __fastcall FindPicture(AnsiString s);
	
__published:
	__property TPictureCollection* Items = {read=FItems, write=SetItems};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class DELPHICLASS TAdvGDIPPictureCache;
class PASCALIMPLEMENTATION TAdvGDIPPictureCache : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	Advgdip::TAdvGDIPPicture* operator[](int index) { return Items[index]; }
	
private:
	void __fastcall SetPicture(int Index, Advgdip::TAdvGDIPPicture* Value);
	Advgdip::TAdvGDIPPicture* __fastcall GetPicture(int Index);
	
public:
	__fastcall virtual ~TAdvGDIPPictureCache(void);
	__property Advgdip::TAdvGDIPPicture* Items[int index] = {read=GetPicture, write=SetPicture/*, default*/};
	Advgdip::TAdvGDIPPicture* __fastcall AddPicture(void);
	Advgdip::TAdvGDIPPicture* __fastcall FindPicture(AnsiString ID);
	void __fastcall ClearPictures(void);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TAdvGDIPPictureCache(void) : Classes::TList() { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Gdippicturecontainer */
using namespace Gdippicturecontainer;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdippicturecontainer
