// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipbuttonitem.pas' rev: 11.00

#ifndef GdipbuttonitemHPP
#define GdipbuttonitemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Gdipgraphicitem.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipimagetextitem.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipbuttonitem
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TButtonItem;
class PASCALIMPLEMENTATION TButtonItem : public Gdipgraphicitem::TGraphicItem 
{
	typedef Gdipgraphicitem::TGraphicItem inherited;
	
private:
	int FButtonHeight;
	int FButtonWidth;
	Gdipcustomitem::TItemEvent FOnInternalItemButtonClick;
	Gdipcustomitem::TItemEvent FOnItemButtonClick;
	bool FDown;
	AnsiString FButtonCaption;
	Graphics::TColor FButtonCaptionColor;
	int FButtonCaptionSize;
	void __fastcall SetButtonHeight(const int Value);
	void __fastcall SetButtonWidth(const int Value);
	void __fastcall SetDown(const bool Value);
	void __fastcall SetButtonCaption(const AnsiString Value);
	void __fastcall SetButtonCaptionColor(const Graphics::TColor Value);
	void __fastcall SetButtonCaptionSize(const int Value);
	
protected:
	virtual void __fastcall DrawButtonText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoItemButtonClick(System::TObject* Sender, Gdipcustomitem::TCustomItem* Item);
	virtual void __fastcall DoInternalItemButtonClick(System::TObject* Sender, Gdipcustomitem::TCustomItem* Item);
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall ActionSetCaption(const AnsiString Value);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	
public:
	__fastcall virtual TButtonItem(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	virtual void __fastcall DrawInRect(Advgdip::TGPGraphics* g, const Gdipcustomitem::TItemAppearance &ItemAppearance, const Advgdip::TGPRectF &R);
	virtual bool __fastcall IsGraphicAtXY(int pX, int pY);
	virtual void __fastcall DoMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	__property Gdipcustomitem::TItemEvent OnInternalItemButtonClick = {read=FOnInternalItemButtonClick, write=FOnInternalItemButtonClick};
	__property bool Down = {read=FDown, write=SetDown, nodefault};
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance, bool DoText = true);
	virtual void __fastcall DrawImage(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	/* virtual class method */ virtual bool __fastcall Display(TMetaClass* vmt);
	virtual void __fastcall AssignEvents(Gdipcustomitem::TCustomItem* Item);
	virtual void __fastcall DoCMDialogChar(Messages::TWMKey &Message);
	
__published:
	__property int ButtonWidth = {read=FButtonWidth, write=SetButtonWidth, default=75};
	__property int ButtonHeight = {read=FButtonHeight, write=SetButtonHeight, default=25};
	__property AnsiString ButtonCaption = {read=FButtonCaption, write=SetButtonCaption};
	__property int ButtonCaptionSize = {read=FButtonCaptionSize, write=SetButtonCaptionSize, default=-1};
	__property Graphics::TColor ButtonCaptionColor = {read=FButtonCaptionColor, write=SetButtonCaptionColor, default=0};
	__property Gdipcustomitem::TItemEvent OnItemButtonClick = {read=FOnItemButtonClick, write=FOnItemButtonClick};
public:
	#pragma option push -w-inl
	/* TGraphicItem.Destroy */ inline __fastcall virtual ~TButtonItem(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdipbuttonitem */
using namespace Gdipbuttonitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipbuttonitem
