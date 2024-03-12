// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Layeredform.pas' rev: 11.00

#ifndef LayeredformHPP
#define LayeredformHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Layeredform
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TLayerType { ltNone, ltAlphaBlend, ltColorKey };
#pragma option pop

class DELPHICLASS ELayeredFormError;
class PASCALIMPLEMENTATION ELayeredFormError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall ELayeredFormError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall ELayeredFormError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall ELayeredFormError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall ELayeredFormError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall ELayeredFormError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall ELayeredFormError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall ELayeredFormError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall ELayeredFormError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~ELayeredFormError(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TFadeThreadDone)(System::TObject* Sender);

class DELPHICLASS TFadeThread;
class DELPHICLASS TLayeredForm;
class PASCALIMPLEMENTATION TLayeredForm : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Byte fAlpha;
	TLayerType fLayerType;
	Graphics::TColor fColorKey;
	Forms::TForm* fOwner;
	#pragma pack(push,1)
	Types::TRect r;
	#pragma pack(pop)
	TFadeThreadDone fOnFadeInDone;
	TFadeThreadDone fOnFadeOutDone;
	Byte fFadeStep;
	unsigned fFadeTime;
	bool fFadeIn;
	void __fastcall SetAlpha(const Byte Value);
	void __fastcall SetColorKey(const Graphics::TColor Value);
	void __fastcall SetLayerType(const TLayerType Value);
	void __fastcall Update(void);
	void __fastcall ThreadDone(System::TObject* Sender);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	
public:
	__fastcall virtual TLayeredForm(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	void __fastcall FadeIn(int time, Byte step);
	void __fastcall FadeOut(int time, Byte step);
	
__published:
	__property Byte Alpha = {read=fAlpha, write=SetAlpha, nodefault};
	__property Graphics::TColor ColorKey = {read=fColorKey, write=SetColorKey, nodefault};
	__property TLayerType LayerType = {read=fLayerType, write=SetLayerType, nodefault};
	__property TFadeThreadDone OnFadeInDone = {read=fOnFadeInDone, write=fOnFadeInDone};
	__property TFadeThreadDone OnFadeOutDone = {read=fOnFadeOutDone, write=fOnFadeOutDone};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TLayeredForm(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TFadeThread : public Classes::TThread 
{
	typedef Classes::TThread inherited;
	
private:
	TLayeredForm* FLayeredForm;
	
protected:
	virtual void __fastcall Execute(void);
	
public:
	__fastcall TFadeThread(TLayeredForm* aLayeredForm);
public:
	#pragma option push -w-inl
	/* TThread.Destroy */ inline __fastcall virtual ~TFadeThread(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x1;

}	/* namespace Layeredform */
using namespace Layeredform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Layeredform
