// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmetrodlgs.pas' rev: 11.00

#ifndef AdvmetrodlgsHPP
#define AdvmetrodlgsHPP

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
#include <Variants.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Advmetroform.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Htmlabel.hpp>	// Pascal unit
#include <Advmetrores.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmetrodlgs
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall MetroShowMessage(AnsiString Text)/* overload */;
extern PACKAGE void __fastcall MetroShowMessage(AnsiString Text, AnsiString Caption)/* overload */;
extern PACKAGE void __fastcall MetroShowMessage(AnsiString Text, AnsiString Caption, AnsiString CaptionText)/* overload */;
extern PACKAGE int __fastcall MetroMessageBox(HWND hWnd, char * lpInstruction, char * lpTitle, unsigned flags);
extern PACKAGE void __fastcall MetroShowMessageFmt(const AnsiString Instruction, System::TVarRec * Parameters, const int Parameters_Size);
extern PACKAGE int __fastcall MetroMessageDlg(const AnsiString Instruction, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall MetroMessageDlg(const AnsiString Instruction, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, Dialogs::TMsgDlgBtn DefaultButton)/* overload */;
extern PACKAGE bool __fastcall MetroInputQueryDlg(AnsiString ACaption, AnsiString APrompt, AnsiString &Value);

}	/* namespace Advmetrodlgs */
using namespace Advmetrodlgs;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmetrodlgs
