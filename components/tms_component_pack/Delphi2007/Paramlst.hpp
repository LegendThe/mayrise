// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Paramlst.pas' rev: 11.00

#ifndef ParamlstHPP
#define ParamlstHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Paramlst
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
struct TControlClickParameter
{
	
public:
	#pragma pack(push,1)
	Types::TRect paramrect;
	#pragma pack(pop)
	int mousex;
	int mousey;
	int index;
} ;
#pragma pack(pop)

typedef void __fastcall (__closure *TParameterClickEvent)(System::TObject* Sender, int AIndex, AnsiString Name, AnsiString &Value);

typedef void __fastcall (__closure *TComboSelectEvent)(System::TObject* Sender, int AIndex, AnsiString OldValue, AnsiString NewValue);

typedef void __fastcall (__closure *TShowListEvent)(System::TObject* Sender, int AIndex, AnsiString Name, AnsiString &Value, bool &showlist);

typedef void __fastcall (__closure *TControlClickEvent)(System::TObject* Sender, const TControlClickParameter &param, AnsiString Name, AnsiString &Value, bool &showcontrol);

class DELPHICLASS TPopupListBox;
class DELPHICLASS TParameterListBox;
class DELPHICLASS TSaveParams;
#pragma option push -b-
enum TParamLocation { lcRegistry, lcInifile };
#pragma option pop

class PASCALIMPLEMENTATION TSaveParams : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FAutoSave;
	bool FAutoLoad;
	AnsiString FKey;
	AnsiString FSection;
	AnsiString FApp;
	TParamLocation FLocation;
	TParameterListBox* FOwner;
	
public:
	__fastcall TSaveParams(TParameterListBox* aOwner);
	__fastcall virtual ~TSaveParams(void);
	
__published:
	__property AnsiString App = {read=FApp, write=FApp};
	__property bool AutoSave = {read=FAutoSave, write=FAutoSave, nodefault};
	__property bool AutoLoad = {read=FAutoLoad, write=FAutoLoad, nodefault};
	__property AnsiString Key = {read=FKey, write=FKey};
	__property AnsiString Section = {read=FSection, write=FSection};
	__property TParamLocation Location = {read=FLocation, write=FLocation, nodefault};
};


class PASCALIMPLEMENTATION TParameterListBox : public Stdctrls::TListBox 
{
	typedef Stdctrls::TListBox inherited;
	
private:
	bool cursorhand;
	Controls::TCursor origcursor;
	bool highlight;
	int highidx;
	int highoffs;
	TParameterClickEvent FOnParameterClick;
	TParameterClickEvent FOnParameterActive;
	TControlClickEvent FOnControlClick;
	TComboSelectEvent FOnComboSelect;
	TShowListEvent FOnShowList;
	int FDropWidth;
	int FDropHeight;
	bool FAutoDropWidth;
	Graphics::TColor FNameColor;
	Graphics::TColor FValueColor;
	TPopupListBox* FListBox;
	AnsiString FStartDelimiter;
	AnsiString FEndDelimiter;
	AnsiString FDelimiter;
	TSaveParams* FSaveParams;
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall WMMouseMove(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Msg);
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TMessage &Message);
	bool __fastcall HasParam(AnsiString s);
	int __fastcall GetParamMax(void);
	int __fastcall GetParamMin(void);
	int __fastcall GetParamPos(int Idx);
	int __fastcall GetParamIdx(AnsiString s);
	AnsiString __fastcall GetParamName(AnsiString s);
	AnsiString __fastcall GetParamValue(AnsiString s);
	AnsiString __fastcall GetFirstText(AnsiString s);
	AnsiString __fastcall GetLastText(AnsiString s);
	AnsiString __fastcall SetParamValue(int i, AnsiString s, AnsiString p);
	int __fastcall GetParamValueName(int i, AnsiString &name, AnsiString &value);
	void __fastcall SetParam(int i, const AnsiString Value);
	AnsiString __fastcall GetParam(int i);
	void __fastcall SetNameColor(Graphics::TColor acolor);
	void __fastcall SetValueColor(Graphics::TColor acolor);
	void __fastcall SetDelimiter(const AnsiString Value);
	void __fastcall SetActive(int value);
	int __fastcall GetActive(void);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	
protected:
	virtual int __fastcall GetVersionNr(void);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall DoEnter(void);
	DYNAMIC void __fastcall DoExit(void);
	
public:
	__fastcall virtual TParameterListBox(Classes::TComponent* aOwner);
	__fastcall virtual ~TParameterListBox(void);
	__property AnsiString Parameter[int i] = {read=GetParam, write=SetParam};
	__property TPopupListBox* Listbox = {read=FListBox};
	void __fastcall SaveParams(void);
	void __fastcall LoadParams(void);
	void __fastcall InitParams(void);
	
__published:
	__property TParameterClickEvent OnParameterClick = {read=FOnParameterClick, write=FOnParameterClick};
	__property TParameterClickEvent OnParameterActive = {read=FOnParameterActive, write=FOnParameterActive};
	__property TControlClickEvent OnControlClick = {read=FOnControlClick, write=FOnControlClick};
	__property TShowListEvent OnShowList = {read=FOnShowList, write=FOnShowList};
	__property TComboSelectEvent OnComboSelect = {read=FOnComboSelect, write=FOnComboSelect};
	__property Graphics::TColor NameColor = {read=FNameColor, write=SetNameColor, nodefault};
	__property Graphics::TColor ValueColor = {read=FValueColor, write=SetValueColor, nodefault};
	__property AnsiString Delimiter = {read=FDelimiter, write=SetDelimiter};
	__property int ActiveParameter = {read=GetActive, write=SetActive, nodefault};
	__property TSaveParams* SaveParam = {read=FSaveParams, write=FSaveParams};
	__property int DropWidth = {read=FDropWidth, write=FDropWidth, nodefault};
	__property int DropHeight = {read=FDropHeight, write=FDropHeight, nodefault};
	__property bool AutoDropWidth = {read=FAutoDropWidth, write=FAutoDropWidth, nodefault};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TParameterListBox(HWND ParentWindow) : Stdctrls::TListBox(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TPopupListBox : public Stdctrls::TListBox 
{
	typedef Stdctrls::TListBox inherited;
	
private:
	int fparamidx;
	TParameterListBox* fOwnerList;
	HIDESBASE MESSAGE void __fastcall WMKeyDown(Messages::TWMKey &Msg);
	HIDESBASE MESSAGE void __fastcall WMLButtonUp(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	void __fastcall SizeDropDownWidth(void);
	
public:
	__property TParameterListBox* OwnerList = {read=fOwnerList, write=fOwnerList};
	
__published:
	__property int ParamIdx = {read=fparamidx, write=fparamidx, nodefault};
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


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x9;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x0;

}	/* namespace Paramlst */
using namespace Paramlst;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Paramlst
