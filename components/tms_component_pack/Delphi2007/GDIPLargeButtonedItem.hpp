// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdiplargebuttoneditem.pas' rev: 11.00

#ifndef GdiplargebuttoneditemHPP
#define GdiplargebuttoneditemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Gdipimagetextbuttonitem.hpp>	// Pascal unit
#include <Gdipimagetextbuttonsectionitem.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipimagetextitem.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdiplargebuttoneditem
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TButtonCaptionLocation { bclBottom, bclTop };
#pragma option pop

class DELPHICLASS TLargeButtonedItem;
class PASCALIMPLEMENTATION TLargeButtonedItem : public Gdipimagetextbuttonsectionitem::TImageTextButtonSectionItem 
{
	typedef Gdipimagetextbuttonsectionitem::TImageTextButtonSectionItem inherited;
	
private:
	AnsiString FButtonCaption;
	TButtonCaptionLocation FButtonCaptionLocation;
	int FButtonCaptionSize;
	Graphics::TColor FButtonCaptionColor;
	Byte FButtonCaptionOpacity;
	void __fastcall SetButtonCaption(const AnsiString Value);
	void __fastcall SetButtonCaptionLocation(const TButtonCaptionLocation Value);
	void __fastcall SetButtonCaptionSize(const int Value);
	void __fastcall SetButtonCaptionColor(const Graphics::TColor Value);
	void __fastcall SetButtonCaptionOpacity(const Byte Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall ActionSetCaption(const AnsiString Value);
	virtual bool __fastcall ActionIsCaptionLinked(void);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	virtual bool __fastcall UseButtonCaptionForAction(void);
	
public:
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	__fastcall virtual TLargeButtonedItem(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall DrawButton(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall InitDesignTime(void);
	virtual void __fastcall DoCMDialogChar(Messages::TWMKey &Message);
	
__published:
	__property AnsiString ButtonCaption = {read=FButtonCaption, write=SetButtonCaption};
	__property TButtonCaptionLocation ButtonCaptionLocation = {read=FButtonCaptionLocation, write=SetButtonCaptionLocation, default=0};
	__property int ButtonCaptionSize = {read=FButtonCaptionSize, write=SetButtonCaptionSize, default=-1};
	__property Graphics::TColor ButtonCaptionColor = {read=FButtonCaptionColor, write=SetButtonCaptionColor, default=536870911};
	__property Byte ButtonCaptionOpacity = {read=FButtonCaptionOpacity, write=SetButtonCaptionOpacity, default=255};
public:
	#pragma option push -w-inl
	/* TImageTextButtonSectionItem.Destroy */ inline __fastcall virtual ~TLargeButtonedItem(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdiplargebuttoneditem */
using namespace Gdiplargebuttoneditem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdiplargebuttoneditem
