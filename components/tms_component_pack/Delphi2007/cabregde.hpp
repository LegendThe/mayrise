// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Cabregde.pas' rev: 11.00

#ifndef CabregdeHPP
#define CabregdeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Cabfiles.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Cabregde
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TCABFileEditor;
class PASCALIMPLEMENTATION TCABFileEditor : public Designeditors::TDefaultEditor 
{
	typedef Designeditors::TDefaultEditor inherited;
	
protected:
	virtual void __fastcall EditProperty(const Designintf::_di_IProperty PropertyEditor, bool &Continue);
	
public:
	virtual AnsiString __fastcall GetVerb(int index);
	virtual int __fastcall GetVerbCount(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TCABFileEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TDefaultEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TCABFileEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Cabregde */
using namespace Cabregde;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Cabregde