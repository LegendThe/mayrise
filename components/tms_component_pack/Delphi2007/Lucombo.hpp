// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Lucombo.pas' rev: 11.00

#ifndef LucomboHPP
#define LucomboHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Advcombo.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Lucombo
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TAutoCompleteEvent)(System::TObject* Sender, const AnsiString UsrStr, AnsiString &AutoAdd, int idx);

typedef void __fastcall (__closure *TEnterAcceptEvent)(System::TObject* Sender, const AnsiString Str, int idx, bool &accept);

typedef void __fastcall (__closure *TAddToHistoryEvent)(System::TObject* Sender, const AnsiString Str);

#pragma option push -b-
enum TAutoHistoryDirection { ahdFirst, ahdLast };
#pragma option pop

#pragma option push -b-
enum TLUStorage { stInifile, stRegistry };
#pragma option pop

class DELPHICLASS TLUPersist;
class PASCALIMPLEMENTATION TLUPersist : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnable;
	TLUStorage FStorage;
	AnsiString FKey;
	AnsiString FSection;
	int FCount;
	bool FMaxCount;
	
__published:
	__property bool Enable = {read=FEnable, write=FEnable, nodefault};
	__property TLUStorage Storage = {read=FStorage, write=FStorage, nodefault};
	__property AnsiString Key = {read=FKey, write=FKey};
	__property AnsiString Section = {read=FSection, write=FSection};
	__property int Count = {read=FCount, write=FCount, nodefault};
	__property bool MaxCount = {read=FMaxCount, write=FMaxCount, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TLUPersist(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TLUPersist(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


class DELPHICLASS TLUCombo;
class PASCALIMPLEMENTATION TLUCombo : public Advcombo::TAdvComboBox 
{
	typedef Advcombo::TAdvComboBox inherited;
	
private:
	bool workmode;
	int ItemIdx;
	int ItemSel;
	bool ItemChange;
	AnsiString FLookupStr;
	bool FReturnIsTab;
	TAutoCompleteEvent FAutoComplete;
	TEnterAcceptEvent FEnterAccept;
	TAddToHistoryEvent FOnAddToHistory;
	bool FAutoHistory;
	bool FAutoSynchronize;
	bool FFileLookup;
	TLUPersist* FLUPersist;
	bool FMatchCase;
	bool FMatchStart;
	AnsiString FFileLookupDir;
	int FAutoHistoryLimit;
	TAutoHistoryDirection FAutoHistoryDirection;
	bool FModified;
	Graphics::TColor FModifiedColor;
	Graphics::TColor FDefaultColor;
	AnsiString FOldValue;
	AnsiString FOldText;
	bool FShowModified;
	int FItemIndex;
	void __fastcall SetLUPersist(TLUPersist* value);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TMessage &Msg);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	void __fastcall SetModifiedColor(const Graphics::TColor Value);
	void __fastcall SetModified(const bool Value);
	int __fastcall GetItemIndexP(void);
	void __fastcall SetItemIndexP(const int Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	
public:
	DYNAMIC void __fastcall DoExit(void);
	DYNAMIC void __fastcall Change(void);
	__fastcall virtual TLUCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TLUCombo(void);
	virtual void __fastcall Loaded(void);
	void __fastcall SavePersist(void);
	void __fastcall LoadPersist(void);
	__property AnsiString FileLookupDir = {read=FFileLookupDir, write=FFileLookupDir};
	__property bool Modified = {read=FModified, write=SetModified, nodefault};
	
__published:
	__property TAutoCompleteEvent AutoComplete = {read=FAutoComplete, write=FAutoComplete};
	__property TAddToHistoryEvent OnAddToHistory = {read=FOnAddToHistory, write=FOnAddToHistory};
	__property bool AutoHistory = {read=FAutoHistory, write=FAutoHistory, nodefault};
	__property int AutoHistoryLimit = {read=FAutoHistoryLimit, write=FAutoHistoryLimit, nodefault};
	__property TAutoHistoryDirection AutoHistoryDirection = {read=FAutoHistoryDirection, write=FAutoHistoryDirection, nodefault};
	__property bool AutoSynchronize = {read=FAutoSynchronize, write=FAutoSynchronize, nodefault};
	__property bool ReturnIsTab = {read=FReturnIsTab, write=FReturnIsTab, nodefault};
	__property TEnterAcceptEvent Accept = {read=FEnterAccept, write=FEnterAccept};
	__property bool FileLookup = {read=FFileLookup, write=FFileLookup, nodefault};
	__property TLUPersist* Persist = {read=FLUPersist, write=SetLUPersist};
	__property bool MatchCase = {read=FMatchCase, write=FMatchCase, default=0};
	__property bool MatchStart = {read=FMatchStart, write=FMatchStart, default=1};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=SetModifiedColor, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property int ItemIndex = {read=GetItemIndexP, write=SetItemIndexP, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TLUCombo(HWND ParentWindow) : Advcombo::TAdvComboBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TLUEdit;
class PASCALIMPLEMENTATION TLUEdit : public Stdctrls::TEdit 
{
	typedef Stdctrls::TEdit inherited;
	
private:
	bool workmode;
	Classes::TStringList* FLookupItems;
	TAutoCompleteEvent FAutoComplete;
	TAddToHistoryEvent FOnAddToHistory;
	bool FAutoHistory;
	bool FAutoSynchronize;
	bool FReturnIsTab;
	TEnterAcceptEvent FEnterAccept;
	bool FFileLookup;
	TLUPersist* FLUPersist;
	bool FMatchCase;
	AnsiString FFileLookupDir;
	bool FModified;
	Graphics::TColor FModifiedColor;
	Graphics::TColor FDefaultColor;
	AnsiString FOldValue;
	int FAutoHistoryLimit;
	TAutoHistoryDirection FAutoHistoryDirection;
	bool FShowModified;
	void __fastcall SetLookupItems(Classes::TStringList* value);
	void __fastcall SetLUPersist(TLUPersist* value);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TMessage &Msg);
	void __fastcall SetModifiedColor(const Graphics::TColor Value);
	HIDESBASE void __fastcall SetModified(const bool Value);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall DoExit(void);
	
public:
	DYNAMIC void __fastcall Change(void);
	__fastcall virtual TLUEdit(Classes::TComponent* aOwner);
	__fastcall virtual ~TLUEdit(void);
	void __fastcall SavePersist(void);
	void __fastcall LoadPersist(void);
	virtual void __fastcall Loaded(void);
	__property AnsiString FileLookupDir = {read=FFileLookupDir, write=FFileLookupDir};
	__property bool Modified = {read=FModified, write=SetModified, nodefault};
	
__published:
	__property Classes::TStringList* LookupItems = {read=FLookupItems, write=SetLookupItems};
	__property TAutoCompleteEvent AutoComplete = {read=FAutoComplete, write=FAutoComplete};
	__property TAddToHistoryEvent OnAddToHistory = {read=FOnAddToHistory, write=FOnAddToHistory};
	__property TEnterAcceptEvent Accept = {read=FEnterAccept, write=FEnterAccept};
	__property bool AutoHistory = {read=FAutoHistory, write=FAutoHistory, nodefault};
	__property int AutoHistoryLimit = {read=FAutoHistoryLimit, write=FAutoHistoryLimit, nodefault};
	__property TAutoHistoryDirection AutoHistoryDirection = {read=FAutoHistoryDirection, write=FAutoHistoryDirection, nodefault};
	__property bool AutoSynchronize = {read=FAutoSynchronize, write=FAutoSynchronize, nodefault};
	__property bool ReturnIsTab = {read=FReturnIsTab, write=FReturnIsTab, nodefault};
	__property bool FileLookup = {read=FFileLookup, write=FFileLookup, nodefault};
	__property TLUPersist* Persist = {read=FLUPersist, write=SetLUPersist};
	__property bool MatchCase = {read=FMatchCase, write=FMatchCase, nodefault};
	__property Graphics::TColor ModifiedColor = {read=FModifiedColor, write=SetModifiedColor, nodefault};
	__property bool ShowModified = {read=FShowModified, write=FShowModified, nodefault};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TLUEdit(HWND ParentWindow) : Stdctrls::TEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x2;
static const Shortint MIN_VER = 0x3;
static const Shortint REL_VER = 0x1;
static const Shortint BLD_VER = 0x1;

}	/* namespace Lucombo */
using namespace Lucombo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Lucombo
