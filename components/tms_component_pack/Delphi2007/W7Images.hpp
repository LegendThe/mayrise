// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7images.pas' rev: 11.00

#ifndef W7imagesHPP
#define W7imagesHPP

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
#include <W7classes.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <W7graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7images
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TW7ImageViewMode { ivmFitToSize, ivmNormal, ivmStretch, ivmCustom };
#pragma option pop

class DELPHICLASS TW7CustomImage;
class PASCALIMPLEMENTATION TW7CustomImage : public W7classes::TW7GraphicControl 
{
	typedef W7classes::TW7GraphicControl inherited;
	
private:
	W7classes::TW7HorizontalAlignment FHorizonatlAlignment;
	W7classes::TW7VerticalAlignment FVerticalAlignment;
	Graphics::TPicture* FPicture;
	Byte FOpacity;
	TW7ImageViewMode FViewMode;
	#pragma pack(push,1)
	Types::TRect FDstRect;
	#pragma pack(pop)
	#pragma pack(push,1)
	Types::TRect FCustomViewRect;
	#pragma pack(pop)
	int FZoom;
	bool FLocked;
	bool FTransparent;
	void __fastcall SetHorizonatalAlignment(W7classes::TW7HorizontalAlignment Value);
	void __fastcall SetVerticalAlignment(W7classes::TW7VerticalAlignment Value);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetOpacity(Byte Value);
	void __fastcall SetViewMode(TW7ImageViewMode Value);
	void __fastcall SetCustomViewRect(const Types::TRect &Value);
	void __fastcall SetZoom(int Value);
	void __fastcall SetTransparent(bool Value);
	
protected:
	bool NeedPictureAssign;
	void __fastcall GetRect(void);
	virtual void __fastcall Paint(void);
	
public:
	Graphics::TBitmap* InternalBitmap;
	__fastcall virtual TW7CustomImage(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7CustomImage(void);
	void __fastcall ClearPictureCache(void);
	__property W7classes::TW7HorizontalAlignment HorizontalAlignment = {read=FHorizonatlAlignment, write=SetHorizonatalAlignment, default=0};
	__property W7classes::TW7VerticalAlignment VerticalAlignment = {read=FVerticalAlignment, write=SetVerticalAlignment, default=0};
	__property Graphics::TPicture* Picture = {read=FPicture, write=SetPicture};
	__property Byte Opacity = {read=FOpacity, write=SetOpacity, default=255};
	__property TW7ImageViewMode ViewMode = {read=FViewMode, write=SetViewMode, default=0};
	__property Types::TRect CustomViewRect = {read=FCustomViewRect, write=SetCustomViewRect};
	__property int Zoom = {read=FZoom, write=SetZoom, default=100};
	__property bool Locked = {read=FLocked, write=FLocked, default=0};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=1};
};


class DELPHICLASS TW7Image;
class PASCALIMPLEMENTATION TW7Image : public TW7CustomImage 
{
	typedef TW7CustomImage inherited;
	
__published:
	__property HorizontalAlignment  = {default=0};
	__property VerticalAlignment  = {default=0};
	__property Picture ;
	__property Opacity  = {default=255};
	__property ViewMode  = {default=0};
	
public:
	__property CustomViewRect ;
	
__published:
	__property Zoom  = {default=100};
	__property Transparent  = {default=1};
	__property Action ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property Enabled  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Visible  = {default=1};
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseActivate ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
public:
	#pragma option push -w-inl
	/* TW7CustomImage.Create */ inline __fastcall virtual TW7Image(Classes::TComponent* AOwner) : TW7CustomImage(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7CustomImage.Destroy */ inline __fastcall virtual ~TW7Image(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace W7images */
using namespace W7images;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7images
