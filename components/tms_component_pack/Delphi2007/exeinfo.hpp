// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Exeinfo.pas' rev: 11.00

#ifndef ExeinfoHPP
#define ExeinfoHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Exeinfo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TExeInfo;
class PASCALIMPLEMENTATION TExeInfo : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FCompanyName;
	AnsiString FFileDescription;
	AnsiString FFileVersion;
	AnsiString FInternalName;
	AnsiString FLegalCopyright;
	AnsiString FLegalTradeMark;
	AnsiString FOriginalFileName;
	AnsiString FProductName;
	AnsiString FProductVersion;
	AnsiString FComments;
	AnsiString FComputerName;
	AnsiString FOsName;
	AnsiString FWindowsDir;
	AnsiString FSystemDir;
	AnsiString FTempDir;
	int FFileFlags;
	int FFileOS;
	int FFileType;
	System::TDateTime FFileCreation;
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetFileVersionInt(void);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall GetVersionInfo(void);
	virtual AnsiString __fastcall GetComputerName();
	virtual void __fastcall SetComputerName(AnsiString Name);
	AnsiString __fastcall GetWinDir();
	AnsiString __fastcall GetSysDir();
	AnsiString __fastcall GetTempDir();
	
public:
	void __fastcall GetVersionInfoOfApp(const AnsiString AAppName);
	__fastcall virtual TExeInfo(Classes::TComponent* AOwner);
	__property int FileFlags = {read=FFileFlags, nodefault};
	__property int FileOS = {read=FFileOS, nodefault};
	__property int FileType = {read=FFileType, nodefault};
	__property System::TDateTime FileCreation = {read=FFileCreation};
	virtual AnsiString __fastcall GetOperatingSystem();
	__property int FileVersionInt = {read=GetFileVersionInt, nodefault};
	
__published:
	__property AnsiString CompanyName = {read=FCompanyName, write=FCompanyName, stored=false};
	__property AnsiString FileDescription = {read=FFileDescription, write=FFileDescription, stored=false};
	__property AnsiString FileVersion = {read=FFileVersion, write=FFileVersion, stored=false};
	__property AnsiString InternalName = {read=FInternalName, write=FInternalName, stored=false};
	__property AnsiString LegalCopyright = {read=FLegalCopyright, write=FLegalCopyright, stored=false};
	__property AnsiString LegalTradeMark = {read=FLegalTradeMark, write=FLegalTradeMark, stored=false};
	__property AnsiString OriginalFileName = {read=FOriginalFileName, write=FOriginalFileName, stored=false};
	__property AnsiString ProductName = {read=FProductName, write=FProductName, stored=false};
	__property AnsiString ProductVersion = {read=FProductVersion, write=FProductVersion, stored=false};
	__property AnsiString Comments = {read=FComments, write=FComments, stored=false};
	__property AnsiString ComputerName = {read=GetComputerName, write=SetComputerName, stored=false};
	__property AnsiString OSName = {read=GetOperatingSystem, write=FOsName, stored=false};
	__property AnsiString WindowsDir = {read=GetWinDir, write=FWindowsDir, stored=false};
	__property AnsiString SystemDir = {read=GetSysDir, write=FSystemDir, stored=false};
	__property AnsiString TempDir = {read=GetTempDir, write=FTempDir, stored=false};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TExeInfo(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x2;
static const Shortint REL_VER = 0x4;
static const Shortint BLD_VER = 0x0;

}	/* namespace Exeinfo */
using namespace Exeinfo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Exeinfo
