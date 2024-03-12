// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fcevaluator.pas' rev: 11.00

#ifndef FcevaluatorHPP
#define FcevaluatorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Fccommon.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcevaluator
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TOperator { opMultiply, opDivide, opAdd, opSubtract };
#pragma option pop

typedef Set<TOperator, opMultiply, opSubtract>  TOperators;

class DELPHICLASS TfcEvaluator;
class PASCALIMPLEMENTATION TfcEvaluator : public System::TObject 
{
	typedef System::TObject inherited;
	
protected:
	/*         class method */ static bool __fastcall GetOperands(TMetaClass* vmt, AnsiString s, TOperators Operators, AnsiString &LOperand, AnsiString &ROperand, TOperator &FoundOp);
	/*         class method */ static void __fastcall ValidateString(TMetaClass* vmt, AnsiString s);
	/*         class method */ static void __fastcall FixString(TMetaClass* vmt, AnsiString &s);
	
public:
	/*         class method */ static int __fastcall Evaluate(TMetaClass* vmt, AnsiString s);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcEvaluator(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcEvaluator(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE char OPERATORSCHAR[4];

}	/* namespace Fcevaluator */
using namespace Fcevaluator;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fcevaluator
