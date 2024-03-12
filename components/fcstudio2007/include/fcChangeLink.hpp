// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcchangelink.pas' rev: 11.00

#ifndef FcchangelinkHPP
#define FcchangelinkHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcchangelink
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcChangeLink;
class PASCALIMPLEMENTATION TfcChangeLink : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnChanging;
	Classes::TNotifyEvent FOnLoaded;
	System::TObject* FSender;
	
public:
	virtual void __fastcall Change(void);
	virtual void __fastcall Changing(void);
	virtual void __fastcall Loaded(void);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Classes::TNotifyEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property Classes::TNotifyEvent OnLoaded = {read=FOnLoaded, write=FOnLoaded};
	__property System::TObject* Sender = {read=FSender, write=FSender};
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcChangeLink(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcChangeLink(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcchangelink */
using namespace Fcchangelink;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcchangelink
