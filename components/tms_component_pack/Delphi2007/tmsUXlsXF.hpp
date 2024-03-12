// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tmsuxlsxf.pas' rev: 11.00

#ifndef TmsuxlsxfHPP
#define TmsuxlsxfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Tmsuxlsbaserecords.hpp>	// Pascal unit
#include <Tmsuxlsbaserecordlists.hpp>	// Pascal unit
#include <Tmsxlsmessages.hpp>	// Pascal unit
#include <Tmsuflxformats.hpp>	// Pascal unit
#include <Tmsuxlsstrings.hpp>	// Pascal unit
#include <Tmsuflxmessages.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tmsuxlsxf
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct TXFDat
{
	
public:
	Word Font;
	Word Format;
	Word Options4;
	Word Options6;
	Word Options8;
	Word Options10;
	Word Options12;
	unsigned Options14;
	Word Options18;
} ;
#pragma pack(pop)

typedef TXFDat *PXFDat;

class DELPHICLASS TXFRecord;
class DELPHICLASS TFontRecordList;
class DELPHICLASS TFormatRecordList;
class PASCALIMPLEMENTATION TXFRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	int __fastcall CellPattern(void);
	int __fastcall CellFgColorIndex(void);
	int __fastcall CellBgColorIndex(void);
	int __fastcall FontIndex(void);
	int __fastcall FormatIndex(void);
	int __fastcall GetActualFontIndex(const TFontRecordList* FontList);
	Tmsuflxformats::TFlxBorderStyle __fastcall GetBorderStyle(const int aPos, const Byte FirstBit);
	int __fastcall GetBorderColorIndex(const int aPos, const Byte FirstBit);
	Tmsuflxformats::TFlxBorderStyle __fastcall GetBorderStyleExt(const int aPos, const Byte FirstBit);
	int __fastcall GetBorderColorIndexExt(const int aPos, const Byte FirstBit);
	Tmsuflxformats::TFlxDiagonalBorder __fastcall DiagonalStyle(void);
	Tmsuflxformats::TVFlxAlignment __fastcall VAlign(void);
	Tmsuflxformats::THFlxAlignment __fastcall HAlign(void);
	void __fastcall FillMisc(/* out */ bool &Locked, /* out */ bool &Hidden, /* out */ int &Parent, /* out */ bool &WrapText, /* out */ bool &ShrinkToFit, /* out */ Byte &Rotation, /* out */ Byte &Indent);
	__fastcall TXFRecord(const Tmsuflxformats::TFlxFormat &Fmt, const TFontRecordList* FontList, const TFormatRecordList* FormatList);
	Tmsuflxformats::TFlxFormat __fastcall FlxFormat(const TFontRecordList* FontList, const TFormatRecordList* FormatList);
	void __fastcall FillUsedColors(const Tmsuflxmessages::BooleanArray UsedColors, const TFontRecordList* FontList);
	int __fastcall Rotation(void);
	bool __fastcall WrapText(void);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TXFRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TXFRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TXFRecordList;
class PASCALIMPLEMENTATION TXFRecordList : public Tmsuxlsbaserecordlists::TBaseRecordList 
{
	typedef Tmsuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TXFRecord* operator[](int index) { return Items[index]; }
	
private:
	TXFRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const TXFRecord* Value);
	
public:
	__property TXFRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TXFRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TXFRecord* aRecord);
	bool __fastcall FindFormat(const TXFRecord* XF, /* out */ int &Index);
	Tmsuflxmessages::BooleanArray __fastcall GetUsedColors(const int ColorCount, const TFontRecordList* FontList);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TXFRecordList(void)/* overload */ : Tmsuxlsbaserecordlists::TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TXFRecordList(void) { }
	#pragma option pop
	
};


#pragma pack(push,1)
struct TFontDat
{
	
public:
	Word Height;
	Word GrBit;
	Word ColorIndex;
	Word BoldStyle;
	Word SuperSub;
	Byte Underline;
	Byte Family;
	Byte CharSet;
	Byte Reserved;
} ;
#pragma pack(pop)

typedef TFontDat *PFontDat;

class DELPHICLASS TFontRecord;
class PASCALIMPLEMENTATION TFontRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	WideString __fastcall Name();
	int __fastcall Height(void);
	int __fastcall ColorIndex(void);
	Byte __fastcall Family(void);
	Byte __fastcall Charset(void);
	Tmsuflxformats::SetOfTFlxFontStyle __fastcall Style(void);
	Tmsuflxformats::TFlxUnderline __fastcall Underline(void);
	__fastcall TFontRecord(const Tmsuflxformats::TFlxFont &aFont);
	Tmsuflxformats::TFlxFont __fastcall FlxFont();
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TFontRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TFontRecord(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TFontRecordList : public Tmsuxlsbaserecordlists::TBaseRecordList 
{
	typedef Tmsuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	TFontRecord* operator[](int index) { return Items[index]; }
	
private:
	TFontRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const TFontRecord* Value);
	
public:
	__property TFontRecord* Items[int index] = {read=GetItems, write=SetItems/*, default*/};
	HIDESBASE int __fastcall Add(TFontRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TFontRecord* aRecord);
	int __fastcall AddFont(const Tmsuflxformats::TFlxFont &aFont);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TFontRecordList(void)/* overload */ : Tmsuxlsbaserecordlists::TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TFontRecordList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TStyleRecord;
class PASCALIMPLEMENTATION TStyleRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TStyleRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TStyleRecord(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFormatRecord;
class PASCALIMPLEMENTATION TFormatRecord : public Tmsuxlsbaserecords::TBaseRecord 
{
	typedef Tmsuxlsbaserecords::TBaseRecord inherited;
	
public:
	int __fastcall FormatId(void);
	WideString __fastcall Value();
	__fastcall TFormatRecord(const WideString Fmt, const int NewID);
public:
	#pragma option push -w-inl
	/* TBaseRecord.Create */ inline __fastcall virtual TFormatRecord(const Word aId, const Tmsxlsmessages::PArrayOfByte aData, const int aDataSize) : Tmsuxlsbaserecords::TBaseRecord(aId, aData, aDataSize) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBaseRecord.Destroy */ inline __fastcall virtual ~TFormatRecord(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TFormatRecordList : public Tmsuxlsbaserecordlists::TBaseRecordList 
{
	typedef Tmsuxlsbaserecordlists::TBaseRecordList inherited;
	
public:
	WideString operator[](int index) { return Format[index]; }
	
private:
	WideString __fastcall GetFormat(int FormatId);
	TFormatRecord* __fastcall GetItems(int index);
	void __fastcall SetItems(int index, const TFormatRecord* Value);
	
public:
	__property TFormatRecord* Items[int index] = {read=GetItems, write=SetItems};
	HIDESBASE int __fastcall Add(TFormatRecord* aRecord);
	HIDESBASE void __fastcall Insert(int Index, TFormatRecord* aRecord);
	
private:
	bool Sorted;
	
public:
	bool __fastcall Find(const int aItem, int &Index);
	HIDESBASE void __fastcall Sort(void);
	__property WideString Format[int index] = {read=GetFormat/*, default*/};
	int __fastcall AddFormat(const WideString Fmt);
public:
	#pragma option push -w-inl
	/* TObjectList.Create */ inline __fastcall TFormatRecordList(void)/* overload */ : Tmsuxlsbaserecordlists::TBaseRecordList() { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TFormatRecordList(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE WideString __fastcall XlsBuiltInFormats(const int z);

}	/* namespace Tmsuxlsxf */
using namespace Tmsuxlsxf;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tmsuxlsxf