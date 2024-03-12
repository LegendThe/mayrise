// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsset.pas' rev: 11.00

#ifndef AdssetHPP
#define AdssetHPP

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
#include <Ace.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsset
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdsServerType { stADS_REMOTE, stADS_LOCAL, stADS_AIS };
#pragma option pop

typedef Set<TAdsServerType, stADS_REMOTE, stADS_AIS>  TAdsServerTypes;

class DELPHICLASS AdsError;
class PASCALIMPLEMENTATION AdsError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	__fastcall AdsError(int ulRetCode, bool unusedvar);
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall AdsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall AdsError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall AdsError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall AdsError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall AdsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall AdsError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall AdsError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~AdsError(void) { }
	#pragma option pop
	
};


class DELPHICLASS AdsSettingsError;
class PASCALIMPLEMENTATION AdsSettingsError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	__fastcall AdsSettingsError(AnsiString acMsg);
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall AdsSettingsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall AdsSettingsError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall AdsSettingsError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall AdsSettingsError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall AdsSettingsError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall AdsSettingsError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall AdsSettingsError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~AdsSettingsError(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdsSettings;
class PASCALIMPLEMENTATION TAdsSettings : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
protected:
	AnsiString FDateFormat;
	Shortint FNumDecimals;
	bool FShowDeleted;
	TAdsServerTypes FAdsServerTypes;
	Shortint FNumCachedTables;
	Shortint FNumCachedCursors;
	AnsiString FSavedDelphiDateFormat;
	bool FSetDelphiDate;
	virtual AnsiString __fastcall GetDateFormat();
	virtual void __fastcall SetDateFormat(AnsiString strDate);
	virtual void __fastcall SetNumDecimals(Shortint usNewDecimals);
	virtual void __fastcall SetShowDeleted(bool bShowDeleted);
	virtual int __fastcall GetLastError(void);
	virtual short __fastcall GetNumOpenTables(void);
	virtual void __fastcall SetAdsServerTypes(TAdsServerTypes Value);
	virtual void __fastcall SetNumCachedTables(Shortint Value);
	virtual void __fastcall SetNumCachedCursors(Shortint Value);
	virtual void __fastcall SetFSetDelphiDate(bool Value);
	
public:
	__fastcall virtual TAdsSettings(Classes::TComponent* Owner);
	__fastcall virtual ~TAdsSettings(void);
	__property int LastError = {read=GetLastError, nodefault};
	__property short NumOpenTables = {read=GetNumOpenTables, nodefault};
	
__published:
	__property AnsiString DateFormat = {read=GetDateFormat, write=SetDateFormat};
	__property Shortint NumDecimals = {read=FNumDecimals, write=SetNumDecimals, nodefault};
	__property bool SetDelphiDate = {read=FSetDelphiDate, write=SetFSetDelphiDate, nodefault};
	__property bool ShowDeleted = {read=FShowDeleted, write=SetShowDeleted, nodefault};
	__property TAdsServerTypes AdsServerTypes = {read=FAdsServerTypes, write=SetAdsServerTypes, nodefault};
	__property Shortint NumCachedTables = {read=FNumCachedTables, write=SetNumCachedTables, nodefault};
	__property Shortint NumCachedCursors = {read=FNumCachedCursors, write=SetNumCachedCursors, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TAdsSettings* goAdsSettings;
extern PACKAGE void __fastcall (*ShowMessageProc)(const AnsiString str);

}	/* namespace Adsset */
using namespace Adsset;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsset
