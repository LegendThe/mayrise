// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdiplargebuttonedhtmlitem.pas' rev: 11.00

#ifndef GdiplargebuttonedhtmlitemHPP
#define GdiplargebuttonedhtmlitemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Gdiplargebuttoneditem.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Gdippicturecontainer.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Gdipimagetextbuttonitem.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit
#include <Gdipimagetextbuttonsectionitem.hpp>	// Pascal unit
#include <Gdipimagetextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdiplargebuttonedhtmlitem
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TAnchorEvent)(System::TObject* Sender, AnsiString Anchor);

#pragma pack(push,4)
struct TAnchorRecord
{
	
public:
	AnsiString CaptionAnchor;
	AnsiString DescriptionAnchor;
} ;
#pragma pack(pop)

class DELPHICLASS TLargeButtonedHTMLItem;
class PASCALIMPLEMENTATION TLargeButtonedHTMLItem : public Gdiplargebuttoneditem::TLargeButtonedItem 
{
	typedef Gdiplargebuttoneditem::TLargeButtonedItem inherited;
	
private:
	Advgdip::TGPBitmap* FHTMLCache;
	bool FRefreshHTMLCache;
	TAnchorEvent FOnCaptionAnchorClick;
	TAnchorEvent FOnDescriptionAnchorClick;
	TAnchorEvent FOnInternalCaptionAnchorClick;
	TAnchorEvent FOnInternalDescriptionAnchorClick;
	
protected:
	virtual int __fastcall GetVersionNr(void);
	
public:
	virtual void __fastcall UseCaption(AnsiString ACaption);
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance, bool DoText = true);
	virtual void __fastcall Changed(void);
	__fastcall virtual ~TLargeButtonedHTMLItem(void);
	virtual void __fastcall DoMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	TAnchorRecord __fastcall GetAnchorAtXY(int pX, int pY, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	__property TAnchorEvent OnInternalCaptionAnchorClick = {read=FOnInternalCaptionAnchorClick, write=FOnInternalCaptionAnchorClick};
	__property TAnchorEvent OnInternalDescriptionAnchorClick = {read=FOnInternalDescriptionAnchorClick, write=FOnInternalDescriptionAnchorClick};
	virtual void __fastcall AssignEvents(Gdipcustomitem::TCustomItem* Item);
	
__published:
	__property TAnchorEvent OnCaptionAnchorClick = {read=FOnCaptionAnchorClick, write=FOnCaptionAnchorClick};
	__property TAnchorEvent OnDescriptionAnchorClick = {read=FOnDescriptionAnchorClick, write=FOnDescriptionAnchorClick};
public:
	#pragma option push -w-inl
	/* TLargeButtonedItem.Create */ inline __fastcall virtual TLargeButtonedHTMLItem(Classes::TComponent* AOwner) : Gdiplargebuttoneditem::TLargeButtonedItem(AOwner) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdiplargebuttonedhtmlitem */
using namespace Gdiplargebuttonedhtmlitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdiplargebuttonedhtmlitem
