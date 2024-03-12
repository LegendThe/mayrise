// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Fccustomdraw.pas' rev: 11.00

#ifndef FccustomdrawHPP
#define FccustomdrawHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccustomdraw
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct TNMCustomDraw
{
	
public:
	#pragma pack(push,1)
	tagNMHDR hdr;
	#pragma pack(pop)
	unsigned dwDrawStage;
	HDC dc;
	#pragma pack(push,1)
	Types::TRect rc;
	#pragma pack(pop)
	unsigned dwItemSpec;
	unsigned uItemState;
	int lItemlParam;
} ;
#pragma pack(pop)

typedef TNMCustomDraw *PNMCustomDraw;

#pragma pack(push,1)
struct TNMLVCustomDraw
{
	
public:
	#pragma pack(push,1)
	TNMCustomDraw nmcd;
	#pragma pack(pop)
	unsigned clrText;
	unsigned clrTextBk;
	int iSubItem;
} ;
#pragma pack(pop)

typedef TNMLVCustomDraw *PNMLVCustomDraw;

#pragma pack(push,1)
struct TNMTVCustomDraw
{
	
public:
	#pragma pack(push,1)
	TNMCustomDraw nmcd;
	#pragma pack(pop)
	unsigned clrText;
	unsigned clrTextBk;
	int iLevel;
} ;
#pragma pack(pop)

typedef TNMTVCustomDraw *PNMTVCustomDraw;

#pragma pack(push,1)
struct TNMTTCustomDraw
{
	
public:
	#pragma pack(push,1)
	TNMCustomDraw nmcd;
	#pragma pack(pop)
	unsigned uDrawFlags;
} ;
#pragma pack(pop)

typedef TNMTTCustomDraw *PNMTTCustomDraw;

#pragma pack(push,1)
struct TNMTTDispInfo
{
	
public:
	#pragma pack(push,1)
	tagNMHDR hdr;
	#pragma pack(pop)
	char *lpszText;
	char szText[80];
	unsigned hinst;
	unsigned uFlags;
	int lParam;
} ;
#pragma pack(pop)

typedef TNMTTDispInfo *PNMTTDispInfo;

#pragma pack(push,1)
struct TTVItemEx
{
	
public:
	unsigned mask;
	_TREEITEM *hItem;
	unsigned state;
	unsigned stateMask;
	char *pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	int lParam;
	int iIntegral;
} ;
#pragma pack(pop)

typedef TTVItemEx *PTVItemEx;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int wwItemStates[9];

}	/* namespace Fccustomdraw */
using namespace Fccustomdraw;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fccustomdraw
