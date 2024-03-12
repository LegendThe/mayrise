// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Gdipgroupitem.pas' rev: 11.00

#ifndef GdipgroupitemHPP
#define GdipgroupitemHPP

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
#include <Advgdip.hpp>	// Pascal unit
#include <Gdipimagesectionitem.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdiptextitem.hpp>	// Pascal unit
#include <Gdipsectionitem.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Gdipgroupitem
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TGroupItem;
class PASCALIMPLEMENTATION TGroupItem : public Gdipimagesectionitem::TImageSectionItem 
{
	typedef Gdipimagesectionitem::TImageSectionItem inherited;
	
private:
	Graphics::TColor FGroupColor;
	Graphics::TColor FGroupBorderColor;
	int FHeaderHeight;
	void __fastcall SetGroupColor(const Graphics::TColor Value);
	void __fastcall SetGroupBorderColor(const Graphics::TColor Value);
	void __fastcall SetHeaderHeight(const int Value);
	
protected:
	HIDESBASE void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	HIDESBASE void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	virtual int __fastcall GetVersionNr(void);
	
public:
	virtual Gdipcustomitem::TCustomItem* __fastcall CreateNewItem(Classes::TComponent* AOwner);
	virtual TMetaClass* __fastcall GetClassType(void);
	/* virtual class method */ virtual AnsiString __fastcall CustomClassName(TMetaClass* vmt);
	__fastcall virtual TGroupItem(Classes::TComponent* AOwner);
	__fastcall virtual ~TGroupItem(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	virtual void __fastcall DrawInRect(Advgdip::TGPGraphics* g, const Gdipcustomitem::TItemAppearance &ItemAppearance, const Advgdip::TGPRectF &R);
	virtual bool __fastcall FirstTab(bool Backwards);
	virtual bool __fastcall IsSection(void);
	virtual void __fastcall InitDesignTime(void);
	
__published:
	__property Graphics::TColor GroupColor = {read=FGroupColor, write=SetGroupColor, default=13224393};
	__property Graphics::TColor GroupBorderColor = {read=FGroupBorderColor, write=SetGroupBorderColor, default=13224393};
	__property int HeaderHeight = {read=FHeaderHeight, write=SetHeaderHeight, default=30};
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


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Gdipgroupitem */
using namespace Gdipgroupitem;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gdipgroupitem
