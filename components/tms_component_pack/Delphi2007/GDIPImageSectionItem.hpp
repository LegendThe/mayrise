// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipimagesectionitem.pas' rev: 11.00

#ifndef GdipimagesectionitemHPP
#define GdipimagesectionitemHPP

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
#include <Gdipsectionitem.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipimagesectionitem
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TImageSectionItem;
class PASCALIMPLEMENTATION TImageSectionItem : public Gdipsectionitem::TSectionItem 
{
	typedef Gdipsectionitem::TSectionItem inherited;
	
private:
	int FImageHeight;
	Advgdip::TAdvGDIPPicture* FImage;
	int FSpacing;
	int FImageWidth;
	bool FImageVisible;
	AnsiString FImageName;
	int FImageIndex;
	void __fastcall SetImage(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetImageHeight(const int Value);
	void __fastcall SetImageVisible(const bool Value);
	void __fastcall SetImageWidth(const int Value);
	void __fastcall SetSpacing(const int Value);
	void __fastcall SeInteger(const int Value);
	void __fastcall SetImageName(const AnsiString Value);
	
protected:
	virtual Advgdip::TGPRectF __fastcall DrawText(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance, bool DoText = true);
	virtual void __fastcall DrawImage(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual bool __fastcall DrawImageFromImageList(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance, int Image);
	virtual bool __fastcall DrawImageFromContainer(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance, AnsiString Image);
	void __fastcall ImageChanged(System::TObject* Sender);
	virtual int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TImageSectionItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TImageSectionItem(void);
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual TMetaClass* __fastcall GetClassType(void);
	virtual void __fastcall DrawInRect(Advgdip::TGPGraphics* g, const Gdipcustomitem::TItemAppearance &ItemAppearance, const Advgdip::TGPRectF &R);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	virtual Gdipcustomitem::TItemInteractionType __fastcall GetItemInteraction(int pX, int pY);
	bool __fastcall IsImageVisible(const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall InitDesignTime(void);
	virtual bool __fastcall IsSection(void);
	
__published:
	__property Advgdip::TAdvGDIPPicture* Image = {read=FImage, write=SetImage};
	__property int ImageHeight = {read=FImageHeight, write=SetImageHeight, default=18};
	__property int ImageWidth = {read=FImageWidth, write=SetImageWidth, default=18};
	__property bool ImageVisible = {read=FImageVisible, write=SetImageVisible, default=1};
	__property int ImageIndex = {read=FImageIndex, write=SeInteger, default=-1};
	__property AnsiString ImageName = {read=FImageName, write=SetImageName};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=3};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdipimagesectionitem */
using namespace Gdipimagesectionitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipimagesectionitem
