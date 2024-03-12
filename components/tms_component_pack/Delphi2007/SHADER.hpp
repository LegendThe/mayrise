// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Shader.pas' rev: 11.00

#ifndef ShaderHPP
#define ShaderHPP

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
#include <Dialogs.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shader
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TShader;
class PASCALIMPLEMENTATION TShader : public Extctrls::TPanel 
{
	typedef Extctrls::TPanel inherited;
	
private:
	Graphics::TColor FFromColor;
	Graphics::TColor FToColor;
	Graphics::TColor FFromColorMirror;
	Graphics::TColor FToColorMirror;
	Word FSteps;
	bool FDirection;
	void __fastcall SetFromColor(const Graphics::TColor Value);
	void __fastcall SetToColor(const Graphics::TColor Value);
	void __fastcall SetFromColorMirror(const Graphics::TColor Value);
	void __fastcall SetToColorMirror(const Graphics::TColor Value);
	void __fastcall SetSteps(Word w);
	void __fastcall SetDirection(bool b);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TShader(Classes::TComponent* AOwner);
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	
__published:
	__property Graphics::TColor FromColor = {read=FFromColor, write=SetFromColor, default=16711680};
	__property Graphics::TColor ToColor = {read=FToColor, write=SetToColor, default=0};
	__property Graphics::TColor FromColorMirror = {read=FFromColorMirror, write=SetFromColorMirror, default=536870911};
	__property Graphics::TColor ToColorMirror = {read=FToColorMirror, write=SetToColorMirror, default=536870911};
	__property Word Steps = {read=FSteps, write=SetSteps, default=20};
	__property bool Direction = {read=FDirection, write=SetDirection, nodefault};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TShader(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TShader(HWND ParentWindow) : Extctrls::TPanel(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
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
static const Shortint MIN_VER = 0x4;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Shader */
using namespace Shader;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Shader
