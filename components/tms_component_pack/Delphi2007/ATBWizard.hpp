// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Atbwizard.pas' rev: 11.00

#ifndef AtbwizardHPP
#define AtbwizardHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Toolsapi.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Atbwizard
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TATBApplicationWizard;
class PASCALIMPLEMENTATION TATBApplicationWizard : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	AnsiString FUnitIdent;
	AnsiString FClassName;
	AnsiString FFileName;
	AnsiString FProjectName;
	
public:
	AnsiString __fastcall GetIDString();
	AnsiString __fastcall GetName();
	Toolsapi::TWizardState __fastcall GetState(void);
	AnsiString __fastcall GetAuthor();
	AnsiString __fastcall GetComment();
	AnsiString __fastcall GetPage();
	unsigned __fastcall GetGlyph(void);
	void __fastcall Execute(void);
	Toolsapi::_di_IOTAGalleryCategory __fastcall GetGalleryCategory();
	AnsiString __fastcall GetPersonality();
	AnsiString __fastcall GetDesigner();
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TATBApplicationWizard(void) : Toolsapi::TNotifierObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBApplicationWizard(void) { }
	#pragma option pop
	
private:
	void *__IOTARepositoryWizard80;	/* Toolsapi::IOTARepositoryWizard80 */
	void *__IOTAProjectWizard;	/* Toolsapi::IOTAProjectWizard */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard80()
	{
		Toolsapi::_di_IOTARepositoryWizard80 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard80*(void) { return (IOTARepositoryWizard80*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator System::_di_IInterface()
	{
		System::_di_IInterface intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IInterface*(void) { return (IInterface*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard()
	{
		Toolsapi::_di_IOTARepositoryWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard*(void) { return (IOTARepositoryWizard*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAProjectWizard()
	{
		Toolsapi::_di_IOTAProjectWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAProjectWizard*(void) { return (IOTAProjectWizard*)&__IOTAProjectWizard; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAWizard()
	{
		Toolsapi::_di_IOTAWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAWizard*(void) { return (IOTAWizard*)&__IOTARepositoryWizard80; }
	#endif
	
};


class DELPHICLASS TATBProjectCreator;
class PASCALIMPLEMENTATION TATBProjectCreator : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	AnsiString FProjectFile;
	AnsiString FProjectDirectory;
	AnsiString FUnitName;
	AnsiString FFormClass;
	AnsiString FFileName;
	
protected:
	AnsiString __fastcall GetCreatorType();
	bool __fastcall GetExisting(void);
	AnsiString __fastcall GetFileSystem();
	Toolsapi::_di_IOTAModule __fastcall GetOwner();
	bool __fastcall GetUnnamed(void);
	AnsiString __fastcall GetFileName();
	AnsiString __fastcall GetOptionFileName();
	bool __fastcall GetShowSource(void);
	void __fastcall NewDefaultModule(void);
	Toolsapi::_di_IOTAFile __fastcall NewOptionSource(const AnsiString ProjectName);
	void __fastcall NewProjectResource(const Toolsapi::_di_IOTAProject Project);
	Toolsapi::_di_IOTAFile __fastcall NewProjectSource(const AnsiString ProjectName);
	void __fastcall NewDefaultProjectModule(const Toolsapi::_di_IOTAProject Project);
	AnsiString __fastcall GetProjectPersonality();
	
public:
	__fastcall TATBProjectCreator(AnsiString ProjFile, AnsiString ProjectDir, AnsiString UnitName, AnsiString FormClass, AnsiString aFileName);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBProjectCreator(void) { }
	#pragma option pop
	
private:
	void *__IOTAProjectCreator80;	/* Toolsapi::IOTAProjectCreator80 */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAProjectCreator80()
	{
		Toolsapi::_di_IOTAProjectCreator80 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAProjectCreator80*(void) { return (IOTAProjectCreator80*)&__IOTAProjectCreator80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAProjectCreator50()
	{
		Toolsapi::_di_IOTAProjectCreator50 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAProjectCreator50*(void) { return (IOTAProjectCreator50*)&__IOTAProjectCreator80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAProjectCreator()
	{
		Toolsapi::_di_IOTAProjectCreator intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAProjectCreator*(void) { return (IOTAProjectCreator*)&__IOTAProjectCreator80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTACreator()
	{
		Toolsapi::_di_IOTACreator intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTACreator*(void) { return (IOTACreator*)&__IOTAProjectCreator80; }
	#endif
	
};


class DELPHICLASS TATBFrmWizard;
class PASCALIMPLEMENTATION TATBFrmWizard : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	AnsiString FUnitIdent;
	AnsiString FClassName;
	AnsiString FFileName;
	
public:
	AnsiString __fastcall GetIDString();
	AnsiString __fastcall GetName();
	Toolsapi::TWizardState __fastcall GetState(void);
	void __fastcall Execute(void);
	AnsiString __fastcall GetAuthor();
	AnsiString __fastcall GetComment();
	AnsiString __fastcall GetPage();
	unsigned __fastcall GetGlyph(void);
	AnsiString __fastcall GetDesigner();
	__property AnsiString Designer = {read=GetDesigner};
	Toolsapi::_di_IOTAGalleryCategory __fastcall GetGalleryCategory();
	AnsiString __fastcall GetPersonality();
	__property Toolsapi::_di_IOTAGalleryCategory GalleryCategory = {read=GetGalleryCategory};
	__property AnsiString Personality = {read=GetPersonality};
	bool __fastcall IsVisible(Toolsapi::_di_IOTAProject Project);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TATBFrmWizard(void) : Toolsapi::TNotifierObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBFrmWizard(void) { }
	#pragma option pop
	
private:
	void *__IOTARepositoryWizard80;	/* Toolsapi::IOTARepositoryWizard80 */
	void *__IOTAFormWizard100;	/* Toolsapi::IOTAFormWizard100 */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator System::_di_IInterface()
	{
		System::_di_IInterface intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IInterface*(void) { return (IInterface*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard80()
	{
		Toolsapi::_di_IOTARepositoryWizard80 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard80*(void) { return (IOTARepositoryWizard80*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFormWizard100()
	{
		Toolsapi::_di_IOTAFormWizard100 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFormWizard100*(void) { return (IOTAFormWizard100*)&__IOTAFormWizard100; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFormWizard()
	{
		Toolsapi::_di_IOTAFormWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFormWizard*(void) { return (IOTAFormWizard*)&__IOTAFormWizard100; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard()
	{
		Toolsapi::_di_IOTARepositoryWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard*(void) { return (IOTARepositoryWizard*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAWizard()
	{
		Toolsapi::_di_IOTAWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAWizard*(void) { return (IOTAWizard*)&__IOTARepositoryWizard80; }
	#endif
	
};


class DELPHICLASS TATBFrmStyleWizard;
class PASCALIMPLEMENTATION TATBFrmStyleWizard : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	AnsiString FUnitIdent;
	AnsiString FClassName;
	AnsiString FFileName;
	
public:
	AnsiString __fastcall GetIDString();
	AnsiString __fastcall GetName();
	Toolsapi::TWizardState __fastcall GetState(void);
	void __fastcall Execute(void);
	AnsiString __fastcall GetAuthor();
	AnsiString __fastcall GetComment();
	AnsiString __fastcall GetPage();
	unsigned __fastcall GetGlyph(void);
	AnsiString __fastcall GetDesigner();
	__property AnsiString Designer = {read=GetDesigner};
	Toolsapi::_di_IOTAGalleryCategory __fastcall GetGalleryCategory();
	AnsiString __fastcall GetPersonality();
	__property Toolsapi::_di_IOTAGalleryCategory GalleryCategory = {read=GetGalleryCategory};
	__property AnsiString Personality = {read=GetPersonality};
	bool __fastcall IsVisible(Toolsapi::_di_IOTAProject Project);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TATBFrmStyleWizard(void) : Toolsapi::TNotifierObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBFrmStyleWizard(void) { }
	#pragma option pop
	
private:
	void *__IOTARepositoryWizard80;	/* Toolsapi::IOTARepositoryWizard80 */
	void *__IOTAFormWizard100;	/* Toolsapi::IOTAFormWizard100 */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator System::_di_IInterface()
	{
		System::_di_IInterface intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IInterface*(void) { return (IInterface*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard80()
	{
		Toolsapi::_di_IOTARepositoryWizard80 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard80*(void) { return (IOTARepositoryWizard80*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFormWizard100()
	{
		Toolsapi::_di_IOTAFormWizard100 intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFormWizard100*(void) { return (IOTAFormWizard100*)&__IOTAFormWizard100; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFormWizard()
	{
		Toolsapi::_di_IOTAFormWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFormWizard*(void) { return (IOTAFormWizard*)&__IOTAFormWizard100; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTARepositoryWizard()
	{
		Toolsapi::_di_IOTARepositoryWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTARepositoryWizard*(void) { return (IOTARepositoryWizard*)&__IOTARepositoryWizard80; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAWizard()
	{
		Toolsapi::_di_IOTAWizard intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAWizard*(void) { return (IOTAWizard*)&__IOTARepositoryWizard80; }
	#endif
	
};


class DELPHICLASS TATBUnitCreator;
class PASCALIMPLEMENTATION TATBUnitCreator : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	bool FIsStyleForm;
	AnsiString FUnitIdent;
	AnsiString FClassName;
	AnsiString FFileName;
	bool FIsMainForm;
	Toolsapi::_di_IOTAModule FOwner;
	
public:
	AnsiString __fastcall GetCreatorType();
	bool __fastcall GetExisting(void);
	AnsiString __fastcall GetFileSystem();
	Toolsapi::_di_IOTAModule __fastcall GetOwner();
	bool __fastcall GetUnnamed(void);
	AnsiString __fastcall GetAncestorName();
	AnsiString __fastcall GetImplFileName();
	AnsiString __fastcall GetIntfFileName();
	AnsiString __fastcall GetFormName();
	bool __fastcall GetMainForm(void);
	bool __fastcall GetShowForm(void);
	bool __fastcall GetShowSource(void);
	Toolsapi::_di_IOTAFile __fastcall NewFormFile(const AnsiString FormIdent, const AnsiString AncestorIdent);
	Toolsapi::_di_IOTAFile __fastcall NewImplSource(const AnsiString ModuleIdent, const AnsiString FormIdent, const AnsiString AncestorIdent);
	Toolsapi::_di_IOTAFile __fastcall NewIntfSource(const AnsiString ModuleIdent, const AnsiString FormIdent, const AnsiString AncestorIdent);
	void __fastcall FormCreated(const Toolsapi::_di_IOTAFormEditor FormEditor);
	__fastcall TATBUnitCreator(Toolsapi::_di_IOTAModule AOwner, AnsiString UnitIdent, AnsiString ClassName, AnsiString aFileName, bool AIsStyleForm, bool AIsMainForm);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBUnitCreator(void) { }
	#pragma option pop
	
private:
	void *__IOTAModuleCreator;	/* Toolsapi::IOTAModuleCreator */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAModuleCreator()
	{
		Toolsapi::_di_IOTAModuleCreator intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAModuleCreator*(void) { return (IOTAModuleCreator*)&__IOTAModuleCreator; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTACreator()
	{
		Toolsapi::_di_IOTACreator intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTACreator*(void) { return (IOTACreator*)&__IOTAModuleCreator; }
	#endif
	
};


class DELPHICLASS TBaseFile;
class PASCALIMPLEMENTATION TBaseFile : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
private:
	bool FIsStyleForm;
	AnsiString FModuleName;
	AnsiString FFormName;
	AnsiString FAncestorName;
	
public:
	__fastcall TBaseFile(const AnsiString ModuleName, const AnsiString FormName, const AnsiString AncestorName, bool AIsStyleForm);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TBaseFile(void) { }
	#pragma option pop
	
};


class DELPHICLASS TUnitFile;
class PASCALIMPLEMENTATION TUnitFile : public TBaseFile 
{
	typedef TBaseFile inherited;
	
protected:
	AnsiString __fastcall GetSource();
	System::TDateTime __fastcall GetAge(void);
public:
	#pragma option push -w-inl
	/* TBaseFile.Create */ inline __fastcall TUnitFile(const AnsiString ModuleName, const AnsiString FormName, const AnsiString AncestorName, bool AIsStyleForm) : TBaseFile(ModuleName, FormName, AncestorName, AIsStyleForm) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TUnitFile(void) { }
	#pragma option pop
	
private:
	void *__IOTAFile;	/* Toolsapi::IOTAFile */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFile()
	{
		Toolsapi::_di_IOTAFile intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFile*(void) { return (IOTAFile*)&__IOTAFile; }
	#endif
	
};


class DELPHICLASS TFormFile;
class PASCALIMPLEMENTATION TFormFile : public TBaseFile 
{
	typedef TBaseFile inherited;
	
protected:
	AnsiString __fastcall GetSource();
	System::TDateTime __fastcall GetAge(void);
public:
	#pragma option push -w-inl
	/* TBaseFile.Create */ inline __fastcall TFormFile(const AnsiString ModuleName, const AnsiString FormName, const AnsiString AncestorName, bool AIsStyleForm) : TBaseFile(ModuleName, FormName, AncestorName, AIsStyleForm) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TFormFile(void) { }
	#pragma option pop
	
private:
	void *__IOTAFile;	/* Toolsapi::IOTAFile */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFile()
	{
		Toolsapi::_di_IOTAFile intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFile*(void) { return (IOTAFile*)&__IOTAFile; }
	#endif
	
};


class DELPHICLASS TATBProjectFile;
class PASCALIMPLEMENTATION TATBProjectFile : public Toolsapi::TNotifierObject 
{
	typedef Toolsapi::TNotifierObject inherited;
	
private:
	AnsiString FProjectName;
	AnsiString FUnitName;
	AnsiString FFormClass;
	
public:
	AnsiString __fastcall GetSource();
	System::TDateTime __fastcall GetAge(void);
	__fastcall TATBProjectFile(AnsiString ProjName, AnsiString UnitName, AnsiString FormClass);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TATBProjectFile(void) { }
	#pragma option pop
	
private:
	void *__IOTAFile;	/* Toolsapi::IOTAFile */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Toolsapi::_di_IOTAFile()
	{
		Toolsapi::_di_IOTAFile intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IOTAFile*(void) { return (IOTAFile*)&__IOTAFile; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Toolsapi::_di_IOTAGalleryCategory EasyDelphiCategory;

}	/* namespace Atbwizard */
using namespace Atbwizard;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Atbwizard
