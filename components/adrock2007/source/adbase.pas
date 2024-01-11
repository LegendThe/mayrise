unit adBase;

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

Uses
  Classes,  { Declares RegisterComponents()}

  adWFoc,   { TAdrockWhenFocusedGlobal }


  AdEdit,   { TAdrockEdit              }
  AdMask,   { TAdrockMaskEdit          }
  AdMemo,   { TAdrockMemo              }
  AdCombo,  { TAdrockComboBox          }
  AdListBo, { TAdrockListBox           }
  AdGrpBox, { TAdrockGroupBox          }
  AdRadGrp, { TAdrockRadioGroup        }
  AdChkBx,  { TAdrockCheckBox          }
  AdRadBtn, { TAdrockRadioButton       }
  AdTimSpd, { TAdrockTimerSpeedButton  }
  AdSpinEd, { TAdrockSpinEdit          }

  AdFiltls, { TAdrockFilterListBox     }
  AdFilLst, { TAdrockFileListBox       }
  adDirLst, { TAdrockDirectoryListox   }
  adDriLst, { TAdrockDriveComboBox     }

  adcomped, { TAdrockAutoCompletionEdit     }
  adcompcm, { TAdrockAutoCompletionComboBox }
  adString, { TAdrockStrings                }
  addbacom, { TAdrockDBAutoCompletionComboBox }

  {$ifdef WIN32}
  AdChkLst, { TAdrockCheckListBox }
  AdTree,   { TAdrockTreeView - Delphi 2 & 3 only }
  AdLView,  { TAdrockListView - Delphi 2 & 3 only }
  AdHotKey, { TAdrockHotKey   - Delphi 2 & 3 only }
  {$Endif}

  AdDBMask, { TAdrockDBMaskEdit    }
  AdDBCHBx, { TAdrockDbCheckBox    }
  AdDBEdit, { TAdrockDbEdit        }
  AdDBMemo, { TAdrockDbMemo        }
  AdDBComb, { TAdrockDbComboBox    }
  AdDBLBox, { TAdrockDbListBox     }
  adDBRGrp, { TAdrockDBradioGroup  }
  AdDBSpin, { TAdrockDBSpinEdit    }
  adDBLCmb; { TAdrockDBLookupCombo }


{ Declare the Register Routine that will Register the Components with Delphi }
procedure Register;

implementation

procedure Register;
begin
  { Register (Standard Versions) TAdrockEdit, TAdrockMemo, TAdrockListBox, TAdrockComboBox }
  RegisterComponents('Adrock(Base)', [TAdrockWhenFocusedGlobal,
                                      TAdrockEdit,             TAdrockMemo,       TAdrockListBox,
                                      TAdrockComboBox,         TAdrockRadioGroup, TAdrockGroupBox,
                                      TAdrockRadioButton,      TAdrockCheckBox,   TAdrockSpinEdit,
                                      TAdrockTimerSpeedButton, TAdrockAutoCompletionEdit,
                                      TAdrockAutoCompletionComboBox, TAdrockStrings,
                                      TAdrockFilterComboBox,   TAdrockMaskEdit,      
                                      TAdrockFileListBox,
                                      TAdrockDirectoryListBox,
                                      TAdrockDriveComboBox,


                                      {$ifdef WIN32}
                                      TAdrockCHeckListBox,
                                      TAdrockHotKey,           { TAdrockHotkey     -  Delphi 2 & 3 Only }
                                      TAdrockTreeView,         { TAdrockTreeView   -  Delphi 2 & 3 Only }
                                      TAdrockListview,         { TAdrockList View  -  Delphi 2 & 3 Only }
                                      {$Endif}

                                      TAdrockSpinButton]);

  { Register (Data-Aware Versions) TAdrockDBEdit, TAdrockDBMemo, TAdrockDBListBox, TAdrockDBComboBox }
  RegisterComponents('Adrock(Base)', [TAdrockDBEdit,            TAdrockDBMemo,
                                      TAdrockDBComboBox,        TAdrockDBCheckBox,
                                      TAdrockDBAutoCompletionComboBox,        
                                      TAdrockDBListBox,         TAdrockDBRadioGroup,
                                      TAdrockDBSpinEdit,        TAdrockDBLookupComboBox,
                                      TAdrockDBMaskEdit]);
end;

end.
 
