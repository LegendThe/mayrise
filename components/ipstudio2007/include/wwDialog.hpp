// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwdialog.pas' rev: 11.00

#ifndef WwdialogHPP
#define WwdialogHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwdialog
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwCustomDialog;
class PASCALIMPLEMENTATION TwwCustomDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
public:
	virtual bool __fastcall Execute(void) = 0 ;
	virtual Db::TDataSet* __fastcall GetPrimaryDataSet(void) = 0 ;
public:
	#pragma option push -w-inl
	/* TComponent.Create */ inline __fastcall virtual TwwCustomDialog(Classes::TComponent* AOwner) : Classes::TComponent(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TwwCustomDialog(void) { }
	#pragma option pop
	
};


typedef TMetaClass* TwwCustomDialogClass;

//-- var, const, procedure ---------------------------------------------------

}	/* namespace Wwdialog */
using namespace Wwdialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwdialog
