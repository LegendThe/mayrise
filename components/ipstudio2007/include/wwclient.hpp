// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwclient.pas' rev: 11.00

#ifndef WwclientHPP
#define WwclientHPP

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
#include <Db.hpp>	// Pascal unit
#include <Dbtables.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Wwfilter.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <Wwsystem.hpp>	// Pascal unit
#include <Wwtable.hpp>	// Pascal unit
#include <Wwtypes.hpp>	// Pascal unit
#include <Dbclient.hpp>	// Pascal unit
#include <Bde.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwclient
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwClientDataSet;
typedef void __fastcall (__closure *TwwClientDataSetFilterEvent)(TwwClientDataSet* ClientDataSet, bool &Accept);

class PASCALIMPLEMENTATION TwwClientDataSet : public Dbclient::TClientDataSet 
{
	typedef Dbclient::TClientDataSet inherited;
	
private:
	Classes::TStrings* FControlType;
	Classes::TStrings* FPictureMasks;
	bool FUsePictureMask;
	Wwtypes::TwwInvalidValueEvent FOnInvalidValue;
	Db::TFilterRecordEvent FOnFilter;
	char *FFilterFieldBuffer;
	Db::TParam* FFilterParam;
	Classes::TStrings* FRemoteSQL;
	Classes::TStrings* FFieldList;
	void __fastcall SetOnFilter(Db::TFilterRecordEvent val);
	Classes::TStrings* __fastcall GetControlType(void);
	void __fastcall SetControlType(Classes::TStrings* sel);
	Classes::TStrings* __fastcall GetPictureMasks(void);
	void __fastcall SetPictureMasks(Classes::TStrings* sel);
	Classes::TStrings* __fastcall GetFieldInfo(void);
	
protected:
	virtual void __fastcall DoBeforePost(void);
	
public:
	bool InFilterEvent;
	__fastcall virtual TwwClientDataSet(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwClientDataSet(void);
	Db::TParam* __fastcall wwFilterField(AnsiString AFieldName);
	virtual bool __fastcall IsSequenced(void);
	
__published:
	__property Classes::TStrings* ControlType = {read=GetControlType, write=SetControlType};
	__property Classes::TStrings* PictureMasks = {read=GetPictureMasks, write=SetPictureMasks};
	__property bool ValidateWithMask = {read=FUsePictureMask, write=FUsePictureMask, nodefault};
	__property Db::TFilterRecordEvent OnFilter = {read=FOnFilter, write=SetOnFilter};
	__property Wwtypes::TwwInvalidValueEvent OnInvalidValue = {read=FOnInvalidValue, write=FOnInvalidValue};
	__property Classes::TStrings* FieldInfo = {read=GetFieldInfo, stored=false};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwclient */
using namespace Wwclient;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwclient
