// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advsmoothimagelistboxpicker.pas' rev: 11.00

#ifndef AdvsmoothimagelistboxpickerHPP
#define AdvsmoothimagelistboxpickerHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Advsmootheditbutton.hpp>	// Pascal unit
#include <Advsmoothimagelistbox.hpp>	// Pascal unit
#include <Advstyleif.hpp>	// Pascal unit
#include <Gdipfill.hpp>	// Pascal unit
#include <Advsmoothedit.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advsmoothimagelistboxpicker
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvSmoothImageListBoxPicker;
class PASCALIMPLEMENTATION TAdvSmoothImageListBoxPicker : public Advsmootheditbutton::TAdvSmoothEditBtn 
{
	typedef Advsmootheditbutton::TAdvSmoothEditBtn inherited;
	
private:
	Extctrls::TTimer* FTimer;
	bool FDesignTime;
	Advsmoothimagelistbox::TAdvSmoothImageListBox* FLst;
	bool FDeactivating;
	bool FDisableHide;
	Forms::TForm* LstParent;
	bool CancelThisBtnClick;
	bool FHideListBoxAfterSelection;
	Advsmoothimagelistbox::TAdvSmoothImageListBoxItemEvent FOnSelectImage;
	AnsiString FImageListLocation;
	void __fastcall HideParent(void);
	void __fastcall InitEvents(void);
	Controls::TWinControl* __fastcall GetParentEx(void);
	void __fastcall SetParentEx(const Controls::TWinControl* Value);
	int __fastcall GetSelectedImageIndex(void);
	void __fastcall SetSelectedImageIndex(const int Value);
	void __fastcall SetImageListLocation(const AnsiString Value);
	void __fastcall SetListbox(const Advsmoothimagelistbox::TAdvSmoothImageListBox* Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall BtnClick(System::TObject* Sender);
	void __fastcall lstParentDeactivate(System::TObject* Sender);
	void __fastcall ListBoxItemSelect(System::TObject* Sender, int itemindex);
	void __fastcall ListBoxKeyPress(System::TObject* Sender, char &Key);
	void __fastcall ListBoxKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall ListNavigate(System::TObject* Sender, Advsmoothimagelistbox::TAdvSmoothImageListBoxNavigationMode NavigationMode, bool &allow);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall CreateWnd(void);
	void __fastcall TimerEvent(System::TObject* Sender);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	
public:
	__fastcall virtual TAdvSmoothImageListBoxPicker(Classes::TComponent* AOwner);
	void __fastcall CancelBtnClick(void);
	__fastcall virtual ~TAdvSmoothImageListBoxPicker(void);
	virtual void __fastcall DropDown(void);
	__property Controls::TWinControl* Parent = {read=GetParentEx, write=SetParentEx};
	void __fastcall SetComponentStyle(Advstyleif::TTMSStyle AStyle);
	void __fastcall SaveToTheme(AnsiString FileName);
	void __fastcall LoadFromTheme(AnsiString FileName);
	AnsiString __fastcall GetThemeID();
	
__published:
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property bool HideListBoxAfterSelection = {read=FHideListBoxAfterSelection, write=FHideListBoxAfterSelection, nodefault};
	__property Advsmoothimagelistbox::TAdvSmoothImageListBoxItemEvent OnSelectImage = {read=FOnSelectImage, write=FOnSelectImage};
	__property AnsiString ImagesLocation = {read=FImageListLocation, write=SetImageListLocation};
	__property int SelectedImageIndex = {read=GetSelectedImageIndex, write=SetSelectedImageIndex, nodefault};
	__property Advsmoothimagelistbox::TAdvSmoothImageListBox* ListBox = {read=FLst, write=SetListbox};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TAdvSmoothImageListBoxPicker(HWND ParentWindow) : Advsmootheditbutton::TAdvSmoothEditBtn(ParentWindow) { }
	#pragma option pop
	
private:
	void *__ITMSStyle;	/* Advstyleif::ITMSStyle */
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	operator Advstyleif::_di_ITMSStyle()
	{
		Advstyleif::_di_ITMSStyle intf;
		GetInterface(intf);
		return intf;
	}
	#else
	operator ITMSStyle*(void) { return (ITMSStyle*)&__ITMSStyle; }
	#endif
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x2;
static const Shortint BLD_VER = 0x0;

}	/* namespace Advsmoothimagelistboxpicker */
using namespace Advsmoothimagelistboxpicker;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advsmoothimagelistboxpicker
