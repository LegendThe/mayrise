// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbslstbox.pas' rev: 11.00

#ifndef DbslstboxHPP
#define DbslstboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Slstbox.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbslstbox
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TGetDataEvent)(System::TObject* Sender, Slstbox::TListSection* Section, AnsiString Tag, AnsiString &Data);

class DELPHICLASS TSectionDataLink;
class DELPHICLASS TDBSectionListBox;
class PASCALIMPLEMENTATION TDBSectionListBox : public Slstbox::TSectionListBox 
{
	typedef Slstbox::TSectionListBox inherited;
	
private:
	TGetDataEvent FOnGetData;
	TGetDataEvent FOnTransformData;
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual Slstbox::TListSectionCollection* __fastcall CreateSections(void);
	virtual AnsiString __fastcall GetDisplText(Slstbox::TListSection* ListSection, int Index);
	AnsiString __fastcall HTMLDBReplace(Slstbox::TListSection* ListSection, AnsiString s, Db::TDataSet* DataSet);
	
__published:
	__property TGetDataEvent OnGetData = {read=FOnGetData, write=FOnGetData};
	__property TGetDataEvent OnTransformData = {read=FOnTransformData, write=FOnTransformData};
public:
	#pragma option push -w-inl
	/* TSectionListBox.Create */ inline __fastcall virtual TDBSectionListBox(Classes::TComponent* AOwner) : Slstbox::TSectionListBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TSectionListBox.Destroy */ inline __fastcall virtual ~TDBSectionListBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TDBSectionListBox(HWND ParentWindow) : Slstbox::TSectionListBox(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TSectionDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBSectionListBox* FDBSectionListBox;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	
public:
	__fastcall TSectionDataLink(TDBSectionListBox* ADBSectionListBox);
	__fastcall virtual ~TSectionDataLink(void);
};


class DELPHICLASS TDBListSection;
class PASCALIMPLEMENTATION TDBListSection : public Slstbox::TListSection 
{
	typedef Slstbox::TListSection inherited;
	
private:
	TSectionDataLink* FDataLink;
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	
public:
	__fastcall virtual TDBListSection(Classes::TCollection* Collection);
	__fastcall virtual ~TDBListSection(void);
	
__published:
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
};


class DELPHICLASS TDBListSectionCollection;
class PASCALIMPLEMENTATION TDBListSectionCollection : public Slstbox::TListSectionCollection 
{
	typedef Slstbox::TListSectionCollection inherited;
	
public:
	virtual TMetaClass* __fastcall CreateItemClass(void);
public:
	#pragma option push -w-inl
	/* TListSectionCollection.Create */ inline __fastcall TDBListSectionCollection(Slstbox::TSectionListBox* AOwner) : Slstbox::TListSectionCollection(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TDBListSectionCollection(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Dbslstbox */
using namespace Dbslstbox;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbslstbox
