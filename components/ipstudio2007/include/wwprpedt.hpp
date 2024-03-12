// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwprpedt.pas' rev: 11.00

#ifndef WwprpedtHPP
#define WwprpedtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwdblook.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwdbgrid.hpp>	// Pascal unit
#include <Wwdbigrd.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwidlg.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Wwselfld.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Wwquery.hpp>	// Pascal unit
#include <Wwqbe.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Wwdatainspector.hpp>	// Pascal unit
#include <Ipabout.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Wwrgxed2.hpp>	// Pascal unit
#include <Wwricheditbar.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Wwrich.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit
#include <Wwlocate.hpp>	// Pascal unit
#include <Wwfltfld.hpp>	// Pascal unit
#include <Wwfltdlg.hpp>	// Pascal unit
#include <Wwrcdvw.hpp>	// Pascal unit
#include <Wwrcdpnl.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwprpedt
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwComponentEditor;
class PASCALIMPLEMENTATION TwwComponentEditor : public Designeditors::TDefaultEditor 
{
	typedef Designeditors::TDefaultEditor inherited;
	
private:
	void __fastcall ShowAboutBox(void);
	
public:
	virtual int __fastcall GetVerbCount(void);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TDefaultEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwGridComponentEditor;
class PASCALIMPLEMENTATION TwwGridComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
private:
	bool __fastcall SupportIniSave(void);
	
public:
	virtual int __fastcall GetVerbCount(void);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwGridComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwGridComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwIndexDefsProperty;
class PASCALIMPLEMENTATION TwwIndexDefsProperty : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwIndexDefsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwIndexDefsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwControllerListProperty;
class PASCALIMPLEMENTATION TwwControllerListProperty : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwControllerListProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwControllerListProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwTableProperty;
class PASCALIMPLEMENTATION TwwTableProperty : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
public:
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwTableProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwTableProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwIndexFieldProperty;
class PASCALIMPLEMENTATION TwwIndexFieldProperty : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwIndexFieldProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwIndexFieldProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwSearchFieldProperty;
class PASCALIMPLEMENTATION TwwSearchFieldProperty : public Designeditors::TStringProperty 
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwSearchFieldProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwSearchFieldProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwDBLookupDisplayProperty;
class PASCALIMPLEMENTATION TwwDBLookupDisplayProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwDBLookupDisplayProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwDBLookupDisplayProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwTableDisplayProperty;
class PASCALIMPLEMENTATION TwwTableDisplayProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwTableDisplayProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwTableDisplayProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwDBLookupDisplayComponentEditor;
class PASCALIMPLEMENTATION TwwDBLookupDisplayComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwDBLookupDisplayComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBLookupDisplayComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TSelectedFieldsProperty;
class PASCALIMPLEMENTATION TSelectedFieldsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TSelectedFieldsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TSelectedFieldsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwDBGridComponentEditor;
class PASCALIMPLEMENTATION TwwDBGridComponentEditor : public TwwGridComponentEditor 
{
	typedef TwwGridComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwDBGridComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwGridComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwDBGridComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRecordViewPanelComponentEditor;
class PASCALIMPLEMENTATION TwwRecordViewPanelComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwRecordViewPanelComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRecordViewPanelComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwFilterFieldsProperty;
class PASCALIMPLEMENTATION TwwFilterFieldsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwFilterFieldsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwFilterFieldsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwComboItemsProperty;
class PASCALIMPLEMENTATION TwwComboItemsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwComboItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwComboItemsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwObjPictureProperty;
class PASCALIMPLEMENTATION TwwObjPictureProperty : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwObjPictureProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwObjPictureProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwMultiLineStringProperty;
class PASCALIMPLEMENTATION TwwMultiLineStringProperty : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall SetValue(const AnsiString value)/* overload */;
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwMultiLineStringProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwMultiLineStringProperty(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TwwPictureProperty;
class PASCALIMPLEMENTATION TwwPictureProperty : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwPictureProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwPictureProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwPicturePropertyGen;
class PASCALIMPLEMENTATION TwwPicturePropertyGen : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwPicturePropertyGen(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwPicturePropertyGen(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRegexProperty;
class PASCALIMPLEMENTATION TwwRegexProperty : public Designeditors::TClassProperty 
{
	typedef Designeditors::TClassProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwRegexProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TClassProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwRegexProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRecordViewComponentEditor;
class PASCALIMPLEMENTATION TwwRecordViewComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwRecordViewComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRecordViewComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwGridIndicatorProperty;
class PASCALIMPLEMENTATION TwwGridIndicatorProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwGridIndicatorProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwGridIndicatorProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRichEditItemsProperty;
class PASCALIMPLEMENTATION TwwRichEditItemsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TwwRichEditItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TwwRichEditItemsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRichEditComponentEditor;
class PASCALIMPLEMENTATION TwwRichEditComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwRichEditComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRichEditComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRichEditBarComponentEditor;
class PASCALIMPLEMENTATION TwwRichEditBarComponentEditor : public TwwComponentEditor 
{
	typedef TwwComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TwwRichEditBarComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TwwComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwRichEditBarComponentEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall EditSelectedFieldsProperty(Classes::TComponent* AComponent, Classes::TStrings* listHandle, Db::TDataSet* dataSet, Designintf::_di_IDesigner designer, bool readFromTableComponent, bool &useTFields, Wwselfld::TwwSelectedPropertyType propertyType);
extern PACKAGE void __fastcall Register(void);

}	/* namespace Wwprpedt */
using namespace Wwprpedt;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwprpedt
