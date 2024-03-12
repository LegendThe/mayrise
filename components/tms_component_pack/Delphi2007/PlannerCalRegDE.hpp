// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Plannercalregde.pas' rev: 11.00

#ifndef PlannercalregdeHPP
#define PlannercalregdeHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Plannercal.hpp>	// Pascal unit
#include <Plannerdatepicker.hpp>	// Pascal unit
#include <Plannermaskdatepicker.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Planstyles.hpp>	// Pascal unit
#include <Advimage.hpp>	// Pascal unit
#include <Advimgde.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Plannercalregde
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TPlannerCalendarEditProperty;
class PASCALIMPLEMENTATION TPlannerCalendarEditProperty : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TPlannerCalendarEditProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TPlannerCalendarEditProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerCalendarEditor;
class PASCALIMPLEMENTATION TPlannerCalendarEditor : public Designeditors::TDefaultEditor 
{
	typedef Designeditors::TDefaultEditor inherited;
	
public:
	virtual AnsiString __fastcall GetVerb(int index);
	virtual int __fastcall GetVerbCount(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TPlannerCalendarEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TDefaultEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TPlannerCalendarEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Plannercalregde */
using namespace Plannercalregde;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Plannercalregde
