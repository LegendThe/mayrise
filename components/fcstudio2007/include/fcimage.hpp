// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcimage.pas' rev: 11.00

#ifndef FcimageHPP
#define FcimageHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Fcbitmap.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcimage
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomImage;
class PASCALIMPLEMENTATION TfcCustomImage : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	Graphics::TPicture* FPicture;
	bool FAutoSize;
	bool FIncrementalDisplay;
	bool FTransparent;
	bool FDrawing;
	Graphics::TCanvas* __fastcall GetCanvas(void);
	void __fastcall PictureChanged(System::TObject* Sender);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetTransparent(bool Value);
	
protected:
	virtual void __fastcall SetAutoSize(bool Value);
	Types::TRect __fastcall DestRect();
	bool __fastcall DoPaletteChange(void);
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	virtual void __fastcall Paint(void);
	
public:
	Variant BasePatch;
	__fastcall virtual TfcCustomImage(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomImage(void);
	__property Graphics::TCanvas* Canvas = {read=GetCanvas};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=0};
	__property bool IncrementalDisplay = {read=FIncrementalDisplay, write=FIncrementalDisplay, default=0};
	__property Graphics::TPicture* Picture = {read=FPicture, write=SetPicture};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcimage */
using namespace Fcimage;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcimage
