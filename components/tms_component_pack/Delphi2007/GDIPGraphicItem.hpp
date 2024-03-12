// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipgraphicitem.pas' rev: 11.00

#ifndef GdipgraphicitemHPP
#define GdipgraphicitemHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Gdipcustomitem.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Advxpvs.hpp>	// Pascal unit
#include <Gdipimagetextitem.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipgraphicitem
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TGraphicPosition { gpLeft, gpRight };
#pragma option pop

#pragma option push -b-
enum TGraphicKind { gkCheckBox, gkRadioButton, gkButton };
#pragma option pop

#pragma option push -b-
enum TGraphicState { gsNormal, gsDown, gsHovered };
#pragma option pop

typedef void __fastcall (__closure *TGraphicDrawEvent)(System::TObject* Sender, Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &Rect, Gdipcustomitem::TCustomItem* Item, bool Checked, TGraphicState State, TGraphicKind Kind, bool Enabled, bool &Default);

class DELPHICLASS TGraphicGlyphs;
class DELPHICLASS TGraphicItem;
class PASCALIMPLEMENTATION TGraphicItem : public Gdipimagetextitem::TImageTextItem 
{
	typedef Gdipimagetextitem::TImageTextItem inherited;
	
private:
	bool FGraphicFocused;
	bool FIsWinXP;
	TGraphicPosition FGraphicPosition;
	bool FGraphicEnabled;
	bool FChecked;
	TGraphicState FGraphicState;
	bool FInteractionFullArea;
	TGraphicDrawEvent FOnDrawGraphic;
	TGraphicGlyphs* FGraphicGlyphs;
	bool FCheckFullArea;
	void __fastcall SetGraphicEnabled(const bool Value);
	void __fastcall SetGraphicPosition(const TGraphicPosition Value);
	void __fastcall SetGraphicState(const TGraphicState Value);
	void __fastcall SetInteractionFullArea(const bool Value);
	void __fastcall SetGraphicGlyphs(const TGraphicGlyphs* Value);
	void __fastcall SetCheckFullArea(const bool Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual bool __fastcall ActionIsCaptionLinked(void);
	virtual bool __fastcall ActionIsEnabledLinked(void);
	virtual void __fastcall ActionSetCaption(const AnsiString Value);
	virtual void __fastcall ActionSetEnabled(bool Value);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	
public:
	__fastcall virtual TGraphicItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TGraphicItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	/* virtual class method */ virtual bool __fastcall Display(TMetaClass* vmt);
	virtual void __fastcall DoItemClick(System::TObject* Sender, Gdipcustomitem::TCustomItem* Item);
	virtual void __fastcall DrawGraphic(Advgdip::TGPGraphics* g, const Types::TRect &R, const Gdipcustomitem::TItemAppearance &ItemAppearance, TGraphicKind Kind, bool Checked);
	virtual Gdipcustomitem::TItemInteractionType __fastcall GetItemInteraction(int pX, int pY);
	virtual bool __fastcall IsGraphicAtXY(int pX, int pY);
	__property TGraphicState GraphicState = {read=FGraphicState, write=SetGraphicState, nodefault};
	virtual void __fastcall DoMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int pX, int pY, const Gdipcustomitem::TItemInteraction &Interaction, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall DoKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall ClearItemState(void);
	virtual void __fastcall DrawImage(Advgdip::TGPGraphics* g, const Advgdip::TGPRectF &ARect, const Gdipcustomitem::TItemAppearance &ItemAppearance);
	virtual void __fastcall AssignEvents(Gdipcustomitem::TCustomItem* Item);
	virtual bool __fastcall ProcessTab(bool Backwards);
	virtual void __fastcall ResetTab(void);
	__property bool GraphicFocused = {read=FGraphicFocused, write=FGraphicFocused, nodefault};
	
__published:
	__property Action ;
	__property bool GraphicEnabled = {read=FGraphicEnabled, write=SetGraphicEnabled, default=1};
	__property TGraphicPosition GraphicPosition = {read=FGraphicPosition, write=SetGraphicPosition, default=0};
	__property bool InteractionFullArea = {read=FInteractionFullArea, write=SetInteractionFullArea, default=1};
	__property bool CheckFullArea = {read=FCheckFullArea, write=SetCheckFullArea, default=0};
	__property TGraphicGlyphs* GraphicGlyphs = {read=FGraphicGlyphs, write=SetGraphicGlyphs};
	__property TGraphicDrawEvent OnDrawGraphic = {read=FOnDrawGraphic, write=FOnDrawGraphic};
};


class PASCALIMPLEMENTATION TGraphicGlyphs : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TGraphicItem* FOwner;
	AnsiString FCheckedHoverName;
	AnsiString FUnCheckedHoverName;
	int FCheckedDisabledIndex;
	int FUnCheckedDisabledIndex;
	AnsiString FCheckedDownName;
	AnsiString FUnCheckedDownName;
	AnsiString FCheckedNormalName;
	AnsiString FUnCheckedNormalName;
	int FCheckedHoverIndex;
	int FUnCheckedHoverIndex;
	AnsiString FCheckedDisabledName;
	AnsiString FUnCheckedDisabledName;
	int FCheckedDownIndex;
	int FUnCheckedDownIndex;
	int FCheckedNormalIndex;
	int FUnCheckedNormalIndex;
	void __fastcall SetCheckedDisabledIndex(const int Value);
	void __fastcall SetCheckedDisabledName(const AnsiString Value);
	void __fastcall SetCheckedDownIndex(const int Value);
	void __fastcall SetCheckedDownName(const AnsiString Value);
	void __fastcall SetCheckedHoverIndex(const int Value);
	void __fastcall SetCheckedHoverName(const AnsiString Value);
	void __fastcall SetCheckedNormalIndex(const int Value);
	void __fastcall SetCheckedNormalName(const AnsiString Value);
	void __fastcall SetUnCheckedDisabledIndex(const int Value);
	void __fastcall SetUnCheckedDisabledName(const AnsiString Value);
	void __fastcall SetUnCheckedDownIndex(const int Value);
	void __fastcall SetUnCheckedDownName(const AnsiString Value);
	void __fastcall SetUnCheckedHoverIndex(const int Value);
	void __fastcall SetUnCheckedHoverName(const AnsiString Value);
	void __fastcall SetUnCheckedNormalIndex(const int Value);
	void __fastcall SetUnCheckedNormalName(const AnsiString Value);
	
protected:
	void __fastcall Changed(void);
	
public:
	__fastcall TGraphicGlyphs(TGraphicItem* AOwner);
	TGraphicItem* __fastcall GetGraphicOwner(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property int CheckedDisabledIndex = {read=FCheckedDisabledIndex, write=SetCheckedDisabledIndex, default=-1};
	__property AnsiString CheckedDisabledName = {read=FCheckedDisabledName, write=SetCheckedDisabledName};
	__property int CheckedNormalIndex = {read=FCheckedNormalIndex, write=SetCheckedNormalIndex, default=-1};
	__property AnsiString CheckedNormalName = {read=FCheckedNormalName, write=SetCheckedNormalName};
	__property int CheckedDownIndex = {read=FCheckedDownIndex, write=SetCheckedDownIndex, default=-1};
	__property AnsiString CheckedDownName = {read=FCheckedDownName, write=SetCheckedDownName};
	__property int CheckedHoverIndex = {read=FCheckedHoverIndex, write=SetCheckedHoverIndex, default=-1};
	__property AnsiString CheckedHoverName = {read=FCheckedHoverName, write=SetCheckedHoverName};
	__property int UnCheckedDisabledIndex = {read=FUnCheckedDisabledIndex, write=SetUnCheckedDisabledIndex, default=-1};
	__property AnsiString UnCheckedDisabledName = {read=FUnCheckedDisabledName, write=SetUnCheckedDisabledName};
	__property int UnCheckedNormalIndex = {read=FUnCheckedNormalIndex, write=SetUnCheckedNormalIndex, default=-1};
	__property AnsiString UnCheckedNormalName = {read=FUnCheckedNormalName, write=SetUnCheckedNormalName};
	__property int UnCheckedDownIndex = {read=FUnCheckedDownIndex, write=SetUnCheckedDownIndex, default=-1};
	__property AnsiString UnCheckedDownName = {read=FUnCheckedDownName, write=SetUnCheckedDownName};
	__property int UnCheckedHoverIndex = {read=FUnCheckedHoverIndex, write=SetUnCheckedHoverIndex, default=-1};
	__property AnsiString UnCheckedHoverName = {read=FUnCheckedHoverName, write=SetUnCheckedHoverName};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TGraphicGlyphs(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Gdipgraphicitem */
using namespace Gdipgraphicitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipgraphicitem
