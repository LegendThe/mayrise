// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwinspectorprpedt.pas' rev: 11.00

#ifndef WwinspectorprpedtHPP
#define WwinspectorprpedtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwdatainspector.hpp>	// Pascal unit
#include <Wwinspectorprop.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwprpcom.hpp>	// Pascal unit
#include <Wwprpedt.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwinspectorprpedt
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwObjectViewComponentEditor;
class PASCALIMPLEMENTATION TwwObjectViewComponentEditor : public Wwprpedt::TwwComponentEditor 
{
	typedef Wwprpedt::TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwObjectViewComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Wwprpedt::TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwObjectViewComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwInspectorItemsProperty;
class PASCALIMPLEMENTATION TwwInspectorItemsProperty : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwInspectorItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwInspectorItemsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwCustomEditPropertyEditor;
class PASCALIMPLEMENTATION TwwCustomEditPropertyEditor : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
public:
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
	void __fastcall wwGetStrProc(const AnsiString s);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwCustomEditPropertyEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwCustomEditPropertyEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwDataFieldEditor;
class PASCALIMPLEMENTATION TwwDataFieldEditor : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDataFieldEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDataFieldEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwInspectorCollectionEditor;
class PASCALIMPLEMENTATION TwwInspectorCollectionEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwInspectorCollectionEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwInspectorCollectionEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwinspectorprpedt */
using namespace Wwinspectorprpedt;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwinspectorprpedt
