// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwkeycb.pas' rev: 11.00

#ifndef WwkeycbHPP
#define WwkeycbHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwcommon.hpp>	// Pascal unit
#include <Wwsystem.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Wwdatsrc.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Wwtypes.hpp>	// Pascal unit
#include <Wwpict.hpp>	// Pascal unit
#include <Wwframe.hpp>	// Pascal unit
#include <Wwdbcomb.hpp>	// Pascal unit
#include <Wwintl.hpp>	// Pascal unit
#include <Bde.hpp>	// Pascal unit
#include <Wwdotdot.hpp>	// Pascal unit
#include <Wwdbedit.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Maskutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwkeycb
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwIncrementalSearch;
typedef void __fastcall (__closure *TwwAfterSearchEvent)(TwwIncrementalSearch* Sender, bool MatchFound);

class DELPHICLASS TwwKeyCombo;
typedef void __fastcall (__closure *TwwKeyComboCloseUpEvent)(TwwKeyCombo* Sender, bool Select);

class DELPHICLASS TwwKeyDataLink;
class PASCALIMPLEMENTATION TwwKeyDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TwwKeyCombo* FwwKeyCombo;
	
protected:
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall ActiveChanged(void);
	
public:
	__fastcall TwwKeyDataLink(TwwKeyCombo* key);
public:
	#pragma option push -w-inl
	/* TDataLink.Destroy */ inline __fastcall virtual ~TwwKeyDataLink(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TwwKeyCombo : public Wwdbcomb::TwwDBCustomComboBox 
{
	typedef Wwdbcomb::TwwDBCustomComboBox inherited;
	
private:
	TwwKeyDataLink* FDataLink;
	bool FShowAllIndexes;
	AnsiString FPrimaryKeyName;
	bool skipReload;
	bool FShowAllFields;
	TwwKeyComboCloseUpEvent FOnCloseUp;
	
protected:
	virtual void __fastcall CloseUp(bool Accept);
	DYNAMIC void __fastcall Change(void);
	HIDESBASE void __fastcall SetDataSource(Db::TDataSource* value);
	HIDESBASE Db::TDataSource* __fastcall GetDataSource(void);
	AnsiString __fastcall GetPrimaryName();
	void __fastcall SetShowAllIndexes(bool value);
	void __fastcall SetShowAllFields(bool value);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	Variant Patch;
	__fastcall virtual TwwKeyCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwKeyCombo(void);
	void __fastcall LinkActive(bool active);
	virtual void __fastcall DataChanged(void);
	void __fastcall InitCombo(void);
	void __fastcall InitComboWithGrid(Classes::TComponent* grid);
	void __fastcall RefreshDisplay(void);
	virtual void __fastcall DropDown(void);
	virtual bool __fastcall UseAllFields(Db::TDataSet* value);
	__property bool ShowAllFields = {read=FShowAllFields, write=SetShowAllFields, nodefault};
	
__published:
	__property Controller ;
	__property DisableThemes  = {default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property Style ;
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property DropDownCount ;
	__property Enabled  = {default=1};
	__property Font ;
	__property ItemHeight ;
	__property MaxLength  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property Sorted ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Text ;
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDrawItem ;
	__property OnDropDown ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMeasureItem ;
	__property bool ShowAllIndexes = {read=FShowAllIndexes, write=SetShowAllIndexes, nodefault};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property AnsiString PrimaryKeyName = {read=FPrimaryKeyName, write=FPrimaryKeyName};
	__property ButtonEffects ;
	__property Frame ;
	__property ButtonWidth  = {default=0};
	__property ButtonGlyph ;
	__property ButtonStyle  = {default=1};
	__property TwwKeyComboCloseUpEvent OnCloseUp = {read=FOnCloseUp, write=FOnCloseUp};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwKeyCombo(HWND ParentWindow) : Wwdbcomb::TwwDBCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TwwSearchCaseSensitivity { wwcsAutoDetect, wwcsCaseSensitive, wwcsCaseInsensitive };
#pragma option pop

class PASCALIMPLEMENTATION TwwIncrementalSearch : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	Db::TDataLink* FDataLink;
	int FTimerInterval;
	Extctrls::TTimer* FTimer;
	TwwAfterSearchEvent FOnAfterSearch;
	bool FShowMatchText;
	AnsiString LastValue;
	int FieldNo;
	AnsiString FSearchField;
	AnsiString FPictureMask;
	bool FPictureMaskAutoFill;
	bool FPictureMaskFromField;
	Wwframe::TwwEditFrame* FFrame;
	bool FFocused;
	Controls::TControlCanvas* FCanvas;
	int FSearchDelay;
	TwwSearchCaseSensitivity FCaseSensitivity;
	Wwtypes::TwwPerformSearchEvent FOnPerformCustomSearch;
	Wwintl::TwwController* FController;
	bool FDisableThemes;
	bool __fastcall isTransparentEffective(void);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CNKeyDown(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFont(Messages::TWMSetFont &Message);
	void __fastcall SetController(Wwintl::TwwController* Value);
	
protected:
	void __fastcall SetDataSource(Db::TDataSource* value);
	Db::TDataSource* __fastcall GetDataSource(void);
	AnsiString __fastcall FindSearchField();
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall SetEditRect(void);
	virtual void __fastcall PerformCustomSearch(AnsiString SearchField, AnsiString SearchValue, bool PerformLookup, bool &Found);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	Variant Patch;
	__property Extctrls::TTimer* DelayTimer = {read=FTimer};
	__fastcall virtual TwwIncrementalSearch(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwIncrementalSearch(void);
	void __fastcall FindValue(void);
	void __fastcall OnEditTimerEvent(System::TObject* Sender);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	void __fastcall SetSearchField(AnsiString ASearchField);
	virtual void __fastcall Clear(void);
	
__published:
	__property Wwintl::TwwController* Controller = {read=FController, write=SetController};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
	__property Anchors  = {default=3};
	__property Constraints ;
	__property Wwframe::TwwEditFrame* Frame = {read=FFrame, write=FFrame};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property AnsiString SearchField = {read=FSearchField, write=FSearchField};
	__property TwwAfterSearchEvent OnAfterSearch = {read=FOnAfterSearch, write=FOnAfterSearch};
	__property bool ShowMatchText = {read=FShowMatchText, write=FShowMatchText, default=0};
	__property AnsiString PictureMask = {read=FPictureMask, write=FPictureMask};
	__property bool PictureMaskAutoFill = {read=FPictureMaskAutoFill, write=FPictureMaskAutoFill, default=1};
	__property bool PictureMaskFromField = {read=FPictureMaskFromField, write=FPictureMaskFromField, default=0};
	__property int SearchDelay = {read=FSearchDelay, write=FSearchDelay, default=0};
	__property TwwSearchCaseSensitivity CaseSensitivity = {read=FCaseSensitivity, write=FCaseSensitivity, default=0};
	__property Wwtypes::TwwPerformSearchEvent OnPerformCustomSearch = {read=FOnPerformCustomSearch, write=FOnPerformCustomSearch};
	__property AutoSelect  = {default=1};
	__property AutoSize  = {default=1};
	__property BorderStyle  = {default=1};
	__property CharCase  = {default=0};
	__property Color  = {default=-16777211};
	__property Ctl3D ;
	__property DragCursor  = {default=-12};
	__property DragMode  = {default=0};
	__property Enabled  = {default=1};
	__property Font ;
	__property HideSelection  = {default=1};
	__property ImeMode  = {default=3};
	__property ImeName ;
	__property MaxLength  = {default=0};
	__property OEMConvert  = {default=0};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PasswordChar  = {default=0};
	__property PopupMenu ;
	__property ReadOnly  = {default=0};
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwIncrementalSearch(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwkeycb */
using namespace Wwkeycb;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwkeycb
