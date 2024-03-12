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
// $Log:  15880: mcmTWAINDS.dpr 
//
//   Rev 1.0    04-12-2001 16:49:06  mcm    Version: DT 2.0

Library mcmTWAINDS;

//------------------------------------------------------------------------------
// This Library is the "program file".
//
// Compile this file, and rename it to twdsrcd.ds
// Then place it in the directory
//
//   C:\WINDOWS\TWAIN_32\
//
// or in a sub-directory,
//
//   C:\WINDOWS\TWAIN_32\MY_DIR\
//
// which makes it more clear which files belong to which TWAIN driver.
//
// Note: It's not possible to add a Title to this project in
//         Project|Options|Application
//       because the Application.CreateForm is missing.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// RESOURCE FILE
//
// To create the twdsrc32.res file convert the twdsrc.rc file with brcc32.exe
// DOS program shiped with Delphi 2.0.
// * example
//     c:\program files\delphi 2.0\bin\brcc32.exe -r twdsrc32.rc
//
//   you might have to write
//     c:\program files\delphi~1.0\bin\brcc32.exe -r twdsrc32.rc
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// DEBUGGING
//
// Set Conditional Defines to TWNDEBUG, in Project, Options.
// This will make the TWAIN source generate a new LOG file each time the source
// is started.
// The LOG file contains information about function calls in twd_port.pas, incl
// message
//------------------------------------------------------------------------------

uses
  Windows,
  uDSUserInterface in 'uDSUserInterface.PAS' {FormSource},
  Usabout in 'USABOUT.PAS' {FormAbout},
  mcmTWAINDSEntry in 'mcmTWAINDSEntry.pas',
  mcmTWAINDSLayer in 'mcmTWAINDSLayer.pas',
  uTwnDlgAppInfo in 'uTwnDlgAppInfo.pas' {FormAppInfo},
  uTwnDlgSimEvents in 'uTwnDlgSimEvents.pas' {FormEvents},
  mcmTWAINLog in 'mcmTWAINLog.pas',
  uTwnDlgHandle in 'uTwnDlgHandle.pas';

{$E ds}

{$R DRIVER32.RES}

{$R *.RES}

exports DS_Entry index 1;

var SaveExit : Pointer;

procedure LibExit;
begin
  // library exit code.
  ExitProc := SaveExit;  // restore exit procedure chain
end; { End LibExit.                                                            }


begin
  // library initialization code
  SaveExit := ExitProc;  // save exit procedure chain
  ExitProc := @LibExit;  // install LibExit exit procedure

  DLLProc := @mcmTWAINDSEntry.LibMain;
  mcmTWAINDSEntry.LibMain(DLL_PROCESS_ATTACH);
end.


