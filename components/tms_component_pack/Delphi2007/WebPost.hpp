// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Webpost.pas' rev: 11.00

#ifndef WebpostHPP
#define WebpostHPP

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
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wininet.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Webpost
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TWebPostError)(System::TObject* Sender, AnsiString ErrorStr, int ErrorCode);

class DELPHICLASS TWebPostItem;
class PASCALIMPLEMENTATION TWebPostItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FValue;
	AnsiString FName;
	
public:
	__fastcall virtual TWebPostItem(Classes::TCollection* Collection);
	
__published:
	__property AnsiString Name = {read=FName, write=FName};
	__property AnsiString Value = {read=FValue, write=FValue};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TWebPostItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TWebPostItems;
class PASCALIMPLEMENTATION TWebPostItems : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
private:
	Classes::TComponent* fOwner;
	HIDESBASE TWebPostItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TWebPostItem* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TWebPostItems(Classes::TComponent* aOwner);
	HIDESBASE TWebPostItem* __fastcall Add(void);
	HIDESBASE TWebPostItem* __fastcall Insert(int index);
	__property TWebPostItem* Items[int Index] = {read=GetItem, write=SetItem};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TWebPostItems(void) { }
	#pragma option pop
	
};


class DELPHICLASS TWebPost;
class PASCALIMPLEMENTATION TWebPost : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FServer;
	AnsiString FAction;
	TWebPostItems* FItems;
	AnsiString FPostResult;
	TWebPostError FOnError;
	int FPort;
	AnsiString FAgent;
	int FTimeOut;
	bool FWaitResponse;
	AnsiString FReferer;
	void __fastcall SetItems(const TWebPostItems* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TWebPost(Classes::TComponent* AOwner);
	__fastcall virtual ~TWebPost(void);
	bool __fastcall Execute(void);
	void __fastcall Error(void);
	void __fastcall SaveToFile(AnsiString fn);
	__property AnsiString PostResult = {read=FPostResult};
	
__published:
	__property AnsiString Agent = {read=FAgent, write=FAgent};
	__property int Port = {read=FPort, write=FPort, nodefault};
	__property AnsiString Server = {read=FServer, write=FServer};
	__property AnsiString Action = {read=FAction, write=FAction};
	__property TWebPostItems* Items = {read=FItems, write=SetItems};
	__property AnsiString Referer = {read=FReferer, write=FReferer};
	__property int TimeOut = {read=FTimeOut, write=FTimeOut, default=0};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property bool WaitResponse = {read=FWaitResponse, write=FWaitResponse, default=1};
	__property TWebPostError OnError = {read=FOnError, write=FOnError};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Webpost */
using namespace Webpost;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Webpost
