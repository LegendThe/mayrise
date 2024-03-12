// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbadvtimepickerdropdown.pas' rev: 11.00

#ifndef DbadvtimepickerdropdownHPP
#define DbadvtimepickerdropdownHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Advtimepickerdropdown.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Dbctrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Advdropdown.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbadvtimepickerdropdown
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TDBAdvTimePickerDropDown;
class PASCALIMPLEMENTATION TDBAdvTimePickerDropDown : public Advtimepickerdropdown::TAdvTimePickerDropDown 
{
	typedef Advtimepickerdropdown::TAdvTimePickerDropDown inherited;
	
private:
	Dbctrls::TFieldDataLink* FDataLink;
	Db::TDataSetState FOldState;
	bool FInternalCall;
	void __fastcall DataUpdate(System::TObject* Sender);
	void __fastcall DataChange(System::TObject* Sender);
	void __fastcall ActiveChange(System::TObject* Sender);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	
protected:
	virtual bool __fastcall EditCanModify(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	DYNAMIC void __fastcall Change(void);
	
public:
	__fastcall virtual TDBAdvTimePickerDropDown(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBAdvTimePickerDropDown(void);
	DYNAMIC bool __fastcall ExecuteAction(Classes::TBasicAction* Action);
	DYNAMIC bool __fastcall UpdateAction(Classes::TBasicAction* Action);
	
__published:
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TDBAdvTimePickerDropDown(HWND ParentWindow) : Advtimepickerdropdown::TAdvTimePickerDropDown(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Dbadvtimepickerdropdown */
using namespace Dbadvtimepickerdropdown;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbadvtimepickerdropdown