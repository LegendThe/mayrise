// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Frmshape.pas' rev: 11.00

#ifndef FrmshapeHPP
#define FrmshapeHPP

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

//-- user supplied -----------------------------------------------------------

namespace Frmshape
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS EFormShapeError;
class PASCALIMPLEMENTATION EFormShapeError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EFormShapeError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EFormShapeError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EFormShapeError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EFormShapeError(int Ident, System::TVarRec const * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EFormShapeError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EFormShapeError(const AnsiString Msg, System::TVarRec const * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EFormShapeError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EFormShapeError(System::PResStringRec ResStringRec, System::TVarRec const * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EFormShapeError(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TBalloonPosition { bpTopLeft, bpLeftTop, bpTopRight, bpRightTop, bpBottomLeft, bpLeftBottom, bpBottomRight, bpRightBottom, bpNone };
#pragma option pop

class DELPHICLASS TFormshape;
class PASCALIMPLEMENTATION TFormshape : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FReshape;
	Classes::TNotifyEvent FOnPaint;
	bool FOnPaintAssigned;
	TBalloonPosition FBalloonPosition;
	int FBalloonEllips;
	int FBalloonIndent;
	Graphics::TColor FBalloonColor;
	Graphics::TColor FBorderColor;
	int FBorderWidth;
	void *OldWndProc;
	void *NewWndProc;
	bool FDragBalloon;
	void __fastcall PaintForm(System::TObject* sender);
	void __fastcall SetBalloonIndent(int avalue);
	void __fastcall SetBalloonEllips(int avalue);
	void __fastcall SetBalloonColor(Graphics::TColor avalue);
	void __fastcall SetBorderColor(Graphics::TColor avalue);
	void __fastcall SetBorderWidth(int avalue);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	int __fastcall GetVersionNr(void);
	virtual void __fastcall Loaded(void);
	void __fastcall HookWndProc(Messages::TMessage &Msg);
	
public:
	__fastcall virtual TFormshape(Classes::TComponent* AOwner);
	__fastcall virtual ~TFormshape(void);
	
__published:
	__property bool Reshape = {read=FReshape, write=FReshape, nodefault};
	__property TBalloonPosition BalloonPosition = {read=FBalloonPosition, write=FBalloonPosition, nodefault};
	__property int BalloonEllips = {read=FBalloonEllips, write=SetBalloonEllips, nodefault};
	__property int BalloonIndent = {read=FBalloonIndent, write=SetBalloonIndent, nodefault};
	__property Graphics::TColor BalloonColor = {read=FBalloonColor, write=SetBalloonColor, nodefault};
	__property Graphics::TColor BorderColor = {read=FBorderColor, write=SetBorderColor, nodefault};
	__property int BorderWidth = {read=FBorderWidth, write=SetBorderWidth, nodefault};
	__property bool DragBalloon = {read=FDragBalloon, write=FDragBalloon, nodefault};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Frmshape */
using namespace Frmshape;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Frmshape
