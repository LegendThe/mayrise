// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcpicedt.pas' rev: 11.00

#ifndef FcpicedtHPP
#define FcpicedtHPP

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
#include <Extctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extdlgs.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit
#include <Fcbitmap.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcpicedt
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcGraphicType { gtBitmap, gtIcon, gtJPEG, gtEmf, gtWmf };
#pragma option pop

typedef AnsiString fcPicEdt__1[5];

class DELPHICLASS TfcPictureEditor;
class PASCALIMPLEMENTATION TfcPictureEditor : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TButton* OKButton;
	Stdctrls::TButton* CancelButton;
	Stdctrls::TButton* HelpButton;
	Extctrls::TPanel* Panel;
	Extctrls::TPanel* ImagePanel;
	Stdctrls::TButton* LoadButton;
	Stdctrls::TButton* SaveButton;
	Stdctrls::TButton* ClearButton;
	Extctrls::TImage* Image;
	Extdlgs::TOpenPictureDialog* OpenDialog;
	Extdlgs::TSavePictureDialog* SaveDialog;
	void __fastcall LoadButtonClick(System::TObject* Sender);
	void __fastcall SaveButtonClick(System::TObject* Sender);
	void __fastcall ClearButtonClick(System::TObject* Sender);
	void __fastcall HelpButtonClick(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	
private:
	void __fastcall UpdateImage(void);
	
public:
	Graphics::TPicture* StoredImage;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TfcPictureEditor(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TfcPictureEditor(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TfcPictureEditor(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcPictureEditor(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE AnsiString GRAPHICTYPES[5];
extern PACKAGE TfcPictureEditor* fcPictureEditor;
extern PACKAGE bool __fastcall fcExecutePictureEditor(Graphics::TGraphic* AGraphic, Classes::TPersistent* DestGraphic);

}	/* namespace Fcpicedt */
using namespace Fcpicedt;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcpicedt
