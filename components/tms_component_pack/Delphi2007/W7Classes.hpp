// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'W7classes.pas' rev: 11.00

#ifndef W7classesHPP
#define W7classesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <W7common.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace W7classes
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TW7VerticalAlignment { wvaTop, wvaCenter, wvaBottom };
#pragma option pop

#pragma option push -b-
enum TW7HorizontalAlignment { whaLeft, whaCenter, whaRight };
#pragma option pop

#pragma option push -b-
enum TW7ButtonIconSize { is16px, is24px, is32px, is48px };
#pragma option pop

class DELPHICLASS TW7Control;
class PASCALIMPLEMENTATION TW7Control : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	int __fastcall GetVersionNr(void);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	bool LeftButtonPressed;
	int WindowsVersion;
	bool InvalidateOnMouseEvents;
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	
public:
	__fastcall virtual TW7Control(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7Control(void);
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	
__published:
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7Control(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7TransparentControl;
class PASCALIMPLEMENTATION TW7TransparentControl : public TW7Control 
{
	typedef TW7Control inherited;
	
protected:
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	void __fastcall DrawBackground(Controls::TControl* Control, HDC DC, bool InvalidateParent);
	virtual void __fastcall Paint(void);
public:
	#pragma option push -w-inl
	/* TW7Control.Create */ inline __fastcall virtual TW7TransparentControl(Classes::TComponent* AOwner) : TW7Control(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TW7Control.Destroy */ inline __fastcall virtual ~TW7TransparentControl(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TW7TransparentControl(HWND ParentWindow) : TW7Control(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TW7GraphicControl;
class PASCALIMPLEMENTATION TW7GraphicControl : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	
protected:
	bool LeftButtonPressed;
	bool MouseInControl;
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	__fastcall virtual TW7GraphicControl(Classes::TComponent* AOwner);
	__fastcall virtual ~TW7GraphicControl(void);
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x2;

}	/* namespace W7classes */
using namespace W7classes;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// W7classes
