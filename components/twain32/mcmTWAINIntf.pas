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
// $Log:  68819: mcmTWAINIntf.pas 
{
{   Rev 1.0    10/02/2011 15:02:12  Kacper
{ init
}
//
//   Rev 1.3    21-01-2002 11:51:24  mcm    Version: DT 2.0
// Fixed XferMech propery reference.

//
//   Rev 1.2    18-01-2002 15:11:56  mcm    Version: DT 2.0
// Access to all property members are through function/procedures.

//
//   Rev 1.1    11-01-2002 15:20:36  mcm    Version: DT 2.0
// Changed casing on TtwnXX variables to TTwnXX.

//
//   Rev 1.0    04-12-2001 16:49:08  mcm    Version: DT 2.0

unit mcmTWAINIntf;

// 01 How to set the Default source ? (SetDefaultSource)
// 02 OnXferProgress is not implemented!
interface

uses Windows, Messages, Classes, SysUtils, 
     twain,
     mcmTWAINKernel,
     mcmTWAINContainer;

type
  TmcmTWAINIntf = class(TmcmTWAINKernel)
  private
    { Private declarations }
    FConList        : TTwnContainerList; // List of negotiated capabilities.
    FSupportCaps    : TTwnContainer;     // List of supported capabilities in
                                         // state 4
    FSupportCapsEx  : TTwnContainer;     // List of supported capabilities in
                                         // state 5 & 6.
    FNumCap         : integer;           // Number of capabilities in
                                         // FSupportCaps.
    FNumExCap       : integer;           // Number of extended capabilities in
                                         // FSupportCapsEx.
    FDeviceEvents   : TTwnDeviceEvents;  // Device events to react opun.
    FOnDeviceEvent  : TDeviceEvent;      // This event is fired when then data
                                         // source needs to alert the application
                                         // of some changes in the device.
    FOnImageReady   : TImageEvent;       // Image is acquired from TWAIN driver.
    FOnMemXferBuf   : TMemXferBufEvent;  // An image chunk is acquired from the
                                         // TWAIN driver.
                                         // Only fired when Transfer method is
                                         // TWFX_Memory and DIBHandleType is
                                         // THDT_MEMPTR.
    FOnMemXferSize  : TMemXferSizeEvent; // Negotiate Memory buffer size.
                                         // Only fired when Transfer method is
                                         // TWFX_Memory and DIBHandleType is
                                         // THDT_MEMPTR.
    FOnXferNext     : TXferNextEvent;    // Source reports more images.
    FOnXferProgress : TProgressEvent;    // Image transfer progress event.
  protected
    { Protected declarations }
    FMemFlipBmp     : boolean;           // Flip RGB image if transfered via Memory.
    FFileAsDIB      : boolean;           // Return bitmap file image in Dib handle
    FShowUI         : boolean;           // Show TWAIN driver interface.
    FIndicators     : boolean;           // If TRUE the source will display a
                                         // progress indicator during acquisition
                                         // regardless of whether the source's UI
                                         // is active.
                                         // If FALSE, the progress indicator will
                                         // be suppressed, if UI is inactive.

    FHandleType     : TTwnHdlType;       // Dib handle to return to application.
    FXferMech       : TTwnXferType;      // Transfer method [Native, Memory, file]
    FNumImages      : word;              // Number of images left to transfer


    function    AbortXfer        (    Msg           : TW_UINT16;
                                  var Count         : word) : TW_UINT16;
    procedure   Clear; virtual;
    function    ConvertRaw2Sec   (var hBmpRaw       : THandle;
                                  var pDib          : pointer;
                                  var pDibInfo      : PBitmapInfo;
                                  var hDibSec       : HBitmap) : boolean;
    function    LoadDibRaw       (    Filename      : string;
                                  var hBmpRaw       : THandle) : boolean;
    function    LoadDibSec       (    Filename      : string;
                                  var pDib          : pointer;
                                  var pDibInfo      : PBitmapInfo;
                                  var hDibSec       : HBitmap) : boolean;
    // OBSOLITE, CreateContainer functions is canceled, and should not be used.
    function    CreateContainer  (    Cap           : word;
                                      ConType       : word;
                                      ItemType      : word;
                                      NumItems      : word) : TTwnContainer;
    procedure   DoFileTransfer;
    procedure   DoMemTransfer;
    procedure   DoNativeTransfer;
    procedure   DoOnDeviceEvent; override;
    procedure   DoOnMemXferBuf   (    pDibInfo      : PBitmapInfo;
                                      pMemXfer      : pTW_IMAGEMEMXFER);
    procedure   DoOnMemXferSize  (    pDibInfo      : PBitmapInfo;
                                      pMemSetup     : pTW_SETUPMEMXFER);
    procedure   DoOnXferNext;
    procedure   FillDibInfoPal   (    NumColors     : integer;
                                      Flavor        : word;
                                      pPalette      : PLogPalette;
                                      pDibInfo      : PBitmapInfo);
    procedure   FlipBitmap       (    pDib          : PVectorB;
                                      pDibInfo      : PBitmapInfo;
                                      PixType       : TW_INT16);
    function    GetCapConSize    (    ItemType      : TW_UINT16) : integer;
    function    GetCapMsg        (    Cap           : TW_UINT16;
                                      Msg           : TW_UINT16;
                                  var ConType       : TW_UINT16;
                                  var pCapCon       : Pointer) : TW_UINT16;
    function    GetCIEColor      (    pCIE          : pTW_CIECOLOR) : TW_UINT16;
    function    GetContainers : TTwnContainerList;
    function    GetDefaultSource (var SourceName    : string) : TW_UINT16;
    function    GetDeviceEvents : TTwnDeviceEvents;
    function    GetFirstSource   (var SourceName    : string) : TW_UINT16;
    function    GetHandleType : TTwnHdlType;
    function    GetImageFileFmt : TTwnFileFmt;
    function    GetNextSource    (var SourceName    : string) : TW_UINT16;
    function    GetNumCap : integer;
    function    GetPixelFlavor : integer;
    function    GetShowIndicators  : boolean;
    function    GetShowUI : boolean;
    procedure   GetSupportedCaps;
    procedure   GetSupportedExCaps;
    function    GetSwapMemRGB : boolean;
    function    GetUnits : integer;
    function    GetXferMech : TTwnXferType;
    function    ImageFileXfer : TW_UINT16;
    function    ImageInfoA       (    pImageInfo    : pTW_IMAGEINFO) : TW_UINT16;
    function    ImageLayoutA     (    pImageLayout  : pTW_IMAGELAYOUT;
                                      Msg           : TW_UINT16) : TW_UINT16;
    function    ImageMemXfer     (    pMemxFer      : pTW_IMAGEMEMXFER;
                                      pMem          : pointer;
                                      Size          : longint;
                                      bitCount      : longint;
                                      Width         : longint) : TW_UINT16;
    function    ImageNativeXfer  (var hBmp          : TW_MEMREF) : TW_UINT16;
    function    Palette8         (    Palette       : pLogPalette;
                                  var PalType       : word;
                                      Msg           : TW_UINT16) : TW_UINT16;
    function    PendingXfers     (    Msg           : TW_UINT16;
                                  var Count         : word) : TW_UINT16;
    function    SendBoolCap      (    Cap           : TW_UINT16;
                                      Msg           : TW_UINT16;
                                      Value         : boolean) : TW_UINT16;
    function    SendCapabilityMsg(    Cap           : TW_UINT16;
                                      Msg           : TW_UINT16;
                                      ptwCapability : pTW_CAPABILITY) : TW_INT16;
    function    SetCapMsg        (    Cap           : TW_UINT16;
                                      Msg           : TW_UINT16;
                                      ConType       : TW_UINT16;
                                      pCapCon       : Pointer) : TW_UINT16;
    function    SetDefaultSource (    SourceName    : string) : TW_UINT16;
    procedure   SetDeviceEvents  (    Value         : TTwnDeviceEvents);
    procedure   SetHandleType    (    Value         : TTwnHdlType);
    function    SetImageFileFmt  (    ItemValue     : TTwnFileFmt) : TW_UINT16;
    function    SetIndicators : TW_UINT16;
    procedure   SetPixelFlavor   (    Value         : integer);
    procedure   SetShowIndicators(    Value         : boolean);
    procedure   SetShowUI        (    Value         : boolean);
    procedure   SetSwapMemRGB    (    Value         : boolean);
    procedure   SetUnits         (    Value         : integer);
    function    SetupMemXfer     (    pMemSetup     : pTW_SETUPMEMXFER) : TW_UINT16;
    function    SetupFileXfer    (    Msg           : TW_UINT16;
                                  var FileName      : string;
                                  var Format        : TTwnFileFmt) : TW_UINT16;
    function    SetupFileXferA   (    Msg           : TW_UINT16;
                                  var FileName      : string;
                                  var Format        : TTwnFileFmt) : TW_UINT16;
    function    SetupFileXferB   (    Msg           : TW_UINT16;
                                  var FileName      : string;
                                  var Format        : TTwnFileFmt) : TW_UINT16;
    function    SetupXferMech : TW_INT16;
    procedure   SetXferMech      (    Value         : TTwnXferType);
    procedure   TransferImage; override;
    function    UserInterface    (    Msg           : TW_UINT16;
                                      pUI           : pTW_USERINTERFACE) : TW_UINT16;
    function    XferGroup        (    Msg           : TW_UINT16;
                                  var Group         : TW_UINT32) : TW_UINT16;




    function    GrayResponse     (    pGrayResponse : pTW_GRAYRESPONSE;
                                      Msg           : TW_UINT16) : TW_UINT16;
    function    RGBResponse      (    pRGBResponse  : pTW_GRAYRESPONSE;
                                      Msg           : TW_UINT16) : TW_UINT16;
    function    JPEGCompression  (    pJPEGComp     : pTW_JPEGCOMPRESSION;
                                      Msg           : TW_UINT16) : TW_UINT16;

  public
    { Public declarations }
    constructor Create           (    AOwner        : TComponent); override;
    destructor  Destroy; override;

    function    GetCapabilityMsg (    Cap           : word;
                                      Msg           : word;
                                  var Container     : TTwnContainer) : integer; virtual;
    function    IsCapSupported   (    Value         : integer) : boolean; virtual;
    function    IsExCapSupported (    Value         : integer) : boolean; virtual;
    function    SetCapabilityMsg (    Msg           : word;
                                      AsOneValue    : bool;
                                      Container     : TTwnContainer) : integer; virtual;

    property    Containers : TTwnContainerList
      read      GetContainers;
    property    DeviceEventTypes : TTwnDeviceEvents
      read      GetDeviceEvents
      write     SetDeviceEvents default [];
    property    DIBHandleType : TTwnHdlType
      read      GetHandleType
      write     SetHandleType default THDT_DIBHANDLE;
    property    NumCapabilities : integer
      read      GetNumCap;
    property    ShowIndicators : boolean
      read      GetShowIndicators
      write     SetShowIndicators default True;
    property    ShowUI : boolean
      read      GetShowUI
      write     SetShowUI default True;
    property    SwapMemRGB : boolean
      read      GetSwapMemRGB
      write     SetSwapMemRGB default True;
    property    XferMech : TTwnXferType
      read      GetXferMech
      write     SetXferMech default TWFX_NATIVE;

    property    OnDeviceEvent : TDeviceEvent
      read      FOnDeviceEvent
      write     FOnDeviceEvent;
    property    OnImageReady : TImageEvent
      read      FOnImageReady
      write     FOnImageReady;
    property    OnMemXferBuffer : TMemXferBufEvent
      read      FOnMemXferBuf
      write     FOnMemXferBuf;
    property    OnMemXferSize : TMemXferSizeEvent
      read      FOnMemXferSize
      write     FOnMemXferSize;
    property    OnXferNext : TXferNextEvent
      read      FOnXferNext
      write     FOnXferNext;
    property    OnXferProgress : TProgressEvent
      read      FOnXferProgress
      write     FOnXferProgress;
  published
    { Pulished declarations }
  end;

implementation

uses mcmTWAINFix;

type
  // Defined to allow access to protected members in TTwnContainer and
  // TTwnContainerList via type-cast.
  TTypeCastContainer = class(TTwnContainer);
  TTypeCastContainerList = class(TTwnContainerList);


{$IFOPT T+} {$DEFINE TYPED_ADDRESS_ON} {$T-} {$ENDIF}
{$IFOPT X-} {$DEFINE EXTENDED_SYNTAX} {$X+} {$ENDIF}


constructor TmcmTWAINIntf.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
  // Create ContainerList.
  FConList := TTwnContainerList.Create(Self);
  FHandleType    := THDT_DIBHANDLE;
  FXferMech      := TWFX_NATIVE;
  FSupportCaps   := Nil;
  FSupportCapsEx := Nil;
  FNumCap        := 0;
  FNumExCap      := 0;
  FShowUI        := True;
  FIndicators    := True;
  FMemFlipBmp    := True;
  FDeviceEvents  := [];
end; { End TmcmTWAINIntf.Create.                                               }


destructor TmcmTWAINIntf.Destroy;
begin
  // Free ContainerList.
  FConList.Free;
  Inherited Destroy;
end; { End TmcmTWAINIntf.Destroy.                                              }


procedure TmcmTWAINIntf.Clear;
begin
  FSupportCaps   := Nil;
  FSupportCapsEx := Nil;
  FNumCap        := 0;
  FNumExCap      := 0;
  FConList.Clear;
end; { End TmcmTWAINIntf.Clear.                                                }


function TmcmTWAINIntf.CreateContainer(Cap      : word;
                                       ConType  : word;
                                       ItemType : word;
                                       NumItems : word) : TTwnContainer;
// OBSOLITE, This functions is canceled, and should not be used.
var Container : TTwnContainer;
begin
  try
    Container := TTwnContainer.Create(Self);
    if Assigned(Container)
    then begin
         Container.Capability    := Cap;
         Container.ContainerType := ConType;
         Container.ItemType      := ItemType;
         Container.NumItems      := NumItems;
         TTypeCastContainerList(FConList).AddItem(Cap, Container);
    end;
  except
    on exception
    do Container := Nil;
  end;
  Result := Container;
end; { End TmcmTWAINIntf.CreateContainer.                                      }


function TmcmTWAINIntf.GetContainers : TTwnContainerList;
begin
  Result := FConList;
end; { End TmcmTWAINIntf.GetContainer.                                         }


function TmcmTWAINIntf.GetNumCap : integer;
begin
  Result := FNumCap;
end; { End TmcmTWAINIntf.GetNumCap.                                            }


function TmcmTWAINIntf.GetHandleType : TTwnHdlType;
begin
  Result := FHandleType;
end; { End TmcmTWAINIntf.GetHandleType.                                        }


procedure TmcmTWAINIntf.SetHandleType(Value : TTwnHdlType);
begin
  if (Value = THDT_MEMPTR)
  then if (FXferMech <> TWFX_MEMORY)
       then FXferMech := TWFX_MEMORY;
  FHandleType := Value;
end; { End TmcmTWAINIntf.SetHandleType.                                        }


function TmcmTWAINIntf.GetXferMech : TTwnXferType;
begin
  Result := FXferMech;
end; { End TmcmTWAINIntf.GetXferMech.                                          }


procedure TmcmTWAINIntf.SetXferMech(Value : TTwnXferType);
begin
  FXferMech := Value;
  if (FXferMech <> TWFX_MEMORY)
  then if (FHandleType = THDT_MEMPTR)
       then DIBHandleType := THDT_DIBHANDLE;
  // EXPAND TO RUNTIME TOO !

  // WHAT ABOUT GETXferMech ? RETURN ACTUAL XferMech AT RUNTIME !

  // HOW TO DO !?!
end; { End TmcmTWAINIntf.SetXferMech.                                          }


function TmcmTWAINIntf.SendBoolCap(Cap           : TW_UINT16;
                                   Msg           : TW_UINT16;
                                   Value         : boolean) : TW_UINT16;
var Container  : TTwnContainer;
begin
  Result := TWRC_FAILURE;
  Container := Containers.Items[Cap];
  if Not(Assigned(Container))
  then Container := Containers.CreateItem(Cap);
  if Assigned(Container)
  then begin
       Container.ItemType := TWTY_BOOL;
       Container.CurrentValue := Value;
       Result := SetCapabilityMsg(Msg, True, Container);
  end;
end; { End TmcmTWAINIntf.SendBoolCap.                                          }


function TmcmTWAINIntf.SendCapabilityMsg(Cap           : TW_UINT16;
                                         Msg           : TW_UINT16;
                                         ptwCapability : pTW_CAPABILITY) : TW_INT16;
{------------------------------------------------------------------------------}
{ SendCapabilityMsg - Sends capability messages to the source and              }
{ returns the TW_CAPABILITY structure to the caller as a parameter.            }
{ If the DSM_Entry call fails, TWRC_FAILURE is returned.                       }
{------------------------------------------------------------------------------}
begin
  Result := TWRC_SUCCESS;

  // Fail if DSM isn't open.
  if Not(IsDSMOpen)
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M SendCapabilityMsg, DSM is not open.');
       {$ENDIF}
       Result := TWRC_FAILURE;
  end;

  // Fail if DS isn't open.
  if (Result = TWRC_SUCCESS)
  then begin
       if Not(IsDSOpen)
       then begin
            {$IFDEF TWNDEBUG}
              if (MessageLevel >= ML_ERROR)
              then LogMessage('#M SendCapabilityMsg, DS is not open.');
            {$ENDIF}
            Result := TWRC_FAILURE;
       end;
  end;

  if (Result = TWRC_SUCCESS)
  then begin
       ptwCapability^.Cap := Cap;
       case Msg of
       MSG_GET,
       MSG_GETDEFAULT,
       MSG_RESET        : begin
                            ptwCapability^.ConType    := TWON_DONTCARE16;
                            ptwCapability^.hContainer := 0;
                          end;
       MSG_QUERYSUPPORT : begin
                            ptwCapability^.ConType    := TWON_DONTCARE16; // TWON_ONEVALUE;
                            ptwCapability^.hContainer := 0;
                          end;
       end;
       Result := DSMEntry(@FAppIdentity,
                          @FSourceID,
                          DG_CONTROL,
                          DAT_CAPABILITY,
                          Msg,
                          TW_MEMREF(ptwCapability));
  end;
end; { End TmcmTWAINIntf.SendCapabilityMsg.                                    }



function TmcmTWAINIntf.GetCapConSize(ItemType : TW_UINT16) : integer;
// GetCapConSize calculates the unpacked data size, ie. data sizes less
// than TW_UNIT32 are "re-scaled" to an TW_UNIT32.
var Size : integer;
begin
  Size := TWItemSize[ItemType];
  if (Size < SizeOf(TW_UINT32))
  then Size := SizeOf(TW_UINT32);
  Result := Size;
end; { End TmcmTWAINIntf.GetCapConSize.                                        }


function TmcmTWAINIntf.GetCapMsg(    Cap     : TW_UINT16;
                                     Msg     : TW_UINT16;
                                 var ConType : TW_UINT16;
                                 var pCapCon : Pointer) : TW_UINT16;
{------------------------------------------------------------------------------}
{ GetCapMsg                                                                    }
{ The GetCapMsg functions un-pack the data structures returned by the data     }
{ source.                                                                      }
{                                                                              }
{ TW_BOOL's must be treated as "0" = FALSE and "1" = TRUE.                     }
{ TW_STRxxx data types are treated as their respective data type.              }
{------------------------------------------------------------------------------}
(*
    procedure GetValue(pItem    : pointer;
                       Value    : pointer;
                       ItemType : TW_UINT16);
    begin
      // Add a check for valid type.
      // CAST to type of var caller wants.
      case ItemType of
      TWTY_INT8   : pTW_UINT32(Value)^ := TW_INT8(pItem^);
      TWTY_UINT8  : pTW_UINT32(Value)^ := TW_UINT8(pItem^);
      TWTY_INT16  : pTW_UINT32(Value)^ := TW_INT16(pItem^);
      TWTY_UINT16 : pTW_UINT32(Value)^ := TW_UINT16(pItem^);
      TWTY_INT32  : pTW_UINT32(Value)^ := TW_INT32(pItem^);
      TWTY_UINT32 : pTW_UINT32(Value)^ := TW_UINT32(pItem^);
      TWTY_BOOL   : pTW_UINT32(Value)^ := TW_BOOL(pItem^);
      TWTY_FIX32  : pTW_FIX32(Value)^  := TW_FIX32(pItem^);
      TWTY_STR32  : CopyMemory(pTW_STR32(Value), pTW_STR32(pItem), SizeOf(TW_STR32));
      TWTY_STR64  : CopyMemory(pTW_STR64(Value), pTW_STR64(pItem), SizeOf(TW_STR64));
      TWTY_STR128 : CopyMemory(pTW_STR128(Value), pTW_STR128(pItem), SizeOf(TW_STR128));
      TWTY_STR255 : CopyMemory(pTW_STR255(Value), pTW_STR255(pItem), SizeOf(TW_STR255));
      TWTY_FRAME  : CopyMemory(pTW_FRAME(Value), pTW_FRAME(pItem), SizeOf(TW_FRAME));
      {$IFDEF VER120}
        else pTW_UINT32(Value)^ := longint($FFFFFFFF);
      {$ELSE}
        else pTW_UINT32(Value)^ := longint($FFFFFFFF);
      {$ENDIF}
      end;
    end; { End GetValue.                                                       }
*)

    procedure ItemToUInt32(var pItem    : PChar;
                               Value    : pointer;
                               ItemType : TW_UINT16;
                               ItemSize : integer);
    begin
      case ItemType of
      TWTY_INT8   : pTW_UINT32(Value)^ := pTW_INT8(pItem)^;
      TWTY_INT16  : pTW_UINT32(Value)^ := pTW_INT16(pItem)^;
      TWTY_INT32  : pTW_UINT32(Value)^ := pTW_INT32(pItem)^;
      TWTY_UINT8  : pTW_UINT32(Value)^ := pTW_UINT8(pItem)^;
      TWTY_UINT16 : pTW_UINT32(Value)^ := pTW_UINT16(pItem)^;
      TWTY_UINT32 : pTW_UINT32(Value)^ := pTW_UINT32(pItem)^;
      TWTY_BOOL   : pTW_UINT32(Value)^ := pTW_BOOL(pItem)^;
      TWTY_FIX32  : pTW_FIX32(Value)^ := pTW_FIX32(pItem)^;
      TWTY_STR32  : CopyMemory(pTW_STR32(Value), pTW_STR32(pItem), SizeOf(TW_STR32));
      TWTY_STR64  : CopyMemory(pTW_STR64(Value), pTW_STR64(pItem), SizeOf(TW_STR64));
      TWTY_STR128 : CopyMemory(pTW_STR128(Value), pTW_STR128(pItem), SizeOf(TW_STR128));
      TWTY_STR255 : CopyMemory(pTW_STR255(Value), pTW_STR255(pItem), SizeOf(TW_STR255));
      TWTY_FRAME  : CopyMemory(pTW_FRAME(Value), pTW_FRAME(pItem), SizeOf(TW_FRAME));
      {$IFDEF VER120}
        else pTW_UINT32(Value)^ := longint($FFFFFFFF);
      {$ELSE}
        else pTW_UINT32(Value)^ := longint($FFFFFFFF);
      {$ENDIF}
      end;
      pItem := pItem + ItemSize;
    end; { End ItemToUInt32.                                                   }


var twCap        : TW_CAPABILITY;
    pArray       : pTW_ARRAY;
    pRange       : pTW_RANGE;
    pOneValue    : pTW_ONEVALUE;
    pEnumeration : pTW_ENUMERATION;

    pItem        : PChar;
    pItemList    : PChar;
    i, ItemSize  : integer;
    ItemSizes    : integer;
    UnpackSize   : integer;
begin
  pCapCon := Nil;
  // App ONLY fills in the CAP_ of interest.
  // Have Source build a container and fill it with the CAP_ of interest.
  twCap.hContainer := 0;
  Result := SendCapabilityMsg(Cap, Msg, @twCap);

  if (Result = TWRC_SUCCESS)
  then begin
       // Add code to do a switch on contype.  Then call the appropriate extract
       // routine from the common container code routines.
       case twCap.ConType of
       TWON_ARRAY       : begin
                            pArray := pTW_ARRAY(GlobalLock(twCap.hContainer));
                            if (pArray <> Nil)
                            then begin
                                 UnpackSize := GetCapConSize(pArray^.ItemType);
                                 ItemSizes  := UnpackSize * pArray^.NumItems;
                                 GetMem(pCapCon, SizeOf(TW_ARRAY) + ItemSizes);

                                 if (pCapCon <> Nil)
                                 then begin
                                      ConType := TWON_ARRAY;
                                      with TW_ARRAY(pCapCon^)
                                      do begin
                                         ItemType  := pArray^.ItemType;
                                         NumItems  := pArray^.NumItems;
                                         ItemSize  := TWItemSize[ItemType];
                                         pItem     := @pArray^.ItemList;
                                         pItemList := @ItemList[0];
                                         for i := 0 to (NumItems - 1)
                                         do begin
                                            ItemToUInt32(pItem, pItemList, ItemType, ItemSize);
                                            pItemList := pItemList + UnpackSize;
                                         end;
                                      end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_ENUMERATION : begin
                            pEnumeration := pTW_ENUMERATION(GlobalLock(twCap.hContainer));
                            if (pEnumeration <> Nil)
                            then begin
                                 UnpackSize := GetCapConSize(pEnumeration^.ItemType);
                                 ItemSizes  := UnpackSize * pEnumeration^.NumItems;
                                 GetMem(pCapCon, SizeOf(TW_ENUMERATION) + ItemSizes);

                                 if (pCapCon <> Nil)
                                 then begin
                                      ConType := TWON_ENUMERATION;
                                      with TW_ENUMERATION(pCapCon^)
                                      do begin
                                         ItemType     := pEnumeration^.ItemType;
                                         NumItems     := pEnumeration^.NumItems;
                                         CurrentIndex := pEnumeration^.CurrentIndex;
                                         DefaultIndex := pEnumeration^.DefaultIndex;
                                         pItem        := @pEnumeration^.ItemList;
                                         ItemSize     := TWItemSize[ItemType];
                                         pItemList    := @ItemList[0];
                                         for i := 0 to (NumItems - 1)
                                         do begin
                                            ItemToUInt32(pItem, pItemList, ItemType, ItemSize);
                                            pItemList := pItemList + UnpackSize;
                                         end;
                                      end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_ONEVALUE    : begin
                            pOneValue := pTW_ONEVALUE(GlobalLock(twCap.hContainer));
                            if (pOneValue <> Nil)
                            then begin
                                 ItemSizes := SizeOf(TW_ONEVALUE) +
                                              GetCapConSize(pOneValue^.ItemType) -
                                              SizeOf(TW_UINT32);
                                 GetMem(pCapCon, ItemSizes);

                                 if (pCapCon <> Nil)
                                 then begin
                                      ConType := TWON_ONEVALUE;
                                      with TW_ONEVALUE(pCapCon^)
                                      do begin
                                         ItemType  := pOneValue^.ItemType;
                                         pItem     := @pOneValue^.Item;
                                         pItemList := @Item;
                                         ItemToUInt32(pItem, pItemList, ItemType, 0);
                                         // GetValue(@pOneValue^.Item, @Item, ItemType);
                                      end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_RANGE       : begin
                            pRange := pTW_RANGE(GlobalLock(twCap.hContainer));
                            if (pRange <> Nil)
                            then begin
                                 GetMem(pCapCon, SizeOf(TW_RANGE));
                                 if (pCapCon <> Nil)
                                 then begin
                                      ConType := TWON_RANGE;
                                      with TW_RANGE(pCapCon^)
                                      do begin
                                         ItemType     := pRange^.ItemType;
                                         MinValue     := pRange^.MinValue;
                                         MaxValue     := pRange^.MaxValue;
                                         StepSize     := pRange^.StepSize;
                                         DefaultValue := pRange^.DefaultValue;
                                         CurrentValue := pRange^.CurrentValue;
                                      end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       end;
  end;

  // App is ALWAYS responsible for cleaning up the container.
  if (twCap.hContainer <> 0)
  then GlobalFree(twCap.hContainer);
end; { End TmcmTWAINIntf.GetCapMsg.                                            }


function TmcmTWAINIntf.SetCapMsg(Cap     : TW_UINT16;
                                 Msg     : TW_UINT16;
                                 ConType : TW_UINT16;
                                 pCapCon : Pointer) : TW_UINT16;
{------------------------------------------------------------------------------}
{ SetCapMsg                                                                    }
{ The SetCapMsg functions pack the data structures to send to the data source. }
{                                                                              }
{ TW_BOOL's must be treated as "0" = FALSE and "1" = TRUE.                     }
{ TW_STRxxx data types are treated as their respective data type.              }
{------------------------------------------------------------------------------}

    procedure UInt32ToItem(var pItem    : PChar;
                               Value    : pointer;
                               ItemType : TW_UINT16;
                               ItemSize : integer);
    begin
      case ItemType of
      TWTY_INT8   : pTW_INT8(pItem)^   := pTW_UINT32(Value)^;
      TWTY_INT16  : pTW_INT16(pItem)^  := pTW_UINT32(Value)^;
      TWTY_INT32  : pTW_INT32(pItem)^  := pTW_UINT32(Value)^;
      TWTY_UINT8  : pTW_UINT8(pItem)^  := pTW_UINT32(Value)^;
      TWTY_UINT16 : pTW_UINT16(pItem)^ := pTW_UINT32(Value)^;
      TWTY_UINT32 : pTW_UINT32(pItem)^ := pTW_UINT32(Value)^;
      TWTY_BOOL   : pTW_BOOL(pItem)^   := pTW_UINT32(Value)^;
      TWTY_FIX32  : pTW_FIX32(pItem)^  := pTW_FIX32(Value)^;
      TWTY_STR32  : CopyMemory(pTW_STR32(pItem), pTW_STR32(Value), SizeOf(TW_STR32));
      TWTY_STR64  : CopyMemory(pTW_STR64(pItem), pTW_STR64(Value), SizeOf(TW_STR64));
      TWTY_STR128 : CopyMemory(pTW_STR128(pItem), pTW_STR128(Value), SizeOf(TW_STR128));
      TWTY_STR255 : CopyMemory(pTW_STR255(pItem), pTW_STR255(Value), SizeOf(TW_STR255));
      TWTY_FRAME  : CopyMemory(pTW_FRAME(pItem), pTW_FRAME(Value), SizeOf(TW_FRAME));
      end;
      pItem := pItem + ItemSize;
    end; { End ItemToUInt32.                                                   }


var twCap        : TW_CAPABILITY;
    pArray       : pTW_ARRAY;
    pRange       : pTW_RANGE;
    pOneValue    : pTW_ONEVALUE;
    pEnumeration : pTW_ENUMERATION;

    pItem        : PChar;
    pItemList    : PChar;
    i, ItemSize  : integer;
    ItemSizes    : integer;
    UnpackSize   : integer;
begin
  if (pCapCon <> Nil)
  then begin
       twCap.Cap        := Cap;     // id of cap you want.
       twCap.ConType    := ConType; // container type.
       twCap.hContainer := 0;

       case twCap.ConType of
       TWON_ARRAY       : begin
                            UnpackSize := GetCapConSize(TW_ARRAY(pCapCon^).ItemType);
                            ItemSize  := TWItemSize[TW_ARRAY(pCapCon^).ItemType];
                            ItemSizes :=  ItemSize * TW_ARRAY(pCapCon^).NumItems;
                            twCap.hContainer := GlobalAlloc(GHND, SizeOf(TW_ARRAY) + ItemSizes);
                            pArray := GlobalLock(twCap.hContainer);
                            if (pArray <> Nil)
                            then begin
                                 with TW_ARRAY(pCapCon^)
                                 do begin
                                    pArray^.ItemType := ItemType;
                                    pArray^.NumItems := NumItems;
                                    pItem     := @pArray^.ItemList;
                                    pItemList := @ItemList[0];
                                    for i := 0 to (NumItems - 1)
                                    do begin
                                       UInt32ToItem(pItem, pItemList, ItemType, ItemSize);
                                       pItemList := pItemList + UnpackSize;
                                    end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_ENUMERATION : begin
                            UnpackSize := GetCapConSize(TW_ARRAY(pCapCon^).ItemType);
                            ItemSize   := TWItemSize[TW_ENUMERATION(pCapCon^).ItemType];
                            ItemSizes  := ItemSize * TW_ENUMERATION(pCapCon^).NumItems;
                            twCap.hContainer := GlobalAlloc(GHND, SizeOf(TW_ENUMERATION) + ItemSizes);
                            pEnumeration := GlobalLock(twCap.hContainer);
                            if (pEnumeration <> Nil)
                            then begin
                                 with TW_ENUMERATION(pCapCon^)
                                 do begin
                                    pEnumeration^.ItemType     := ItemType;
                                    pEnumeration^.NumItems     := NumItems;
                                    pEnumeration^.CurrentIndex := CurrentIndex;
                                    pEnumeration^.DefaultIndex := DefaultIndex;
                                    pItem     := @pEnumeration^.ItemList;
                                    pItemList := @ItemList[0];
                                    for i := 0 to (NumItems - 1)
                                    do begin
                                       UInt32ToItem(pItem, pItemList, ItemType, ItemSize);
                                       pItemList := pItemList + UnpackSize;
                                    end;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_ONEVALUE    : begin
                            ItemSize := TWItemSize[TW_ONEVALUE(pCapCon^).ItemType];
                            twCap.hContainer := GlobalAlloc(GHND, sizeof(TW_ONEVALUE) + ItemSize);
                            pOneValue := GlobalLock(twCap.hContainer);
                            if (pOneValue <> Nil)
                            then begin
                                 with TW_ONEVALUE(pCapCon^)
                                 do begin
                                    pOneValue^.ItemType := ItemType;
                                    pItem := @pOneValue^.Item;
                                    UInt32ToItem(pItem, @Item, ItemType, ItemSize);
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       TWON_RANGE       : begin
                            twCap.hContainer := GlobalAlloc(GHND,sizeof(TW_RANGE));
                            pRange := GlobalLock(twCap.hContainer);
                            if (pRange <> Nil)
                            then begin
                                 with TW_RANGE(pCapCon^)
                                 do begin
                                    pRange^.ItemType     := ItemType;
                                    pRange^.MinValue     := MinValue;
                                    pRange^.MaxValue     := MaxValue;
                                    pRange^.StepSize     := StepSize;
                                    pRange^.DefaultValue := DefaultValue;
                                    pRange^.CurrentValue := CurrentValue;
                                 end;
                                 GlobalUnlock(twCap.hContainer);
                            end;
                          end;
       end;

       // It is assumed that the Source will read the container NOW.
       if (twCap.hContainer <> 0)
       then Result := SendCapabilityMsg(Cap, Msg, @twCap)
       else Result := $FFFF;

       // NOTE: the App ALWAYS is required to Free the container.
       if (twCap.hContainer <> 0)
       then GlobalFree(twCap.hContainer);
  end
  else Result := $FFFF;
end; { End TmcmTWAINIntf.SetCapMsg.                                            }


function TmcmTWAINIntf.GetCapabilityMsg(    Cap       : word;
                                            Msg       : word;
                                        var Container : TTwnContainer) : integer;
var ConType    : TW_UINT16;
    pContainer : pointer;
begin
  Result := TWRC_FAILURE;
  pContainer := Nil;
  case Msg of
  MSG_GET,
  MSG_GETCURRENT,
  MSG_GETDEFAULT,
  MSG_RESET        : begin
                       Result := GetCapMsg(Cap, Msg, ConType, pContainer);
                       if (Result = TWRC_SUCCESS) and (pContainer <> Nil)
                       then begin
                            if Not(Assigned(Container))
                            then begin
                                 Container := Containers.Items[Cap];
                                 if Not(Assigned(Container))
                                 then begin
                                      Container := TTwnContainer.Create(Self);
                                      TTypeCastContainerList(FConList).AddItem(Cap, Container);
                                 end;
                            end;
                            if Assigned(Container)
                            then TTypeCastContainer(Container).AssignContainerPtr(Cap, ConType, pContainer);
                       end
                       else begin
                            if (pContainer <> Nil)
                            then ;
                            pContainer := Nil;
                       end;
                     end;
  MSG_QUERYSUPPORT : begin
                         Result := GetCapMsg(Cap, Msg, ConType, pContainer);
                         if (Result = TWRC_SUCCESS)
                         then begin
                              TTypeCastContainer(Container).FQuerySupport := integer($FFFFFFFF);
                              if (ConType = TWON_ONEVALUE)
                              then begin
                                   if (pTW_ONEVALUE(pContainer)^.ItemType = TWTY_INT32)
                                   then TTypeCastContainer(Container).FQuerySupport := pTW_ONEVALUE(pContainer)^.Item;
                              end;
                         end;
                         if (pContainer <> Nil)
                         then FreeMem(pContainer);
                     end;
  end;
end; { End TmcmTWAINIntf.GetCapabilityMsg.                                     }


function TmcmTWAINIntf.SetCapabilityMsg(Msg        : word;
                                        AsOneValue : bool;
                                        Container  : TTwnContainer) : integer;
var ConType    : TW_UINT16;
    pContainer : pointer;
begin
  Result := -1;
  if Assigned(Container)
  then begin
       if (Msg = MSG_SET)
       then begin
            pContainer := TTypeCastContainer(Container).GetContainerPtr(AsOneValue);
            if AsOneValue
            then ConType := TWON_ONEVALUE
            else ConType := Container.ContainerType;
            Result := SetCapMsg(Container.Capability, Msg, ConType, pContainer);
            if (Result <> TWRC_SUCCESS)
            then ; // Error Handling missing !
       end;
  end;
end; { End TmcmTWAINIntf.SetCapabilityMsg.                                     }


procedure TmcmTWAINIntf.GetSupportedCaps;
begin
  if (GetCapabilityMsg(CAP_SUPPORTEDCAPS, MSG_GET, FSupportCaps) = TWRC_SUCCESS)
  then if Assigned(FSupportCaps)
       then FNumCap := FSupportCaps.NumItems;
end; { End TmcmTWAINIntf.GetSupportedCaps.                                     }


procedure TmcmTWAINIntf.GetSupportedExCaps;
begin
  if (GetCapabilityMsg(CAP_EXTENDEDCAPS, MSG_GET, FSupportCapsEx) = TWRC_SUCCESS)
  then if Assigned(FSupportCapsEx)
       then FNumExCap := FSupportCapsEx.NumItems;
end; { End TmcmTWAINIntf.GetSupportedExCaps.                                   }


function TmcmTWAINIntf.IsCapSupported(Value : integer) : boolean;
var i : integer;
begin
  Result := False;
  if Assigned(FSupportCaps)
  then begin
       i := 0;
       while Not(Result) and (i < FSupportCaps.NumItems)
       do begin
          if (Value = FSupportCaps.Items[i])
          then Result := True;
          inc(i);
       end;
  end
  // Data source didn't support CAP_SUPPORTEDCAPS, therefore better accept
  // all other capabilities.
  else Result := True;
end; { End TmcmTWAINIntf.IsCapSupported.                                       }


function TmcmTWAINIntf.IsExCapSupported(Value : integer) : boolean;
var i : integer;
begin
  Result := False;
  if Assigned(FSupportCapsEx)
  then begin
       i := 0;
       while Not(Result) and (i < FSupportCapsEx.NumItems)
       do begin
          if (Value = FSupportCapsEx.Items[i])
          then Result := True;
          inc(i);
       end;
  end;
end; { End TmcmTWAINIntf.IsExCapSupported.                                     }


function TmcmTWAINIntf.GetFirstSource(var SourceName : string) : TW_UINT16;
{------------------------------------------------------------------------------}
{ FUNCTION: GetFirstSource                                                     }
{                                                                              }
{ ARGS:    none                                                                }
{                                                                              }
{ RETURNS: twRC TWAIN status return code                                       }
{                                                                              }
{ NOTES:   1). call the Source Manager to:                                     }
{              - have the SM put up a list of the available Sources            }
{              - get information about the user selected Source from           }
{                NewDSIdentity, filled by Source                               }
{------------------------------------------------------------------------------}
var NewDSIdentity : TW_IDENTITY;
begin
  if IsDSOpen
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot get first source. Source already open');
       {$ENDIF}
       Result := TWRC_FAILURE;
  end
  else begin
       // I will settle for the system default.  Shouldn't I get a highlight
       // on system default without this call?
       Result := DSMEntry(@FAppIdentity,
                          Nil,
                          DG_CONTROL,
                          DAT_IDENTITY,
                          MSG_GETFIRST,
                          TW_MEMREF(@NewDSIdentity));

       // - TWRC_SUCCESS, log in new Source
       // - TWRC_CANCEL,  keep the current Source
       // - default,      check the codes in a status message, display result
       case Result of
       TWRC_SUCCESS : begin
                        FSourceID := NewDSIdentity;
                        SourceName := NewDSIdentity.ProductName;
                      end;
       // TWRC_CANCEL,
       else SourceName := '';
       end;
  end;
end; { End TmcmTWAINIntf.GetFirstSource.                                     }


function TmcmTWAINIntf.GetNextSource(var SourceName : string) : TW_UINT16;
{------------------------------------------------------------------------------}
{ FUNCTION: GetNextSource                                                      }
{                                                                              }
{ ARGS:    none                                                                }
{                                                                              }
{ RETURNS: twRC TWAIN status return code                                       }
{                                                                              }
{ NOTES:   1). call the Source Manager to:                                     }
{              - have the SM put up a list of the available Sources            }
{              - get information about the user selected Source from           }
{                NewDSIdentity, filled by Source                               }
{------------------------------------------------------------------------------}
var NewDSIdentity : TW_IDENTITY;
begin
  if IsDSOpen
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot get next source. Source already open');
       {$ENDIF}
       Result := TWRC_FAILURE;
  end
  else begin
       // I will settle for the system default.  Shouldn't I get a highlight
       // on system default without this call?
       Result := DSMEntry(@FAppIdentity,
                          Nil,
                          DG_CONTROL,
                          DAT_IDENTITY,
                          MSG_GETNEXT,
                          TW_MEMREF(@NewDSIdentity));

       // - TWRC_SUCCESS, log in new Source
       // - TWRC_CANCEL,  keep the current Source
       // - default,      check the codes in a status message, display result
       case Result of
       TWRC_SUCCESS   : begin
                          FSourceID := NewDSIdentity;
                          SourceName := NewDSIdentity.ProductName;
                        end;
       // TWRC_ENDOFLIST,
       // TWRC_CANCEL,
       else SourceName := '';
       end;
  end;
end; { End TmcmTWAINIntf.GetNextSource.                                        }


function TmcmTWAINIntf.GetDefaultSource(var SourceName : string) : TW_UINT16;
var NewDSIdentity : TW_IDENTITY;
begin
  if IsDSOpen
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot get first source. Source already open');
       {$ENDIF}
       Result := TWRC_FAILURE;
  end
  else begin
       // I will settle for the system default.  Shouldn't I get a highlight
       // on system default without this call?
       Result := DSMEntry(@FAppIdentity,
                          Nil,
                          DG_CONTROL,
                          DAT_IDENTITY,
                          MSG_GETDEFAULT,
                          TW_MEMREF(@NewDSIdentity));

       // - TWRC_SUCCESS, log in new Source
       // - TWRC_CANCEL,  keep the current Source
       // - default,      check the codes in a status message, display result
       case Result of
       TWRC_SUCCESS : begin
                        FSourceID := NewDSIdentity;
                        SourceName := NewDSIdentity.ProductName;
                      end;
       // TWRC_CANCEL,
       else SourceName := '';
       end;
  end;
end; { End TmcmTWAINIntf.GetDefaultSource.                                     }


function TmcmTWAINIntf.SetDefaultSource(SourceName : string) : TW_UINT16;
{------------------------------------------------------------------------------}
{ FUNCTION: SetDefaultSource                                                   }
{                                                                              }
{ ARGS:    none                                                                }
{                                                                              }
{ RETURNS: twRC TWAIN status return code                                       }
{                                                                              }
{ NOTES:   1). call the Source Manager to:                                     }
{              - have the SM put up a list of the available Sources            }
{              - get information about the user selected Source from           }
{                NewDSIdentity, filled by Source                               }
{------------------------------------------------------------------------------}
var TempName      : string;
    OldDSIdentity : TW_IDENTITY;
begin
  // Current code will only set a given data dource as the "default" while the
  // data source manager is open!
  // It will not set the data source as the systems default source!
  // WHAT TO DO - WIN.INI on Windows before 2000 and registry after!?!
  // Or maintain a TWAIN for ... i.e. an internal default source!
  if IsDSOpen
  then begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Cannot set default source. A source is already open');
       {$ENDIF}
       Result := TWRC_FAILURE;
  end
  else begin
       // I will settle for the system default.  Shouldn't I get a highlight
       // on system default without this call?
       OldDSIdentity := FSourceID;
       Result := GetFirstSource(TempName);
       while (Result = TWRC_SUCCESS) and
             (Length(TempName) > 0) and
             (TempName <> SourceName)
       do Result := GetNextSource(TempName);

       if Not((TempName = SourceName) and (Length(SourceName) > 0))
       then FSourceID := OldDSIdentity;
  end;
end; { End TmcmTWAINIntf.SetDefaultSource.                                     }


function TmcmTWAINIntf.GetShowIndicators : boolean;
begin
  Result := FIndicators;
end; { End TmcmTWAINIntf.GetShowIndicators.                                    }


procedure TmcmTWAINIntf.SetShowIndicators(Value : boolean);
begin
  FIndicators := Value;
end; { End TmcmTWAINIntf.SetShowIndicators.                                    }


function TmcmTWAINIntf.SetIndicators : TW_UINT16;
// Set show indicators to data source.
begin
  Result := SendBoolCap(CAP_INDICATORS, MSG_SET, FIndicators);
end; { End TmcmTWAINIntf.SetIndicators.                                        }


function TmcmTWAINIntf.GetShowUI : boolean;
begin
  Result := FShowUI;
end; { End TmcmTWAINIntf.GetShowUI.                                            }


procedure TmcmTWAINIntf.SetShowUI(Value : boolean);
begin
  FShowUI := Value;
end; { End TmcmTWAINIntf.SetShowUI.                                            }


function TmcmTWAINIntf.GetImageFileFmt : TTwnFileFmt;
//------------------------------------------------------------------------------
// If more than one file format is supported, GetImageFileFmt will return
// the current format in the container.
//------------------------------------------------------------------------------
var Container : TTwnContainer;
begin
  Container := Nil;
  if (GetCapabilityMsg(ICAP_IMAGEFILEFORMAT, MSG_GET, Container) = TWRC_SUCCESS)
  then Result := Container.CurrentValue
  else Result := TTwnFileFmt(TWFF_NONE);
end; { End TmcmTWAINIntf.GetImageFileFmt.                                      }


function TmcmTWAINIntf.SetImageFileFmt(ItemValue : TTwnFileFmt) : TW_UINT16;
var Container : TTwnContainer;
begin
  Container := FConList.Items[ICAP_IMAGEFILEFORMAT];
  if Not(Assigned(Container))
  then Container := FConList.CreateItem(ICAP_IMAGEFILEFORMAT);
  if Assigned(Container)
  then begin
       Container.ItemType     := TWTY_UINT16;
       Container.CurrentValue := TW_UINT16(ItemValue);
       Result := SetCapabilityMsg(MSG_SET, True, Container);
  end
  else Result := TWRC_FAILURE;
end; { End TmcmTWAINIntf.SetImageFileFmt.                                      }


function TmcmTWAINIntf.SetupXferMech : TW_INT16;
{------------------------------------------------------------------------------}
{ SetupXferMech - Set the current transfer mechanism for Twain based on the    }
{ menus that have been checked by the user.                                    }
{                                                                              }
{ TransType = 0 Native Transfer.                                               }
{             1 File Transfer.                                                 }
{             2 Memory Transfer.                                               }
{------------------------------------------------------------------------------}
var Container    : TTwnContainer;
    SourceFormat : TTwnFileFmt;
    FileFormats  : TTwnFileFmts;
    FileExt      : string;
    i            : integer;
begin
  Container := FConList.Items[ICAP_XFERMECH];
  if Not(Assigned(Container))
  then Container := FConList.CreateItem(ICAP_XFERMECH);
  if Assigned(Container)
  then begin
       if (FSourceVersion >= 19)
       then begin
            if (FXferMech = TWFX_FILES)
            then FXferMech := TWFX_FILES2;
       end
       else begin
            if (FXferMech = TWFX_FILES2)
            then FXferMech := TWFX_FILES;
       end;

       Container.ItemType     := TWTY_UINT16;
       Container.CurrentValue := TW_UINT16(FXferMech);
       Result := SetCapabilityMsg(MSG_SET, True, Container);

       // Special case to handle un-supported value = TWFX_FILES2, when both
       // application and source follow protocol equal to or greater than 1.9. 
       if (Result <> TWRC_SUCCESS)
       then if (FXferMech = TWFX_FILES2)
            then begin
                 FXferMech := TWFX_FILES;
                 Container.CurrentValue := TW_UINT16(FXferMech);
                 Result := SetCapabilityMsg(MSG_SET, True, Container);
            end;

       GetCapabilityMsg(ICAP_XFERMECH, MSG_GET, Container);
       if Assigned(Container)
       then begin
            if (FXferMech <> Container.CurrentValue)
            then begin
                 // Error, Could not set-up requested transfer mechanism.
            end;
            FXferMech := Container.CurrentValue;
       end;

       case FXferMech of
       // File transfer.
       TWFX_FILES,
       TWFX_FILES2 : begin
                       FileFormats := FAllFormats;
                       if FFileAsDIB
                       then FileFormats := FileFormats + [TWFF_BMP];

                       // Negotiate which file format to use.
                       // Start with the preferred file format (PrefFormat).
                       // If this is not supported by the data source check if
                       // any of the formats in FileFormats are supported.
                       // If non of the file formats are supported by the data
                       // source, switch to Native transfer mode.
                       repeat
                         SetImageFileFmt(FPrefFormat);
                         SourceFormat := GetImageFileFmt;
                         if (SourceFormat <> FPrefFormat)
                         then begin
                              if (SourceFormat in FileFormats)
                              then begin
                                   FPrefFormat := SourceFormat;
                                   FileExt     := FileFormat2Ext(FPrefFormat);
                                   FFileName   := CreateFileName(FFileName, FileExt);
                              end
                              else begin
                                   // Remove current format from FileFormats and
                                   // find next possible format.
                                   FileFormats := FileFormats - [FPrefFormat];
                                   i := integer(TWFF_TIFF);
                                   while (i <= integer(TWFF_PNG)) and
                                         Not(TTwnFileFmt(i) in FileFormats)
                                   do inc(i);
                                   FPrefFormat := TTwnFileFmt(i);
                              end;
                         end;
                       until (SourceFormat = FPrefFormat) or (FileFormats = []);

                       if Not(FPrefFormat in FileFormats)
                       then FPrefFormat := TTwnFileFmt(TWFF_NONE);

                       // If source doesn't support fileformat's, use native
                       // transfer.
                       FileExt := FileFormat2Ext(FPrefFormat);
                       if (Length(FileExt) > 0)
                       then FFileName := CreateFileName(FFileName, FileExt)
                       else begin
                            FXferMech  := TWFX_NATIVE;
                            SetupXferMech;
                       end;
                     end;
       // Memory transfer.
       TWFX_MEMORY : ;
       // Native Tranfer.
       TWFX_NATIVE : ;
       end;
  end
  else Result := TWRC_FAILURE;
end; { End TmcmTWAINIntf.SetupXferMech.                                        }


function TmcmTWAINIntf.SetupMemXfer(pMemSetup : pTW_SETUPMEMXFER) : TW_UINT16;
// Parameters:
// pMemSetup        - Data container hold the returned information.
// Msg
//   MSG_GET        - Source returnes information about the preferred, minimum
//                    and maximum memory size to use for buffered transfer.
//                    An application must use a buffer size within the limits
//                    specified by minimum and maximum.
//                    If the data source doesn't care about the buffer size it
//                    may specify TWON_DONTCARE32 in either of these fields.
begin
  pMemSetup^.MinBufSize := 0;
  pMemSetup^.MaxBufSize := 0;
  pMemSetup^.Preferred  := 0;
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_CONTROL,
                     DAT_SETUPMEMXFER,
                     MSG_GET,
                     TW_MEMREF(pMemSetup));
end; { End TmcmTWAINIntf.SetupMemXfer.                                         }


function TmcmTWAINIntf.SetupFileXferA(    Msg      : TW_UINT16;
                                      var FileName : string;
                                      var Format   : TTwnFileFmt) : TW_UINT16;
// Parameters:
// Msg
//   MSG_GET        - Source returnes information about the file into which
//                    image or audio has or will be acquired to. State 4 - 6
//   MSG_GETDEFAULT - Source returnes default information about the file into
//                    which image or audio has or will be acquired to. State 4 - 6
//   MSG_RESET      - Source resets the file information to default and returnes
//                    file information. State 4
//   MSG_SET        - App sets the file information to be used for the next
//                    image or audio transfer. App is responsible for verifying
//                    that the file name is valid.
//                    App is also responsible for requesting a format supported
//                    by the source. State 4 - 6
// Filename         - A valid file name to store acquired image or audio data to.
// Format           - The file format to be used for storing image or audio data.
var TWSetupFile  : TW_SETUPFILEXFER;
begin
  Result := TWRC_FAILURE;
  if (Msg in [MSG_GET, MSG_GETDEFAULT, MSG_RESET, MSG_SET])
  then begin
       TWSetupFile.Format  := TW_UINT16(Format);
       TWSetupFile.VRefNum := TW_INT16(TWON_DONTCARE16);
       StrPCopy(TWSetupFile.FileName, FileName);

       Result := DSMEntry(@FAppIdentity,
                          @FSourceID,
                          DG_CONTROL,
                          DAT_SETUPFILEXFER,
                          Msg,
                          TW_MEMREF(@TWSetupFile));

       if (Result = TWRC_SUCCESS) and (Msg <> MSG_SET)
       then begin
            Format   := TTwnFileFmt(TWSetupFile.Format);
            FileName := StrPas(TWSetupFile.FileName);
            // := TWSetupFile.VRefNum; Mac ONLY.
       end;
  end;
end; { End TmcmTWAINIntf.SetupFileXferA.                                       }


function TmcmTWAINIntf.SetupFileXferB(    Msg      : TW_UINT16;
                                      var FileName : string;
                                      var Format   : TTwnFileFmt) : TW_UINT16;
// DAT_SETUPFILEXFER2 (SetupFileXferB) is an replacement or rather an enhancement
// of DAT_SETUPFILEXFER (SetupFileXferA) and should be used by Applications and
// Sources that comply with the TWAIN protocol version 1.9.
// Parameters:
// Msg
//   MSG_GET        - Source returnes information about the file into which
//                    image or audio has or will be acquired to. State 4 - 6
//   MSG_GETDEFAULT - Source returnes default information about the file into
//                    which image or audio has or will be acquired to. State 4 - 6
//   MSG_RESET      - Source resets the file information to default and returnes
//                    file information. State 4
//   MSG_SET        - App sets the file information to be used for the next
//                    image or audio transfer. App is responsible for verifying
//                    that the file name is valid.
//                    App is also responsible for requesting a format supported
//                    by the source. State 4 - 6
// Filename         - A valid file name to store acquired image or audio data to.
// Format           - The file format to be used for storing image or audio data.
var TWSetupFile2 : TW_SETUPFILEXFER2;
begin
  Result := TWRC_FAILURE;
  if (Msg in [MSG_GET, MSG_GETDEFAULT, MSG_RESET, MSG_SET])
  then begin
       TWSetupFile2.FileNameType := TWTY_STR1024;
       TWSetupFile2.Format       := TW_UINT16(Format);
       TWSetupFile2.VRefNum      := TW_INT16(TWON_DONTCARE16);
       TWSetupFile2.parID        := TW_UINT32(TWON_DONTCARE16);
       GetMem(TWSetupFile2.FileName, SizeOf(TW_STR1024));
       try
         StrPCopy(TWSetupFile2.FileName, FileName);

         Result := DSMEntry(@FAppIdentity,
                            @FSourceID,
                            DG_CONTROL,
                            DAT_SETUPFILEXFER2,
                            Msg,
                            TW_MEMREF(@TWSetupFile2));
         if (Result = TWRC_SUCCESS) and (Msg <> MSG_SET)
         then begin
              Format := TTwnFileFmt(TWSetupFile2.Format);
              case TWSetupFile2.FileNameType of
              TWTY_UNI512  : begin
                               FileName := StrPas(TWSetupFile2.FileName);
                             end;
              TWTY_STR1024 : begin
                               FileName := StrPas(TWSetupFile2.FileName);
                             end;
              end;
              // := TWSetupFile.VRefNum;
         end;
       finally
         FreeMem(TWSetupFile2.FileName, SizeOf(TW_STR1024));
       end;
  end;
end; { End TmcmTWAINIntf.SetupFileXferB.                                       }


function TmcmTWAINIntf.SetupFileXfer(    Msg      : TW_UINT16;
                                     var FileName : string;
                                     var Format   : TTwnFileFmt) : TW_UINT16;
// Parameters:
// Msg
//   MSG_GET        - Source returnes information about the file into which
//                    image or audio has or will be acquired to. State 4 - 6
//   MSG_GETDEFAULT - Source returnes default information about the file into
//                    which image or audio has or will be acquired to. State 4 - 6
//   MSG_RESET      - Source resets the file information to default and returnes
//                    file information. State 4
//   MSG_SET        - App sets the file information to be used for the next
//                    image or audio transfer. App is responsible for verifying
//                    that the file name is valid.
//                    App is also responsible for requesting a format supported
//                    by the source. State 4 - 6
// Filename         - A valid file name to store acquired image or audio data to.
// Format           - The file format to be used for storing image or audio data.
var AFile     : File;
    Container : TTwnContainer;
    bFiles2   : boolean;
begin
  Result := TWRC_SUCCESS;
  if (Msg = MSG_SET)
  then begin
       // Create the file and close it. If the file cannot be created her, it is
       // assumed that it cannot be created by the Source either.
       // NOTE: A file with the same name will be overriden here!
      {$IFOPT I-} {$DEFINE IOCHECKS_OFF} {$I+} {$ENDIF}
       try
         AssignFile(AFile, FileName);
         Rewrite(AFile, 1);
         if (IOResult <> 0)
         then Result := TWRC_FAILURE;
         CloseFile(AFile);

         // Delete the file just created.
         if FileExists(FileName)
         then DeleteFile(FileName);
       except
         Result := TWRC_EXCEPTION;
       end;
       {$IFDEF IOCHECKS_OFF} {$I-} {$UNDEF IOCHECKS_OFF} {$ENDIF}
  end;

  if (Result = TWRC_SUCCESS)
  then begin
       bFiles2 := False;
       if (FSourceVersion >= 19)
       then begin
            // Source is using protocol 1.9
            Container := FConList.Items[ICAP_XFERMECH];
            if Assigned(Container)
            then if (Container.CurrentValue = TWFX_FILES2)
                 then bFiles2 := True;
       end;
       if bFiles2
       then Result := SetupFileXferB(Msg, FileName, Format)
       else Result := SetupFileXferA(Msg, FileName, Format);

       (*
       if (Result = TWRC_FAILURE) and (DSStatus = TWCC_BADVALUE)
       then begin
            // Error, Either invalid file name or non-supported file format.
            // Source uses default file name and format.
            // Should be handled by application via OnFailure event.
       end;
       *)
  end;
end; { End TmcmTWAINIntf.SetupFileXfer.                                        }


function TmcmTWAINIntf.ImageNativeXfer(var hBmp : TW_MEMREF) : TW_UINT16;
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_IMAGENATIVEXFER,
                     MSG_GET,
                     TW_MEMREF(@hBmp));
end; { End TmcmTWAINIntf.ImageNativeXfer.                                      }


function TmcmTWAINIntf.ImageMemXfer(pMemXfer : pTW_IMAGEMEMXFER;
                                    pMem     : pointer;
                                    Size     : longint;
                                    bitCount : longint;
                                    Width    : longint) : TW_UINT16;
type TLongType = record
                 case Word of
       	         0  : (Ptr  : Pointer);
                 1  : (Long : Longint);
	         2  : (Lo   : Word;
	               Hi   : Word);
                 end;
var Start      : TLongType;
    ToAddr     : TLongType;
    Bits       : TLongType;
    Descramble : TLongType;
    Scramble   : TLongType;
    ToLine     : TLongType;
    FromLine   : TLongType;
    i          : longint;
    LongWidth  : longint;
begin
  Result := TWRC_FAILURE;
  if Assigned(pMem)
  then begin
       if (Size > 0)
       then begin
            LongWidth := (((Longint(Width * BitCount) + 31) div 32) * 4);
            Bits.Ptr   := pMem;
            Start.Long := 0;
            pMemXfer.Memory.Flags  := TWMF_APPOWNS or TWMF_POINTER;
            pMemXfer.Memory.Length := Size;
            repeat
              ToAddr.Long := Bits.Long + Start.Long;
              pMemXfer.Memory.TheMem := ToAddr.Ptr;
              Result := DSMEntry(@FAppIdentity,
                                 @FSourceID,
                                 DG_IMAGE,
                                 DAT_IMAGEMEMXFER,
                                 MSG_GET,
                                 TW_MEMREF(pMemXfer));

              if (Result = TWRC_SUCCESS) or
                 (Result = TWRC_XFERDONE)
              then begin
                   // Ensure that lines are aligned to 32 bit boundary.
                   if (LongWidth <> pMemXfer.BytesPerRow)
                   then begin
                        if (pMemXfer.Rows > 1)
                        then begin
                             FromLine.Long := pMemXfer.BytesWritten - pMemXfer.BytesPerRow;
                             ToLine.Long   := (pMemXfer.Rows - 1) * LongWidth;
                             for i := 0 to (pMemXfer.Rows - 2)
                             do begin
                                Scramble.Long   := ToAddr.Long + FromLine.Long;
                                Descramble.Long := ToAddr.Long + ToLine.Long;
                                CopyMemory(Descramble.Ptr, Scramble.Ptr, pMemXfer.BytesPerRow);
                                ToLine.Long   := ToLine.Long - LongWidth;
                                FromLine.Long := FromLine.Long - pMemXfer.BytesPerRow;
                             end;
                        end;
                        Start.Long := Start.Long + pMemXfer.Rows * LongWidth;
                   end
                   else Start.Long := Start.Long + pMemXfer.BytesWritten;
              end;
            until (Result <> TWRC_SUCCESS)
       end;
  end;
end; { End TmcmTWAINIntf.ImageMemXfer.                                         }


function TmcmTWAINIntf.ImageFileXfer : TW_UINT16;
// Initiate image transfer via file.
// Valid call only in state 6. If call is successful transit to state 7 and
// remain until DAT_PENDINGXFERS / MSG_ENDXFER is sent.
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_IMAGEFILEXFER,
                     MSG_GET,
                     TW_MEMREF(Nil));
  if (Result = TWRC_SUCCESS) or (Result = TWRC_XFERDONE)
  then State := 7
  else State := 6;
end; { End TmcmTWAINIntf.ImageFileXfer.                                        }


function TmcmTWAINIntf.XferGroup(    Msg   : TW_UINT16;
                                 var Group : TW_UINT32) : TW_UINT16;
// Parameters:
// Msg
//   MSG_GET        - Source returnes the Data Groups for the upcoming transfer.
//                    (State 4 - 6)
//   MSG_SET        - An application changes the Data Group to indicate that it
//                    wants to receive any audio associated with the image
//                    (State 6 ONLY).
//                    Note the Data Source must always default to DG_IMAGE.
// Group            - Bitwise combination of the supported Data Groups,
//                    i.e DG_CONTROL, DG_IMAGE, DG_AUDIO.
// Note:              Application should indicate in FAppIdentity.SupportedGroups
//                    which Data (Groups) it is interested in receiving.
var DataGroup : TW_UINT32;
begin
  if (Msg = MSG_SET)
  then DataGroup := Group;
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_CONTROL,
                     DAT_XFERGROUP,
                     Msg,
                     TW_MEMREF(@DataGroup));
  if (Result = TWRC_SUCCESS) and (Msg = MSG_GET)
  then Group := DataGroup;
end; { End TmcmTWAINIntf.XferGroup.                                            }


function TmcmTWAINIntf.PendingXfers(    Msg   : TW_UINT16;
                                    var Count : word) : TW_UINT16;
// case of Msg:
// MSG_ENDXFER    - Sent after complete transfer to mark end of transfer. (State 6-7)
//                  Used to cancel or terminate a transfer. When issued in state
//                  6 the next pending transfer is canceled (pending transfer
//                  count is decremented). In state 7 this call terminates the
//                  current transfer, discarding any data.
// MSG_GET        - DS returns number of images that DS has for transfer. (State 4-7)
// MSG_RESET      - Reset DS image count to zero. (State 6)
// MSG_STOPFEEDER - Stops DS automatic feeder. (State 6)
//
var TWPendingXfers : TW_PENDINGXFERS;
begin
  // Msg = [MSG_ENDXFER, MSG_GET, MSG_RESET]
  TWPendingXfers.Count := 0;
  TWPendingXfers.Reserved := 0;
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_CONTROL,
                     DAT_PENDINGXFERS,
                     Msg,
                     TW_MEMREF(@TWPendingXfers));
  if (Result = TWRC_SUCCESS)
  then begin
       Count := TWPendingXfers.Count;
       if (TWPendingXfers.Count = 0)
       then State := 5
       else State := 6;
  end;
end; { End TmcmTWAINIntf.PendingXfers.                                         }


function TmcmTWAINIntf.AbortXfer(    Msg   : TW_UINT16;
                                 var Count : word) : TW_UINT16;
// AbortXfer aborts either the next image transfer or all images available in DS.
// case of Msg:
// MSG_ENDXFER    - Sent after complete transfer to mark end of transfer. (State 6-7)
// MSG_GET        - DS returns number of images that DS has for transfer. (State 4-7)
// MSG_RESET      - Reset DS image count to zero. (State 6)
// MSG_STOPFEEDER - Stops DS automatic feeder. (State 6)
begin
  // If the next image is to be skipped, but subsequent images are still
  // to be acquired, the PendingXfers will receive the Msg = MSG_ENDXFER,
  // otherwise PendingXfers will receive Msg = MSG_RESET.
  Result := PendingXfers(Msg, Count);
end; { End TmcmTWAINIntf.AbortXfer.                                            }


procedure TmcmTWAINIntf.TransferImage;
{------------------------------------------------------------------------------}
{ FUNCTION: TransferImage                                                      }
{                                                                              }
{ ARGS:    hWnd                                                                }
{                                                                              }
{ RETURNS: none                                                                }
{                                                                              }
{ NOTES: 1). delete any bitmaps laying around                                  }
{        2). mention those who do not want Native need CAP nego. ICAP_XFERMECH }
{        3). get a little information about image, for form, I do not use it.  }
{        4). set up a for form loop to pull image(s) from the Source.          }
{        5). call for GetCompleteImage from Source.                            }
{        6). be sure to send a MSG_ENDXFER as a seperator between images.      }
{        7). after the images are transfered I like to shut down the Source.   }
{                                                                              }
{ COMMENTS: Setup for a transfer in the routine called as a response to        }
{ XFERREADY.  Then has a nested loop do/while on the routine which             }
{ actually pulls in the image.  The routine also deals with the cancel,        }
{ xferdone, success messages from Source.                                      }
{------------------------------------------------------------------------------}
begin
  // Tell the Source what type of transfer you want.
  case FXferMech of
  TWFX_Memory : DoMemTransfer;
  TWFX_Files,
  TWFX_Files2 : DoFileTransfer;
  else DoNativeTransfer;
  end;

  // Transfer is done, keep open, disable or close manager and source ?
  case FAcqFlag of
  TWFG_CLOSE    : begin // Disable, CloseDS, CloseDSM.
                    if (DisableDS = TWRC_SUCCESS)
                    then begin
                         if (CloseDS = TWRC_SUCCESS)
                         then begin
                              if (CloseDSM  = TWRC_SUCCESS)
                              then FAcqFlag := TWFG_NONE  // SUCCESS.
                              else FAcqFlag := TWFG_NONE;
                         end
                         else FAcqFlag := TWFG_NONE;
                    end;
                  end;
  TWFG_DISABLE  : begin // Only Disable for Special...Transfer.
                    if (DisableDS = TWRC_SUCCESS)
                    then FAcqFlag := TWFG_NONE;
                  end;
  TWFG_KEEPOPEN : begin // Do not Disable.
                  end;
  end;
end; { End TmcmTWAINIntf.TransferImage.                                        }


procedure TmcmTWAINIntf.DoOnMemXferBuf(pDibInfo : PBitmapInfo;
                                       pMemXfer : pTW_IMAGEMEMXFER);
begin
  if (pDibInfo <> Nil) and (pMemXfer <> Nil)
  then begin
       if Assigned(FOnMemXferBuf)
       then FOnMemXferBuf(Self,
                          pDibInfo,
                          pMemXfer.BytesPerRow,
                          pMemXfer.Rows,
                          pMemXfer.BytesWritten,
                          pMemXfer^.Memory.TheMem);
  end;
end; { End TmcmTWAINIntf.DoOnMemXferBuf.                                       }


procedure TmcmTWAINIntf.DoOnMemXferSize(pDibInfo  : PBitmapInfo;
                                        pMemSetup : pTW_SETUPMEMXFER);
var PrefSize : integer;
begin
  if (pMemSetup <> Nil) and Assigned(FOnMemXferSize)
  then begin
       with pMemSetup^
       do begin
          PrefSize := Preferred;
          FOnMemXferSize(Self, MinBufSize, MaxBufSize, PrefSize, pDibInfo);
          // Validate preferred buffer size.
          if (PrefSize < MinBufSize)
          then PrefSize := MinBufSize;
          if (PrefSize > MaxBufSize) and (MaxBufSize <> -1)
          then PrefSize := MaxBufSize;
          Preferred := PrefSize;
       end;
  end;
end; { End TmcmTWAINIntf.DoOnMemXferSize.                                      }


procedure TmcmTWAINIntf.DoOnXferNext;
var SaveCount  : integer;
    // pNumImages : ^word;
    SkipNext   : boolean;
begin
  // Notify app that there are more images.
  if Assigned(FOnXferNext)
  then begin
       SaveCount  := FNumImages;
       SkipNext := False;
       FOnXferNext(Self, SaveCount, SkipNext);
       if IsDSOpen
       then begin
            if SkipNext
            then AbortXfer(MSG_ENDXFER, FNumImages)
            else begin
                 if (FNumImages <> SaveCount)
                 then begin
                      if (SaveCount = 0)
                      then begin
                           AbortXfer(MSG_RESET, FNumImages);
                           CloseConnection;
                      end;
                 end;
            end;
       end;
  end;
end; { End TmcmTWAINIntf.DoOnXferNext.                                         }


procedure TmcmTWAINIntf.DoNativeTransfer;
{------------------------------------------------------------------------------}
{ DoNativeTransfer -                                                           }
{------------------------------------------------------------------------------}
var twRC     : TW_UINT16;
    hBmpRaw  : THandle;   // handle to bitmap from Source to ret to App
    hDibSec  : HBitmap;
    pDib     : Pointer;
    pDibInfo : PBitmapInfo;
begin
  // Do until there are no more pending transfers
  // explicitly initialize the our flags
  FNumImages := 0;
  repeat
     twRC := ImageNativeXfer(TW_MEMREF(hBmpRaw));
     case twRC of
     TWRC_XFERDONE : begin
                       // Session is in State 7
                       // Acknowledge the end of the transfer.
                       // and transition to state 6/5.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                       then CloseConnection;

                       pDib     := Nil;
                       pDibInfo := Nil;
                       hDibSec  := 0;

                       if (hBmpRaw >= THANDLE(TWN_VALID_HANDLE))
                       then begin
                            // If DIBHandleType is THDT_DIBHANDLE or THDT_DIBSEC
                            // convert the returned raw bitmap handle (memory
                            // stream).
                            case FHandleType of
                            THDT_DIBHANDLE : begin
                                               ConvertRaw2Sec(hBmpRaw, pDib, pDibInfo, hDibSec);
                                               FOnImageReady(Self, Nil, Nil, hDibSec, '')
                                             end;
                            THDT_DIBSEC    : begin
                                               ConvertRaw2Sec(hBmpRaw, pDib, pDibInfo, hDibSec);
                                               FOnImageReady(Self, pDib, pDibInfo, hDibSec, '')
                                             end;
                            // THDT_DIBRAW
                            else FOnImageReady(Self, Nil, Nil, hBmpRaw, '');
                            end;
                       end
                       else FOnImageReady(Self, Nil, Nil, 0, '');

                       if (pDibInfo <> Nil)
                       then FreeMem(pDibInfo);
                     end;
     // The user canceled or wants to rescan the image something wrong, abort
     // the transfer and delete the image pass a Nil ptr back to App.
     TWRC_CANCEL   : begin
                       // Session is in State 7
                       // Source (or User) Canceled Transfer
                       // transistion to state 6/5.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                       then CloseConnection;
                       FOnImageReady(Self, Nil, Nil, 0, '');
                     end;
     // TWRC_FAILURE,
     else            begin
                       // Session is in State 6.
                       // The transfer failed.
                       // Abort the image.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0)
                       then CloseConnection;
                       FOnImageReady(Self, Nil, Nil, 0, '');
                     end;
     end;

     // Another image is ready for scanning. Notify app.
     DoOnXferNext;
     if (FNumImages = 0)
     then begin
          // Close the DSM and DS.
          if IsDSOpen and (FAcqFlag = TWFG_CLOSE)
          then CloseConnection;
     end;
  until (FNumImages = 0) or Not(IsDSOpen);
end; { End TmcmTWAINIntf.DoNativeTransfer.                                     }


procedure TmcmTWAINIntf.DoFileTransfer;
{------------------------------------------------------------------------------}
{ DoFileTransfer --                                                            }
{------------------------------------------------------------------------------}
var twRC     : TW_UINT16;
    hBmpRaw  : THandle;
    hDibSec  : HBitmap;
    pDib     : Pointer;
    pDibInfo : PBitmapInfo;
begin
  // Do until there are no more pending transfers.
  // explicitly initialize the our flags
  FNumImages := 0;
  repeat
     // Setup file transfer.
     twRC := SetupFileXfer(MSG_SET, FFileName, FPrefFormat);

     // Initiate File Transfer.
     if (twRC = TWRC_SUCCESS)
     then twRC := ImageFileXfer;

     case twRC of
     TWRC_XFERDONE : begin
                       // Successful Transfer.
                       // Read the bitmap header and verify the transfer is a
                       // valid bmp and create a handle to that bitmap
                       hBmpRaw  := 0;
                       hDibSec  := 0;
                       pDib     := Nil;
                       pDibInfo := Nil;
                       if FFileAsDIB and (FPrefFormat = TWFF_BMP)
                       then begin
                            // Read bitmap image from disk.
                            case FHandleType of
                            THDT_DIBRAW    : LoadDibRaw(FFilename, hBmpRaw);
                            THDT_DIBSEC,
                            THDT_DIBHANDLE : LoadDibSec(FFilename, pDib, pDibInfo, hDibSec);
                            end;
                            // Delete returned file.
                            if ((hBmpRaw <> 0) or (hDibSec <> 0)) and FileExists(FFileName)
                            then DeleteFile(FFileName);
                       end;

                       // Acknowledge the end of the transfer and transition to
                       // state 6/5.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                       then CloseConnection;

                       if (hBmpRaw <> 0) or (hDibSec <> 0)
                       then begin
                            case FHandleType of
                            THDT_DIBRAW    : FOnImageReady(Self, Nil, Nil, hBmpRaw, '');
                            THDT_DIBSEC    : FOnImageReady(Self, pDib, pDibInfo, hBmpRaw, '');
                            THDT_DIBHANDLE : FOnImageReady(Self, Nil, Nil, hDibSec, '');
                            end;
                       end
                       else FOnImageReady(Self, Nil, Nil, 0, FFileName);

                       if (pDibInfo <> Nil)
                       then FreeMem(pDibInfo);
                     end;
     // The user canceled or wants to rescan the image something wrong, abort
     // the transfer and delete the image pass a Nil ptr back to App.
     TWRC_CANCEL   : begin
                       // The Source is in state 7 transistion to state 6/5.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                       then CloseConnection;
                       FOnImageReady(Self, Nil, Nil, 0, '');
                     end;
     // TWRC_FAILURE,
     else            begin
                       // The transfer failed.

                       // Abort the image.
                       PendingXfers(MSG_ENDXFER, FNumImages);

                       // Close the DSM and DS.
                       if (FNumImages = 0)
                       then CloseConnection;
                       FOnImageReady(Self, Nil, Nil, 0, '');
                     end;
     end;

     // Another image is ready for scanning. Notify app.
     DoOnXferNext;
     if (FNumImages = 0)
     then begin
          // Close the DSM and DS.
          if IsDSOpen and (FAcqFlag = TWFG_CLOSE)
          then CloseConnection;
     end;
  until (FNumImages = 0);
end; { End TmcmTWAINIntf.DoFileTransfer.                                       }


procedure TmcmTWAINIntf.DoMemTransfer;
{------------------------------------------------------------------------------}
{ DoMemTransfer -                                                              }
{------------------------------------------------------------------------------}
var twRC          : TW_UINT16;
    hBmpRaw       : THandle;
    hDibSec       : HBitmap;
    pDibSec       : Pointer;
    pDibInfo      : PBitmapInfo;
    MemXfer       : TW_IMAGEMEMXFER;
    MemSetup      : TW_SETUPMEMXFER;
    info          : TW_IMAGEINFO;
    ImageSize     : TW_UINT32;
    pPalette      : PLogPalette;
    PalType       : word;
    PixelType     : word;            // A TWPT_xxx
    PixelFlavor   : TW_UINT16;
    ResUnits      : TW_UINT16;
    XRes, YRes    : real;
    blocks        : integer;
    NoColors      : longint;
    LongWidth     : longint;
    Start         : TLongType;
    ToAddr        : TLongType;
    Bits          : TLongType;
begin
  // Do until there are no more pending transfers explicitly initialize the our
  // flags.
  FNumImages := 0;
  repeat
    // Get Image Information from source.
    twRC := ImageInfoA(@Info);

    if (twRC = TWRC_SUCCESS)
    then begin
         PixelType := Info.PixelType;

         // Limited to 256 colors in Palette.
         LongWidth := (((Longint(Info.ImageWidth * Info.BitsPerPixel) + 31) div 32) * 4);
         ImageSize := LongWidth * Info.ImageLength;
         if (Info.BitsPerPixel <= 8)
         then NoColors := 1 shl Info.BitsPerPixel
         else NoColors := 0;

	 // Make the size an integral of the preferred transfer size.
         twRC := SetupMemXfer(@MemSetup);

         // Create DIB Header based on info from the data source.
         hBmpRaw  := 0;
         hDibSec  := 0;
         pDibSec  := Nil;
         pDibInfo := Nil;
         if (twRC = TWRC_SUCCESS)
         then begin
              try
                GetMem(pDibInfo, SizeOf(TBitmapInfoHeader) + NoColors * SizeOf(TRGBQUAD));
              except
                On E:EOutOfMemory
                do begin
                   pDibInfo := Nil;
                   // ShowMessage(E.Message);
                end;
              end;
         end;

         if (pDibInfo = Nil)
         then begin // GlobalAlloc Failed.
              {$IFDEF TWNDEBUG}
                LogMessage('#M DoMemTransfer, Failed allocating memory for image.');
              {$ENDIF}
         end
         else begin // Lock the Memory.
              // Fill in the image information.
              FillChar(pDibInfo^, SizeOf(TBitmapInfoHeader), 0);
              pDibInfo^.bmiHeader.biSize        := SizeOf(TBITMAPINFOHEADER);
              pDibInfo^.bmiHeader.biWidth       := Info.ImageWidth;
              pDibInfo^.bmiHeader.biHeight      := Info.ImageLength;
              pDibInfo^.bmiHeader.biPlanes      := 1; // Only 1 is supported.
              pDibInfo^.bmiHeader.biBitCount    := Info.BitsPerPixel;

              // This application does not support compression.
              pDibInfo^.bmiHeader.biCompression := BI_RGB;
              pDibInfo^.bmiHeader.biSizeImage   := ImageSize;

              // Get Units and calculate PelsPerMeter.
              ResUnits := GetUnits;
              if (DSResult <> TWRC_SUCCESS)
              then begin
                   pDibInfo^.bmiHeader.biXPelsPerMeter := 0;
                   pDibInfo^.bmiHeader.biYPelsPerMeter := 0;
              end
              else begin
                   XRes := FIX32ToFloat(Info.XResolution);
                   YRes := FIX32ToFloat(Info.YResolution);
                   try
                     case ResUnits of
                     TWUN_INCHES      : with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round(XRes * 100.0 / 2.54);
                                           biYPelsPerMeter := Round(YRes * 100.0 / 2.54);
                                        end;
                     TWUN_CENTIMETERS : with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round(XRes * 100);
                                           biYPelsPerMeter := Round(YRes * 100);
                                        end;
                     TWUN_PICAS       : with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round((XRes * 100.0 / 2.54) * 6.0);
                                           biYPelsPerMeter := Round((YRes * 100.0 / 2.54) * 6.0);
                                        end;
                     TWUN_POINTS      : with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round((XRes * 100.0 / 2.54) * 72.0);
                                           biYPelsPerMeter := Round((YRes * 100.0 / 2.54) * 72.0);
                                        end;
                     TWUN_TWIPS       : with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round((XRes * 100.0 / 2.54) * 1440.0);
                                           biYPelsPerMeter := Round((YRes * 100.0 / 2.54) * 1440.0);
                                        end;
                     // TWUN_PIXELS
                     else               with pDibInfo^.bmiHeader
                                        do begin
                                           biXPelsPerMeter := Round(300.0 * 100.0 / 2.54);
                                           biYPelsPerMeter := Round(300.0 * 100.0 / 2.54);
                                        end;
                     end;
                   except
                     On E:Exception
                     do begin
                        with pDibInfo^.bmiHeader
                        do begin
                           biXPelsPerMeter := Round(300.0 * 100.0 / 2.54);
                           biYPelsPerMeter := Round(300.0 * 100.0 / 2.54);
                        end;
                     end;
                   end;
              end; // End DibInfo

              // Get CAP_PIXELFLAVOR to determine colors filled
              // in the palette information.

              // (PixelFlavor = TWPF_CHOCOLATE) -> Black = 0.
              // (PixelFlavor = TWPF_VANILLA)   -> White = 0.
              PixelFlavor := GetPixelFlavor;
              if (DSResult <> TWRC_SUCCESS)
              then PixelFlavor := TWPF_CHOCOLATE;

              // Setup Palette -- if the palettes are B/W or shades of gray,
              // the color table is built here.  If the image is 8 bit color,
              // a call to the source is made to retrieve the correct set of
              // colors.  If the call fails, the color table is constructed
              // with 256 shades of gray inorder to provide some image
              // reference

              GetMem(pPalette, SizeOf(TLogPalette) + 256 * SizeOf(TPaletteEntry));
              try
                case PixelType of
                TWPT_BW      : begin
                                 pDibInfo^.bmiHeader.biClrUsed := 2;
                                 pDibInfo^.bmiHeader.biClrImportant := 0;
                                 FillDibInfoPal(NoColors, PixelFlavor, Nil, pDibInfo);
                               end;
                TWPT_GRAY    : begin
                                 pDibInfo^.bmiHeader.biClrUsed := NoColors;
                                 FillDibInfoPal(NoColors, PixelFlavor, Nil, pDibInfo);
                               end;
                TWPT_RGB     : pDibInfo^.bmiHeader.biClrUsed := 0;
                TWPT_PALETTE : begin // (TWPT_PALETTE) fill the palette information.
                                 if (Palette8(pPalette, PalType, MSG_GET) = TWRC_SUCCESS)
                                 then FillDibInfoPal(NoColors, PixelFlavor, pPalette, pDibInfo)
                                 else FillDibInfoPal(NoColors, PixelFlavor, Nil, pDibInfo);
                               end;
                {
                TWPT_CMY
                TWPT_CMYK
                TWPT_YUV
                TWPT_YUVK
                TWPT_CIEXYZ
                }
                else           begin
                               end;
                end; // end case (PixelType).
              finally
                FreeMem(pPalette);
              end;

              blocks    := ImageSize div MemSetup.Preferred;
              ImageSize := (blocks + 1) * MemSetup.Preferred;

              // Negotiate transfer block size. Note, this condition must be
              // meet (MinBufSize <= Preferred <= MaxBufSize)
              // Preferred equals the transfer buffer size.
              DoOnMemXferSize(pDibInfo, @MemSetup);

              // Allocate memory to hold the incomming image.
              case FHandleType of
              THDT_DIBSEC,
              THDT_DIBHANDLE : CreateDIB(pDibInfo, pDibSec, hDibSec);
              THDT_MEMPTR    : begin
                                 // Send Message containing Image header (Info + Palette).
                                 // The receiver must assign pDib to allocated
                                 // memory, large enough to receive MemSetup.Preferred
                                 // bytes.
                                 FillChar(MemXfer, SizeOf(TW_IMAGEMEMXFER), 0);
                                 DoOnMemXferBuf(pDibInfo, @MemXfer);

                                 // pDib is used to test for a valid pointer below.
                                 pDibSec := MemXfer.Memory.TheMem;
                               end;
              // THDT_DIBRAW
              else             begin
                                 hBmpRaw := GlobalAlloc(GHND, ImageSize +
                                                        SizeOf(TBitmapInfoHeader) +
                                                        NoColors * SizeOf(TRGBQUAD));
                                 if (hBmpRaw <> 0)
                                 then pDibSec := PBitmapInfo(GlobalLock(hBmpRaw));
                               end;
              end; // End case.
         end;

         if (pDibSec <> Nil) and (pDibInfo <> Nil)
         then begin
              if (FHandleType = THDT_MEMPTR)
              then begin // Transfer the data - loop until done or canceled.
                   MemXfer.Memory.Flags  := TWMF_APPOWNS or TWMF_POINTER;
                   MemXfer.Memory.Length := MemSetup.Preferred;
                   repeat
                     if (MemXfer.Memory.TheMem = Nil)
                     then twRC := TWRC_CANCEL
                     else begin
                          twRC := DSMEntry(@FAppIdentity,
                                           @FSourceID,
                                           DG_IMAGE,
                                           DAT_IMAGEMEMXFER,
                                           MSG_GET,
                                           TW_MEMREF(@MemXfer));
                          DoOnMemXferBuf(pDibInfo, @MemXfer);
                     end;
                   until (twRC <> TWRC_SUCCESS);
                   // Used as indication of end of transfer.
                   MemXfer.Memory.Flags := 0;
                   MemXfer.Columns      := 0;
                   MemXfer.Rows         := 0;
                   MemXfer.BytesWritten := 0;
                   DoOnMemXferBuf(pDibInfo, @MemXfer);
              end
              else begin // Transfer the data.
                   // Locate the start of the bitmap data
                   Bits.Ptr := pDibSec;
                   if (FHandleType = THDT_DIBRAW)
                   then begin
                        Start.Long := SizeOf(TBITMAPINFOHEADER);
                        Start.Long := Start.Long + longint(pDibInfo^.bmiHeader.biClrUsed) * SizeOf(TRGBQUAD);
                   end
                   else Start.Long := 0;
                   ToAddr.Long := Bits.Long + Start.Long;
                   twRC := ImageMemXfer(@MemXfer,
                                        ToAddr.Ptr,
                                        MemSetup.Preferred,
                                        longint(Info.BitsPerPixel),
                                        longint(Info.ImageWidth));
              end;

              case twRC of
              TWRC_XFERDONE : begin // Successful Transfer.
                                // Acknowledge the end of the transfer
                                // and transition to state 6/5
                                PendingXfers(MSG_ENDXFER, FNumImages);

                                // Close the DSM and DS.
                                if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                                then CloseConnection;

                                if (FHandleType <> THDT_MEMPTR)
                                then begin
                                     // A memory transfer from a source
                                     // will be the reverse (RGB image only)
                                     // and needs to be flipped.
                                     if FMemFlipBmp
                                     then begin
                                          Bits.Ptr := pDibSec;
                                          if (FHandleType <> THDT_DIBSEC) and
                                             (FHandleType <> THDT_DIBHANDLE)
                                          then begin
                                               Start.Long := SizeOf(TBITMAPINFOHEADER);
                                               Start.Long := Start.Long + longint(pDibInfo^.bmiHeader.biClrUsed) * SizeOf(TRGBQUAD);
                                          end
                                          else Start.Long := 0;
                                          ToAddr.Long := Bits.Long + Start.Long;

                                          FlipBitmap(ToAddr.Ptr, pDibInfo, PixelType);
                                     end;

                                     case FHandleType of
                                     THDT_DIBRAW    : begin
                                                        CopyMemory(pDibSec,
                                                                   pDibInfo,
                                                                   SizeOf(TBitmapInfoHeader) +
                                                                   NoColors * SizeOf(TRGBQUAD));
                                                                   GlobalUnlock(hBmpRaw);
                                                        FOnImageReady(Self, Nil, Nil, hBmpRaw, '');
                                                      end;
                                     THDT_DIBHANDLE : FOnImageReady(Self, Nil, Nil, hDibSec, '');
                                     THDT_DIBSEC    : FOnImageReady(Self, pDibSec, pDibInfo, hDibSec, '');
                                     end;
                                end;
                                // else FOnImageReady(Self, Nil, Nil, 0, '');
                              end;
              TWRC_CANCEL   : begin
                                if (hBmpRaw <> 0)
                                then begin
                                     GlobalUnlock(hBmpRaw);
                                     GlobalFree(hBmpRaw);
                                end;
                                if (hDibSec <> 0)
                                then DeleteObject(hDibSec);

                                // The Source is in state 7
                                // transistion to state 6/5
                                PendingXfers(MSG_ENDXFER, FNumImages);

                                // Close the DSM and DS.
                                if (FNumImages = 0) and (FAcqFlag = TWFG_CLOSE)
                                then CloseConnection;
                                FOnImageReady(Self, Nil, Nil, 0, '');
                              end;
              TWRC_FAILURE  : begin
                                if (hBmpRaw <> 0)
                                then begin
                                     GlobalUnlock(hBmpRaw);
                                     GlobalFree(hBmpRaw);
                                end;
                                if (hDibSec <> 0)
                                then DeleteObject(hDibSec);

                                // The transfer failed.
                                // Enhancement: Check Condition Code
                                // and attempt recovery.
                                PendingXfers(MSG_ENDXFER, FNumImages);

                                // close the DSM and DS.
                                if (FNumImages = 0)
                                then CloseConnection;
                                FOnImageReady(Self, Nil, Nil, 0, '');
                              end;
              else            begin
                                if (hBmpRaw <> 0)
                                then begin
                                     GlobalUnlock(hBmpRaw);
                                     GlobalFree(hBmpRaw);
                                end;
                                if (hDibSec <> 0)
                                then DeleteObject(hDibSec);

                                // Abort the image.
                                PendingXfers(MSG_ENDXFER, FNumImages);

                                // Close the DSM and DS.
                                if (FNumImages = 0)
                                then CloseConnection;
                                FOnImageReady(Self, Nil, Nil, 0, '');
                              end;
              end;
         end;
         if (pDibInfo <> Nil)
         then FreeMem(pDibInfo);
    end
    else FNumImages := 0;

    // Another image is ready for scanning. Notify app.
    DoOnXferNext;
    if (FNumImages = 0)
    then begin
         // Close the DSM and DS.
         if IsDSOpen and (FAcqFlag = TWFG_CLOSE)
         then CloseConnection;
    end;
  until (FNumImages = 0);
end; { End TmcmTWAINIntf.DoMemTransfer.                                        }


function TmcmTWAINIntf.GetSwapMemRGB : boolean;
begin
  Result := FMemFlipBmp;
end; { End TmcmTWAINIntf.GetSwapMemRGB.                                        }


procedure TmcmTWAINIntf.SetSwapMemRGB(Value : boolean);
begin
  FMemFlipBmp := Value;
end; { End TmcmTWAINIntf.SetSwapMemRGB.                                        }


procedure TmcmTWAINIntf.FillDibInfoPal(NumColors : integer;
                                       Flavor    : word;
                                       pPalette  : PLogPalette;
                                       pDibInfo  : PBitmapInfo);
var i      : integer;
    Step   : integer;
    iColor : integer;
begin
  if (0 < NumColors) and (NumColors <= 256)
  then begin
       if (pPalette <> Nil)
       then begin
            for i := 0 to (NumColors - 1)
            do begin
               pDibInfo^.bmiColors[i].rgbRed      := pPalette.palPalEntry[i].peRed;
               pDibInfo^.bmiColors[i].rgbGreen    := pPalette.palPalEntry[i].peGreen;
               pDibInfo^.bmiColors[i].rgbBlue     := pPalette.palPalEntry[i].peBlue;
               pDibInfo^.bmiColors[i].rgbReserved := 0;
            end;
       end
       else begin
            case NumColors of
            2  : Step := 256;
            16 : Step := 16;
            else Step := 1;
            end;
            for i := 0 to (NumColors - 1)
            do begin
               iColor := i * Step;
               if (iColor > 1) and (Step > 1)
               then dec(iColor);
               if (Flavor = TWPF_VANILLA)
               then iColor := 255 - iColor;
               pDibInfo^.bmiColors[i].rgbRed      := iColor;
               pDibInfo^.bmiColors[i].rgbGreen    := iColor;
               pDibInfo^.bmiColors[i].rgbBlue     := iColor;
               pDibInfo^.bmiColors[i].rgbReserved := 0;
            end;
       end;
  end;
end; { End TmcmTWAINIntf.FillPalette.                                          }


function TmcmTWAINIntf.ConvertRaw2Sec(var hBmpRaw  : THandle;
                                      var pDib     : pointer;
                                      var pDibInfo : PBitmapInfo;
                                      var hDibSec  : HBitmap) : boolean;
// ConvertRaw2Sec converts the bitmap handle returned by a DS in Native mode.
//
var StartS         : TLongType;
    ToAddrS        : TLongType;
    BitsS          : TLongType;
    StartT         : TLongType;
    ToAddrT        : TLongType;
    BitsT          : TLongType;
    Count          : longint;

    pMem           : pointer;     // Pointer to returned image.
    pBmpInfoHeader : pBitmapInfoHeader;
    pBmpih         : pBitmapInfoHeader;
    pBmpch         : pBitmapCoreHeader;
    PalSize        : longint;     // Palette size.
    RGBPalOfs      : longint;     // RGB (True color 24 bit) palette offset.
    NoBits         : word;        // Number of bits per color.
    HeaderSize     : longint;     // Bitmap header size.
    LongWidth      : longint;     // Long image line width.
begin
  pDib     := Nil;
  pDibInfo := Nil;
  if (hBmpRaw <> 0)
  then begin
       // Convert the hBmpRaw handle to a DIB Section (HBitmap).
       pMem := GlobalLock(hBmpRaw);
       if (pMem <> Nil)
       then begin
            pBmpInfoHeader := pMem;
            pBmpih := pBitmapInfoHeader(pBmpInfoHeader);
            pBmpch := pBitmapCoreHeader(pBmpInfoHeader);

            // Get number of bit per pixel.
            if (pBmpih^.biSize <> SizeOf(TBitmapCoreHeader))
            then NoBits := pBmpih^.biBitCount * pBmpih^.biPlanes
            else NoBits := pBmpch^.bcBitCount;

            // Determine Palette size (number of colours).
            RGBPalOfs := 0;
            case NoBits of
             1 :  PalSize := 2;
             4 :  PalSize := 16;
             8 :  PalSize := 256;
            24 : begin
                   PalSize := 0;
                   if (pBmpInfoHeader^.biClrUsed > 0)
                   then RGBPalOfs := 4 * pBmpInfoHeader^.biClrUsed;
                   pBmpInfoHeader^.biClrUsed := 0;
                 end;
            else PalSize := 0;
            end;

            // Create bitmap info header.
            HeaderSize := SizeOf(TBitmapInfoHeader) + PalSize * SizeOf(TRGBQuad);
            GetMem(pDibInfo, HeaderSize);

            if (pDibInfo <> Nil)
            then begin
                 // Copy bitmap info header.
                 CopyMemory(pDibInfo, pMem, HeaderSize);

                 // Fix-up bitmap info header.
                 with pDibInfo^.bmiHeader
                 do begin
                    biClrUsed := 0;

                    // Ensure proper resolution information.
                    // If resolution is "zero" set it to 300 dpi.
                    if (biXPelsPerMeter <= 0)
                    then if (biYPelsPerMeter > 0)
                         then biXPelsPerMeter := biYPelsPerMeter
                         else biXPelsPerMeter := round(30000.0 / 2.54);
                    if (biYPelsPerMeter <= 0)
                    then if (biXPelsPerMeter > 0)
                         then biYPelsPerMeter := biXPelsPerMeter
                         else biYPelsPerMeter := round(30000.0 / 2.54);

                    // Calc. Long Width of Line.
                    LongWidth := (((abs(biWidth) * biBitCount) + 31) div 32) * 4;
                    if (biSizeImage = 0)
                    then biSizeImage := LongWidth * abs(biHeight);
                 end;

                 // Move bitmap to top of memory array.
                 StartS.Long := 0;
                 BitsS.Ptr   := pMem;
                 inc(StartS.Long, HeaderSize);
                 inc(StartS.Long, RGBPalOfs);
                 ToAddrS.Long := BitsS.Long + StartS.Long;

                 // Create a DIBitmap that the canvas can show.
                 CreateDIB(pDibInfo, pDib, hDibSec);
                 if (hDibSec <> 0)
                 then begin
                      // Copy bitmap data.
                      BitsT.Ptr   := pDib;
                      StartT.Long := 0;
                      if (BitsT.Ptr <> nil) and (BitsS.Ptr <> nil)
                      then begin
                           Count := pDibInfo^.bmiHeader.biSizeImage;
                           while (Count > 0)
                           do begin
                              // Move upto 32K at a time.
                              if (Count  > $8000)
                              then Count := $8000;
                              ToAddrS.Long := BitsS.Long + StartS.Long;
                              ToAddrT.Long := BitsT.Long + StartT.Long;
                              CopyMemory(ToAddrT.Ptr, ToAddrS.Ptr, Count);
                              StartS.Long := StartS.Long + Count;
                              StartT.Long := StartT.Long + Count;
                              Count       := longint(pDibInfo^.bmiHeader.biSizeImage) - StartT.Long;

                              // Application.ProcessMessages;
                           end;
                      end;
                 end;
                 // Release memory for pBmpInfo
                 // FreeMem(pBmpInfo, HeaderSize);
            end;

            // Unlock returned bitmap handle.
            GlobalUnlock(hBmpRaw);
       end;
       GlobalFree(hBmpRaw);
       hBmpRaw := 0;
  end;
  Result := (hDibSec <> 0);
end; { End TmcmTWAINIntf.ConvertRaw2Sec.                                       }


function TmcmTWAINIntf.LoadDibRaw(    Filename : string;
                                  var hBmpRaw  : THandle) : boolean;
// LoadDibRaw reads the bitmap from disk into a THandle.
var AFile          : File;
    FileHeader     : TBitmapFileHeader;
    BytesToRead    : integer;
    Count          : integer;
    Bits           : TLongType;
    Start          : TLongType;
    ToAddr         : TLongType;
begin
  Result := False;
  {$IFOPT I-} {$DEFINE IOCHECKS_OFF} {$I+} {$ENDIF}
  try
    AssignFile(AFile, FileName);
    try
      System.Reset(AFile, 1);
      if (IOResult = 0)
      then begin
           // Read bitmap image from disk.
           BlockRead(AFile, FileHeader, SizeOf(TBitmapFileHeader));
           hBmpRaw := GlobalAlloc(GHND, FileHeader.bfSize);
           if (hBmpRaw <> 0)
           then begin
                Bits.Ptr   := GlobalLock(hBmpRaw);
                Start.Long := 0;
                Count := FileHeader.bfSize - SizeOf(TBitmapFileHeader);
                while (Count > 0)
                do begin
                   ToAddr.Long := Bits.Long + Start.Long;
                   BytesToRead := $8000;
                   if (BytesToRead > Count)
                   then BytesToRead := Count;
                   BlockRead(AFile, ToAddr.Ptr^, BytesToRead);
                   Count      := Count - BytesToRead;
                   Start.Long := Start.Long + BytesToRead;
                end;
                GlobalUnlock(hBmpRaw);
                Result := True;
           end;
      end;
    except
      // Result := TWRC_EXCEPTION;
    end;
  finally
    CloseFile(AFile);
  end;
  {$IFDEF IOCHECKS_OFF} {$I-} {$UNDEF IOCHECKS_OFF} {$ENDIF}
end; { End TmcmTWAINIntf.LoadDibRaw.                                           }


function TmcmTWAINIntf.LoadDibSec(    Filename : string;
                                  var pDib     : pointer;
                                  var pDibInfo : PBitmapInfo;
                                  var hDibSec  : HBitmap) : boolean;
var AFile          : File;
    FileHeader     : TBitmapFileHeader;
    BytesToRead    : longint;
    Count          : longint;
    Bits           : TLongType;
    Start          : TLongType;
    ToAddr         : TLongType;
    HeaderSize     : integer;
    bitCount       : integer;
    NumColors      : integer;
    LongWidth      : integer;
begin
  Result   := False;
  pDib     := Nil;
  pDibInfo := Nil;
  {$IFOPT I-} {$DEFINE IOCHECKS_OFF} {$I+} {$ENDIF}
  try
    AssignFile(AFile, FileName);
    try
      Reset(AFile, 1);
      if (IOResult = 0)
      then begin
           // Read bitmap image from disk.
           BlockRead(AFile, FileHeader, SizeOf(TBitmapFileHeader));

           HeaderSize := SizeOf(TBitmapInfo);
           GetMem(pDibInfo, HeaderSize);

           if (pDibInfo <> Nil)
           then begin
                BlockRead(AFile, pDibInfo^.bmiHeader, SizeOf(TBitmapInfoHeader));

                with pDibInfo^.bmiHeader
                do bitCount := biPlanes * biBitCount;
                NumColors := 0;
                if (bitCount <= 8)
                then NumColors := 1 shl bitCount
                else if (pDibInfo^.bmiHeader.biClrUsed > 0)
                     then NumColors := pDibInfo^.bmiHeader.biClrUsed;

                if (NumColors > 0)
                then begin
                     HeaderSize := SizeOf(TBitmapInfo) + NumColors * SizeOf(TRGBQuad);
                     ReallocMem(pDibInfo, HeaderSize);

                     // Read palette.
                     BlockRead(AFile, pDibInfo^.bmiColors, NumColors * SizeOf(TRGBQuad));
                end;

                with pDibInfo^.bmiHeader
                do begin
                   LongWidth := (((longint(abs(biWidth) * bitCount) + 31) div 32) * 4);
                   biSizeImage := LongWidth * abs(biHeight);
                end;

                CreateDIB(pDibInfo, pDib, hDibSec);
                if (hDibSec <> 0)
                then begin
                     // Go to beginning of bitmap data in file.
                     Seek(AFile, FileHeader.bfOffBits);
                     Bits.Ptr   := pDib;
                     Start.Long := 0;
                     Count := pDibInfo^.bmiHeader.biSizeImage;
                     while (Count > 0)
                     do begin
                        ToAddr.Long := Bits.Long + Start.Long;
                        BytesToRead := $8000;
                        if (BytesToRead > Count)
                        then BytesToRead := Count;
                        BlockRead(AFile, ToAddr.Ptr^, BytesToRead);
                        Start.Long := Start.Long + BytesToRead;
                        Count := longint(pDibInfo^.bmiHeader.biSizeImage) - Start.Long;
                     end;
                     Result := True;
                end;
           end;
      end;
    except
      // Result := TWRC_EXCEPTION;
    end;
  finally
    // if (pBmpInfo <> Nil)
    // then FreeMem(pBmpInfo, HeaderSize);
    CloseFile(AFile);
  end;
  {$IFDEF IOCHECKS_OFF} {$I-} {$UNDEF IOCHECKS_OFF} {$ENDIF}
end; { End TmcmTWAINIntf.LoadDibSec.                                           }


procedure TmcmTWAINIntf.FlipBitmap(pDib     : PVectorB;
                                   pDibInfo : PBitmapInfo;
                                   PixType  : TW_INT16);
{------------------------------------------------------------------------------}
{ FlipBitmap - Takes a memory transfer buffer and changes it to a DIB format   }
{                                                                              }
{    i.e.    Memory Format                                                     }
{                         1  2  3  4  5                                        }
{                         6  7  8  9 10                                        }
{                        11 12 13 14 15                                        }
{                                                                              }
{            DIB bitmap Format                                                 }
{                        11 12 13 14 15                                        }
{                         6  7  8  9 10                                        }
{                         1  2  3  4  5                                        }
{                                                                              }
{    Memory RGBQuad order: RGB                                                 }
{    Windows DIB RGBQuad order: BGR                                            }
{                                                                              }
{ MCM 210996, This procedure was re-written in order to use less memory while  }
{ flipping the bitmap.                                                         }
{                                                                              }
{------------------------------------------------------------------------------}
var hBmpT       : THandle;
    pBmpT       : PVectorB;
    hBmpB       : THandle;
    pBmpB       : PVectorB;
    Height      : longint;
    BitCount    : word;
    Offset      : longint;
    pixels      : TW_UINT16;
    i, j, y     : TW_UINT32;
    SaveRed     : byte;

    LongWidth   : longint;
    StartT      : TLongType;
    ToAddrT     : TLongType;
    BitsT       : TLongType;
    // BitsW       : PVectorW;
    // BitsL       : PVectorL;

    StartB      : TLongType;
    ToAddrB     : TLongType;
    BitsB       : TLongType;
begin
  with pDibInfo^.bmiHeader
  do begin
     Height     := biHeight;
     BitCount   := biBitCount * biPlanes;
     LongWidth  := (((biWidth * bitCount) + 31) div 32) * 4;
  end;

  hBmpT := GlobalAlloc(GHND, LongWidth);
  hBmpB := GlobalAlloc(GHND, LongWidth);
  if (hBmpT <> 0) and
     (hBmpB <> 0)
  then begin
       pBmpT     := GlobalLock(hBmpT);
       pBmpB     := GlobalLock(hBmpB);

       BitsT.Ptr := pDib;
       BitsB.Ptr := pDib;

       // Calculate Offset to start of the bitmap data.
       Offset := 0;

       StartT.Long := Offset;
       StartB.Long := Offset + (LongWidth * (Height - 1));

       if (PixType = TWPT_RGB)
       then begin
            Pixels := TW_UINT16(pDibInfo^.bmiHeader.biWidth);

            // Flip image vertically.
            for y := 0 to ((Height - 1) div 2)
            do begin
               ToAddrT.Long := BitsT.Long + StartT.Long;
               ToAddrB.Long := BitsB.Long + StartB.Long;

               CopyMemory(pBmpT, ToAddrT.Ptr, LongWidth);
               CopyMemory(pBmpB, ToAddrB.Ptr, LongWidth);

               case bitCount of
               15 : begin // 5 Bits per channel, MSB not used.
                    end;
               16 : begin // 5-6-5 Bits per channel
                    end;
               24 : begin // 8 Bits per channel
                      for i := 0 to (Pixels - 1)
                      do begin
                         // Switch Red byte and Blue byte.
                         j := i * 3;
                         {$IFOPT R+} {$DEFINE RANGE_CHECKING} {$R-} {$ENDIF}
                           SaveRed     := pBmpT^[j];
                           pBmpT^[j]   := pBmpT^[j+2];
                           pBmpT^[j+2] := SaveRed;

                           SaveRed     := pBmpB^[j];
                           pBmpB^[j]   := pBmpB^[j+2];
                           pBmpB^[j+2] := SaveRed;
                         {$IFDEF RANGE_CHECKING} {$R+} {$UNDEF RANGE_CHECKING} {$ENDIF}
                      end;
                    end;
               30 : begin // 10 Bits per channel
                    end;
               36 : begin // 12 Bits per channel
                    end;
               48 : begin // 16 Bits per channel
                    end;
               end;

               CopyMemory(ToAddrB.Ptr, pBmpT, LongWidth);
               CopyMemory(ToAddrT.Ptr, pBmpB, LongWidth);
               StartT.Long := StartT.Long + LongWidth;
               StartB.Long := StartB.Long - LongWidth;
            end;
       end
       else begin
            // Flip image vertically.
            for i := 0 to ((Height - 1) div 2)
            do begin
               ToAddrT.Long := BitsT.Long + StartT.Long;
               ToAddrB.Long := BitsB.Long + StartB.Long;

               CopyMemory(pBmpT, ToAddrT.Ptr, LongWidth);
               CopyMemory(pBmpB, ToAddrB.Ptr, LongWidth);

               CopyMemory(ToAddrB.Ptr, pBmpT, LongWidth);
               CopyMemory(ToAddrT.Ptr, pBmpB, LongWidth);

               StartT.Long := StartT.Long + LongWidth;
               StartB.Long := StartB.Long - LongWidth;
            end;
       end;

       // Unlock memory.
       GlobalUnlock(hBmpT);
       GlobalUnlock(hBmpB);
  end
  else begin
       {$IFDEF TWNDEBUG}
         if (MessageLevel >= ML_ERROR)
         then LogMessage('#M Could not allocate enough memory to flip image');
       {$ENDIF}
  end;

  // Free allocated memory.
  if (hBmpT <> 0)
  then GlobalFree(hBmpT);
  if (hBmpB <> 0)
  then GlobalFree(hBmpB);
end; { End TmcmTWAINIntf.FlipBitmap.                                           }


function TmcmTWAINIntf.UserInterface(Msg     : TW_UINT16;
                                     pUI     : pTW_USERINTERFACE) : TW_UINT16;
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_CONTROL,
                     DAT_USERINTERFACE,
                     Msg,
                     TW_MEMREF(pUI));
end; { End TmcmTWAINIntf.UserInterface.                                        }


function TmcmTWAINIntf.ImageInfoA(pImageInfo : pTW_IMAGEINFO) : TW_UINT16;
begin
  // Check ImageInfo information.
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_IMAGEINFO,
                     MSG_GET,
                     TW_MEMREF(pImageInfo));
end; { End TmcmTWAINIntf.ImageInfoA.                                           }


function TmcmTWAINIntf.ImageLayoutA(pImageLayout : pTW_IMAGELAYOUT;
                                    Msg          : TW_UINT16) : TW_UINT16;
// MSG_GET
// MSG_GETDEFAULT
// MSG_RESET
// MSG_SET                                    
begin
  // Check ImageLayout information.
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_IMAGELAYOUT,
                     Msg,
                     TW_MEMREF(pImageLayout));
end; { End TmcmTWAINIntf.ImageLayoutA.                                         }


function TmcmTWAINIntf.GetCIEColor(pCIE : pTW_CIECOLOR) : TW_UINT16;
// State 4 - 6
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_CIECOLOR,
                     MSG_GET,
                     TW_MEMREF(pCIE));
end; { End TmcmTWAINIntf.GetCIEColor.                                          }


function TmcmTWAINIntf.Palette8(    Palette   : PLogPalette;
                                var PalType   : word;
                                    Msg       : TW_UINT16) : TW_UINT16;
//
// If palette is CMY then Red = Cyan, Blue = Magenta and Blue = Yellow.
//
// MSG_GET        - To assume that the returned palette is correct, this
//                  function should be called immediately after an image
//                  transfer is complete. (STATE 4-6)
// MSG_GETDEFAULT - Request the DS to use its default palette. (STATE 4-6)
// MSG_RESET      - Request the DS to roll back to its default palette. (STATE 4)
// MSG_SET        - Request the DS to adopt the specified palette. (STATE 4)
var i, j : integer;
    Pal  : TW_PALETTE8;
begin
  try
    if (Msg = MSG_SET)
    then begin
         FillChar(Pal, 256 * SizeOf(TW_ELEMENT8), 0);
         Pal.NumColors := 256; // Palette.palNumEntries;
         Pal.PaletteType := PalType;
         for i := 0 to (Palette.palNumEntries - 1)
         do begin
            Pal.Colors[i].Index := i;
            Pal.Colors[i].Channel1 := Palette.palPalEntry[i].peRed;
            Pal.Colors[i].Channel2 := Palette.palPalEntry[i].peGreen;
            Pal.Colors[i].Channel3 := Palette.palPalEntry[i].peBlue;
         end;
    end;
    Result := DSMEntry(@FAppIdentity,
                       @FSourceID,
                       DG_IMAGE,
                       DAT_PALETTE8,
                       Msg,
                       TW_MEMREF(@pal));
    if (Result = TWRC_SUCCESS)
    then begin
         if (Msg in [MSG_GET, MSG_GETDEFAULT, MSG_RESET])
         then begin
              PalType := Pal.PaletteType;
              FillChar(Palette.palPalEntry[0], 256 * SizeOf(TPaletteEntry), 0);
              Palette.palNumEntries := 256;
              for i := 0 to (Pal.NumColors - 1)
              do begin
                 j := Pal.Colors[i].Index;
                 Palette.palPalEntry[j].peRed   := Pal.Colors[i].Channel1;
                 Palette.palPalEntry[j].peGreen := Pal.Colors[i].Channel2;
                 Palette.palPalEntry[j].peBlue  := Pal.Colors[i].Channel3;
              end;
         end;
    end;
  except
    Result := TWRC_EXCEPTION;
  end;
end; { End TmcmTWAINIntf.Palette8.                                             }


function TmcmTWAINIntf.GrayResponse(pGrayResponse : pTW_GRAYRESPONSE;
                                    Msg           : TW_UINT16) : TW_UINT16;
// State 4
// MSG_RESET
// MSG_SET
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_GRAYRESPONSE,
                     Msg,
                     TW_MEMREF(pGrayResponse));
end; { End TmcmTWAINIntf.GrayResponse.                                         }


function TmcmTWAINIntf.RGBResponse(pRGBResponse : pTW_GRAYRESPONSE;
                                   Msg          : TW_UINT16) : TW_UINT16;
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_RGBRESPONSE,
                     Msg,
                     TW_MEMREF(pRGBResponse));
end; { End TmcmTWAINIntf.RGBResponse.                                          }


function TmcmTWAINIntf.JPEGCompression(pJPEGComp : pTW_JPEGCOMPRESSION;
                                       Msg       : TW_UINT16) : TW_UINT16;
begin
  Result := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_IMAGE,
                     DAT_JPEGCOMPRESSION,
                     Msg,
                     TW_MEMREF(pJPEGComp));
end; { End TmcmTWAINIntf.JPEGCompression.                                      }


function TmcmTWAINIntf.GetPixelFlavor : integer;
{------------------------------------------------------------------------------}
{ PixelFlavor                                                                  }
{   MSG_GET container (Enumeration, OneValue)                                  }
{   ItemType = TW_UINT16                                                       }
{------------------------------------------------------------------------------}
var Container : TTwnContainer;
begin
  Container := Nil;
  Result := -1;
  if (GetCapabilityMsg(ICAP_PIXELFLAVOR, MSG_GET, Container) = TWRC_SUCCESS)
  then if Assigned(Container)
       then Result := Container.CurrentValue
end; { End TmcmTWAINIntf.GetPixelFlavor.                                       }


procedure TmcmTWAINIntf.SetPixelFlavor(Value : integer);
{------------------------------------------------------------------------------}
{ PixelFlavor                                                                  }
{   MSG_SET container (OneValue)                                               }
{   ItemType = TW_UINT16                                                       }
{------------------------------------------------------------------------------}
begin
  if (Containers.Items[ICAP_PIXELFLAVOR] = Nil)
  then GetPixelFlavor;
  if (Containers.Items[ICAP_PIXELFLAVOR] <> Nil)
  then begin
       Containers.Items[ICAP_PIXELFLAVOR].CurrentValue := Value;
       SetCapabilityMsg(MSG_SET, True, Containers.Items[ICAP_PIXELFLAVOR]);
  end;
end; { End TmcmTWAINIntf.SetPixelFlavor.                                       }


function TmcmTWAINIntf.GetUnits : integer;
{------------------------------------------------------------------------------}
{ Units                                                                        }
{   MSG_GET container (Enumeration, OneValue)                                  }
{   ItemType = TW_UINT16                                                       }
{------------------------------------------------------------------------------}
var Container : TTwnContainer;
begin
  Container := Nil;
  Result := -1;
  if (GetCapabilityMsg(ICAP_UNITS, MSG_GET, Container) = TWRC_SUCCESS)
  then if Assigned(Container)
       then Result := Container.CurrentValue;
end; { End TmcmTWAINIntf.GetUnits.                                             }


procedure TmcmTWAINIntf.SetUnits(Value : integer);
{------------------------------------------------------------------------------}
{ Units                                                                        }
{   MSG_SET container (Enumeration, OneValue)                                  }
{   ItemType = TW_UINT16                                                       }
{------------------------------------------------------------------------------}
begin
  if (Containers.Items[ICAP_UNITS] = Nil)
  then GetUnits;
  if (Containers.Items[ICAP_UNITS] <> Nil)
  then begin
       Containers.Items[ICAP_UNITS].CurrentValue := Value;
       SetCapabilityMsg(MSG_SET, True, Containers.Items[ICAP_UNITS]);
  end;
end; { End TmcmTWAINIntf.SetUnits.                                             }


function TmcmTWAINIntf.GetDeviceEvents : TTwnDeviceEvents;
begin
  Result := FDeviceEvents;
end; { End TmcmTWAINIntf.GetDeviceEvents.                                      }


procedure TmcmTWAINIntf.SetDeviceEvents(Value : TTwnDeviceEvents);
var i         : integer;
    Container : TTwnContainer;
begin
  FDeviceEvents := Value;
  if IsDSOpen
  then begin
       Container := Containers.Items[CAP_DEVICEEVENT];

       // If the CAP_DEVICEEVENT container hasn't been created earlier in the
       // current TWAIN session and the FDeviceEvents SET is empty, then dont
       // negotiate device events with the data source.
       // As the data source shall default to "no" device events when opened
       // this omission shall have no effect on the session.
       if Not((Container = Nil) and (FDeviceEvents = []))
       then begin
            if Not(Assigned(Container))
            then Container := Containers.CreateItem(CAP_DEVICEEVENT);
            if Assigned(Container)
            then begin
                 Container.ContainerType := TWON_ARRAY;
                 Container.NumItems := 0;
                 for i := integer(TWDE_CHECKAUTOMATICCAPTURE) to (integer(TWDE_POWERSAVENOTIFY) - 1)
                 do if (TTwnDeviceEvent(i) in FDeviceEvents)
                    then Container.AddItem(TTwnDeviceEvent(i));
                 if (SetCapabilityMsg(MSG_SET, False, Container) <> TWRC_SUCCESS)
                 then ; // Error handling.
            end;
       end;
  end;
end; { End TmcmTWAINIntf.SetDeviceEvents.                                      }


procedure TmcmTWAINIntf.DoOnDeviceEvent;
var twRC          : TW_UINT16;
    twSourceEvent : TW_DEVICEEVENT;
    Event         : TTwnDeviceEvent;
    DeviceName    : string;
    A, B, C       : Variant;
begin
  // Call DG_CONTROL / DAT_DEVICEEVENT / MSG_GET to learn about event.
  try
    twRC := DSMEntry(@FAppIdentity,
                     @FSourceID,
                     DG_CONTROL,
                     DAT_DEVICEEVENT,
                     MSG_GET,
                     TW_MEMREF(@twSourceEvent));
  except
    twRC := TWRC_EXCEPTION;
  end;

  if (twRC = TWRC_SUCCESS)
  then begin
       // Get relevant information if any from TW_DEVICEEVENT structure and
       // fire OnDeviceEvent event.
       DeviceName := StrPas(twSourceEvent.DeviceName);
       A := 0; B := 0; C := 0;
       Event := TTwnDeviceEvent(twSourceEvent.Event);
       case Event of
       TWDE_CHECKAUTOMATICCAPTURE  : begin
                                       A := twSourceEvent.AutomaticCapture;
                                       B := twSourceEvent.TimeBeforeFirstCapture;
                                       C := twSourceEvent.TimeBetweenCaptures;
                                     end;
       TWDE_CHECKBATTERY           : begin
                                       A := twSourceEvent.BatteryMinutes;
                                       B := twSourceEvent.BatteryPercentage;
                                     end;
       TWDE_CHECKDEVICEONLINE      : ;
       TWDE_CHECKFLASH             : begin
                                       A := twSourceEvent.FlashUsed2;
                                     end;
       TWDE_CHECKPOWERSUPPLY       : begin
                                       A := twSourceEvent.PowerSupply;
                                     end;
       TWDE_CHECKRESOLUTION        : begin
                                       A := FIX32ToFloat(twSourceEvent.XResolution);
                                       B := FIX32ToFloat(twSourceEvent.YResolution);
                                     end;
       // All other TWDE_xxx events does not provide data (A = B = C = 0)
       end;
       if Assigned(FOnDeviceEvent)
       then FOnDeviceEvent(Self, Event, DeviceName, A, B, C)
       else SetDeviceEvents([]);
  end;
end; { End TmcmTWAINIntf.DoOnDeviceEvent.                                      }


{$IFDEF TYPED_ADDRESS_ON} {$T+} {$UNDEF TYPED_ADDRESS_ON} {$ENDIF}
{$IFDEF EXTENDED_SYNTAX} {$X-} {$UNDEF EXTENDED_SYNTAX} {$ENDIF}

end.
