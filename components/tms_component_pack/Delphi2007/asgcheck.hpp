// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asgcheck.pas' rev: 11.00

#ifndef AsgcheckHPP
#define AsgcheckHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asgcheck
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvStringGridCheck;
class PASCALIMPLEMENTATION TAdvStringGridCheck : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FGotoCell;
	bool FAutoCorrect;
	bool FAutoMarkError;
	bool FUseCorrect;
	bool FUseMarkError;
	
protected:
	AnsiString __fastcall HiLight(AnsiString s, AnsiString h, AnsiString tag, bool DoCase);
	AnsiString __fastcall ReplaceOnce(const AnsiString S, const AnsiString OldPattern, const AnsiString NewPattern);
	
public:
	virtual AnsiString __fastcall MarkError(int ACol, int ARow, AnsiString s);
	virtual AnsiString __fastcall Correct(int ACol, int ARow, AnsiString s);
	virtual void __fastcall StartCheck(void);
	virtual void __fastcall StopCheck(void);
	
__published:
	__property bool AutoCorrect = {read=FAutoCorrect, write=FAutoCorrect, nodefault};
	__property bool AutoMarkError = {read=FAutoMarkError, write=FAutoMarkError, nodefault};
	__property bool GotoCell = {read=FGotoCell, write=FGotoCell, nodefault};
	__property bool UseCorrect = {read=FUseCorrect, write=FUseCorrect, nodefault};
	__property bool UseMarkError = {read=FUseMarkError, write=FUseMarkError, nodefault};
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TAdvStringGridCheck(Classes::TComponent* AOwner) : Classes::TComponent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvStringGridCheck(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCapitalCheck;
class PASCALIMPLEMENTATION TCapitalCheck : public TAdvStringGridCheck 
{
	typedef TAdvStringGridCheck inherited;
	
public:
	virtual AnsiString __fastcall Correct(int ACol, int ARow, AnsiString s);
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TCapitalCheck(Classes::TComponent* AOwner) : TAdvStringGridCheck(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TCapitalCheck(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Asgcheck */
using namespace Asgcheck;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asgcheck
