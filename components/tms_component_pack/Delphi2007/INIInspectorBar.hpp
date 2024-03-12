// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Iniinspectorbar.pas' rev: 11.00

#ifndef IniinspectorbarHPP
#define IniinspectorbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Inspectorbar.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Iniinspectorbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TINIInspectorItem;
class PASCALIMPLEMENTATION TINIInspectorItem : public Inspectorbar::TInspectorItem 
{
	typedef Inspectorbar::TInspectorItem inherited;
	
private:
	AnsiString __fastcall GetCaptionEx();
	void __fastcall SetCaptionEx(const AnsiString Value);
	
protected:
	virtual void __fastcall EditStart(void);
	virtual void __fastcall EditStop(void);
	virtual void __fastcall EditChange(void);
	void __fastcall Refresh(void);
	
public:
	__fastcall virtual TINIInspectorItem(Classes::TCollection* Collection);
	__fastcall virtual ~TINIInspectorItem(void);
	
__published:
	__property AnsiString Caption = {read=GetCaptionEx, write=SetCaptionEx};
};


class DELPHICLASS TINIInspectorItems;
class PASCALIMPLEMENTATION TINIInspectorItems : public Inspectorbar::TInspectorItems 
{
	typedef Inspectorbar::TInspectorItems inherited;
	
public:
	TINIInspectorItem* operator[](int Index) { return Items[Index]; }
	
private:
	HIDESBASE TINIInspectorItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TINIInspectorItem* Value);
	
public:
	virtual TMetaClass* __fastcall CreateItemClass(void);
	HIDESBASE TINIInspectorItem* __fastcall Add(void);
	HIDESBASE TINIInspectorItem* __fastcall Insert(int index);
	__property TINIInspectorItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TInspectorItems.Create */ inline __fastcall TINIInspectorItems(Inspectorbar::TInspectorPanel* AOwner) : Inspectorbar::TInspectorItems(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TINIInspectorItems(void) { }
	#pragma option pop
	
};


class DELPHICLASS TINIInspectorPanel;
class PASCALIMPLEMENTATION TINIInspectorPanel : public Inspectorbar::TInspectorPanel 
{
	typedef Inspectorbar::TInspectorPanel inherited;
	
private:
	AnsiString FINISection;
	void __fastcall SetINISection(const AnsiString Value);
	
public:
	virtual Inspectorbar::TInspectorItems* __fastcall CreateItems(void);
	__fastcall virtual TINIInspectorPanel(Classes::TCollection* Collection);
	
__published:
	__property AnsiString INISection = {read=FINISection, write=SetINISection};
public:
	#pragma option push -w-inl
	/* TInspectorPanel.Destroy */ inline __fastcall virtual ~TINIInspectorPanel(void) { }
	#pragma option pop
	
};


class DELPHICLASS TINIInspectorPanels;
class PASCALIMPLEMENTATION TINIInspectorPanels : public Inspectorbar::TInspectorPanels 
{
	typedef Inspectorbar::TInspectorPanels inherited;
	
public:
	TINIInspectorPanel* operator[](int Index) { return Items[Index]; }
	
private:
	HIDESBASE TINIInspectorPanel* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TINIInspectorPanel* Value);
	
public:
	virtual TMetaClass* __fastcall CreateItemClass(void);
	HIDESBASE TINIInspectorPanel* __fastcall Add(void);
	HIDESBASE TINIInspectorPanel* __fastcall Insert(int index);
	__property TINIInspectorPanel* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TInspectorPanels.Create */ inline __fastcall TINIInspectorPanels(Inspectorbar::TInspectorBar* AOwner) : Inspectorbar::TInspectorPanels(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TINIInspectorPanels(void) { }
	#pragma option pop
	
};


class DELPHICLASS TINIInspectorBar;
class PASCALIMPLEMENTATION TINIInspectorBar : public Inspectorbar::TInspectorBar 
{
	typedef Inspectorbar::TInspectorBar inherited;
	
private:
	bool FAllSections;
	AnsiString FINIFile;
	void __fastcall SetAllSections(const bool Value);
	void __fastcall SetINIFile(const AnsiString Value);
	TINIInspectorPanels* __fastcall GetPanels(void);
	void __fastcall SetPanels(const TINIInspectorPanels* Value);
	
public:
	virtual void __fastcall Loaded(void);
	virtual Inspectorbar::TInspectorPanels* __fastcall CreatePanels(void);
	virtual void __fastcall StartEdit(Inspectorbar::TInspectorItem* InspectorItem);
	virtual void __fastcall StopEdit(Inspectorbar::TInspectorItem* InspectorItem);
	
__published:
	__property bool AllSections = {read=FAllSections, write=SetAllSections, nodefault};
	__property AnsiString INIFile = {read=FINIFile, write=SetINIFile};
	__property TINIInspectorPanels* Panels = {read=GetPanels, write=SetPanels};
public:
	#pragma option push -w-inl
	/* TInspectorBar.Create */ inline __fastcall virtual TINIInspectorBar(Classes::TComponent* AOwner) : Inspectorbar::TInspectorBar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TInspectorBar.Destroy */ inline __fastcall virtual ~TINIInspectorBar(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TINIInspectorBar(HWND ParentWindow) : Inspectorbar::TInspectorBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Iniinspectorbar */
using namespace Iniinspectorbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Iniinspectorbar
