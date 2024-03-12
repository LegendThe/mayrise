// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbhtmlab.pas' rev: 11.00

#ifndef DbhtmlabHPP
#define DbhtmlabHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Htmlabel.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbhtmlab
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TGetDataEvent)(System::TObject* Sender, AnsiString Tag, AnsiString &Data);

class DELPHICLASS THTMLDataLink;
class DELPHICLASS TDBHTMLabel;
class PASCALIMPLEMENTATION TDBHTMLabel : public Htmlabel::THTMLabel 
{
	typedef Htmlabel::THTMLabel inherited;
	
private:
	THTMLDataLink* FDataLink;
	AnsiString FDBHTMLText;
	Graphics::TColor FSelectFontColor;
	Graphics::TColor FNormalFontColor;
	TGetDataEvent FOnGetData;
	TGetDataEvent FOnTransformData;
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	void __fastcall SetSelectFontColor(const Graphics::TColor Value);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall UpdateDisplText(void);
	virtual void __fastcall Loaded(void);
	virtual bool __fastcall HTMLPaint(Graphics::TCanvas* Canvas, AnsiString s, const Types::TRect &fr, Controls::TImageList* FImages, int XPos, int YPos, int Focuslink, int Hoverlink, int ShadowOffset, bool Checkhotspot, bool Checkheight, bool Print, bool Selected, bool Blink, bool Hoverstyle, double Resfactor, Graphics::TColor UrlColor, Graphics::TColor HoverColor, Graphics::TColor HoverFontColor, Graphics::TColor ShadowColor, AnsiString &AnchorVal, AnsiString &StripVal, AnsiString &FocusAnchor, int &xsize, int &ysize, int &Hyperlinks, int &Mouselink, Types::TRect &hoverrect);
	AnsiString __fastcall HTMLDBReplace(AnsiString s, Db::TDataSet* DataSet);
	void __fastcall DBUpdate(void);
	
public:
	__fastcall virtual TDBHTMLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBHTMLabel(void);
	void __fastcall UpdateHTML(void);
	virtual AnsiString __fastcall GetDisplText();
	
__published:
	__property Db::TDataSource* Datasource = {read=GetDataSource, write=SetDataSource};
	__property Graphics::TColor SelectFontColor = {read=FSelectFontColor, write=SetSelectFontColor, nodefault};
	__property TGetDataEvent OnGetData = {read=FOnGetData, write=FOnGetData};
	__property TGetDataEvent OnTransformData = {read=FOnTransformData, write=FOnTransformData};
};


class PASCALIMPLEMENTATION THTMLDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBHTMLabel* FLabel;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int distance);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	
public:
	__fastcall THTMLDataLink(TDBHTMLabel* ALabel);
	__fastcall virtual ~THTMLDataLink(void);
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;

}	/* namespace Dbhtmlab */
using namespace Dbhtmlab;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbhtmlab
