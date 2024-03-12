// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Moneycal.pas' rev: 11.00

#ifndef MoneycalHPP
#define MoneycalHPP

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
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Moneycal
{
//-- type declarations -------------------------------------------------------
typedef AnsiString TDayStr;

typedef AnsiString TMonthStr;

typedef AnsiString TDayArray[14];

typedef AnsiString TMonthArray[12];

class DELPHICLASS TCalForm;
class PASCALIMPLEMENTATION TCalForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall FormMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormPaint(System::TObject* Sender);
	void __fastcall FormKeyPress(System::TObject* Sender, char &Key);
	void __fastcall FormKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	
private:
	int xoffset;
	int yoffset;
	AnsiString days[14];
	AnsiString months[12];
	System::TDateTime seldate;
	System::TDateTime thedate;
	System::TDateTime initdate;
	Word startday;
	int frstday;
	int frstmonth;
	Word dx;
	Word dy;
	Word lblx1;
	Word lblx2;
	int xposin;
	int yposin;
	bool flgl;
	bool flgr;
	bool flgla;
	bool daymode;
	AnsiString labels;
	Graphics::TColor txtcolor;
	Graphics::TColor txtselcolor;
	Graphics::TColor txtinvcolor;
	Graphics::TColor txtwkndcolor;
	int formxunit;
	int formyunit;
	bool weekmode;
	void __fastcall SetLabel(Word mo, Word ye);
	void __fastcall ChangeMonth(int dx);
	void __fastcall ChangeYear(int dx);
	Word __fastcall DaysInMonth(Word mo, Word ye);
	int __fastcall DateToWeek(Word da, Word mo, Word ye);
	void __fastcall PaintArrowLeft(void);
	void __fastcall PaintArrowRight(void);
	void __fastcall PaintLabel(void);
	void __fastcall PaintProc(void);
	void __fastcall ToggleDayMode(void);
	
public:
	System::TDateTime fromdate;
	System::TDateTime todate;
	__fastcall virtual TCalForm(Classes::TComponent* AOwner);
	void __fastcall SetDate(Word da, Word mo, Word ye);
	void __fastcall GetDate(Word &da, Word &mo, Word &ye);
	void __fastcall SetStartDay(Word aday);
	void __fastcall SetColors(Graphics::TColor textcolor, Graphics::TColor selectcolor, Graphics::TColor inverscolor, Graphics::TColor weekendcolor);
	void __fastcall SetNameofDays(AnsiString * d);
	void __fastcall SetNameofMonths(AnsiString * m);
	void __fastcall SetWeeks(bool onoff);
	void __fastcall SetStarts(int d, int m);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TCalForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TCalForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TCalForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Word adaysinmonth[13];
extern PACKAGE SmallString<5>  monames[12];
#define selstr "Select month"
static const Shortint labelx = 0x1e;
static const Shortint labelw = 0x41;
extern PACKAGE TCalForm* CalForm;

}	/* namespace Moneycal */
using namespace Moneycal;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Moneycal
