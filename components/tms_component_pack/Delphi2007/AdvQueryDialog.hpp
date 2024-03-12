// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advquerydialog.pas' rev: 11.00

#ifndef AdvquerydialogHPP
#define AdvquerydialogHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Advedit.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advquerydialog
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvQueryDialog;
class PASCALIMPLEMENTATION TAdvQueryDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FCaption;
	AnsiString FPrompt;
	Advedit::TAdvEditType FEditType;
	int FPrecision;
	AnsiString FSuffix;
	AnsiString FPrefix;
	bool FFlat;
	AnsiString FText;
	int FLengthLimit;
	bool FCanUndo;
	bool FShowModified;
	bool FShowURL;
	Graphics::TColor FModifiedColor;
	char FPasswordChar;
	Advedit::TEditAlign FEditAlign;
	bool FSigned;
	Graphics::TColor FFlatLineColor;
	bool FFlatParentColor;
	bool FExcelStyleDecimalSeparator;
	bool FShowHint;
	AnsiString FHint;
	int FDialogUnitWidth;
	Graphics::TColor FDialogColor;
	AnsiString FValidChars;
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	
public:
	Controls::TModalResult __fastcall ShowModal(void);
	__fastcall virtual TAdvQueryDialog(Classes::TComponent* AOwner);
	
__published:
	__property bool CanUndo = {read=FCanUndo, write=FCanUndo, nodefault};
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property int DialogUnitWidth = {read=FDialogUnitWidth, write=FDialogUnitWidth, default=180};
	__property Graphics::TColor DialogColor = {read=FDialogColor, write=FDialogColor, default=536870911};
	__property Advedit::TEditAlign EditAlign = {read=FEditAlign, write=FEditAlign, nodefault};
	__property Advedit::TAdvEditType EditType = {read=FEditType, write=FEditType, nodefault};
	__property bool ExcelStyleDecimalSeparator = {read=FExcelStyleDecimalSeparator, write=FExcelStyleDecimalSeparator, nodefault};
	__property bool Flat = {read=FFlat, write=FFlat, default=0};
	__property Graphics::TColor FlatLineColor = {read=FFlatLineColor, write=FFlatLineColor, nodefault};
	__property bool FlatParentColor = {read=FFlatParentColor, write=FFlatParentColor, nodefault};
	__property AnsiString Hint = {read=FHint, write=FHint};
	__property int LengthLimit = {read=FLengthLimit, write=FLengthLimit, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, nodefault};
	__property char PasswordChar = {read=FPasswordChar, write=FPasswordChar, nodefault};
	__property int Precision = {read=FPrecision, write=FPrecision, nodefault};
	__property AnsiString Prefix = {read=FPrefix, write=FPrefix};
	__property AnsiString Prompt = {read=FPrompt, write=FPrompt};
	__property bool ShowHint = {read=FShowHint, write=FShowHint, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, default=0};
	__property bool ShowURL = {read=FShowURL, write=FShowURL, default=0};
	__property bool Signed = {read=FSigned, write=FSigned, default=0};
	__property AnsiString Suffix = {read=FSuffix, write=FSuffix};
	__property AnsiString Text = {read=FText, write=FText};
	__property AnsiString ValidChars = {read=FValidChars, write=FValidChars};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TAdvQueryDialog(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x2;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advquerydialog */
using namespace Advquerydialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advquerydialog
