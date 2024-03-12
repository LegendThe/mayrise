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
// $Log:  68821: mcmTWAINKernel.pas 
{
{   Rev 1.0    10/02/2011 15:02:14  Kacper
{ init
}
//
//   Rev 1.3    21-01-2002 11:56:42  mcm    Version: DT 2.0
// Release Edition

//
//   Rev 1.2    18-01-2002 15:11:56  mcm    Version: DT 2.0
// Access to all property members are through function/procedures.

//
//   Rev 1.1    11-01-2002 15:18:36  mcm    Version: DT 2.0
// Added compiler directive to exclude uses mcmTWAINLog when TWNDEBUG is not set.

//
//   Rev 1.0    04-12-2001 16:49:08  mcm    Version: DT 2.0

unit mcmTWAINKernel;

interface

uses Windows, Messages, Classes, SysUtils, Controls, Graphics, Forms,
     {$IFDEF TWNDEBUG}
     mcmTWAINLog,
     {$ENDIF}
     twain, twainproc;


const TWN_VALID_HANDLE = 32;            // Valid windows handle SB >= 32.
      WM_STARTMSGLOOP  = WM_USER + 210;
      WM_SOURCEOPENED  = WM_USER + 218; // Source was opened.
      WM_SOURCECLOSED  = WM_USER + 219; // Source was closed.

type
  TmcmTWAINKernel = class(TCustomControl)
  private
    { Private declarations }
    FIsDSMOpen      : bool;              // Flag for an Open Source Manager
    FIsDSOpen       : bool;              // Flag for an Open Source
    FIsDSEnabled    : bool;              // Flag for an Enabled Source
    FDSMDLL         : THandle;           // Handle to Source Manager
    FDSM_Entry      : TDSM_Entry_Proc;   // entry point to the Source Manager
    FState          : word;              // TWAIN transition state [1..7].
    FResult         : word;              // Result from last call to DSM/DS
    FStatus         : word;              // Status from DS on failure.
    FMsgLevel       : TTwnErrorLevel;    // Filter which messages to save.
    FLogToFile      : boolean;           // On True Save messages to C:\APPTWN.LOG
    FOnFailure      : TFailureEvent;     // Event - An error occured.
    FOnCloseSource  : TNotifyEvent;
    {$IFDEF TWNDEBUG}
    mcmTWAINLog     : TmcmTWAINLog;
    {$ENDIF}
  protected
    { Protected declarations }
    FAppWnd         : hWnd;              // Application window handle
    FAppIdentity    : TW_IDENTITY;       // Storage for App identification
    FSourceID       : TW_IDENTITY;       // Storage for DS (Source) identification
    FSourceVersion  : word;
    FAcqFlag        : TW_INT16;          // Flag for acquisition state
    FPrefFormat     : TTwnFileFmt;       // File format to use for file transfer.
    FAllFormats     : TTwnFileFmts;      // Image (file) formats supported by application.
    FFileName       : string;            // File name of stored image
    FOnAppMessage   : TMessageEvent;
    FOwnAppMessage  : TMessageEvent;
    FOnDisableMenus : TNotifyEvent;      // App should disable TWAIN menus.
    FOnEnableMenus  : TNotifyEvent;      // App that it can enable TWAIN menus.
    FOnStateChanged : TStateChanged;
    FOnXferReady    : TNotifyEvent;      // Source reports, image transfer ready.

    procedure   CloseConnection;
    function    CloseDS : TW_UINT16;
    function    CloseDSM : TW_UINT16;
    procedure   CreateDIB        (    pDibInfo      : PBitmapInfo;
                                  var pDib          : pointer;
                                  var hDib          : HBitmap);
    function    CreateFileName   (    FileName      : string;
                                      FileExt       : string) : string;
    procedure   DoOnDeviceEvent; virtual; abstract;
    function    DisableDS : TW_UINT16;
    function    DSMEntry         (    pOrigin       : pTW_IDENTITY;
                                      pDest         : pTW_IDENTITY;
                                      DG            : TW_UINT32;
                                      DAT           : TW_UINT16;
                                      MSG           : TW_UINT16;
                                      pData         : TW_MEMREF) : TW_UINT16;

    function    EnableDS         (var ShowUI        : boolean) : TW_UINT16;
    function    FileFormat2Ext   (    twnFormat     : TTwnFileFmt) : string;
    function    FileName2Format  (    FileName      : string) : TTwnFileFmt;

    function    GetIsDSMOpen : bool;
    function    GetIsDSOpen : bool;
    function    GetIsDSEnabled : bool;
    procedure   SetIsDSEnabled(Value : bool);

    function    GetDSPath        (var Path          : string) : TW_UINT16;
    function    GetDSIcon        (    Path          : string) : HBitmap;
    function    GetDSResult : word;
    function    GetDSStatus : word;
    function    GetLogToFile : boolean;
    function    GetMessageLevel : TTwnErrorLevel;
    function    GetState : word;
    function    GetStatus        (var Status        : TW_UINT16;
                                      pSourceID     : pTW_IDENTITY) : TW_UINT16;
    // function    IsSampleSourceActive : bool;

    {$IFDEF TWNDEBUG}
    // Enable code when running in "DEBUG" mode.
    // Logs TWAIN communication between application and data source.
    procedure   LogDelete;
    procedure   LogMessage       (    LogStr        : string);
    procedure   LogTriplet       (    Dest          : integer;
                                      DG            : integer;
                                      DAT           : integer;
                                      Cap           : pTW_Capability;
                                      MSG           : integer;
                                      Return        : integer;
                                      Status        : integer;
                                      Level         : TTwnErrorLevel);
    {$ENDIF}

    function    OpenDS  : TW_UINT16;
    function    OpenDSM : TW_UINT16;
    function    ProcessMessage   (    lpMsg         : PMSG) : bool;
    function    RemoveExt        (    Value         : string) : string;
    function    SelectDS  : TW_UINT16;
    function    SetDSPath        (    Path          : string) : TW_UINT16;
    procedure   SetLogToFile     (    Value         : boolean);
    procedure   SetMessageLevel  (    Value         : TTwnErrorLevel);
    procedure   SetState         (    Value         : word);
    procedure   TransferImage; virtual; abstract;
    procedure   EndAppMessage;
    procedure   OnAppMessage     (var Msg           : TMsg;
                                  var Handled       : boolean);
    procedure   StartAppMessage;

    property    IsDSMOpen : bool
      read      GetIsDSMOpen;
    property    IsDSOpen : bool
      read      GetIsDSOpen;
    property    IsDSEnabled : bool
      read      GetIsDSEnabled
      write     SetIsDSEnabled;
    property    State : word
      read      GetState
      write     SetState;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy; override;

    property    DSResult : word
      read      GetDSResult;
    property    DSStatus : word
      read      GetDSStatus;
    property    LogToFile : boolean // Save error messages to C:\APPTWN.LOG
      read      GetLogToFile
      write     SetLogToFile default False;
    property    MessageLevel : TTwnErrorLevel
      read      GetMessageLevel
      write     SetMessageLevel default ML_NONE;

    property    OnCloseSource  : TNotifyEvent
      read      FOnCloseSource
      write     FOnCloseSource;
    property    OnDisableMenus : TNotifyEvent
      read      FOnDisableMenus
      write     FOnDisableMenus;
    property    OnEnableMenus  : TNotifyEvent
      read      FOnEnableMenus
      write     FOnEnableMenus;
    property    OnFailure : TFailureEvent
      read      FOnFailure
      write     FOnFailure;
    property    OnXferReady : TNotifyEvent
      read      FOnXferReady
      write     FOnXferReady;
  published
    { Pulished declarations }
  end;

implementation

uses FileCtrl;

{$IFOPT T+} {$DEFINE TYPED_ADDRESS_ON} {$T-} {$ENDIF}
{$IFOPT X-} {$DEFINE EXTENDED_SYNTAX} {$X+} {$ENDIF}


constructor TmcmTWAINKernel.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);

  FState       := 1;
  FDSMDLL      := 0;
  FDSM_Entry   := Nil;
  FIsDSMOpen   := False;
  FIsDSOpen    := False;
  FIsDSEnabled := False;

  // Set up the information about your application which you want to pass
  // to the SM in this call.
  // Move all these text strings off to a resource fill for a real
  // application. They are here for easier readablilty for the student.
  // init to 0, but Source Manager will assign real value
  with FAppIdentity
  do begin
    Id               := 0;
    Version.MajorNum := 2;
    Version.MinorNum := 0;
    Version.Language := word(twain.TWLG_ENG);
    Version.Country  := TWCY_UNITEDKINGDOM;
    StrPCopy(Version.Info, 'MCM DESIGN, TWAIN Toolkit v ' +
                           IntToStr(Version.MajorNum) + '.' +
                           IntToStr(Version.MinorNum));
    ProtocolMajor    := TWON_PROTOCOLMAJOR;
    ProtocolMinor    := TWON_PROTOCOLMINOR;
    SupportedGroups  := DG_IMAGE or DG_CONTROL;
  end;
  lstrcpy(FAppIdentity.Manufacturer,  'MCM DESIGN');
  lstrcpy(FAppIdentity.ProductFamily, 'Image Capture');
  lstrcpy(FAppIdentity.ProductName,   'TWAIN Application');

  FAllFormats := [TWFF_BMP];
  FPrefFormat := TWFF_BMP;
  FFilename   := '';

  // Pass app particulars to glue code.
  FAppIdentity.Id := Application.Handle;
  FAppWnd         := Application.Handle;   // Get copy of app window handle

  // FOwnAppMessage - Used for testing against Application.OnMessage.
  FOnAppMessage  := Nil;
  FOwnAppMessage := OnAppMessage;
  FOnEnableMenus  := Nil;
  FOnDisableMenus := Nil;

  FLogToFile := False;
  FMsgLevel  := ML_NONE;
  {$IFDEF TWNDEBUG}
    mcmTWAINLog := TmcmTWAINLog.Create(Self);
    // Delete previous log file.
    LogDelete;
    // Create a new log file.
    LogMessage('#M Create mcmTWAIN kernel');
  {$ENDIF}
end; { End TmcmTWAINKernel.Create.                                             }


destructor TmcmTWAINKernel.Destroy;
begin
  {$IFDEF TWNDEBUG}
    LogMessage('#M Terminate mcmTWAIN kernel');
  {$ENDIF}
  CloseConnection;
  Inherited Destroy;
end; { End TmcmTWAINKernel.Destroy.                                            }


function TmcmTWAINKernel.DSMEntry(pOrigin : pTW_IDENTITY;
                                  pDest   : pTW_IDENTITY;
                                  DG      : TW_UINT32;
                                  DAT     : TW_UINT16;
                                  MSG     : TW_UINT16;
                                  pData   : TW_MEMREF) : TW_UINT16;
var CAP        : TW_UINT16;
    SaveResult : word;
begin
  FResult := TWRC_FAILURE;
  try
    if (@FDSM_Entry <> Nil)
    then FResult := FDSM_Entry(pOrigin, pDest, DG, DAT, MSG, pData)
    else ; //
  except
    FResult := TWRC_EXCEPTION;
  end;

  // Log call result.
  {$IFDEF TWNDEBUG}
    case FResult of
    TWRC_SUCCESS,
    TWRC_CANCEL,
    TWRC_XFERDONE,
    // After MSG_GETNEXT if nothing left
    TWRC_ENDOFLIST,
    TWRC_INFONOTSUPPORTED,
    TWRC_DATANOTAVAILABLE : LogTriplet(integer(pDest <> Nil), DG, DAT, pData, MSG, FResult, FStatus, ML_INFO);
    // App may get TW_STATUS for info on failure.
    TWRC_FAILURE,
    // "tried hard"; get status
    TWRC_CHECKSTATUS,
    // The source manager or source raised an exception.
    TWRC_EXCEPTION        : LogTriplet(integer(pDest <> Nil), DG, DAT, pData, MSG, FResult, FStatus, ML_ERROR);
    // Message loop.
    TWRC_DSEVENT          : if (pTW_EVENT(pData)^.TWMessage <> MSG_NULL)
                            then LogTriplet(integer(pDest <> Nil), DG, DAT, pData, MSG, FResult, FStatus, ML_INFO)
                            else LogTriplet(integer(pDest <> Nil), DG, DAT, pData, MSG, FResult, FStatus, ML_FULL);
    TWRC_NOTDSEVENT       : LogTriplet(integer(pDest <> Nil), DG, DAT, pData, MSG, FResult, FStatus, ML_FULL);
    end;
  {$ENDIF}

  // Get status from source manager / source.
  case FResult of
  TWRC_SUCCESS,
  TWRC_CANCEL,
  TWRC_DSEVENT,
  TWRC_NOTDSEVENT,
  TWRC_XFERDONE,
  TWRC_ENDOFLIST   : FStatus := TWCC_SUCCESS; // After MSG_GETNEXT if nothing left
  TWRC_EXCEPTION   : begin
                       // Temporaryly save real result value.
                       SaveResult := FResult;
                       // The source manager or source raised an exception.
                       // If call to obtain stauts fails we better colse the DS.
                       if (DAT <> DAT_STATUS) and (GetStatus(FStatus, @FSourceID) <> TWRC_SUCCESS)
                       then CloseConnection;
                       // Restore real result value.
                       FResult := SaveResult;
                     end;
  else begin // Other case results.
       try
         // Temporaryly save real result value.
         SaveResult := FResult;
         if (DAT <> DAT_STATUS)
         then GetStatus(FStatus, @FSourceID);
         // Restore real result value.
         FResult := SaveResult;
       except
         // If an exception is raised when getting status from data source what
         // should we do: Close DS & DSM.
         On E:Exception
         do begin
            {$IFDEF TWNDEBUG}
              LogMessage('#E ' + E.Message);
            {$ENDIF}
         end;
       end;
  end;
  end; // End case

  // Report error to owner.
  if (FStatus <> TWRC_SUCCESS)
  then begin
       // Raise event with call result, status.
       if Assigned(FOnFailure)
       then begin
            // Extract Capability from pData.
            if (DAT = DAT_CAPABILITY) and (pData <> Nil)
            then CAP := pTW_Capability(pData)^.Cap
            else CAP := 0;
            FOnFailure(Self, DG, DAT, CAP, MSG, FResult, FStatus);
       end;
  end;
  Result := FResult;
end; { End TmcmTWAINKernel.DSMEntry.                                           }


function TmcmTWAINKernel.GetStatus(var Status    : TW_UINT16;
                                       pSourceID : pTW_IDENTITY) : TW_UINT16;
// Parameters:
// Status           -
// Identity         - if Identity = FSourceID the status of the Data Source is
//                    requested (State 4 - 7).
//                    If Identity = Nil the status of the Data Source Manager is
//                    requested (State 2 - 7).
var twStatus : TW_STATUS;
begin
  Status := TWCC_BUMMER;
  // Determine details of failure from DSM.
  Result := DSMEntry(@FAppIdentity, pSourceID,
                     DG_CONTROL,
                     DAT_STATUS,
                     MSG_GET,
                     TW_MEMREF(@twStatus));
  if (Result = TWRC_SUCCESS)
  then Status := twStatus.ConditionCode;
end; { End TmcmTWAINKernel.GetStatus.                                          }


function TmcmTWAINKernel.GetIsDSMOpen : bool;
begin
  Result := FIsDSMOpen;
end; { End TmcmTWAINKernel.GetIsDSMOpen.                                       }


function TmcmTWAINKernel.GetIsDSOpen : bool;
begin
  Result := FIsDSOpen;
end; { End TmcmTWAINKernel.GetIsDSOpen.                                        }


function TmcmTWAINKernel.GetIsDSEnabled : bool;
begin
  Result := FIsDSEnabled;
end; { End TmcmTWAINKernel.GetIsDSEnabled.                                     }


procedure TmcmTWAINKernel.SetIsDSEnabled(Value : bool);
begin
  FIsDSEnabled := Value;
end; { End TmcmTWAINKernel.SetIsDSEnabled.                                     }


function TmcmTWAINKernel.GetState : word;
begin
  Result := FState;
end; { End TmcmTWAINKernel.GetState.                                           }


procedure TmcmTWAINKernel.SetState(Value : word);
begin
  FState := Value;
  if Assigned(FOnStateChanged)
  then FOnStateChanged(Self, FState);
end; { End TmcmTWAINKernel.SetState.                                           }


function TmcmTWAINKernel.GetDSResult : word;
begin
  Result := FResult;
end; { End TmcmTWAINKernel.GetDSResult.                                        }


function TmcmTWAINKernel.GetDSStatus : word;
begin
  Result := FStatus;
end; { End TmcmTWAINKernel.GetDSStatus.                                        }


function TmcmTWAINKernel.GetLogToFile : boolean;
begin
  Result := FLogToFile;
end; { End TmcmTWAINKernel.GetLogToFile.                                       }


procedure TmcmTWAINKernel.SetLogToFile(Value : boolean);
begin
  FLogToFile := Value;
end; { End TmcmTWAINKernel.SetLogToFile.                                       }


function TmcmTWAINKernel.GetMessageLevel : TTwnErrorLevel;
begin
  Result := FMsgLevel;
end; { End TmcmTWAINKernel.GetMessageLevel.                                    }


procedure TmcmTWAINKernel.SetMessageLevel(Value : TTwnErrorLevel);
begin
  FMsgLevel := Value;
end; { End TmcmTWAINKernel.SetMessageLevel.                                    }


(*
function TmcmTWAINKernel.IsSampleSourceActive : bool;
//------------------------------------------------------------------------------
// IsSampleSourceActive - Returns True if twacker is using the sample
// source.  Checks the WIN.INI file for the default source.
//------------------------------------------------------------------------------
var {$IFDEF VER70}
      Result : bool;
    {$ENDIF}
    Winini   : array[0..512] of char;
    Source   : array[0..255] of char;
begin
  GetWindowsDirectory(Winini, SizeOf(Winini));
  lstrcat(Winini,'\win.ini');
  GetPrivateProfileString('TWAIN', 'Default Source', '',
                          Source, SizeOf(Source), Winini);
  StrUpper(source);
  if ((StrPos(source, 'TWSRC_16.DS') <> Nil) or
      (StrPos(source, 'TWSRC_32.DS') <> Nil))
  then Result := True
  else Result := False;
end; { End TmcmTWAINKernel.IsSampleSourceActive.                               }
*)

function TmcmTWAINKernel.ProcessMessage(lpMsg : PMSG) : bool;
//------------------------------------------------------------------------------
// FUNCTION: ProcessMessage
//
// ARGS:    lpMsg  Pointer to Windows msg retrieved by GetMessage
//          hWnd   Application's main window handle
//
// RETURNS: True  if application should process message as usual
//          False if application should skip processing of this message
//
// NOTES:   1). be sure both Source Manager and Source are open
//          2). two way message traffic:
//              - relay windows messages down to Source's modeless dialog
//              - retrieve TWAIN messages from the Source
//
// COMMENT: ProcessSourceMessage is designed for applications that can only
// have one Source open at a time.  If you wish your application to have more
// than one Source open at a time please consult the TWAIN ToolKit for
// event handling instructions.
//------------------------------------------------------------------------------
var twRC    : TW_UINT16;
    twEvent : TW_EVENT;
begin
  twRC := TWRC_NOTDSEVENT;
  // Only ask Source Manager to process event if there is a Source connected.
  if (IsDSMOpen and IsDSOpen)
  then begin
       // A Source provides a modeless dialog box as its user interface.
       // The following call relays Windows messages down to the Source's
       // UI that were intended for its dialog box.  It also retrieves TWAIN
       // messages sent from the Source to our Application.
       twEvent.pEvent := TW_MEMREF(lpMsg);
       twRC := DSMEntry(@FAppIdentity,
                        @FSourceID,
                        DG_CONTROL,
                        DAT_EVENT,
                        MSG_PROCESSEVENT,
                        TW_MEMREF(@twEvent));
       if (twRC <> TWRC_EXCEPTION)
       then begin
            case twEvent.TWMessage of
            MSG_XFERREADY   : begin
                                // If AcqFlag > 0 then we are in state 5.
                                State := 6;
                                if (FAcqFlag > TWFG_NONE)
                                then begin
                                     if Assigned(FOnXferReady)
                                     then FOnXferReady(Self);
                                     TransferImage;
                                end
                                else begin
                                     // TWProcessMessage, Received while not in state 5
                                end;
                               end;
            MSG_CLOSEDSREQ  : begin // Disable, CloseDS, CloseDSM.
                                CloseConnection;
                                if Assigned(FOnCloseSource)
                                then FOnCloseSource(Self);
                              end;
            MSG_CLOSEDSOK   : begin // Data source closed correctly.
                              end;
            MSG_DEVICEEVENT : begin // Device event from data source.
                                DoOnDeviceEvent;
                              end;
            MSG_NULL        : begin // No message from the Source to the App.
                              end;
            else              begin // Possible new message.
                              end;
            end; // End of Message switch.
       end;
  end; // end of if DS and DSM Open.

  if Not(IsDSOpen)
  then begin
       // End message loop.
       EndAppMessage;

       // Notify app that it's time to re-enable TWAIN menus.
       if Assigned(FOnEnableMenus)
       then begin
            if (GetParentForm(Self) <> Nil)
            then FOnEnableMenus(Self);
       end;
  end;

  // Tell the caller what happened.
  // Return True if message was for data source.
  Result := (twRC = TWRC_DSEVENT);
end; { End TmcmTWAINKernel.ProcessMessage.                                     }


procedure TmcmTWAINKernel.OnAppMessage(var Msg : TMsg; var Handled : boolean);
begin
  if IsDSOpen
  then begin
     // Pass message to Data Source.
     if (ProcessMessage(PMSG(@Msg)))
     then Handled := True; // Is a Data Source message.
  end;

  // Call chained message handler if message was not a DS message.
  if Not(Handled)
  then if Assigned(FOnAppMessage)
       then FOnAppMessage(Msg, Handled);
end; { End TmcmTWAINKernel.OnAppMessage.                                       }


procedure TmcmTWAINKernel.StartAppMessage;
begin
  // Hook into applications message queue.
  if (@Application.OnMessage <> @FOwnAppMessage)
  then begin
       {$IFDEF TWNDEBUG}
         LogMessage('#M Start TWAIN message pump');
         if Assigned(Application.OnMessage)
         then LogMessage('#M Application uses Application.OnMessage');
       {$ENDIF}
       FOnAppMessage := Application.OnMessage;
       Application.OnMessage := OnAppMessage;
  end;
end; { End TmcmTWAINKernel.StartAppMessage.                                    }


procedure TmcmTWAINKernel.EndAppMessage;
begin
  // Un-hook applications message queue and restore old message handler.
  if (@Application.OnMessage = @FOwnAppMessage)
  then begin
       Application.OnMessage := FOnAppMessage;
       FOnAppMessage := Nil;
       {$IFDEF TWNDEBUG}
         LogMessage('#M End TWAIN message pump');
       {$ENDIF}
  end;
end; { End TmcmTWAINKernel.EndAppMessage.                                      }


function TmcmTWAINKernel.OpenDSM : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: OpenDSM
//
// ARGS:    none
//
// RETURNS: current state of the Source Manager
//
// NOTES:     1). be sure SM is not already open
//            2). explicitly load the .DLL for the Source Manager
//            3). call Source Manager to:
//                - opens/loads the SM
//                - pass the handle to the app's window to the SM
//                - get the SM assigned AppIdentity.id field
//
//------------------------------------------------------------------------------
const WINDIRPATHSIZE = 160;
var   twRC           : TW_UINT16;
   {$IFNDEF WIN32}
      OpenFiles      : TOFStruct;
   {$ENDIF}
      WinDir         : array[0..WINDIRPATHSIZE] of char;
      DSMName        : TW_STR32;
begin
  twRC := TWRC_FAILURE;
  {$IFDEF TWNDEBUG}
    if IsDSMOpen
    then LogMessage('#M OpenDSM, DSM already open');
  {$ENDIF}

  FAppWnd := Parent.Handle;

  // Only open SM if currently closed
  if Not(IsDSMOpen)
  then begin
       // Open the SM, Refer explicitly to the library so we can post a nice
       // message to the the user in place of the "Insert TWAIN.DLL in drive
       // A:" posted by Windows if the SM is not found.
       GetWindowsDirectory(WinDir, WINDIRPATHSIZE);
       {$IFDEF WIN32}
         lstrcpy(DSMName, 'TWAIN_32.DLL');
       {$ELSE}
         lstrcpy(DSMName, 'TWAIN.DLL');
       {$ENDIF}
       if (WinDir[StrLen(WinDir)-1] <> '\')
       then lstrcat(WinDir, '\');
       lstrcat(WinDir, DSMName);

       if FileExists(WinDir)
       then begin
            FDSMDLL := LoadLibrary(WinDir);
            if (FDSMDLL >= TWN_VALID_HANDLE) // Note: VALID_HANDLE = 32
            then begin
                 try
                   FDSM_Entry := TDSM_Entry_Proc(GetProcAddress(FDSMDLL, MAKEINTRESOURCE(1)));
                 except
                   FDSM_Entry := Nil;
                 end;

                 if (@FDSM_Entry <> Nil)
                 then begin
                      State := 2;
                      // This call performs four important functions:
                      // - opens/loads the SM
                      // - passes the handle to the app's window to the SM
                      // - returns the SM assigned AppIdentity.id field
                      // - be sure to test the return code for SUCCESSful open of SM
                      twRC := DSMEntry(@FAppIdentity,
                                       Nil,
                                       DG_CONTROL,
                                       DAT_PARENT,
                                       MSG_OPENDSM,
                                       TW_MEMREF(@FAppWnd));
                      case twRC of
                      // Needed for house keeping.  Do single open and do not
                      // close SM which is not already open ....
                      TWRC_SUCCESS : begin
                                       FIsDSMOpen := True;
                                       State      := 3;
                                     end;
                      // Trouble opening the SM, inform the user
                      else FIsDSMOpen := False;
                      end;
                 end
                 else begin // Could not obtain address to DSM_ENTRY.
                      {$IFDEF TWNDEBUG}
                        if (MessageLevel >= ML_ERROR)
                        then LogMessage('#M Could not obtain address to DSM_ENTRY.');
                      {$ENDIF}
                 end;
            end
            else begin // Could not load library.
                 {$IFDEF TWNDEBUG}
                   if (MessageLevel >= ML_ERROR)
                   then LogMessage('#M Could not load library.');
                 {$ENDIF}
            end;
       end
       else begin
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_ERROR)
              then LogMessage('#M TWAIN DLL files may not exist.');
            {$ENDIF}
       end;
  end;

  // Let the caller know what happened.
  Result := twRC;
end; { End TmcmTWAINKernel.OpenDSM.                                            }


function TmcmTWAINKernel.CloseDSM : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: CloseDSM
//
// ARGS:    none
//
// RETURNS: current state of Source Manager
//
// NOTES:    1). be sure SM is already open
//           2). call Source Manager to:
//               - request closure of the Source identified by AppIdentity info
//
//------------------------------------------------------------------------------
var twRC : TW_UINT16;
begin
  twRC := TWRC_FAILURE;
  if IsDSOpen
  then begin
       // A Source is Currently Open", "Cannot Close Source Manager.
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M CloseDSM, A Source is Currently Open. Cannot Close Source Manager.');
       {$ENDIF}
  end
  else begin
       // Only close something which is already open
       if IsDSMOpen
       then begin
            // This call performs one important function:
            // - tells the SM which application, AppIdentity.id, is requesting
            //   SM to close.
            // - be sure to test return code, failure indicates SM did not close !!
            twRC := DSMEntry(@FAppIdentity,
                             Nil,
                             DG_CONTROL,
                             DAT_PARENT,
                             MSG_CLOSEDSM,
                             TW_MEMREF(@FAppWnd));
            if (twRC = TWRC_SUCCESS)
            then begin
                 FIsDSMOpen := False;
                 State := 2;
                 // Explicitly free the SM library.
                 if (FDSMDLL > 0)
                 then begin
                      FreeLibrary(FDSMDLL);
                      State := 1;
                      FDSMDLL := 0;
                      // The data source id will no longer be valid after
                      // twain is killed.  If the id is left around the
                      // data source can not be found or opened
                      FSourceID.Id := 0;
                      FDSM_Entry := Nil;
                 end;
            end
            else ; // Trouble closing the SM, inform the user.
       end
       else begin // Cannot close Source Manager, Source Manager is Closed.
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_ERROR)
              then LogMessage('#M Data Source Manager was not open');
            {$ENDIF}
       end;
  end;
  // Let the caller know what happened.
  Result := twRC;
end; { End TmcmTWAINKernel.CloseDSM.                                           }


function TmcmTWAINKernel.OpenDS : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: OpenDS
//
// ARGS:    none
//
// RETURNS: current state of select Source
//
// NOTES:    1). only attempt to open a source if it is currently closed
//           2). call Source Manager to:
//                - open the Source indicated by info in SourceID
//                - SM will fill in the unique .Id field
//------------------------------------------------------------------------------
var twRC : TW_UINT16;
begin
  twRC := TWRC_FAILURE;
  if Not(IsDSMOpen)
  then begin
       // DSM not open - cannot open DS.
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M DSM not open, cannot open DS');
       {$ENDIF}
  end
  else begin
       // Source Manager is open.
       if Not(IsDSOpen)
       then begin
            // This will open the Source.
            twRC := DSMEntry(@FAppIdentity,
                             Nil,
                             DG_CONTROL,
                             DAT_IDENTITY,
                             MSG_OPENDS,
                             TW_MEMREF(@FSourceID));
            case twRC of
            TWRC_SUCCESS : begin
                             FIsDSOpen := True;
                             State    := 4;
                             FSourceVersion := FSourceID.ProtocolMajor * 10 +
                                               FSourceID.ProtocolMinor;
                             // Start "TWAIN" message loop
                             // Hook into applications windows message queue.
                             StartAppMessage;

                              // Notify app that it's time to disable TWAIN menus.
                              if Assigned(FOnDisableMenus)
                              then FOnDisableMenus(Self);
                           end;
            else           begin
			     // Trouble opening the Source
			     // Determine Condition Code
                           end;
            end;
       end
       else begin
            // Source is already open, TWAIN Information.
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_INFO)
              then LogMessage('#M Data Source already open');
            {$ENDIF}
       end;
  end;
  Result := twRC;
end; { End TmcmTWAINKernel.OpenDS.                                             }


function TmcmTWAINKernel.CloseDS : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: CloseDS
//
// ARGS:    none
//
// RETURNS: none
//
// NOTES:    1). only attempt to close an open Source
//           2). call Source Manager to:
//                - ask that Source identified by info in SourceID close itself
//------------------------------------------------------------------------------
var twRC : TW_UINT16;
begin
  twRC := TWRC_FAILURE;
  if IsDSOpen
  then begin
       if IsDSEnabled
       then begin
            // Source is Currently Enabled, Cannot Close Source.
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_ERROR)
              then LogMessage('#M Source is currently enabled. Cannot close source');
            {$ENDIF}
       end
       else begin
            // Close an open Source.
            twRC := DSMEntry(@FAppIdentity, Nil,
                             DG_CONTROL,
                             DAT_IDENTITY,
                             MSG_CLOSEDS,
                             TW_MEMREF(@FSourceID));
            // Show error on close.
            if (twRC <> TWRC_SUCCESS)
            then begin
            end
            else begin
                 FIsDSOpen := False;
                 State    := 3;
                 FSourceID.Id := 0;
                 FSourceID.ProductName[0] := #0;
                 EndAppMessage;
                  // Notify app that it's OK to re-enable TWAIN menus.
                  if Assigned(FOnEnableMenus)
                  then begin
                       if (GetParentForm(Self) <> Nil)
                       then FOnEnableMenus(Self);
                  end;
            end;
       end;
  end
  else begin
       // Cannot Close Source Source Not Open, Sequence Error.
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Sequence error. Cannot close source. Source not open.');
       {$ENDIF}
  end;
  Result := twRC;
end; { End TmcmTWAINKernel.CloseDS.                                            }


function TmcmTWAINKernel.EnableDS(var ShowUI : boolean) : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: EnableDS
//
// ARGS:    none
//
// RETURNS: BOOL for True=open; False=not open/fail
//
// NOTES:    1). only enable an open Source
//           2). call the Source Manager to:
//                - bring up the Source's User Interface
//------------------------------------------------------------------------------
var twRC   : TW_UINT16;
    twUI   : TW_USERINTERFACE;
  {$IFDEF VER70}
    Result : bool;
  {$ENDIF}
begin
  twRC := TWRC_FAILURE;

  // Only enable open Source's.
  if IsDSOpen
  then begin
       if IsDSEnabled
       then begin
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_ERROR)
              then LogMessage('#M Cannot enable source, already enabled');
            {$ENDIF}
       end
       else begin
            // This will display the Source User Interface. The Source should
            // only display a user interface that is compatible with the group
            // defined by FAppIdentity.
            // SupportedGroups (in our case DG_IMAGE | DG_CONTROL)
            twUI.hParent := FAppWnd;
            twUI.ShowUI  := TW_BOOL(ShowUI);
            twUI.ModalUI := 0;
            twRC := DSMEntry(@FAppIdentity,
                             @FSourceID,
                             DG_CONTROL,
                             DAT_USERINTERFACE,
                             MSG_ENABLEDS,
                             TW_MEMREF(@twUI));
            case twRC of
            TWRC_SUCCESS,
            TWRC_CHECKSTATUS : begin
                                 // A data source may return TWRC_CHECKSTATUS if
                                 // twUI.ShowUI = false, but it cannot function
                                 // without it's own user interface. In this
                                 // case the data source is required to set
                                 // twUI.ShowUI = true, and continue normal
                                 // operation.

                                 // Result := True;
                                 State  := 5;
                                 FIsDSEnabled := True;
                                 ShowUI := boolean(twUI.ShowUI);
                                 {$IFDEF TWNDEBUG}
                                   if (twRC = TWRC_CHECKSTATUS) and Not(ShowUI)
                                   then LogMessage('#M Data Source does not support hidden UI.');
                                 {$ENDIF}
                               end;
            else               begin // Error
                               end;
            end;
       end;
  end
  else begin
       // Cannot Enable Source, No Source Open, TWAIN Error.
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot enable source. No source open.');
       {$ENDIF}
  end;
  Result := twRC;
end; { End TmcmTWAINKernel.EnableDS.                                           }


function TmcmTWAINKernel.DisableDS : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: DisableDS
//
// ARGS:    none
//
// RETURNS: none
//
// NOTES:    1). only disable an open Source
//           2). call Source Manager to:
//                - ask Source to hide it's User Interface
//------------------------------------------------------------------------------
var twRC   : TW_UINT16;
    twUI   : TW_USERINTERFACE;
begin
  twRC := TWRC_FAILURE;

  if Not(IsDSEnabled)
  then begin
       // Cannot Disable Source, Source Not Enabled, Sequence Error.
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot disable source. Source not enabled.');
       {$ENDIF}
  end
  else begin
       // Only disable open Source's.
       if IsDSOpen
       then begin
            // Hide the Source UI.
            twUI.hParent := FAppWnd;
            twUI.ShowUI  := 0;
            twRC := DSMEntry(@FAppIdentity,
                             @FSourceID,
                             DG_CONTROL,
                             DAT_USERINTERFACE,
                             MSG_DISABLEDS,
                             TW_MEMREF(@twUI));
            if (twRC = TWRC_SUCCESS)
            then begin
                 FIsDSEnabled := False;
                 State := 4;
            end
            else begin // Error
            end;
       end;
  end;
  Result := twRC;
end; { End TmcmTWAINKernel.DisableDS.                                          }


procedure TmcmTWAINKernel.CloseConnection;
//------------------------------------------------------------------------------
// CloseConnection -- Disables the data source UI, closes the data source,
// and closes the DSM
//------------------------------------------------------------------------------
begin
  // Always try to unload DSM and DS.
  if IsDSEnabled
  then DisableDS;
  if IsDSOpen
  then CloseDS;
  if IsDSMOpen
  then CloseDSM;
  FAcqFlag := TWFG_NONE;
end; { End TmcmTWAINKernel.CloseConnection.                                    }


function TmcmTWAINKernel.SelectDS  : TW_UINT16;
//------------------------------------------------------------------------------
// FUNCTION: SelectDS
//
// ARGS:    none
//
// RETURNS: twRC TWAIN status return code
//
// NOTES:   1). call the Source Manager to:
//              - have the SM put up a list of the available Sources
//              - get information about the user selected Source from
//                NewDSIdentity, filled by Source
//------------------------------------------------------------------------------
var twRC          : TW_UINT16;
    NewDSIdentity : TW_IDENTITY;
begin
  if IsDSOpen
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M A Source is already open.  Close Source before Selecting a New Source');
       {$ENDIF}
       twRC := TWRC_FAILURE;
  end
  else begin
       // I will settle for the system default.  Shouldn't I get a highlight
       // on system default without this call?
       twRC := DSMEntry(@FAppIdentity,
                        Nil,
                        DG_CONTROL,
                        DAT_IDENTITY,
                        MSG_GETDEFAULT,
                        TW_MEMREF(@NewDSIdentity));

       // This call performs one important function:
       // - should cause SM to put up dialog box of available Source's
       // - tells the SM which application, FAppIdentity.id, is requesting,
       //   REQUIRED
       // - returns the SM assigned NewDSIdentity.id field, you check if
       //   changed (needed to talk to a particular Data Source)
       // - be sure to test return code, failure indicates SM did not close !!
       if (twRC = TWRC_SUCCESS) or (twRC = TWRC_ENDOFLIST) or True
       then twRC := DSMEntry(@FAppIdentity,
                             Nil,
                             DG_CONTROL,
                             DAT_IDENTITY,
                             MSG_USERSELECT,
                             TW_MEMREF(@NewDSIdentity));

       // Check if the user changed the Source and react as apporpriate.
       // - TWRC_SUCCESS, log in new Source
       // - TWRC_CANCEL,  keep the current Source
       // - default,      check the codes in a status message, display result
       case twRC of
       TWRC_SUCCESS : begin
                        FSourceID := NewDSIdentity;
                      end;
       TWRC_CANCEL  : begin
                      end;
       else           begin
                      end;
       end;
  end;
  // Let the caller know what happened.
  Result := twRC;
end; { End TmcmTWAINKernel.SelectDS.                                           }


function TmcmTWAINKernel.GetDSPath(var Path : string) : TW_UINT16;
// Retreive the full path to the Data Source. Note the data source identity
// FSourceID must be filled/obtained before using this function.
var TwunkID : TW_TWUNKIDENTITY;
begin
  CopyMemory(@TwunkID.identity, @FSourceID, SizeOf(TW_IDENTITY));
  TwunkID.dsPath := '';
  Result := DSMEntry(@FAppIdentity, Nil,
                     DG_CONTROL,
                     DAT_TWUNKIDENTITY,
                     MSG_GET,
                     TW_MEMREF(@TwunkID));
  if (Result = TWRC_SUCCESS)
  then Path := TwunkID.dsPath
  else Path := '';
end; { End TmcmTWAINKernel.GetDSPath.                                          }


function TmcmTWAINKernel.SetDSPath(Path : string) : TW_UINT16;
// Retreive the full path to the Data Source. Note the data source identity
// FSourceID must be filled/obtained before using this function.
// var TwunkID : TW_TWUNKIDENTITY;
begin
  Result := TWRC_FAILURE;
  (*
  // Doesn't work!
  CopyMemory(@TwunkID.identity, @FSourceID, SizeOf(TW_IDENTITY));
  //FillChar(TwunkID.identity, SizeOf(TW_IDENTITY), 0);
  StrPCopy(TwunkID.dsPath, Path);
  Result := DSMEntry(@FAppIdentity, Nil, // @FSourceID,
                     DG_CONTROL,
                     DAT_TWUNKIDENTITY,
                     MSG_GET,
                     TW_MEMREF(@TwunkID));
  if (Result = TWRC_SUCCESS)
  then Path := TwunkID.dsPath
  else Path := '';
  *)
end; { End TmcmTWAINKernel.GetDSPath.                                          }


function TmcmTWAINKernel.GetDSIcon(Path : string) : HBitmap;
var DSInstance : THandle;
    DLLFile    : THandle;
begin
  Result := 0;
  DLLFile := 0;
  DSInstance := LoadLibraryEx(PChar(Path), DLLFile, DONT_RESOLVE_DLL_REFERENCES);
  if (DSInstance >= TWN_VALID_HANDLE)
  then begin
       Result := LoadIcon(DSInstance, MAKEINTRESOURCE(TWON_ICONID));
       FreeLibrary(DSInstance);
  end;
end; { End TmcmTWAINKernel.GetDSIcon.                                          }


procedure TmcmTWAINKernel.CreateDIB(    pDibInfo : PBitmapInfo;
                                    var pDib     : pointer;
                                    var hDib     : HBitmap);
var ScreenDC : HDC;
begin
  ScreenDC  := Windows.GetDC(0);
  hDib := 0;
  try
    hDib := CreateDIBSection(ScreenDC,
                             pDibInfo^,
                             DIB_RGB_COLORS,
                             pDib, 0, 0);
  finally
    Windows.ReleaseDC(0, ScreenDC);
  end;
end; { End TmcmTWAINKernel.CreateDIB.                                          }


function TmcmTWAINKernel.RemoveExt(Value : string) : string;
var TempName : string;
    TempExt  : string;
    i        : integer;
begin
  TempName := lowercase(Value);
  TempExt  := ExtractFileExt(TempName);
  i := Pos(TempExt, TempName) - 1;
  if (i > 0)
  then Result := Copy(TempName, 1, i)
  else Result := TempName;
end; { End TmcmTWAINKernel.RemoveExt.                                          }


function TmcmTWAINKernel.FileName2Format(FileName : string) : TTwnFileFmt;
var TempExt : string;
begin
  TempExt := lowercase(ExtractFileExt(FileName));
  if (CompareStr('.tif', TempExt) = 0)
  then Result := TWFF_TIFF
  else if (CompareStr('.pct', TempExt) = 0)
       then Result := TWFF_PICT
       else if (CompareStr('.xbm', TempExt) = 0)
            then Result := TWFF_XBM
            else if (CompareStr('.bmp', TempExt) = 0)
                 then Result := TWFF_BMP
                 else if (CompareStr('.jpg', TempExt) = 0)
                      then Result := TWFF_JFIF
                      else if (CompareStr('.fpx', TempExt) = 0)
                           then Result := TWFF_FPX
                           else if (CompareStr('.tif', TempExt) = 0)
                                then Result := TWFF_TIFFMULTI
                                else if (CompareStr('.png', TempExt) = 0)
                                     then Result := TWFF_PNG
                                     else {if (CompareStr('.???', TempExt) = 0)
                                          then Result := TWFF_SPIFF
                                          else if (CompareStr('.???', TempExt) = 0)
                                               then Result := TWFF_EXIF
                                               else} Result := TTwnFileFmt(TWFF_NONE);
end; { End TmcmTWAINKernel.FileName2Format.                                    }


function TmcmTWAINKernel.FileFormat2Ext(twnFormat : TTwnFileFmt) : string;
begin
  case twnFormat of
  TWFF_TIFF      : Result := 'tif'; // Tag Image File Format.
  TWFF_PICT      : Result := 'pct'; // Macintosh PICT - Not supported on PC.
  TWFF_BMP       : Result := 'bmp'; // Windows Bitmap.
  TWFF_XBM       : Result := 'xbm'; // X-Windows Bitmap - Not supported on PC.
  TWFF_JFIF      : Result := 'jpg'; // JPEG.
  TWFF_FPX       : Result := 'fpx'; // Kodak FlashPix.
  TWFF_TIFFMULTI : Result := 'tif'; // Multiple TIFF image.
  TWFF_PNG       : Result := 'png'; // Portable Network Graphics
  //TWFF_SPIFF     : Result := ''; // Unknown ?
  //TWFF_EXIF      : Result := ''; // Unknown ?
  else Result := '';
  end;
end; { End TmcmTWAINKernel.FileFormat2Ext.                                     }


function TmcmTWAINKernel.CreateFileName(FileName, FileExt : string) : string;
// CreateFileName - Generates a random file name for file transfer.
var i       : integer;
    TmpFile : File;
    TmpName : array[0..512] of char;
    TmpPath : string;
begin
  i := LastDelimiter('\:', FileName);
  TmpPath := Copy(Filename, 1, i);
  if Not(DirectoryExists(TmpPath))
  then begin
       if (GetTempPath(SizeOf(TmpName), TmpName) = 0)
       then TmpPath := 'C:\'
       else TmpPath := StrPas(TmpName);
       GetTempFileName(Pchar(TmpPath), 'TWN', word(0), TmpName);

       // Remove temporaryly created file.
       AssignFile(TmpFile, TmpName);
       Reset(TmpFile);
       CloseFile(TmpFile);
       Erase(TmpFile);
       FileName := StrPas(TmpName);
  end;
  FileName := RemoveExt(FileName);
  FileName := FileName + '.' + FileExt;
  Result := FileName;
end; { End TmcmTWAINKernel.CreateFileName.                                     }


{$IFDEF TWNDEBUG}

procedure TmcmTWAINKernel.LogDelete;
begin
  try
    mcmTWAINLog.DeleteLogFile;
  except
  end;
end; { End TmcmTWAINKernel.LogDelete.                                          }


procedure TmcmTWAINKernel.LogMessage(LogStr : string);
begin
  try
    if (FMsgLevel >= ML_FULL)
    then mcmTWAINLog.Str2File(LogStr);
  except
  end;
end; { End TmcmTWAINKernel.LogMessage.                                         }


procedure TmcmTWAINKernel.LogTriplet(Dest     : integer;
                                     DG       : integer;
                                     DAT      : integer;
                                     Cap      : pTW_Capability;
                                     MSG      : integer;
                                     Return   : integer;
                                     Status   : integer;
                                     Level    : TTwnErrorLevel);
begin
  try
    if (FMsgLevel >= Level)
    then mcmTWAINLog.Triplet2Str(Dest, DG, DAT, Cap, MSG, Return, Status, Level);
  except
  end;
end; { End TmcmTWAINKernel.LogTriplet.                                         }

{$ENDIF}


{$IFDEF TYPED_ADDRESS_ON} {$T+} {$UNDEF TYPED_ADDRESS_ON} {$ENDIF}
{$IFDEF EXTENDED_SYNTAX} {$X-} {$UNDEF EXTENDED_SYNTAX} {$ENDIF}

end.


