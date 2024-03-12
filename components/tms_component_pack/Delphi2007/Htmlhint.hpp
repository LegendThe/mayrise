// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Htmlhint.pas' rev: 11.00

#ifndef HtmlhintHPP
#define HtmlhintHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Appevnts.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Htmlhint
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS EHTMLHintError;
class PASCALIMPLEMENTATION EHTMLHintError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EHTMLHintError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EHTMLHintError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EHTMLHintError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EHTMLHintError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EHTMLHintError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EHTMLHintError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EHTMLHintError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EHTMLHintError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EHTMLHintError(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum THintStyle { hsRectangle, hsRounded };
#pragma option pop

class DELPHICLASS THTMLHint;
class PASCALIMPLEMENTATION THTMLHint : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Controls::TImageList* FImages;
	Graphics::TFont* FHintFont;
	Forms::THintInfo FHintInfo;
	Graphics::TColor FHintColor;
	Graphics::TColor FHintColorTo;
	Forms::TShowHintEvent FOnShowHint;
	Graphics::TColor FURLColor;
	Picturecontainer::THTMLPictureCache* FImageCache;
	bool FEllipsis;
	int FShadowOffset;
	Graphics::TColor FShadowColor;
	Picturecontainer::TPictureContainer* FContainer;
	int FYMargin;
	int FXMargin;
	THintStyle FHintStyle;
	int FMaxWidth;
	int FLineSpacing;
	Appevnts::TApplicationEvents* FApplicationEvents;
	void __fastcall GetHintInfo(AnsiString &HintStr, bool &CanShow, Forms::THintInfo &HintInfo);
	void __fastcall SetHintColor(const Graphics::TColor Value);
	void __fastcall SetHintFont(const Graphics::TFont* Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	int __fastcall GetVersionNr(void);
	void __fastcall SetHintColorTo(const Graphics::TColor Value);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	__fastcall virtual THTMLHint(Classes::TComponent* AOwner);
	__fastcall virtual ~THTMLHint(void);
	__property Picturecontainer::THTMLPictureCache* PictureCache = {read=FImageCache};
	
__published:
	__property bool Ellipsis = {read=FEllipsis, write=FEllipsis, nodefault};
	__property Graphics::TColor HintColor = {read=FHintColor, write=SetHintColor, default=-16777192};
	__property Graphics::TColor HintColorTo = {read=FHintColorTo, write=SetHintColorTo, default=536870911};
	__property Graphics::TFont* HintFont = {read=FHintFont, write=SetHintFont};
	__property THintStyle HintStyle = {read=FHintStyle, write=FHintStyle, nodefault};
	__property Controls::TImageList* Images = {read=FImages, write=FImages};
	__property int LineSpacing = {read=FLineSpacing, write=FLineSpacing, default=0};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, nodefault};
	__property Picturecontainer::TPictureContainer* PictureContainer = {read=FContainer, write=FContainer};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=FShadowColor, default=8421504};
	__property int ShadowOffset = {read=FShadowOffset, write=FShadowOffset, default=1};
	__property Graphics::TColor URLColor = {read=FURLColor, write=FURLColor, default=16711680};
	__property int XMargin = {read=FXMargin, write=FXMargin, nodefault};
	__property int YMargin = {read=FYMargin, write=FYMargin, nodefault};
	__property Forms::TShowHintEvent OnShowHint = {read=FOnShowHint, write=FOnShowHint};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


class DELPHICLASS THTMLHintWindow;
class PASCALIMPLEMENTATION THTMLHintWindow : public Controls::THintWindow 
{
	typedef Controls::THintWindow inherited;
	
private:
	THTMLHint* FHint;
	int FTextHeight;
	int FTextWidth;
	THTMLHint* __fastcall FindHintControl(void);
	
protected:
	virtual void __fastcall Paint(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	virtual void __fastcall ActivateHint(const Types::TRect &Rect, const AnsiString AHint);
public:
	#pragma option push -w-inl
	/* THintWindow.Create */ inline __fastcall virtual THTMLHintWindow(Classes::TComponent* AOwner) : Controls::THintWindow(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~THTMLHintWindow(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall THTMLHintWindow(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint HINTROUNDING = 0x10;
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x8;
static const Shortint BLD_VER = 0x0;

}	/* namespace Htmlhint */
using namespace Htmlhint;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Htmlhint
