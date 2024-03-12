Developer,

Thank you for using the Infinity Software Group components. We hope that you will find this product to be a valuable tool.  


Additional Installation Required:

1)  Install the components as directed in the User's Manual of  Delphi. The component files to be installed are:

ISGMapi.dcu or ISGMapi.pas 
FRMPKG.dcu or FRMPKG.pas

Note To Delphi 3.0 Users: 
The Delphi 3.0 Component Package file is ISGMapi24.dpl, Installing & Compiling the component package & adding the directory path to the Library Search Path will complete the components installation for Delphi 3.0

How To Install & Compile The Component Package In Delphi 3:
Double click on the ISGMapi24.DPK file from your windows explorer
  (Note: Delphi should load and open the component package.)
Now click the compile button, then click the Install button. 
Click the Options button, then the Global tab 
Add the components path to the Library Path line. 
Click Ok and exit the package window. 
Answer yes to save changes.

The component is now installed and will appear on the ISG tool tab.


Note To Delphi 4.0 Users: 
The Delphi 4.0 Component Package file is ISGMapi24.bpl, Installing & Compiling the component package & adding the directory path to the Library Search Path will complete the components installation for Delphi 4.0

How To Install & Compile The Component Package In Delphi 4:
Double click on the ISGMapi24.DPK file from your windows explorer
  (Note: Delphi should load and open the component package.)
Now click the compile button, then click the Install button. 
Exit the package window.
Click "File" in the menu, then click "Close All" from the dropdown menu
Answer yes to save changes.
****
Make sure the path to the component files is listed in environment options library path
****
The component is now installed and will appear on the ISG tool tab.


How To Install & Compile The Component Package In Delphi 5:
Double click on the ISGMapi25.DPK file from your windows explorer
  (Note: Delphi should load and open the component package.)
Now click the compile button, then click the Install button. 
Exit the package window.
Click "File" in the menu, then click "Close All" from the dropdown menu
Answer yes to save changes.
****
Make sure the path to the component files is listed in environment options library path
Note:  This component uses delphi's DSGNINTF.DCU file.  This file is located under Delphi5\source\toolsapi.  It is NOT included in Delphi's library.  To make sure the component files can locate it, you may do one of the following:
1) Add the path '$(DELPHI)\source\toolsapi' to Environment Options    Library Path
..OR..
2) Copy the files DSGNINTF.* to 'Delphi5\lib'.
****

The component is now installed and will appear on the ISG tool tab.


Note To C++ Builder Users: Some C++ Builder system configurations require the Map File Segments to be enabled for the component to be installed.

After installation, all components are located in the [ISG] tab.



2)  Optionally, you can merge the component's help file to enable the context sensitive help. The context sensitive help will allow you to press F1 to get help on any aspect of the component. Delphi 3.x & Delphi 4.x users can execute the help file installation program (ISGHelp.exe) that was installed with the component.

If you are using our component in Delphi or Delphi 2.x then the process is a manual one. Below is a step by step procedure on how to merge our help files with the Delphi and Delphi 2.x help systems. Remember to close Delphi and Delphi 2 before you start the process, this way Delphi will see the changes the next time it is started.

For Delphi 1.x

A. Copy Frmpkg.kwf & ISGMapi.kwf to the \delphi\help directory

B. Copy FmpkWin3.hlp & MapiWin3.hlp to the \delphi\Bin directory

C. Execute HELPINST.EXE (should be in \DELPHI\HELP\)

D. Open \delphi\bin\delphi.hdx

E. Click the add button and select \delphi\help\Frmpkg.kwf & ISGMapi.kwf

Note: The options>search paths menu should now contain c:\Delphi\help and none of the files listed should have "*not found*". If any of the listed files do have '*not found*' then you will need to locate those files and add their path to the search path in HELPINST.

F. Save and Exit

NOTE: If the help files directory is not in your systems path then the first time you use F1 to get context sensitive help on the ISG component you will get this Message: Cannot find the Fmpkwin3.hlp or MapiWin3.hlp file. Do you want to try to find this file yourself?  Answer yes and locate the file in the \Delphi\bin directory, Then click ok. This will be the ONLY time you will need to locate the file.


For Delphi 2.x:

A) Copy Frmpkg.kwf, ISGMapi.kwf, Frmpkg.hlp, & ISGMapi.hlp to the \Program Files\Borland\Delphi 2.0\help directory

B) Execute HELPINST.EXE (should be in \Program Files\Borland\Delphi
2.0\HELP\Tools)

C) Open \Program Files\Borland\Delphi 2.0\bin\delphi.hdx

D) Click the add button and select \Program Files\Borland\Delphi 2.0\help\Frmpkg.kwf & ISGMapi.kwf

Note: The options>search paths menu should now contain
c:\progra~1\Borland\Delphi~1.0\help and none of the files listed should have
"*not found*". If any of the listed files do have '*not found*' then you will
need to locate those files and add their path to the search path in HELPINST.

E) Save and Exit

NOTE: If the help files directory is not in your systems path then the first time you use F1 to get context sensitive help on the component you will get this Message: Cannot find the Frmpkg.hlp or ISGMapi.hlp file. Do you want to try to find this file yourself?  Answer yes and locate the file in the \Program Files\Borland\Delphi 2.0\help directory, Then click ok. This will be the ONLY time you will need to locate the file.


3)  Optionally, you can build the demo that is distributed with the component. To run the demo, the DBDEMO Alias must have been installed with Delphi.


Customer Service and Technical support

We are commited to providing quality components.  If there is a problem, contact us immediately so that we can make corrections.  Also visit our web site at http://www.infsoft.com.  Customer service and technical support concerns should first be directed to our email account at either components@didelot.com or support@didelot.com.  In case of emergency contact our office at (318)-477-6901.

Again, we want to thank you for purchasing our product!  Please feel free to send comments and suggestions via email to components@didelot.com.

