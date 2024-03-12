// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipbuttonbaritem.pas' rev: 11.00

#ifndef GdipbuttonbaritemHPP
#define GdipbuttonbaritemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Gdipbase.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipbuttonbaritem
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TButtonBarElement;
class DELPHICLASS TButtonBarItem;
class DELPHICLASS TButtonBarElements;
class PASCALIMPLEMENTATION TButtonBarElements : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
public:
	TButtonBarElement* operator[](int Index) { return Items[Index]; }
	
private:
	TButtonBarItem* FOwner;
	Classes::TNotifyEvent FOnChange;
	HIDESBASE TButtonBarElement* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, const TButtonBarElement* Value);
	
protected:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TButtonBarElements(TButtonBarItem* AOwner);
	__property TButtonBarElement* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE TButtonBarElement* __fastcall Add(void);
	HIDESBASE TButtonBarElement* __fastcall Insert(int Index);
	HIDESBASE void __fastcall Delete(int Index);
	HIDESBASE void __fastcall Clear(void);
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TButtonBarElements(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TElementClick)(System::TObject* Sender, int Index);

class PASCALIMPLEMENTATION TButtonBarItem : public Gdipcustomitem::TCustomItem 
{
	typedef Gdipcustomitem::TCustomItem inherited;
	
private:
	AnsiString FCaption;
	int FFocusedElement;
	TButtonBarElement* FHoveredElement;
	TButtonBarElement* FDownElement;
	Graphics::TColor FBackGroundColor;
	TButtonBarElements* FElements;
	Graphics::TColor FBorderColor;
	TElementClick FOnElementClick;
	void __fastcall SetBackGroundColor(const Graphics::TColor Value);
	void __fastcall SetElements(const TButtonBarElements* Value);
	void __fastcall SetBorderColor(const Graphics::TColor Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	void __fastcall ElementsChanged(System::TObject* Sender);
	void __fastcall DrawElements(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &r, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	void __fastcall DoElementClick(System::TObject* Sender, int AIndex);
	
public:
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	__fastcall virtual TButtonBarItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TButtonBarItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall DrawInRect(Advgdip::TGPGraphics* g, const Gdipcustomitem::TItemAppearance &ItemAppearance, const Advgdip::TGPRectF &R);
	TButtonBarElement* __fastcall ElementAtXY(int pX, int pY, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual bool __fastcall ProcessTab(bool Backwards);
	virtual bool __fastcall IsFocusable(void);
	virtual void __fastcall DoKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall DoKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	int __fastcall CountSelectable(void);
	int __fastcall MaxSelectable(void);
	int __fastcall MinSelectable(void);
	virtual void __fastcall UseCaption(AnsiString ACaption);
	virtual void __fastcall DoCMMouseLeave(Messages::TMessage &Message);
	virtual void __fastcall DoMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	
__published:
	__property Graphics::TColor BackGroundColor = {read=FBackGroundColor, write=SetBackGroundColor, default=13224393};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, default=13224393};
	__property TButtonBarElements* Elements = {read=FElements, write=SetElements};
	__property TElementClick OnElementClick = {read=FOnElementClick, write=FOnElementClick};
};


class PASCALIMPLEMENTATION TButtonBarElement : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TButtonBarItem* FOwner;
	AnsiString FCaption;
	bool FEnabled;
	Advgdip::TAdvGDIPPicture* FImage;
	AnsiString FImageName;
	int FImageIndex;
	void __fastcall SetCaption(const AnsiString Value);
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetImage(const Advgdip::TAdvGDIPPicture* Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetImageName(const AnsiString Value);
	
protected:
	HIDESBASE void __fastcall Changed(void);
	void __fastcall ImageChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TButtonBarElement(Classes::TCollection* Collection);
	__fastcall virtual ~TButtonBarElement(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	TButtonBarItem* __fastcall GetButtonBarOwner(void);
	
__published:
	__property AnsiString Caption = {read=FCaption, write=SetCaption};
	__property Advgdip::TAdvGDIPPicture* Image = {read=FImage, write=SetImage};
	__property AnsiString ImageName = {read=FImageName, write=SetImageName};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdipbuttonbaritem */
using namespace Gdipbuttonbaritem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipbuttonbaritem
