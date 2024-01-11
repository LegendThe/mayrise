unit adDSuite;

(* ------------------------ Adrock Copyright Notice ----------------------- 

This source code file is copyright, BYTE Computer & Software Ltd, 1995 -> 1999.
By purchasing this source code, you should have read, and agreed to our terms
of purchase, contained in the LICENCE.WRI file (in all distributed archives
from 22nd January, 1996) - a copy of which is shown below for your reading.

LICENCE.WRI - If you wish to purchase source code, this file is a must read.

Delphi Shareware Control - Terms and Conditions of Source Code Purchase
BYTE Computer & Software Ltd - Adrock Software

1.   The following terms and conditions shall apply to the purchase of Full 
     Registrations or Upgrade Registrations which contain source code for the 
     following Adrock Software Delphi controls:

     TAdrockTitan - Query, copyright BYTE Computer & Software Ltd, (c) 2000

     herein referred to as the source code.

     The ordering of the source code shall be deemed to be an acceptance, by the 
     purchaser  of the following terms of purchase.

2.   The purchase of the source code entitles the purchaser to make use of 
     the source code or variations of the source code for use and application by the         
     purchaser only.

3.   There shall be no reproduction, disclosure, sale, lease, rent or use to 
     or by any 3rd party of the source code.

4.   The purchaser acknowledges that all intellectual property rights in the 
     source code including copyright confidential information and identifying trade 
     names or marks are the sole property of the vendor, 
     BYTE Computer & Software Ltd,  Christchurch, New Zealand.

5.   If there is any dispute as to the interpretation or application of this Contract, 
     the proper law to apply to the Contract shall be that of New Zealand"


And our interpretation,  for those of you that aren't lawyers
(though it's not *that* bad, is it!).

By purchasing Full Registrations or Upgrade Registrations that contain source 
code for the above controls, you accept the terms as stated above. These 
terms essentially try and protect us from you copying the code, re-compiling
 it (with just a few changes (ie you stick your own name details in there)) and
then selling it as your own. 

Well that's just plain unfair - ain't it! We've done all the hard work. By purchasing 
the source code, we give you the rights to use it to 
do what you want with it for recompilation for use in your own applications.

Essentially, we're asking you to be honest and fair about the way you use our 
source code, so a lot relies on you. 

So register or upgrade to the source, make all the changes in the world you want, and 
let you and your end-users enjoy the results!

If you have any questions regarding our source code policy, you are always 
welcome to contact us:

Adrock Software
c/o BYTE Computer & Software Ltd
132 Peterborough Street (physical)
P.O. Box 13-155 (mail)
Christchurch
New Zealand

Email:
Internet: Sales@Adrock.com

WWW (World Wide Web) home page:
http://www.Adrock.com

------------------------ Adrock Copyright Notice ----------------------- *)

interface


Uses
  Classes,  { Declares RegisterComponents}
  DesignIntf,{ Register Component Editor }

  AdDtRegc, { TAdrockDateTimeEdit Component Editor     }
  AdcsRegc, { TAdrockCalendarSettings Component Editor }
  AdcpRegc, { TAdrockCalendarPanel Component Editor    }
  Ad3dCal,  { TAdrock3dCalendar                    }
  adCalPN,  { TAdrockCalendarPanel                 }
  AdDateTm, { TAdrockDateTimeEdit                  }
  AdButEdt, { TAdrockButtonEdit                    }
  adCBEdit, { TAdrockAutoCompletionButtonEdit      }
  AdcalSet, { TAdrockCalendarSettingsComponent     }
  AdCalc,   { TAdrockCalculatorEdit                }

  AdDBDaTm, { TAdrockDBDateTimeEdit                }
  AdDBCalc; { TAdrockDBCalculatorEdit              }

{ Declare the Register Routine that will Register the Components with Delphi }
procedure Register;

implementation

procedure Register;
begin
  { Register (Standard Versions) TAdrock3dCalendar }
  RegisterComponents('Adrock', [TAdrockCalendarSettingsComponent]);
  RegisterComponents('Adrock', [TAdrockButtonEdit, TAdrockAutoCompletionButtonEdit]);

  RegisterComponents('Adrock', [TAdrock3dCalendar, TAdrockCalcEdit, TAdrockDateTimeEdit]);
  RegisterComponents('Adrock', [TAdrockCalendarPanel]);

  { Register (Data-Aware Versions) TAdrockDBEdit, TAdrockDBMemo, TAdrockDBListBox, TAdrockDBComboBox }
  RegisterComponents('Adrock', [TAdrockDBCalcEdit, TAdrockDBDateTimeEdit]);

  RegisterComponentEditor(TAdrockCalendarPanel, TAdrockCalendarPanelComponentEditor);
  RegisterComponentEditor(TAdrockCalendarSettingsComponent, TAdrockCalendarSettingsComponentEditor);
  RegisterComponentEditor(TAdrockDateTimeEdit, TAdrockDateTimeComponentEditor);
  RegisterComponentEditor(TAdrockDBDateTimeEdit, TAdrockDateTimeComponentEditor);
end;

end.
