// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fccollection.pas' rev: 11.00

#ifndef FccollectionHPP
#define FccollectionHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccollection
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCollectionItem;
typedef void __fastcall (__closure *TfcSelectionMethod)(TfcCollectionItem* Item);

class PASCALIMPLEMENTATION TfcCollectionItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	void *FPointerTag;
	TfcSelectionMethod FSelectionMethod;
	int FTag;
	Classes::TNotifyEvent FOnRefreshDesign;
	
protected:
	virtual void __fastcall SetSelectionMethod(TfcSelectionMethod Value);
	virtual void __fastcall RefreshDesign(void);
	
public:
	virtual Classes::TPersistent* __fastcall GetInstance(const AnsiString PropertyName);
	virtual void __fastcall GotSelected(void);
	void __fastcall SetButtonName(System::TObject* Sender);
	__property void * PointerTag = {read=FPointerTag, write=FPointerTag};
	__property TfcSelectionMethod SelectionMethod = {read=FSelectionMethod, write=SetSelectionMethod};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property Classes::TNotifyEvent OnRefreshDesign = {read=FOnRefreshDesign, write=FOnRefreshDesign};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TfcCollectionItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TfcCollectionItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCollection;
class PASCALIMPLEMENTATION TfcCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
private:
	Controls::TControl* FDesigner;
	TfcCollectionItem* __fastcall GetItems(int Index);
	
protected:
	virtual void __fastcall SetDesigner(Controls::TControl* Value);
	
public:
	__fastcall virtual ~TfcCollection(void);
	virtual TfcCollectionItem* __fastcall AddItem(void);
	__property Controls::TControl* Designer = {read=FDesigner, write=SetDesigner};
	__property TfcCollectionItem* Items[int Index] = {read=GetItems};
public:
	#pragma option push -w-inl
	/* TCollection.Create */ inline __fastcall TfcCollection(TMetaClass* ItemClass) : Classes::TCollection(ItemClass) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fccollection */
using namespace Fccollection;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fccollection
