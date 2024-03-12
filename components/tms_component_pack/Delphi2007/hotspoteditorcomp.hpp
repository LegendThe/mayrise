// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Hotspoteditorcomp.pas' rev: 11.00

#ifndef HotspoteditorcompHPP
#define HotspoteditorcompHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Hotspotimage.hpp>	// Pascal unit
#include <Hotspoteditor.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Hotspoteditorcomp
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS THotSpotEditor;
class PASCALIMPLEMENTATION THotSpotEditor : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	Hotspotimage::THotSpotImage* FHotSpotImage;
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	bool __fastcall Execute(void);
	
__published:
	__property Hotspotimage::THotSpotImage* HotSpotImage = {read=FHotSpotImage, write=FHotSpotImage};
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual THotSpotEditor(Classes::TComponent* AOwner) : Classes::TComponent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~THotSpotEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Hotspoteditorcomp */
using namespace Hotspoteditorcomp;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Hotspoteditorcomp
