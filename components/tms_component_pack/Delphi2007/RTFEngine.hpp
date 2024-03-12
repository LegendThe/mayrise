// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Rtfengine.pas' rev: 11.00

#ifndef RtfengineHPP
#define RtfengineHPP

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
#include <Imglist.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Rtfengine
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TFontItem;
class PASCALIMPLEMENTATION TFontItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FFaceName;
	void __fastcall SetFaceName(const AnsiString Value);
	AnsiString __fastcall GetCode();
	
public:
	__fastcall virtual TFontItem(Classes::TCollection* Collection);
	__fastcall virtual ~TFontItem(void);
	AnsiString __fastcall GetText();
	
__published:
	__property AnsiString FaceName = {read=FFaceName, write=SetFaceName};
	__property AnsiString Code = {read=GetCode};
};


class DELPHICLASS TFontCollection;
class PASCALIMPLEMENTATION TFontCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TFontItem* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TFontItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TFontItem* Value);
	
public:
	__fastcall TFontCollection(Classes::TComponent* AOwner);
	__property TFontItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TFontItem* __fastcall Add(void);
	HIDESBASE TFontItem* __fastcall Insert(int Index);
	int __fastcall IndexOf(AnsiString FaceName);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TFontCollection(void) { }
	#pragma option pop
	
};


class DELPHICLASS TFontTable;
class PASCALIMPLEMENTATION TFontTable : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	TFontCollection* FFonts;
	
public:
	__fastcall TFontTable(void);
	__fastcall virtual ~TFontTable(void);
	AnsiString __fastcall AddFont(Graphics::TFont* AFont)/* overload */;
	AnsiString __fastcall AddFont(AnsiString AFaceName)/* overload */;
	AnsiString __fastcall GetText();
	int __fastcall IndexOf(AnsiString FaceName);
	void __fastcall LoadFonts(AnsiString RTFString);
	__property TFontCollection* Fonts = {read=FFonts};
};


class DELPHICLASS TColorTable;
class PASCALIMPLEMENTATION TColorTable : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	Classes::TStringList* FColorList;
	
public:
	__fastcall TColorTable(void);
	__fastcall virtual ~TColorTable(void);
	int __fastcall AddColor(Graphics::TColor Clr);
	AnsiString __fastcall GetText();
	void __fastcall LoadColors(AnsiString RTFString);
	__property Classes::TStringList* Colors = {read=FColorList};
};


class DELPHICLASS TRTFHeader;
class PASCALIMPLEMENTATION TRTFHeader : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	TFontTable* FFontTable;
	TColorTable* FColorTable;
	int FViewKind;
	
public:
	__fastcall TRTFHeader(void);
	__fastcall virtual ~TRTFHeader(void);
	AnsiString __fastcall GetText();
	__property TFontTable* FontTable = {read=FFontTable};
	__property TColorTable* ColorTable = {read=FColorTable};
};


class DELPHICLASS TRTFEngine;
class PASCALIMPLEMENTATION TRTFEngine : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	TRTFHeader* FRTFHeader;
	bool FNewLine;
	bool FIsPreviouseKW;
	Graphics::TFont* FFont;
	AnsiString FText;
	bool FStartTable;
	int FTableWidth;
	bool FStartRow;
	bool FBold;
	bool FItalic;
	bool FUnderLine;
	Classes::TAlignment FHAlignment;
	int FFontSize;
	Graphics::TColor FForeColor;
	bool FStrikeOut;
	bool FStartBullet;
	int FBulletChar;
	AnsiString FBulletFont;
	Classes::TAlignment FTableAlignment;
	Imglist::TCustomImageList* FImages;
	int FCurrentCol;
	int FTotalCol;
	Classes::TStringList* FColColorList;
	Graphics::TColor FHighLightColor;
	bool FWithBorders;
	AnsiString __fastcall ReplaceCR(AnsiString s, bool dobreak);
	
protected:
	bool __fastcall RefreshPara(AnsiString S, int KWCode);
	void __fastcall AddInternal(AnsiString S, int KWCode = 0x0);
	
public:
	__fastcall TRTFEngine(void);
	__fastcall virtual ~TRTFEngine(void);
	void __fastcall AddFont(Graphics::TFont* AFont);
	void __fastcall AddFontName(AnsiString FontName);
	void __fastcall AddBold(bool Value);
	void __fastcall AddItalic(bool Value);
	void __fastcall AddUnderLine(bool Value);
	void __fastcall AddStrikeOut(bool Value);
	void __fastcall AddFontSize(int Value);
	void __fastcall AddText(AnsiString T);
	void __fastcall AddNewLine(void);
	void __fastcall AddTab(void);
	void __fastcall AddParagraph(int LeftInd = 0x2d0, int RightInd = 0x0);
	void __fastcall AddForeColor(Graphics::TColor Clr);
	void __fastcall AddHighLightColor(Graphics::TColor Clr);
	void __fastcall AddBackGroundColor(Graphics::TColor Clr);
	void __fastcall AddHAlignment(Classes::TAlignment Align);
	void __fastcall AddPageBreak(void);
	void __fastcall AddHTML(AnsiString S);
	void __fastcall AddRTF(AnsiString S);
	void __fastcall AddHyperLink(AnsiString Link, AnsiString Text, Graphics::TFont* AFont);
	AnsiString __fastcall AddPicture(Graphics::TPicture* Pic);
	void __fastcall AddSuperScript(void);
	void __fastcall AddSubScript(void);
	void __fastcall AddNormalScript(void);
	void __fastcall StartTable(Classes::TAlignment Align, bool WithBorders = true);
	void __fastcall EndTable(void);
	void __fastcall AddColumn(int ColWidth);
	void __fastcall StartRow(void);
	void __fastcall EndRow(void);
	void __fastcall AddRow(void);
	void __fastcall NextCell(void);
	void __fastcall ReDefColWidth(void);
	void __fastcall AddCellColor(Graphics::TColor Clr);
	void __fastcall StartBullet(AnsiString FontName = "Symbol", int CharNo = 0x7);
	void __fastcall NextBullet(void);
	void __fastcall EndBullet(void);
	void __fastcall SaveToFile(AnsiString FileName);
	AnsiString __fastcall GetText();
	void __fastcall GetBuffer(AnsiString &Buffer, AnsiString &FontTable, AnsiString &ColorTable);
	void __fastcall SaveToStream(Classes::TStream* st);
	__property bool Bold = {read=FBold, nodefault};
	__property bool Italic = {read=FItalic, nodefault};
	__property bool UnderLine = {read=FUnderLine, nodefault};
	__property bool StrikeOut = {read=FStrikeOut, nodefault};
	__property int FonSize = {read=FFontSize, nodefault};
	__property Classes::TAlignment HAlignment = {read=FHAlignment, nodefault};
	__property Graphics::TColor ForeColor = {read=FForeColor, nodefault};
	__property Graphics::TColor HighLightColor = {read=FHighLightColor, nodefault};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=FImages};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE AnsiString __fastcall RTFHeader();

}	/* namespace Rtfengine */
using namespace Rtfengine;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Rtfengine
