// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipsectionitem.pas' rev: 11.00

#ifndef GdipsectionitemHPP
#define GdipsectionitemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipsectionitem
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TSectionItem;
class PASCALIMPLEMENTATION TSectionItem : public Gdiptextitem::TTextItem 
{
	typedef Gdiptextitem::TTextItem inherited;
	
private:
	Graphics::TColor FLineColor;
	int FLineSize;
	Controls::TMargins* FLineMargin;
	Graphics::TPenStyle FLineStyle;
	Byte FLineOpacity;
	Gdipcustomitem::TItemLineLocations FLineLocation;
	bool FLineVisible;
	void __fastcall SetLineColor(const Graphics::TColor Value);
	void __fastcall SetLineLocation(const Gdipcustomitem::TItemLineLocations Value);
	void __fastcall SetLineMargin(const Controls::TMargins* Value);
	void __fastcall SetLineOpacity(const Byte Value);
	void __fastcall SetLineSize(const int Value);
	void __fastcall SetLineStyle(const Graphics::TPenStyle Value);
	void __fastcall SetLineVisible(const bool Value);
	
protected:
	virtual void __fastcall DrawLine(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	void __fastcall LineMarginChanged(System::TObject* Sender);
	virtual int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TSectionItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TSectionItem(void);
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual TMetaClass* __fastcall GetClassType(void);
	virtual void __fastcall DrawInRect(Advgdip::TGPGraphics* g, const Gdipcustomitem::TItemAppearance &ItemAppearance, const Advgdip::TGPRectF &R);
	virtual Gdipcustomitem::TItemInteractionType __fastcall GetItemInteraction(int pX, int pY);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	virtual bool __fastcall IsSection(void);
	virtual bool __fastcall FirstTab(bool Backwards);
	virtual bool __fastcall IsFocusable(void);
	virtual void __fastcall InitDesignTime(void);
	
__published:
	__property Graphics::TPenStyle LineStyle = {read=FLineStyle, write=SetLineStyle, default=2};
	__property Graphics::TColor LineColor = {read=FLineColor, write=SetLineColor, default=12632256};
	__property Gdipcustomitem::TItemLineLocations LineLocation = {read=FLineLocation, write=SetLineLocation, default=8};
	__property Controls::TMargins* LineMargin = {read=FLineMargin, write=SetLineMargin};
	__property int LineSize = {read=FLineSize, write=SetLineSize, default=2};
	__property Byte LineOpacity = {read=FLineOpacity, write=SetLineOpacity, default=255};
	__property bool LineVisible = {read=FLineVisible, write=SetLineVisible, default=1};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdipsectionitem */
using namespace Gdipsectionitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipsectionitem