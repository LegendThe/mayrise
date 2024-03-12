// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwhistorylist.pas' rev: 11.00

#ifndef WwhistorylistHPP
#define WwhistorylistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwhistorylist
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TwwStorageType { stRegistry, stIniFile };
#pragma option pop

class DELPHICLASS TwwHistoryList;
class PASCALIMPLEMENTATION TwwHistoryList : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	AnsiString FSection;
	AnsiString FFileName;
	int FMaxSize;
	TwwStorageType FStorageType;
	bool FMRUEnabled;
	int FMRUMaxSize;
	Classes::TStrings* FList;
	bool FLoaded;
	void __fastcall SetEnabled(bool Enabled);
	void __fastcall SetSection(AnsiString Section);
	AnsiString __fastcall GetFileName();
	void __fastcall SetFileName(AnsiString FileName);
	void __fastcall SetMaxSize(int MaxSize);
	void __fastcall SetStorageType(TwwStorageType StorageType);
	void __fastcall SetList(Classes::TStrings* List);
	
protected:
	void __fastcall SynchWithList(Classes::TStrings* SynchList);
	
public:
	Classes::TComponent* Owner;
	__property Classes::TStrings* List = {read=FList, write=SetList};
	void __fastcall Load(Classes::TStrings* SyncList);
	__fastcall TwwHistoryList(void);
	__fastcall virtual ~TwwHistoryList(void);
	void __fastcall Save(void);
	void __fastcall SaveToStream(Classes::TStream* Stream);
	void __fastcall LoadFromStream(Classes::TStream* Stream);
	void __fastcall SaveToRegistry(AnsiString Value, AnsiString Key, unsigned RootKey);
	void __fastcall LoadFromRegistry(Classes::TStrings* SynchList, AnsiString Value, AnsiString Key, unsigned RootKey);
	void __fastcall SaveToIniFile(AnsiString Section, AnsiString IniFile);
	void __fastcall LoadFromIniFile(Classes::TStrings* SynchList, AnsiString Section, AnsiString IniFile);
	int __fastcall EffectiveMRUCount(void);
	
__published:
	__property AnsiString Section = {read=FSection, write=SetSection};
	__property AnsiString FileName = {read=GetFileName, write=SetFileName};
	__property int MaxSize = {read=FMaxSize, write=SetMaxSize, default=-1};
	__property TwwStorageType StorageType = {read=FStorageType, write=SetStorageType, default=1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property bool MRUEnabled = {read=FMRUEnabled, write=FMRUEnabled, default=0};
	__property int MRUMaxSize = {read=FMRUMaxSize, write=FMRUMaxSize, default=2};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwhistorylist */
using namespace Wwhistorylist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwhistorylist
