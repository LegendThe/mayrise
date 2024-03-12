// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmxml.pas' rev: 11.00

#ifndef AdvmxmlHPP
#define AdvmxmlHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Advmemo.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmxml
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvXMLMemoStyler;
class PASCALIMPLEMENTATION TAdvXMLMemoStyler : public Advmemo::TAdvCustomMemoStyler 
{
	typedef Advmemo::TAdvCustomMemoStyler inherited;
	
private:
	AnsiString FVersion;
	
public:
	__fastcall virtual TAdvXMLMemoStyler(Classes::TComponent* AOwner);
	
__published:
	__property LineComment ;
	__property MultiCommentLeft ;
	__property MultiCommentRight ;
	__property CommentStyle ;
	__property NumberStyle ;
	__property AllStyles ;
	__property AnsiString Version = {read=FVersion};
	__property Description ;
	__property Filter ;
	__property DefaultExtension ;
	__property StylerName ;
	__property Extensions ;
public:
	#pragma option push -w-inl
	/* TAdvCustomMemoStyler.Destroy */ inline __fastcall virtual ~TAdvXMLMemoStyler(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advmxml */
using namespace Advmxml;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmxml
