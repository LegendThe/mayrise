// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advdatalabel.pas' rev: 11.00

#ifndef AdvdatalabelHPP
#define AdvdatalabelHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advdatalabel
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TDataType { dtString, dtInteger, dtFloat, dtDateTime };
#pragma option pop

#pragma option push -b-
enum TEllipsis { elNone, elEnd, elPath };
#pragma option pop

class DELPHICLASS TAdvCustomDataLabel;
class PASCALIMPLEMENTATION TAdvCustomDataLabel : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	int FCaptionMargin;
	Classes::TAlignment FCaptionAlignment;
	Classes::TAlignment FDataAlignment;
	Graphics::TFont* FDataFont;
	int FDataIndent;
	TEllipsis FDataEllipsis;
	TEllipsis FCaptionEllipsis;
	AnsiString FSeparator;
	bool FURLUnderline;
	Graphics::TColor FURLColor;
	void __fastcall SetCaptionMargin(const int Value);
	void __fastcall SetCaptionAlignment(const Classes::TAlignment Value);
	void __fastcall SetDataAlignment(const Classes::TAlignment Value);
	void __fastcall SetDataIndent(const int Value);
	void __fastcall SetDataFont(const Graphics::TFont* Value);
	void __fastcall SetCaptionEllipsis(const TEllipsis Value);
	void __fastcall SetDataEllipsis(const TEllipsis Value);
	void __fastcall SetSeparator(const AnsiString Value);
	void __fastcall SetURLColor(const Graphics::TColor Value);
	void __fastcall SetURLUnderline(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	
protected:
	void __fastcall DrawItem(AnsiString Caption, AnsiString Data, Graphics::TFont* DataFont, Classes::TAlignment AAlignment, TEllipsis AEllipsis, const Types::TRect &ARect, bool Selected);
	
public:
	__fastcall virtual TAdvCustomDataLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvCustomDataLabel(void);
	__property Classes::TAlignment CaptionAlignment = {read=FCaptionAlignment, write=SetCaptionAlignment, default=0};
	__property TEllipsis CaptionEllipsis = {read=FCaptionEllipsis, write=SetCaptionEllipsis, default=0};
	__property int CaptionMargin = {read=FCaptionMargin, write=SetCaptionMargin, nodefault};
	__property Classes::TAlignment DataAlignment = {read=FDataAlignment, write=SetDataAlignment, default=0};
	__property TEllipsis DataEllipsis = {read=FDataEllipsis, write=SetDataEllipsis, default=0};
	__property Graphics::TFont* DataFont = {read=FDataFont, write=SetDataFont};
	__property int DataIndent = {read=FDataIndent, write=SetDataIndent, default=60};
	__property AnsiString Separator = {read=FSeparator, write=SetSeparator};
	__property Graphics::TColor URLColor = {read=FURLColor, write=SetURLColor, default=16711680};
	__property bool URLUnderline = {read=FURLUnderline, write=SetURLUnderline, default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class DELPHICLASS TAdvDataLabel;
class PASCALIMPLEMENTATION TAdvDataLabel : public TAdvCustomDataLabel 
{
	typedef TAdvCustomDataLabel inherited;
	
private:
	AnsiString FCaption;
	AnsiString FData;
	AnsiString FDataFormat;
	int FDataAsInt;
	double FDataAsFloat;
	System::TDateTime FDataAsDateTime;
	TDataType FDataType;
	AnsiString FDataFloatFormat;
	AnsiString FDataDateFormat;
	AnsiString FDataIntFormat;
	bool FSelected;
	Controls::TCursor FOldCursor;
	Classes::TNotifyEvent FOnAnchorClick;
	AnsiString FDataHint;
	bool FDataURL;
	bool FInData;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetData(const AnsiString Value);
	void __fastcall SetDataAsDate(const System::TDateTime Value);
	void __fastcall SetDataAsDateTime(const System::TDateTime Value);
	void __fastcall SetDataAsFloat(const double Value);
	void __fastcall SetDataAsInt(const int Value);
	void __fastcall SetDataAsTime(const System::TDateTime Value);
	void __fastcall SetDataFormat(const AnsiString Value);
	void __fastcall SetDataDateFormat(const AnsiString Value);
	void __fastcall SetDataFloatFormat(const AnsiString Value);
	void __fastcall SetDataIntFormat(const AnsiString Value);
	void __fastcall SetSelected(const bool Value);
	void __fastcall SetDataURL(const bool Value);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	
protected:
	DYNAMIC void __fastcall DblClick(void);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	Types::TRect __fastcall GetDataRect();
	virtual AnsiString __fastcall GetDataString();
	virtual AnsiString __fastcall GetCaptionString();
	virtual void __fastcall DoAnchorClick(void);
	
public:
	__fastcall virtual TAdvDataLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvDataLabel(void);
	__property int DataAsInt = {read=FDataAsInt, write=SetDataAsInt, nodefault};
	__property double DataAsFloat = {read=FDataAsFloat, write=SetDataAsFloat};
	__property System::TDateTime DataAsDate = {read=FDataAsDateTime, write=SetDataAsDate};
	__property System::TDateTime DataAsTime = {read=FDataAsDateTime, write=SetDataAsTime};
	__property System::TDateTime DataAsDateTime = {read=FDataAsDateTime, write=SetDataAsDateTime};
	__property bool Selected = {read=FSelected, write=SetSelected, nodefault};
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property CaptionAlignment  = {default=0};
	__property CaptionEllipsis  = {default=0};
	__property AnsiString Data = {read=FData, write=SetData};
	__property Font ;
	__property DataAlignment  = {default=0};
	__property DataEllipsis  = {default=0};
	__property DataFont ;
	__property AnsiString DataFormat = {read=FDataFormat, write=SetDataFormat};
	__property DataIndent  = {default=60};
	__property AnsiString DataIntFormat = {read=FDataIntFormat, write=SetDataIntFormat};
	__property AnsiString DataFloatFormat = {read=FDataFloatFormat, write=SetDataFloatFormat};
	__property AnsiString DataDateFormat = {read=FDataDateFormat, write=SetDataDateFormat};
	__property AnsiString DataHint = {read=FDataHint, write=FDataHint};
	__property bool DataURL = {read=FDataURL, write=SetDataURL, default=0};
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property URLColor  = {default=16711680};
	__property URLUnderline  = {default=1};
	__property Version ;
	__property Classes::TNotifyEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
};


class DELPHICLASS TDataItem;
class PASCALIMPLEMENTATION TDataItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FCaption;
	AnsiString FData;
	AnsiString FDataFormat;
	int FDataAsInt;
	double FDataAsFloat;
	System::TDateTime FDataAsDateTime;
	TDataType FDataType;
	AnsiString FDataFloatFormat;
	AnsiString FDataDateFormat;
	AnsiString FDataIntFormat;
	AnsiString FDataHint;
	bool FDataURL;
	Graphics::TFont* FDataFont;
	TEllipsis FDataEllipsis;
	Classes::TAlignment FDataAlignment;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetData(const AnsiString Value);
	void __fastcall SetDataAsDate(const System::TDateTime Value);
	void __fastcall SetDataAsDateTime(const System::TDateTime Value);
	void __fastcall SetDataAsFloat(const double Value);
	void __fastcall SetDataAsInt(const int Value);
	void __fastcall SetDataAsTime(const System::TDateTime Value);
	void __fastcall SetDataDateFormat(const AnsiString Value);
	void __fastcall SetDataFloatFormat(const AnsiString Value);
	void __fastcall SetDataFormat(const AnsiString Value);
	void __fastcall SetDataIntFormat(const AnsiString Value);
	void __fastcall SetDataURL(const bool Value);
	void __fastcall SetDataFont(const Graphics::TFont* Value);
	void __fastcall SetDataEllipsis(const TEllipsis Value);
	void __fastcall SetDataAlignment(const Classes::TAlignment Value);
	
public:
	__fastcall virtual TDataItem(Classes::TCollection* Collection);
	__fastcall virtual ~TDataItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	HIDESBASE void __fastcall Changed(void);
	AnsiString __fastcall GetCaptionString();
	AnsiString __fastcall GetDataString();
	__property int DataAsInt = {read=FDataAsInt, write=SetDataAsInt, nodefault};
	__property double DataAsFloat = {read=FDataAsFloat, write=SetDataAsFloat};
	__property System::TDateTime DataAsDate = {read=FDataAsDateTime, write=SetDataAsDate};
	__property System::TDateTime DataAsTime = {read=FDataAsDateTime, write=SetDataAsTime};
	__property System::TDateTime DataAsDateTime = {read=FDataAsDateTime, write=SetDataAsDateTime};
	
__published:
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property AnsiString Data = {read=FData, write=SetData};
	__property Classes::TAlignment DataAlignment = {read=FDataAlignment, write=SetDataAlignment, default=0};
	__property TEllipsis DataEllipsis = {read=FDataEllipsis, write=SetDataEllipsis, default=0};
	__property Graphics::TFont* DataFont = {read=FDataFont, write=SetDataFont};
	__property AnsiString DataFormat = {read=FDataFormat, write=SetDataFormat};
	__property AnsiString DataIntFormat = {read=FDataIntFormat, write=SetDataIntFormat};
	__property AnsiString DataFloatFormat = {read=FDataFloatFormat, write=SetDataFloatFormat};
	__property AnsiString DataDateFormat = {read=FDataDateFormat, write=SetDataDateFormat};
	__property AnsiString DataHint = {read=FDataHint, write=FDataHint};
	__property bool DataURL = {read=FDataURL, write=SetDataURL, default=0};
};


class DELPHICLASS TDataCollection;
class DELPHICLASS TAdvDataList;
typedef void __fastcall (__closure *TAnchorEvent)(System::TObject* Sender, int Index);

class PASCALIMPLEMENTATION TAdvDataList : public TAdvCustomDataLabel 
{
	typedef TAdvCustomDataLabel inherited;
	
private:
	TDataCollection* FData;
	int FHintItem;
	Controls::TCursor FOldCursor;
	TAnchorEvent FOnAnchorClick;
	void __fastcall SetData(const TDataCollection* Value);
	
protected:
	virtual void __fastcall Paint(void);
	virtual void __fastcall Loaded(void);
	HIDESBASE MESSAGE void __fastcall CMHintShow(Messages::TMessage &Msg);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DoAnchorClick(int Index);
	
public:
	__fastcall virtual TAdvDataList(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvDataList(void);
	int __fastcall XYToItem(int X, int Y);
	Types::TRect __fastcall GetItemRect(int Index);
	Types::TRect __fastcall GetDataRect(int Index);
	
__published:
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property CaptionAlignment  = {default=0};
	__property CaptionEllipsis  = {default=0};
	__property TDataCollection* Data = {read=FData, write=SetData};
	__property DataFont ;
	__property DataIndent  = {default=60};
	__property DragCursor  = {default=-12};
	__property DragKind  = {default=0};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property PopupMenu ;
	__property Separator ;
	__property ShowHint ;
	__property Version ;
	__property TAnchorEvent OnAnchorClick = {read=FOnAnchorClick, write=FOnAnchorClick};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseActivate ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
};


class PASCALIMPLEMENTATION TDataCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TDataItem* operator[](int Index) { return Items[Index]; }
	
private:
	TAdvDataList* FList;
	HIDESBASE TDataItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TDataItem* Value);
	
protected:
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	__fastcall TDataCollection(TAdvDataList* AOwner);
	HIDESBASE TDataItem* __fastcall Add(void);
	HIDESBASE TDataItem* __fastcall Insert(int Index);
	__property TDataItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TDataCollection(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advdatalabel */
using namespace Advdatalabel;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advdatalabel
