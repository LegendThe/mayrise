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
// $Log:  68835: utwainForm.pas 
{
{   Rev 1.0    10/02/2011 15:02:18  Kacper
{ init
}
//
//   Rev 1.2    21-01-2002 14:08:54  mcm    Version: DT 2.0

//
//   Rev 1.1    18-01-2002 15:12:26  mcm
// Temp

//
//   Rev 1.0    04-12-2001 16:49:10  mcm    Version: DT 2.0

unit uTwainForm;

// Delphi 2  = VER90
// Builder   = VER93
// Delphi 3  = VER100
// Builder 3 = VER110
// Delphi 4  = VER120
// Builder 4 = VER125 or VER130 ?
// Delphi 5  = VER130
// Builder 5 = VER135
// Delphi 6 = VER140

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ComCtrls, StdCtrls, ExtCtrls, JPEG,
  twain, mcmTWAIN, mcmTWAINContainer, mcmTWAINKernel, mcmTWAINIntf;

type
  TFormTWAIN           = class(TForm)
    mcmTWAIN           : TmcmTWAIN;
    StatusBar1         : TStatusBar;
    Image1             : TImage;

    Panel1             : TPanel;
    sbAcquire          : TSpeedButton;
    sbSource           : TSpeedButton;
    SourceList         : TComboBox;

    MainMenu1          : TMainMenu;
    FileMenu           : TMenuItem;
    Acquire1           : TMenuItem;
    Source1            : TMenuItem;
    N1                 : TMenuItem;
    TransferMode1      : TMenuItem;
    File2              : TMenuItem;
    Memory1            : TMenuItem;
    Native1            : TMenuItem;
    ErrorLevel1        : TMenuItem;
    None1              : TMenuItem;
    Information1       : TMenuItem;
    Error1             : TMenuItem;
    Full1              : TMenuItem;
    ShowUIItem         : TMenuItem;
    DisableAfterItem   : TMenuItem;
    ADFItem            : TMenuItem;
    EnableADFItem      : TMenuItem;
    EnableAutoFeedItem : TMenuItem;
    N2                 : TMenuItem;
    StretchImageItem   : TMenuItem;
    N3                 : TMenuItem;
    Exit1              : TMenuItem;

    SpecialMenu        : TMenuItem;
    OpenSMItem         : TMenuItem;
    OpenSItem          : TMenuItem;
    SendItem           : TMenuItem;
    EnableItem         : TMenuItem;
    EnableTransferItem : TMenuItem;
    DisableItem        : TMenuItem;
    CloseSItem         : TMenuItem;
    CloseSMItem        : TMenuItem;
    AboutItem          : TMenuItem;
    PreferenceItem     : TMenuItem;
    EnableNegotiatItem : TMenuItem;
    N4                 : TMenuItem;
    SourceInfoItem     : TMenuItem;
    SourceIconItem     : TMenuItem;

    procedure FormCreate             (    Sender    : TObject);

    // Remove function call and IFDEF below which does not match your Delphi
    // version. Code Insight in Delphi fails with this IFDEF
    (* *)
    {$IFNDEF VER100} // Delphi 4, 5 and 6
      procedure mcmTWAINImageReady   (    Sender    : TObject;
                                          pBmp      : Pointer;
                                          pBmpInfo  : PBitmapInfo;
                                          hImage    : hBitmap;
                                          FileName  : string);
    {$ELSE}         // Delphi 3
    (* *)
      procedure mcmTWAINImageReady   (    Sender    : TObject;
                                          pBmp      : Pointer;
                                          pBmpInfo  : PBitmapInfo;
                                          hImage    : Integer;
                                          FileName  : string);
    (* *)
    {$ENDIF}
    (* *)

    procedure SourceClick            (    Sender    : TObject);
    procedure AcquireClick           (    Sender    : TObject);

    procedure TransferMode1Click     (    Sender    : TObject);
    procedure XFerClick              (    Sender    : TObject);
    procedure ErrorLevelClick        (    Sender    : TObject);
    procedure ShowUIItemClick        (    Sender    : TObject);
    procedure Exit1Click             (    Sender    : TObject);

    procedure OpenSMItemClick        (    Sender    : TObject);
    procedure OpenSItemClick         (    Sender    : TObject);
    procedure SendItemClick          (    Sender    : TObject);
    procedure EnableItemClick        (    Sender    : TObject);
    procedure EnableTransferItemClick(    Sender    : TObject);
    procedure DisableItemClick       (    Sender    : TObject);
    procedure CloseSItemClick        (    Sender    : TObject);
    procedure CloseSMItemClick       (    Sender    : TObject);
    procedure mcmTWAINNegotiation    (    Sender    : TObject);
    procedure mcmTWAINEnableMenus    (    Sender    : TObject);
    procedure mcmTWAINDisableMenus   (    Sender    : TObject);
    procedure AboutItemClick         (    Sender    : TObject);
    procedure mcmTWAINXferReady      (    Sender    : TObject);
    procedure mcmTWAINXferNext       (    Sender    : TObject;
                                      var NumImages : Integer;
                                      var SkipNext  : boolean);
    procedure FormResize             (    Sender    : TObject);
    procedure PreferenceItemClick    (    Sender    : TObject);
    procedure StretchImageItemClick  (    Sender    : TObject);
    procedure DisableAfterItemClick  (    Sender    : TObject);
    procedure FileMenuClick          (    Sender    : TObject);
    procedure ErrorLevel1Click       (    Sender    : TObject);
    procedure EnableADFItemClick     (    Sender    : TObject);
    procedure EnableAutoFeedItemClick(    Sender    : TObject);
    procedure mcmTWAINDeviceEvent    (    Sender    : TObject;
                                          Event     : TTwnDeviceEvent;
                                          DeviceName: String;
                                          A, B, C   : Variant);
    procedure EnableNegotiatItemClick( Sender    : TObject);
    procedure SourceInfoItemClick    (    Sender    : TObject);
    procedure mcmTWAINMemXferSize    (    Sender    : TObject;
                                          MinSize,
                                          MaxSize   : Integer;
                                      var BufSize   : Integer;
                                          pBmpInfo  : PBitmapInfo);
    procedure mcmTWAINFailure        (    Sender    : TObject;
                                          DG        : longint;
                                          DAT,
                                          CAP,
                                          MSG       : Word;
                                          Error,
                                          Status    : Integer);
    procedure SourceIconItemClick    (    Sender    : TObject);
    procedure mcmTWAINCloseSource(Sender: TObject);
  private
    { Private declarations }
    FImageFileName : string;
    FImageIndex    : integer;
    procedure AdjustImageSize;
    procedure ShowHint               (    Sender    : TObject);
    procedure EnableSpecialMenu      (    Mgr       : boolean;
                                          Src       : boolean);
  public
    { Public declarations }
  end;

var FormTWAIN : TFormTWAIN;

implementation

uses uTwnDlgSrcInfo;

{$R *.DFM}
{$IFOPT X-} {$X+} {$ENDIF}

procedure TFormTWAIN.FormCreate(Sender : TObject);
begin
  // Get list of available TWAIN sources.
  mcmTWAIN.GetSourceList(SourceList.Items);
  Application.OnHint := ShowHint;

  FImageIndex := 1;
  FImageFileName := 'c:\image1.bmp';
end;

procedure TFormTWAIN.ShowHint(Sender : TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;

procedure TFormTWAIN.FormResize(Sender: TObject);
begin
  AdjustImageSize;
end;

//------------------------------------------------------------------------------
// File menu.
//------------------------------------------------------------------------------

procedure TFormTWAIN.FileMenuClick(Sender: TObject);
begin
  ShowUIItem.Checked       := mcmTWAIN.ShowUI;
  DisableAfterItem.Checked := mcmTWAIN.DisableAfterAcquire;
end;

procedure TFormTWAIN.SourceClick(Sender : TObject);
begin
  mcmTWAIN.SelectSource;
end;

procedure TFormTWAIN.SourceIconItemClick(Sender : TObject);
begin
//  mcmTWAIN.SelectSourceIcon;
end;

procedure TFormTWAIN.AcquireClick(Sender : TObject);
begin
  mcmTWAIN.Acquire(SourceList.Text);
end;

procedure TFormTWAIN.PreferenceItemClick(Sender: TObject);
begin
  mcmTWAIN.Preferrences;
end;

procedure TFormTWAIN.TransferMode1Click(Sender : TObject);
var i : integer;
begin
  // Check the right menu item when Transfer Mode menu opens.
  for i := 0 to 2
  do TransferMode1.Items[i].Checked := False;
  case mcmTwain.XferMech of
  TWFX_Native      : Native1.Checked := True;
  TWFX_Files       : File2.Checked   := True;
  TWFX_Memory      : Memory1.Checked := True;
  end;
end;

procedure TFormTWAIN.XFerClick(Sender : TObject);
begin
  // Set selected Transfer mode.
  case (Sender as TMenuItem).Tag of
  0 : mcmTwain.XferMech := TWFX_Native;
  1 : mcmTwain.XferMech := TWFX_Files;
  2 : mcmTwain.XferMech := TWFX_Memory;
  end;
end;

procedure TFormTWAIN.ErrorLevel1Click(Sender: TObject);
var i : integer;
begin
  // Check right ErrorLevel menu when Error Level menu opens.
  for i := 0 to 3
  do ErrorLevel1.Items[i].Checked := False;
  case mcmTwain.MessageLevel of
  ML_NONE  : None1.Checked := True;
  ML_ERROR : Error1.Checked := True;
  ML_INFO  : Information1.Checked := True;
  ML_FULL  : Full1.Checked := True;
  end;
end;

procedure TFormTWAIN.ErrorLevelClick(Sender : TObject);
begin
  case (Sender as TMenuItem).Tag of
  0 : mcmTwain.MessageLevel := ML_None;
  1 : mcmTwain.MessageLevel := ML_Info;
  2 : mcmTwain.MessageLevel := ML_Error;
  3 : mcmTwain.MessageLevel := ML_Full;
  end;
end;

procedure TFormTWAIN.ShowUIItemClick(Sender : TObject);
begin
  ShowUIItem.Checked := Not(ShowUIItem.Checked);
  mcmTwain.ShowUI := ShowUIItem.Checked;
end;

procedure TFormTWAIN.DisableAfterItemClick(Sender: TObject);
begin
  mcmTWAIN.DisableAfterAcquire := Not(DisableAfterItem.Checked);
end;

procedure TFormTWAIN.EnableNegotiatItemClick(Sender: TObject);
begin
  EnableNegotiatItem.Checked := Not(EnableNegotiatItem.Checked);
end;

procedure TFormTWAIN.EnableADFItemClick(Sender : TObject);
begin
  EnableADFItem.Checked := Not(EnableADFItem.Checked);
end;

procedure TFormTWAIN.EnableAutoFeedItemClick(Sender : TObject);
begin
  EnableAutoFeedItem.Checked := Not(EnableAutoFeedItem.Checked);
end;

procedure TFormTWAIN.StretchImageItemClick(Sender: TObject);
begin
  StretchImageItem.Checked := Not(StretchImageItem.Checked);
  AdjustImageSize;
  Repaint;
end;

procedure TFormTWAIN.Exit1Click(Sender : TObject);
begin
  // Close this application.
  Close;
end;

//------------------------------------------------------------------------------
// Special menu.
//------------------------------------------------------------------------------

procedure TFormTWAIN.OpenSMItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  mcmTwain.OpenSourceMgr;
  EnableSpecialMenu(True, False);
  Screen.Cursor := OldCursor;
end;

procedure TFormTWAIN.OpenSItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  // Disable the OnNegotiation event.
  // When using the Special menu, we only want to negotiage capabilities
  // chosen via the Send Dialogue.
  mcmTwain.OnNegotiation := Nil;
  mcmTwain.OpenSource('');
  // Re-instate the OnNegotiation event.
  mcmTwain.OnNegotiation := mcmTWAINNegotiation;
  Screen.Cursor := OldCursor;
end;

procedure TFormTWAIN.SendItemClick(Sender : TObject);
begin
  mcmTWAIN.ExecuteDlgSend;
end;

procedure TFormTWAIN.EnableItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  mcmTwain.EnableSource(ShowUIItem.Checked);

  // Update menu "Show User Interface" to reflect whether the data source's UI
  // is shown or hidden.
  ShowUIItem.Checked := mcmTWAIN.ShowUI;

  Screen.Cursor := OldCursor;
end;

procedure TFormTWAIN.EnableTransferItemClick(Sender : TObject);
begin
;
end;

procedure TFormTWAIN.DisableItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  mcmTwain.DisableSource;
  Screen.Cursor := OldCursor;
end;

procedure TFormTWAIN.CloseSItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  mcmTwain.CloseSource;
  Screen.Cursor := OldCursor;
end;

procedure TFormTWAIN.CloseSMItemClick(Sender : TObject);
var OldCursor : hCursor;
begin
  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  mcmTwain.CloseSourceMgr;
  EnableSpecialMenu(False, False);
  Screen.Cursor := OldCursor;
end;

//------------------------------------------------------------------------------
// About menu.
//------------------------------------------------------------------------------

procedure TFormTWAIN.AboutItemClick(Sender: TObject);
begin
  mcmTWAIN.About;
end;

//------------------------------------------------------------------------------
// Adjust image size.
//------------------------------------------------------------------------------

procedure TFormTWAIN.AdjustImageSize;
var ch, cw : longint;
    ih, iw : longint;
    ScaleH : real;
    ScaleV : real;
begin
  if Not(Image1.Picture.Bitmap.Empty)
  then begin
       if StretchImageItem.Checked
       then begin
            Image1.Align   := alNone;
            Image1.Stretch := True;

            ch := ClientHeight - StatusBar1.Height - Panel1.Height;
            cw := ClientWidth;

            if (Image1.Picture.Bitmap.Width > 0)
            then ScaleH := cw / Image1.Picture.Bitmap.Width
            else ScaleH := 1.0;
            if (Image1.Picture.Bitmap.Height > 0)
            then ScaleV := ch / Image1.Picture.Bitmap.Height
            else ScaleV := 1.0;

            if (ScaleH < ScaleV)
            then begin
                 ih := Round(ScaleH * Image1.Picture.Bitmap.Height);
                 Image1.Top := abs(ch - ih) div 2 + Panel1.Height;
                 if (Image1.Top < Panel1.Height)
                 then Image1.Top := Panel1.Height;
                 Image1.Height := ih;

                 Image1.Left := 0;
                 Image1.Width := Round(ScaleH * Image1.Picture.Bitmap.Width);
            end
            else begin
                 iw := Round(ScaleV * Image1.Picture.Bitmap.Width);
                 Image1.Left := (cw - iw) div 2;
                 if (Image1.Left < 0)
                 then Image1.Left := 0;
                 Image1.Width := iw;
                 Image1.Top := Panel1.Height;
                 Image1.Height := Round(ScaleV * Image1.Picture.Bitmap.Height);
            end;
       end
       else begin
            Image1.Align := alClient;
            Image1.Stretch := False;
            Image1.Center := True;
       end;
  end;
end;

procedure TFormTWAIN.EnableSpecialMenu(Mgr : boolean; Src : boolean);
begin
  OpenSMItem.Enabled         := Not(Mgr);

  OpenSItem.Enabled          := Not(Src) and Mgr;
  SendItem.Enabled           := Src;
  EnableItem.Enabled         := Src;
  EnableTransferItem.Enabled := Src;
  DisableItem.Enabled        := Src;
  CloseSItem.Enabled         := Src;

  CloseSMItem.Enabled        := True; 
end; { End TFormTWAIN.EnableSpecialMenu.                                       }

//------------------------------------------------------------------------------
// mcmTWAIN events.
//------------------------------------------------------------------------------

procedure TFormTWAIN.mcmTWAINEnableMenus(Sender : TObject);
begin
//------------------------------------------------------------------------------
// Enable TWAIN menus.
// -------------------
// This event is fired after the Data Source is closed.
// Use the OnDisableMenus event to disable menus etc.
//------------------------------------------------------------------------------
  Acquire1.Enabled  := True;
  Source1.Enabled   := True;
  sbSource.Enabled  := True;
  sbAcquire.Enabled := True;

  EnableSpecialMenu(False, False);
end;

procedure TFormTWAIN.mcmTWAINDisableMenus(Sender : TObject);
begin
//------------------------------------------------------------------------------
// Disable TWAIN menus.
// --------------------
// This event is fired just before the Data Source is opened.
// Use the OnEnableMenus event to re-enable menus etc.
//------------------------------------------------------------------------------
  Acquire1.Enabled  := False;
  Source1.Enabled   := False;
  sbSource.Enabled  := False;
  sbAcquire.Enabled := False;

  EnableSpecialMenu(True, True);
  
  // Update menu "Show User Interface" to reflect whether the data source's UI
  // is shown or hidden.
  ShowUIItem.Checked := mcmTWAIN.ShowUI;
end;

procedure TFormTWAIN.mcmTWAINNegotiation(Sender : TObject);
var i           : integer;
    r           : double;
    MinHeight   : double;
    MinWidth    : double;
    xMax, yMax  : double;
    ImageLayout : TImageLayout;
    Container   : TtwnContainer;
begin
//------------------------------------------------------------------------------
// Negotiate capabilities.
// -----------------------
// This event is fired when the Data Source is opened, but before it becomes
// enabled.
// When you negotiate capabilities, you should alway check that the capability
// is supported by calling IsCapSupported(CAP_xxxx).
// Unfortunatly some data sources promis just a bit more than they realy can
// live up. Therefore it's a fairly good idear to GET the capability before
// SETting it.
//
// Below, you'll find many examples on how to change the data source settings.
// You do not have to implement all or any of these negotiations, just the ones
// required by your application. But remember that some capabilities do depend
// on others.
//------------------------------------------------------------------------------
  if Not(EnableNegotiatItem.Checked)
  then exit;

  if mcmTwain.IsCapSupported(CAP_AUTHOR)
  then begin
       // If you do not have a fully initialized Container, make sure to set
       // it to Nil before calling GetCapabilityMsg. GetCapabilityMsg will
       // return a container holding the Cap's data. Note, that any Container
       // returned by mcmTWAIN is maintained by mcmTWAIN Container list.
       Container := Nil;

       // GetCapabilityMsg returnes TWRC_SUCCESS if the capability was obtained
       // successfully. If the returned value is different from TWRC_SUCCESS
       // the Container is not valid.
       if (mcmTWAIN.GetCapabilityMsg(CAP_AUTHOR, MSG_GET, Container) = TWRC_SUCCESS)
       then begin
            // QuerySupport returns info on which messages the data source
            // supports for the selected capability. QuerySupport returns an
            // ORed combination of TWQC_GET, TWQC_SET, TWQC_GETDEFAULT,
            // TWQC_GETCURRENT and TWQC_RESET.
            if ((TWQC_SET and Container.QuerySupport) <> 0)
            then begin
                 Container.Items[0] := 'My User Name';
                 mcmTWAIN.SetCapabilityMsg(MSG_SET, True, Container);
            end;
       end;

       // After calling Containers.DeleteItem the Container holding CAP_AUTHOR
       // is not vaild. Note, you do not have to delete the container. This
       // will be done automatically when the session is closed.
       mcmTWAIN.Containers.DeleteItem(CAP_AUTHOR);
  end;

  if mcmTwain.IsCapSupported(ICAP_HALFTONES)
  then begin
       Container := Nil;
       if (mcmTWAIN.GetCapabilityMsg(ICAP_HALFTONES, MSG_GET, Container) = TWRC_SUCCESS)
       then begin
            // The current halftone is available through Container.CurrentValue.
            if (Container.NumItems > 1)
            then begin
                 // To iterate through items in a container,
                 // for i := 0 to (Container.NumItems - 1)
                 // do ShowMessage('Item[' + IntToStr(i) + '] := ' + Container.Items[i]);
            end;
            Container.CurrentIndex := 1;
            if (mcmTWAIN.SetCapabilityMsg(MSG_SET, True, Container) = TWRC_SUCCESS)
            then ; // Current value was changed to the second item in the list.
       end;
  end;

  //----------------------------------------------------------------------------
  // Feeder capabilities.
  if mcmTwain.IsCapSupported(CAP_FEEDERENABLED)
  then begin
       // Is Feeder selected in the menu, then enable it.
       if EnableADFItem.Checked
       then begin
            // Call FeederEnabled to enable the feeder.
            if mcmTwain.FeederEnabled(True)
            then begin
                 if mcmTwain.IsCapSupported(CAP_AUTOFEED)
                 then begin
                      if EnableAutoFeedItem.Checked
                      then mcmTwain.AutoFeed(True)
                      else mcmTwain.AutoFeed(False);
                 end;
            end
            // Feeder could not be enabled. The scanner properly doesn't have
            // a feeder!
            else EnableADFItem.Checked := False;

            if Not(mcmTwain.FeederLoaded)
            then begin
                 // Inform user that feeder is not loaded.
                 ShowMessage('Could not detect paper in feeder.');
            end;

            // Control the number of pages to transfer. In this case transfer
            // all available images (-1).
            mcmTwain.NumImagesToScan(-1);
       end
       else mcmTwain.FeederEnabled(False); // Disable feeder.
  end;

  //----------------------------------------------------------------------------
  // Negotiate Color.

  // Get/Set current pixel type.
  if mcmTwain.IsCapSupported(ICAP_PIXELTYPE)
  then begin
       i := mcmTwain.PixelType;
       if (i <> TWPT_RGB)
       then mcmTwain.PixelType := TWPT_RGB;
  end;

  //----------------------------------------------------------------------------
  // Get/Set current bit depth.
  // The number of bits, are the total bits for a pixel (color).
  // TWPC_BW      -> ICAP_BITDEPTH = 1
  // TWPC_GRAY    -> ICAP_BITDEPTH = 4, 8 (maybe higher, if source supports this).
  // TWPC_PALETTE -> ICAP_BITDEPTH = 4 or 8.
  // TWPC_RGB     -> ICAP_BITDEPTH = 16, 24, 32 (maybe higher, if source supports this).
  if mcmTwain.IsCapSupported(ICAP_BITDEPTH)
  then begin
       i := mcmTwain.BitDepth;
       if (i <> 24)
       then mcmTwain.BitDepth := 24;
  end;

  // Get/Set current bit order.
  if mcmTwain.IsCapSupported(ICAP_BITORDER)
  then begin
       i := mcmTwain.BitOrder;
       if (i <> TWBO_MSBFIRST)
       then mcmTwain.BitOrder := TWBO_MSBFIRST;
  end;

  // Get/Set current pixel flavor.
  if mcmTwain.IsCapSupported(ICAP_PIXELFLAVOR)
  then begin
       i := mcmTwain.PixelFlavor;
       if (i <> TWPF_CHOCOLATE)
       then mcmTwain.PixelFlavor := TWPF_CHOCOLATE;
  end;

  if mcmTwain.IsCapSupported(ICAP_PLANARCHUNKY)
  then begin
       i := mcmTwain.PlanarChunky;
       if (i <> TWPC_CHUNKY)
       then mcmTwain.PlanarChunky := TWPC_CHUNKY;
  end;

  // If you would like to negotiate other capabilities not directly supported
  // by the TmcmTWAIN component, this is how to proceed.
  // For example:
  (*
  if mcmTwain.IsCapSupported(ICAP_PIXELTYPE)
  then begin
       Container := Nil;
       if (mcmTWAIN.GetCapabilityMsg(ICAP_PIXELTYPE, MSG_GET, Container) = TWRC_SUCCESS)
       then begin
            Container.CurrentValue := TWPT_GRAY;
            if (mcmTWAIN.SetCapabilityMsg(MSG_SET, True, Container) <> TWRC_SUCCESS)
            then { An Error occured. } ;
       end;
       Container := Nil;
  end;
  *)

  //----------------------------------------------------------------------------
  // Negotiate dimensions.

  // Get/Set current unit.
  if mcmTwain.IsCapSupported(ICAP_UNITS)
  then begin
       i := mcmTwain.Units;
       if (i <> TWUN_INCHES)
       then mcmTwain.Units := TWUN_INCHES;
  end;

  // Get X resolution.
  if mcmTwain.IsCapSupported(ICAP_XRESOLUTION)
  then begin
       r := mcmTwain.XResolution;
       if (r <> 150.0) 
       then mcmTwain.XResolution := 150.0;
  end;

  // Get Y resolution.
  if mcmTwain.IsCapSupported(ICAP_YRESOLUTION)
  then begin
       r := mcmTwain.YResolution;
       if (r <> 150.0)
       then mcmTwain.YResolution := 150.0;
  end;

  // Get min & max image size.
  xMax := 8.0; // inch
  if mcmTwain.IsCapSupported(ICAP_PHYSICALWIDTH)
  then xMax := mcmTWAIN.PhysicalWidth;

  yMax := 11.0; // inch
  if mcmTwain.IsCapSupported(ICAP_PHYSICALHEIGHT)
  then yMax := mcmTWAIN.PhysicalHeight;

  //----------------------------------------------------------------------------
  // Negotiate the Image layout her !
  // Remember to negotiate Unit and Resolution first, as above.

  // Get scanners/cameras minimum scan height and width.
  if mcmTwain.IsCapSupported(ICAP_MINIMUMHEIGHT)
  then MinHeight := mcmTWAIN.MinimumHeight
  else MinHeight := 0;
  if (MinHeight < 0)
  then MinHeight := 0;
  if mcmTwain.IsCapSupported(ICAP_MINIMUMWIDTH)
  then MinWidth := mcmTWAIN.MinimumWidth
  else MinWidth := 0;
  if (MinWidth < 0)
  then MinWidth := 0;

  // You should do this only after negotiating ADF, Units and resolution and
  // color.
  // We are requesting the a quater of the maximum area.
  ImageLayout := mcmTWAIN.GetImageLayout;
  with ImageLayout
  do begin
     Frame.Left   := 0;
     Frame.Top    := 0;
     Frame.Right  := xMax / 4.0;
     Frame.Bottom := yMax / 4.0;

     if (MinHeight < (Frame.Bottom - Frame.Top))
     then ; // Correct for scanners minimum scan height!

     if (MinWidth < (Frame.Right - Frame.Left))
     then ; // Correct for scanners minimum scan height!

     // You could use xMax and yMax inquired earlier to ensure that the
     // requested frame is within limits.
     if (xMax > 0.0)
     then if (Frame.Right > xMax)
          then Frame.Right := xMax;
     if (yMax > 0)
     then if (Frame.Bottom > yMax)
          then Frame.Bottom := yMax;
  end;
  mcmTWAIN.SetImageLayout(ImageLayout);

  //----------------------------------------------------------------------------
  // Negotiate Frames!
  // Remember to negotiate Unit and Resolution first, as above.

  if mcmTwain.IsCapSupported(ICAP_MAXFRAMES)
  then begin
       // Get maximum number of frames that the data source can provide.
       if (mcmTWAIN.MaxFrames > 1)
       then begin
            // if data source provides more frames that app is willing to handle
            // then set the number of frames.
            mcmTWAIN.MaxFrames := 2;

            // Set-up one frame.
            Container := mcmTWAIN.GetFrames;
            if (Container <> Nil)
            then begin
                 if (mcmTWAIN.MaxFrames > 1)
                 then Container.NumItems := 2
                 else Container.NumItems := 1;
                 
                 Container.Frames[0].Left   := 1.0;
                 Container.Frames[0].Top    := 1.0;
                 Container.Frames[0].Right  := xMax / 2.0;
                 Container.Frames[0].Bottom := yMax / 2.0;

                 if (mcmTWAIN.MaxFrames > 1)
                 then begin
                      Container.Frames[1].Left   := 2.0;
                      Container.Frames[1].Top    := 2.0;
                      Container.Frames[1].Right  := xMax / 4.0;
                      Container.Frames[1].Bottom := yMax / 4.0;
                 end;
                 mcmTWAIN.SetFrames(Container);
            end;
       end;
  end;

  //----------------------------------------------------------------------------
  // Negotiate Orientation / Rotation.

  // Negotiating Orientation and/or Rotation shall be done after considering
  // the DAT_IMAGELAYOUT and ICAP_FRAMES.
  if mcmTwain.IsCapSupported(ICAP_ORIENTATION)
  then begin
       i := mcmTwain.Orientation;
       if (i <> TWOR_ROT0)
       then mcmTwain.Orientation := TWOR_ROT0;
  end;

  if mcmTwain.IsCapSupported(ICAP_ROTATION)
  then begin
       r := mcmTwain.Rotation;
       if (r <> 0.0)
       then mcmTwain.Rotation := 0.0;
  end;
end;


{$IFNDEF VER100}

procedure TFormTWAIN.mcmTWAINImageReady(Sender   : TObject;
                                        pBmp     : Pointer;
                                        pBmpInfo : PBitmapInfo;
                                        hImage   : hBitmap;
                                        FileName : string);

{$ELSE}

procedure TFormTWAIN.mcmTWAINImageReady(Sender   : TObject;
                                        pBmp     : Pointer;
                                        pBmpInfo : PBitmapInfo;
                                        hImage   : integer;
                                        FileName : string);
{$ENDIF}

var JPEGImage : TJPEGImage;
begin
//------------------------------------------------------------------------------
// Image is available.
// -------------------
// This event is fired after the Data Source has transferred the complete image
// to the mcmTWAIN component.
// This event returns the acquired image.
//------------------------------------------------------------------------------
  if (hImage <> 0)
  then begin
       if (mcmTWAIN.DIBHandleType <> THDT_DIBRAW)
       then begin
            // If you want to use the pBmpInfo pointer, make a copy!
            // The pBmpInfo pointer is only valid in this event procedure.
            // This pointer is only created when THDT_DIBSEC is chosen in
            // DIBHandleType.

            with Image1.Picture
            do begin
               // Do not set any properties on the TImage until after the assignment
               //   Bitmap.Handle := hImage;
               // Especially, omit doing
               //   Bitmap.Width  := mcmTWAIN.ImageWidth;
               //   Bitmap.Height := mcmTWAIN.ImageHeight;
               // as this will increase memory usage unnecessaryly.
               Bitmap.Handle := hImage;
            end;
       end
       // This example does not support the THDT_DIBRAW format.
       // In THDT_DIBRAW format, the hImage containes the BitmapInfo, i.e.
       // (BitmapInfoHeader and RGBQUAD palette) followed by the bitmap data.
       else GlobalFree(hImage);

       StatusBar1.SimpleText := 'Image was received in a memory Handle';
  end
  else begin // A file name was returned.
       StatusBar1.SimpleText := 'Image was received in file: '  + FileName;
       if FileExists(FileName)
       then begin
            if (Pos('.bmp', lowercase(FileName)) = Length(FileName) - 3)
            then Image1.Picture.Bitmap.LoadFromFile(FileName)
            else if (Pos('.jpg', lowercase(FileName)) = Length(FileName) - 3)
                 then begin
                      JPEGImage := TJPEGImage.Create;
                      try
                        JPEGImage.LoadFromFile(FileName);
                        JPEGImage.DIBNeeded;
                        Image1.Picture.Bitmap.Width  := JPEGImage.Width;
                        Image1.Picture.Bitmap.Height := JPEGImage.Height;
                        Image1.Picture.Bitmap.HandleType := bmDIB;
                        Image1.Picture.Bitmap.Canvas.Draw(0, 0, JPEGImage);
                      except
                      end;
                      JPEGImage.Free;
                 end
                 //-------------------------------------------------------------
                 // To read tiff images you must supply your own import filter!
                 else if (Pos('.tif', lowercase(FileName)) = Length(FileName) - 3)
                      then ;
       end;
  end;
  AdjustImageSize;
  Repaint;
end;

procedure TFormTWAIN.mcmTWAINXferReady(Sender : TObject);
var ImageInfo : TImageInfo;
begin
//------------------------------------------------------------------------------
// Image transfer is ready.
// ------------------------
// This event is fired just before the data source begins to transfer an image.
// Use this event to obtain information on the image about to be transferred.
//------------------------------------------------------------------------------
  // Get image information.
  ImageInfo := mcmTWAIN.GetImageInfo;
end;


procedure TFormTWAIN.mcmTWAINXferNext(Sender : TObject; var NumImages : Integer; var SkipNext : boolean);
var FileExt : string;
begin
//------------------------------------------------------------------------------
// Next image transfer.
// --------------------
// This event is fired before the data source transfers the next image.
// Use this event to decide whether this next image should be scanned, skipped
// or to cancel scanning additional images.
//------------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // (ADF). More images are available in current session.
  // To stop acquisition set NumImages to zero.
  // If NumImages > 0 the data source knows how many images/pages are left to
  // scan.
  // If NumImages < 0 the data source doesn't knows how many images/pages that
  // are left to scan, just that there are more.
  // If NumImages = 0 the data source has transferred all images.
  //----------------------------------------------------------------------------
  if (NumImages <> 0)
  then begin
       case MessageDlg('Number of images: ' + IntToStr(NumImages) + chr($0D) +
                       'Get next image ?', mtConfirmation, [mbYes, mbNo, mbAbort], 0) of
       mrYes   : ;
       mrNo    : SkipNext := True;
       mrAbort : NumImages := 0;
       end;
  end;

  //----------------------------------------------------------------------------
  // When transferring multiple images in file mode, change the file name here.
  // You should only do so, if the transfer is done without user interaction.
  // mcmTWAIN.Filename := 'c:\newname.ext';
  if (mcmTWAIN.XferMech = TWFX_Files) and (NumImages > 0)
  then begin
       // Change the filename, but re-use the extension.
       FileExt := ExtractFileExt(mcmTWAIN.Filename);
       inc(FImageIndex);
       FImageFileName := 'c:\image' + IntToStr(FImageIndex) + FileExt;
       mcmTWAIN.Filename := FImageFileName;
  end;
end;


procedure TFormTWAIN.mcmTWAINDeviceEvent(Sender     : TObject;
                                         Event      : TTwnDeviceEvent;
                                         DeviceName : String;
                                         A, B, C    : Variant);
var MsgStr    : string;
    Container : TtwnContainer;
begin
//------------------------------------------------------------------------------
// Device Event.
// --------------------
// Depending on the "Event" that triggered mcmTWAINDeviceEvent to fire
// A, B and C represents different field of the original TW_DEVICEEVENT
// structure.
// Only TWDE_CHECKAUTOMATICCAPTURE, TWDE_CHECKBATTERY, TWDE_CHECKFLASH,
// TWDE_CHECKPOWERSUPPLY and TWDE_CHECKRESOLUTION returns values in A, B and C.
// For in-depth information please refer to the TWAIN Specifications (Look for
// CAP_DEVICEEVENT, TW_DEVICEEVENT and TWAIN Articals - Device Events) and view
// example code below.
//
// The Events which you want your application to receive from the source are
// specified in the property mcmTWAIN.DeviceEventTypes. By default this set
// is empty = [] resulting in no events.
//
// Note that all device events only occurres when the device status changes or
// as a result of user interaction.
// An event does(should) never occure as a result of the application changing
// properties in the TWAIN driver.
//------------------------------------------------------------------------------

  case Event of
  TWDE_CHECKAUTOMATICCAPTURE : begin
                                 // A = longword - AutomaticCapture - No. of images the
                                 //     Camera will capture.
                                 // B = longword - TimeBeforeFirstCapture.
                                 // C = longword - TimeBetweenCaptures.
                                 MsgStr := 'Check - Automatic capture settings changed.' + chr($0D) +
                                           'Images to capture: ' + IntToStr(A) + chr($0D) +
                                           'Sec. to first capture: ' + IntToStr(B) + chr($0D) +
                                           'Hundreths of a seconds between captures: ' + IntToStr(C);
                               end;
  TWDE_CHECKBATTERY          : begin
                                 // A = longword - BatteryMinutes.
                                 // B = integer - BatteryPercentage.
                                 // Note that the data source will fill in
                                 // the value A or B it supports.
                                 MsgStr := 'Check - Battery status changed.' + chr($0D);
                                 if (A <> 0)
                                 then MsgStr := MsgStr + 'Battery minutes: ' + IntToStr(A)
                                 else MsgStr := MsgStr + 'Battery percentage: ' + IntToStr(B);
                               end;
  TWDE_CHECKDEVICEONLINE     : begin
                                 MsgStr := 'Device has been turned ';
                                 // Use CAP_DEVICEONLINE for more information.
                                 Container := Nil;
                                 if (mcmTWAIN.GetCapabilityMsg(CAP_DEVICEONLINE, MSG_GET, Container) = TWRC_SUCCESS)
                                 then begin
                                      if Container.CurrentValue
                                      then MsgStr := MsgStr + 'ON'
                                      else MsgStr := MsgStr + 'OFF';
                                 end
                                 else MsgStr := MsgStr + 'ON/OFF ?';
                               end;
  TWDE_CHECKFLASH            : begin
                                 // A = longword - FlashUsed status.
                                 MsgStr := 'Flash has been turned ';
                                 case A of
                                 TWFL_NONE   : MsgStr := MsgStr + 'None.';
                                 TWFL_OFF    : MsgStr := MsgStr + 'OFF.';
                                 TWFL_ON     : MsgStr := MsgStr + 'ON.';
                                 TWFL_AUTO   : MsgStr := MsgStr + 'to Auto.';
                                 TWFL_REDEYE : MsgStr := MsgStr + 'Redeye.';
                                 end;
                                 // If necessary use ICAP_FLASHUSED2 to modify
                                 // setting.
                               end;
  TWDE_CHECKPOWERSUPPLY      : begin
                                 // The power supply changed.
                                 // A = Power supply being used.
                                 MsgStr := 'Power supply has changed to ';
                                 if (A = TWPS_EXTERNAL)
                                 then MsgStr := MsgStr + 'AC'
                                 else MsgStr := MsgStr + 'Battery';
                               end;
  TWDE_CHECKRESOLUTION       : begin
                                 // A = double - Current X resolution.
                                 // B = double - Current Y resolution.
                                 MsgStr := 'Current resolution has been changed to' + chr($0D) +
                                           'X: ' + FloatToStrF(A, ffFixed, 8, 4) + chr($0D) +
                                           'Y: ' + FloatToStrF(B, ffFixed, 8, 4);
                                 // If necessary use ICAP_XRESOLUTION and
                                 // ICAP_XRESOLUTION.
                               end;
  TWDE_DEVICEADDED           : MsgStr := 'Device added (Memory card, etc.)';
  TWDE_DEVICEOFFLINE         : MsgStr := 'Device is unavailable.';
  TWDE_DEVICEREADY           : MsgStr := 'Device is ready to acquire an image.';
  TWDE_DEVICEREMOVED         : MsgStr := 'Device has been removed.';
  TWDE_IMAGECAPTURED         : MsgStr := 'Image has been captured.';
  TWDE_IMAGEDELETED          : MsgStr := 'Image has been deleted.';
  TWDE_PAPERDOUBLEFEED       : MsgStr := '?';
  TWDE_PAPERJAM              : MsgStr := 'Paper jam.';
  TWDE_LAMPFAILURE           : MsgStr := 'Light source failed.';
  TWDE_POWERSAVE             : MsgStr := 'Device powered down to save energy.';
  TWDE_POWERSAVENOTIFY       : MsgStr := 'Device is about to power down.';
  else MsgStr := 'Unknown Device Event!';
  end;

  // In this example it has been chosen to display the event-message.
  // In most cases you should not display a message but use the information
  // to obtain the desired functionality.
  MessageDlg(DeviceName + chr($0D) + 'fired the following event:' + chr($0D) +
             MsgStr, mtInformation, [mbOK], 0);
end;


procedure TFormTWAIN.SourceInfoItemClick(Sender : TObject);
begin
  // Display Data Source information.
  // mcmTWAIN.SourceInfo returns the information on either the opened data
  // source or the default (last selected).
  FormSrcInfo := TFormSrcInfo.Create(self);
  FormSrcInfo.SourceInfo := mcmTWAIN.SourceInfo;
  FormSrcInfo.ShowModal;
  FormSrcInfo.Free;
end;


procedure TFormTWAIN.mcmTWAINMemXferSize(    Sender   : TObject;
                                             MinSize,
                                             MaxSize  : Integer;
                                         var BufSize  : Integer;
                                             pBmpInfo : PBitmapInfo);
var LongWidth  : integer;
    BufferSize : integer;
    FNoLines   : integer;
begin
  // Set-up number of lines/bytes to (Memory) transfer in each image chunk.
  with pBmpInfo^.bmiHeader
  do LongWidth := (((Longint(biWidth * biBitCount) + 31) div 32) * 4);
  FNoLines  := pBmpInfo^.bmiHeader.biHeight div 4; // Number of lines to transfer.
  BufferSize := FNoLines * LongWidth;

  // Validate that BufferSize satisfy the condition specified by the data source,
  // i.e. MinSize <= BufferSize <= MaxSize.
  if (BufferSize < MinSize)
  then begin
       FNoLines := Trunc(0.9999 + MinSize / LongWidth);
       BufferSize := FNoLines * LongWidth;
  end;

  if (BufferSize > MaxSize) and (MaxSize <> integer(TWON_DONTCARE32))
  then begin
       FNoLines := Trunc(MaxSize / LongWidth);
       BufferSize := FNoLines * LongWidth;
  end;

  BufSize := BufferSize;
end;

procedure TFormTWAIN.mcmTWAINFailure(Sender        : TObject;
                                     DG            : longint;
                                     DAT, CAP, MSG : Word;
                                     Error, Status : Integer);
begin
  //
  if (Error = TWRC_EXCEPTION)
  then ShowMessage('An exception occured in the driver: ' +
                   mcmTWAIN.SourceInfo.ProductName);

  if (DG in [DG_CONTROL, DG_IMAGE])
  then begin
       case DAT of
       DAT_CAPABILITY : case CAP of
                        ICAP_PIXELTYPE : ShowMessage('Something went wrong!');
                        end;
       end;
  end;
end;

procedure TFormTWAIN.mcmTWAINCloseSource(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Data Source was closed. An image was not transferred.';
end;

end.
