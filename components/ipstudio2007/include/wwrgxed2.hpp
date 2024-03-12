// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwrgxed2.pas' rev: 11.00

#ifndef Wwrgxed2HPP
#define Wwrgxed2HPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Wwdblook.hpp>	// Pascal unit
#include <Wwdbdlg.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwidlg.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Wwedtpic.hpp>	// Pascal unit
#include <Ipdsgn.hpp>	// Pascal unit
#include <Wwprprx.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwrgxed2
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwEditRegexMaskdlg;
class PASCALIMPLEMENTATION TwwEditRegexMaskdlg : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Buttons::TBitBtn* OKBtn;
	Buttons::TBitBtn* CancelBtn;
	Extctrls::TPanel* Panel1;
	Stdctrls::TCheckBox* CaseSensitiveCheckbox;
	Stdctrls::TMemo* RegexDescription;
	Stdctrls::TLabel* PictureMaskLabel;
	Stdctrls::TButton* DesignMaskButton;
	Wwdotdot::TwwDBComboDlg* RegexMaskEdit;
	Stdctrls::TMemo* RegexErrorMsgEdit;
	Stdctrls::TLabel* Label1;
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall DesignMaskButtonClick(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall RegexMaskEditCustomDlg(System::TObject* Sender);
	void __fastcall RegexMaskEditExit(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	
private:
	void __fastcall RefreshDescription(void);
	
public:
	Wwdbedit::TwwCustomMaskEdit* MyComponent;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TwwEditRegexMaskdlg(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwEditRegexMaskdlg(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TwwEditRegexMaskdlg(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwEditRegexMaskdlg(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TwwEditRegexMaskdlg* wwEditRegexMaskdlg;
extern PACKAGE bool __fastcall wwPrpEdit_RegexMask2(Wwdbedit::TwwCustomMaskEdit* AComponent);
extern PACKAGE bool __fastcall wwPrpEdit_RegexMask3(Wwdbedit::TwwDBPicture* Picture, Controls::TWinControl* TempParent);

}	/* namespace Wwrgxed2 */
using namespace Wwrgxed2;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwrgxed2
