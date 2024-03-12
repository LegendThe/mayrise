// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Alvutil.pas' rev: 11.00

#ifndef AlvutilHPP
#define AlvutilHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Alvutil
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TFileStringList;
class PASCALIMPLEMENTATION TFileStringList : public Classes::TStringList 
{
	typedef Classes::TStringList inherited;
	
private:
	int fp;
	AnsiString cache;
	bool __fastcall GetEOF(void);
	
public:
	void __fastcall Reset(void);
	void __fastcall ReadLn(AnsiString &s);
	void __fastcall Write(AnsiString s);
	void __fastcall WriteLn(AnsiString s);
	__property bool Eof = {read=GetEOF, nodefault};
public:
	#pragma option push -w-inl
	/* TStringList.Destroy */ inline __fastcall virtual ~TFileStringList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TFileStringList(void) : Classes::TStringList() { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall StringToOem(AnsiString &s);
extern PACKAGE void __fastcall OemToString(AnsiString &s);
extern PACKAGE AnsiString __fastcall DoubleToSingleChar(char ch, const AnsiString s);
extern PACKAGE void __fastcall LineFeedsToCSV(AnsiString &s);
extern PACKAGE void __fastcall CSVToLineFeeds(AnsiString &s);
extern PACKAGE AnsiString __fastcall UpStr(AnsiString s);
extern PACKAGE bool __fastcall Matchstr(AnsiString s1, AnsiString s2);
extern PACKAGE bool __fastcall Matches(char * s0a, char * s1a);
extern PACKAGE AnsiString __fastcall LfToFile(AnsiString s);
extern PACKAGE AnsiString __fastcall FileToLf(AnsiString s, bool multiline);
extern PACKAGE AnsiString __fastcall GetNextLine(AnsiString &s, bool multiline);
extern PACKAGE int __fastcall LinesInText(AnsiString s, bool multiline);
extern PACKAGE AnsiString __fastcall RectString(const Types::TRect &r);
extern PACKAGE AnsiString __fastcall FixDecimalSeparator(AnsiString s);
extern PACKAGE System::TDateTime __fastcall GetNextDate(System::TDateTime d, Word dye, Word dmo, Word dda, System::TDateTime dtv);
extern PACKAGE int __fastcall SinglePos(char p, AnsiString s);
extern PACKAGE int __fastcall NumSingleChar(char p, AnsiString s);
extern PACKAGE void __fastcall DrawProgress(Graphics::TCanvas* Canvas, const Types::TRect &r, Graphics::TColor Color1, Graphics::TColor FontColor1, Graphics::TColor Color2, Graphics::TColor FontColor2, int Pos, AnsiString ValueFormat, bool ShowValue = true);

}	/* namespace Alvutil */
using namespace Alvutil;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Alvutil
