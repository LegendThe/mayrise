// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmemostylermanager.pas' rev: 11.00

#ifndef AdvmemostylermanagerHPP
#define AdvmemostylermanagerHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advmemo.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmemostylermanager
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvMemoStylersCollectionItem;
class PASCALIMPLEMENTATION TAdvMemoStylersCollectionItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FName;
	AnsiString FFileName;
	Advmemo::TAdvCustomMemoStyler* FStyler;
	int FStylerIndex;
	void __fastcall SetName(const AnsiString Value);
	void __fastcall SetStyler(const Advmemo::TAdvCustomMemoStyler* Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Name = {read=FName, write=SetName};
	__property int StylerIndex = {read=FStylerIndex, write=FStylerIndex, nodefault};
	__property AnsiString FileName = {read=FFileName, write=FFileName};
	__property Advmemo::TAdvCustomMemoStyler* Styler = {read=FStyler, write=SetStyler};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TAdvMemoStylersCollectionItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TAdvMemoStylersCollectionItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoStylersCollection;
class DELPHICLASS TAdvMemoStylerManager;
class PASCALIMPLEMENTATION TAdvMemoStylerManager : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TAdvMemoStylersCollection* FItems;
	int FItemsCount;
	bool FIncludeAllFiles;
	bool FIncludeTextFiles;
	void __fastcall SetItems(TAdvMemoStylersCollection* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* comp, Classes::TOperation Operation);
	
public:
	__fastcall virtual TAdvMemoStylerManager(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMemoStylerManager(void);
	Advmemo::TAdvCustomMemoStyler* __fastcall GetStylerByFileName(AnsiString FileName);
	Advmemo::TAdvCustomMemoStyler* __fastcall GetStylerByName(AnsiString strName);
	Advmemo::TAdvCustomMemoStyler* __fastcall GetStyler(int Idx);
	AnsiString __fastcall GetFilter(int Idx);
	int __fastcall GetStylerNames(Classes::TStrings* &List);
	Classes::TCollectionItem* __fastcall GetStylerItem(int Idx);
	Classes::TCollectionItem* __fastcall GetStylerItemByFileName(AnsiString FileName);
	Classes::TCollectionItem* __fastcall GetStylerItemByName(AnsiString strName);
	int __fastcall GetStylerStyleIndexByInfo(Advmemo::TAdvCustomMemoStyler* styler, AnsiString Info);
	void __fastcall SaveAllStylersToFile(AnsiString FileName);
	void __fastcall LoadAllStylersFromFile(AnsiString FileName);
	void __fastcall SaveStylerToFile(Advmemo::TAdvCustomMemoStyler* Styler, AnsiString FileName);
	void __fastcall LoadStylerFromFile(Advmemo::TAdvCustomMemoStyler* Styler, AnsiString FileName);
	__property int ItemsCount = {read=FItemsCount, write=FItemsCount, nodefault};
	
__published:
	__property TAdvMemoStylersCollection* Items = {read=FItems, write=SetItems};
	__property bool IncludeAllFiles = {read=FIncludeAllFiles, write=FIncludeAllFiles, default=1};
	__property bool IncludeTextFiles = {read=FIncludeTextFiles, write=FIncludeTextFiles, default=1};
};


class PASCALIMPLEMENTATION TAdvMemoStylersCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TAdvMemoStylersCollectionItem* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvMemoStylerManager* FAdvMemoStylers;
	HIDESBASE TAdvMemoStylersCollectionItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TAdvMemoStylersCollectionItem* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TAdvMemoStylersCollection(TAdvMemoStylerManager* Styler);
	__fastcall virtual ~TAdvMemoStylersCollection(void);
	HIDESBASE TAdvMemoStylersCollectionItem* __fastcall Add(void);
	HIDESBASE TAdvMemoStylersCollectionItem* __fastcall Insert(int Index);
	__property TAdvMemoStylersCollectionItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advmemostylermanager */
using namespace Advmemostylermanager;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmemostylermanager
