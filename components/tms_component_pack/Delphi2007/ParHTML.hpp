// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Parhtml.pas' rev: 11.00

#ifndef ParhtmlHPP
#define ParhtmlHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Picturecontainer.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Spin.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Parxpvs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Parhtml
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TParamUpdateEvent)(System::TObject* Sender, AnsiString Param, AnsiString Text);

class DELPHICLASS TPopupMaskEdit;
class PASCALIMPLEMENTATION TPopupMaskEdit : public Mask::TMaskEdit 
{
	typedef Mask::TMaskEdit inherited;
	
private:
	bool FCancelled;
	AnsiString FParam;
	TParamUpdateEvent FOnUpdate;
	Classes::TNotifyEvent FOnReturn;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMActivate(Messages::TWMActivate &Message);
	
protected:
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__property bool Cancelled = {read=FCancelled, write=FCancelled, nodefault};
	__property AnsiString Param = {read=FParam, write=FParam};
	__property TParamUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Classes::TNotifyEvent OnReturn = {read=FOnReturn, write=FOnReturn};
public:
	#pragma option push -w-inl
	/* TCustomMaskEdit.Create */ inline __fastcall virtual TPopupMaskEdit(Classes::TComponent* AOwner) : Mask::TMaskEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPopupMaskEdit(HWND ParentWindow) : Mask::TMaskEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TPopupMaskEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPopupEdit;
class PASCALIMPLEMENTATION TPopupEdit : public Stdctrls::TEdit 
{
	typedef Stdctrls::TEdit inherited;
	
private:
	bool FCancelled;
	bool FContext;
	AnsiString FParam;
	TParamUpdateEvent FOnUpdate;
	bool FAutoSize;
	Classes::TNotifyEvent FOnReturn;
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Msg);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMActivate(Messages::TWMActivate &Message);
	MESSAGE void __fastcall WMContextPopup(Messages::TMessage &Msg);
	
protected:
	virtual void __fastcall WndProc(Messages::TMessage &Msg);
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall Change(void);
	
public:
	__property bool AutoSize = {read=FAutoSize, write=FAutoSize, nodefault};
	__property bool Cancelled = {read=FCancelled, write=FCancelled, nodefault};
	__property AnsiString Param = {read=FParam, write=FParam};
	__property TParamUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Classes::TNotifyEvent OnReturn = {read=FOnReturn, write=FOnReturn};
public:
	#pragma option push -w-inl
	/* TCustomEdit.Create */ inline __fastcall virtual TPopupEdit(Classes::TComponent* AOwner) : Stdctrls::TEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPopupEdit(HWND ParentWindow) : Stdctrls::TEdit(ParentWindow) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TWinControl.Destroy */ inline __fastcall virtual ~TPopupEdit(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPopupSpinEdit;
class PASCALIMPLEMENTATION TPopupSpinEdit : public Spin::TSpinEdit 
{
	typedef Spin::TSpinEdit inherited;
	
private:
	bool FContext;
	bool FCancelled;
	AnsiString FParam;
	TParamUpdateEvent FOnUpdate;
	Classes::TNotifyEvent FOnReturn;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMChar(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMActivate(Messages::TWMActivate &Message);
	MESSAGE void __fastcall WMContextPopup(Messages::TMessage &Msg);
	
protected:
	virtual void __fastcall WndProc(Messages::TMessage &Msg);
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__property bool Cancelled = {read=FCancelled, write=FCancelled, nodefault};
	__property AnsiString Param = {read=FParam, write=FParam};
	__property TParamUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Classes::TNotifyEvent OnReturn = {read=FOnReturn, write=FOnReturn};
public:
	#pragma option push -w-inl
	/* TSpinEdit.Create */ inline __fastcall virtual TPopupSpinEdit(Classes::TComponent* AOwner) : Spin::TSpinEdit(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TSpinEdit.Destroy */ inline __fastcall virtual ~TPopupSpinEdit(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPopupSpinEdit(HWND ParentWindow) : Spin::TSpinEdit(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TPopupListBox;
class PASCALIMPLEMENTATION TPopupListBox : public Stdctrls::TListBox 
{
	typedef Stdctrls::TListBox inherited;
	
private:
	AnsiString FParam;
	TParamUpdateEvent FOnUpdate;
	Classes::TNotifyEvent FOnReturn;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	MESSAGE void __fastcall WMActivate(Messages::TWMActivate &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	void __fastcall SizeDropDownWidth(void);
	__property AnsiString Param = {read=FParam, write=FParam};
	__property TParamUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Classes::TNotifyEvent OnReturn = {read=FOnReturn, write=FOnReturn};
public:
	#pragma option push -w-inl
	/* TCustomListBox.Create */ inline __fastcall virtual TPopupListBox(Classes::TComponent* AOwner) : Stdctrls::TListBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomListBox.Destroy */ inline __fastcall virtual ~TPopupListBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPopupListBox(HWND ParentWindow) : Stdctrls::TListBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TPopupDatePicker;
class PASCALIMPLEMENTATION TPopupDatePicker : public Comctrls::TDateTimePicker 
{
	typedef Comctrls::TDateTimePicker inherited;
	
private:
	bool FCancelled;
	AnsiString FParam;
	TParamUpdateEvent FOnUpdate;
	Classes::TNotifyEvent FOnReturn;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	MESSAGE void __fastcall WMActivate(Messages::TWMActivate &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall DoExit(void);
	
public:
	void __fastcall ReInit(void);
	__property bool Cancelled = {read=FCancelled, write=FCancelled, nodefault};
	__property AnsiString Param = {read=FParam, write=FParam};
	__property TParamUpdateEvent OnUpdate = {read=FOnUpdate, write=FOnUpdate};
	__property Classes::TNotifyEvent OnReturn = {read=FOnReturn, write=FOnReturn};
public:
	#pragma option push -w-inl
	/* TDateTimePicker.Create */ inline __fastcall virtual TPopupDatePicker(Classes::TComponent* AOwner) : Comctrls::TDateTimePicker(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCommonCalendar.Destroy */ inline __fastcall virtual ~TPopupDatePicker(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPopupDatePicker(HWND ParentWindow) : Comctrls::TDateTimePicker(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool IsWinXP;
extern PACKAGE void __fastcall PrintBitmap(Graphics::TCanvas* Canvas, const Types::TRect &DestRect, Graphics::TBitmap* Bitmap);
extern PACKAGE bool __fastcall GetControlValue(AnsiString HTML, AnsiString ControlID, AnsiString &ControlValue);
extern PACKAGE bool __fastcall SetControlValue(AnsiString &HTML, AnsiString ControlID, AnsiString ControlValue);
extern PACKAGE bool __fastcall HTMLDrawEx(Graphics::TCanvas* Canvas, AnsiString s, const Types::TRect &fr, Controls::TImageList* FImages, int XPos, int YPos, int FocusLink, int HoverLink, int ShadowOffset, bool CheckHotSpot, bool CheckHeight, bool Print, bool Selected, bool Blink, bool HoverStyle, bool WordWrap, bool Down, bool GetFocusRect, double ResFactor, Graphics::TColor URLColor, Graphics::TColor HoverColor, Graphics::TColor HoverFontColor, Graphics::TColor ShadowColor, AnsiString &AnchorVal, AnsiString &StripVal, AnsiString &FocusAnchor, int &XSize, int &YSize, int &HyperLinks, int &MouseLink, Types::TRect &HoverRect, Types::TRect &ControlRect, AnsiString &CID, AnsiString &CV, AnsiString &CT, Picturecontainer::THTMLPictureCache* ic, Picturecontainer::TPictureContainer* pc, unsigned WinHandle, int LineSpacing);
extern PACKAGE AnsiString __fastcall HTMLStrip(AnsiString s);
extern PACKAGE AnsiString __fastcall HiLight(AnsiString s, AnsiString h, AnsiString tag, bool DoCase);
extern PACKAGE AnsiString __fastcall UnHiLight(AnsiString s, AnsiString tag);
extern PACKAGE bool __fastcall GetHREFValue(AnsiString html, AnsiString href, AnsiString &value);
extern PACKAGE bool __fastcall SetHREFValue(AnsiString &html, AnsiString href, AnsiString value);
extern PACKAGE AnsiString __fastcall HTMLPrep(AnsiString s);
extern PACKAGE AnsiString __fastcall InvHTMLPrep(AnsiString s);
extern PACKAGE void __fastcall PropToList(AnsiString s, Classes::TStringList* sl);
extern PACKAGE bool __fastcall ExtractParamInfo(AnsiString html, AnsiString href, AnsiString &AClass, AnsiString &AValue, AnsiString &AProps, AnsiString &AHint);

}	/* namespace Parhtml */
using namespace Parhtml;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Parhtml
