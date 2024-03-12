// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Rtflabel.pas' rev: 11.00

#ifndef RtflabelHPP
#define RtflabelHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Richedit.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Rtflabel
{
//-- type declarations -------------------------------------------------------
typedef AnsiString TRichText;

class DELPHICLASS TRTFLabel;
class PASCALIMPLEMENTATION TRTFLabel : public Stdctrls::TCustomLabel 
{
	typedef Stdctrls::TCustomLabel inherited;
	
private:
	Comctrls::TRichEdit* FRichedit;
	AnsiString FRichtext;
	int Fupdatecount;
	bool FWordWrap;
	bool FPainting;
	void __fastcall RTFPaint(Graphics::TCanvas* Canvas, const Types::TRect &ARect);
	void __fastcall RTFResizeRequest(System::TObject* Sender, const Types::TRect &Rect);
	Comctrls::TRichEdit* __fastcall GetRichEdit(void);
	HIDESBASE void __fastcall SetWordWrap(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	__fastcall virtual TRTFLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TRTFLabel(void);
	virtual void __fastcall Loaded(void);
	__property Comctrls::TRichEdit* RTF = {read=GetRichEdit};
	void __fastcall ShowRTF(void);
	void __fastcall BeginUpdate(void);
	void __fastcall EndUpdate(void);
	void __fastcall CopyFromRichEdit(Comctrls::TRichEdit* richedit);
	void __fastcall CopyToRichEdit(Comctrls::TRichEdit* richedit);
	void __fastcall Print(AnsiString Caption);
	void __fastcall PaintTo(Graphics::TCanvas* ACanvas);
	
__published:
	__property AnsiString RichText = {read=FRichtext, write=FRichtext};
	__property Align  = {default=0};
	__property Color  = {default=-16777211};
	__property Transparent ;
	__property Visible  = {default=1};
	__property Hint ;
	__property ShowHint ;
	__property FocusControl ;
	__property ParentShowHint  = {default=1};
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Anchors  = {default=3};
	__property BiDiMode ;
	__property Constraints ;
	__property DragKind  = {default=0};
	__property ParentBiDiMode  = {default=1};
	__property PopupMenu ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, nodefault};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x0;

}	/* namespace Rtflabel */
using namespace Rtflabel;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Rtflabel
