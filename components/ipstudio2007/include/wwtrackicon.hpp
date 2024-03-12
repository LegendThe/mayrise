// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwtrackicon.pas' rev: 11.00

#ifndef WwtrackiconHPP
#define WwtrackiconHPP

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
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwtrackicon
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TwwTrackIcon;
class PASCALIMPLEMENTATION TwwTrackIcon : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	Graphics::TBitmap* TrackBmp;
	Classes::TNotifyEvent FOnEndDrag;
	AnsiString FBitmapName;
	int FMinValue;
	int FMaxValue;
	void __fastcall MouseLoop_Drag(int X, int Y);
	void __fastcall SetBitmapName(AnsiString val);
	
protected:
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	
public:
	__fastcall virtual TwwTrackIcon(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwTrackIcon(void);
	
__published:
	__property Classes::TNotifyEvent OnEndDrag = {read=FOnEndDrag, write=FOnEndDrag};
	__property AnsiString BitmapName = {read=FBitmapName, write=SetBitmapName};
	__property int MinValue = {read=FMinValue, write=FMinValue, nodefault};
	__property int MaxValue = {read=FMaxValue, write=FMaxValue, nodefault};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Wwtrackicon */
using namespace Wwtrackicon;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwtrackicon
