// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advcodelistdd.pas' rev: 11.00

#ifndef AdvcodelistddHPP
#define AdvcodelistddHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Shlobj.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------
#include <oleidl.h>

namespace Advcodelistdd
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TEnumFormats;
class PASCALIMPLEMENTATION TEnumFormats : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	_di_IDataObject FDataObject;
	_di_IEnumFORMATETC FEnumerator;
	#pragma pack(push,4)
	tagFORMATETC FFormatEtc;
	#pragma pack(pop)
	bool FValid;
	int FCount;
	Classes::TStringList* FFiles;
	void __fastcall SetDataObject(_di_IDataObject Value);
	AnsiString __fastcall SomeText(Word Format);
	bool __fastcall SomeFiles(Classes::TStringList* &Files);
	int __fastcall GetAspect(void);
	void __fastcall SetAspect(int value);
	Word __fastcall GetcfFormat(void);
	void __fastcall SetcfFormat(Word value);
	int __fastcall GetlIndex(void);
	void __fastcall SetlIndex(int value);
	int __fastcall GetTymed(void);
	void __fastcall SetTymed(int value);
	
public:
	__fastcall TEnumFormats(_di_IDataObject DataObject);
	__fastcall virtual ~TEnumFormats(void);
	bool __fastcall Reset(void);
	bool __fastcall Next(void);
	bool __fastcall HasFormat(Word ClipFormat);
	unsigned __fastcall Handle(int Tymed);
	unsigned __fastcall GlobalHandle(void);
	bool __fastcall HasText(void);
	bool __fastcall HasFile(void);
	bool __fastcall HasRTF(void);
	AnsiString __fastcall Text();
	AnsiString __fastcall RTF();
	__property int Count = {read=FCount, nodefault};
	__property _di_IDataObject DataObject = {read=FDataObject, write=SetDataObject};
	__property bool Valid = {read=FValid, nodefault};
	__property tagFORMATETC FormatEtc = {read=FFormatEtc};
	__property int Aspect = {read=GetAspect, write=SetAspect, nodefault};
	__property Word Format = {read=GetcfFormat, write=SetcfFormat, nodefault};
	__property int Index = {read=GetlIndex, write=SetlIndex, nodefault};
	__property int Medium = {read=GetTymed, write=SetTymed, nodefault};
};


class DELPHICLASS TAdvCodeListDropTarget;
class PASCALIMPLEMENTATION TAdvCodeListDropTarget : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
public:
	HRESULT __stdcall DragEnter(const _di_IDataObject DataObj, int grfKeyState, const Types::TPoint pt, int &dwEffect);
	HRESULT __stdcall DragOver(int grfKeyState, const Types::TPoint pt, int &dwEffect);
	HRESULT __stdcall DragLeave(void);
	HRESULT __stdcall Drop(const _di_IDataObject DataObj, int grfKeyState, const Types::TPoint pt, int &dwEffect);
	
private:
	bool FOk;
	
public:
	__fastcall TAdvCodeListDropTarget(void);
	virtual void __fastcall DropText(const Types::TPoint &pt, AnsiString s);
	virtual void __fastcall DropRTF(const Types::TPoint &pt, AnsiString s);
	virtual void __fastcall DropFiles(const Types::TPoint &pt, Classes::TStrings* Files);
	virtual void __fastcall DragMouseMove(const Types::TPoint &pt, bool &Allow);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TAdvCodeListDropTarget(void) { }
	#pragma option pop
	
private:
	void *__IDropTarget;	/* IDropTarget */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator _di_IDropTarget()
	{
		_di_IDropTarget intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IDropTarget*(void) { return (IDropTarget*)&__IDropTarget; }
	#endif
	
};


class DELPHICLASS TAdvCodeListDropSource;
class PASCALIMPLEMENTATION TAdvCodeListDropSource : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
private:
	bool fNoAccept;
	
public:
	HRESULT __stdcall QueryContinueDrag(BOOL fEscapePressed, int grfKeyState);
	HRESULT __stdcall GiveFeedback(int dwEffect);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TAdvCodeListDropSource(void) : System::TInterfacedObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TAdvCodeListDropSource(void) { }
	#pragma option pop
	
private:
	void *__IDropSource;	/* IDropSource */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator _di_IDropSource()
	{
		_di_IDropSource intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IDropSource*(void) { return (IDropSource*)&__IDropSource; }
	#endif
	
};


class DELPHICLASS TSourceDataObject;
class PASCALIMPLEMENTATION TSourceDataObject : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
private:
	AnsiString textdata;
	AnsiString rtfdata;
	
public:
	__fastcall TSourceDataObject(const AnsiString stxt, const AnsiString srtf);
	HRESULT __stdcall GetData(const tagFORMATETC &formatetc, /* out */ tagSTGMEDIUM &medium);
	HRESULT __stdcall GetDataHere(const tagFORMATETC &formatetc, /* out */ tagSTGMEDIUM &medium);
	HRESULT __stdcall QueryGetData(const tagFORMATETC &formatetc);
	HRESULT __stdcall SetData(const tagFORMATETC &formatetc, tagSTGMEDIUM &medium, BOOL fRelease);
	HRESULT __stdcall GetCanonicalFormatEtc(const tagFORMATETC &formatetcIn, /* out */ tagFORMATETC &formatetcOut);
	HRESULT __stdcall EnumFormatEtc(int dwDirection, /* out */ _di_IEnumFORMATETC &enumFormatEtc);
	HRESULT __stdcall DAdvise(const tagFORMATETC &formatetc, int advf, const _di_IAdviseSink advSink, /* out */ int &dwConnection);
	HRESULT __stdcall DUnadvise(int dwConnection);
	HRESULT __stdcall EnumDAdvise(/* out */ _di_IEnumSTATDATA &enumAdvise);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TSourceDataObject(void) { }
	#pragma option pop
	
private:
	void *__IDataObject;	/* IDataObject */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator _di_IDataObject()
	{
		_di_IDataObject intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IDataObject*(void) { return (IDataObject*)&__IDataObject; }
	#endif
	
};


class DELPHICLASS TSourceEnumFormatEtc;
class PASCALIMPLEMENTATION TSourceEnumFormatEtc : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
protected:
	int FIndex;
	
public:
	HRESULT __stdcall Next(int CountRequested, /* out */ void *FormatEtcArray, PLongint PCountFetched);
	HRESULT __stdcall Skip(int count);
	HRESULT __stdcall Reset(void);
	HRESULT __stdcall Clone(/* out */ _di_IEnumFORMATETC &enumFmt);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TSourceEnumFormatEtc(void) : System::TInterfacedObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TSourceEnumFormatEtc(void) { }
	#pragma option pop
	
private:
	void *__IEnumFORMATETC;	/* IEnumFORMATETC */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator _di_IEnumFORMATETC()
	{
		_di_IEnumFORMATETC intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator IEnumFORMATETC*(void) { return (IEnumFORMATETC*)&__IEnumFORMATETC; }
	#endif
	
};


typedef tagFORMATETC TFormatEtcArray[20];

typedef TFormatEtcArray *PFormatEtcArray;

//-- var, const, procedure ---------------------------------------------------
static const Shortint deNone = 0x0;
static const Shortint deMove = 0x2;
static const Shortint deCopy = 0x1;
static const Shortint deLink = 0x4;
static const unsigned deScroll = 0x80000000;
static const Shortint ddGet = 0x1;
static const Shortint ddSet = 0x2;
static const Shortint tsGlobal = 0x1;
static const Shortint tsFile = 0x2;
static const Shortint tsStream = 0x4;
static const Shortint tsStorage = 0x8;
static const Shortint tsGDI = 0x10;
static const Shortint tsMetafilePict = 0x20;
static const Shortint tsEnhMetafile = 0x40;
static const Shortint tsNull = 0x0;
extern PACKAGE void __fastcall SetRTFAware(bool value);
extern PACKAGE int __fastcall StandardEffect(Classes::TShiftState Keys);
extern PACKAGE HRESULT __fastcall StartTextDoDragDrop(AnsiString stxt, AnsiString srtf, int dwOKEffects, int &dwEffect);

}	/* namespace Advcodelistdd */
using namespace Advcodelistdd;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advcodelistdd