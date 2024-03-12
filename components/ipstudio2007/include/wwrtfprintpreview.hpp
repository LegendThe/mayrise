// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwrtfprintpreview.pas' rev: 11.00

#ifndef WwrtfprintpreviewHPP
#define WwrtfprintpreviewHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Toolwin.hpp>	// Pascal unit
#include <Richedit.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Wwdbspin.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwrtfprintpreview
{
//-- type declarations -------------------------------------------------------
typedef DynamicArray<_charrange >  wwrtfprintpreview__2;

class DELPHICLASS TwwRtfPreviewForm;
class PASCALIMPLEMENTATION TwwRtfPreviewForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Comctrls::TToolBar* ToolBar1;
	Forms::TScrollBox* ScrollBox1;
	Extctrls::TPaintBox* PaintBox1;
	Dialogs::TPrintDialog* PrintDialog;
	Controls::TImageList* RichEditButtonIcons;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* N5001;
	Menus::TMenuItem* N2001;
	Menus::TMenuItem* N1501;
	Menus::TMenuItem* N10001;
	Menus::TMenuItem* N751;
	Menus::TMenuItem* N501;
	Menus::TMenuItem* N251;
	Menus::TMenuItem* Auto1;
	Wwdbcomb::TwwDBComboBox* zoomCombo;
	Comctrls::TToolButton* ToolButton2;
	Comctrls::TToolButton* ToolButton5;
	Stdctrls::TLabel* Label1;
	Wwdbspin::TwwDBSpinEdit* wwDBSpinEdit1;
	void __fastcall PaintBox1Paint(System::TObject* Sender);
	void __fastcall ToolButton1Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall ScrollBox1Resize(System::TObject* Sender);
	void __fastcall wwDBSpinEdit1Change(System::TObject* Sender);
	void __fastcall ToolButton5Click(System::TObject* Sender);
	void __fastcall ToolButton2Click(System::TObject* Sender);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall zoomComboChange(System::TObject* Sender);
	
private:
	Graphics::TMetafile* FMetafile;
	Wwriched::TwwCustomRichEdit* FRichedit;
	DynamicArray<_charrange >  FPages;
	#pragma pack(push,1)
	Types::TRect FPagerect;
	#pragma pack(pop)
	#pragma pack(push,1)
	Types::TRect FPrintRect;
	#pragma pack(pop)
	double FZoomFactor;
	int NumPages;
	void __fastcall PreparePreview(Wwriched::TwwCustomRichEdit* aRichedit);
	void __fastcall Paginate(void);
	void __fastcall DrawPage(int pagenum);
	int __fastcall RenderPage(int pagenum, BOOL render = true);
	void __fastcall VerifyPagenum(int pagenum);
	void __fastcall PrintHeader(Graphics::TCanvas* cv);
	void __fastcall UpdateZoom(void);
	void __fastcall DrawScaled(Graphics::TCanvas* Canvas, const Types::TRect &outrect, Graphics::TGraphic* image, int iwidth, int iheight);
	
public:
	__fastcall virtual ~TwwRtfPreviewForm(void);
	__fastcall virtual TwwRtfPreviewForm(Classes::TComponent* AOwner);
	/*         class method */ static void __fastcall Preview(TMetaClass* vmt, Wwriched::TwwCustomRichEdit* arichedit);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwRtfPreviewForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwRtfPreviewForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TwwRtfPreviewForm* wwRtfPreviewForm;

}	/* namespace Wwrtfprintpreview */
using namespace Wwrtfprintpreview;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwrtfprintpreview
