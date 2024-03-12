// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advgdipicture.pas' rev: 11.00

#ifndef AdvgdipictureHPP
#define AdvgdipictureHPP

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
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit
#include <Gdipicture.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advgdipicture
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvGDIPPicture;
class PASCALIMPLEMENTATION TAdvGDIPPicture : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	bool FAutoSize;
	Gdipicture::TGDIPPicture* FIPicture;
	bool FDoubleBuffered;
	Graphics::TColor FBackgroundColor;
	bool FRefresh;
	bool FCenter;
	bool FStretch;
	bool FProportional;
	bool FCropping;
	void __fastcall SetProportional(const bool Value);
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetCenter(const bool Value);
	void __fastcall SetAutoSizeP(const bool Value);
	void __fastcall SeTGDIPPicture(const Gdipicture::TGDIPPicture* Value);
	void __fastcall PictureChanged(System::TObject* Sender);
	void __fastcall PictureCleared(System::TObject* Sender);
	void __fastcall SetBackgroundColor(const Graphics::TColor Value);
	void __fastcall SetDoubleBuffered(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	void __fastcall SetCropping(const bool Value);
	
protected:
	virtual void __fastcall Paint(void);
	virtual void __fastcall PictureChange(void);
	
public:
	__fastcall virtual TAdvGDIPPicture(Classes::TComponent* aOwner);
	__fastcall virtual ~TAdvGDIPPicture(void);
	virtual void __fastcall Loaded(void);
	__property bool DoubleBuffered = {read=FDoubleBuffered, write=SetDoubleBuffered, nodefault};
	__property Graphics::TColor BackgroundColor = {read=FBackgroundColor, write=SetBackgroundColor, nodefault};
	
__published:
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSizeP, default=0};
	__property bool Center = {read=FCenter, write=SetCenter, default=0};
	__property bool Proportional = {read=FProportional, write=SetProportional, default=0};
	__property bool Stretch = {read=FStretch, write=SetStretch, default=0};
	__property Gdipicture::TGDIPPicture* Picture = {read=FIPicture, write=SeTGDIPPicture};
	__property bool Cropping = {read=FCropping, write=SetCropping, default=0};
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property DragKind  = {default=0};
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Hint ;
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnStartDrag ;
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advgdipicture */
using namespace Advgdipicture;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advgdipicture
