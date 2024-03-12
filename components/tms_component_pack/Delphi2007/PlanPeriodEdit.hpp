// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Planperiodedit.pas' rev: 11.00

#ifndef PlanperiodeditHPP
#define PlanperiodeditHPP

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
#include <Planner.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Planperiodedit
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TEditState { esEdit, esNew };
#pragma option pop

class DELPHICLASS TPeriodPlannerItemEditForm;
class PASCALIMPLEMENTATION TPeriodPlannerItemEditForm : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TLabel* lbl_subject;
	Stdctrls::TLabel* lbl_start;
	Stdctrls::TLabel* lbl_notes;
	Stdctrls::TLabel* lbl_shape;
	Stdctrls::TLabel* lbl_color;
	Comctrls::TDateTimePicker* StartTime;
	Comctrls::TDateTimePicker* EndTime;
	Stdctrls::TComboBox* CBShape;
	Stdctrls::TEdit* EdSubject;
	Stdctrls::TMemo* Notes;
	Comctrls::TDateTimePicker* StartDate;
	Dialogs::TColorDialog* ColorDialog;
	Extctrls::TPanel* Panel2;
	Extctrls::TPanel* ButtonBottomPanel;
	Extctrls::TPanel* ButtonBottomRightPanel;
	Stdctrls::TButton* OKBtn;
	Stdctrls::TButton* CancBtn;
	Extctrls::TPanel* WarningPanel;
	Comctrls::TDateTimePicker* EndDate;
	Stdctrls::TLabel* lbl_end;
	Extctrls::TShape* Shape1;
	void __fastcall Shape1MouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
private:
	TEditState FEditState;
	
protected:
	virtual void __fastcall AssignFromPlannerItem(Planner::TPlannerItem* PlannerItem);
	virtual void __fastcall AssignToPlannerItem(Planner::TPlannerItem* PlannerItem);
	virtual void __fastcall InternalEditModal(Planner::TPlannerItem* PlannerItem);
	virtual void __fastcall ProcessWarnings(void);
	virtual void __fastcall SetEditState(const TEditState Value);
	
public:
	virtual void __fastcall EditModal(Planner::TPlannerItem* PlannerItem);
	__property TEditState EditState = {read=FEditState, write=SetEditState, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TPeriodPlannerItemEditForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TPeriodPlannerItemEditForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TPeriodPlannerItemEditForm(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TPeriodPlannerItemEditForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TPeriodItemEditor;
class PASCALIMPLEMENTATION TPeriodItemEditor : public Planner::TCustomItemEditor 
{
	typedef Planner::TCustomItemEditor inherited;
	
private:
	TPeriodPlannerItemEditForm* FEditForm;
	bool FCenter;
	int FFormLeft;
	int FFormTop;
	AnsiString FLblSubject;
	AnsiString FLblWarning;
	bool FShowShape;
	bool FShowColor;
	AnsiString FLblEnd;
	AnsiString FLblNotes;
	AnsiString FLblShape;
	AnsiString FLblColor;
	AnsiString FLblStart;
	
public:
	__fastcall virtual TPeriodItemEditor(Classes::TComponent* AOwner);
	virtual void __fastcall CreateEditor(Classes::TComponent* AOwner);
	virtual void __fastcall DestroyEditor(void);
	virtual int __fastcall Execute(void);
	virtual void __fastcall PlannerItemToEdit(Planner::TPlannerItem* APlannerItem);
	virtual void __fastcall EditToPlannerItem(Planner::TPlannerItem* APlannerItem);
	
__published:
	__property bool CenterOnScreen = {read=FCenter, write=FCenter, default=1};
	__property int FormLeft = {read=FFormLeft, write=FFormLeft, nodefault};
	__property int FormTop = {read=FFormTop, write=FFormTop, nodefault};
	__property AnsiString LblWarning = {read=FLblWarning, write=FLblWarning};
	__property AnsiString LblSubject = {read=FLblSubject, write=FLblSubject};
	__property AnsiString LblStart = {read=FLblStart, write=FLblStart};
	__property AnsiString LblEnd = {read=FLblEnd, write=FLblEnd};
	__property AnsiString LblColor = {read=FLblColor, write=FLblColor};
	__property AnsiString LblShape = {read=FLblShape, write=FLblShape};
	__property AnsiString LblNotes = {read=FLblNotes, write=FLblNotes};
	__property bool ShowShape = {read=FShowShape, write=FShowShape, default=1};
	__property bool ShowColor = {read=FShowColor, write=FShowColor, default=1};
public:
	#pragma option push -w-inl
	/* TComponent.Destroy */ inline __fastcall virtual ~TPeriodItemEditor(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Planperiodedit */
using namespace Planperiodedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Planperiodedit
