// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Propscrl.pas' rev: 11.00

#ifndef PropscrlHPP
#define PropscrlHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Propscrl
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TScrollHintMode { shTrack, shFixedLeft, shFixedRight, shFixedBottom, shFixedTop };
#pragma option pop

typedef void __fastcall (__closure *TScrollBarHintEvent)(System::TObject* Sender, int Pos, AnsiString &hintstr);

class DELPHICLASS TPropScrollbar;
class PASCALIMPLEMENTATION TPropScrollbar : public Stdctrls::TScrollBar 
{
	typedef Stdctrls::TScrollBar inherited;
	
private:
	bool FAutoArrowDisable;
	int FPageSize;
	bool FDoScrollHint;
	Controls::THintWindow* FScrollHint;
	bool FScrollHintShow;
	#pragma pack(push,1)
	Types::TPoint FScrollHintPos;
	#pragma pack(pop)
	AnsiString FScrollHintPrefix;
	TScrollHintMode FScrollHintMode;
	Graphics::TColor FScrollHintColor;
	TScrollBarHintEvent FScrollBarHintEvent;
	HIDESBASE void __fastcall SetPageSize(int pagesize);
	void __fastcall SetArrowState(int pos);
	void __fastcall SetAutoArrowDisable(bool value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
public:
	__fastcall virtual TPropScrollbar(Classes::TComponent* aOwner);
	__fastcall virtual ~TPropScrollbar(void);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall Scroll(Stdctrls::TScrollCode ScrollCode, int &ScrollPos);
	virtual void __fastcall Loaded(void);
	
__published:
	__property bool AutoArrowDisable = {read=FAutoArrowDisable, write=SetAutoArrowDisable, nodefault};
	__property int PageSize = {read=FPageSize, write=SetPageSize, nodefault};
	__property bool ScrollHint = {read=FDoScrollHint, write=FDoScrollHint, nodefault};
	__property AnsiString ScrollHintPrefix = {read=FScrollHintPrefix, write=FScrollHintPrefix};
	__property TScrollHintMode ScrollHintMode = {read=FScrollHintMode, write=FScrollHintMode, nodefault};
	__property Graphics::TColor ScrollHintColor = {read=FScrollHintColor, write=FScrollHintColor, nodefault};
	__property TScrollBarHintEvent OnScrollBarHint = {read=FScrollBarHintEvent, write=FScrollBarHintEvent};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPropScrollbar(HWND ParentWindow) : Stdctrls::TScrollBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x4;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Propscrl */
using namespace Propscrl;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Propscrl
