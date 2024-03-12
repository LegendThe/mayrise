// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwrtfconverter.pas' rev: 11.00

#ifndef WwrtfconverterHPP
#define WwrtfconverterHPP

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
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwrtfconverter
{
//-- type declarations -------------------------------------------------------
typedef short TwwFileCodeError;

typedef int __stdcall (*TwwConvertCallbackOut)(int cchBuff, int nPercent);

typedef int __stdcall (*TwwConvertCallbackIn)(int rgfOptions, int p2);

typedef HRESULT __stdcall (*TwwInitConverter32)(unsigned hwnd, WideChar * szModule);

typedef void __stdcall (*TwwUninitConverter)(void);

typedef short __stdcall (*TwwIsFormatCorrect32)(unsigned ghszFile, unsigned ghszClass);

typedef short __stdcall (*TwwForeignToRtf32)(unsigned hFile, _di_IStorage pStorage, unsigned hBuffer, unsigned hClass, unsigned hSubset, TwwConvertCallbackOut OutFunction);

typedef short __stdcall (*TwwRtfToForeign32)(unsigned hFile, _di_IStorage pStorage, unsigned hBuffer, unsigned hClass, TwwConvertCallbackIn InFunction);

typedef void * __stdcall (*TwwRegisterApp)(unsigned lFlags, void * lpFuture);

typedef int __stdcall (*TwwCchFetchLpszError)(int fce, WideChar * lpszError, int cb);

typedef void __stdcall (*TwwGetReadNames)(unsigned haszClass, unsigned haszDescrip, unsigned haszExt);

typedef void __stdcall (*TwwGetWriteNames)(unsigned haszClass, unsigned haszDescrip, unsigned haszExt);

typedef int __stdcall (*TwwRegisterConverter)(unsigned hkeyRoot);

class DELPHICLASS TwwRTFConverter;
class PASCALIMPLEMENTATION TwwRTFConverter : public System::TObject 
{
	typedef System::TObject inherited;
	
protected:
	unsigned FLibrary;
	TwwInitConverter32 InitConverter32;
	TwwUninitConverter UninitConverter;
	TwwIsFormatCorrect32 IsFormatCorrect32;
	TwwForeignToRtf32 ForeignToRtf32;
	TwwRtfToForeign32 RtfToForeign32;
	TwwRegisterApp RegisterApp;
	TwwCchFetchLpszError CchFetchLpszError;
	TwwGetReadNames GetReadNames;
	TwwGetWriteNames GetWriteNames;
	TwwRegisterConverter RegisterConverter;
	void __fastcall LoadLibrary(HWND hwnd, AnsiString libpath);
	void __fastcall UnloadLibrary(void);
	
public:
	__fastcall TwwRTFConverter(HWND hwnd, AnsiString libpath);
	__fastcall virtual ~TwwRTFConverter(void);
	bool __fastcall IsKnownFormat(AnsiString FilePath);
	short __fastcall ForeignToRTF(Wwriched::TwwCustomRichEdit* richedit, AnsiString filepath, AnsiString formatClass = "");
	short __fastcall RTFToForeign(Wwriched::TwwCustomRichEdit* richedit, AnsiString filepath, AnsiString formatclass = "");
	AnsiString __fastcall GetErrorMessage(short ErrorCode);
};


class DELPHICLASS TwwRtfConverterList;
class PASCALIMPLEMENTATION TwwRtfConverterList : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	Classes::TStringList* RawDescription;
	
public:
	Classes::TStringList* LibPath;
	Classes::TStringList* Description;
	Classes::TStringList* FormatClass;
	Classes::TStringList* Filters;
	AnsiString FilterList;
	__fastcall TwwRtfConverterList(bool import);
	__fastcall virtual ~TwwRtfConverterList(void);
	void __fastcall GetConverterList(HKEY regRoot, AnsiString regPath, AnsiString appName, bool import);
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint wwfceTrue = 0x1;
static const Shortint wwfceNoErr = 0x0;
static const Shortint wwfceOpenInFileErr = -1;
static const Shortint wwfceReadErr = -2;
static const Shortint wwfceWriteErr = -4;
static const Shortint wwfceInvalidFile = -5;
static const Shortint wwfceNoMemory = -8;
static const Shortint wwfceOpenOutFileErr = -12;
static const Shortint wwfceUserCancel = -13;
static const Shortint wwfceWrongFileType = -14;

}	/* namespace Wwrtfconverter */
using namespace Wwrtfconverter;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwrtfconverter
