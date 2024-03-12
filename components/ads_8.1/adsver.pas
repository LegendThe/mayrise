// Copyright (c) 2003-2006 Extended Systems, Inc.  ALL RIGHTS RESERVED.
//
// This source code can be used, modified, or copied by the licensee as long as
// the modifications (or the new binary resulting from a copy or modification of
// this source code) are used with Extended Systems' products. The source code
// is not redistributable as source code, but is redistributable as compiled
// and linked binary code. If the source code is used, modified, or copied by
// the licensee, Extended Systems Inc. reserves the right to receive from the
// licensee, upon request, at no cost to Extended Systems Inc., the modifications.
//
// Extended Systems Inc. does not warrant that the operation of this software
// will meet your requirements or that the operation of the software will be
// uninterrupted, be error free, or that defects in software will be corrected.
// This software is provided "AS IS" without warranty of any kind. The entire
// risk as to the quality and performance of this software is with the purchaser.
// If this software proves defective or inadequate, purchaser assumes the entire
// cost of servicing or repair. No oral or written information or advice given
// by an Extended Systems Inc. representative shall create a warranty or in any
// way increase the scope of this warranty.
{*******************************************************************************
* Source File  : adsver.pas
* Description  : This contains version information for pascal Advantage projects
* Notes        :
*******************************************************************************}
unit adsver;

interface

const
   { This contant value must be the same as the one in ADSVER.H }
   ADS_LIBRARY_VERSION = $00260000;

   { Don't change this }
   ESIAX_LENGTH = 9;

   {$ifdef ADS_WIN9X}
      gpcIdAxsVer = 'EsIAx!@# 8.10';

      {*
       * These next two constants can be any string (IOW, the version string
       * can contain words like "Beta") as they are just going into the Win9x
       * config utility thing's About box
       *}
      ADS_WIN9X_VERSION_STR = '8.10';
      ADS_WIN9X_COPYRIGHT   = '1999 - 2007';
   {$else}
      gpcIdAxsVer = 'EsIAx!@# 8.10';
   {$endif}

   ADS_MAJOR_VER = '8';

implementation

end.
