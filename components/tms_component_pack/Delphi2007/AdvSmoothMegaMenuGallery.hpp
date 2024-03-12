// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothmegamenugallery.pas' rev: 11.00

#ifndef AdvsmoothmegamenugalleryHPP
#define AdvsmoothmegamenugalleryHPP

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
#include <Advsmoothmegamenu.hpp>	// Pascal unit
#include <Gdipmenu.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Advgdip.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothmegamenugallery
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TCustomPaintBox;
class PASCALIMPLEMENTATION TCustomPaintBox : public Extctrls::TPaintBox 
{
	typedef Extctrls::TPaintBox inherited;
	
private:
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Msg);
public:
	#pragma option push -w-inl
	/* TPaintBox.Create */ inline __fastcall virtual TCustomPaintBox(Classes::TComponent* AOwner) : Extctrls::TPaintBox(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TCustomPaintBox(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvSmoothMegaMenuGalleryForm;
class PASCALIMPLEMENTATION TAdvSmoothMegaMenuGalleryForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* GroupBox1;
	Stdctrls::TListBox* ListBox1;
	Stdctrls::TButton* Button1;
	Stdctrls::TButton* Button2;
	Advsmoothmegamenu::TAdvSmoothMegaMenu* AdvSmoothMegaMenu1;
	void __fastcall PaintBox1Paint(System::TObject* Sender);
	void __fastcall Button2Click(System::TObject* Sender);
	void __fastcall Button1Click(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall PaintBox1MouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall PaintBox1MouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall PaintBox1MouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ListBox1Click(System::TObject* Sender);
	
private:
	AnsiString FGalleryFile;
	void __fastcall MenuChanged(System::TObject* Sender);
	
public:
	TCustomPaintBox* PaintBox1;
	int oldidx;
	void __fastcall CalculateSize(void);
	__property AnsiString GalleryFile = {read=FGalleryFile};
	void __fastcall LoadList(void);
	void __fastcall ResToFile(AnsiString ResName, AnsiString FileName);
	void __fastcall Init(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TAdvSmoothMegaMenuGalleryForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAdvSmoothMegaMenuGalleryForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAdvSmoothMegaMenuGalleryForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothMegaMenuGalleryForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TAdvSmoothMegaMenuGalleryForm* AdvSmoothMegaMenuGalleryForm;
extern PACKAGE Gdipmenu::TGDIPMenu* m;

}	/* namespace Advsmoothmegamenugallery */
using namespace Advsmoothmegamenugallery;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothmegamenugallery
