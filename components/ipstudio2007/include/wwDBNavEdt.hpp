// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwdbnavedt.pas' rev: 11.00

#ifndef WwdbnavedtHPP
#define WwdbnavedtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Wwdbnavigator.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwcollection.hpp>	// Pascal unit
#include <Wwcollectioneditor.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Wwprpedt.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwdbnavedt
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwDBNavigatorEditorEvents;
class PASCALIMPLEMENTATION TwwDBNavigatorEditorEvents : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	/*         class method */ static void __fastcall AddInfoPowerDialogsClick(TMetaClass* vmt, System::TObject* Sender);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TwwDBNavigatorEditorEvents(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBNavigatorEditorEvents(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwDBNavigatorButtonsEditor;
class PASCALIMPLEMENTATION TwwDBNavigatorButtonsEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual AnsiString __fastcall GetValue();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual void __fastcall Edit(void);
	void __fastcall CollectionCustomize(Wwcollectioneditor::TwwCollectionEditorForm* EditorForm);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDBNavigatorButtonsEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDBNavigatorButtonsEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwNavButtonEditor;
class PASCALIMPLEMENTATION TwwNavButtonEditor : public Designeditors::TComponentEditor 
{
	typedef Designeditors::TComponentEditor inherited;
	
public:
	__fastcall virtual TwwNavButtonEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner);
	__fastcall virtual ~TwwNavButtonEditor(void);
};


class DELPHICLASS TwwDBNavigatorEditor;
class PASCALIMPLEMENTATION TwwDBNavigatorEditor : public Wwprpedt::TwwComponentEditor 
{
	typedef Wwprpedt::TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual void __fastcall ExecuteVerb(int Index);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
	void __fastcall CollectionCustomize(Wwcollectioneditor::TwwCollectionEditorForm* EditorForm);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwDBNavigatorEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Wwprpedt::TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBNavigatorEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint WW_ADD_BUTTON = 0x0;
static const Shortint WW_ADD_INFOPOWERDIALOGS = 0x1;
static const Shortint WW_SELECT_ALL = 0x2;
static const Shortint WW_VERB_COUNT = 0x3;

}	/* namespace Wwdbnavedt */
using namespace Wwdbnavedt;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwdbnavedt
