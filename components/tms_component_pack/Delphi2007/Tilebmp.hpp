// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Tilebmp.pas' rev: 11.00

#ifndef TilebmpHPP
#define TilebmpHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Tilebmp
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TTileBmp;
class PASCALIMPLEMENTATION TTileBmp : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	int FBmpWidth;
	int FBmpHeight;
	Graphics::TBitmap* FBitMap;
	void __fastcall SetBitMap(Graphics::TBitmap* Value);
	MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TTileBmp(Classes::TComponent* AOwner);
	__fastcall virtual ~TTileBmp(void);
	
__published:
	__property Align  = {default=0};
	__property Graphics::TBitmap* BitMap = {read=FBitMap, write=SetBitMap};
	__property Height  = {default=30};
	__property Width  = {default=30};
	__property ShowHint ;
	__property OnClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property Visible  = {default=1};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint DefaultWidth = 0x20;
static const Shortint DefaultHeight = 0x20;
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Tilebmp */
using namespace Tilebmp;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Tilebmp
