// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Asglinks.pas' rev: 11.00

#ifndef AsglinksHPP
#define AsglinksHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Moneyedit.hpp>	// Pascal unit
#include <Advedit.hpp>	// Pascal unit
#include <Clisted.hpp>	// Pascal unit
#include <Advgrid.hpp>	// Pascal unit
#include <Colorcombo.hpp>	// Pascal unit
#include <Imagepicker.hpp>	// Pascal unit
#include <Shellapi.hpp>	// Pascal unit
#include <Advfilenameedit.hpp>	// Pascal unit
#include <Advdirectoryedit.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Lucombo.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Asglinks
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvEditEditLink;
class PASCALIMPLEMENTATION TAdvEditEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Advedit::TAdvEdit* FEdit;
	Graphics::TColor FEditColor;
	Graphics::TColor FModifiedColor;
	Advedit::TAdvEditType FEditType;
	AnsiString FSuffix;
	AnsiString FPrefix;
	Advedit::TEditAlign FEditAlign;
	bool FShowModified;
	int FPrecision;
	bool FSigned;
	bool FExcelStyleDecimalSeparator;
	int FMaxLength;
	AnsiString FValidChars;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TAdvEditEditLink(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvEditEditLink(void);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	virtual void __fastcall SetRect(const Types::TRect &r);
	
__published:
	__property Advedit::TEditAlign EditAlign = {read=FEditAlign, write=FEditAlign, nodefault};
	__property Graphics::TColor EditColor = {read=FEditColor, write=FEditColor, nodefault};
	__property int MaxLength = {read=FMaxLength, write=FMaxLength, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, nodefault};
	__property Advedit::TAdvEditType EditType = {read=FEditType, write=FEditType, nodefault};
	__property AnsiString Prefix = {read=FPrefix, write=FPrefix};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property AnsiString Suffix = {read=FSuffix, write=FSuffix};
	__property int Precision = {read=FPrecision, write=FPrecision, nodefault};
	__property bool Signed = {read=FSigned, write=FSigned, nodefault};
	__property bool ExcelStyleDecimalSeparator = {read=FExcelStyleDecimalSeparator, write=FExcelStyleDecimalSeparator, nodefault};
	__property AnsiString ValidChars = {read=FValidChars, write=FValidChars};
};


class DELPHICLASS TAdvFileNameEditLink;
class PASCALIMPLEMENTATION TAdvFileNameEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Advfilenameedit::TAdvFileNameEdit* FEdit;
	Graphics::TColor FModifiedColor;
	Graphics::TColor FEditColor;
	bool FShowModified;
	int FFilterIndex;
	AnsiString FFilter;
	AnsiString FInitialDir;
	AnsiString FDialogTitle;
	Advfilenameedit::TFileDialogKind FDialogKind;
	Dialogs::TOpenOptions FDialogOptions;
	AnsiString FDefaultExt;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TAdvFileNameEditLink(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvFileNameEditLink(void);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	
__published:
	__property Graphics::TColor EditColor = {read=FEditColor, write=FEditColor, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property AnsiString Filter = {read=FFilter, write=FFilter};
	__property int FilterIndex = {read=FFilterIndex, write=FFilterIndex, default=1};
	__property AnsiString InitialDir = {read=FInitialDir, write=FInitialDir};
	__property Dialogs::TOpenOptions DialogOptions = {read=FDialogOptions, write=FDialogOptions, default=524292};
	__property AnsiString DialogTitle = {read=FDialogTitle, write=FDialogTitle};
	__property Advfilenameedit::TFileDialogKind DialogKind = {read=FDialogKind, write=FDialogKind, nodefault};
	__property AnsiString DefaultExt = {read=FDefaultExt, write=FDefaultExt};
};


class DELPHICLASS TAdvDirectoryEditLink;
class PASCALIMPLEMENTATION TAdvDirectoryEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Advdirectoryedit::TAdvDirectoryEdit* FEdit;
	bool FShowModified;
	Graphics::TColor FModifiedColor;
	Graphics::TColor FEditColor;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TAdvDirectoryEditLink(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvDirectoryEditLink(void);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	
__published:
	__property Graphics::TColor EditColor = {read=FEditColor, write=FEditColor, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=FModifiedColor, nodefault};
};


class DELPHICLASS TColorComboEditLink;
class PASCALIMPLEMENTATION TColorComboEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Colorcombo::TAdvColorComboBox* FEdit;
	int FDropDownHeight;
	int FDropDownWidth;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TColorComboEditLink(Classes::TComponent* aOwner);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual void __fastcall SetRect(const Types::TRect &r);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	
__published:
	__property int DropDownHeight = {read=FDropDownHeight, write=FDropDownHeight, nodefault};
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, nodefault};
public:
	#pragma option push -w-inl
	/* TEditLink.Destroy */ inline __fastcall virtual ~TColorComboEditLink(void) { }
	#pragma option pop
	
};


class DELPHICLASS TMoneyEditLink;
class PASCALIMPLEMENTATION TMoneyEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Moneyedit::TMoneyEdit* FEdit;
	Moneyedit::TCalculatorLook* FCalculatorLook;
	void __fastcall SetCalculatorLook(const Moneyedit::TCalculatorLook* Value);
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TMoneyEditLink(Classes::TComponent* aOwner);
	__fastcall virtual ~TMoneyEditLink(void);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	virtual void __fastcall SetCellProps(Graphics::TColor AColor, Graphics::TFont* AFont);
	
__published:
	__property Moneyedit::TCalculatorLook* CalculatorLook = {read=FCalculatorLook, write=SetCalculatorLook};
};


class DELPHICLASS TCheckEditLink;
class PASCALIMPLEMENTATION TCheckEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Clisted::TCheckListEdit* FEdit;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* sender);
	
public:
	__fastcall virtual TCheckEditLink(Classes::TComponent* aOwner);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetCellProps(Graphics::TColor AColor, Graphics::TFont* AFont);
public:
	#pragma option push -w-inl
	/* TEditLink.Destroy */ inline __fastcall virtual ~TCheckEditLink(void) { }
	#pragma option pop
	
};


class DELPHICLASS TImagePickerEditLink;
class PASCALIMPLEMENTATION TImagePickerEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	Imagepicker::TImagePicker* FEdit;
	int FDropDownHeight;
	int FDropDownWidth;
	Controls::TImageList* FImages;
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	
public:
	__fastcall virtual TImagePickerEditLink(Classes::TComponent* aOwner);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual void __fastcall DestroyEditor(void);
	virtual void __fastcall SetRect(const Types::TRect &r);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	
__published:
	__property int DropDownHeight = {read=FDropDownHeight, write=FDropDownHeight, nodefault};
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, nodefault};
	__property Controls::TImageList* Images = {read=FImages, write=FImages};
public:
	#pragma option push -w-inl
	/* TEditLink.Destroy */ inline __fastcall virtual ~TImagePickerEditLink(void) { }
	#pragma option pop
	
};


class DELPHICLASS TLUComboEditLink;
class PASCALIMPLEMENTATION TLUComboEditLink : public Advgrid::TEditLink 
{
	typedef Advgrid::TEditLink inherited;
	
private:
	int FCellHeight;
	Classes::TStrings* FItems;
	bool FFlat;
	int FDropHeight;
	int FDropWidth;
	bool FEtched;
	void __fastcall SetItems(const Classes::TStrings* Value);
	
protected:
	HIDESBASE void __fastcall EditExit(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	
public:
	Lucombo::TLUCombo* Combo;
	__fastcall virtual TLUComboEditLink(Classes::TComponent* AOwner);
	__fastcall virtual ~TLUComboEditLink(void);
	virtual void __fastcall CreateEditor(Controls::TWinControl* AParent);
	virtual AnsiString __fastcall GetEditorValue();
	virtual void __fastcall SetEditorValue(AnsiString s);
	virtual Controls::TWinControl* __fastcall GetEditControl(void);
	virtual void __fastcall SetProperties(void);
	virtual void __fastcall SetRect(const Types::TRect &R);
	
__published:
	__property int DropHeight = {read=FDropHeight, write=FDropHeight, nodefault};
	__property int DropWidth = {read=FDropWidth, write=FDropWidth, nodefault};
	__property bool Etched = {read=FEtched, write=FEtched, nodefault};
	__property bool Flat = {read=FFlat, write=FFlat, nodefault};
	__property Classes::TStrings* Items = {read=FItems, write=SetItems};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Asglinks */
using namespace Asglinks;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Asglinks
