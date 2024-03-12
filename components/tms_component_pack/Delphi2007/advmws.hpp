// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advmws.pas' rev: 11.00

#ifndef AdvmwsHPP
#define AdvmwsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Advmemo.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advmws
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAdvHTMLMemoStyler;
class PASCALIMPLEMENTATION TAdvHTMLMemoStyler : public Advmemo::TAdvCustomMemoStyler 
{
	typedef Advmemo::TAdvCustomMemoStyler inherited;
	
private:
	AnsiString FVersion;
	
public:
	__fastcall virtual TAdvHTMLMemoStyler(Classes::TComponent* AOwner);
	
__published:
	__property LineComment ;
	__property MultiCommentLeft ;
	__property MultiCommentRight ;
	__property CommentStyle ;
	__property NumberStyle ;
	__property HighlightStyle ;
	__property AllStyles ;
	__property AnsiString Version = {read=FVersion};
	__property Description ;
	__property Filter ;
	__property DefaultExtension ;
	__property StylerName ;
	__property Extensions ;
public:
	#pragma option push -w-inl
	/* TAdvCustomMemoStyler.Destroy */ inline __fastcall virtual ~TAdvHTMLMemoStyler(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvJSMemoStyler;
class PASCALIMPLEMENTATION TAdvJSMemoStyler : public Advmemo::TAdvCustomMemoStyler 
{
	typedef Advmemo::TAdvCustomMemoStyler inherited;
	
private:
	AnsiString FVersion;
	
public:
	__fastcall virtual TAdvJSMemoStyler(Classes::TComponent* AOwner);
	
__published:
	__property BlockStart ;
	__property BlockEnd ;
	__property EscapeChar ;
	__property LineComment ;
	__property MultiCommentLeft ;
	__property MultiCommentRight ;
	__property CommentStyle ;
	__property NumberStyle ;
	__property HighlightStyle ;
	__property AllStyles ;
	__property AnsiString Version = {read=FVersion};
	__property Description ;
	__property Filter ;
	__property DefaultExtension ;
	__property StylerName ;
	__property Extensions ;
public:
	#pragma option push -w-inl
	/* TAdvCustomMemoStyler.Destroy */ inline __fastcall virtual ~TAdvJSMemoStyler(void) { }
	#pragma option pop
	
};


class DELPHICLASS TAdvWebMemoStyler;
class PASCALIMPLEMENTATION TAdvWebMemoStyler : public Advmemo::TAdvCustomMemoStyler 
{
	typedef Advmemo::TAdvCustomMemoStyler inherited;
	
private:
	AnsiString FVersion;
	
public:
	__fastcall virtual TAdvWebMemoStyler(Classes::TComponent* AOwner);
	
__published:
	__property LineComment ;
	__property MultiCommentLeft ;
	__property MultiCommentRight ;
	__property CommentStyle ;
	__property NumberStyle ;
	__property HighlightStyle ;
	__property AllStyles ;
	__property AnsiString Version = {read=FVersion};
	__property Description ;
	__property Filter ;
	__property DefaultExtension ;
	__property StylerName ;
	__property Extensions ;
public:
	#pragma option push -w-inl
	/* TAdvCustomMemoStyler.Destroy */ inline __fastcall virtual ~TAdvWebMemoStyler(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
#define AllDelimiters " ,;:.()[]=-*/^%<>#"
#define AllHTMLKeyWordsDefaults "\"HEAD\",\"META\",\"BODY\",\"HTML\",\"TITLE\",\"COMMENT\""
#define AllHTMLKeyWordsStandard "\"A\",\"B\",\"I\",\"U\",\"P\",\"BASE\",\"BLINK\",\"LINK\","\
	"\"FONT\",\"STRONG\",\"IMG\",\"BASEFONT\",\"BGSOUND\",\"DD\""\
	",\"DEL\",\"DFN\",\"DIR\",\"DIV\",\"DL\",\"DT\",\"COL\",\"B"\
	"R\",\"HR\",\"COLGROUP\",\"TABLE\",\"MULTICOL\",\"TBODY\",\""\
	"TD\",\"TEXTAREA\",\"TFOOT\",\"TH\",\"THEAD\",\"TR\",\"TT\""\
	",\"CAPTION\",\"CENTER\",\"CITE\",\"CODE\",\"BLOCKQUOTE\",\""\
	"FORM\",\"FRAME\",\"IFRAME\",\"ILAYER\",\"FRAMESET\",\"BUTT"\
	"ON\",\"LABEL\",\"LAYER\",\"OPTION\""
#define AllJSKeyWords "\"SCRIPT\",\"OBJECT\",\"FOR\",\"IF\",\"THEN\",\"THIS\",\"D"\
	"O\",\"WHILE\",\"BREAK\",\"{\",\"}\",\"(\",\")\",\"SWITCH\""\
	",\"ELSE\",\"FUNCTION\",\"WINDOW\",\"DOCUMENT\",\";\",\"RET"\
	"URN\",\"STYLE\",\"VAR\",\"WINDOW\",\"LOCATION\""
#define AllJSFunctions "\"alert\",\"confirm\",\"prompt\",\"indexOf\",\"select\",\""\
	"write\",\"focus\""

}	/* namespace Advmws */
using namespace Advmws;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advmws
