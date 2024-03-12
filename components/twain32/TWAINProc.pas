// $HDR$
//----------------------------------------------------------------------------//
// MCM DESIGN                                                                 //  
//                                                                            //  
// For further information / comments, visit our WEB site at                  //  
//   www.mcm-design.com                                                       //  
// or e-mail to                                                               //  
//   CustomerCare@mcm-design.dk                                               //  
//----------------------------------------------------------------------------//
//
// $Log:  68827: TWAINProc.pas 
{
{   Rev 1.0    10/02/2011 15:02:16  Kacper
{ init
}
//
//   Rev 1.0.1.0    04-12-2001 17:06:42  mcm    Version: DT 2.0
// Release Edition

//
//   Rev 1.0    04-12-2001 16:49:10  mcm    Version: DT 2.0

unit twainproc;

interface

uses twain;

//------------------------------------------------------------------------------
// Entry Points
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Function: DSM_Entry, the only entry point into the Data Source Manager.
//
// Parameters:
// pOrigin Identifies the source module of the message. This could
//          identify an Application, a Source, or the Source Manager.
//
// pDest   Identifies the destination module for the message.
//         This could identify an application or a data source.
//         If this is NULL, the message goes to the Source Manager.
//
// DG      The Data Group.
//         Example: DG_IMAGE.
//
// DAT     The Data Attribute Type.
//         Example: DAT_IMAGEMEMXFER.
//
// MSG     The message.  Messages are interpreted by the destination module
//         with respect to the Data Group and the Data Attribute Type.
//         Example: MSG_GET.
// pData   A pointer to the data structure or variable identified
//         by the Data Attribute Type.
//
//         Example: (TW_MEMREF)&ImageMemXfer
//                  where ImageMemXfer is a TW_IMAGEMEMXFER structure.
//
// Returns:
// ReturnCode
//         Example: TWRC_SUCCESS.
//
//------------------------------------------------------------------------------

type
  TDSM_Entry_Proc = function(pOrigin : pTW_IDENTITY;
                             pDest   : pTW_IDENTITY;
                             DG      : TW_UINT32;
                             DAT     : TW_UINT16;
                             MSG     : TW_UINT16;
                             pData   : TW_MEMREF) : TW_UINT16; far stdcall;

  pDSM_Entry_Proc = ^TDSM_Entry_Proc;


//------------------------------------------------------------------------------
// Function: DS_Entry, the entry point provided by a Data Source.
//
// Parameters:
// pOrigin Identifies the source module of the message. This could
//         identify an application or the Data Source Manager.
//
// DG      The Data Group.
//         Example: DG_IMAGE.
//
// DAT     The Data Attribute Type.
//         Example: DAT_IMAGEMEMXFER.
//
// MSG     The message.  Messages are interpreted by the data source
//         with respect to the Data Group and the Data Attribute Type.
//         Example: MSG_GET.
//
// pData   A pointer to the data structure or variable identified
//         by the Data Attribute Type.
//         Example: (TW_MEMREF)&ImageMemXfer
//                   where ImageMemXfer is a TW_IMAGEMEMXFER structure.
//
// Returns:
// ReturnCode
//         Example: TWRC_SUCCESS.
//
// Note:
// The DSPROC type is only used by an application when it calls
// a Data Source directly, bypassing the Data Source Manager.
//
//------------------------------------------------------------------------------

type
  TDS_Entry_Proc = function(pOrigin : pTW_IDENTITY;
                            DG      : TW_UINT32;
                            DAT     : TW_UINT16;
                            MSG     : TW_UINT16;
                            pData   : TW_MEMREF) : TW_UINT16; far stdcall;

  pDS_Entry_Proc = ^TDS_Entry_Proc;

implementation // TWAIN
  {$IFDEF DEMO}
    uses Dialogs, Windows;
    begin
    if ((FindWindow('TApplication', 'Delphi 2') = 0) and
        (FindWindow('TApplication', 'Delphi 3') = 0) and
        (FindWindow('TApplication', 'Delphi 4') = 0) and
        (FindWindow('TApplication', 'Delphi 5') = 0) and
        (FindWindow('TApplication', 'Delphi 6') = 0) and
        (FindWindow('TApplication', 'C++Builder') = 0) and
        (FindWindow('TApplication', 'C++Builder 4') = 0) and
        (FindWindow('TApplication', 'C++Builder 5') = 0)) or
       (FindWindow('TAlignPalette', nil) = 0) or
       (FindWindow('TAppBuilder', nil) = 0)
    then begin
         ShowMessage('mcmTWAIN DEMO VERSION,'                       + chr($0D) +
                     'TWAIN Toolkit for C++Builder/Delphi.'         + chr($0D) +
                     'To obtain a fully licensed version contact: ' + chr($0D) +
                                                                      chr($0D) +
                     'MCM DESIGN'                                   + chr($0D) +
                     'Sandholmgaardsvej 38'                         + chr($0D) +
                     '3460 Birkeroed'                               + chr($0D) +
                     'Denmark'                                      + chr($0D) +
                     'CustomerCare@mcm-design.dk / www.mcm-design.com');
    end;
  {$ENDIF}
end.
