// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetroprogressbar.pas' rev: 11.00

#ifndef AdvmetroprogressbarHPP
#define AdvmetroprogressbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetroprogressbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvMetroProgressBar;
class PASCALIMPLEMENTATION TAdvMetroProgressBar : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	int FMax;
	int FMin;
	int FPosition;
	Graphics::TColor FColor;
	void __fastcall SetMax(const int Value);
	void __fastcall SetMin(const int Value);
	void __fastcall SetPosition(const int Value);
	HIDESBASE void __fastcall SetColor(const Graphics::TColor Value);
	
protected:
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TAdvMetroProgressBar(Classes::TComponent* AOwner);
	void __fastcall SetColorTones(const Advstyleif::TColorTones &ATones);
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=15907840};
	__property int Min = {read=FMin, write=SetMin, default=0};
	__property int Max = {read=FMax, write=SetMax, default=100};
	__property int Position = {read=FPosition, write=SetPosition, default=50};
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TAdvMetroProgressBar(void) { }
	#pragma option pop
	
private:
	void *__ITMSTones;	/* Advstyleif::ITMSTones */
	
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
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Advmetroprogressbar */
using namespace Advmetroprogressbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetroprogressbar
