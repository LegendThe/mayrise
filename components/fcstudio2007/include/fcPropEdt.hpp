// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcpropedt.pas' rev: 11.00

#ifndef FcpropedtHPP
#define FcpropedtHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Vcleditors.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit
#include <Colnedit.hpp>	// Pascal unit
#include <Fcpicedt.hpp>	// Pascal unit
#include <Fcbutton.hpp>	// Pascal unit
#include <Fcimgbtn.hpp>	// Pascal unit
#include <Fcshapebtn.hpp>	// Pascal unit
#include <Fclabel.hpp>	// Pascal unit
#include <Fclineseditor.hpp>	// Pascal unit
#include <Fcbuttongroup.hpp>	// Pascal unit
#include <Fccollectioneditor.hpp>	// Pascal unit
#include <Fctreeview_itemseditor.hpp>	// Pascal unit
#include <Fctreecombo.hpp>	// Pascal unit
#include <Fcstatusbar.hpp>	// Pascal unit
#include <Fcimager.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Fcoutlookbar.hpp>	// Pascal unit
#include <Fcimageform.hpp>	// Pascal unit
#include <Fcbitmap.hpp>	// Pascal unit
#include <Fcoutlooklist.hpp>	// Pascal unit
#include <Fctreeview.hpp>	// Pascal unit
#include <Fccolorcombo.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Fccollection.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Clipbrd.hpp>	// Pascal unit
#include <Fctreeheader.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcpropedt
{
//-- type declarations -------------------------------------------------------
typedef IDesigner TFormDesigner;
;

class DELPHICLASS TfcComponentEditor;
class PASCALIMPLEMENTATION TfcComponentEditor : public Designeditors::TDefaultEditor 
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
	/* TComponentEditor.Create */ inline __fastcall virtual TfcComponentEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TDefaultEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcComponentEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomOutlookListEditor;
class PASCALIMPLEMENTATION TfcCustomOutlookListEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcCustomOutlookListEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcCustomOutlookListEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcControllerProperty;
class PASCALIMPLEMENTATION TfcControllerProperty : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
public:
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
	void __fastcall fcGetStrProc(const AnsiString s);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcControllerProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcControllerProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcLabelCaptionEditor;
class PASCALIMPLEMENTATION TfcLabelCaptionEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcLabelCaptionEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcLabelCaptionEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcButtonCaptionEditor;
class PASCALIMPLEMENTATION TfcButtonCaptionEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcButtonCaptionEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcButtonCaptionEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcCustomBtnEditor;
class PASCALIMPLEMENTATION TfcCustomBtnEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	__fastcall virtual TfcCustomBtnEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcCustomBtnEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImgBtnEditor;
class PASCALIMPLEMENTATION TfcImgBtnEditor : public TfcCustomBtnEditor 
{
	typedef TfcCustomBtnEditor inherited;
	
protected:
	#pragma pack(push,1)
	Types::TPoint ClickedPoint;
	#pragma pack(pop)
	
public:
	__fastcall virtual TfcImgBtnEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
	virtual void __fastcall Edit(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcImgBtnEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImageBtnImageEditor;
class PASCALIMPLEMENTATION TfcImageBtnImageEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcImageBtnImageEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcImageBtnImageEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcButtonGroupEditor;
class PASCALIMPLEMENTATION TfcButtonGroupEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
protected:
	Designintf::_di_IComponentEditor Editor;
	#pragma pack(push,1)
	Types::TPoint ExecutionPoint;
	#pragma pack(pop)
	
public:
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
	void __fastcall GetObscuredEditor(void);
	virtual void __fastcall Edit(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcButtonGroupEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcButtonGroupEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcButtonGroupItemsEditor;
class PASCALIMPLEMENTATION TfcButtonGroupItemsEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcButtonGroupItemsEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcButtonGroupItemsEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcButtonGroupControlClassEditor;
class PASCALIMPLEMENTATION TfcButtonGroupControlClassEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcButtonGroupControlClassEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcButtonGroupControlClassEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcTreeComboEditor;
class PASCALIMPLEMENTATION TfcTreeComboEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcTreeComboEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcTreeComboEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeComboItemsProperty;
class PASCALIMPLEMENTATION TfcTreeComboItemsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcTreeComboItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcTreeComboItemsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcStatusBarEditor;
class PASCALIMPLEMENTATION TfcStatusBarEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcStatusBarEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcStatusBarEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcHeaderEditor;
class PASCALIMPLEMENTATION TfcHeaderEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcHeaderEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcHeaderEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcStatusBarPanelsEditor;
class PASCALIMPLEMENTATION TfcStatusBarPanelsEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual AnsiString __fastcall GetValue();
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcStatusBarPanelsEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcStatusBarPanelsEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImagerEditor;
class PASCALIMPLEMENTATION TfcImagerEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcImagerEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcImagerEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcOutlookPanelEditor;
class PASCALIMPLEMENTATION TfcOutlookPanelEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
	virtual void __fastcall ExecuteVerb(int Index);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcOutlookPanelEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcOutlookPanelEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImageFormEditor;
class PASCALIMPLEMENTATION TfcImageFormEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcImageFormEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcImageFormEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcBitmapEditor;
class PASCALIMPLEMENTATION TfcBitmapEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcBitmapEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcBitmapEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcButtonGroupSelectedEditor;
class PASCALIMPLEMENTATION TfcButtonGroupSelectedEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcButtonGroupSelectedEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcButtonGroupSelectedEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcTreeViewItemsProperty;
class PASCALIMPLEMENTATION TfcTreeViewItemsProperty : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcTreeViewItemsProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcTreeViewItemsProperty(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeViewEditor;
class PASCALIMPLEMENTATION TfcTreeViewEditor : public TfcComponentEditor 
{
	typedef TfcComponentEditor inherited;
	
public:
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TfcTreeViewEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : TfcComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcTreeViewEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcColorComboSelectedColorEditor;
class PASCALIMPLEMENTATION TfcColorComboSelectedColorEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall Edit(void);
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcColorComboSelectedColorEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcColorComboSelectedColorEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcImageBtnTranColorEditor;
class PASCALIMPLEMENTATION TfcImageBtnTranColorEditor : public Vcleditors::TColorProperty 
{
	typedef Vcleditors::TColorProperty inherited;
	
public:
	HIDESBASE void __fastcall ListMeasureHeight(const AnsiString Value, Graphics::TCanvas* ACanvas, int &AHeight);
	HIDESBASE void __fastcall ListMeasureWidth(const AnsiString Value, Graphics::TCanvas* ACanvas, int &AWidth);
	HIDESBASE void __fastcall ListDrawValue(const AnsiString Value, Graphics::TCanvas* ACanvas, const Types::TRect &ARect, bool ASelected);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcImageBtnTranColorEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Vcleditors::TColorProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcImageBtnTranColorEditor(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
private:
	void *__ICustomPropertyListDrawing;	/* Vcleditors::ICustomPropertyListDrawing */
	
public:
	operator ICustomPropertyListDrawing*(void) { return (ICustomPropertyListDrawing*)&__ICustomPropertyListDrawing; }
	
};


class DELPHICLASS TfcComponentProperty;
class PASCALIMPLEMENTATION TfcComponentProperty : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
private:
	Classes::TStringList* FStrings;
	
protected:
	virtual bool __fastcall ValidComponent(Classes::TComponent* AComponent);
	virtual void __fastcall GetBaseValues(const AnsiString s);
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual void __fastcall SetValue(const AnsiString Value)/* overload */;
	virtual void __fastcall GetValues(Classes::TGetStrProc Proc);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcComponentProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcComponentProperty(void) { }
	#pragma option pop
	
	
/* Hoisted overloads: */
	
public:
	inline void __fastcall  SetValue(const WideString Value){ TPropertyEditor::SetValue(Value); }
	
};


class DELPHICLASS TfcImageBtnExtImageEditor;
class PASCALIMPLEMENTATION TfcImageBtnExtImageEditor : public TfcComponentProperty 
{
	typedef TfcComponentProperty inherited;
	
protected:
	virtual bool __fastcall ValidComponent(Classes::TComponent* AComponent);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcImageBtnExtImageEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : TfcComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcImageBtnExtImageEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcOutlookBarActivePageEditor;
class PASCALIMPLEMENTATION TfcOutlookBarActivePageEditor : public TfcComponentProperty 
{
	typedef TfcComponentProperty inherited;
	
protected:
	virtual bool __fastcall ValidComponent(Classes::TComponent* AComponent);
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcOutlookBarActivePageEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : TfcComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcOutlookBarActivePageEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCollectionEditor;
class PASCALIMPLEMENTATION TfcCollectionEditor : public Designeditors::TPropertyEditor 
{
	typedef Designeditors::TPropertyEditor inherited;
	
public:
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
	virtual void __fastcall Edit(void);
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TfcCollectionEditor(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TPropertyEditor(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TfcCollectionEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint FC_BTN_SETSHADECOLORS = 0x0;
static const Shortint FC_BTN_RESIZE = 0x1;
static const Shortint FC_IMGBTN_SPLIT = 0x2;
static const Shortint FC_CG_COUNT = 0x1;
static const Shortint FC_CG_NEWBUTTON = 0x0;
static const Shortint FC_OTLKPNL_ADDOUTLOOKLIST = 0x0;
static const Shortint FC_OTLKPNL_PASTE = 0x1;

}	/* namespace Fcpropedt */
using namespace Fcpropedt;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcpropedt
