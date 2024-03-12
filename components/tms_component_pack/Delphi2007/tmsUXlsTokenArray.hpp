// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlstokenarray.pas' rev: 11.00

#ifndef TmsuxlstokenarrayHPP
#define TmsuxlstokenarrayHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlstokenarray
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS ETokenException;
class PASCALIMPLEMENTATION ETokenException : public Tmsxlsmessages::EExcelException 
{
	typedef Tmsxlsmessages::EExcelException inherited;
	
public:
	int Token;
	__fastcall ETokenException(const int aToken, const int aDummy1, const int ADummy2);
public:
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall ETokenException(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Tmsxlsmessages::EExcelException(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall ETokenException(int Ident)/* overload */ : Tmsxlsmessages::EExcelException(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall ETokenException(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Tmsxlsmessages::EExcelException(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall ETokenException(const AnsiString Msg, int AHelpContext) : Tmsxlsmessages::EExcelException(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall ETokenException(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Tmsxlsmessages::EExcelException(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall ETokenException(int Ident, int AHelpContext)/* overload */ : Tmsxlsmessages::EExcelException(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall ETokenException(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Tmsxlsmessages::EExcelException(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~ETokenException(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall UXlsTokenArray_ArrangeInsertRowsAndCols(const Tmsxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const int InsRowPos, const int InsRowOffset, const int CopyRowOffset, const int InsColPos, const int InsColOffset, const int CopyColOffset, const Tmsxlsmessages::TSheetInfo &SheetInfo, const bool AllowedAbsolute);
extern PACKAGE void __fastcall UXlsTokenArray_ArrangeInsertSheets(const Tmsxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const Tmsxlsmessages::TSheetInfo &SheetInfo);
extern PACKAGE void __fastcall UXlsTokenArray_ArrangeSharedFormulas(const Tmsxlsmessages::PArrayOfByte Data, const int atPos, const int afPos, const int SharedRow, const int SharedCol);

}	/* namespace Tmsuxlstokenarray */
using namespace Tmsuxlstokenarray;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlstokenarray
