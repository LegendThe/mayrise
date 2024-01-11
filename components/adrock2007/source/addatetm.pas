unit AdDateTm;
               
{* **** BEGIN LICENSE BLOCK *****						*}
{* Version: MPL 1.1								*}
{*										*}
{* The contents of this file are subject to the Mozilla Public License Version	*}
{* 1.1 (the "License"); you may not use this file except in compliance with	*}
{* the License. You may obtain a copy of the License at				*}
{* http://www.mozilla.org/MPL/							*}
{*										*}
{* Software distributed under the License is distributed on an "AS IS" basis,	*}
{* WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License	*}
{* for the specific language governing rights and limitations under the		*}
{* License.									*}
{*										*}
{* The Original Code is Adrock Software - DateTime Suite.			*}
{*										*}
{* The Initial Developer of the Original Code is				*}
{* Adrock Software - BYTE Computer & Software Ltd.				*}
{* Portions created by the Initial Developer are Copyright (C) 1996-2002	*}
{* the Initial Developer. All Rights Reserved.					*}
{*										*}
{* Contributor(s):								*}
{*										*}
{* ***** END LICENSE BLOCK ***** *						*}

interface     

{ $ DEFINE DEBUG}

{$ifdef ADROCK_CC}
{$undef DEBUG}
{$endif}

{$I Adrock.INC}
      
uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Buttons,
  Forms, Dialogs, StdCtrls, ExtCtrls, clipbrd,
  {$IFDEF UNREGISTERED} { This code only gets executed for the Unregistered Version }
    ShellAPI,
  {$ENDIF}  { This completes a Conditional Define }


 {$IFDEF DEBUG}
  dbugintf,
 {$endif}

  AdDatNav,           { TAdrockDateNavigator         }
  AdMnth,             { TAdrockMonth                 }
  AdDateVa,           { Date Validity Routines       }
  AdDDFCl,            {                              }
  AdDateDT,           { TAdrockDateTimeClass         }
  AdCalSet,           { TAdrockCalendarSettingsComponent }
  AdCalPN,            { TAdrockCalendarPopupPanel    }
  AdDateCN,           { TAdrockDate Constants        }
  adButEdt,           { TAdrockButtonEdit            }
  AdDateCC,           { TAdrockCalendarSettings      }
  adGraphi;           { Check box routines           }

  {$B-}

  {$ifdef UNREGISTERED}
  {$DEFINE ADROCK_NAG_SCREEN_TYPE}
  {$I ADNAG.PAS}
  {$UNDEF ADROCK_NAG_SCREEN_TYPE}
  {$ENDIF}

{$I ADDATEDC.PAS } { Declarations for the Control }

implementation

{$ifdef UNREGISTERED}
Var
  HasNagScreenBeenShown  : Boolean;
{$endif}

{$R ADdatetm.RES }     { Include a resource file : This file contains bitmaps for the buttons  }
{$R ADdatets.RES }     { Include a resource file : This file contains strings used in the control }
{$I AdDatePA.PAS }     { This is the code for the paint event, and segment calulation routines }
{$I AdDateCO.PAS }     { This is the code for the rest of the edit contorl                     }
{$I AdDateDS.PAS }     { This is the code for the properties that have the keyword Stored      }
                      { as well. All the methods for those properties are in this file        }

{$ifdef UNREGISTERED}
{Include the NAG Screen Implementation Code }
{$DEFINE ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$I ADNAG.PAS}
{$UNDEF ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$ENDIF}

{$IFDEF UNREGISTERED} { This code only gets executed for the Unregistered Version }
Initialization
  HasNagScreenBeenShown := FALSE;
{$ENDIF}  { This completes a Conditional Define }

end.
