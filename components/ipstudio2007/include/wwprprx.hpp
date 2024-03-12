// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwprprx.pas' rev: 11.00

#ifndef WwprprxHPP
#define WwprprxHPP

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
#include <Wwdblook.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwdatsrc.hpp>	// Pascal unit
#include <Wwdbdlg.hpp>	// Pascal unit
#include <Wwidlg.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbigrd.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Wwpicdb.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Wwdbgrid.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Wwedtpic.hpp>	// Pascal unit
#include <Ipdsgn.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwprprx
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwEditRegexForm;
class PASCALIMPLEMENTATION TwwEditRegexForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Buttons::TBitBtn* OKBtn;
	Buttons::TBitBtn* CancelBtn;
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TLabel* Label2;
	Stdctrls::TMemo* PictureDescription;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
	Stdctrls::TGroupBox* GroupBox2;
	Wwdbedit::TwwDBEdit* wwPictureEdit1;
	Stdctrls::TLabel* Label1;
	Stdctrls::TButton* Button3;
	Extctrls::TPanel* Status;
	Stdctrls::TCheckBox* AutoFill;
	Stdctrls::TButton* Button4;
	Wwdotdot::TwwDBComboDlg* NewPicture;
	Wwintl::TwwIntl* wwIntl1;
	void __fastcall NewPictureChange(System::TObject* Sender);
	void __fastcall wwPictureEdit1Change(System::TObject* Sender);
	void __fastcall Button1Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall Button2Click(System::TObject* Sender);
	void __fastcall AutoFillClick(System::TObject* Sender);
	void __fastcall Button3Click(System::TObject* Sender);
	void __fastcall Button4Click(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall NewPictureCustomDlg(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	void __fastcall NewPictureExit(System::TObject* Sender);
	
private:
	Stdctrls::TCustomEdit* Component;
	AnsiString OrigRegexMask;
	bool OrigCaseSensitive;
	void __fastcall RefreshDescription(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TwwEditRegexForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwEditRegexForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TwwEditRegexForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwEditRegexForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TwwEditRegexForm* wwEditRegexForm;
extern PACKAGE bool __fastcall wwPrpEdit_RegexMask(Wwdbedit::TwwCustomMaskEdit* AComponent);

}	/* namespace Wwprprx */
using namespace Wwprprx;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwprprx
