// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advhintinfo.pas' rev: 11.00

#ifndef AdvhintinfoHPP
#define AdvhintinfoHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Gdipicture.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advhintinfo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvHintInfo;
class PASCALIMPLEMENTATION TAdvHintInfo : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Gdipicture::TGDIPPicture* FPicture;
	bool FShowHelp;
	Classes::TStrings* FNotes;
	AnsiString FTitle;
	WideString FWideTitle;
	WideString FWideNotes;
	void __fastcall SetNotes(const Classes::TStrings* Value);
	void __fastcall SetPicture(const Gdipicture::TGDIPPicture* Value);
	
public:
	__fastcall TAdvHintInfo(void);
	__fastcall virtual ~TAdvHintInfo(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property WideString WideTitle = {read=FWideTitle, write=FWideTitle};
	__property WideString WideNotes = {read=FWideNotes, write=FWideNotes};
	bool __fastcall IsEmpty(void);
	
__published:
	__property AnsiString Title = {read=FTitle, write=FTitle};
	__property Classes::TStrings* Notes = {read=FNotes, write=SetNotes};
	__property Gdipicture::TGDIPPicture* Picture = {read=FPicture, write=SetPicture};
	__property bool ShowHelp = {read=FShowHelp, write=FShowHelp, default=0};
};


__interface ITMSOfficeHint;
typedef System::DelphiInterface<ITMSOfficeHint> _di_ITMSOfficeHint;
__interface  INTERFACE_UUID("{B7E98AA5-9E7A-4036-BF26-AB2F557A5CDD}") ITMSOfficeHint  : public IInterface 
{
	
public:
	virtual void __fastcall GetOfficeHint(const Types::TPoint &PT, TAdvHintInfo* &HintInfo) = 0 ;
};

//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advhintinfo */
using namespace Advhintinfo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advhintinfo