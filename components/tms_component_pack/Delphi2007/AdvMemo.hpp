// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmemo.pas' rev: 11.00

#ifndef AdvmemoHPP
#define AdvmemoHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Rtfengine.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Printers.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Advfinddialogform.hpp>	// Pascal unit
#include <Advreplacedialogform.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmemo
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TBorderType { btRaised, btLowered, btFlatRaised, btFlatLowered };
#pragma option pop

#pragma option push -b-
enum TStyleType { stKeyword, stBracket, stSymbol };
#pragma option pop

#pragma option push -b-
enum TAdvMemoStyle { msOffice2003Blue, msOffice2003Olive, msOffice2003Silver, msOffice2003Classic, msOffice2007Luna, msOffice2007Obsidian, msWindowsXP, msWhidbey, msCustom, msOffice2007Silver, msWindowsVista, msWindows7, msTerminal, msOffice2010Blue, msOffice2010Silver, msOffice2010Black };
#pragma option pop

#pragma option push -b-
enum TTokenType { ttNone, ttVar, ttProp, ttEvent, ttMethod, ttFunc, ttProc };
#pragma option pop

#pragma option push -b-
enum TAutoHintParameters { hpAuto, hpManual, hpNone };
#pragma option pop

#pragma option push -b-
enum TAutoHintParameterPosition { hpBelowCode, hpAboveCode };
#pragma option pop

#pragma option push -b-
enum TRegionType { rtOpen, rtClosed, rtFile, rtIgnore };
#pragma option pop

typedef void __fastcall (__closure *TAllowEvent)(System::TObject* Sender, bool &Allow);

typedef void __fastcall (__closure *TAdvMemoFileDropEvent)(System::TObject* Sender, AnsiString FileName, bool &DefaultHandler);

typedef void __fastcall (__closure *TAdvMemoScrollHintEvent)(System::TObject* Sender, int ARow, AnsiString &hintstr);

typedef void __fastcall (__closure *TCustomizeContextMenuEvent)(System::TObject* Sender, int CurX, int CurY, Menus::TPopupMenu* ContextMenu);

typedef void __fastcall (__closure *TCustomContextMenuClickEvent)(System::TObject* Sender, Menus::TMenuItem* MenuItem);

typedef int TCommand;

#pragma pack(push,4)
struct TCellSize
{
	
public:
	int W;
	int H;
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TCellPos
{
	
public:
	int X;
	int Y;
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TFullPos
{
	
public:
	int LineNo;
	int Pos;
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TStyle
{
	
public:
	bool isComment;
	bool isBracket;
	bool isnumber;
	bool iskeyWord;
	bool isdelimiter;
	bool isURL;
	bool isHighlight;
	char EndBracket;
	char StartBracket;
	int index;
} ;
#pragma pack(pop)

#pragma option push -b-
enum TMemoClipboardFormat { cfText, cfRTF, cfHTML };
#pragma option pop

typedef Set<TMemoClipboardFormat, cfText, cfHTML>  TMemoClipboardFormats;

class DELPHICLASS TAdvAutoform;
class PASCALIMPLEMENTATION TAdvAutoform : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
private:
	bool FShadow;
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__property bool Shadow = {read=FShadow, write=FShadow, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvAutoform(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvAutoform(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvAutoform(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvAutoform(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvHintForm;
class PASCALIMPLEMENTATION TAdvHintForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
protected:
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	DYNAMIC void __fastcall Paint(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	AnsiString part1;
	AnsiString part2;
	AnsiString part3;
	Byte Active;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvHintForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvHintForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvHintForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvHintForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TIntList;
class PASCALIMPLEMENTATION TIntList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	int operator[](int index) { return Items[index]; }
	
private:
	void __fastcall SetInteger(int Index, int Value);
	int __fastcall GetInteger(int Index);
	
public:
	__fastcall TIntList(void);
	HIDESBASE int __fastcall IndexOf(int Value);
	__property int Items[int index] = {read=GetInteger, write=SetInteger/*, default*/};
	HIDESBASE void __fastcall Add(int Value);
	HIDESBASE void __fastcall Insert(int Index, int Value);
	HIDESBASE void __fastcall Delete(int Index);
public:
	#pragma option push -w-inl
	/* TList.Destroy */ inline __fastcall virtual ~TIntList(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAutoCompletionListBox;
class PASCALIMPLEMENTATION TAutoCompletionListBox : public Stdctrls::TListBox 
{
	typedef Stdctrls::TListBox inherited;
	
private:
	Graphics::TBitmap* FBmpVar;
	Graphics::TBitmap* FBmpProp;
	Graphics::TBitmap* FBmpEvent;
	Graphics::TBitmap* FBmpProc;
	Graphics::TBitmap* FBmpMethod;
	bool FShowImages;
	Controls::TImageList* FImages;
	Graphics::TColor FColorVar;
	Graphics::TColor FColorProp;
	Graphics::TColor FColorIdentifier;
	Graphics::TColor FColorFunc;
	Graphics::TColor FColorEvent;
	Graphics::TColor FColorProc;
	Graphics::TColor FColorMethod;
	int FIdentifierWidth;
	void __fastcall SetImages(Controls::TImageList* IL);
	
protected:
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	__property int IdentifierWidth = {read=FIdentifierWidth, nodefault};
	
public:
	int __fastcall AutoAdaptWidth(void);
	__fastcall virtual TAutoCompletionListBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TAutoCompletionListBox(void);
	__property Controls::TImageList* ImageList = {read=FImages, write=SetImages};
	
__published:
	__property bool ShowImages = {read=FShowImages, write=FShowImages, default=0};
	__property Graphics::TColor ColorVar = {read=FColorVar, write=FColorVar, nodefault};
	__property Graphics::TColor ColorProp = {read=FColorProp, write=FColorProp, nodefault};
	__property Graphics::TColor ColorEvent = {read=FColorEvent, write=FColorEvent, nodefault};
	__property Graphics::TColor ColorMethod = {read=FColorMethod, write=FColorMethod, nodefault};
	__property Graphics::TColor ColorFunc = {read=FColorFunc, write=FColorFunc, nodefault};
	__property Graphics::TColor ColorProc = {read=FColorProc, write=FColorProc, nodefault};
	__property Graphics::TColor ColorIdentifier = {read=FColorIdentifier, write=FColorIdentifier, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAutoCompletionListBox(HWND ParentWindow) : Stdctrls::TListBox(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TLineModifiedState { lmUnmodified, lmModified, lmSaved };
#pragma option pop

class DELPHICLASS TLineProp;
class PASCALIMPLEMENTATION TLineProp : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	System::TObject* FObject;
	TIntList* FErrStart;
	TIntList* FErrLen;
	bool FExpanded;
	int FLastChildOfParents;
	bool FHasParent;
	bool FHasChildren;
	void __fastcall SetExpanded(const bool Value);
	bool __fastcall GetLastChild(void);
	void __fastcall SetLastChildOfParents(int Value);
	
public:
	bool BreakPoint;
	bool Executable;
	TLineModifiedState Modified;
	int ImageIndex;
	bool Bookmark;
	int BookmarkIndex;
	TStyle Style;
	bool CachedStyle;
	bool Wrapped;
	__fastcall TLineProp(void);
	__fastcall virtual ~TLineProp(void);
	bool __fastcall HasErrorInfo(void);
	void __fastcall CreateErrorInfo(void);
	__property TIntList* ErrStart = {read=FErrStart, write=FErrStart};
	__property bool HasParent = {read=FHasParent, write=FHasParent, nodefault};
	__property bool HasChildren = {read=FHasChildren, write=FHasChildren, nodefault};
	__property bool Expanded = {read=FExpanded, write=SetExpanded, nodefault};
	__property bool LastChild = {read=GetLastChild, nodefault};
	__property int LastChildOfParents = {read=FLastChildOfParents, write=SetLastChildOfParents, nodefault};
};


typedef void __fastcall (__closure *TOnChangeEvent)(System::TObject* Sender, int ChangeMsg);

class DELPHICLASS TCodeFolding;
class PASCALIMPLEMENTATION TCodeFolding : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	Graphics::TBitmap* FExpandGlyph;
	Graphics::TBitmap* FCollapsedGlyph;
	Graphics::TColor FLineColor;
	TOnChangeEvent FOnChange;
	void __fastcall SetCollapsedGlyph(const Graphics::TBitmap* Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetExpandGlyph(const Graphics::TBitmap* Value);
	void __fastcall SetLineColor(const Graphics::TColor Value);
	
protected:
	void __fastcall Changed(int ChangeMsg);
	__property TOnChangeEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TCodeFolding(void);
	__fastcall virtual ~TCodeFolding(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, nodefault};
	__property Graphics::TColor LineColor = {read=FLineColor, write=SetLineColor, nodefault};
	__property Graphics::TBitmap* ExpandGlyph = {read=FExpandGlyph, write=SetExpandGlyph};
	__property Graphics::TBitmap* CollapsedGlyph = {read=FCollapsedGlyph, write=SetCollapsedGlyph};
};


class DELPHICLASS THintParameter;
class PASCALIMPLEMENTATION THintParameter : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Graphics::TColor FTextColor;
	Graphics::TColor FBkColor;
	char FStartchar;
	char FEndchar;
	char FDelimiterchar;
	Classes::TStringList* FParameters;
	char FWritedelimiterchar;
	char FHintClassDelimiter;
	void __fastcall SetParameters(const Classes::TStringList* Value);
	
public:
	__fastcall THintParameter(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall virtual ~THintParameter(void);
	
__published:
	__property Graphics::TColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	__property Graphics::TColor BkColor = {read=FBkColor, write=FBkColor, nodefault};
	__property char HintCharStart = {read=FStartchar, write=FStartchar, nodefault};
	__property char HintCharEnd = {read=FEndchar, write=FEndchar, nodefault};
	__property char HintCharDelimiter = {read=FDelimiterchar, write=FDelimiterchar, nodefault};
	__property char HintClassDelimiter = {read=FHintClassDelimiter, write=FHintClassDelimiter, nodefault};
	__property char HintCharWriteDelimiter = {read=FWritedelimiterchar, write=FWritedelimiterchar, nodefault};
	__property Classes::TStringList* Parameters = {read=FParameters, write=SetParameters};
};


class DELPHICLASS TCharStyle;
class PASCALIMPLEMENTATION TCharStyle : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Graphics::TColor FTextColor;
	Graphics::TColor FBkColor;
	Graphics::TFontStyles FStyle;
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Graphics::TColor TextColor = {read=FTextColor, write=FTextColor, nodefault};
	__property Graphics::TColor BkColor = {read=FBkColor, write=FBkColor, nodefault};
	__property Graphics::TFontStyles Style = {read=FStyle, write=FStyle, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TCharStyle(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TCharStyle(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TPrintOptions;
class PASCALIMPLEMENTATION TPrintOptions : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FJobName;
	AnsiString FTitle;
	bool FPageNr;
	bool FPrintLineNumbers;
	int FMarginLeft;
	int FMarginRight;
	int FMarginTop;
	int FMarginBottom;
	AnsiString FPagePrefix;
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString JobName = {read=FJobName, write=FJobName};
	__property AnsiString Title = {read=FTitle, write=FTitle};
	__property int MarginLeft = {read=FMarginLeft, write=FMarginLeft, nodefault};
	__property int MarginRight = {read=FMarginRight, write=FMarginRight, nodefault};
	__property int MarginTop = {read=FMarginTop, write=FMarginTop, nodefault};
	__property int MarginBottom = {read=FMarginBottom, write=FMarginBottom, nodefault};
	__property bool PageNr = {read=FPageNr, write=FPageNr, nodefault};
	__property AnsiString PagePrefix = {read=FPagePrefix, write=FPagePrefix};
	__property bool PrintLineNumbers = {read=FPrintLineNumbers, write=FPrintLineNumbers, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPrintOptions(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TPrintOptions(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMarker;
class PASCALIMPLEMENTATION TAdvMarker : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FText;
	int FImageIndex;
	int FLineNumber;
	void __fastcall SetText(const AnsiString Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetLineNumber(const int Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TAdvMarker(Classes::TCollection* Collection);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Text = {read=FText, write=SetText};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, nodefault};
	__property int LineNumber = {read=FLineNumber, write=SetLineNumber, nodefault};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TAdvMarker(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMarkers;
class PASCALIMPLEMENTATION TAdvMarkers : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TAdvMarker* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TPersistent* FComponent;
	HIDESBASE TAdvMarker* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TAdvMarker* Value);
	int __fastcall GetMarkerCount(void);
	HIDESBASE TAdvMarker* __fastcall Add(void);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TAdvMarkers(Classes::TPersistent* Component);
	__fastcall virtual ~TAdvMarkers(void);
	bool __fastcall HasMarkers(void);
	bool __fastcall HigherMarkerThanLine(int LineNo);
	int __fastcall GetMarkerImageIndex(int LineNo);
	bool __fastcall GetMarkers(TAdvMarkers* Markers);
	TAdvMarker* __fastcall GetMarkerAtLine(int LineNo);
	bool __fastcall MarkerAtLine(int LineNo);
	void __fastcall AddMarker(int LineIndex, int ImageIndex)/* overload */;
	void __fastcall AddMarker(int LineIndex, int ImageIndex, AnsiString MarkerText)/* overload */;
	void __fastcall RemoveMarker(int LineNo);
	void __fastcall AdjustMarkerLineMinus(int StartIndex);
	void __fastcall AdjustMarkerLinePlus(int StartIndex);
	__property int MarkerCount = {read=GetMarkerCount, nodefault};
	__property TAdvMarker* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class DELPHICLASS TAdvMarkerList;
class PASCALIMPLEMENTATION TAdvMarkerList : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TComponent* FOwner;
	TAdvMarkers* FMarkers;
	Graphics::TBitmap* FMarkerImage;
	Controls::TImageList* FMarkerImageList;
	int FDefaultMarkerImageIndex;
	bool FUseDefaultMarkerImageIndex;
	void __fastcall SetItems(TAdvMarkers* Value);
	void __fastcall SetMarkerImageList(Controls::TImageList* Il);
	void __fastcall SetDefaultMarkerImageIndex(int MarkerIndex);
	void __fastcall SetUseDefaultMarkerImageIndex(bool Value);
	void __fastcall SetMarkerTransparentColor(Graphics::TColor MarkerTransColor);
	Graphics::TColor __fastcall GetMarkerTransparentColor(void);
	
public:
	__fastcall TAdvMarkerList(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMarkerList(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall FastDeleteAll(void);
	__property TAdvMarkers* Markers = {read=FMarkers, write=SetItems};
	
__published:
	__property Controls::TImageList* MarkerImageList = {read=FMarkerImageList, write=SetMarkerImageList};
	__property bool UseDefaultMarkerImageIndex = {read=FUseDefaultMarkerImageIndex, write=SetUseDefaultMarkerImageIndex, nodefault};
	__property int DefaultMarkerImageIndex = {read=FDefaultMarkerImageIndex, write=SetDefaultMarkerImageIndex, nodefault};
	__property Graphics::TColor ImageTransparentColor = {read=GetMarkerTransparentColor, write=SetMarkerTransparentColor, nodefault};
};


class DELPHICLASS TAdvStylerList;
class PASCALIMPLEMENTATION TAdvStylerList : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Classes::TList* FStylerList;
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* comp, Classes::TOperation Operation);
	
public:
	__fastcall virtual TAdvStylerList(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvStylerList(void);
	__property Classes::TList* StylerList = {read=FStylerList};
};


class DELPHICLASS TAdvMemoStrings;
class DELPHICLASS TAdvCustomMemo;
class DELPHICLASS TAdvCustomMemoStyler;
class DELPHICLASS TElementStyles;
class DELPHICLASS TAdvMemo;
class DELPHICLASS TAdvActiveLineSettings;
class PASCALIMPLEMENTATION TAdvActiveLineSettings : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvCustomMemo* Memo;
	Graphics::TColor FActiveLineColor;
	Graphics::TColor FActiveLineTextColor;
	bool FActiveLineAtCursor;
	bool FShowActiveLine;
	bool FShowActiveLineIndicator;
	void __fastcall SetShowActiveLine(const bool Value);
	void __fastcall SetShowActiveLineIndicator(const bool Value);
	void __fastcall SetActiveLineColor(const Graphics::TColor Value);
	void __fastcall SetActiveLineTextColor(const Graphics::TColor Value);
	void __fastcall SetActiveLineAtCursor(const bool Value);
	
public:
	__fastcall TAdvActiveLineSettings(TAdvCustomMemo* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool ShowActiveLine = {read=FShowActiveLine, write=SetShowActiveLine, nodefault};
	__property bool ShowActiveLineIndicator = {read=FShowActiveLineIndicator, write=SetShowActiveLineIndicator, nodefault};
	__property Graphics::TColor ActiveLineColor = {read=FActiveLineColor, write=SetActiveLineColor, default=8388608};
	__property bool ActiveLineAtCursor = {read=FActiveLineAtCursor, write=SetActiveLineAtCursor, default=0};
	__property Graphics::TColor ActiveLineTextColor = {read=FActiveLineTextColor, write=SetActiveLineTextColor, default=65535};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAdvActiveLineSettings(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvGutter;
class PASCALIMPLEMENTATION TAdvGutter : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvCustomMemo* Memo;
	int FLeft;
	int FTop;
	int FWidth;
	int FHeight;
	Graphics::TColor FColor;
	Graphics::TColor FColorTo;
	bool FShowLeadingZeros;
	bool FShowGutter;
	int FDigitCount;
	int FGutterWidth;
	int FGutterMargin;
	Graphics::TFont* FFont;
	AnsiString FNumberSuffix;
	Graphics::TColor FLineNumberTextColor;
	bool FShowLineNumbers;
	bool FShowModified;
	int FLineNumberStart;
	Classes::TNotifyEvent FOnChange;
	Graphics::TColor FModifiedColor;
	Graphics::TColor FModifiedColorBkg;
	Graphics::TColor FBorderColor;
	int FLineNumberAt;
	void __fastcall SetLineNumberTextColor(const Graphics::TColor Value);
	void __fastcall SetGutterWidth(int Value);
	void __fastcall SetGutterMargin(int Value);
	void __fastcall SetGutterColor(Graphics::TColor Value);
	Graphics::TColor __fastcall GetGutterColor(void);
	void __fastcall SetShowLeadingZeros(const bool Value);
	void __fastcall SetDigitCount(const int Value);
	void __fastcall SetFont(Graphics::TFont* Value);
	void __fastcall OnFontChange(System::TObject* Sender);
	void __fastcall SetGutterColorTo(const Graphics::TColor Value);
	Graphics::TColor __fastcall GetGutterColorTo(void);
	void __fastcall SetShowLineNumbers(const bool Value);
	void __fastcall SetLineNumberStart(const int Value);
	void __fastcall SetShowGutter(const bool Value);
	void __fastcall SetShowModified(const bool Value);
	void __fastcall SetNumberSuffix(const AnsiString Value);
	void __fastcall SetParams(int Index, int Value);
	void __fastcall SetModifiedColor(const Graphics::TColor Value);
	void __fastcall SetModifiedColorBkg(const Graphics::TColor Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	Types::TRect __fastcall GetRect();
	void __fastcall SetLineNumberAt(const int Value);
	
protected:
	void __fastcall PaintTo(Graphics::TCanvas* ACanvas);
	void __fastcall Invalidate(void);
	
public:
	__fastcall TAdvGutter(TAdvCustomMemo* AOwner);
	__fastcall virtual ~TAdvGutter(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property int Left = {read=FLeft, write=SetParams, index=0, nodefault};
	__property int Top = {read=FTop, write=SetParams, index=1, nodefault};
	__property int Width = {read=FWidth, write=SetParams, index=2, default=45};
	__property int Height = {read=FHeight, write=SetParams, index=3, nodefault};
	__property Types::TRect FullRect = {read=GetRect};
	
__published:
	__property int DigitCount = {read=FDigitCount, write=SetDigitCount, nodefault};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=8421504};
	__property int GutterWidth = {read=FGutterWidth, write=SetGutterWidth, default=45};
	__property int GutterMargin = {read=FGutterMargin, write=SetGutterMargin, default=45};
	__property Graphics::TColor GutterColor = {read=GetGutterColor, write=SetGutterColor, default=-16777201};
	__property Graphics::TColor GutterColorTo = {read=GetGutterColorTo, write=SetGutterColorTo, default=16777215};
	__property int LineNumberAt = {read=FLineNumberAt, write=SetLineNumberAt, default=1};
	__property int LineNumberStart = {read=FLineNumberStart, write=SetLineNumberStart, default=1};
	__property Graphics::TColor LineNumberTextColor = {read=FLineNumberTextColor, write=SetLineNumberTextColor, default=0};
	__property Graphics::TColor ModifiedColorBkg = {read=FModifiedColorBkg, write=SetModifiedColorBkg, default=65280};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=SetModifiedColor, default=65535};
	__property AnsiString NumberSuffix = {read=FNumberSuffix, write=SetNumberSuffix};
	__property bool ShowLineNumbers = {read=FShowLineNumbers, write=SetShowLineNumbers, default=1};
	__property bool ShowModified = {read=FShowModified, write=SetShowModified, default=0};
	__property bool Visible = {read=FShowGutter, write=SetShowGutter, default=1};
	__property bool ShowLeadingZeros = {read=FShowLeadingZeros, write=SetShowLeadingZeros, default=0};
};


#pragma option push -b-
enum TScrollMode { smAuto, smStrict };
#pragma option pop

class DELPHICLASS TAdvUndoList;
class DELPHICLASS TUndo;
class PASCALIMPLEMENTATION TAdvUndoList : public Classes::TList 
{
	typedef Classes::TList inherited;
	
public:
	TUndo* operator[](int Index) { return Items[Index]; }
	
private:
	int FPos;
	TAdvCustomMemo* FMemo;
	bool FIsPerforming;
	int FLimit;
	
protected:
	HIDESBASE TUndo* __fastcall Get(int Index);
	void __fastcall SetLimit(int Value);
	
public:
	__fastcall TAdvUndoList(void);
	__fastcall virtual ~TAdvUndoList(void);
	HIDESBASE int __fastcall Add(void * Item);
	virtual void __fastcall Clear(void);
	HIDESBASE void __fastcall Delete(int Index);
	void __fastcall Undo(void);
	void __fastcall Redo(void);
	__property TUndo* Items[int Index] = {read=Get/*, default*/};
	__property bool IsPerforming = {read=FIsPerforming, write=FIsPerforming, nodefault};
	__property TAdvCustomMemo* Memo = {read=FMemo, write=FMemo};
	__property int Pos = {read=FPos, write=FPos, nodefault};
	__property int Limit = {read=FLimit, write=SetLimit, nodefault};
};


class DELPHICLASS TAutoCompletion;
class PASCALIMPLEMENTATION TAutoCompletion : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TAdvCustomMemo* FOwner;
	bool FShowImages;
	bool FActive;
	int FHeight;
	int FWidth;
	int FDelay;
	Graphics::TColor FColor;
	Graphics::TFont* FFont;
	Graphics::TColor FColorVar;
	Graphics::TColor FColorProp;
	Graphics::TColor FColorIdentifier;
	Graphics::TColor FColorFunc;
	Graphics::TColor FColorEvent;
	Graphics::TColor FColorProc;
	Graphics::TColor FColorMethod;
	bool FSizeDropDown;
	bool FAutoDisplay;
	bool FAutoWidth;
	bool FKeepLastSize;
	int FMaxWidth;
	AnsiString FStartToken;
	bool FFromFirstChar;
	void __fastcall SetColor(const Graphics::TColor Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetShowImages(const bool Value);
	void __fastcall SetDelay(const int Value);
	
public:
	__fastcall TAutoCompletion(TAdvCustomMemo* AOwner);
	__fastcall virtual ~TAutoCompletion(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool Active = {read=FActive, write=FActive, default=1};
	__property bool AutoDisplay = {read=FAutoDisplay, write=FAutoDisplay, default=1};
	__property bool AutoWidth = {read=FAutoWidth, write=FAutoWidth, default=1};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-16777211};
	__property int Delay = {read=FDelay, write=SetDelay, default=500};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Graphics::TColor ColorVar = {read=FColorVar, write=FColorVar, default=16711680};
	__property Graphics::TColor ColorProp = {read=FColorProp, write=FColorProp, default=8421376};
	__property Graphics::TColor ColorMethod = {read=FColorMethod, write=FColorMethod, default=8388608};
	__property Graphics::TColor ColorFunc = {read=FColorFunc, write=FColorFunc, default=8388608};
	__property Graphics::TColor ColorProc = {read=FColorProc, write=FColorProc, default=8388608};
	__property Graphics::TColor ColorEvent = {read=FColorEvent, write=FColorEvent, default=255};
	__property Graphics::TColor ColorIdentifier = {read=FColorIdentifier, write=FColorIdentifier, default=8421376};
	__property bool FromFirstChar = {read=FFromFirstChar, write=FFromFirstChar, default=1};
	__property int Height = {read=FHeight, write=FHeight, default=100};
	__property bool KeepLastSize = {read=FKeepLastSize, write=FKeepLastSize, default=0};
	__property bool ShowImages = {read=FShowImages, write=SetShowImages, default=0};
	__property bool SizeDropDown = {read=FSizeDropDown, write=FSizeDropDown, default=1};
	__property AnsiString StartToken = {read=FStartToken, write=FStartToken};
	__property int Width = {read=FWidth, write=FWidth, default=200};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, default=0};
};


typedef void __fastcall (__closure *TGutterDrawEvent)(System::TObject* Sender, Graphics::TCanvas* ACanvas, int LineNo, const Types::TRect &rct);

typedef void __fastcall (__closure *TGutterClickEvent)(System::TObject* Sender, int LineNo);

typedef void __fastcall (__closure *TUndoChangeEvent)(System::TObject* Sender, bool CanUndo, bool CanRedo);

typedef void __fastcall (__closure *TURLClick)(System::TObject* Sender, AnsiString URL);

typedef void __fastcall (__closure *TMemoActiveLineChangeEvent)(int CurYPos);

typedef void __fastcall (__closure *TMemoColumnChangeEvent)(int CurXPos);

typedef void __fastcall (__closure *TMemoMarkerAddedEvent)(int LnNo, AnsiString MarkerText);

typedef void __fastcall (__closure *TMemoMarkerRemovedEvent)(int LnNo);

typedef void __fastcall (__closure *TMemoHintEvent)(System::TObject* Sender, int X, int Y, AnsiString AValue, AnsiString &AHint, bool &Show);

typedef void __fastcall (__closure *TGutterHintEvent)(System::TObject* Sender, int Line, AnsiString &AHint, bool &Show);

typedef void __fastcall (__closure *TMemoWordEvent)(System::TObject* Sender, AnsiString CurrentWord, AnsiString &NewWord);

class DELPHICLASS TAutoCorrect;
class PASCALIMPLEMENTATION TAutoCorrect : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TStringList* FOldValue;
	Classes::TStringList* FNewValue;
	bool FDoAutoCorrect;
	void __fastcall SetDoAutoCorrect(const bool Value);
	void __fastcall SetNewValue(const Classes::TStringList* Value);
	void __fastcall SetOldValue(const Classes::TStringList* Value);
	
public:
	__fastcall TAutoCorrect(void);
	__fastcall virtual ~TAutoCorrect(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool Active = {read=FDoAutoCorrect, write=SetDoAutoCorrect, nodefault};
	__property Classes::TStringList* OldValue = {read=FOldValue, write=SetOldValue};
	__property Classes::TStringList* NewValue = {read=FNewValue, write=SetNewValue};
};


typedef void __fastcall (__closure *TMemoBeforeCompleteEvent)(System::TObject* Sender, AnsiString AToken, bool &Show);

typedef void __fastcall (__closure *TMemoGetCompletionListEvent)(System::TObject* Sender, AnsiString AToken, Classes::TStringList* AList);

typedef void __fastcall (__closure *TMemoGetCompletionListIndexEvent)(System::TObject* Sender, AnsiString AToken, Classes::TStringList* AList, int &AIndex);

typedef void __fastcall (__closure *TMemoInsertCompletionEntryEvent)(System::TObject* Sender, AnsiString &AEntry);

typedef int __fastcall (__closure *TMemoSortCompletionListEvent)(System::TObject* Sender, Classes::TStringList* List, int Index1, int Index2);

typedef void __fastcall (__closure *TMemoGetParameterHintEvent)(System::TObject* Sender, AnsiString AToken, AnsiString &AParameterHint, bool &Handled);

typedef void __fastcall (__closure *TMemoRetrievedParameterHintEvent)(System::TObject* Sender, AnsiString AToken, AnsiString AParameterHint);

class DELPHICLASS TAdvMemoSource;
#pragma pack(push,4)
struct TAdvMemoSavePos
{
	
public:
	int CurX;
	int CurY;
	int LeftCol;
	int TopLine;
	int SelStartX;
	int SelStartY;
	int SelEndX;
	int SelEndY;
} ;
#pragma pack(pop)

class PASCALIMPLEMENTATION TAdvMemoSource : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TAdvCustomMemoStyler* FSyntaxStyler;
	TAdvMemoStrings* FLines;
	TAdvUndoList* FUndoList;
	int FUndoLimit;
	TAdvCustomMemo* FMemo;
	bool FModified;
	bool FReadOnly;
	TAdvMemoSavePos FCaretInfo;
	TIntList* FBookmarkList;
	bool __fastcall GetReadOnly(void);
	void __fastcall SetReadOnly(const bool Value);
	
protected:
	void __fastcall SetSyntaxStyler(const TAdvCustomMemoStyler* Value);
	void __fastcall SetLines(const TAdvMemoStrings* Value);
	void __fastcall SetMemo(const TAdvCustomMemo* Value);
	bool __fastcall GetModified(void);
	void __fastcall SetModified(const bool Value);
	TAdvUndoList* __fastcall GetUndoList(void);
	void __fastcall SetUndoList(const TAdvUndoList* Value);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual TAdvMemoSource(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMemoSource(void);
	__property bool Modified = {read=GetModified, write=SetModified, nodefault};
	__property TAdvUndoList* UndoList = {read=GetUndoList, write=SetUndoList};
	
__published:
	__property TAdvCustomMemoStyler* SyntaxStyler = {read=FSyntaxStyler, write=SetSyntaxStyler};
	__property TAdvMemoStrings* Lines = {read=FLines, write=SetLines};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, nodefault};
};


#pragma option push -b-
enum TWordWrapStyle { wwNone, wwClientWidth, wwRightMargin };
#pragma option pop

typedef void __fastcall (__closure *TMemoTextFoundEvent)(System::TObject* Sender, int X, int Y);

typedef void __fastcall (__closure *TMemoLineBkColorEvent)(System::TObject* Sender, int LineNo, Graphics::TColor &BkColor);

#pragma option push -b-
enum TMemoClipboardAction { caCopy, caCut, caPaste };
#pragma option pop

typedef void __fastcall (__closure *TMemoClipboardEvent)(System::TObject* Sender, TMemoClipboardAction ClipboardAction, bool &Allow);

class DELPHICLASS TAdvMemoChecker;
#pragma option push -b-
enum TAutoCorrectType { acNone, acLineCorrect, acLineCheck, acWordCorrect, acWordCheck };
#pragma option pop

class PASCALIMPLEMENTATION TAdvMemoChecker : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TAdvCustomMemo* FMemo;
	TAutoCorrectType FAutoCorrectType;
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	AnsiString __fastcall ReplaceOnce(const AnsiString S, const AnsiString OldPattern, const AnsiString NewPattern);
	void __fastcall AddUndo(int LineNo, AnsiString UndoLine);
	
public:
	__property TAdvCustomMemo* Memo = {read=FMemo, write=FMemo};
	virtual void __fastcall CheckLine(int LineNo);
	virtual void __fastcall CheckWord(int LineNo, int LinePos, AnsiString s);
	virtual void __fastcall CorrectLine(int LineNo);
	virtual void __fastcall CorrectWord(int LineNo, int LinePos, AnsiString &s);
	virtual void __fastcall CheckAllLines(void);
	virtual void __fastcall CorrectAllLines(void);
	__property TAutoCorrectType AutoCorrectType = {read=FAutoCorrectType, write=FAutoCorrectType, default=0};
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TAdvMemoChecker(Classes::TComponent* AOwner) : Classes::TComponent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvMemoChecker(void) { }
	#pragma option pop
	
};


class DELPHICLASS TUILanguage;
class PASCALIMPLEMENTATION TUILanguage : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FScrollHint;
	AnsiString FCut;
	AnsiString FPaste;
	AnsiString FSelectAll;
	AnsiString FUndo;
	AnsiString FRedo;
	AnsiString FCopy;
	AnsiString FDelete;
	
public:
	__fastcall TUILanguage(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString ScrollHint = {read=FScrollHint, write=FScrollHint};
	__property AnsiString Undo = {read=FUndo, write=FUndo};
	__property AnsiString Redo = {read=FRedo, write=FRedo};
	__property AnsiString Copy = {read=FCopy, write=FCopy};
	__property AnsiString Cut = {read=FCut, write=FCut};
	__property AnsiString Paste = {read=FPaste, write=FPaste};
	__property AnsiString Delete = {read=FDelete, write=FDelete};
	__property AnsiString SelectAll = {read=FSelectAll, write=FSelectAll};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TUILanguage(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TSelectionMode { smText, smBlock };
#pragma option pop

#pragma option push -b-
enum TDrawMode { dmScreen, dmHTML, dmPrinter, dmPrintPreview, dmRTF };
#pragma option pop

#pragma option push -b-
enum TFindOptionEx { freDown, freFindNext, freHideMatchCase, freHideWholeWord, freHideUpDown, freMatchCase, freDisableMatchCase, freDisableUpDown, freDisableWholeWord, freReplace, freReplaceAll, freWholeWord, freShowHelp, freSelection, freExpression };
#pragma option pop

typedef Set<TFindOptionEx, freDown, freExpression>  TFindOptionsEx;

class PASCALIMPLEMENTATION TAdvCustomMemo : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	Classes::TComponent* FOwner;
	Controls::TDragMode FDragMode;
	TCellPos FDragPos;
	AnsiString FVersion;
	bool FUseStyler;
	TAdvCustomMemoStyler* FInternalStyles;
	bool FCaseSensitive;
	Forms::TFormBorderStyle FBorderStyle;
	bool FAutoIndent;
	int FMargin;
	bool FHiddenCaret;
	bool FCaretVisible;
	TCellSize FCellSize;
	int FCurX;
	int FCurY;
	int FbackupTopLine;
	int FLeftCol;
	int FTopLine;
	int FTabSize;
	Graphics::TFont* FFont;
	Graphics::TColor FBkColor;
	Graphics::TColor FSelColor;
	Graphics::TColor FSelBkColor;
	bool FReadOnly;
	bool FDelErase;
	bool FShowRightMargin;
	bool FSmartTabs;
	bool FEnhancedHomeKey;
	TAdvMemoStrings* FLines;
	int FSelStartX;
	int FSelStartY;
	int FSelEndX;
	int FSelEndY;
	int FPrevSelX;
	int FPrevSelY;
	Stdctrls::TScrollStyle FScrollBars;
	TAdvActiveLineSettings* FActiveLineSettings;
	TAdvGutter* FGutter;
	Stdctrls::TScrollBar* sbVert;
	Stdctrls::TScrollBar* sbHorz;
	Graphics::TBitmap* FLineBitmap;
	TFullPos FSelCharPos;
	bool FLeftButtonDown;
	bool FSelButtonDown;
	bool FSelClick;
	bool FSelDrag;
	Stdctrls::TEditCharCase FCharCase;
	TScrollMode FScrollMode;
	TAdvUndoList* FUndoList;
	int FUndoLimit;
	bool FUndoLineByLine;
	TStyle FBackupTopStyle;
	AnsiString FTempdelimiters;
	AnsiString FUrlDelimiters;
	Extctrls::TTimer* Timer;
	TAdvHintForm* FHintForm;
	TAutoHintParameters FAutoHintParameters;
	TCharStyle* FUrlStyle;
	bool FUrlAware;
	int FActiveLine;
	bool FCtl3D;
	Controls::TCursor FOldCursor;
	Classes::TStringList* Html;
	AnsiString Htmlfont;
	int FMaxLength;
	bool FLetShowAutoCompletion;
	bool FSearching;
	bool FHintShowing;
	TAutoCompletionListBox* FListCompletion;
	TAdvAutoform* FormAutoCompletion;
	TAutoCompletion* FAutoCompletion;
	TAdvMarkerList* FMarkerList;
	TAdvStylerList* FStylerList;
	Controls::TImageList* FAutoCompletionListImages;
	Controls::TImageList* FContextMenuImages;
	bool FAutoThemeAdapt;
	bool FNoRealFixedWidth;
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnStatusChange;
	Classes::TNotifyEvent FOnSelectionChange;
	TGutterDrawEvent FOnGutterDraw;
	TGutterClickEvent FOnGutterClick;
	TGutterClickEvent FOnGutterRightClick;
	TUndoChangeEvent FOnUndoChange;
	TURLClick FOnURLClick;
	Classes::TNotifyEvent FOnReplace;
	Classes::TNotifyEvent FOnFind;
	Classes::TNotifyEvent FOnAutoCompletion;
	Classes::TNotifyEvent FOnCancelAutoCompletion;
	Classes::TNotifyEvent FOnStartAutoCompletion;
	TMemoActiveLineChangeEvent FOnActiveLineChange;
	TMemoColumnChangeEvent FOnColumnChange;
	TMemoMarkerAddedEvent FOnMarkerAdded;
	TMemoMarkerRemovedEvent FOnMarkerRemoved;
	TPrintOptions* FPrintOptions;
	TAutoHintParameterPosition FAutoHintParameterPos;
	AnsiString FtmpNoStart;
	AnsiString FtmpNo;
	AnsiString FtmpNoHex;
	unsigned FCaretTime;
	bool FletgetCaretTime;
	bool FTrimTrailingSpaces;
	unsigned FCaretX;
	unsigned FCaretY;
	int BSSelLine;
	int BSSelStart;
	int BSSelLen;
	int BSOldSelLine;
	int BESelLine;
	int BESelStart;
	int BESelLen;
	int BEOldSelLine;
	Classes::TNotifyEvent FOnCursorChange;
	bool FBlockShow;
	Graphics::TColor FBlockColor;
	Graphics::TColor FBlockLineColor;
	bool FOverwrite;
	TAllowEvent FOnOverwriteToggle;
	TMemoHintEvent FOnHintForWord;
	TMemoHintEvent FOnHintForToken;
	TGutterHintEvent FOnHintForGutter;
	#pragma pack(push,1)
	Types::TPoint FLastHintPos;
	#pragma pack(pop)
	TMemoWordEvent FonWordComplete;
	bool FWantTab;
	bool FHideSelection;
	TAutoCorrect* FAutoCorrect;
	TMemoBeforeCompleteEvent FOnBeforeAutoComplete;
	TMemoGetCompletionListEvent FOnGetAutoCompletionList;
	TMemoGetCompletionListIndexEvent FOnGetAutoCompletionListIndex;
	int FAutoHintParameterDelay;
	Graphics::TBitmap* FBookmarkBmp;
	TIntList* FBookmarkList;
	TMemoInsertCompletionEntryEvent FOnInsertAutoCompletionEntry;
	TMemoSortCompletionListEvent FOnSortAutoCompletionList;
	TMemoGetParameterHintEvent FOnGetParameterHint;
	TMemoRetrievedParameterHintEvent FOnRetrievedParameterHint;
	bool FAutoExpand;
	bool FAutoCompleteDot;
	Extctrls::TTimer* FAutoCompleteTimer;
	Classes::TStringList* FAutoCompleteList;
	#pragma pack(push,1)
	Types::TPoint FDotPoint;
	#pragma pack(pop)
	bool FAllowAutoHint;
	TIntList* FWWList;
	AnsiString FCachedDelimiters;
	TAdvMemoSource* FMemoSource;
	int FRightMargin;
	Graphics::TColor FRightMarginColor;
	Graphics::TColor FBreakpointColor;
	Graphics::TColor FBreakpointTextColor;
	bool FAcceptFiles;
	TWordWrapStyle FWordWrap;
	bool FScrollHint;
	Controls::THintWindow* FScrollHintWindow;
	Classes::TNotifyEvent FOnTopLeftChanged;
	TAdvMemoFileDropEvent FOnFileDrop;
	TAdvMemoScrollHintEvent FOnScrollHint;
	TMemoTextFoundEvent FOnTextFound;
	TMemoLineBkColorEvent FOnLineBkColor;
	TMemoClipboardEvent FOnClipboardAction;
	TCustomizeContextMenuEvent FOnCustomizeContextMenu;
	TCustomContextMenuClickEvent FOnCustomContextMenuClick;
	TAdvMemoChecker* FMemoChecker;
	Rtfengine::TRTFEngine* FRTFEngine;
	TCodeFolding* FCodeFolding;
	TGutterClickEvent FOnGutterDblClick;
	bool FCursorChangedTrigered;
	bool FShouldCheckCodeFolding;
	int FCodeFoldingNodeCount;
	Graphics::TColor FBorderColor;
	bool FClearType;
	AnsiString FFixedBlockStart;
	AnsiString FFixedBlockEnd;
	bool FDisableChange;
	TMemoClipboardFormats FClipboardFormats;
	Graphics::TColor FBandColor;
	bool FSelChange;
	bool FSelectSingleLine;
	TUILanguage* FUILanguage;
	#pragma pack(push,1)
	Types::TRect FBlockSelection;
	#pragma pack(pop)
	TSelectionMode FSelectionMode;
	AnsiString FHighlightText;
	void __fastcall OnCodeFoldingChange(System::TObject* Sender, int ChangeMsg);
	TAdvUndoList* __fastcall InternalUndoList(void);
	void __fastcall SetMemoSource(const TAdvMemoSource* Value);
	bool __fastcall GetModified(void);
	void __fastcall SetModified(const bool Value);
	void __fastcall AutoCompleteTimer(System::TObject* Sender);
	bool __fastcall IsDelimiter(char value);
	void __fastcall ShowForm(bool ShowAlways);
	void __fastcall HideForm(void);
	bool __fastcall SearchParameter(void);
	void __fastcall FormHintMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall Hideauto(System::TObject* Sender);
	void __fastcall ListKeyPress(System::TObject* Sender, char &Key);
	void __fastcall ListKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState ShiftState);
	void __fastcall ListMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormHintClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall TimerHint(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall SetHiddenCaret(bool Value);
	void __fastcall SetScrollBars(Stdctrls::TScrollStyle Value);
	void __fastcall SetUseStyler(const bool Value);
	void __fastcall SetCaseSensitive(bool Value);
	void __fastcall SetCurX(int Value);
	void __fastcall SetCurY(int Value);
	HIDESBASE void __fastcall SetFont(Graphics::TFont* Value);
	HIDESBASE void __fastcall SetColor(int Index, Graphics::TColor Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	void __fastcall SetLines(TAdvMemoStrings* ALines);
	void __fastcall ExpandSelection(void);
	AnsiString __fastcall GetSelText();
	void __fastcall SetSelText(const AnsiString AValue);
	int __fastcall GetSelLength(void);
	void __fastcall MovePage(int dP, Classes::TShiftState Shift);
	void __fastcall ShowCaret(bool State);
	void __fastcall MakeVisible(void);
	int __fastcall GetVisible(int Index);
	void __fastcall SetMaxLength(void);
	AnsiString __fastcall TrimRightWW(int LineNo);
	MESSAGE void __fastcall WMSysChar(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Msg);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Msg);
	HIDESBASE MESSAGE void __fastcall WMSetCursor(Messages::TWMSetCursor &Msg);
	HIDESBASE MESSAGE void __fastcall WMContextMenu(Messages::TWMContextMenu &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	MESSAGE void __fastcall WMDropFiles(Messages::TMessage &Message);
	MESSAGE void __fastcall CMWantSpecialKey(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMWindowPosChanged(Messages::TWMMove &Message);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	void __fastcall SetSmartTabs(const bool Value);
	void __fastcall SetAcceptFiles(const bool Value);
	void __fastcall SetEnhancedHomeKey(const bool Value);
	void __fastcall SetShowRightMargin(const bool Value);
	void __fastcall SetTrimTrailingSpaces(const bool Value);
	AnsiString __fastcall FormatLineNumber(int &Position, int Line);
	void __fastcall MoveCursor(int dX, int dY, Classes::TShiftState Shift);
	void __fastcall ResizeEditor(void);
	void __fastcall ResizeScrollBars(bool DoRepaint);
	void __fastcall ResizeGutter(void);
	void __fastcall DoCommand(int cmd, const Classes::TShiftState AShift);
	void __fastcall DrawLine(Graphics::TCanvas* ACanvas, int LineNo, TStyle &Style, TDrawMode DM, const Types::TRect &PR, int VisLineNo = 0xffffffff);
	void __fastcall DrawHTML(AnsiString Part, TStyle &Drawstyle, int lineno);
	void __fastcall DrawRTF(AnsiString Part, TStyle &Drawstyle, int lineno);
	void __fastcall ExtractURL(AnsiString s, Classes::TStringList* &urls);
	void __fastcall FreshLineBitmap(void);
	void __fastcall SetUndoLimit(int Value);
	int __fastcall GetSelStart(void);
	void __fastcall SetSelStart(const int Value);
	void __fastcall SetSelLength(const int Value);
	void __fastcall SetActiveLine(const int Value);
	void __fastcall SetBorderStyle(const Forms::TBorderStyle Value);
	HIDESBASE void __fastcall SetCtl3D(const bool Value);
	void __fastcall UpdateGutter(void);
	void __fastcall SetLeftCol(const int Value);
	void __fastcall SetWordWrap(const TWordWrapStyle Value);
	void __fastcall SetTopLine(const int Value);
	void __fastcall SetMemoStyler(TAdvCustomMemoStyler* Value);
	TStyle __fastcall GetUpStyle(int stopat);
	void __fastcall SetUrlAware(const bool Value);
	void __fastcall SetUrlStyle(const TCharStyle* Value);
	void __fastcall ScrollVChange(System::TObject* Sender);
	void __fastcall ScrollHChange(System::TObject* Sender);
	bool __fastcall GetBreakPoint(int Index);
	void __fastcall SetBreakPoint(int Index, const bool Value);
	TLineModifiedState __fastcall GetModifiedStateInt(int Index);
	void __fastcall SetModifiedStateInt(int Index, const TLineModifiedState Value);
	bool __fastcall GetModifiedState(int Index);
	void __fastcall SetModifiedState(int Index, const bool Value);
	bool __fastcall GetWrapped(int Index);
	void __fastcall SetWrapped(int Index, const bool Value);
	bool __fastcall GetBookmark(int Index);
	void __fastcall SetBookmark(int Index, const bool Value);
	bool __fastcall GetExecutable(int Index);
	void __fastcall SetExecutable(int Index, const bool Value);
	void __fastcall SetLineStyle(int Index, const TStyle &LineStyle);
	void __fastcall ClearLineStyles(void);
	void __fastcall ClearLineStylesFromTo(int FromLine, int ToLine);
	bool __fastcall GetLineStyle(int Index, TStyle &LineStyle);
	void __fastcall SetEventAutoCompletion(void);
	void __fastcall KilleventAutoCompletion(void);
	void __fastcall SetAutoHintParameters(const TAutoHintParameters Value);
	void __fastcall SetPrintOptions(const TPrintOptions* Value);
	void __fastcall SetAutoHintParameterDelay(const int Value);
	int __fastcall GetBookmarks(int Index);
	void __fastcall SetBookmarks(int Index, const int Value);
	TAdvCustomMemoStyler* __fastcall GetInternalStyles(void);
	TAdvMemoStrings* __fastcall GetInternalLines(void);
	void __fastcall SetInternalLines(const TAdvMemoStrings* Value);
	void __fastcall SetRightMargin(const int Value);
	void __fastcall SetRightMarginColor(const Graphics::TColor Value);
	void __fastcall SetBreakpointColor(const Graphics::TColor Value);
	void __fastcall SetBreakpointTextColor(const Graphics::TColor Value);
	void __fastcall SetHideSelection(const bool Value);
	void __fastcall DoActiveLineChange(int LnNo);
	void __fastcall DoColumnChange(int ColNo);
	void __fastcall DoMarkerAdded(int LnNo, AnsiString MarkerText);
	void __fastcall DoMarkerRemoved(int LnNo);
	void __fastcall SearchForStylers(void);
	int __fastcall GetMarkerCount(void);
	void __fastcall SetAutoCompletionListImages(Controls::TImageList* IL);
	void __fastcall SetMemoChecker(const TAdvMemoChecker* AMemoChecker);
	void __fastcall SetCodeFolding(TCodeFolding* Value);
	bool __fastcall GetExpandNode(int Index);
	void __fastcall SetExpandNode(int Index, const bool Value);
	void __fastcall SetAutoThemeAdapt(const bool value);
	AnsiString __fastcall GetWrappedText();
	AnsiString __fastcall GetWrappedLine(int index);
	void __fastcall FinalizeCodeCompletion(bool AutoParenthesis);
	void __fastcall CheckCodeInsightChar(char Key);
	void __fastcall SetBandColor(const Graphics::TColor Value);
	AnsiString __fastcall GetVersion();
	AnsiString __fastcall ApplyCS(AnsiString s);
	int __fastcall NearestStart(AnsiString s, int fromX, AnsiString &res, int &ParNum);
	void __fastcall SetUILanguage(const TUILanguage* AUILanguage);
	void __fastcall SetSelectionMode(const TSelectionMode Value);
	void __fastcall SetHighLightText(const AnsiString Value);
	Graphics::TBitmap* __fastcall GetBookMarkGlyph(void);
	void __fastcall SetBookMarkGlyph(const Graphics::TBitmap* Value);
	bool __fastcall GetBookmarkInfo(int Index, int &AValue);
	int __fastcall GetBookmarkIndex(int Index);
	void __fastcall SetBookmarkIndex(int Index, const int Value);
	void __fastcall AddBmpRes(AnsiString Resname, Controls::TImageList* ImageList);
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetBookmarkCount(void);
	
protected:
	bool FLetRefresh;
	bool FLetCursorUpdate;
	void __fastcall PrepareShowHint(void);
	virtual void __fastcall UpdateCompletionList(AnsiString token);
	virtual bool __fastcall IsCompletionListActivationChar(char Ch);
	virtual bool __fastcall HasCompletionListActivationChar(AnsiString token);
	virtual bool __fastcall IsParameterHintActivationChar(char Ch);
	virtual bool __fastcall IsCompletionListSearchChar(char Ch);
	virtual bool __fastcall IsCompletionListEndChar(char Ch);
	virtual void __fastcall DoLineBkColor(int LineNo, Graphics::TColor &BkColor);
	virtual void __fastcall DoClipboardAction(TMemoClipboardAction ClipboardAction, bool &Allow);
	int __fastcall VisIndexToLineIndex(int Index);
	int __fastcall LineIndexToVisIndex(int Index);
	int __fastcall LastChildOfParent(int ParentIndex);
	void __fastcall ExpandParents(int ChildIndex);
	void __fastcall RemoveCodeFoldingFromChild(int EndLineIndex);
	bool __fastcall IsCommentedNode(int LineIndex);
	bool __fastcall GetNodeComments(int LineIndex, int &RgnIndex, AnsiString &Coments);
	void __fastcall ResetMemoState(const TAdvMemoSavePos &value);
	void __fastcall GetMemoState(TAdvMemoSavePos &value);
	void __fastcall ModificationsSaved(void);
	void __fastcall ModificationsLoaded(void);
	__property TAdvCustomMemoStyler* InternalStyles = {read=GetInternalStyles};
	__property TAdvMemoStrings* InternalLines = {read=GetInternalLines, write=SetInternalLines};
	DYNAMIC bool __fastcall DoMouseWheelDown(Classes::TShiftState Shift, const Types::TPoint &MousePos);
	DYNAMIC bool __fastcall DoMouseWheelUp(Classes::TShiftState Shift, const Types::TPoint &MousePos);
	virtual void __fastcall DoCustomizeContextMenu(int MX, int MY, Menus::TPopupMenu* ContextMenu);
	virtual void __fastcall DoCustomContextMenuClick(Menus::TMenuItem* MenuItem);
	virtual void __fastcall DoContextMenuClick(System::TObject* Sender);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall SelClickUpdate(int X, int Y, bool Down, Classes::TShiftState Shift, Controls::TMouseButton Button);
	Types::TRect __fastcall EditorRect();
	Types::TRect __fastcall CodeFoldingRect();
	TCellPos __fastcall CellFromPos(int X, int Y);
	Types::TRect __fastcall CellRect(int ACol, int ARow);
	Types::TRect __fastcall LineRect(int ARow);
	Types::TRect __fastcall LineRangeRect(int FromLine, int ToLine);
	Types::TRect __fastcall ColRect(int ACol);
	Types::TRect __fastcall ColRangeRect(int FromCol, int ToCol);
	int __fastcall AddString(AnsiString S);
	void __fastcall InsertString(int Index, AnsiString S);
	void __fastcall GoHome(Classes::TShiftState Shift);
	void __fastcall GoEnd(Classes::TShiftState Shift);
	void __fastcall InsertChar(char C);
	void __fastcall DeleteChar(int OldX, int OldY);
	void __fastcall BackSpace(void);
	void __fastcall BackWord(void);
	AnsiString __fastcall IndentCurrLine();
	void __fastcall TestforURLClick(AnsiString s);
	bool __fastcall TestforURLMove(AnsiString s, int locx);
	void __fastcall SetBlockMatchStart(int LineNo, int BlockStart, int BlockLen);
	void __fastcall SetBlockMatchEnd(int LineNo, int BlockStart, int BlockLen);
	void __fastcall NewLine(void);
	virtual AnsiString __fastcall LineBreak();
	void __fastcall TabLine(Classes::TShiftState AShift);
	void __fastcall DoEscape(void);
	void __fastcall RepaintGutter(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Paint(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	void __fastcall DrawMargin(void);
	void __fastcall DrawGutter(void);
	void __fastcall ThemeAdapt(void);
	void __fastcall ScrollBarScroll(System::TObject* Sender, Stdctrls::TScrollCode ScrollCode, int &ScrollPos);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall DoScroll(Stdctrls::TScrollBar* Sender, int ByValue);
	void __fastcall DoScrollPage(Stdctrls::TScrollBar* Sender, int ByValue);
	__property int MaxLength = {read=FMaxLength, nodefault};
	__property int VisiblePosCount = {read=GetVisible, index=0, nodefault};
	__property int VisibleLineCount = {read=GetVisible, index=1, nodefault};
	__property int LastVisiblePos = {read=GetVisible, index=2, nodefault};
	__property int LastVisibleLine = {read=GetVisible, index=3, nodefault};
	__property bool UseStyler = {read=FUseStyler, write=SetUseStyler, nodefault};
	bool __fastcall DeleteSelectionInt(bool bRepaint);
	int __fastcall FindTextInt(AnsiString SearchStr, Dialogs::TFindOptions Options, bool Count)/* overload */;
	int __fastcall FindTextInt(AnsiString SearchStr, TFindOptionsEx Options, bool Count)/* overload */;
	void __fastcall LinesChanged(System::TObject* Sender);
	void __fastcall LineRefresh(void);
	void __fastcall CreateAutoCompleteForm(void);
	virtual void __fastcall SelectionChanged(void);
	virtual void __fastcall StatusChanged(void);
	void __fastcall FontChangedProc(System::TObject* Sender);
	virtual bool __fastcall IsWordBoundary(char ch);
	virtual bool __fastcall IsTokenBoundary(char ch);
	void __fastcall ClearUndoList(void);
	void __fastcall UndoChange(void);
	Controls::TCursor __fastcall GetCursorEx(void);
	virtual void __fastcall CursorChanged(void);
	void __fastcall SetCursorEx(const Controls::TCursor Value);
	virtual bool __fastcall EditCanModify(void);
	void __fastcall InsertTemplate(AnsiString AText);
	void __fastcall OutputHTML(bool FixedFonts, int fromline = 0xffffffff, int toline = 0xffffffff, bool fragment = false);
	void __fastcall OutputRTF(bool FixedFonts, int fromline = 0xffffffff, int toline = 0xffffffff);
	void __fastcall DoFind(void);
	void __fastcall DoReplace(void);
	void __fastcall DoWrap(void);
	void __fastcall UndoWrap(void);
	virtual void __fastcall Change(void);
	virtual void __fastcall DoGutterClick(int LineNo);
	virtual void __fastcall DoGetAutoCompletionList(AnsiString AToken, Classes::TStringList* AList);
	virtual void __fastcall DoGetAutoCompletionListIndex(AnsiString AToken, Classes::TStringList* AList, int &DefaultIndex);
	virtual void __fastcall DoGetParameterHint(AnsiString AToken, AnsiString &AParameterHint, bool &Handled);
	virtual void __fastcall DoGetParameterHintInfo(AnsiString &AToken, int &AParIndex, bool &Found, bool &Handled);
	virtual void __fastcall DoInsertAutoCompletionEntry(AnsiString &AEntry);
	__property bool ShowRightMargin = {read=FShowRightMargin, write=SetShowRightMargin, nodefault};
	__property TAutoCorrect* AutoCorrect = {read=FAutoCorrect, write=FAutoCorrect};
	__property bool AutoIndent = {read=FAutoIndent, write=FAutoIndent, default=1};
	__property bool AutoExpand = {read=FAutoExpand, write=FAutoExpand, default=1};
	__property bool AutoThemeAdapt = {read=FAutoThemeAdapt, write=SetAutoThemeAdapt, default=0};
	__property bool BlockShow = {read=FBlockShow, write=FBlockShow, default=1};
	__property Graphics::TColor BlockColor = {read=FBlockColor, write=FBlockColor, default=16776960};
	__property Graphics::TColor BlockLineColor = {read=FBlockLineColor, write=FBlockLineColor, default=536870911};
	__property Graphics::TBitmap* BookmarkGlyph = {read=GetBookMarkGlyph, write=SetBookMarkGlyph};
	__property Stdctrls::TEditCharCase CharCase = {read=FCharCase, write=FCharCase, default=0};
	__property TAdvGutter* Gutter = {read=FGutter, write=FGutter};
	__property TAdvActiveLineSettings* ActiveLineSettings = {read=FActiveLineSettings, write=FActiveLineSettings};
	__property int RightMargin = {read=FRightMargin, write=SetRightMargin, default=80};
	__property Graphics::TColor RightMarginColor = {read=FRightMarginColor, write=SetRightMarginColor, nodefault};
	__property Stdctrls::TScrollStyle ScrollBars = {read=FScrollBars, write=SetScrollBars, default=3};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, nodefault};
	__property Graphics::TColor BkColor = {read=FBkColor, write=SetColor, index=0, nodefault};
	__property Graphics::TColor SelColor = {read=FSelColor, write=SetColor, index=1, nodefault};
	__property Graphics::TColor SelBkColor = {read=FSelBkColor, write=SetColor, index=2, nodefault};
	__property bool HiddenCaret = {read=FHiddenCaret, write=SetHiddenCaret, nodefault};
	__property int TabSize = {read=FTabSize, write=FTabSize, nodefault};
	__property bool Searching = {read=FSearching, write=FSearching, nodefault};
	__property TScrollMode ScrollMode = {read=FScrollMode, write=FScrollMode, default=0};
	__property int UndoLimit = {read=FUndoLimit, write=SetUndoLimit, default=100};
	__property bool UndoLineByLine = {read=FUndoLineByLine, write=FUndoLineByLine, default=0};
	__property TCharStyle* UrlStyle = {read=FUrlStyle, write=SetUrlStyle};
	__property TAutoCompletion* AutoCompletion = {read=FAutoCompletion, write=FAutoCompletion};
	__property TAutoHintParameters AutoHintParameters = {read=FAutoHintParameters, write=SetAutoHintParameters, default=0};
	__property TAutoHintParameterPosition AutoHintParameterPosition = {read=FAutoHintParameterPos, write=FAutoHintParameterPos, nodefault};
	__property int AutoHintParameterDelay = {read=FAutoHintParameterDelay, write=SetAutoHintParameterDelay, default=2500};
	__property TAdvMemoSource* MemoSource = {read=FMemoSource, write=SetMemoSource};
	__property TAdvMarkerList* MarkerList = {read=FMarkerList, write=FMarkerList};
	__property int MarkerCount = {read=GetMarkerCount, nodefault};
	__property Controls::TImageList* AutoCompletionListImages = {read=FAutoCompletionListImages, write=SetAutoCompletionListImages};
	__property bool TrimTrailingSpaces = {read=FTrimTrailingSpaces, write=SetTrimTrailingSpaces, nodefault};
	__property bool ScrollHint = {read=FScrollHint, write=FScrollHint, nodefault};
	__property bool SmartTabs = {read=FSmartTabs, write=SetSmartTabs, nodefault};
	__property bool EnhancedHomeKey = {read=FEnhancedHomeKey, write=SetEnhancedHomeKey, nodefault};
	__property TAdvMemoChecker* MemoChecker = {read=FMemoChecker, write=SetMemoChecker};
	__property TCodeFolding* CodeFolding = {read=FCodeFolding, write=SetCodeFolding};
	__property TMemoBeforeCompleteEvent OnBeforeAutoCompletion = {read=FOnBeforeAutoComplete, write=FOnBeforeAutoComplete};
	__property TCustomizeContextMenuEvent OnCustomizeContextMenu = {read=FOnCustomizeContextMenu, write=FOnCustomizeContextMenu};
	__property TCustomContextMenuClickEvent OnCustomContextMenuClick = {read=FOnCustomContextMenuClick, write=FOnCustomContextMenuClick};
	__property Classes::TNotifyEvent OnStartAutoCompletion = {read=FOnStartAutoCompletion, write=FOnStartAutoCompletion};
	__property TMemoGetCompletionListEvent OnGetAutoCompletionList = {read=FOnGetAutoCompletionList, write=FOnGetAutoCompletionList};
	__property TMemoGetCompletionListIndexEvent OnGetAutoCompletionListIndex = {read=FOnGetAutoCompletionListIndex, write=FOnGetAutoCompletionListIndex};
	__property Classes::TNotifyEvent OnAutoCompletion = {read=FOnAutoCompletion, write=FOnAutoCompletion};
	__property Classes::TNotifyEvent OnCancelAutoCompletion = {read=FOnCancelAutoCompletion, write=FOnCancelAutoCompletion};
	__property TGutterClickEvent OnGutterClick = {read=FOnGutterClick, write=FOnGutterClick};
	__property TGutterClickEvent OnGutterRightClick = {read=FOnGutterRightClick, write=FOnGutterRightClick};
	__property TGutterClickEvent OnGutterDblClick = {read=FOnGutterDblClick, write=FOnGutterDblClick};
	__property TGutterDrawEvent OnGutterDraw = {read=FOnGutterDraw, write=FOnGutterDraw};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Classes::TNotifyEvent OnSelectionChange = {read=FOnSelectionChange, write=FOnSelectionChange};
	__property Classes::TNotifyEvent OnStatusChange = {read=FOnStatusChange, write=FOnStatusChange};
	__property TUndoChangeEvent OnUndoChange = {read=FOnUndoChange, write=FOnUndoChange};
	__property Classes::TNotifyEvent OnFind = {read=FOnFind, write=FOnFind};
	__property Classes::TNotifyEvent OnReplace = {read=FOnReplace, write=FOnReplace};
	__property Classes::TNotifyEvent OnCursorChange = {read=FOnCursorChange, write=FOnCursorChange};
	__property TAllowEvent OnOverwriteToggle = {read=FOnOverwriteToggle, write=FOnOverwriteToggle};
	__property TURLClick OnURLClick = {read=FOnURLClick, write=FOnURLClick};
	__property TMemoHintEvent OnHintForWord = {read=FOnHintForWord, write=FOnHintForWord};
	__property TMemoHintEvent OnHintForToken = {read=FOnHintForToken, write=FOnHintForToken};
	__property TGutterHintEvent OnHintForGutter = {read=FOnHintForGutter, write=FOnHintForGutter};
	__property TMemoWordEvent OnWordComplete = {read=FonWordComplete, write=FonWordComplete};
	__property TMemoInsertCompletionEntryEvent OnInsertAutoCompletionEntry = {read=FOnInsertAutoCompletionEntry, write=FOnInsertAutoCompletionEntry};
	__property TMemoSortCompletionListEvent OnSortAutoCompletionList = {read=FOnSortAutoCompletionList, write=FOnSortAutoCompletionList};
	__property Classes::TNotifyEvent OnTopLeftChanged = {read=FOnTopLeftChanged, write=FOnTopLeftChanged};
	__property TMemoGetParameterHintEvent OnGetParameterHint = {read=FOnGetParameterHint, write=FOnGetParameterHint};
	__property TMemoRetrievedParameterHintEvent OnRetrievedParameterHint = {read=FOnRetrievedParameterHint, write=FOnRetrievedParameterHint};
	__property TAutoCompletionListBox* CompletionList = {read=FListCompletion};
	__property TMemoActiveLineChangeEvent OnActiveLineChange = {read=FOnActiveLineChange, write=FOnActiveLineChange};
	__property TMemoColumnChangeEvent OnColumnChange = {read=FOnColumnChange, write=FOnColumnChange};
	__property TMemoMarkerAddedEvent OnMarkerAdded = {read=FOnMarkerAdded, write=FOnMarkerAdded};
	__property TMemoMarkerRemovedEvent OnMarkerRemoved = {read=FOnMarkerRemoved, write=FOnMarkerRemoved};
	__property TAdvMemoFileDropEvent OnFileDrop = {read=FOnFileDrop, write=FOnFileDrop};
	__property TAdvMemoScrollHintEvent OnScrollHint = {read=FOnScrollHint, write=FOnScrollHint};
	__property TMemoTextFoundEvent OnTextFound = {read=FOnTextFound, write=FOnTextFound};
	__property TMemoLineBkColorEvent OnLineBkColor = {read=FOnLineBkColor, write=FOnLineBkColor};
	__property TMemoClipboardEvent OnClipboardAction = {read=FOnClipboardAction, write=FOnClipboardAction};
	virtual void __fastcall DoCopyToClipboard(void);
	virtual void __fastcall DoCutToClipboard(void);
	virtual void __fastcall DoPasteFromClipboard(void);
	void __fastcall UpdateDragCaret(const Types::TPoint &DCPos, const Controls::TDragState DCState);
	AnsiString __fastcall NextToken(const AnsiString s, int StartFrom, int &Offset);
	
public:
	__fastcall virtual TAdvCustomMemo(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvCustomMemo(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	DYNAMIC void __fastcall DragDrop(System::TObject* Source, int X, int Y);
	DYNAMIC void __fastcall DragOver(System::TObject* Source, int X, int Y, Controls::TDragState State, bool &Accept);
	void __fastcall DropText(int X, int Y, AnsiString s);
	void __fastcall MouseToCursor(int X, int Y, int &CursorX, int &CursorY);
	void __fastcall UpdateWrap(void);
	int __fastcall GetWrappedLineIndex(int Index);
	void __fastcall CopyToClipBoard(void);
	void __fastcall PasteFromClipBoard(void);
	void __fastcall CutToClipBoard(void);
	bool __fastcall IsEmpty(void);
	void __fastcall SelectAll(void);
	void __fastcall DeleteLine(void);
	void __fastcall ClearBreakpoints(void);
	void __fastcall ClearModified(void);
	void __fastcall ClearExecutableLines(void);
	void __fastcall SetError(int LineNo, int ErrPos, int ErrLen);
	void __fastcall ClearErrors(void);
	void __fastcall ClearLineErrors(int LineNo);
	void __fastcall ClearWordError(int LineNo, int LinePos);
	TFullPos __fastcall CharFromPos(int X, int Y);
	void __fastcall PosFromText(int TextPos, int &X, int &Y);
	void __fastcall TextFromPos(int X, int Y, int &TextPos);
	void __fastcall DeleteSelection(void);
	void __fastcall InsertText(AnsiString AValue);
	void __fastcall InsertTextAtXY(AnsiString AValue, int X, int Y);
	void __fastcall DeleteTextAtXY(int X, int Y, int NumChar);
	void __fastcall BlockIndent(int FromLine, int ToLine, int Indent, bool AllowUndo = true);
	bool __fastcall GetMarkers(TAdvMarkers* Markers);
	bool __fastcall MarkerAtLine(int LineNo);
	void __fastcall SaveMemoSettingsToFile(AnsiString FileName);
	void __fastcall LoadMemoSettingsFromFile(AnsiString FileName);
	__property AnsiString HighlightText = {read=FHighlightText, write=SetHighLightText};
	__property TAdvMemoStrings* Lines = {read=FLines, write=SetLines};
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, nodefault};
	__property bool Ctl3D = {read=FCtl3D, write=SetCtl3D, nodefault};
	__property Controls::TDragMode DragMode = {read=FDragMode, write=FDragMode, default=1};
	__property bool ClearType = {read=FClearType, write=FClearType, nodefault};
	__property TAdvCustomMemoStyler* SyntaxStyles = {read=FInternalStyles, write=SetMemoStyler};
	__property AnsiString Selection = {read=GetSelText, write=SetSelText};
	__property int SelStart = {read=GetSelStart, write=SetSelStart, nodefault};
	__property int SelLength = {read=GetSelLength, write=SetSelLength, nodefault};
	__property int SelStartX = {read=FSelStartX, nodefault};
	__property int SelStartY = {read=FSelStartY, nodefault};
	__property int SelEndX = {read=FSelEndX, nodefault};
	__property int SelEndY = {read=FSelEndY, nodefault};
	void __fastcall SelectWordAtCursor(void);
	AnsiString __fastcall WordAtCursor();
	AnsiString __fastcall WordTillCursor();
	AnsiString __fastcall WordAtCursorPos(int &Pos);
	AnsiString __fastcall WordAtXY(int X, int Y);
	AnsiString __fastcall TokenAtXY(int X, int Y);
	AnsiString __fastcall FullWordAtXY(int X, int Y);
	AnsiString __fastcall FullWordAtCursor();
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=0};
	void __fastcall ClearSelection(void);
	void __fastcall ClearBookmarks(void);
	void __fastcall ClearUndoRedo(void);
	void __fastcall GotoBookmark(int Index);
	bool __fastcall HasBookmarks(void);
	bool __fastcall HasMarkers(void);
	int __fastcall FindTextCount(AnsiString SearchStr, Dialogs::TFindOptions Options)/* overload */;
	int __fastcall FindTextCount(AnsiString SearchStr, TFindOptionsEx Options)/* overload */;
	int __fastcall FindText(AnsiString SearchStr, Dialogs::TFindOptions Options)/* overload */;
	int __fastcall FindText(AnsiString SearchStr, TFindOptionsEx Options)/* overload */;
	int __fastcall FindTextInMemo(AnsiString SearchStr, Dialogs::TFindOptions Options)/* overload */;
	int __fastcall FindTextInMemo(AnsiString SearchStr, TFindOptionsEx Options)/* overload */;
	int __fastcall FindTextPos(AnsiString SearchStr, Dialogs::TFindOptions Options);
	int __fastcall FindAndReplace(AnsiString SearchStr, AnsiString NewStr, Dialogs::TFindOptions Options)/* overload */;
	int __fastcall FindAndReplace(AnsiString SearchStr, AnsiString NewStr, TFindOptionsEx Options)/* overload */;
	void __fastcall Clear(void);
	HIDESBASE void __fastcall SetCursor(int ACurX, int ACurY);
	void __fastcall Undo(void);
	void __fastcall Redo(void);
	void __fastcall AddUndoStep(TUndo* AUndoStep);
	void __fastcall HideHint(void);
	bool __fastcall CanUndo(void);
	bool __fastcall CanRedo(void);
	bool __fastcall CanCopy(void);
	bool __fastcall CanCut(void);
	bool __fastcall CanPaste(void);
	void __fastcall GoToMarker(int Marker);
	void __fastcall GoToMarkerName(AnsiString MarkerText);
	void __fastcall AddMarker(int LineIndex, int ImageIndex)/* overload */;
	void __fastcall AddMarker(int LineIndex, int ImageIndex, AnsiString MarkerText)/* overload */;
	void __fastcall RemoveMarker(int LineIndex);
	void __fastcall ClearAllMarkers(void);
	virtual bool __fastcall WordIsURL(AnsiString s);
	bool __fastcall AddCodeFolding(int StartLineIndex, int EndLineIndex);
	void __fastcall RemoveCodeFolding(int StartLineIndex);
	void __fastcall RemoveAllCodeFolding(void);
	bool __fastcall IsNode(int LineIndex);
	void __fastcall ExpandAllNodes(void);
	void __fastcall CollapseAllNodes(void);
	void __fastcall ToggleNode(int LineIndex);
	void __fastcall AutoCodeFold(void);
	__property bool ExpandNode[int Index] = {read=GetExpandNode, write=SetExpandNode};
	__property AnsiString FixedBlockStart = {read=FFixedBlockStart, write=FFixedBlockStart};
	__property AnsiString FixedBlockEnd = {read=FFixedBlockEnd, write=FFixedBlockEnd};
	__property bool AcceptFiles = {read=FAcceptFiles, write=SetAcceptFiles, default=0};
	__property int ActiveLine = {read=FActiveLine, write=SetActiveLine, nodefault};
	__property Graphics::TColor BandColor = {read=FBandColor, write=SetBandColor, default=536870911};
	__property Types::TRect BlockSelection = {read=FBlockSelection, write=FBlockSelection};
	__property bool Bookmark[int Index] = {read=GetBookmark, write=SetBookmark};
	__property int Bookmarks[int Index] = {read=GetBookmarks, write=SetBookmarks};
	__property int BookmarkIndex[int Index] = {read=GetBookmarkIndex, write=SetBookmarkIndex};
	__property int BookmarkCount = {read=GetBookmarkCount, nodefault};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=8421504};
	__property bool BreakPoint[int Index] = {read=GetBreakPoint, write=SetBreakPoint};
	__property Graphics::TColor BreakpointColor = {read=FBreakpointColor, write=SetBreakpointColor, default=255};
	__property Graphics::TColor BreakpointTextColor = {read=FBreakpointTextColor, write=SetBreakpointTextColor, default=16777215};
	__property TMemoClipboardFormats ClipboardFormats = {read=FClipboardFormats, write=FClipboardFormats, nodefault};
	__property bool LineModified[int Index] = {read=GetModifiedState, write=SetModifiedState};
	__property TLineModifiedState LineModifiedInt[int Index] = {read=GetModifiedStateInt, write=SetModifiedStateInt};
	__property bool Executable[int Index] = {read=GetExecutable, write=SetExecutable};
	__property bool HideSelection = {read=FHideSelection, write=SetHideSelection, default=0};
	__property bool Overwrite = {read=FOverwrite, write=FOverwrite, nodefault};
	__property int CurX = {read=FCurX, write=SetCurX, nodefault};
	__property int CurY = {read=FCurY, write=SetCurY, nodefault};
	__property bool DelErase = {read=FDelErase, write=FDelErase, nodefault};
	__property TSelectionMode SelectionMode = {read=FSelectionMode, write=SetSelectionMode, default=0};
	__property bool SelectSingleLine = {read=FSelectSingleLine, write=FSelectSingleLine, default=0};
	__property int TopLine = {read=FTopLine, write=SetTopLine, nodefault};
	__property int LeftCol = {read=FLeftCol, write=SetLeftCol, nodefault};
	__property bool UrlAware = {read=FUrlAware, write=SetUrlAware, default=1};
	__property TPrintOptions* PrintOptions = {read=FPrintOptions, write=SetPrintOptions};
	__property bool Modified = {read=GetModified, write=SetModified, nodefault};
	__property bool WantTab = {read=FWantTab, write=FWantTab, default=1};
	__property TWordWrapStyle WordWrap = {read=FWordWrap, write=SetWordWrap, nodefault};
	__property AnsiString WrappedText = {read=GetWrappedText};
	__property AnsiString WrappedLine[int index] = {read=GetWrappedLine};
	__property TUILanguage* UILanguage = {read=FUILanguage, write=SetUILanguage};
	bool __fastcall SaveToHTML(AnsiString FileName, bool Fixedfonts = true);
	bool __fastcall SaveToHTMLStream(Classes::TMemoryStream* AStream, bool Fixedfonts = true);
	bool __fastcall SaveToRTF(AnsiString FileName, bool Fixedfonts = true);
	bool __fastcall SaveToRTFStream(Classes::TMemoryStream* AStream, bool Fixedfonts = true);
	void __fastcall CopyHTMLToClipboard(void);
	int __fastcall NumberOfPages(Graphics::TCanvas* ACanvas, int PageWidth, int PageHeight);
	void __fastcall PrintToCanvas(Graphics::TCanvas* ACanvas, int PageWidth, int PageHeight, int PageNr);
	void __fastcall PrintPages(int FromPage, int ToPage);
	void __fastcall Print(void);
	void __fastcall PrintSelection(void);
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	virtual int __fastcall GetVersionNr(void);
	virtual AnsiString __fastcall GetVersionString();
	__property TAdvUndoList* UndoList = {read=InternalUndoList};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	void __fastcall SetStyle(TAdvMemoStyle AStyle);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	
__published:
	__property Controls::TCursor Cursor = {read=GetCursorEx, write=SetCursorEx, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvCustomMemo(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSTones()
	{
		Advstyleif::_di_ITMSTones intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSTones*(void) { return (ITMSTones*)&__ITMSTones; }
	#endif
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSStyle()
	{
		Advstyleif::_di_ITMSStyle intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSStyle*(void) { return (ITMSStyle*)&__ITMSStyle; }
	#endif
	
};


class PASCALIMPLEMENTATION TAdvMemo : public TAdvCustomMemo 
{
	typedef TAdvCustomMemo inherited;
	
private:
	bool FInComment;
	int FInBrackets;
	void __fastcall AdvSyntaxMemoChange(System::TObject* Sender);
	void __fastcall AdvSyntaxMemoGutterDraw(System::TObject* Sender, Graphics::TCanvas* ACanvas, int LineNo, const Types::TRect &rct);
	void __fastcall AdvSyntaxMemoGutterClick(System::TObject* Sender, int LineNo);
	void __fastcall LoadStyle(void);
	
protected:
	virtual void __fastcall Loaded(void);
	virtual bool __fastcall IsWordBoundary(char ch);
	
public:
	__fastcall virtual TAdvMemo(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvMemo(void);
	void __fastcall RefreshMemo(void);
	__property VisiblePosCount ;
	__property VisibleLineCount ;
	__property ActiveLine ;
	__property MarkerCount ;
	
__published:
	__property PopupMenu ;
	__property AcceptFiles  = {default=0};
	__property ActiveLineSettings ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property AutoCompletion ;
	__property AutoCompletionListImages ;
	__property AutoCorrect ;
	__property AutoHintParameterDelay  = {default=2500};
	__property AutoHintParameters  = {default=0};
	__property AutoHintParameterPosition ;
	__property AutoIndent  = {default=1};
	__property AutoExpand  = {default=1};
	__property AutoThemeAdapt  = {default=0};
	__property BandColor  = {default=536870911};
	__property BlockShow  = {default=1};
	__property BlockColor  = {default=16776960};
	__property BlockLineColor  = {default=536870911};
	__property BkColor  = {index=0, default=16777215};
	__property BookmarkGlyph ;
	__property BorderColor  = {default=8421504};
	__property BorderStyle ;
	__property BreakpointColor  = {default=255};
	__property BreakpointTextColor  = {default=16777215};
	__property CaseSensitive  = {default=0};
	__property CharCase  = {default=0};
	__property ClipboardFormats ;
	__property CodeFolding ;
	__property Ctl3D ;
	__property Cursor ;
	__property DelErase ;
	__property DragMode  = {default=1};
	__property Enabled  = {default=1};
	__property EnhancedHomeKey ;
	__property Gutter ;
	__property Font ;
	__property HiddenCaret ;
	__property HideSelection  = {default=0};
	__property Lines ;
	__property MarkerList ;
	__property MemoChecker ;
	__property MemoSource ;
	__property PrintOptions ;
	__property ReadOnly  = {default=0};
	__property RightMargin  = {default=80};
	__property RightMarginColor ;
	__property ScrollBars  = {default=3};
	__property ScrollHint ;
	__property ScrollMode  = {default=0};
	__property SelColor ;
	__property SelBkColor ;
	__property SelectionMode  = {default=0};
	__property ShowHint ;
	__property ShowRightMargin ;
	__property SmartTabs ;
	__property SyntaxStyles ;
	__property TabOrder  = {default=-1};
	__property TabSize ;
	__property TabStop  = {default=0};
	__property TrimTrailingSpaces ;
	__property UILanguage ;
	__property UndoLimit  = {default=100};
	__property UndoLineByLine  = {default=0};
	__property UrlAware  = {default=1};
	__property UrlStyle ;
	__property UseStyler ;
	__property Version ;
	__property Visible  = {default=1};
	__property WantTab  = {default=1};
	__property WordWrap ;
	__property OnAutoCompletion ;
	__property OnBeforeAutoCompletion ;
	__property OnCancelAutoCompletion ;
	__property OnClipboardAction ;
	__property OnCursorChange ;
	__property OnCustomizeContextMenu ;
	__property OnCustomContextMenuClick ;
	__property OnEnter ;
	__property OnExit ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnDragOver ;
	__property OnDragDrop ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnEndDrag ;
	__property OnGetAutoCompletionList ;
	__property OnGetAutoCompletionListIndex ;
	__property OnHintForWord ;
	__property OnHintForToken ;
	__property OnHintForGutter ;
	__property OnStartDrag ;
	__property OnGutterClick ;
	__property OnGutterRightClick ;
	__property OnGutterDblClick ;
	__property OnGutterDraw ;
	__property OnChange ;
	__property OnOverwriteToggle ;
	__property OnSelectionChange ;
	__property OnStartAutoCompletion ;
	__property OnStatusChange ;
	__property OnUndoChange ;
	__property OnURLClick ;
	__property OnFind ;
	__property OnFileDrop ;
	__property OnLineBkColor ;
	__property OnReplace ;
	__property OnWordComplete ;
	__property OnInsertAutoCompletionEntry ;
	__property OnScrollHint ;
	__property OnSortAutoCompletionList ;
	__property OnGetParameterHint ;
	__property OnRetrievedParameterHint ;
	__property OnTextFound ;
	__property OnTopLeftChanged ;
	__property OnActiveLineChange ;
	__property OnColumnChange ;
	__property OnMarkerAdded ;
	__property OnMarkerRemoved ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvMemo(HWND ParentWindow) : TAdvCustomMemo(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TElementStyle;
class PASCALIMPLEMENTATION TElementStyles : public Classes::TOwnedCollection 
{
	typedef Classes::TOwnedCollection inherited;
	
public:
	TElementStyle* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvMemo* FOwner;
	bool FModified;
	HIDESBASE TElementStyle* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TElementStyle* Value);
	
protected:
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	virtual TMetaClass* __fastcall CreateItemClass(void);
	__fastcall TElementStyles(Classes::TComponent* AOwner);
	void __fastcall Init(void);
	HIDESBASE TElementStyle* __fastcall Add(void);
	HIDESBASE TElementStyle* __fastcall Insert(int Index);
	__property TElementStyle* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	bool __fastcall IsWordBoundary(char ch);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TElementStyles(void) { }
	#pragma option pop
	
};


class DELPHICLASS TRegionDefinitions;
class DELPHICLASS TRegionDefinition;
class PASCALIMPLEMENTATION TRegionDefinitions : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TRegionDefinition* operator[](int Index) { return Items[Index]; }
	
private:
	Classes::TPersistent* FComponent;
	HIDESBASE TRegionDefinition* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TRegionDefinition* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TRegionDefinitions(Classes::TPersistent* Component);
	__fastcall virtual ~TRegionDefinitions(void);
	__property TRegionDefinition* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TRegionDefinition* __fastcall Add(void);
	HIDESBASE TRegionDefinition* __fastcall Insert(int Index);
};


class PASCALIMPLEMENTATION TAdvCustomMemoStyler : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	TElementStyles* FAllStyles;
	AnsiString FLineComment;
	AnsiString FMultiCommentLeft;
	AnsiString FMultiCommentRight;
	TCharStyle* FCommentStyle;
	TCharStyle* FNumberStyle;
	TCharStyle* FHighlightStyle;
	Classes::TStringList* FlistAuto;
	THintParameter* FHintParameter;
	AnsiString FNumericChars;
	AnsiString FHexIdentifier;
	AnsiString FBlockEnd;
	AnsiString FBlockStart;
	AnsiString FLiteral;
	bool FCustomDraw;
	AnsiString FFilter;
	AnsiString FDefaultExtension;
	AnsiString FExtensions;
	AnsiString FDescription;
	AnsiString FStylerName;
	TRegionDefinitions* FRegionDefinitions;
	AnsiString FEscapeChar;
	virtual void __fastcall SetStyle(const int Index, const TCharStyle* Value);
	void __fastcall SetStyles(const TElementStyles* Value);
	void __fastcall Update(void);
	void __fastcall SetlistAuto(const Classes::TStringList* Value);
	void __fastcall SetRegionDefinitions(TRegionDefinitions* Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TAdvCustomMemoStyler(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvCustomMemoStyler(void);
	__property AnsiString Description = {read=FDescription, write=FDescription};
	__property AnsiString Filter = {read=FFilter, write=FFilter};
	__property AnsiString DefaultExtension = {read=FDefaultExtension, write=FDefaultExtension};
	__property AnsiString Extensions = {read=FExtensions, write=FExtensions};
	__property AnsiString StylerName = {read=FStylerName, write=FStylerName};
	__property AnsiString BlockStart = {read=FBlockStart, write=FBlockStart};
	__property AnsiString BlockEnd = {read=FBlockEnd, write=FBlockEnd};
	__property AnsiString LineComment = {read=FLineComment, write=FLineComment};
	__property AnsiString Literal = {read=FLiteral, write=FLiteral};
	__property AnsiString MultiCommentLeft = {read=FMultiCommentLeft, write=FMultiCommentLeft};
	__property AnsiString MultiCommentRight = {read=FMultiCommentRight, write=FMultiCommentRight};
	__property TElementStyles* AllStyles = {read=FAllStyles, write=SetStyles};
	__property TCharStyle* CommentStyle = {read=FCommentStyle, write=SetStyle, index=1};
	__property TCharStyle* NumberStyle = {read=FNumberStyle, write=SetStyle, index=2};
	__property TCharStyle* HighlightStyle = {read=FHighlightStyle, write=SetStyle, index=3};
	__property Classes::TStringList* AutoCompletion = {read=FlistAuto, write=SetlistAuto};
	__property THintParameter* HintParameter = {read=FHintParameter, write=FHintParameter};
	__property AnsiString NumericChars = {read=FNumericChars, write=FNumericChars};
	__property AnsiString HexIdentifier = {read=FHexIdentifier, write=FHexIdentifier};
	__property AnsiString EscapeChar = {read=FEscapeChar, write=FEscapeChar};
	__property bool CustomDraw = {read=FCustomDraw, write=FCustomDraw, nodefault};
	virtual void __fastcall DrawKeyword(Graphics::TCanvas* Canvas, AnsiString AKeyword, Types::TRect &ARect);
	__property TRegionDefinitions* RegionDefinitions = {read=FRegionDefinitions, write=SetRegionDefinitions};
};



class PASCALIMPLEMENTATION TAdvMemoStrings : public Classes::TStringList 
{
	typedef Classes::TStringList inherited;
	
private:
	TAdvCustomMemo* Memo;
	int FLockCount;
	bool FDeleting;
	Classes::TList* FLinesProp;
	TIntList* FListLengths;
	bool FNoObjCreate;
	int __fastcall GetRealCount(void);
	AnsiString __fastcall GetTextEx();
	void __fastcall SetTextEx(const AnsiString Value);
	
protected:
	virtual void __fastcall SetUpdateState(bool Updating);
	virtual AnsiString __fastcall Get(int Index);
	virtual void __fastcall Put(int Index, const AnsiString S);
	virtual System::TObject* __fastcall GetObject(int Index);
	virtual void __fastcall PutObject(int Index, System::TObject* AObject);
	void __fastcall RestoreObject(int Index, System::TObject* AObject);
	TLineProp* __fastcall CreateProp(int Index);
	void __fastcall ClearLinesProp(void);
	void __fastcall AddLineProp(System::TObject* p);
	TLineProp* __fastcall GetLineProp(int Index);
	void __fastcall SetLineProp(int Index, const TLineProp* Value);
	void __fastcall AssignEx(Classes::TPersistent* Source);
	__property Classes::TList* PropList = {read=FLinesProp};
	
public:
	__fastcall TAdvMemoStrings(void);
	__fastcall virtual ~TAdvMemoStrings(void);
	int __fastcall DoAdd(const AnsiString S);
	virtual int __fastcall Add(const AnsiString S);
	virtual int __fastcall AddObject(const AnsiString S, System::TObject* AObject);
	virtual void __fastcall Clear(void);
	void __fastcall ClearStrings(void);
	virtual void __fastcall AddStrings(Classes::TStrings* strings);
	void __fastcall DoInsert(int Index, const AnsiString S);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall Delete(int Index);
	virtual void __fastcall Insert(int Index, const AnsiString S);
	virtual void __fastcall LoadFromFile(const AnsiString FileName);
	virtual void __fastcall LoadFromStream(Classes::TStream* Stream);
	virtual void __fastcall SaveToStream(Classes::TStream* Stream);
	virtual void __fastcall SaveToFile(const AnsiString FileName);
	__property int RealCount = {read=GetRealCount, nodefault};
	__property AnsiString Text = {read=GetTextEx, write=SetTextEx};
	
__published:
	__property OnChange ;
	__property OnChanging ;
};


class PASCALIMPLEMENTATION TUndo : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	TAdvCustomMemo* Memo;
	int FUndoCurX0;
	int FUndoCurY0;
	int FUndoCurX;
	int FUndoCurY;
	AnsiString FUndoText;
	bool FLinkedUndo;
	
public:
	__fastcall TUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText);
	virtual bool __fastcall Append(TUndo* NewUndo);
	void __fastcall Undo(void);
	void __fastcall Redo(void);
	virtual void __fastcall PerformUndo(void) = 0 ;
	virtual void __fastcall PerformRedo(void) = 0 ;
	__property bool LinkedUndo = {read=FLinkedUndo, write=FLinkedUndo, nodefault};
	__property int UndoCurX0 = {read=FUndoCurX0, write=FUndoCurX0, nodefault};
	__property int UndoCurY0 = {read=FUndoCurY0, write=FUndoCurY0, nodefault};
	__property int UndoCurX = {read=FUndoCurX, write=FUndoCurX, nodefault};
	__property int UndoCurY = {read=FUndoCurY, write=FUndoCurY, nodefault};
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TInsertCharUndo;
class PASCALIMPLEMENTATION TInsertCharUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	virtual bool __fastcall Append(TUndo* NewUndo);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TInsertCharUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TInsertCharUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TNewLineUndo;
class PASCALIMPLEMENTATION TNewLineUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	virtual bool __fastcall Append(TUndo* NewUndo);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TNewLineUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TNewLineUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TOverwriteCharUndo;
class PASCALIMPLEMENTATION TOverwriteCharUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TOverwriteCharUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TOverwriteCharUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDeleteCharUndo;
class PASCALIMPLEMENTATION TDeleteCharUndo : public TUndo 
{
	typedef TUndo inherited;
	
private:
	bool FIsBackspace;
	
public:
	virtual bool __fastcall Append(TUndo* NewUndo);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
	__property bool IsBackspace = {read=FIsBackspace, write=FIsBackspace, nodefault};
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TDeleteCharUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TDeleteCharUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDeleteLineUndo;
class PASCALIMPLEMENTATION TDeleteLineUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TDeleteLineUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TDeleteLineUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TSelUndo;
class PASCALIMPLEMENTATION TSelUndo : public TUndo 
{
	typedef TUndo inherited;
	
private:
	int FUndoSelStartX;
	int FUndoSelStartY;
	int FUndoSelEndX;
	int FUndoSelEndY;
	
public:
	__property int UndoSelStartX = {read=FUndoSelStartX, write=FUndoSelStartX, nodefault};
	__property int UndoSelStartY = {read=FUndoSelStartY, write=FUndoSelStartY, nodefault};
	__property int UndoSelEndX = {read=FUndoSelEndX, write=FUndoSelEndX, nodefault};
	__property int UndoSelEndY = {read=FUndoSelEndY, write=FUndoSelEndY, nodefault};
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TSelUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TSelUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDeleteBufUndo;
class PASCALIMPLEMENTATION TDeleteBufUndo : public TSelUndo 
{
	typedef TSelUndo inherited;
	
public:
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TUndo.Create */ inline __fastcall TDeleteBufUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText) : TSelUndo(ACurX0, ACurY0, ACurX, ACurY, AText) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TDeleteBufUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPasteUndo;
class PASCALIMPLEMENTATION TPasteUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	__fastcall TPasteUndo(int ACurX0, int ACurY0, int ACurX, int ACurY, AnsiString AText, bool IsLinked);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TPasteUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TInsertOverwriteUndo;
class PASCALIMPLEMENTATION TInsertOverwriteUndo : public TUndo 
{
	typedef TUndo inherited;
	
private:
	bool FInsertMode;
	
public:
	__fastcall TInsertOverwriteUndo(bool AInsertMode);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
	__property bool InsertMode = {read=FInsertMode, write=FInsertMode, nodefault};
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TInsertOverwriteUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TIndentUndo;
class PASCALIMPLEMENTATION TIndentUndo : public TUndo 
{
	typedef TUndo inherited;
	
private:
	int FIndent;
	int FSelRowFrom;
	int FSelRowTo;
	
public:
	__fastcall TIndentUndo(int SelFrom, int SelTo, int Indent);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
	__property int Indent = {read=FIndent, write=FIndent, nodefault};
	__property int SelRowFrom = {read=FSelRowFrom, write=FSelRowFrom, nodefault};
	__property int SelRowTo = {read=FSelRowTo, write=FSelRowTo, nodefault};
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TIndentUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TCorrectUndo;
class PASCALIMPLEMENTATION TCorrectUndo : public TUndo 
{
	typedef TUndo inherited;
	
public:
	__fastcall TCorrectUndo(int LineNo, AnsiString UndoLine);
	virtual void __fastcall PerformUndo(void);
	virtual void __fastcall PerformRedo(void);
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TCorrectUndo(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoCapitalChecker;
class PASCALIMPLEMENTATION TAdvMemoCapitalChecker : public TAdvMemoChecker 
{
	typedef TAdvMemoChecker inherited;
	
public:
	__fastcall virtual TAdvMemoCapitalChecker(Classes::TComponent* AOwner);
	virtual void __fastcall CorrectLine(int LineNo);
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvMemoCapitalChecker(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvStringList;
class PASCALIMPLEMENTATION TAdvStringList : public Classes::TStringList 
{
	typedef Classes::TStringList inherited;
	
private:
	void __fastcall ReadStrings(Classes::TReader* Reader);
	void __fastcall WriteStrings(Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
public:
	#pragma option push -w-inl
	/* TStringList.Destroy */ inline __fastcall virtual ~TAdvStringList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TAdvStringList(void) : Classes::TStringList() { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TRegionDefinition : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TRegionType FRegionType;
	AnsiString FRegionEnd;
	AnsiString FIdentifier;
	AnsiString FRegionStart;
	bool FShowComments;
	void __fastcall SetIdentifier(const AnsiString Value);
	void __fastcall SetRegionEnd(const AnsiString Value);
	void __fastcall SetRegionStart(const AnsiString Value);
	void __fastcall SetRegionType(const TRegionType Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TRegionDefinition(Classes::TCollection* Collection);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property AnsiString Identifier = {read=FIdentifier, write=SetIdentifier};
	__property AnsiString RegionStart = {read=FRegionStart, write=SetRegionStart};
	__property AnsiString RegionEnd = {read=FRegionEnd, write=SetRegionEnd};
	__property TRegionType RegionType = {read=FRegionType, write=SetRegionType, nodefault};
	__property bool ShowComments = {read=FShowComments, write=FShowComments, nodefault};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TRegionDefinition(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TElementStyle : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	Classes::TStringList* FKeyWords;
	Graphics::TFont* FFont;
	Graphics::TColor FBGColor;
	AnsiString FInfo;
	TStyleType FStyleType;
	int StyleNo;
	char FBracketStart;
	char FBracketEnd;
	AnsiString FSymbols;
	void __fastcall SetColorbg(const Graphics::TColor Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetKeyWords(const Classes::TStringList* Value);
	void __fastcall SetStyleType(const TStyleType Value);
	void __fastcall SetBracketStart(const char Value);
	void __fastcall SetBracketEnd(const char Value);
	void __fastcall SetSymbols(const AnsiString Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	HIDESBASE void __fastcall Changed(void);
	__fastcall virtual TElementStyle(Classes::TCollection* Collection);
	__fastcall virtual ~TElementStyle(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property Classes::TStringList* KeyWords = {read=FKeyWords, write=SetKeyWords};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property Graphics::TColor BGColor = {read=FBGColor, write=SetColorbg, nodefault};
	__property TStyleType StyleType = {read=FStyleType, write=SetStyleType, nodefault};
	__property char BracketStart = {read=FBracketStart, write=SetBracketStart, nodefault};
	__property char BracketEnd = {read=FBracketEnd, write=SetBracketEnd, nodefault};
	__property AnsiString Symbols = {read=FSymbols, write=SetSymbols};
	__property AnsiString Info = {read=FInfo, write=FInfo};
};


class DELPHICLASS TAdvMemoFindDialog;
class PASCALIMPLEMENTATION TAdvMemoFindDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FDisplayMessage;
	AnsiString FNotFoundMessage;
	AnsiString FFindText;
	TAdvCustomMemo* FAdvMemo;
	Dialogs::TFindDialog* FFindDialog;
	Advfinddialogform::TAdvFindDialog* FFindDialogEx;
	Classes::TNotifyEvent FOnFindDone;
	Classes::TNotifyEvent FOnFindText;
	bool FFocusMemo;
	bool FDialogInitialized;
	bool FInitParentHandle;
	bool FAutoHighlight;
	Classes::TNotifyEvent FOnShow;
	Classes::TNotifyEvent FOnClose;
	Dialogs::TFindOptions __fastcall GetFindOptions(void);
	void __fastcall SetFindOptions(const Dialogs::TFindOptions Value);
	AnsiString __fastcall GetFindText();
	
protected:
	void __fastcall DoShow(System::TObject* Sender);
	void __fastcall FindDir(bool prev);
	void __fastcall Find(System::TObject* Sender);
	void __fastcall FindPrevious(System::TObject* Sender);
	void __fastcall FindChange(System::TObject* Sender, AnsiString &AText);
	void __fastcall Close(System::TObject* Sender);
	void __fastcall Marker(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual ~TAdvMemoFindDialog(void);
	__fastcall virtual TAdvMemoFindDialog(Classes::TComponent* AOwner);
	void __fastcall Execute(void);
	void __fastcall CloseDialog(void);
	__property bool InitParentHandle = {read=FInitParentHandle, write=FInitParentHandle, nodefault};
	
__published:
	__property bool AutoHighlight = {read=FAutoHighlight, write=FAutoHighlight, default=0};
	__property AnsiString NotFoundMessage = {read=FNotFoundMessage, write=FNotFoundMessage};
	__property bool DisplayMessage = {read=FDisplayMessage, write=FDisplayMessage, default=1};
	__property Advfinddialogform::TAdvFindDialog* FindDialog = {read=FFindDialogEx, write=FFindDialogEx};
	__property AnsiString FindText = {read=GetFindText, write=FFindText};
	__property bool FocusMemo = {read=FFocusMemo, write=FFocusMemo, default=1};
	__property TAdvCustomMemo* AdvMemo = {read=FAdvMemo, write=FAdvMemo};
	__property Dialogs::TFindOptions Options = {read=GetFindOptions, write=SetFindOptions, nodefault};
	__property Classes::TNotifyEvent OnFindDone = {read=FOnFindDone, write=FOnFindDone};
	__property Classes::TNotifyEvent OnFindText = {read=FOnFindText, write=FOnFindText};
	__property Classes::TNotifyEvent OnShow = {read=FOnShow, write=FOnShow};
	__property Classes::TNotifyEvent OnClose = {read=FOnClose, write=FOnClose};
};


class DELPHICLASS TAdvMemoFindReplaceDialog;
class PASCALIMPLEMENTATION TAdvMemoFindReplaceDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FDisplayMessage;
	AnsiString FNotFoundMessage;
	AnsiString FFindText;
	TAdvCustomMemo* FAdvMemo;
	Dialogs::TReplaceDialog* FReplaceDialog;
	Advreplacedialogform::TAdvReplaceDialog* FReplaceDialogEx;
	AnsiString FReplaceText;
	Classes::TNotifyEvent FOnReplaceDone;
	bool FFocusMemo;
	bool FDialogInitialized;
	bool FInitParentHandle;
	bool FAutoHighlight;
	Classes::TNotifyEvent FOnShow;
	Classes::TNotifyEvent FOnClose;
	int FCount;
	AnsiString __fastcall GetReplaceText();
	AnsiString __fastcall GetFindText();
	Dialogs::TFindOptions __fastcall GetFindOptions(void);
	void __fastcall SetFindOptions(const Dialogs::TFindOptions Value);
	
protected:
	void __fastcall DoShow(System::TObject* Sender);
	void __fastcall Find(System::TObject* Sender);
	void __fastcall FindChange(System::TObject* Sender, AnsiString &AText);
	void __fastcall Close(System::TObject* Sender);
	void __fastcall Replace(System::TObject* Sender);
	void __fastcall ReplaceAll(System::TObject* Sender);
	void __fastcall DoReplaceDone(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual ~TAdvMemoFindReplaceDialog(void);
	__fastcall virtual TAdvMemoFindReplaceDialog(Classes::TComponent* AOwner);
	void __fastcall Execute(void);
	void __fastcall CloseDialog(void);
	__property bool InitParentHandle = {read=FInitParentHandle, write=FInitParentHandle, nodefault};
	__property int Count = {read=FCount, nodefault};
	
__published:
	__property bool AutoHighlight = {read=FAutoHighlight, write=FAutoHighlight, default=0};
	__property AnsiString NotFoundMessage = {read=FNotFoundMessage, write=FNotFoundMessage};
	__property bool DisplayMessage = {read=FDisplayMessage, write=FDisplayMessage, default=1};
	__property AnsiString FindText = {read=GetFindText, write=FFindText};
	__property Advreplacedialogform::TAdvReplaceDialog* ReplaceDialog = {read=FReplaceDialogEx, write=FReplaceDialogEx};
	__property AnsiString ReplaceText = {read=GetReplaceText, write=FReplaceText};
	__property TAdvCustomMemo* AdvMemo = {read=FAdvMemo, write=FAdvMemo};
	__property bool FocusMemo = {read=FFocusMemo, write=FFocusMemo, default=1};
	__property Dialogs::TFindOptions Options = {read=GetFindOptions, write=SetFindOptions, nodefault};
	__property Classes::TNotifyEvent OnReplaceDone = {read=FOnReplaceDone, write=FOnReplaceDone};
	__property Classes::TNotifyEvent OnClose = {read=FOnClose, write=FOnClose};
	__property Classes::TNotifyEvent OnShow = {read=FOnShow, write=FOnShow};
};


class DELPHICLASS TAdvMemoAction;
class PASCALIMPLEMENTATION TAdvMemoAction : public Actnlist::TAction 
{
	typedef Actnlist::TAction inherited;
	
private:
	TAdvCustomMemo* FControl;
	void __fastcall SetControl(TAdvCustomMemo* Value);
	
protected:
	virtual TAdvCustomMemo* __fastcall GetControl(System::TObject* Target);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual ~TAdvMemoAction(void);
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	__property TAdvCustomMemo* Control = {read=FControl, write=SetControl};
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoAction(Classes::TComponent* AOwner) : Actnlist::TAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoCut;
class PASCALIMPLEMENTATION TAdvMemoCut : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoCut(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoCut(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoCopy;
class PASCALIMPLEMENTATION TAdvMemoCopy : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoCopy(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoCopy(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoPaste;
class PASCALIMPLEMENTATION TAdvMemoPaste : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoPaste(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoPaste(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoSelectAll;
class PASCALIMPLEMENTATION TAdvMemoSelectAll : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoSelectAll(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoSelectAll(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoUndo;
class PASCALIMPLEMENTATION TAdvMemoUndo : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoUndo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoUndo(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoRedo;
class PASCALIMPLEMENTATION TAdvMemoRedo : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoRedo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoRedo(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvMemoDelete;
class PASCALIMPLEMENTATION TAdvMemoDelete : public TAdvMemoAction 
{
	typedef TAdvMemoAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TAdvMemoAction.Destroy */ inline __fastcall virtual ~TAdvMemoDelete(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TAdvMemoDelete(Classes::TComponent* AOwner) : TAdvMemoAction(AOwner) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x3;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x3;
#define DATE_VER "Nov, 2012"
extern PACKAGE int ADVMEMO_lpcreate;

}	/* namespace Advmemo */
using namespace Advmemo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmemo
