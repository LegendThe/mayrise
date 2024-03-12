// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwricheditbar.pas' rev: 11.00

#ifndef WwricheditbarHPP
#define WwricheditbarHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Wwriched.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Toolwin.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Wwtrackicon.hpp>	// Pascal unit
#include <Printers.hpp>	// Pascal unit
#include <Richedit.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit
#include <Actnpopup.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwricheditbar
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TwwRichEditBarOption { rebShowLoad, rebShowSaveAs, rebShowPrint, rebShowPrintPreview, rebShowPageSetup, rebShowFormatBar, rebShowToolBar, rebShowHints, rebShowRuler, rebFlatButtons, rebShowSpellCheck, rebShowJustifyButton };
#pragma option pop

typedef Set<TwwRichEditBarOption, rebShowLoad, rebShowJustifyButton>  TwwRichEditBarOptions;

class DELPHICLASS TwwRichBarFrame;
class PASCALIMPLEMENTATION TwwRichBarFrame : public Forms::TFrame 
{
	typedef Forms::TFrame inherited;
	
__published:
	Extctrls::TPanel* RichEditBar;
	Extctrls::TBevel* FormatBarBevel;
	Extctrls::TBevel* RulerBevel;
	Comctrls::TToolBar* FormatBar;
	Wwdbcomb::TwwDBComboBox* FontNameCombo;
	Wwdbcomb::TwwDBComboBox* FontSizeCombo;
	Comctrls::TToolButton* BoldButton;
	Comctrls::TToolButton* ItalicButton;
	Comctrls::TToolButton* UnderlineButton;
	Comctrls::TToolButton* ColorButton;
	Comctrls::TToolButton* ToolButton3;
	Comctrls::TToolButton* LeftButton;
	Comctrls::TToolButton* CenterButton;
	Comctrls::TToolButton* RightButton;
	Comctrls::TToolButton* JustifyButton;
	Comctrls::TToolButton* ToolButton1;
	Comctrls::TToolButton* BulletButton;
	Comctrls::TToolButton* HighlightButton;
	Comctrls::TToolBar* Toolbar;
	Comctrls::TToolButton* NewButton;
	Comctrls::TToolButton* LoadButton;
	Comctrls::TToolButton* SaveAsButton;
	Comctrls::TToolButton* PrintButton;
	Comctrls::TToolButton* ToolButton5;
	Comctrls::TToolButton* FindButton;
	Comctrls::TToolButton* SpellButton;
	Comctrls::TToolButton* ToolButton7;
	Comctrls::TToolButton* CutButton;
	Comctrls::TToolButton* CopyButton;
	Comctrls::TToolButton* PasteButton;
	Comctrls::TToolButton* ToolButton6;
	Comctrls::TToolButton* UndoButton;
	Comctrls::TToolButton* RedoButton;
	Comctrls::TToolButton* ToolButton8;
	Controls::TImageList* RichEditButtonIcons;
	Dialogs::TPrintDialog* PrintDialog1;
	Dialogs::TSaveDialog* SaveDialog1;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* Black1;
	Menus::TMenuItem* Green1;
	Menus::TMenuItem* Red1;
	Menus::TMenuItem* Blue1;
	Menus::TMenuItem* Yellow1;
	Menus::TMenuItem* Purple1;
	Menus::TMenuItem* Teal1;
	Menus::TMenuItem* Gray1;
	Menus::TMenuItem* Silver1;
	Menus::TMenuItem* Red2;
	Menus::TMenuItem* Lime1;
	Menus::TMenuItem* Yellow2;
	Menus::TMenuItem* Blue2;
	Menus::TMenuItem* Fuchsia1;
	Menus::TMenuItem* Aqua1;
	Menus::TMenuItem* White1;
	Menus::TMenuItem* Automatic1;
	Dialogs::TOpenDialog* OpenDialog1;
	Comctrls::TToolButton* PrintPreviewButton;
	Comctrls::TToolButton* ToolButton4;
	Menus::TPopupMenu* FormatMenu;
	Menus::TMenuItem* Font1;
	Menus::TMenuItem* Paragraph1;
	Menus::TMenuItem* abs1;
	Comctrls::TToolButton* FormatOptionsButton;
	Actnpopup::TPopupActionBar* PopupActionBar1;
	Menus::TMenuItem* Font2;
	Menus::TMenuItem* Paragraph2;
	Menus::TMenuItem* abs2;
	Comctrls::TToolButton* InsertObjectButton;
	void __fastcall FontNameComboCloseUp(Wwdbcomb::TwwDBComboBox* Sender, bool Select);
	void __fastcall FontSizeComboCloseUp(Wwdbcomb::TwwDBComboBox* Sender, bool Select);
	void __fastcall FindButtonClick(System::TObject* Sender);
	void __fastcall CutButtonClick(System::TObject* Sender);
	void __fastcall CopyButtonClick(System::TObject* Sender);
	void __fastcall ColorButtonClick(System::TObject* Sender);
	void __fastcall CenterButtonClick(System::TObject* Sender);
	void __fastcall BulletButtonClick(System::TObject* Sender);
	void __fastcall BoldButtonMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall BoldButtonClick(System::TObject* Sender);
	void __fastcall LeftButtonClick(System::TObject* Sender);
	void __fastcall RightButtonClick(System::TObject* Sender);
	void __fastcall JustifyButtonClick(System::TObject* Sender);
	void __fastcall ItalicButtonClick(System::TObject* Sender);
	void __fastcall UnderlineButtonClick(System::TObject* Sender);
	void __fastcall RedoButtonClick(System::TObject* Sender);
	void __fastcall UndoButtonClick(System::TObject* Sender);
	void __fastcall PasteButtonClick(System::TObject* Sender);
	void __fastcall SpellButtonClick(System::TObject* Sender);
	void __fastcall PrintButtonClick(System::TObject* Sender);
	void __fastcall SaveAsButtonClick(System::TObject* Sender);
	void __fastcall LoadButtonClick(System::TObject* Sender);
	void __fastcall NewButtonClick(System::TObject* Sender);
	void __fastcall HighlightButtonClick(System::TObject* Sender);
	void __fastcall PrintPreviewButtonClick(System::TObject* Sender);
	void __fastcall RichEditBarEnter(System::TObject* Sender);
	void __fastcall Font1Click(System::TObject* Sender);
	void __fastcall Paragraph1Click(System::TObject* Sender);
	void __fastcall abs1Click(System::TObject* Sender);
	void __fastcall InsertObjectButtonClick(System::TObject* Sender);
	
private:
	Graphics::TCanvas* FCanvas;
	bool tempDown;
	Wwriched::TwwDBRichEdit* RichEdit1;
	void __fastcall InitColorMenu(void);
	void __fastcall ColorClick(System::TObject* Sender);
	void __fastcall SetRichEditFontName(AnsiString Value);
	
public:
	Wwriched::TwwRulerPanel* wwRulerPanel;
	virtual void __fastcall ResizeBar(void);
	__fastcall virtual ~TwwRichBarFrame(void);
	void __fastcall RefreshControls(void);
	void __fastcall Initialize(void);
public:
	#pragma option push -w-inl
	/* TCustomFrame.Create */ inline __fastcall virtual TwwRichBarFrame(Classes::TComponent* AOwner) : Forms::TFrame(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwRichBarFrame(HWND ParentWindow) : Forms::TFrame(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TwwRichEditBar;
class PASCALIMPLEMENTATION TwwRichEditBar : public Extctrls::TPanel 
{
	typedef Extctrls::TPanel inherited;
	
private:
	Graphics::TCanvas* FCanvas;
	Wwriched::TwwDBRichEdit* RichEdit1;
	TwwRichEditBarOptions FOptions;
	HIDESBASE MESSAGE void __fastcall WMMeasureItem(Messages::TWMMeasureItem &Message);
	HIDESBASE MESSAGE void __fastcall WMDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall WMCommand(Messages::TWMCommand &Message);
	Wwriched::TwwDBRichEdit* __fastcall GetRichEdit(void);
	void __fastcall SetOptions(TwwRichEditBarOptions val);
	void __fastcall CreateComponent(Classes::TReader* Reader, TMetaClass* ComponentClass, Classes::TComponent* &Component);
	void __fastcall RichEditSelectionChange(System::TObject* Sender);
	
protected:
	DYNAMIC void __fastcall GetChildren(Classes::TGetChildProc Proc, Classes::TComponent* Root);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall ReadState(Classes::TReader* Reader);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual void __fastcall Loaded(void);
	void __fastcall RichEditBarFrameNeeded(void);
	virtual void __fastcall ApplyIntl(void);
	
public:
	TwwRichBarFrame* RichEditBarFrame;
	__fastcall virtual TwwRichEditBar(Classes::TComponent* AOwner);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TwwRichEditBar(void);
	DYNAMIC void __fastcall Resize(void);
	void __fastcall UpdateControlPositions(void);
	
__published:
	__property Wwriched::TwwDBRichEdit* RichEdit = {read=GetRichEdit};
	__property TwwRichEditBarOptions Options = {read=FOptions, write=SetOptions, default=3071};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwRichEditBar(HWND ParentWindow) : Extctrls::TPanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwricheditbar */
using namespace Wwricheditbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwricheditbar
