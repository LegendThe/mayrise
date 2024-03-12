// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Datelbl.pas' rev: 11.00

#ifndef DatelblHPP
#define DatelblHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Datelbl
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TDateLabel;
class PASCALIMPLEMENTATION TDateLabel : public Stdctrls::TLabel 
{
	typedef Stdctrls::TLabel inherited;
	
private:
	AnsiString FDateTimeFormat;
	Extctrls::TTimer* FTimer;
	int FRefreshInterval;
	bool FRefreshEnabled;
	void __fastcall SetFormat(const AnsiString Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetInterval(const int Value);
	void __fastcall SetRefreshEnabled(const bool Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TDateLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TDateLabel(void);
	void __fastcall RefreshLabel(System::TObject* Sender);
	
__published:
	__property AnsiString DateTimeFormat = {read=FDateTimeFormat, write=SetFormat};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property int RefreshInterval = {read=FRefreshInterval, write=SetInterval, nodefault};
	__property bool RefreshEnabled = {read=FRefreshEnabled, write=SetRefreshEnabled, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x1;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;
extern PACKAGE void __fastcall Register(void);

}	/* namespace Datelbl */
using namespace Datelbl;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Datelbl
