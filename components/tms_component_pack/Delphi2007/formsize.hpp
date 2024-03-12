// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Formsize.pas' rev: 11.00

#ifndef FormsizeHPP
#define FormsizeHPP

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
#include <Forms.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Formsize
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS EFormSizeError;
class PASCALIMPLEMENTATION EFormSizeError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EFormSizeError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EFormSizeError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EFormSizeError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EFormSizeError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EFormSizeError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EFormSizeError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EFormSizeError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EFormSizeError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EFormSizeError(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TPersistLocation { plIniFile, plRegistry };
#pragma option pop

class DELPHICLASS TFormSize;
class PASCALIMPLEMENTATION TFormSize : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	void *OldWndProc;
	void *NewWndProc;
	bool FSaveMachine;
	bool FSaveUser;
	bool FSavePosition;
	bool FSaveSize;
	AnsiString FSaveName;
	AnsiString FSaveKey;
	bool FDragAlways;
	bool FMagnet;
	bool FUnicode;
	int FMagnetDistance;
	TPersistLocation FLocation;
	AnsiString __fastcall CreateKey();
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	void __fastcall HookWndProc(Messages::TMessage &Msg);
	void __fastcall DoLoadPlacement(void);
	void __fastcall DoSavePlacement(void);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TFormSize(Classes::TComponent* AOwner);
	__fastcall virtual ~TFormSize(void);
	void __fastcall SaveFormSettings(void);
	void __fastcall LoadFormSettings(void);
	
__published:
	__property bool DragAlways = {read=FDragAlways, write=FDragAlways, default=0};
	__property TPersistLocation Location = {read=FLocation, write=FLocation, default=0};
	__property bool Magnet = {read=FMagnet, write=FMagnet, default=0};
	__property int MagnetDistance = {read=FMagnetDistance, write=FMagnetDistance, nodefault};
	__property bool SavePosition = {read=FSavePosition, write=FSavePosition, default=1};
	__property bool SaveSize = {read=FSaveSize, write=FSaveSize, default=1};
	__property bool SaveUser = {read=FSaveUser, write=FSaveUser, nodefault};
	__property bool SaveMachine = {read=FSaveMachine, write=FSaveMachine, nodefault};
	__property AnsiString SaveName = {read=FSaveName, write=FSaveName};
	__property AnsiString SaveKey = {read=FSaveKey, write=FSaveKey};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x1;

}	/* namespace Formsize */
using namespace Formsize;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Formsize
