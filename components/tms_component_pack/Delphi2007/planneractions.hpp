// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planneractions.pas' rev: 11.00

#ifndef PlanneractionsHPP
#define PlanneractionsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Planner.hpp>	// Pascal unit
#include <Plannermonthview.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Clipbrd.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planneractions
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TPlannerAction;
class PASCALIMPLEMENTATION TPlannerAction : public Actnlist::TAction 
{
	typedef Actnlist::TAction inherited;
	
private:
	Controls::TCustomControl* FControl;
	void __fastcall SetControl(Controls::TCustomControl* Value);
	
protected:
	virtual Controls::TCustomControl* __fastcall GetControl(System::TObject* Target);
	virtual Planner::TPlannerItems* __fastcall GetControlItems(System::TObject* Target);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual ~TPlannerAction(void);
	virtual bool __fastcall HandlesTarget(System::TObject* Target);
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	__property Controls::TCustomControl* Control = {read=FControl, write=SetControl};
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TPlannerAction(Classes::TComponent* AOwner) : Actnlist::TAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerCut;
class PASCALIMPLEMENTATION TPlannerCut : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerCut(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TPlannerCut(Classes::TComponent* AOwner) : TPlannerAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerCopy;
class PASCALIMPLEMENTATION TPlannerCopy : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerCopy(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TPlannerCopy(Classes::TComponent* AOwner) : TPlannerAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerPaste;
class PASCALIMPLEMENTATION TPlannerPaste : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	virtual void __fastcall UpdateTarget(System::TObject* Target);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerPaste(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TPlannerPaste(Classes::TComponent* AOwner) : TPlannerAction(AOwner) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerDelete;
class PASCALIMPLEMENTATION TPlannerDelete : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	__fastcall virtual TPlannerDelete(Classes::TComponent* AOwner);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerDelete(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerInsert;
class PASCALIMPLEMENTATION TPlannerInsert : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	__fastcall virtual TPlannerInsert(Classes::TComponent* AOwner);
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerInsert(void) { }
	#pragma option pop
	
};


class DELPHICLASS TPlannerEdit;
class PASCALIMPLEMENTATION TPlannerEdit : public TPlannerAction 
{
	typedef TPlannerAction inherited;
	
public:
	virtual void __fastcall ExecuteTarget(System::TObject* Target);
public:
	#pragma option push -w-inl
	/* TPlannerAction.Destroy */ inline __fastcall virtual ~TPlannerEdit(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TAction.Create */ inline __fastcall virtual TPlannerEdit(Classes::TComponent* AOwner) : TPlannerAction(AOwner) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Planneractions */
using namespace Planneractions;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planneractions
