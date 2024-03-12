    TWAIN Toolkit for Delphi, version 2.0

    TWAIN application, driver & component for Delphi 3, 4, 5 & 6
    -------------------------------------------------------------------------

	MCM DESIGN
	Sandholmgardsvej 38
	3460 Birkerod 
	Denmark

	E-mail:		CustomerCare@mcm-design.dk
	Homepage:	www.mcm-design.com


    --------------------------------------------------------------------------

    HOW TO ORDER:

    Read the ONLINE HELP for detailes on how to order and register this product.

   
    --------------------------------------------------------------------------

    License agreement is included in the ONLINE HELP.

    --------------------------------------------------------------------------

    The Toolkit is installed into four directories

    Sample program and Order information file in
	C:\PROGRAM FILES\MCM DESIGN\
    
    Sample program source code and Components
	C:\PROGRAM FILES\BORLAND\DELPHI3\MCM DESIGN\ or
	C:\PROGRAM FILES\BORLAND\DELPHI4\MCM DESIGN\ or
	C:\PROGRAM FILES\BORLAND\DELPHI5\MCM DESIGN\ or
	C:\PROGRAM FILES\BORLAND\DELPHI6\MCM DESIGN\

    Online help
	C:\PROGRAM FILES\BORLAND\DELPHI3\HELP\ or
	C:\PROGRAM FILES\BORLAND\DELPHI4\HELP\ or
	C:\PROGRAM FILES\BORLAND\DELPHI5\HELP\ or
	C:\PROGRAM FILES\BORLAND\DELPHI6\HELP\

    Sample Data Source (TWAIN Driver)
        C:\WINDOWS\TWAIN_32\ or C:\WINNT\TWAIN_32\

    --------------------------------------------------------------------------


INSTALL THE TOOLKIT:
-----------------------------------------------------------------------------------------------
After running the SETUP.EXE file, you should run Delphi. In Delphi, select the Component, 
Install Packages menu. Click the ADD button, and select the 

	MCMTWN3.DPL	for Delphi 3
	MCMTWN4.BPL	for Delphi 4
	MCMTWN5.BPL	for Delphi 5
	MCMTWN6.BPL	for Delphi 6

component file.



UN-INSTALL THE TOOLKIT:
-----------------------------------------------------------------------------------------------
In Delphi, select the Component, Install Packages menu. In the dialogue, locate and select 
the "MCM DESIGN, TWAIN Toolkit for Delphi", and click the Remove button.

From the Control Panel, select the Add/Remove Programs, and select "MCM DESIGN, TWAIN Toolkit for Delphi" 
and click the Add/Remove button, to un-install the toolkit.


THE TWAIN MANUAL:
-----------------------------------------------------------------------------------------------
To get the original TWAIN Manual describing the TWAIN standard contact the TWAIN Working Group at:

homepage:	http://www.twain.org

It is strongly recommend that you acquire the original TWAIN specification from the above internet 
address, so that you will have the latest revision of the manual's and the required dll 
files needed to run the example's included in this zip file. 


HELP FILES:
-----------------------------------------------------------------------------------------------
mcmTWAIN.HLP	        Windows help file
mcmTWAIN.CNT	        Windows help contents file


TmcmTWAIN COMPONENT FILES:
-----------------------------------------------------------------------------------------------
InstmcmTwn.pas          Delphi installation unit.
mcmTWAIN.pas	        The TmcmTWAIN component
mcmTWAIN.ico            
mcmTWAIN.dcr            
mcmTWAINContainer.pas   Wrapper component for TWAIN structures.
mcmTWAINFix.pas         Conversion unit (Real - Fix format)
mcmTWAINIntf.pas        Middle layer functionality component. Ancestor to mcmTWAIN.pas.
mcmTWAINKernel.pas      Core TWAIN communicaton component. Ancestor to mcmTWAINIntf.pas.
mcmTWAINLog.pas         TWAIN communication log component
TWAIN.pas               TWAIN constants and definition unit.
TWAINProc.pas           TWAIN DLL interface procedure definitions.

uTwnDlgSend.pas	        Dialogue for testing communication.
uTwnDlgSend.dfm	        -
uTwnDlgPref.pas	        Dialogue for setting up preferences. This is just an example!
uTwnDlgPref.dfm	        -
uTwnAbout3.dcu	        Application about dialogue (Delphi 3)
uTwnAbout3.dfm          -
uTwnAbout4.dcu	        Application about dialogue (Delphi 4)
uTwnAbout4.dfm          -
uTwnAbout5.dcu          Application about dialogue (Delphi 5)
uTwnAbout5.dfm          -
uTwnAbout6.dcu          Application about dialogue (Delphi 6)
uTwnAbout6.dfm          -

mcmTwn3.dpl             Delphi 3 component pack
mcmTwn3.dcp             -
mcmTwn3.dpk             -
mcmTwn3.res             -
mcmTwn4.bpl             Delphi 4 component pack
mcmTwn4.dcp             -
mcmTwn4.dpk             -
mcmTwn4.res             -
mcmTwn5.bpl             Delphi 5 component pack
mcmTwn5.dcp             -
mcmTwn5.dpk             -
mcmTwn5.res             -
mcmTwn6.bpl             Delphi 6 component pack
mcmTwn6.dcp             -
mcmTwn6.dpk             -
mcmTwn6.res             -


EXAMPLE PROJECT FOR CREATING A TWAIN APPLICATION USING THE TmcmTWAIN COMPONENT:
-----------------------------------------------------------------------------------------------
d32twain.dpr		Project 1, TWAIN application.
uTwainForm.pas		Applications Main window.
uTwainForm.dfm		-
uTwnDlgSrcInfo.pas      Diagolue showing information about the Data Source.
uTwnDlgSrcInfo.dfm      -

d32twainLI.dpr		Project 2, TWAIN application, Large Image.
uTwainFormLI.pas	Applications Main window.
uTwainFormLI.dfm	-


EXAMPLE PROJECT FOR CREATING A DAT SOURCE:
-----------------------------------------------------------------------------------------------
srclogo.ico	        Source Icon
mcmTWAINDS.dpr	        Project file
uDSUserInterface.pas    Data Source Main window
uDSUserInterface.dfm	-
mcmTWAINDSEntry.pas     Entry point for all messages to a Data Source.
mcmTWAINDSLayer.pas     A middle layer handling the TWAIN communication, and provides 
                        the "interface" to the user interface.
uTwnDlgHandle.pas       Unit maintaining a æist of handles to all data source windows.
usabout.pas	        Source about dialogue.
usabout.dfm	        -
uTwnDlgAppInfo.pas      Application information dialogue.
uTwnDlgAppInfo.dfm      -
uTwnDlgSimEvents.pas    Simulate device events dialogue.
uTwnDlgSimEvents.dfm    -

Driver32.res            Resource file containing version information and data strings
                        displayed in the TWAIN Select Source dialogue.


COMPILED PROGRAM FILES:
-----------------------------------------------------------------------------------------------
d32twain.exe	Delphi 3, 4, 5 and 6 Example of a TWAIN application.
		
mcmTWAINDS.ds	Delphi 3, 4, 5 and 6 Example of a TWAIN driver. 
		Placed at
		C:\WINDOWS\TWAIN_32\ or C:\WINNT\TWAIN_32\


TWAIN FILES: 
-----------------------------------------------------------------------------------------------
All these files are installed in either C:\WINDOWS or C:\WINNT

twain.dll	
twain_32.dll	
twunk_16.exe	
twunk_32.exe	

NOTE: These files will not be installed on Windows 2000 or latter, as these are already installed and 
marked as system files.


ADDITIONAL INFORMATION:
-----------------------------------------------------------------------------------------------
The source code contains a few pratical notes and hints, that are important !!!

Data Source: 
	The menu item "File Open" in the Data Source (TWAIN Driver), allows you to open bitmap and 
	JPEG images in the TWAIN Source interface. 
	These images will be transfered to the calling application upon selecting the File, Exit/
	Transfer menu item.
	If the TWAIN interface is closed in any other way, no image will be transfered back
	to the calling application.


CHANGING TWAIN VERSION INFORMATION IN THE SAMPLE DATA SOURCE:
-----------------------------------------------------------------------------------------------
You can edit the driver32.res with NOTEPAD.EXE, and convert this file useing the TRES.BAT 
file. Note: that the program "BRCC32.EXE" and pathes used in the TRES.BAT may be placed 
at another location on your computer. Therefore, verify and if required modify the path to BRCC32.EXE.


YOUR COMMENTS:
-----------------------------------------------------------------------------------------------
Send us a note if
*	you have any comments or suggestions on how to improve the TWAIN Source interface, 
	application, component.

The address is provided above, and we would realy like to hear your great ideas ! 


MCM DESIGN
04 December 2001
