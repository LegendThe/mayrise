// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbtodolist.pas' rev: 11.00

#ifndef DbtodolistHPP
#define DbtodolistHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Todolist.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbtodolist
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TCreateDBKeyEvent)(System::TObject* Sender, Todolist::TTodoItem* ATodoItem, AnsiString &DBKey);

class DELPHICLASS TTodoFields;
class DELPHICLASS TDBTodoList;
class DELPHICLASS TDBTodoListDataLink;
class PASCALIMPLEMENTATION TDBTodoListDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBTodoList* FDBTodoList;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	
public:
	__fastcall TDBTodoListDataLink(TDBTodoList* ADBTodoList);
	__fastcall virtual ~TDBTodoListDataLink(void);
};


class PASCALIMPLEMENTATION TDBTodoList : public Todolist::TCustomTodoList 
{
	typedef Todolist::TCustomTodoList inherited;
	
private:
	TDBTodoListDataLink* FDataLink;
	TTodoFields* FTodoFields;
	bool FDBUpdating;
	TCreateDBKeyEvent FOnCreateDBKey;
	bool FClearListOnImport;
	void __fastcall SetTodoFields(const TTodoFields* Value);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall InputFromCSV(AnsiString FileName, bool insertmode);
	
protected:
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	void __fastcall SyncItems(void);
	void __fastcall SyncRecord(void);
	void __fastcall SyncCursor(void);
	void __fastcall DBInsert(Todolist::TTodoItem* ATodoItem);
	void __fastcall DBDelete(Todolist::TTodoItem* ATodoItem);
	void __fastcall DBUpdate(Todolist::TTodoItem* ATodoItem);
	void __fastcall DBWrite(Db::TDataSet* D, Todolist::TTodoItem* ATodoItem);
	void __fastcall DBRead(Db::TDataSet* D, Todolist::TTodoItem* ATodoItem);
	virtual void __fastcall EditDone(Todolist::TTodoData Data, Todolist::TTodoItem* EditItem);
	virtual bool __fastcall AllowAutoDelete(Todolist::TTodoItem* ATodoItem);
	virtual bool __fastcall AllowAutoInsert(Todolist::TTodoItem* ATodoItem);
	virtual void __fastcall ItemSelect(Todolist::TTodoItem* ATodoItem);
	bool __fastcall CheckDataSet(void);
	
public:
	__fastcall virtual TDBTodoList(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBTodoList(void);
	Todolist::TTodoItem* __fastcall CreateItem(void);
	void __fastcall FreeItem(Todolist::TTodoItem* ATodoItem);
	void __fastcall UpdateItem(Todolist::TTodoItem* ATodoItem);
	virtual void __fastcall ImportFromCSV(AnsiString FileName);
	void __fastcall Reload(void);
	__property bool ClearListOnImport = {read=FClearListOnImport, write=FClearListOnImport, nodefault};
	
__published:
	__property ActiveColumnColor ;
	__property ActiveItemColor ;
	__property ActiveItemColorTo ;
	__property Align  = {default=0};
	__property Anchors  = {default=3};
	__property AutoAdvanceEdit ;
	__property AutoInsertItem  = {default=1};
	__property AutoDeleteItem  = {default=1};
	__property AutoThemeAdapt  = {default=0};
	__property BorderStyle  = {default=1};
	__property Category ;
	__property Color ;
	__property Columns ;
	__property CompleteCheck ;
	__property CompletionFont ;
	__property CompletionGraphic  = {default=1};
	__property Cursor  = {default=0};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property DateFormat ;
	__property DragCursor ;
	__property DragMode ;
	__property DragKind ;
	__property Editable ;
	__property EditColors ;
	__property EditSelectAll ;
	__property Font ;
	__property GridLines  = {default=2};
	__property GridLineColor ;
	__property HandleGlyph ;
	__property HeaderActiveColor ;
	__property HeaderActiveColorTo ;
	__property HeaderColor ;
	__property HeaderColorTo ;
	__property HeaderDragDrop  = {default=0};
	__property HeaderFont ;
	__property HeaderHeight ;
	__property HeaderImages ;
	__property HintShowFullText  = {default=0};
	__property Images ;
	__property ItemHeight ;
	__property NullDate ;
	__property Preview ;
	__property PreviewFont ;
	__property PreviewHeight ;
	__property PreviewColor ;
	__property PreviewColorTo ;
	__property PriorityFont ;
	__property PriorityStrings ;
	__property PriorityListWidth ;
	__property ProgressLook ;
	__property SelectionColor ;
	__property SelectionColorTo ;
	__property SelectionFontColor ;
	__property ShowPriorityText ;
	__property ShowSelection ;
	__property Sorted ;
	__property SortDirection ;
	__property SortColumn ;
	__property StatusStrings ;
	__property StretchLastColumn ;
	__property TabOrder ;
	__property TabStop ;
	__property TTodoFields* TodoFields = {read=FTodoFields, write=SetTodoFields};
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEditDone ;
	__property OnEditStart ;
	__property OnEnter ;
	__property OnExit ;
	__property OnHeaderClick ;
	__property OnHeaderRightClick ;
	__property OnItemDelete ;
	__property OnItemInsert ;
	__property OnItemSelect ;
	__property OnItemRightClick ;
	__property OnStartDrag ;
	__property OnEndDrag ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnMouseMove ;
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnStatusToString ;
	__property OnStringToStatus ;
	__property OnPriorityToString ;
	__property OnStringToPriority ;
	__property TCreateDBKeyEvent OnCreateDBKey = {read=FOnCreateDBKey, write=FOnCreateDBKey};
	__property OnCompleteClick ;
	__property Version ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TDBTodoList(HWND ParentWindow) : Todolist::TCustomTodoList(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TTodoFields : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TDBTodoList* FDBTodoList;
	AnsiString FNotesField;
	AnsiString FCompletionDateField;
	AnsiString FSubjectField;
	AnsiString FDueDateField;
	AnsiString FCreationDateField;
	AnsiString FResourceField;
	AnsiString FCompleteField;
	AnsiString FStatusField;
	AnsiString FImageField;
	AnsiString FPriorityField;
	AnsiString FKeyField;
	AnsiString FCompletionField;
	AnsiString FProjectField;
	AnsiString FCategoryField;
	bool FAutoIncKey;
	AnsiString FTotalTimeField;
	
public:
	__fastcall TTodoFields(TDBTodoList* AOwner);
	__property TDBTodoList* DBTodoList = {read=FDBTodoList};
	
__published:
	__property bool AutoIncKey = {read=FAutoIncKey, write=FAutoIncKey, nodefault};
	__property AnsiString SubjectField = {read=FSubjectField, write=FSubjectField};
	__property AnsiString NotesField = {read=FNotesField, write=FNotesField};
	__property AnsiString CompleteField = {read=FCompleteField, write=FCompleteField};
	__property AnsiString DueDateField = {read=FDueDateField, write=FDueDateField};
	__property AnsiString CategoryField = {read=FCategoryField, write=FCategoryField};
	__property AnsiString CreationDateField = {read=FCreationDateField, write=FCreationDateField};
	__property AnsiString CompletionField = {read=FCompletionField, write=FCompletionField};
	__property AnsiString CompletionDateField = {read=FCompletionDateField, write=FCompletionDateField};
	__property AnsiString ResourceField = {read=FResourceField, write=FResourceField};
	__property AnsiString PriorityField = {read=FPriorityField, write=FPriorityField};
	__property AnsiString StatusField = {read=FStatusField, write=FStatusField};
	__property AnsiString ImageField = {read=FImageField, write=FImageField};
	__property AnsiString KeyField = {read=FKeyField, write=FKeyField};
	__property AnsiString ProjectField = {read=FProjectField, write=FProjectField};
	__property AnsiString TotalTimeField = {read=FTotalTimeField, write=FTotalTimeField};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTodoFields(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Dbtodolist */
using namespace Dbtodolist;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbtodolist
