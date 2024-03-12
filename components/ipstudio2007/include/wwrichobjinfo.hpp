// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwrichobjinfo.pas' rev: 11.00

#ifndef WwrichobjinfoHPP
#define WwrichobjinfoHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Richedit.hpp>	// Pascal unit
#include <Wwrichole.hpp>	// Pascal unit
#include <Olectnrs.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Oledlg.hpp>	// Pascal unit
#include <Oleconst.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwrichobjinfo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwOleUIObjInfo;
class PASCALIMPLEMENTATION TwwOleUIObjInfo : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
private:
	Wwriched::TwwCustomRichEdit* FRichEdit;
	#pragma pack(push,1)
	Wwrichole::TREOBJECT FReObject;
	#pragma pack(pop)
	
public:
	__fastcall TwwOleUIObjInfo(Wwriched::TwwCustomRichEdit* RichEdit, const Wwrichole::TREOBJECT &ReObject);
	HRESULT __stdcall GetObjectInfo(int dwObject, int &dwObjSize, char * &lpszLabel, char * &lpszType, char * &lpszShortType, char * &lpszLocation);
	HRESULT __stdcall GetConvertInfo(int dwObject, GUID &ClassID, Word &wFormat, GUID &ConvertDefaultClassID, System::PGUID &lpClsidExclude, int &cClsidExclude);
	HRESULT __stdcall ConvertObject(int dwObject, const GUID &clsidNew);
	HRESULT __stdcall GetViewInfo(int dwObject, unsigned &hMetaPict, int &dvAspect, int &nCurrentScale);
	HRESULT __stdcall SetViewInfo(int dwObject, unsigned hMetaPict, int dvAspect, int nCurrentScale, BOOL bRelativeToOrig);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwOleUIObjInfo(void) { }
	#pragma option pop
	
private:
	void *__IOleUIObjInfo;	/* IOleUIObjInfo */
	
public:
	operator IOleUIObjInfo*(void) { return (IOleUIObjInfo*)&__IOleUIObjInfo; }
	
};


class DELPHICLASS TwwOleUILinkInfo;
class PASCALIMPLEMENTATION TwwOleUILinkInfo : public System::TInterfacedObject 
{
	typedef System::TInterfacedObject inherited;
	
private:
	#pragma pack(push,1)
	Wwrichole::TREOBJECT FReObject;
	#pragma pack(pop)
	Wwriched::TwwCustomRichEdit* FRichEdit;
	_di_IOleLink FOleLink;
	
public:
	__fastcall TwwOleUILinkInfo(Wwriched::TwwCustomRichEdit* RichEdit, const Wwrichole::TREOBJECT &ReObject);
	int __stdcall GetNextLink(int dwLink);
	HRESULT __stdcall SetLinkUpdateOptions(int dwLink, int dwUpdateOpt);
	HRESULT __stdcall GetLinkUpdateOptions(int dwLink, int &dwUpdateOpt);
	HRESULT __stdcall SetLinkSource(int dwLink, char * pszDisplayName, int lenFileName, int &chEaten, BOOL fValidateSource);
	HRESULT __stdcall GetLinkSource(int dwLink, char * &pszDisplayName, int &lenFileName, char * &pszFullLinkType, char * &pszShortLinkType, BOOL &fSourceAvailable, BOOL &fIsSelected);
	HRESULT __stdcall OpenLinkSource(int dwLink);
	HRESULT __stdcall UpdateLink(int dwLink, BOOL fErrorMessage, BOOL fErrorAction);
	HRESULT __stdcall CancelLink(int dwLink);
	HRESULT __stdcall GetLastUpdate(int dwLink, _FILETIME &LastUpdate);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TwwOleUILinkInfo(void) { }
	#pragma option pop
	
private:
	void *__IOleUILinkInfo;	/* IOleUILinkInfo */
	
public:
	operator IOleUILinkInfo*(void) { return (IOleUILinkInfo*)&__IOleUILinkInfo; }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwrichobjinfo */
using namespace Wwrichobjinfo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwrichobjinfo
