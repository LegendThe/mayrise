// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Dbadvsmoothtimeline.pas' rev: 11.00

#ifndef DbadvsmoothtimelineHPP
#define DbadvsmoothtimelineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Advsmoothtimeline.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Dbadvsmoothtimeline
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TDBAdvSmoothTimeLineBarIndicator;
class PASCALIMPLEMENTATION TDBAdvSmoothTimeLineBarIndicator : public Advsmoothtimeline::TAdvSmoothTimeLineBarIndicator 
{
	typedef Advsmoothtimeline::TAdvSmoothTimeLineBarIndicator inherited;
	
public:
	#pragma option push -w-inl
	/* TAdvSmoothTimeLineBarIndicator.Create */ inline __fastcall virtual TDBAdvSmoothTimeLineBarIndicator(Classes::TCollection* Collection) : Advsmoothtimeline::TAdvSmoothTimeLineBarIndicator(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothTimeLineBarIndicator.Destroy */ inline __fastcall virtual ~TDBAdvSmoothTimeLineBarIndicator(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBAdvSmoothTimeLineBarSection;
class PASCALIMPLEMENTATION TDBAdvSmoothTimeLineBarSection : public Advsmoothtimeline::TAdvSmoothTimeLineBarSection 
{
	typedef Advsmoothtimeline::TAdvSmoothTimeLineBarSection inherited;
	
public:
	#pragma option push -w-inl
	/* TAdvSmoothTimeLineBarSection.Create */ inline __fastcall virtual TDBAdvSmoothTimeLineBarSection(Classes::TCollection* Collection) : Advsmoothtimeline::TAdvSmoothTimeLineBarSection(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TAdvSmoothTimeLineBarSection.Destroy */ inline __fastcall virtual ~TDBAdvSmoothTimeLineBarSection(void) { }
	#pragma option pop
	
};


class DELPHICLASS TDBAdvSmoothTimeLineDataBinding;
class DELPHICLASS TDBAdvSmoothTimeLine;
class DELPHICLASS TDBAdvSmoothTimeLineDataLink;
class PASCALIMPLEMENTATION TDBAdvSmoothTimeLineDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TDBAdvSmoothTimeLine* FTimeLine;
	bool FEditChange;
	bool FEditUpdate;
	bool FLoading;
	
protected:
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall EditingChanged(void);
	virtual void __fastcall LayoutChanged(void);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	virtual void __fastcall UpdateData(void);
	
public:
	__fastcall TDBAdvSmoothTimeLineDataLink(TDBAdvSmoothTimeLine* ATimeLine);
	__fastcall virtual ~TDBAdvSmoothTimeLineDataLink(void);
	void __fastcall Modified(void);
	void __fastcall Reset(void);
	__property TDBAdvSmoothTimeLine* ListBox = {read=FTimeLine};
};


class PASCALIMPLEMENTATION TDBAdvSmoothTimeLine : public Advsmoothtimeline::TAdvSmoothTimeLine 
{
	typedef Advsmoothtimeline::TAdvSmoothTimeLine inherited;
	
private:
	TDBAdvSmoothTimeLineDataLink* FDataLink;
	TDBAdvSmoothTimeLineDataBinding* FDataBinding;
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataBinding(const TDBAdvSmoothTimeLineDataBinding* Value);
	void __fastcall SetDataSource(const Db::TDataSource* Value);
	void __fastcall OnDataBindingChanged(System::TObject* Sender);
	
protected:
	virtual void __fastcall DoSectionPositionChanged(System::TObject* Sender, Advsmoothtimeline::TAdvSmoothTimeLineBarSection* section, System::TDateTime StartTime, System::TDateTime EndTime);
	virtual void __fastcall DoIndicatorPositionChanged(System::TObject* Sender, Advsmoothtimeline::TAdvSmoothTimeLineBarIndicator* indicator, System::TDateTime Position);
	virtual void __fastcall DoIndicatorDown(System::TObject* Sender, Advsmoothtimeline::TAdvSmoothTimeLineBarIndicator* indicator);
	virtual void __fastcall DoSectionDown(System::TObject* Sender, Advsmoothtimeline::TAdvSmoothTimeLineBarSection* section);
	
public:
	__fastcall virtual TDBAdvSmoothTimeLine(Classes::TComponent* AOwner);
	__fastcall virtual ~TDBAdvSmoothTimeLine(void);
	void __fastcall LoadData(void);
	bool __fastcall CheckDataSet(void);
	
__published:
	__property TDBAdvSmoothTimeLineDataBinding* DataBinding = {read=FDataBinding, write=SetDataBinding};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TDBAdvSmoothTimeLine(HWND ParentWindow) : Advsmoothtimeline::TAdvSmoothTimeLine(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TDBAdvSmoothTimeLineDataBinding : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TDBAdvSmoothTimeLine* FOwner;
	Classes::TNotifyEvent FOnChange;
	AnsiString FIndicatorPicture;
	AnsiString FSectionFixedSize;
	AnsiString FSectionEndTime;
	AnsiString FSectionCaption;
	AnsiString FIndicatorShape;
	AnsiString FSectionFixedPosition;
	AnsiString FIndicatorTime;
	AnsiString FSectionHint;
	AnsiString FIndicatorFixed;
	AnsiString FSectionStartTime;
	AnsiString FIndicatorAnnotation;
	AnsiString FKey;
	AnsiString FSectionColor;
	AnsiString FIndicatorColor;
	AnsiString FIndicatorAnnotationColor;
	AnsiString FIndicatorAnnotationPosition;
	AnsiString FSectionColorTo;
	AnsiString FIndicatorColorTo;
	AnsiString FIndicatorAnnotationColorTo;
	AnsiString FSectionColorMirror;
	AnsiString FSectionColorMirrorTo;
	AnsiString FIndicatorAnnotationTextColor;
	AnsiString FIndicatorAnnotationImageIndex;
	TDBAdvSmoothTimeLine* __fastcall GetDBTimeLine(void);
	void __fastcall SetIndicatorAnnotation(const AnsiString Value);
	void __fastcall SetIndicatorFixed(const AnsiString Value);
	void __fastcall SetIndicatorPicture(const AnsiString Value);
	void __fastcall SetIndicatorShape(const AnsiString Value);
	void __fastcall SetIndicatorTime(const AnsiString Value);
	void __fastcall SetSectionCaption(const AnsiString Value);
	void __fastcall SetSectionEndTime(const AnsiString Value);
	void __fastcall SetSectionFixedPosition(const AnsiString Value);
	void __fastcall SetSectionFixedSize(const AnsiString Value);
	void __fastcall SetSectionHint(const AnsiString Value);
	void __fastcall SetSectionStartTime(const AnsiString Value);
	void __fastcall SetKey(const AnsiString Value);
	void __fastcall SetIndicatorColor(const AnsiString Value);
	void __fastcall SetSectionColor(const AnsiString Value);
	void __fastcall SetIndicatorAnnotationColor(const AnsiString Value);
	void __fastcall SetIndicatorAnnotationPosition(const AnsiString Value);
	void __fastcall SetIndicatorColorTo(const AnsiString Value);
	void __fastcall SetSectionColorMirror(const AnsiString Value);
	void __fastcall SetSectionColorMirrorTo(const AnsiString Value);
	void __fastcall SetSectionColorTo(const AnsiString Value);
	void __fastcall SetIndicatorAnnotationTextColor(const AnsiString Value);
	void __fastcall SetIndicatorAnnotationImageIndex(const AnsiString Value);
	
protected:
	void __fastcall Changed(void);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
public:
	__fastcall TDBAdvSmoothTimeLineDataBinding(TDBAdvSmoothTimeLine* AOwner);
	__fastcall virtual ~TDBAdvSmoothTimeLineDataBinding(void);
	__property TDBAdvSmoothTimeLine* DBAdvSmoothTimeLine = {read=GetDBTimeLine};
	
__published:
	__property AnsiString Key = {read=FKey, write=SetKey};
	__property AnsiString IndicatorTime = {read=FIndicatorTime, write=SetIndicatorTime};
	__property AnsiString IndicatorColor = {read=FIndicatorColor, write=SetIndicatorColor};
	__property AnsiString IndicatorColorTo = {read=FIndicatorColorTo, write=SetIndicatorColorTo};
	__property AnsiString IndicatorAnnotationColor = {read=FIndicatorAnnotationColor, write=SetIndicatorAnnotationColor};
	__property AnsiString IndicatorAnnotationPosition = {read=FIndicatorAnnotationPosition, write=SetIndicatorAnnotationPosition};
	__property AnsiString IndicatorAnnotation = {read=FIndicatorAnnotation, write=SetIndicatorAnnotation};
	__property AnsiString IndicatorAnnotationTextColor = {read=FIndicatorAnnotationTextColor, write=SetIndicatorAnnotationTextColor};
	__property AnsiString IndicatorAnnotationImageIndex = {read=FIndicatorAnnotationImageIndex, write=SetIndicatorAnnotationImageIndex};
	__property AnsiString IndicatorFixed = {read=FIndicatorFixed, write=SetIndicatorFixed};
	__property AnsiString IndicatorShape = {read=FIndicatorShape, write=SetIndicatorShape};
	__property AnsiString IndicatorPicture = {read=FIndicatorPicture, write=SetIndicatorPicture};
	__property AnsiString SectionCaption = {read=FSectionCaption, write=SetSectionCaption};
	__property AnsiString SectionStartTime = {read=FSectionStartTime, write=SetSectionStartTime};
	__property AnsiString SectionEndTime = {read=FSectionEndTime, write=SetSectionEndTime};
	__property AnsiString SectionFixedPosition = {read=FSectionFixedPosition, write=SetSectionFixedPosition};
	__property AnsiString SectionFixedSize = {read=FSectionFixedSize, write=SetSectionFixedSize};
	__property AnsiString SectionHint = {read=FSectionHint, write=SetSectionHint};
	__property AnsiString SectionColor = {read=FSectionColor, write=SetSectionColor};
	__property AnsiString SectionColorTo = {read=FSectionColorTo, write=SetSectionColorTo};
	__property AnsiString SectionColorMirror = {read=FSectionColorMirror, write=SetSectionColorMirror};
	__property AnsiString SectionColorMirrorTo = {read=FSectionColorMirrorTo, write=SetSectionColorMirrorTo};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Dbadvsmoothtimeline */
using namespace Dbadvsmoothtimeline;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Dbadvsmoothtimeline
