// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwrichedspellxp.pas' rev: 11.00

#ifndef WwrichedspellxpHPP
#define WwrichedspellxpHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwrichedspellxp
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwDBRichEditMSWord;
class PASCALIMPLEMENTATION TwwDBRichEditMSWord : public Wwriched::TwwDBRichEdit 
{
	typedef Wwriched::TwwDBRichEdit inherited;
	
public:
	virtual bool __fastcall MSWordSpellChecker(void);
public:
	#pragma option push -w-inl
	/* TwwDBRichEdit.Create */ inline __fastcall virtual TwwDBRichEditMSWord(Classes::TComponent* AOwner) : Wwriched::TwwDBRichEdit(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TwwDBRichEdit.Destroy */ inline __fastcall virtual ~TwwDBRichEditMSWord(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwDBRichEditMSWord(HWND ParentWindow) : Wwriched::TwwDBRichEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall MSWordSpellChecker(Wwriched::TwwDBRichEdit* RichEdit);
extern PACKAGE void __fastcall Register(void);

}	/* namespace Wwrichedspellxp */
using namespace Wwrichedspellxp;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwrichedspellxp
