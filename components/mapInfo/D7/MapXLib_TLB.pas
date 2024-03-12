unit MapXLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 8291 $
// File generated on 07/10/2010 09:25:28 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\MapInfo MapX 5.0\MAPX50.DLL (1)
// LIBID: {E760686B-BC9E-4802-9ECF-175FDF4062CE}
// LCID: 0
// Helpfile: C:\Program Files\MapInfo MapX 5.0\MapX50.hlp
// HelpString: MapInfo MapX V5
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: TypeInfo 'Label' changed to 'Label_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Set' of 'CMapXRectangle' changed to 'Set_'
//   Hint: Member 'Set' of 'CMapXCoordSys' changed to 'Set_'
//   Hint: Parameter 'Type' of CMapXCoordSys.Set changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Set' of 'CMapXDatum' changed to 'Set_'
//   Hint: Member 'Set' of 'CMapXAffineTransform' changed to 'Set_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Set' of 'CMapXPoint' changed to 'Set_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of CMapXDatasets.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of CMapXFields.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of CMapXThemes.Add changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of CMapXFeatureFactory.CreateCircularRegion changed to 'Type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'To' of CMapXLayers.Move changed to 'To_'
//   Hint: Parameter 'Type' of CMapX.CreateCustomTool changed to 'Type_'
//   Error creating palette bitmap of (TDataSets) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLayers) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLayerInfo) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLayer) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TField) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TDataset) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TThemes) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TTheme) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLegend) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TAnnotations) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TThemeProperties) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TSelection) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFeature) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TRangeCategory) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFields) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TStyle) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TIndividualValueCategory) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TMultiVarCategory) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TSourceRows) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TSourceRow) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TAnnotation) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TGraphic) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLegendText) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLegendTexts) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TTitle) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLabelProperties) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TBindLayer) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TRangeCategories) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TIndividualValueCategories) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TMultivarCategories) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TBitmapSymbols) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TRectangle) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TBoundsConstraint) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFeaturesConstraint) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TAllFeaturesConstraint) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFind) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFindFeature) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFindResult) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFindMatch) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFindMatches) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TParts) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TPoints) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TPoint) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TGeosets) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TGeoSet) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFeatures) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TDatum) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TAffineTransform) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TCoordSys) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TBitmapSymbol) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TFeatureFactory) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TResolveObjects) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TResolveObject) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TRowValues) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TRowValue) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TVariables) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TVariable) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLabels) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
//   Error creating palette bitmap of (TLabel_) : Server C:\PROGRA~1\MAPINF~1.0\MAPX50.DLL contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MapXLibMajorVersion = 5;
  MapXLibMinorVersion = 0;

  LIBID_MapXLib: TGUID = '{E760686B-BC9E-4802-9ECF-175FDF4062CE}';

  DIID_CMapXAllFeaturesConstraint: TGUID = '{806FA9D7-C5D9-43E9-B381-69E30C991E84}';
  DIID_CMapXAnnotation: TGUID = '{1C66DB81-D40D-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXText: TGUID = '{4B6690A0-D4D1-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXStyle: TGUID = '{1C1EE340-C439-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXAnnotations: TGUID = '{7A35D061-6AAC-11CF-96AE-00AA00A4760F}';
  DIID_CMapXBitmapSymbol: TGUID = '{1FF38E51-F159-11D0-9DB4-00AA00A478CB}';
  DIID_CMapXBoundsConstraint: TGUID = '{4ABEC4CB-DFD0-444F-9472-B5192D6F4526}';
  DIID_CMapXRectangle: TGUID = '{4C952040-3331-11D0-8796-00AA00B7EF73}';
  DIID_CMapXCoordSys: TGUID = '{49EB5382-BFFB-11D0-934C-00AA004603B3}';
  DIID_CMapXDatum: TGUID = '{49EB5384-BFFB-11D0-934C-00AA004603B3}';
  DIID_CMapXAffineTransform: TGUID = '{DE279C62-DCDF-11D0-934C-00AA004603B3}';
  DIID_CMapXLabel: TGUID = '{58A009FA-D7D0-4AD9-A593-69ADC20A6A21}';
  DIID_CMapXLayer: TGUID = '{77306D48-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXLabelProperties: TGUID = '{61E82A60-FB59-11CF-9019-00AA00A53B3C}';
  DIID_CMapXSelection: TGUID = '{B0929660-BA3A-11CF-9019-00AA00A53B3C}';
  DIID_CMapXFeature: TGUID = '{B0929662-BA3A-11CF-9019-00AA00A53B3C}';
  DIID_CMapXParts: TGUID = '{968303A0-8F18-11D0-8796-00AA00B7EF73}';
  DIID_CMapXPoints: TGUID = '{968303A2-8F18-11D0-8796-00AA00B7EF73}';
  DIID_CMapXPoint: TGUID = '{968303A6-8F18-11D0-8796-00AA00B7EF73}';
  DIID_CMapXFeatures: TGUID = '{090703E0-9563-11D0-8796-00AA00B7EF73}';
  DIID_CMapXLayerFind: TGUID = '{436052C0-43E3-11D0-83EB-00AA00BD34FC}';
  DIID_CMapXFindFeature: TGUID = '{436052C2-43E3-11D0-83EB-00AA00BD34FC}';
  DIID_CMapXFindResult: TGUID = '{A4274C81-7E2E-11D2-8CE0-00207812C7EB}';
  DIID_CMapXFindMatches: TGUID = '{CF466D01-7FAB-11D2-8CE0-00207812C7EB}';
  DIID_CMapXFindMatch: TGUID = '{CF466D04-7FAB-11D2-8CE0-00207812C7EB}';
  DIID_CMapXDatasets: TGUID = '{77306D4E-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXDataset: TGUID = '{77306D51-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXFields: TGUID = '{3DBD18C2-C2AC-11CF-8796-00AA00B7EF73}';
  DIID_CMapXField: TGUID = '{77306D4C-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXThemes: TGUID = '{77306D54-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXTheme: TGUID = '{77306D56-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXThemeProperties: TGUID = '{44DB7B47-B2F5-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXRangeCategoriesCollection: TGUID = '{ECC81860-038E-11D1-9DC6-00AA00A478CB}';
  DIID_CMapXRangeCategory: TGUID = '{97F45D06-BF8A-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXMultivarCategoriesCollection: TGUID = '{ECC81864-038E-11D1-9DC6-00AA00A478CB}';
  DIID_CMapXMultiVarCategory: TGUID = '{6DDA5660-C853-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXIndividualValueCategoriesCollection: TGUID = '{ECC81862-038E-11D1-9DC6-00AA00A478CB}';
  DIID_CMapXIValueCategory: TGUID = '{985148C3-C84B-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXLegend: TGUID = '{77306D5C-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXLegendTexts: TGUID = '{4EC9B528-DFCF-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXLegendText: TGUID = '{4EC9B520-DFCF-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXSourceRows: TGUID = '{46FF43C0-C9ED-11CF-8796-00AA00B7EF73}';
  DIID_CMapXSourceRow: TGUID = '{46FF43C2-C9ED-11CF-8796-00AA00B7EF73}';
  DIID_CMapXRowValues: TGUID = '{7A5FFDC2-FE6C-11D2-98A9-00A0C9742CCA}';
  DIID_CMapXRowValue: TGUID = '{2EF654E2-FE50-11D2-98A9-00A0C9742CCA}';
  DIID_CMapXLabels: TGUID = '{C6AAE3F1-88D9-45FB-B816-7D635B3F259B}';
  DIID_CMapXFeaturesConstraint: TGUID = '{064F4C93-D40A-4FE4-9FC0-4A6C4A6EAA8D}';
  DIID_CMapXFeatureFactory: TGUID = '{BBE482A1-037F-11D1-8796-00AA00B7EF73}';
  DIID_CMapXGeoset: TGUID = '{DC09D461-9575-11D0-83F7-00AA00BD34FC}';
  DIID_CMapXGeosets: TGUID = '{984C9420-93BA-11D0-B374-444553540000}';
  DIID_CMapXLayerInfo: TGUID = '{30D28170-FE33-11D2-9878-0060089F59A5}';
  DIID_CMapXLayers: TGUID = '{77306D42-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXTitle: TGUID = '{B2504160-E149-11CF-9BEE-00AA00A478CB}';
  DIID_CMapXResolveObject: TGUID = '{92880603-CD2F-11D1-A34B-00207812EFE7}';
  DIID_CMapXResolveObjects: TGUID = '{92880600-CD2F-11D1-A34B-00207812EFE7}';
  DIID_CMapXVariable: TGUID = '{9A5D5585-EFB8-11D3-9C33-0050049DA682}';
  DIID_CMapXVariables: TGUID = '{9A5D5583-EFB8-11D3-9C33-0050049DA682}';
  IID_IRowCursor: TGUID = '{9F6AA700-D188-11CD-AD48-00AA003C9CB6}';
  CLASS_DataSets: TGUID = '{77306D4F-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapX: TGUID = '{9D6ED197-5910-11D2-98A6-00A0C9742CCA}';
  DIID_CMapXEvents: TGUID = '{9D6ED198-5910-11D2-98A6-00A0C9742CCA}';
  CLASS_Map: TGUID = '{B06B11B1-EBEC-4972-B786-369EB41C18B2}';
  CLASS_Layers: TGUID = '{77306D43-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_LayerInfo: TGUID = '{40E661C9-0975-4060-94B4-B870BB9DBCAA}';
  CLASS_Layer: TGUID = '{77306D49-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_Field: TGUID = '{77306D4D-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_Dataset: TGUID = '{77306D52-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_Themes: TGUID = '{77306D55-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_Theme: TGUID = '{77306D57-5C82-11CF-8795-00AA00B7EF73}';
  CLASS_Legend: TGUID = '{77306D5D-5C82-11CF-8795-00AA00B7EF73}';
  DIID_CMapXCollection: TGUID = '{3AAB5861-6166-11CF-8795-00AA00B7EF73}';
  CLASS_Collection: TGUID = '{3AAB5862-6166-11CF-8795-00AA00B7EF73}';
  CLASS_Annotations: TGUID = '{7A35D062-6AAC-11CF-96AE-00AA00A4760F}';
  CLASS_ThemeProperties: TGUID = '{44DB7B48-B2F5-11CF-9BEE-00AA00A478CB}';
  CLASS_Selection: TGUID = '{B0929661-BA3A-11CF-9019-00AA00A53B3C}';
  CLASS_Feature: TGUID = '{7278781B-1C44-40BD-9CBA-488047138933}';
  CLASS_RangeCategory: TGUID = '{97F45D07-BF8A-11CF-9BEE-00AA00A478CB}';
  CLASS_Fields: TGUID = '{6FD7917A-0B74-4963-8267-52249CF53842}';
  CLASS_Style: TGUID = '{A2C029E1-C867-4175-AC0C-233F7B65894A}';
  CLASS_IndividualValueCategory: TGUID = '{985148C4-C84B-11CF-9BEE-00AA00A478CB}';
  CLASS_MultiVarCategory: TGUID = '{6DDA5661-C853-11CF-9BEE-00AA00A478CB}';
  CLASS_SourceRows: TGUID = '{46FF43C1-C9ED-11CF-8796-00AA00B7EF73}';
  CLASS_SourceRow: TGUID = '{46FF43C3-C9ED-11CF-8796-00AA00B7EF73}';
  CLASS_Annotation: TGUID = '{1C66DB82-D40D-11CF-9BEE-00AA00A478CB}';
  CLASS_Graphic: TGUID = '{4B6690A1-D4D1-11CF-9BEE-00AA00A478CB}';
  CLASS_LegendText: TGUID = '{4EC9B521-DFCF-11CF-9BEE-00AA00A478CB}';
  CLASS_LegendTexts: TGUID = '{4EC9B529-DFCF-11CF-9BEE-00AA00A478CB}';
  CLASS_Title: TGUID = '{B2504161-E149-11CF-9BEE-00AA00A478CB}';
  CLASS_LabelProperties: TGUID = '{61E82A61-FB59-11CF-9019-00AA00A53B3C}';
  DIID_CMapXBindLayer: TGUID = '{234FF3C8-071E-11D0-9BEE-00AA00A478CB}';
  CLASS_BindLayer: TGUID = '{FCFA3007-F7B3-4A0D-AB46-A7E7CE221EA7}';
  CLASS_RangeCategories: TGUID = '{ECC81861-038E-11D1-9DC6-00AA00A478CB}';
  CLASS_IndividualValueCategories: TGUID = '{ECC81863-038E-11D1-9DC6-00AA00A478CB}';
  CLASS_MultivarCategories: TGUID = '{ECC81865-038E-11D1-9DC6-00AA00A478CB}';
  DIID_CMapXBitmapSymbolsCollection: TGUID = '{ECC81866-038E-11D1-9DC6-00AA00A478CB}';
  CLASS_BitmapSymbols: TGUID = '{795145F6-5D7A-4C0E-AAA4-14539E170074}';
  CLASS_Rectangle: TGUID = '{176C3527-CFE1-47B8-BA22-15E7A6EB1C86}';
  CLASS_BoundsConstraint: TGUID = '{65206DBA-1A3D-4B6B-8A7C-610082024866}';
  CLASS_FeaturesConstraint: TGUID = '{47BEE832-3898-408A-92F2-791373C8C4A6}';
  CLASS_AllFeaturesConstraint: TGUID = '{A9A394A0-F335-47C8-9877-C984224B4740}';
  CLASS_Find: TGUID = '{436052C1-43E3-11D0-83EB-00AA00BD34FC}';
  CLASS_FindFeature: TGUID = '{436052C3-43E3-11D0-83EB-00AA00BD34FC}';
  CLASS_FindResult: TGUID = '{A4274C83-7E2E-11D2-8CE0-00207812C7EB}';
  CLASS_FindMatch: TGUID = '{CF466D06-7FAB-11D2-8CE0-00207812C7EB}';
  CLASS_FindMatches: TGUID = '{CF466D03-7FAB-11D2-8CE0-00207812C7EB}';
  CLASS_Parts: TGUID = '{3769CE9E-A19C-442F-B004-329B78FAEA81}';
  CLASS_Points: TGUID = '{AEE36CF9-09DC-40C7-8A35-E133C78E4318}';
  CLASS_Point: TGUID = '{02539DF4-39DB-4CBA-AD4F-5CE17D26DBC5}';
  CLASS_Geosets: TGUID = '{984C9421-93BA-11D0-B374-444553540000}';
  CLASS_GeoSet: TGUID = '{DC09D462-9575-11D0-83F7-00AA00BD34FC}';
  CLASS_Features: TGUID = '{090703E1-9563-11D0-8796-00AA00B7EF73}';
  CLASS_Datum: TGUID = '{5B5DA017-87E0-4E5F-BC9F-89F2BEFFC86F}';
  CLASS_AffineTransform: TGUID = '{3BA114C2-47AB-4101-913E-0F7324DA86BB}';
  CLASS_CoordSys: TGUID = '{FAAF04D9-B22A-4694-908A-7BC2685AF140}';
  CLASS_BitmapSymbol: TGUID = '{1FF38E52-F159-11D0-9DB4-00AA00A478CB}';
  CLASS_FeatureFactory: TGUID = '{BBE482A3-037F-11D1-8796-00AA00B7EF73}';
  CLASS_ResolveObjects: TGUID = '{92880602-CD2F-11D1-A34B-00207812EFE7}';
  CLASS_ResolveObject: TGUID = '{92880605-CD2F-11D1-A34B-00207812EFE7}';
  CLASS_RowValues: TGUID = '{6C67BA6D-8175-49E1-AD47-380088D0ABE5}';
  CLASS_RowValue: TGUID = '{9097D850-168A-4218-83F0-E05F7DED8DB7}';
  CLASS_Variables: TGUID = '{3D928FE1-1D1B-449E-B134-DA5FECB6DB96}';
  CLASS_Variable: TGUID = '{9A5D5586-EFB8-11D3-9C33-0050049DA682}';
  CLASS_Labels: TGUID = '{5246D2CB-5F52-436B-95B2-9E00D25A646A}';
  CLASS_Label_: TGUID = '{100042C3-C923-4A59-93E6-D0FC2B6F891E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum AnnotationTypeConstants
type
  AnnotationTypeConstants = TOleEnum;
const
  miSymbolAnnotation = $00000001;
  miTextAnnotation = $00000006;

// Constants for enum PositionConstants
type
  PositionConstants = TOleEnum;
const
  miPositionCC = $00000000;
  miPositionTL = $00000001;
  miPositionTC = $00000002;
  miPositionTR = $00000003;
  miPositionCL = $00000004;
  miPositionCR = $00000005;
  miPositionBL = $00000006;
  miPositionBC = $00000007;
  miPositionBR = $00000008;

// Constants for enum PenStyleConstants
type
  PenStyleConstants = TOleEnum;
const
  miPenNone = $00000000;
  miPenSolid = $00000001;

// Constants for enum FillPatternConstants
type
  FillPatternConstants = TOleEnum;
const
  miPatternNoFill = $00000000;
  miPatternHollow = $00000001;
  miPatternSolid = $00000002;
  miPatternHorizontal = $00000003;
  miPatternVertical = $00000004;
  miPatternFDiag = $00000005;
  miPatternFilBDiag = $00000006;
  miPatternCross = $00000007;
  miPatternDiagCross = $00000008;

// Constants for enum SymbolTypeConstants
type
  SymbolTypeConstants = TOleEnum;
const
  miSymbolTypeTrueTypeFont = $00000000;
  miSymbolTypeBitmap = $00000001;
  miSymbolTypeVector = $00000002;

// Constants for enum StyleUnitConstants
type
  StyleUnitConstants = TOleEnum;
const
  miStyleUnitPixel = $00000000;
  miStyleUnitTenthsOfPoint = $00000001;

// Constants for enum ExportFormatConstants
type
  ExportFormatConstants = TOleEnum;
const
  miFormatWMF = $00000000;
  miFormatBMP = $00000001;
  miFormatGIF = $00000002;
  miFormatJPEG = $00000003;
  miFormatTIF = $00000004;
  miFormatPNG = $00000005;
  miFormatPSD = $00000006;

// Constants for enum CoordSysTypeConstants
type
  CoordSysTypeConstants = TOleEnum;
const
  miNonEarth = $00000000;
  miLongLat = $00000001;
  miCylindricalEqualArea = $00000002;
  miLambertConformalConic = $00000003;
  miLambertAzimuthalEqualArea = $00000004;
  miAzimuthalEquidistant = $00000005;
  miEquidistantConic = $00000006;
  miHotineObliqueMercator = $00000007;
  miTransverseMercator = $00000008;
  miAlbersEqualAreaConic = $00000009;
  miMercator = $0000000A;
  miMillerCylindrical = $0000000B;
  miRobinson = $0000000C;
  miMollweide = $0000000D;
  miEckertIV = $0000000E;
  miEckertVI = $0000000F;
  miSinusoidal = $00000010;
  miGall = $00000011;
  miNewZealandMapGrid = $00000012;
  miLambertConformalConicBelgium = $00000013;
  miStereographic = $00000014;
  miTransverseMercatorDenmarkS34J = $00000015;
  miTransverseMercatorDenmarkS34S = $00000016;
  miTransverseMercatorDenmarkS45B = $00000017;
  miTransverseMercatorFinland = $00000018;
  miSwissObliqueMercator = $00000019;
  miMercatorStdParallel = $0000001A;
  miPolyconic = $0000001B;
  miAzimuthalEquidistantOblique = $0000001C;
  miLambertAzimuthalEqualAreaOblique = $0000001D;
  miCassiniSoldner = $0000001E;
  miDblStereographic = $0000001F;

// Constants for enum MapUnitConstants
type
  MapUnitConstants = TOleEnum;
const
  miUnitMile = $00000000;
  miUnitKilometer = $00000001;
  miUnitInch = $00000002;
  miUnitFoot = $00000003;
  miUnitYard = $00000004;
  miUnitMillimeter = $00000005;
  miUnitCentimeter = $00000006;
  miUnitMeter = $00000007;
  miUnitSurveyFoot = $00000008;
  miUnitNauticalMile = $00000009;
  miUnitTwip = $0000000A;
  miUnitPoint = $0000000B;
  miUnitPica = $0000000C;
  miUnitDegree = $0000000D;
  miUnitLink = $0000001E;
  miUnitChain = $0000001F;
  miUnitRod = $00000020;

// Constants for enum LineTypeConstants
type
  LineTypeConstants = TOleEnum;
const
  miLineTypeNone = $00000000;
  miLineTypeSimple = $00000001;
  miLineTypeArrow = $00000002;

// Constants for enum LabelAlongConstants
type
  LabelAlongConstants = TOleEnum;
const
  miLabelAlongNone = $00000000;
  miLabelAlongParallel = $00000001;
  miLabelAlongMultiSegment = $00000002;

// Constants for enum FeatureTypeConstants
type
  FeatureTypeConstants = TOleEnum;
const
  miFeatureTypeRegion = $00000000;
  miFeatureTypeLine = $00000001;
  miFeatureTypeSymbol = $00000002;
  miFeatureTypeMixed = $00000003;
  miFeatureTypeUnknown = $00000004;
  miFeatureTypeText = $00000005;
  miFeatureTypeNull = $00000006;
  miFeatureTypeMultipoint = $00000007;
  miFeatureTypeCollection = $00000008;

// Constants for enum SelectionTypeConstants
type
  SelectionTypeConstants = TOleEnum;
const
  miSelectionNew = $00000000;
  miSelectionAppend = $00000001;
  miSelectionRemove = $00000002;

// Constants for enum LayerTypeConstants
type
  LayerTypeConstants = TOleEnum;
const
  miLayerTypeNormal = $00000000;
  miLayerTypeRaster = $00000002;
  miLayerTypeSeamless = $00000004;
  miLayerTypeUnknown = $00000005;
  miLayerTypeUserDraw = $00000006;
  miLayerTypeDrilldown = $00000007;

// Constants for enum FieldTypeConstants
type
  FieldTypeConstants = TOleEnum;
const
  miTypeString = $00000000;
  miTypeNumeric = $00000001;
  miTypeDate = $00000002;
  miTypeInteger = $00000003;
  miTypeSmallInt = $00000004;
  miTypeFloat = $00000005;
  miTypeLogical = $00000006;

// Constants for enum AggregationFunctionConstants
type
  AggregationFunctionConstants = TOleEnum;
const
  miAggregationSum = $00000000;
  miAggregationAverage = $00000001;
  miAggregationCount = $00000002;
  miAggregationIndividual = $00000004;
  miAggregationAuto = $00000005;

// Constants for enum ThemeTypeConstants
type
  ThemeTypeConstants = TOleEnum;
const
  miThemeRanged = $00000000;
  miThemeBarChart = $00000001;
  miThemePieChart = $00000002;
  miThemeGradSymbol = $00000003;
  miThemeDotDensity = $00000004;
  miThemeIndividualValue = $00000005;
  miThemeAuto = $00000006;
  miThemeLabelRanged = $00000007;
  miThemeLabelIndividualValue = $00000008;
  miThemeNone = $00000009;

// Constants for enum DistribMethodConstants
type
  DistribMethodConstants = TOleEnum;
const
  miCustomRanges = $00000000;
  miEqualCountPerRange = $00000001;
  miEqualRangeSize = $00000002;
  miNaturalBreak = $00000003;
  miStandardDeviation = $00000004;

// Constants for enum SpreadByConstants
type
  SpreadByConstants = TOleEnum;
const
  miSpreadByNone = $00000000;
  miSpreadByColor = $00000001;
  miSpreadBySize = $00000002;

// Constants for enum GraduationConstants
type
  GraduationConstants = TOleEnum;
const
  miGraduateBySquareRoot = $00000000;
  miGraduateByConstant = $00000001;
  miGraduateByLogarithm = $00000002;

// Constants for enum ApplyAttributeConstants
type
  ApplyAttributeConstants = TOleEnum;
const
  miApplyAttributeAll = $00000000;
  miApplyAttributeColor = $00000001;
  miApplyAttributeSize = $00000002;

// Constants for enum ColorSpreadingMethodConstants
type
  ColorSpreadingMethodConstants = TOleEnum;
const
  miColorMethodRGB = $00000000;
  miColorMethodHSV = $00000001;

// Constants for enum DatasetTypeConstants
type
  DatasetTypeConstants = TOleEnum;
const
  miDataSetDAO = $00000001;
  miDataSetODBC = $00000002;
  miDataSetUnbound = $00000003;
  miDataSetGlobalHandle = $00000004;
  miDataSetOLEData = $00000005;
  miDataSetLayer = $00000006;
  miDataSetNotesView = $00000007;
  miDataSetNotesQuery = $00000008;
  miDataSetSafeArray = $00000009;
  miDataSetDelphi = $000003F2;
  miDataSetDelphi4 = $000003F3;
  miDataSetDelphi5 = $000003F4;
  miDataSetDelphi6 = $000003F5;
  miDataSetADO = $0000000C;
  miDataSetRDO = $0000000D;
  miDatasetXML = $0000000E;
  miDataSetOCI = $0000000F;

// Constants for enum SearchTypeConstants
type
  SearchTypeConstants = TOleEnum;
const
  miSearchTypeCentroidWithin = $00000000;
  miSearchTypePartiallyWithin = $00000001;
  miSearchTypeEntirelyWithin = $00000002;

// Constants for enum LayerBeginAccessConstants
type
  LayerBeginAccessConstants = TOleEnum;
const
  miAccessRead = $00000000;
  miAccessReadWrite = $00000001;

// Constants for enum LayerPackConstant
type
  LayerPackConstant = TOleEnum;
const
  miPackGraphics = $00000001;
  miRebuildGraphics = $00000002;
  miPackIndex = $00000004;
  miRebuildIndex = $00000008;
  miPackData = $00000010;
  miPackCompactDB = $00000020;
  miPackAll = $00000015;

// Constants for enum CircleTypeConstants
type
  CircleTypeConstants = TOleEnum;
const
  miCircleTypeScreen = $00000000;
  miCircleTypeMap = $00000001;

// Constants for enum LayerInfoTypeConstants
type
  LayerInfoTypeConstants = TOleEnum;
const
  miLayerInfoTypeTab = $00000000;
  miLayerInfoTypeUserDraw = $00000001;
  miLayerInfoTypeRaster = $00000002;
  miLayerInfoTypeShape = $00000003;
  miLayerInfoTypeServer = $00000004;
  miLayerInfoTypeGeodictUserName = $00000005;
  miLayerInfoTypeTemp = $00000006;
  miLayerInfoTypeNewTable = $00000007;

// Constants for enum ToolConstants
type
  ToolConstants = TOleEnum;
const
  miArrowTool = $000003E8;
  miPanTool = $000003E9;
  miCenterTool = $000003EA;
  miZoomInTool = $000003EB;
  miZoomOutTool = $000003EC;
  miSymbolTool = $000003ED;
  miTextTool = $000003EE;
  miSelectTool = $000003EF;
  miRadiusSelectTool = $000003F0;
  miRectSelectTool = $000003F1;
  miPolygonSelectTool = $000003F2;
  miLabelTool = $000003F3;
  miAddLineTool = $000003F4;
  miAddPolylineTool = $000003F5;
  miAddRegionTool = $000003F6;
  miAddPointTool = $000003F7;

// Constants for enum CursorConstants
type
  CursorConstants = TOleEnum;
const
  miDefaultCursor = $00000000;
  miArrowCursor = $00000001;
  miCrossCursor = $00000002;
  miIBeamCursor = $00000003;
  miIconCursor = $00000004;
  miSizeCursor = $00000005;
  miSizeNESWCursor = $00000006;
  miSizeNSCursor = $00000007;
  miSizeNWSECursor = $00000008;
  miSizeEWCursor = $00000009;
  miUpArrowCursor = $0000000A;
  miHourglassCursor = $0000000B;
  miNoDropCursor = $0000000C;
  miArrowHourglassCursor = $0000000D;
  miArrowQuestionCursor = $0000000E;
  miSizeAllCursor = $0000000F;
  miArrowToolCursor = $00000010;
  miPanCursor = $00000011;
  miCenterCursor = $00000012;
  miZoomInCursor = $00000013;
  miZoomOutCursor = $00000014;
  miSymbolCursor = $00000015;
  miTextCursor = $00000016;
  miSelectCursor = $00000017;
  miRadiusSelectCursor = $00000018;
  miRectSelectCursor = $00000019;
  miRegionSelectCursor = $0000001A;
  miInfoCursor = $0000001B;
  miSelectPlusCursor = $0000001C;
  miSelectRadiusPlusCursor = $0000001D;
  miSelectRectPlusCursor = $0000001E;
  miSelectRegionPlusCursor = $0000001F;
  miSelectMinusCursor = $00000020;
  miSelectRadiusMinusCursor = $00000021;
  miSelectRectMinusCursor = $00000022;
  miSelectRegionMinusCursor = $00000023;
  miLabelCursor = $00000024;
  miDrilldownExpandCursor = $00000025;
  miDrilldownContractCursor = $00000026;
  miInfoCursorOld = $00000027;
  miCustomCursor = $00000028;

// Constants for enum PaperUnitConstants
type
  PaperUnitConstants = TOleEnum;
const
  miPaperUnitMile = $00000000;
  miPaperUnitKilometer = $00000001;
  miPaperUnitInch = $00000002;
  miPaperUnitFoot = $00000003;
  miPaperUnitYard = $00000004;
  miPaperUnitMillimeter = $00000005;
  miPaperUnitCentimeter = $00000006;
  miPaperUnitMeter = $00000007;
  miPaperUnitSurveyFoot = $00000008;
  miPaperUnitNauticalMile = $00000009;
  miPaperUnitTwip = $0000000A;
  miPaperUnitPoint = $0000000B;
  miPaperUnitPica = $0000000C;
  miPaperUnitDegree = $0000000D;
  miPaperUnitLink = $0000001E;
  miPaperUnitChain = $0000001F;
  miPaperUnitRod = $00000020;

// Constants for enum ConversionConstants
type
  ConversionConstants = TOleEnum;
const
  miMapToScreen = $00000000;
  miScreenToMap = $00000001;

// Constants for enum DotSizeConstants
type
  DotSizeConstants = TOleEnum;
const
  miDotSizeSmall = $00000000;
  miDotSizeLarge = $00000001;

// Constants for enum ToolTypeConstants
type
  ToolTypeConstants = TOleEnum;
const
  miToolTypePoint = $00000000;
  miToolTypeLine = $00000001;
  miToolTypeCircle = $00000002;
  miToolTypeMarquee = $00000003;
  miToolTypePoly = $00000004;
  miToolTypePolygon = $00000005;

// Constants for enum PolyToolFlagConstants
type
  PolyToolFlagConstants = TOleEnum;
const
  miPolyToolBegin = $00000000;
  miPolyToolEnd = $00000001;
  miPolyToolEndEscaped = $00000002;
  miPolyToolInProgress = $00000003;

// Constants for enum AnnotationChangedTypeConstants
type
  AnnotationChangedTypeConstants = TOleEnum;
const
  miAddAnnotation = $00000000;
  miDeleteAnnotation = $00000001;
  miSelectAnnotation = $00000002;
  miEditAnnotation = $00000003;

// Constants for enum ResolveDataBindConstants
type
  ResolveDataBindConstants = TOleEnum;
const
  miChooseField = $00000000;
  miChooseLayer = $00000001;
  miChooseGeoSet = $00000002;

// Constants for enum BindLayerTypeConstants
type
  BindLayerTypeConstants = TOleEnum;
const
  miBindLayerTypeNormal = $00000000;
  miBindLayerTypeXY = $00000001;
  miBindLayerTypePointRef = $00000002;

// Constants for enum AreaUnitConstants
type
  AreaUnitConstants = TOleEnum;
const
  miUnitSquareMile = $0000000E;
  miUnitSquareKilometer = $0000000F;
  miUnitSquareInch = $00000010;
  miUnitSquareFoot = $00000011;
  miUnitSquareYard = $00000012;
  miUnitSquareMillimeter = $00000013;
  miUnitSquareCentimeter = $00000014;
  miUnitSquareMeter = $00000015;
  miUnitSquareSurveyFoot = $00000016;
  miUnitSquareNauticalMile = $00000017;
  miUnitSquareTwip = $00000018;
  miUnitSquarePoint = $00000019;
  miUnitSquarePica = $0000001A;
  miUnitSquareDegree = $0000001B;
  miUnitAcre = $0000001C;
  miUnitHectare = $0000001D;
  miUnitSquareLink = $00000021;
  miUnitSquareChain = $00000022;
  miUnitSquareRod = $00000023;
  miUnitPerch = $00000024;
  miUnitRood = $00000025;

// Constants for enum ColorConstants
type
  ColorConstants = TOleEnum;
const
  miColorBlack = $00000000;
  miColorRed = $000000FF;
  miColorGreen = $0000FF00;
  miColorBlue = $00FF0000;
  miColorMagenta = $00FF00FF;
  miColorCyan = $00FFFF00;
  miColorWhite = $00FFFFFF;
  miColorLightGray = $00C0C0C0;
  miColorDarkGray = $00404040;
  miColorGray = $00808080;
  miColorPaleYellow = $00D0FFFF;
  miColorLightYellow = $0080FFFF;
  miColorYellow = $0000FFFF;
  miColorLimeGreen = $00C0DCC0;
  miColorTeal = $00808040;
  miColorDarkGreen = $00004000;
  miColorMaroon = $00000080;
  miColorPurple = $00800080;
  miColorOrange = $000080FF;
  miColorKhaki = $006B97A7;
  miColorOlive = $00008080;
  miColorBrown = $00404080;
  miColorNavy = $00804000;
  miColorScrollBars = $80000000;
  miColorDesktop = $80000001;
  miColorActiveTitleBar = $80000002;
  miColorInactiveTitleBar = $80000003;
  miColorMenuBar = $80000004;
  miColorWindowBackground = $80000005;
  miColorWindowFrame = $80000006;
  miColorMenuText = $80000007;
  miColorWindowText = $80000008;
  miColorTitleBarText = $80000009;
  miColorActiveBorder = $8000000A;
  miColorInactiveBorder = $8000000B;
  miColorApplicationWorkspace = $8000000C;
  miColorHighlight = $8000000D;
  miColorHighlightText = $8000000E;
  miColorButtonFace = $8000000F;
  miColorButtonShadow = $80000010;
  miColorGrayText = $80000011;
  miColorButtonText = $80000012;
  miColorInactiveCaptionText = $80000013;
  miColor3DHighlight = $80000014;
  miColor3DDarkShadow = $80000015;
  miColor3DLight = $80000016;
  miColorInfoText = $80000017;
  miColorInfoBackground = $80000018;

// Constants for enum IntersectionTestConstants
type
  IntersectionTestConstants = TOleEnum;
const
  miIntersectCentroidWithinFeature = $00000000;
  miIntersectFeature = $00000001;
  miIntersectEntirelyWithinFeature = $00000002;

// Constants for enum IntersectionPointConstants
type
  IntersectionPointConstants = TOleEnum;
const
  miIntersectCrossings = $00000009;
  miIntersectCommon = $0000000A;
  miIntersectAll = $0000000B;

// Constants for enum MousewheelSupportConstants
type
  MousewheelSupportConstants = TOleEnum;
const
  miNoMousewheelSupport = $00000001;
  miMousewheelNoAutoScroll = $00000002;
  miFullMousewheelSupport = $00000003;

// Constants for enum LayerSrvLayerOptions
type
  LayerSrvLayerOptions = TOleEnum;
const
  miLayerCacheOn = $00000000;
  miLayerMBRSearchOn = $00000000;
  miLayerCacheOff = $00000001;
  miLayerMBRSearchOff = $00000002;

// Constants for enum LayerEndAccessConstants
type
  LayerEndAccessConstants = TOleEnum;
const
  miAccessEnd = $00000000;

// Constants for enum MapDrawConstants
type
  MapDrawConstants = TOleEnum;
const
  miDrawBegin = $00000001;
  miDrawEnd = $00000002;

// Constants for enum ToolFlagConstants
type
  ToolFlagConstants = TOleEnum;
const
  miToolBegin = $00000000;
  miToolEnd = $00000001;
  miToolEndEscaped = $00000002;
  miToolInProgress = $00000003;
  miToolCompleted = $00000004;

// Constants for enum FeatureEditModeConstants
type
  FeatureEditModeConstants = TOleEnum;
const
  miEditModeFeature = $00000001;
  miEditModeNode = $00000002;
  miMoveDuplicateNodes = $00000004;
  miDeleteDuplicateNodes = $00000008;
  miEditModeAddNode = $00000040;

// Constants for enum SearchResultTypeConstants
type
  SearchResultTypeConstants = TOleEnum;
const
  miSearchResultDefault = $00000000;
  miSearchResultTopmost = $00000001;
  miSearchResultRegion = $00000002;
  miSearchResultSymbol = $00000004;
  miSearchResultLine = $00000008;
  miSearchResultText = $00000010;
  miSearchResultMultipoint = $00000020;
  miSearchResultCollection = $00000040;
  miSearchResultAll = $0000FFFE;

// Constants for enum LabelChangedTypeConstants
type
  LabelChangedTypeConstants = TOleEnum;
const
  miLabelMove = $00000000;
  miLabelAdd = $00000001;
  miLabelSelectionChange = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  CMapXAllFeaturesConstraint = dispinterface;
  CMapXAnnotation = dispinterface;
  CMapXText = dispinterface;
  CMapXStyle = dispinterface;
  CMapXAnnotations = dispinterface;
  CMapXBitmapSymbol = dispinterface;
  CMapXBoundsConstraint = dispinterface;
  CMapXRectangle = dispinterface;
  CMapXCoordSys = dispinterface;
  CMapXDatum = dispinterface;
  CMapXAffineTransform = dispinterface;
  CMapXLabel = dispinterface;
  CMapXLayer = dispinterface;
  CMapXLabelProperties = dispinterface;
  CMapXSelection = dispinterface;
  CMapXFeature = dispinterface;
  CMapXParts = dispinterface;
  CMapXPoints = dispinterface;
  CMapXPoint = dispinterface;
  CMapXFeatures = dispinterface;
  CMapXLayerFind = dispinterface;
  CMapXFindFeature = dispinterface;
  CMapXFindResult = dispinterface;
  CMapXFindMatches = dispinterface;
  CMapXFindMatch = dispinterface;
  CMapXDatasets = dispinterface;
  CMapXDataset = dispinterface;
  CMapXFields = dispinterface;
  CMapXField = dispinterface;
  CMapXThemes = dispinterface;
  CMapXTheme = dispinterface;
  CMapXThemeProperties = dispinterface;
  CMapXRangeCategoriesCollection = dispinterface;
  CMapXRangeCategory = dispinterface;
  CMapXMultivarCategoriesCollection = dispinterface;
  CMapXMultiVarCategory = dispinterface;
  CMapXIndividualValueCategoriesCollection = dispinterface;
  CMapXIValueCategory = dispinterface;
  CMapXLegend = dispinterface;
  CMapXLegendTexts = dispinterface;
  CMapXLegendText = dispinterface;
  CMapXSourceRows = dispinterface;
  CMapXSourceRow = dispinterface;
  CMapXRowValues = dispinterface;
  CMapXRowValue = dispinterface;
  CMapXLabels = dispinterface;
  CMapXFeaturesConstraint = dispinterface;
  CMapXFeatureFactory = dispinterface;
  CMapXGeoset = dispinterface;
  CMapXGeosets = dispinterface;
  CMapXLayerInfo = dispinterface;
  CMapXLayers = dispinterface;
  CMapXTitle = dispinterface;
  CMapXResolveObject = dispinterface;
  CMapXResolveObjects = dispinterface;
  CMapXVariable = dispinterface;
  CMapXVariables = dispinterface;
  IRowCursor = interface;
  CMapX = dispinterface;
  CMapXEvents = dispinterface;
  CMapXCollection = dispinterface;
  CMapXBindLayer = dispinterface;
  CMapXBitmapSymbolsCollection = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DataSets = CMapXDatasets;
  Map = CMapX;
  Layers = CMapXLayers;
  LayerInfo = CMapXLayerInfo;
  Layer = CMapXLayer;
  Field = CMapXField;
  Dataset = CMapXDataset;
  Themes = CMapXThemes;
  Theme = CMapXTheme;
  Legend = CMapXLegend;
  Collection = CMapXCollection;
  Annotations = CMapXAnnotations;
  ThemeProperties = CMapXThemeProperties;
  Selection = CMapXSelection;
  Feature = CMapXFeature;
  RangeCategory = CMapXRangeCategory;
  Fields = CMapXFields;
  Style = CMapXStyle;
  IndividualValueCategory = CMapXIValueCategory;
  MultiVarCategory = CMapXMultiVarCategory;
  SourceRows = CMapXSourceRows;
  SourceRow = CMapXSourceRow;
  Annotation = CMapXAnnotation;
  Graphic = CMapXText;
  LegendText = CMapXLegendText;
  LegendTexts = CMapXLegendTexts;
  Title = CMapXTitle;
  LabelProperties = CMapXLabelProperties;
  BindLayer = CMapXBindLayer;
  RangeCategories = CMapXRangeCategoriesCollection;
  IndividualValueCategories = CMapXIndividualValueCategoriesCollection;
  MultivarCategories = CMapXMultivarCategoriesCollection;
  BitmapSymbols = CMapXBitmapSymbolsCollection;
  Rectangle = CMapXRectangle;
  BoundsConstraint = CMapXBoundsConstraint;
  FeaturesConstraint = CMapXFeaturesConstraint;
  AllFeaturesConstraint = CMapXAllFeaturesConstraint;
  Find = CMapXLayerFind;
  FindFeature = CMapXFindFeature;
  FindResult = CMapXFindResult;
  FindMatch = CMapXFindMatch;
  FindMatches = CMapXFindMatches;
  Parts = CMapXParts;
  Points = CMapXPoints;
  Point = CMapXPoint;
  Geosets = CMapXGeosets;
  GeoSet = CMapXGeoset;
  Features = CMapXFeatures;
  Datum = CMapXDatum;
  AffineTransform = CMapXAffineTransform;
  CoordSys = CMapXCoordSys;
  BitmapSymbol = CMapXBitmapSymbol;
  FeatureFactory = CMapXFeatureFactory;
  ResolveObjects = CMapXResolveObjects;
  ResolveObject = CMapXResolveObject;
  RowValues = CMapXRowValues;
  RowValue = CMapXRowValue;
  Variables = CMapXVariables;
  Variable = CMapXVariable;
  Labels = CMapXLabels;
  Label_ = CMapXLabel;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PDouble1 = ^Double; {*}
  POleVariant1 = ^OleVariant; {*}
  PSingle1 = ^Single; {*}
  PWideString1 = ^WideString; {*}
  PWordBool1 = ^WordBool; {*}
  PSmallint1 = ^Smallint; {*}


// *********************************************************************//
// DispIntf:  CMapXAllFeaturesConstraint
// Flags:     (4112) Hidden Dispatchable
// GUID:      {806FA9D7-C5D9-43E9-B381-69E30C991E84}
// *********************************************************************//
  CMapXAllFeaturesConstraint = dispinterface
    ['{806FA9D7-C5D9-43E9-B381-69E30C991E84}']
    procedure Enable; dispid 2;
    procedure Disable; dispid 3;
    property Enabled: WordBool readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXAnnotation
// Flags:     (4112) Hidden Dispatchable
// GUID:      {1C66DB81-D40D-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXAnnotation = dispinterface
    ['{1C66DB81-D40D-11CF-9BEE-00AA00A478CB}']
    property type_: AnnotationTypeConstants readonly dispid 1;
    property Graphic: CMapXText readonly dispid 2;
  end;

// *********************************************************************//
// DispIntf:  CMapXText
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4B6690A0-D4D1-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXText = dispinterface
    ['{4B6690A0-D4D1-11CF-9BEE-00AA00A478CB}']
    property Caption: WideString dispid 1;
    property X: Double dispid 2;
    property Y: Double dispid 3;
    property Position: PositionConstants dispid 4;
    property Style: CMapXStyle dispid 5;
  end;

// *********************************************************************//
// DispIntf:  CMapXStyle
// Flags:     (4112) Hidden Dispatchable
// GUID:      {1C1EE340-C439-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXStyle = dispinterface
    ['{1C1EE340-C439-11CF-9BEE-00AA00A478CB}']
    procedure ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double; const SampleText: WideString; 
                               BackgroundColor: OleVariant); dispid 52;
    procedure ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double; BackgroundColor: OleVariant); dispid 51;
    procedure ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double; BackgroundColor: OleVariant); dispid 50;
    procedure ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double; BackgroundColor: OleVariant); dispid 49;
    function Clone: CMapXStyle; dispid 41;
    procedure DrawLineSample(hDC: OLE_HANDLE; const Rectangle: IDispatch); dispid 32;
    procedure DrawRegionSample(hDC: OLE_HANDLE; const Rectangle: IDispatch); dispid 31;
    procedure DrawSymbolSample(hDC: OLE_HANDLE; const Rectangle: IDispatch); dispid 30;
    procedure DrawTextSample(hDC: OLE_HANDLE; const Rectangle: IDispatch; 
                             const SampleText: WideString); dispid 29;
    function PickSymbol: WordBool; dispid 28;
    function PickText: WordBool; dispid 27;
    function PickLine: WordBool; dispid 26;
    function PickRegion: WordBool; dispid 25;
    property RegionColor: OLE_COLOR dispid 5;
    property RegionPattern: FillPatternConstants dispid 6;
    property TextFontDblSpace: WordBool dispid 24;
    property TextFontShadow: WordBool dispid 22;
    property TextFontAllCaps: WordBool dispid 23;
    property LineColor: OLE_COLOR dispid 2;
    property LineStyle: PenStyleConstants dispid 3;
    property SymbolCharacter: Smallint dispid 1;
    property RegionBackColor: OLE_COLOR dispid 7;
    property LineWidth: Smallint dispid 4;
    property SymbolBitmapTransparent: WordBool dispid 33;
    property TextFontOpaque: WordBool dispid 18;
    property SymbolFontColor: OLE_COLOR dispid 15;
    property TextFontHalo: WordBool dispid 21;
    property SymbolFontHalo: WordBool dispid 19;
    property SymbolFontShadow: WordBool dispid 20;
    property SymbolBitmapColor: OLE_COLOR dispid 35;
    property SymbolBitmapName: WideString dispid 36;
    property SymbolBitmapOverrideColor: WordBool dispid 34;
    property SymbolFontBackColor: OLE_COLOR dispid 16;
    property SymbolFontOpaque: WordBool dispid 17;
    property SymbolFont: IFontDisp readonly dispid 12;
    property SupportsBitmapSymbols: WordBool readonly dispid 39;
    property SymbolBitmapSize: Integer dispid 38;
    property LineWidthUnit: StyleUnitConstants dispid 45;
    property MinVectorSymbolCharacter: Smallint readonly dispid 55;
    property SymbolVectorSize: Smallint dispid 54;
    property RegionTransparent: WordBool dispid 43;
    property LineStyleCount: Integer readonly dispid 42;
    property LineInterleaved: WordBool dispid 44;
    property SymbolType: SymbolTypeConstants dispid 37;
    property SymbolFontRotation: Smallint dispid 40;
    property MaxVectorSymbolCharacter: Smallint readonly dispid 56;
    property RegionBorderStyle: PenStyleConstants dispid 8;
    property RegionBorderColor: OLE_COLOR dispid 9;
    property TextFont: IFontDisp readonly dispid 11;
    property TextFontColor: OLE_COLOR dispid 13;
    property TextFontBackColor: OLE_COLOR dispid 14;
    property RegionBorderWidthUnit: StyleUnitConstants dispid 46;
    property SymbolVectorColor: OLE_COLOR dispid 53;
    property LineSupportsInterleave: WordBool readonly dispid 47;
    property RegionBorderWidth: Smallint dispid 10;
    property TextFontRotation: Smallint dispid 48;
  end;

// *********************************************************************//
// DispIntf:  CMapXAnnotations
// Flags:     (4112) Hidden Dispatchable
// GUID:      {7A35D061-6AAC-11CF-96AE-00AA00A4760F}
// *********************************************************************//
  CMapXAnnotations = dispinterface
    ['{7A35D061-6AAC-11CF-96AE-00AA00A4760F}']
    function AddSymbol(X: Double; Y: Double): CMapXAnnotation; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure Remove(Index: OleVariant); dispid 5;
    function _Item(Index: OleVariant): CMapXAnnotation; dispid 4;
    function AddText(const Text: WideString; X: Double; Y: Double; Position: OleVariant): CMapXAnnotation; dispid 6;
    procedure RemoveAll; dispid 7;
    property Item[Index: OleVariant]: CMapXAnnotation readonly dispid 0; default;
    function ActiveAnnotation: CMapXAnnotation; dispid 8;
    property Count: Integer readonly dispid 2;
    property Editable: WordBool dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXBitmapSymbol
// Flags:     (4112) Hidden Dispatchable
// GUID:      {1FF38E51-F159-11D0-9DB4-00AA00A478CB}
// *********************************************************************//
  CMapXBitmapSymbol = dispinterface
    ['{1FF38E51-F159-11D0-9DB4-00AA00A478CB}']
    property Name: WideString readonly dispid 1;
    property _Name: WideString dispid 0;
  end;

// *********************************************************************//
// DispIntf:  CMapXBoundsConstraint
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4ABEC4CB-DFD0-444F-9472-B5192D6F4526}
// *********************************************************************//
  CMapXBoundsConstraint = dispinterface
    ['{4ABEC4CB-DFD0-444F-9472-B5192D6F4526}']
    procedure Disable; dispid 4;
    procedure Enable; dispid 3;
    property Bounds: CMapXRectangle dispid 2;
    property Enabled: WordBool readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXRectangle
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4C952040-3331-11D0-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXRectangle = dispinterface
    ['{4C952040-3331-11D0-8796-00AA00B7EF73}']
    procedure Offset(deltaX: Double; deltaY: Double); dispid 8;
    procedure Set_(X1: Double; Y1: Double; X2: Double; Y2: Double); dispid 7;
    property XMin: Double readonly dispid 1;
    property YMax: Double readonly dispid 4;
    property XMax: Double readonly dispid 3;
    property Height: Double readonly dispid 5;
    property Width: Double readonly dispid 6;
    property YMin: Double readonly dispid 2;
  end;

// *********************************************************************//
// DispIntf:  CMapXCoordSys
// Flags:     (4112) Hidden Dispatchable
// GUID:      {49EB5382-BFFB-11D0-934C-00AA004603B3}
// *********************************************************************//
  CMapXCoordSys = dispinterface
    ['{49EB5382-BFFB-11D0-934C-00AA004603B3}']
    function Clone: CMapXCoordSys; dispid 17;
    function PickCoordSys(HelpFile: OleVariant; HelpID: OleVariant): WordBool; dispid 16;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                   FalseNorthing: OleVariant; Range: OleVariant; Bounds: OleVariant; 
                   AffineTransform: OleVariant); dispid 15;
    property Datum: CMapXDatum readonly dispid 2;
    property type_: CoordSysTypeConstants readonly dispid 1;
    property Bounds: CMapXRectangle readonly dispid 4;
    property StandardParallelOne: Double readonly dispid 7;
    property OriginLatitude: Double readonly dispid 6;
    property OriginLongitude: Double readonly dispid 5;
    property StandardParallelTwo: Double readonly dispid 8;
    property FalseNorthing: Double readonly dispid 12;
    property ScaleFactor: Double readonly dispid 10;
    property FalseEasting: Double readonly dispid 11;
    property AffineTransform: CMapXAffineTransform readonly dispid 14;
    property Units: MapUnitConstants readonly dispid 3;
    property Azimuth: Double readonly dispid 9;
    property Range: Double readonly dispid 13;
  end;

// *********************************************************************//
// DispIntf:  CMapXDatum
// Flags:     (4112) Hidden Dispatchable
// GUID:      {49EB5384-BFFB-11D0-934C-00AA004603B3}
// *********************************************************************//
  CMapXDatum = dispinterface
    ['{49EB5384-BFFB-11D0-934C-00AA004603B3}']
    procedure SetFromList(DatumNum: Smallint); dispid 15;
    procedure Set_(Ellipsoid: Smallint; ShiftX: Double; ShiftY: Double; ShiftZ: Double; 
                   RotateX: Double; RotateY: Double; RotateZ: Double; ScaleAdjust: Double; 
                   PrimeMeridian: Double); dispid 14;
    property ShiftZ: Double readonly dispid 4;
    property Ellipsoid: Smallint readonly dispid 1;
    property ShiftX: Double readonly dispid 2;
    property RotateX: Double readonly dispid 5;
    property RotateY: Double readonly dispid 6;
    property RotateZ: Double readonly dispid 7;
    property ShiftY: Double readonly dispid 3;
    property SemiMinorAxis: Double readonly dispid 11;
    property PrimeMeridian: Double readonly dispid 9;
    property SemiMajorAxis: Double readonly dispid 10;
    property ScaleAdjust: Double readonly dispid 8;
    property Flattening: Double readonly dispid 12;
    property Eccentricity: Double readonly dispid 13;
  end;

// *********************************************************************//
// DispIntf:  CMapXAffineTransform
// Flags:     (4112) Hidden Dispatchable
// GUID:      {DE279C62-DCDF-11D0-934C-00AA004603B3}
// *********************************************************************//
  CMapXAffineTransform = dispinterface
    ['{DE279C62-DCDF-11D0-934C-00AA004603B3}']
    procedure Set_(Units: MapUnitConstants; A: Double; B: Double; C: Double; D: Double; E: Double; 
                   F: Double); dispid 8;
    property Units: MapUnitConstants readonly dispid 1;
    property C: Double readonly dispid 4;
    property B: Double readonly dispid 3;
    property A: Double readonly dispid 2;
    property D: Double readonly dispid 5;
    property E: Double readonly dispid 6;
    property F: Double readonly dispid 7;
  end;

// *********************************************************************//
// DispIntf:  CMapXLabel
// Flags:     (4112) Hidden Dispatchable
// GUID:      {58A009FA-D7D0-4AD9-A593-69ADC20A6A21}
// *********************************************************************//
  CMapXLabel = dispinterface
    ['{58A009FA-D7D0-4AD9-A593-69ADC20A6A21}']
    property AnchorX: Double dispid 1;
    property AnchorY: Double dispid 2;
    property Angle: Smallint dispid 3;
    property Caption: WideString dispid 4;
    property LineType: LineTypeConstants dispid 5;
    property MultiSegment: WordBool dispid 6;
    property Offset: Integer dispid 7;
    property Position: PositionConstants dispid 8;
    property Selected: WordBool dispid 9;
    property Style: CMapXStyle dispid 10;
    property Visible: WordBool dispid 11;
    property Drawn: WordBool readonly dispid 12;
    property Edited: WordBool readonly dispid 13;
    property EditedAnchor: WordBool readonly dispid 14;
    property EditedAngle: WordBool readonly dispid 15;
    property EditedCaption: WordBool readonly dispid 16;
    property EditedLineStyle: WordBool readonly dispid 17;
    property EditedLineType: WordBool readonly dispid 18;
    property EditedMultiSegment: WordBool readonly dispid 19;
    property EditedOffset: WordBool readonly dispid 20;
    property EditedPosition: WordBool readonly dispid 21;
    property EditedTextStyle: WordBool readonly dispid 22;
    property EditedVisible: WordBool readonly dispid 23;
    property Layer: CMapXLayer readonly dispid 24;
    property FeatureKey: WideString readonly dispid 25;
  end;

// *********************************************************************//
// DispIntf:  CMapXLayer
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D48-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXLayer = dispinterface
    ['{77306D48-5C82-11CF-8795-00AA00B7EF73}']
    function SupportsPack(PackType: LayerPackConstant): WordBool; dispid 53;
    function CreateAllFeaturesConstraint: CMapXAllFeaturesConstraint; dispid 52;
    procedure Refresh; dispid 36;
    procedure Pack(PackType: LayerPackConstant); dispid 54;
    function FeatureKeyFromFeatureName(const strKeyValue: WideString): WideString; dispid 48;
    function GetFeatureByKey(const FeatureKey: WideString): CMapXFeature; dispid 47;
    function CreateFeaturesConstraint: CMapXFeaturesConstraint; dispid 51;
    procedure BeginAccess(BeginAccessType: LayerBeginAccessConstants); dispid 41;
    function Search(const strWhere: WideString; Variables: OleVariant): CMapXFeatures; dispid 40;
    procedure LabelAtPoint(X: Double; Y: Double); dispid 18;
    procedure EndAccess(EndAccessType: OleVariant); dispid 42;
    function GetFeatureByID(FeatureID: Integer): CMapXFeature; dispid 35;
    procedure DrilldownReset(const strLevel: WideString); dispid 34;
    function FeatureIDFromFeatureName(const strKeyValue: WideString): Integer; dispid 38;
    function CreateBoundsConstraint: CMapXBoundsConstraint; dispid 50;
    function GetDrilldownFeaturesByID(const strLevel: WideString; FeatureID: OleVariant): CMapXFeatures; dispid 33;
    procedure DrillDownAddFeatures(const Level: WideString; FeatureKeys: OleVariant); dispid 31;
    procedure DrillDownRemoveFeatures(const Level: WideString; FeatureKeys: OleVariant); dispid 30;
    function SearchAtPoint(const Point: IDispatch; SearchResultFlags: OleVariant): CMapXFeatures; dispid 29;
    function SearchWithinFeature(const Feature: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures; dispid 28;
    property NoFeatures: CMapXFeatures readonly dispid 27;
    property AllFeatures: CMapXFeatures readonly dispid 26;
    function SearchWithinRectangle(const Rectangle: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures; dispid 25;
    function SearchWithinDistance(const Source: IDispatch; Distance: Double; 
                                  Units: MapUnitConstants; SearchType: SearchTypeConstants): CMapXFeatures; dispid 24;
    procedure Invalidate(InvalidRect: OleVariant); dispid 23;
    procedure DeleteFeature(Target: OleVariant); dispid 22;
    function AddFeature(const SourceFeature: IDispatch; RowValues: OleVariant): CMapXFeature; dispid 21;
    procedure UpdateFeature(Target: OleVariant; Source: OleVariant; RowValues: OleVariant); dispid 20;
    procedure ClearCustomLabels; dispid 19;
    property Labels: CMapXLabels readonly dispid 55;
    property ClippedBounds: CMapXRectangle readonly dispid 49;
    property Editable: WordBool dispid 46;
    property ShowLineDirection: WordBool dispid 45;
    property ShowCentroids: WordBool dispid 44;
    property ShowNodes: WordBool dispid 43;
    property DataSets: CMapXDatasets readonly dispid 39;
    property DrawLabelsAfter: WordBool dispid 37;
    property Bounds: CMapXRectangle readonly dispid 32;
    property CoordSys: CMapXCoordSys readonly dispid 17;
    property KeyField: WideString dispid 16;
    property type_: LayerTypeConstants readonly dispid 15;
    property Find: CMapXLayerFind readonly dispid 14;
    property PredominantFeatureType: FeatureTypeConstants readonly dispid 13;
    property Selection: CMapXSelection readonly dispid 12;
    property ZoomMax: Double dispid 11;
    property ZoomMin: Double dispid 10;
    property Style: CMapXStyle dispid 9;
    property OverrideStyle: WordBool dispid 8;
    property ZoomLayer: WordBool dispid 7;
    property AutoLabel: WordBool dispid 6;
    property LabelProperties: CMapXLabelProperties readonly dispid 5;
    property FileSpec: WideString readonly dispid 4;
    property _Name: WideString dispid 0;
    property Selectable: WordBool dispid 3;
    property Visible: WordBool dispid 2;
    property Name: WideString dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXLabelProperties
// Flags:     (4112) Hidden Dispatchable
// GUID:      {61E82A60-FB59-11CF-9019-00AA00A53B3C}
// *********************************************************************//
  CMapXLabelProperties = dispinterface
    ['{61E82A60-FB59-11CF-9019-00AA00A53B3C}']
    property Style: CMapXStyle dispid 1;
    property Visible: WordBool dispid 2;
    property LabelZoom: WordBool dispid 3;
    property LabelZoomMin: Double dispid 4;
    property LabelZoomMax: Double dispid 5;
    property LineType: LineTypeConstants dispid 6;
    property Offset: Smallint dispid 7;
    property Parallel: WordBool dispid 8;
    property Dataset: IDispatch dispid 9;
    property Duplicate: WordBool dispid 10;
    property Overlap: WordBool dispid 11;
    property LabelMax: Smallint dispid 12;
    property DataField: IDispatch dispid 13;
    property Position: PositionConstants dispid 14;
    property PartialSegments: WordBool dispid 15;
    property LabelPartialObjects: WordBool dispid 16;
    property LabelAlong: LabelAlongConstants dispid 17;
  end;

// *********************************************************************//
// DispIntf:  CMapXSelection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B0929660-BA3A-11CF-9019-00AA00A53B3C}
// *********************************************************************//
  CMapXSelection = dispinterface
    ['{B0929660-BA3A-11CF-9019-00AA00A53B3C}']
    function Clone: CMapXFeatures; dispid 65539;
    function _Item(Index: OleVariant): CMapXFeature; dispid 65538;
    procedure RemoveByID(FeatureID: OleVariant); dispid 65546;
    procedure Add(const Source: IDispatch); dispid 65540;
    procedure Replace(const Source: IDispatch); dispid 65543;
    procedure Remove(Source: OleVariant); dispid 65542;
    procedure Common(const Source: IDispatch); dispid 65541;
    procedure AddByID(FeatureID: OleVariant); dispid 65545;
    procedure SelectByRectangle(X1: Double; Y1: Double; X2: Double; Y2: Double; 
                                SelectionFlag: SelectionTypeConstants); dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXFeature readonly dispid 0; default;
    procedure SelectByRegion(const Layer: IDispatch; FeatureID: OleVariant; 
                             SelectionFlag: SelectionTypeConstants); dispid 1;
    procedure ClearSelection; dispid 2;
    procedure SelectByID(FeatureID: OleVariant; SelectionFlag: SelectionTypeConstants); dispid 7;
    procedure SelectByRadius(X: Double; Y: Double; radius: Double; 
                             SelectionFlag: SelectionTypeConstants); dispid 4;
    procedure SelectByPoint(X: Double; Y: Double; SelectionFlag: SelectionTypeConstants; 
                            SearchResultFlags: OleVariant); dispid 3;
    function SelectAll(SelectionFlag: SelectionTypeConstants): WordBool; dispid 6;
    property Bounds: CMapXRectangle readonly dispid 65544;
    property Count: Integer readonly dispid 65537;
  end;

// *********************************************************************//
// DispIntf:  CMapXFeature
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B0929662-BA3A-11CF-9019-00AA00A53B3C}
// *********************************************************************//
  CMapXFeature = dispinterface
    ['{B0929662-BA3A-11CF-9019-00AA00A53B3C}']
    property Nodes[CSys: OleVariant]: OleVariant dispid 22;
    function Clone: CMapXFeature; dispid 21;
    procedure Attach(const Map: IDispatch); dispid 20;
    procedure Offset(deltaX: Double; deltaY: Double); dispid 19;
    procedure Update(UpdateFeature: OleVariant; RowValues: OleVariant); dispid 18;
    property Length: Double readonly dispid 3;
    property Caption: WideString dispid 8;
    property LabelPoint: CMapXPoint readonly dispid 13;
    property CenterX: Double readonly dispid 4;
    property FeatureID: Integer readonly dispid 1;
    property type_: FeatureTypeConstants dispid 2;
    property Parts: CMapXParts readonly dispid 9;
    property Area: Double readonly dispid 10;
    property Layer: CMapXLayer readonly dispid 11;
    property _FeatureID: Integer readonly dispid 0;
    property Perimeter: Double readonly dispid 14;
    property Point: CMapXPoint dispid 12;
    property Bounds: CMapXRectangle readonly dispid 7;
    property KeyValue: WideString dispid 17;
    property Polyline: IDispatch dispid 25;
    property HasPolyline: WordBool readonly dispid 28;
    property FeatureKey: WideString readonly dispid 23;
    property Region: IDispatch dispid 24;
    property Name: WideString readonly dispid 16;
    property Smooth: WordBool dispid 15;
    property CenterY: Double readonly dispid 5;
    property Style: CMapXStyle dispid 6;
    property HasMultipoint: WordBool readonly dispid 29;
    property Multipoint: IDispatch dispid 26;
    property HasRegion: WordBool readonly dispid 27;
  end;

// *********************************************************************//
// DispIntf:  CMapXParts
// Flags:     (4112) Hidden Dispatchable
// GUID:      {968303A0-8F18-11D0-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXParts = dispinterface
    ['{968303A0-8F18-11D0-8796-00AA00B7EF73}']
    function Add(const Points: IDispatch): CMapXPoints; dispid 4;
    function _Item(Index: OleVariant): CMapXPoints; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    procedure RemoveAll; dispid 5;
    property Item[Index: OleVariant]: CMapXPoints readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXPoints
// Flags:     (4112) Hidden Dispatchable
// GUID:      {968303A2-8F18-11D0-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXPoints = dispinterface
    ['{968303A2-8F18-11D0-8796-00AA00B7EF73}']
    function _Item(Index: OleVariant): CMapXPoint; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    procedure GetXY(Index: Integer; var X: Double; var Y: Double); dispid 8;
    function AddXY(X: Double; Y: Double; Position: OleVariant): CMapXPoint; dispid 5;
    procedure RemoveAll; dispid 6;
    function Add(const Point: IDispatch; Position: OleVariant): CMapXPoint; dispid 4;
    procedure GetXYV(Index: Integer; var X: OleVariant; var Y: OleVariant); dispid 11;
    property Item[Index: OleVariant]: CMapXPoint readonly dispid 0; default;
    property Data: OleVariant readonly dispid 7;
    property X[Index: Integer]: Double readonly dispid 9;
    property Y[Index: Integer]: Double readonly dispid 10;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXPoint
// Flags:     (4112) Hidden Dispatchable
// GUID:      {968303A6-8F18-11D0-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXPoint = dispinterface
    ['{968303A6-8F18-11D0-8796-00AA00B7EF73}']
    procedure Offset(deltaX: Double; deltaY: Double); dispid 4;
    procedure Set_(X: Double; Y: Double); dispid 3;
    property Y: Double readonly dispid 2;
    property X: Double readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXFeatures
// Flags:     (4112) Hidden Dispatchable
// GUID:      {090703E0-9563-11D0-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXFeatures = dispinterface
    ['{090703E0-9563-11D0-8796-00AA00B7EF73}']
    function Clone: CMapXFeatures; dispid 3;
    procedure RemoveByID(FeatureID: OleVariant); dispid 10;
    function _Item(Index: OleVariant): CMapXFeature; dispid 2;
    procedure Add(const Source: IDispatch); dispid 4;
    procedure Common(const Source: IDispatch); dispid 5;
    procedure Replace(const Source: IDispatch); dispid 7;
    procedure AddByID(FeatureID: OleVariant); dispid 9;
    procedure Remove(Source: OleVariant); dispid 6;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXFeature readonly dispid 0; default;
    property Bounds: CMapXRectangle readonly dispid 8;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXLayerFind
// Flags:     (4112) Hidden Dispatchable
// GUID:      {436052C0-43E3-11D0-83EB-00AA00BD34FC}
// *********************************************************************//
  CMapXLayerFind = dispinterface
    ['{436052C0-43E3-11D0-83EB-00AA00BD34FC}']
    function SearchEx(const Address: WideString; RefineBoundary: OleVariant): CMapXFindResult; dispid 11;
    function Search(const Address: WideString; RefineBoundary: OleVariant): CMapXFindFeature; dispid 9;
    property ClosestAddr: WordBool dispid 3;
    property RefineLayer: IDispatch dispid 1;
    property OtherBoundary: WordBool dispid 4;
    property FindField: IDispatch dispid 5;
    property Abbreviations: WordBool dispid 2;
    property RefineDataset: IDispatch dispid 8;
    property FindDataset: IDispatch dispid 7;
    property RefineField: IDispatch dispid 6;
    property CloseMatchMax: Integer dispid 10;
  end;

// *********************************************************************//
// DispIntf:  CMapXFindFeature
// Flags:     (4112) Hidden Dispatchable
// GUID:      {436052C2-43E3-11D0-83EB-00AA00BD34FC}
// *********************************************************************//
  CMapXFindFeature = dispinterface
    ['{436052C2-43E3-11D0-83EB-00AA00BD34FC}']
    property Nodes[CSys: OleVariant]: OleVariant dispid 65558;
    function Clone: CMapXFeature; dispid 65557;
    procedure Attach(const Map: IDispatch); dispid 65556;
    procedure Offset(deltaX: Double; deltaY: Double); dispid 65555;
    procedure Update(UpdateFeature: OleVariant; RowValues: OleVariant); dispid 65554;
    property CenterX: Double readonly dispid 65540;
    property Length: Double readonly dispid 65539;
    property _FeatureID: Integer readonly dispid 0;
    property Bounds: CMapXRectangle readonly dispid 65543;
    property type_: FeatureTypeConstants dispid 65538;
    property FeatureID: Integer readonly dispid 65537;
    property LabelPoint: CMapXPoint readonly dispid 65549;
    property Parts: CMapXParts readonly dispid 65545;
    property Point: CMapXPoint dispid 65548;
    property Layer: CMapXLayer readonly dispid 65547;
    property Smooth: WordBool dispid 65551;
    property Perimeter: Double readonly dispid 65550;
    property Area: Double readonly dispid 65546;
    property Name: WideString readonly dispid 65552;
    property KeyValue: WideString dispid 65553;
    property HasMultipoint: WordBool readonly dispid 65565;
    property Region: IDispatch dispid 65560;
    property Polyline: IDispatch dispid 65561;
    property FeatureKey: WideString readonly dispid 65559;
    property FindRC: Smallint readonly dispid 1;
    property Style: CMapXStyle dispid 65542;
    property CenterY: Double readonly dispid 65541;
    property Caption: WideString dispid 65544;
    property HasPolyline: WordBool readonly dispid 65564;
    property Multipoint: IDispatch dispid 65562;
    property HasRegion: WordBool readonly dispid 65563;
  end;

// *********************************************************************//
// DispIntf:  CMapXFindResult
// Flags:     (4112) Hidden Dispatchable
// GUID:      {A4274C81-7E2E-11D2-8CE0-00207812C7EB}
// *********************************************************************//
  CMapXFindResult = dispinterface
    ['{A4274C81-7E2E-11D2-8CE0-00207812C7EB}']
    property ExactMatch: WordBool readonly dispid 1;
    property Substitute: WordBool readonly dispid 2;
    property AddressOutOfRange: WordBool readonly dispid 3;
    property IntersectionNotFound: WordBool readonly dispid 4;
    property MultipleMatches: WordBool readonly dispid 5;
    property RefineRegion: WordBool readonly dispid 6;
    property FindRC: Smallint readonly dispid 7;
    property Matches: CMapXFindMatches readonly dispid 8;
    property MatchedFeature: CMapXFeature readonly dispid 9;
  end;

// *********************************************************************//
// DispIntf:  CMapXFindMatches
// Flags:     (4112) Hidden Dispatchable
// GUID:      {CF466D01-7FAB-11D2-8CE0-00207812C7EB}
// *********************************************************************//
  CMapXFindMatches = dispinterface
    ['{CF466D01-7FAB-11D2-8CE0-00207812C7EB}']
    function _Item(Index: OleVariant): CMapXFindMatch; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXFindMatch readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXFindMatch
// Flags:     (4112) Hidden Dispatchable
// GUID:      {CF466D04-7FAB-11D2-8CE0-00207812C7EB}
// *********************************************************************//
  CMapXFindMatch = dispinterface
    ['{CF466D04-7FAB-11D2-8CE0-00207812C7EB}']
    property FeatureID: Integer readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property Score: Integer readonly dispid 3;
    property FeatureKey: WideString readonly dispid 4;
  end;

// *********************************************************************//
// DispIntf:  CMapXDatasets
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D4E-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXDatasets = dispinterface
    ['{77306D4E-5C82-11CF-8795-00AA00B7EF73}']
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant; 
                 Fields: OleVariant; Dynamic: OleVariant): CMapXDataset; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure Remove(Index: OleVariant); dispid 4;
    function _Item(Index: OleVariant): CMapXDataset; dispid 3;
    function Restore(const Name: WideString; SourceData: OleVariant): CMapXDataset; dispid 5;
    procedure RemoveAll; dispid 6;
    property Item[Index: OleVariant]: CMapXDataset readonly dispid 0; default;
    function Contains(Index: OleVariant): WordBool; dispid 8;
    property BuildSourceRows: WordBool dispid 7;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXDataset
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D51-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXDataset = dispinterface
    ['{77306D51-5C82-11CF-8795-00AA00B7EF73}']
    function AddField(const Name: WideString; const Expression: WideString): CMapXField; dispid 14;
    property RowValues[Row: OleVariant]: CMapXRowValues readonly dispid 13;
    property SourceRows[Row: OleVariant]: CMapXSourceRows readonly dispid 10;
    property _Value[Row: OleVariant; Column: OleVariant]: OleVariant readonly dispid 0;
    property Value[Row: OleVariant; Column: OleVariant]: OleVariant readonly dispid 9;
    procedure Refresh; dispid 8;
    property Layer: CMapXLayer readonly dispid 7;
    property Themes: CMapXThemes readonly dispid 4;
    property GeoField: Integer readonly dispid 5;
    property SecondaryGeoField: Integer readonly dispid 6;
    property Name: WideString dispid 1;
    property type_: DatasetTypeConstants readonly dispid 11;
    property ReadOnly: WordBool readonly dispid 12;
    property RowCount: Integer readonly dispid 2;
    property Fields: CMapXFields readonly dispid 3;
  end;

// *********************************************************************//
// DispIntf:  CMapXFields
// Flags:     (4112) Hidden Dispatchable
// GUID:      {3DBD18C2-C2AC-11CF-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXFields = dispinterface
    ['{3DBD18C2-C2AC-11CF-8796-00AA00B7EF73}']
    function Add(SourceField: OleVariant; Name: OleVariant; AggregationFunction: OleVariant; 
                 Type_: OleVariant): CMapXField; dispid 2;
    function _Item(Index: OleVariant): CMapXField; dispid 3;
    procedure Remove(Index: OleVariant); dispid 4;
    procedure RemoveAll; dispid 5;
    function AddStringField(Name: OleVariant; Width: OleVariant; Indexed: OleVariant): CMapXField; dispid 6;
    function AddLogicalField(Name: OleVariant; Indexed: OleVariant): CMapXField; dispid 7;
    function AddDateField(Name: OleVariant; Indexed: OleVariant): CMapXField; dispid 12;
    function AddIntegerField(Name: OleVariant; Indexed: OleVariant): CMapXField; dispid 8;
    function AddSmallIntField(Name: OleVariant; Indexed: OleVariant): CMapXField; dispid 9;
    function AddNumericField(Name: OleVariant; Precision: OleVariant; Decimals: OleVariant; 
                             Indexed: OleVariant): CMapXField; dispid 10;
    property Item[Index: OleVariant]: CMapXField readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function AddFloatField(Name: OleVariant; Indexed: OleVariant): CMapXField; dispid 11;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXField
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D4C-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXField = dispinterface
    ['{77306D4C-5C82-11CF-8795-00AA00B7EF73}']
    property NSourceField: Integer dispid 10;
    property AllTypeDataType: Integer dispid 11;
    property Width: Smallint dispid 4;
    property StrSourceField: WideString dispid 9;
    property Decimals: Smallint dispid 6;
    property TypeEx: FieldTypeConstants readonly dispid 8;
    property Indexed: WordBool readonly dispid 7;
    property Precision: Smallint readonly dispid 5;
    property AggregationFunction: AggregationFunctionConstants readonly dispid 3;
    property Name: WideString readonly dispid 2;
    property type_: FieldTypeConstants readonly dispid 1;
    property _Name: WideString readonly dispid 0;
  end;

// *********************************************************************//
// DispIntf:  CMapXThemes
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D54-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXThemes = dispinterface
    ['{77306D54-5C82-11CF-8795-00AA00B7EF73}']
    procedure Remove(Index: OleVariant); dispid 4;
    function Add(Type_: OleVariant; Field: OleVariant; Name: OleVariant; ComputeTheme: OleVariant): CMapXTheme; dispid 2;
    function _Item(Index: OleVariant): CMapXTheme; dispid 3;
    procedure RemoveAll; dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXTheme readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXTheme
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D56-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXTheme = dispinterface
    ['{77306D56-5C82-11CF-8795-00AA00B7EF73}']
    function ThemeDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; dispid 8;
    property Visible: WordBool dispid 1;
    property type_: ThemeTypeConstants readonly dispid 2;
    property Properties: CMapXThemeProperties readonly dispid 3;
    property Legend: CMapXLegend readonly dispid 4;
    property AutoRecompute: WordBool dispid 5;
    property _Name: WideString dispid 0;
    property Name: WideString dispid 6;
    property Layer: CMapXLayer readonly dispid 9;
    property Fields: CMapXFields readonly dispid 10;
    property DataMin: Double dispid 11;
    property ThemedFeatureType: FeatureTypeConstants readonly dispid 14;
    property ThemeProperties: CMapXThemeProperties readonly dispid 7;
    property DataMax: Double dispid 12;
    property ComputeTheme: WordBool dispid 13;
  end;

// *********************************************************************//
// DispIntf:  CMapXThemeProperties
// Flags:     (4112) Hidden Dispatchable
// GUID:      {44DB7B47-B2F5-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXThemeProperties = dispinterface
    ['{44DB7B47-B2F5-11CF-9BEE-00AA00A478CB}']
    property DistMethod: DistribMethodConstants dispid 1;
    property NumRanges: Smallint dispid 2;
    property RangeCategories: CMapXRangeCategoriesCollection readonly dispid 3;
    property DotSize: Smallint dispid 5;
    property Graduated: WordBool dispid 6;
    property MultivarCategories: CMapXMultivarCategoriesCollection readonly dispid 7;
    property Independent: WordBool dispid 8;
    property IndividualValueCategories: CMapXIndividualValueCategoriesCollection readonly dispid 4;
    property ValuePerDot: Double dispid 9;
    property DataValue: Double dispid 10;
    property Size: Double dispid 11;
    property Width: Double dispid 12;
    property SymbolStyle: CMapXStyle dispid 13;
    property SpreadBy: SpreadByConstants dispid 14;
    property AllowEmptyRanges: WordBool dispid 15;
    property DotColor: OLE_COLOR dispid 16;
    property PieClockwise: WordBool dispid 17;
    property PieHalfPies: WordBool dispid 18;
    property PieStartAngle: Smallint dispid 19;
    property BarStacked: WordBool dispid 20;
    property NegativeSymbolStyle: CMapXStyle dispid 21;
    property ShowNegativeValues: WordBool dispid 22;
    property GraduateSizeBy: GraduationConstants dispid 23;
    property BorderStyle: CMapXStyle dispid 24;
    property BarWidth: Double dispid 25;
    property BarIndependentScale: WordBool dispid 26;
    property PositiveSymbolStyle: CMapXStyle dispid 27;
    property BarFrameStyle: CMapXStyle dispid 28;
    property PieGraduated: WordBool dispid 29;
    property BarGraduatedStack: WordBool dispid 30;
    property ApplyAttribute: ApplyAttributeConstants dispid 31;
    property RoundRanges: WordBool dispid 32;
    property RoundBy: Double dispid 33;
    property ColorMethod: ColorSpreadingMethodConstants dispid 34;
    property InflectRanges: WordBool dispid 35;
    property InflectionRange: Smallint dispid 36;
    property InflectionColor: OLE_COLOR dispid 37;
    property BarFramed: WordBool dispid 38;
  end;

// *********************************************************************//
// DispIntf:  CMapXRangeCategoriesCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {ECC81860-038E-11D1-9DC6-00AA00A478CB}
// *********************************************************************//
  CMapXRangeCategoriesCollection = dispinterface
    ['{ECC81860-038E-11D1-9DC6-00AA00A478CB}']
    function _Item(Index: OleVariant): CMapXRangeCategory; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXRangeCategory readonly dispid 0; default;
    property AllOthersCategory: CMapXRangeCategory readonly dispid 3;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXRangeCategory
// Flags:     (4112) Hidden Dispatchable
// GUID:      {97F45D06-BF8A-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXRangeCategory = dispinterface
    ['{97F45D06-BF8A-11CF-9BEE-00AA00A478CB}']
    property Min: Double dispid 1;
    property Max: Double dispid 2;
    property NumItems: Integer readonly dispid 3;
    property Style: CMapXStyle dispid 4;
  end;

// *********************************************************************//
// DispIntf:  CMapXMultivarCategoriesCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {ECC81864-038E-11D1-9DC6-00AA00A478CB}
// *********************************************************************//
  CMapXMultivarCategoriesCollection = dispinterface
    ['{ECC81864-038E-11D1-9DC6-00AA00A478CB}']
    function _Item(Index: OleVariant): CMapXMultiVarCategory; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXMultiVarCategory readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXMultiVarCategory
// Flags:     (4112) Hidden Dispatchable
// GUID:      {6DDA5660-C853-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXMultiVarCategory = dispinterface
    ['{6DDA5660-C853-11CF-9BEE-00AA00A478CB}']
    property Style: CMapXStyle dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXIndividualValueCategoriesCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {ECC81862-038E-11D1-9DC6-00AA00A478CB}
// *********************************************************************//
  CMapXIndividualValueCategoriesCollection = dispinterface
    ['{ECC81862-038E-11D1-9DC6-00AA00A478CB}']
    function _Item(Index: OleVariant): CMapXIValueCategory; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXIValueCategory readonly dispid 0; default;
    property AllOthersCategory: CMapXIValueCategory readonly dispid 3;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXIValueCategory
// Flags:     (4112) Hidden Dispatchable
// GUID:      {985148C3-C84B-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXIValueCategory = dispinterface
    ['{985148C3-C84B-11CF-9BEE-00AA00A478CB}']
    property Style: CMapXStyle dispid 1;
    property NumItems: Integer readonly dispid 2;
    property Value: WideString dispid 3;
  end;

// *********************************************************************//
// DispIntf:  CMapXLegend
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D5C-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXLegend = dispinterface
    ['{77306D5C-5C82-11CF-8795-00AA00B7EF73}']
    procedure PrintLegend(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer); dispid 20;
    procedure ExportLegend(const Destination: WideString; Format: ExportFormatConstants); dispid 18;
    function LegendDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; dispid 16;
    property Visible: WordBool dispid 2;
    property BodyTextStyle: CMapXStyle dispid 6;
    property TitleStyle: CMapXStyle dispid 3;
    property Compact: WordBool dispid 1;
    property SubTitle: WideString dispid 10;
    property LegendTexts: CMapXLegendTexts readonly dispid 7;
    property CurrencyFormat: WordBool dispid 8;
    property CompactTitle: WideString dispid 11;
    property Title: WideString dispid 9;
    property CompactTitleStyle: CMapXStyle dispid 5;
    property Left: Single dispid 12;
    property Top: Single dispid 13;
    property Width: Single readonly dispid 14;
    property Height: Single readonly dispid 15;
    property PaperHeight: Double readonly dispid 21;
    property ShowCount: WordBool dispid 19;
    property SubTitleStyle: CMapXStyle dispid 4;
    property PaperWidth: Double readonly dispid 22;
    property ShowEmptyRanges: WordBool dispid 17;
  end;

// *********************************************************************//
// DispIntf:  CMapXLegendTexts
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4EC9B528-DFCF-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXLegendTexts = dispinterface
    ['{4EC9B528-DFCF-11CF-9BEE-00AA00A478CB}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXLegendText readonly dispid 0; default;
    function _Item(Index: OleVariant): CMapXLegendText; dispid 3;
    property AllOthersText: CMapXLegendText readonly dispid 4;
    property Count: Integer readonly dispid 2;
    property AutoGenerate: WordBool dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXLegendText
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4EC9B520-DFCF-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXLegendText = dispinterface
    ['{4EC9B520-DFCF-11CF-9BEE-00AA00A478CB}']
    property Text: WideString dispid 1;
    property Visible: WordBool dispid 2;
  end;

// *********************************************************************//
// DispIntf:  CMapXSourceRows
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46FF43C0-C9ED-11CF-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXSourceRows = dispinterface
    ['{46FF43C0-C9ED-11CF-8796-00AA00B7EF73}']
    function _Item(Index: OleVariant): CMapXSourceRow; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXSourceRow readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXSourceRow
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46FF43C2-C9ED-11CF-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXSourceRow = dispinterface
    ['{46FF43C2-C9ED-11CF-8796-00AA00B7EF73}']
    property Row: Integer readonly dispid 1;
    property _Row: Integer dispid 0;
  end;

// *********************************************************************//
// DispIntf:  CMapXRowValues
// Flags:     (4112) Hidden Dispatchable
// GUID:      {7A5FFDC2-FE6C-11D2-98A9-00A0C9742CCA}
// *********************************************************************//
  CMapXRowValues = dispinterface
    ['{7A5FFDC2-FE6C-11D2-98A9-00A0C9742CCA}']
    function Add(const RowValue: IDispatch): CMapXRowValue; dispid 4;
    function _Item(Index: OleVariant): CMapXRowValue; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    property Item[Index: OleVariant]: CMapXRowValue readonly dispid 0; default;
    function Clone: CMapXRowValues; dispid 6;
    procedure RemoveAll; dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
    property ReadOnly: WordBool readonly dispid 7;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXRowValue
// Flags:     (4112) Hidden Dispatchable
// GUID:      {2EF654E2-FE50-11D2-98A9-00A0C9742CCA}
// *********************************************************************//
  CMapXRowValue = dispinterface
    ['{2EF654E2-FE50-11D2-98A9-00A0C9742CCA}']
    property ReadOnly: WordBool readonly dispid 1;
    property Dataset: IDispatch dispid 2;
    property Field: IDispatch dispid 3;
    property Value: OleVariant dispid 4;
  end;

// *********************************************************************//
// DispIntf:  CMapXLabels
// Flags:     (4112) Hidden Dispatchable
// GUID:      {C6AAE3F1-88D9-45FB-B816-7D635B3F259B}
// *********************************************************************//
  CMapXLabels = dispinterface
    ['{C6AAE3F1-88D9-45FB-B816-7D635B3F259B}']
    function _Item(Index: OleVariant): CMapXLabel; dispid 2;
    property Item[Index: OleVariant]: CMapXLabel readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXFeaturesConstraint
// Flags:     (4112) Hidden Dispatchable
// GUID:      {064F4C93-D40A-4FE4-9FC0-4A6C4A6EAA8D}
// *********************************************************************//
  CMapXFeaturesConstraint = dispinterface
    ['{064F4C93-D40A-4FE4-9FC0-4A6C4A6EAA8D}']
    procedure Disable; dispid 4;
    procedure Enable; dispid 3;
    property Features: CMapXFeatures dispid 2;
    property Enabled: WordBool readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXFeatureFactory
// Flags:     (4112) Hidden Dispatchable
// GUID:      {BBE482A1-037F-11D1-8796-00AA00B7EF73}
// *********************************************************************//
  CMapXFeatureFactory = dispinterface
    ['{BBE482A1-037F-11D1-8796-00AA00B7EF73}']
    function BufferFeatures(const Source: IDispatch; Distance: Double; Units: OleVariant; 
                            Resolution: OleVariant): CMapXFeature; dispid 1;
    function CombineFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature; dispid 2;
    function IntersectFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature; dispid 3;
    function EraseFeature(const Feature: IDispatch; const EraserFeature: IDispatch): CMapXFeature; dispid 4;
    function CreateSymbol(Point: OleVariant; Style: OleVariant): CMapXFeature; dispid 5;
    function CreateRegion(Points: OleVariant; Style: OleVariant): CMapXFeature; dispid 6;
    function CreateLine(Points: OleVariant; Style: OleVariant): CMapXFeature; dispid 7;
    function CreateText(Point: OleVariant; Caption: OleVariant; Position: OleVariant; 
                        Style: OleVariant): CMapXFeature; dispid 8;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch; Angle: OleVariant; 
                       Distance: OleVariant; Resolution: OleVariant; Style: OleVariant): CMapXFeature; dispid 9;
    function CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant; 
                                    Resolution: OleVariant; Style: OleVariant): CMapXFeature; dispid 10;
    function CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                  Distance: Double; Units: OleVariant; Resolution: OleVariant; 
                                  Style: OleVariant): CMapXFeature; dispid 11;
    function IntersectionTest(const Feature1: IDispatch; const Feature2: IDispatch; Flag: OleVariant): WordBool; dispid 12;
    function IntersectionPoints(const Feature1: IDispatch; const Feature2: IDispatch; 
                                Flag: OleVariant): CMapXPoints; dispid 13;
    function CreateCollectionFeature(Source1: OleVariant; Source2: OleVariant; Source3: OleVariant): CMapXFeature; dispid 14;
    function CreateMultipoint(Points: OleVariant; Style: OleVariant): CMapXFeature; dispid 15;
    function ThinFeature(const Source: CMapXFeature; BendTolerance: Double; 
                         DistanceTolerance: Double; Units: OleVariant): CMapXFeature; dispid 16;
  end;

// *********************************************************************//
// DispIntf:  CMapXGeoset
// Flags:     (4112) Hidden Dispatchable
// GUID:      {DC09D461-9575-11D0-83F7-00AA00BD34FC}
// *********************************************************************//
  CMapXGeoset = dispinterface
    ['{DC09D461-9575-11D0-83F7-00AA00BD34FC}']
    property Centroid: CMapXPoint readonly dispid 1;
    property PathName: WideString readonly dispid 2;
    property UserName: WideString readonly dispid 3;
  end;

// *********************************************************************//
// DispIntf:  CMapXGeosets
// Flags:     (4112) Hidden Dispatchable
// GUID:      {984C9420-93BA-11D0-B374-444553540000}
// *********************************************************************//
  CMapXGeosets = dispinterface
    ['{984C9420-93BA-11D0-B374-444553540000}']
    function _Item(Index: OleVariant): CMapXGeoset; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXGeoset readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXLayerInfo
// Flags:     (4112) Hidden Dispatchable
// GUID:      {30D28170-FE33-11D2-9878-0060089F59A5}
// *********************************************************************//
  CMapXLayerInfo = dispinterface
    ['{30D28170-FE33-11D2-9878-0060089F59A5}']
    procedure AddParameter(const ParamName: WideString; Param: OleVariant); dispid 2;
    property Parameter[const ParamName: WideString]: OleVariant dispid 3;
    property type_: LayerInfoTypeConstants dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXLayers
// Flags:     (4112) Hidden Dispatchable
// GUID:      {77306D42-5C82-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXLayers = dispinterface
    ['{77306D42-5C82-11CF-8795-00AA00B7EF73}']
    function Move(From: Smallint; To_: Smallint): WordBool; dispid 3;
    procedure RemoveAll; dispid 14;
    function AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                            const Query: WideString; Position: OleVariant; Options: OleVariant): CMapXLayer; dispid 13;
    function Add(LayerInfo: OleVariant; Position: OleVariant): CMapXLayer; dispid 4;
    procedure AddGeoSetLayers(const GeoSetName: WideString); dispid 5;
    procedure ClearSelection; dispid 2;
    property Item[Index: OleVariant]: CMapXLayer readonly dispid 0; default;
    function _Item(Index: OleVariant): CMapXLayer; dispid 6;
    function CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant; 
                         KeyLength: OleVariant; CoordSys: OleVariant): CMapXLayer; dispid 10;
    function AddUserDrawLayer(const Name: WideString; Position: Smallint): CMapXLayer; dispid 8;
    property _NewEnum: IUnknown readonly dispid -4;
    function LayersDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; dispid 11;
    procedure Remove(Index: OleVariant); dispid 7;
    property ClippedBounds: CMapXRectangle readonly dispid 16;
    property InsertionLayer: CMapXLayer dispid 15;
    property Bounds: CMapXRectangle readonly dispid 12;
    property AnimationLayer: CMapXLayer dispid 9;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXTitle
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B2504160-E149-11CF-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXTitle = dispinterface
    ['{B2504160-E149-11CF-9BEE-00AA00A478CB}']
    property Caption: WideString dispid 1;
    property TextStyle: CMapXStyle dispid 2;
    property Visible: WordBool dispid 3;
    property X: Single dispid 4;
    property Y: Single dispid 5;
    property Editable: WordBool dispid 6;
    property Position: PositionConstants dispid 7;
    property _Caption: WideString dispid 0;
    property Border: WordBool dispid 8;
  end;

// *********************************************************************//
// DispIntf:  CMapXResolveObject
// Flags:     (4112) Hidden Dispatchable
// GUID:      {92880603-CD2F-11D1-A34B-00207812EFE7}
// *********************************************************************//
  CMapXResolveObject = dispinterface
    ['{92880603-CD2F-11D1-A34B-00207812EFE7}']
    property TableName: WideString readonly dispid 1;
    property SourceMatch: Integer readonly dispid 2;
    property TableMatch: Integer readonly dispid 3;
  end;

// *********************************************************************//
// DispIntf:  CMapXResolveObjects
// Flags:     (4112) Hidden Dispatchable
// GUID:      {92880600-CD2F-11D1-A34B-00207812EFE7}
// *********************************************************************//
  CMapXResolveObjects = dispinterface
    ['{92880600-CD2F-11D1-A34B-00207812EFE7}']
    function _Item(Index: OleVariant): CMapXResolveObject; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Item[Index: OleVariant]: CMapXResolveObject readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// DispIntf:  CMapXVariable
// Flags:     (4112) Hidden Dispatchable
// GUID:      {9A5D5585-EFB8-11D3-9C33-0050049DA682}
// *********************************************************************//
  CMapXVariable = dispinterface
    ['{9A5D5585-EFB8-11D3-9C33-0050049DA682}']
    property Name: WideString readonly dispid 1;
    property Value: OleVariant dispid 2;
    property _Value: OleVariant dispid 0;
  end;

// *********************************************************************//
// DispIntf:  CMapXVariables
// Flags:     (4112) Hidden Dispatchable
// GUID:      {9A5D5583-EFB8-11D3-9C33-0050049DA682}
// *********************************************************************//
  CMapXVariables = dispinterface
    ['{9A5D5583-EFB8-11D3-9C33-0050049DA682}']
    function _Item(Index: OleVariant): CMapXVariable; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    function Add(const Name: WideString; Value: OleVariant): CMapXVariable; dispid 4;
    property Item[Index: OleVariant]: CMapXVariable readonly dispid 0; default;
    function Clone: CMapXVariables; dispid 6;
    procedure RemoveAll; dispid 5;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// Interface: IRowCursor
// Flags:     (16) Hidden
// GUID:      {9F6AA700-D188-11CD-AD48-00AA003C9CB6}
// *********************************************************************//
  IRowCursor = interface(IUnknown)
    ['{9F6AA700-D188-11CD-AD48-00AA003C9CB6}']
  end;

// *********************************************************************//
// DispIntf:  CMapX
// Flags:     (4112) Hidden Dispatchable
// GUID:      {9D6ED197-5910-11D2-98A6-00A0C9742CCA}
// *********************************************************************//
  CMapX = dispinterface
    ['{9D6ED197-5910-11D2-98A6-00A0C9742CCA}']
    procedure AboutBox; dispid -552;
    function LoadMIProWSAndGST(const WorkSpace: WideString; const GeoSet: WideString): WordBool; dispid 78;
    function LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool; dispid 77;
    function MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X: OleVariant; 
                                           var Y: OleVariant): WordBool; dispid 75;
    function MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X: Double; var Y: Double): WordBool; dispid 74;
    function MilitaryGridReferenceFromPoint(X: OleVariant; Y: OleVariant): WideString; dispid 73;
    function ConvertCoordP(X: OleVariant; Y: OleVariant; Direction: ConversionConstants): CMapXPoint; dispid 68;
    procedure Pan(ScreenX: Single; ScreenY: Single); dispid 64;
    procedure Die(const Password: WideString); dispid 59;
    function ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; 
                            lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool; dispid 48;
    procedure SaveMapAsGeoset(const Name: WideString; const FileSpec: WideString); dispid 47;
    function GetControl: Integer; dispid 46;
    function ClipLineV(var X1: OleVariant; var Y1: OleVariant; var X2: OleVariant; 
                       var Y2: OleVariant): WordBool; dispid 45;
    function ClipLine(var X1: Double; var Y1: Double; var X2: Double; var Y2: Double): WordBool; dispid 44;
    function IsPointVisible(X: Double; Y: Double): WordBool; dispid 43;
    procedure SetSize(Width: Integer; Height: Integer); dispid 42;
    procedure ConvertCoordV(var ScreenX: OleVariant; var ScreenY: OleVariant; var MapX: OleVariant; 
                            var MapY: OleVariant; Direction: ConversionConstants); dispid 41;
    procedure PropertyPage; dispid 40;
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants; 
                        Width: OleVariant; Height: OleVariant); dispid 39;
    procedure PrintMap(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer); dispid 38;
    procedure Refresh; dispid -550;
    function Distance(X1: Double; Y1: Double; X2: Double; Y2: Double): Double; dispid 37;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                               ShiftCursor: OleVariant; CtrlCursor: OleVariant; 
                               bInfoTips: OleVariant); dispid 36;
    procedure ZoomTo(Zoom: Double; X: Double; Y: Double); dispid 35;
    procedure ConvertCoord(var ScreenX: Single; var ScreenY: Single; var MapX: Double; 
                           var MapY: Double; Direction: ConversionConstants); dispid 34;
    property DefaultConversionResolution: Integer dispid 50;
    property FeatureFactory: CMapXFeatureFactory readonly dispid 49;
    property CurrentTool: ToolConstants dispid 20;
    property SelectionStyle: CMapXStyle dispid 33;
    property MapScreenWidth: Single readonly dispid 53;
    property ExportSelection: WordBool dispid 32;
    property NumericCoordSys: CMapXCoordSys dispid 31;
    property CenterX: Double dispid 8;
    property Version: WideString readonly dispid 2;
    property DataSetGeoField: WideString dispid 1;
    property CenterY: Double dispid 9;
    property AutoRedraw: WordBool dispid 6;
    property Layers: CMapXLayers readonly dispid 5;
    property Zoom: Double dispid 7;
    property Bounds: CMapXRectangle dispid 29;
    property DataSets: CMapXDatasets readonly dispid 22;
    property MousePointer: CursorConstants dispid 21;
    property DisplayCoordSys: CMapXCoordSys dispid 30;
    property Geosets: CMapXGeosets readonly dispid 27;
    property Rotation: Double dispid 26;
    property AreaUnit: AreaUnitConstants dispid 28;
    property BackColor: OLE_COLOR dispid -501;
    property MatchNumericFields: WordBool dispid 52;
    property MapScreenHeight: Single readonly dispid 54;
    property MousewheelSupport: MousewheelSupportConstants dispid 51;
    property Title: CMapXTitle readonly dispid 23;
    property MapUnit: MapUnitConstants dispid 25;
    property TitleText: WideString dispid 24;
    property hWnd: OLE_HANDLE readonly dispid -515;
    property SnapToNodeSupport: WordBool dispid 70;
    property SnapTolerance: Smallint dispid 71;
    property MatchThreshold: Smallint dispid 57;
    property EditableLabels: WordBool dispid 76;
    property FeatureEditMode: Smallint dispid 65;
    property _Unused: Integer dispid 66;
    property DynamicSelectionSupport: WordBool dispid 72;
    property InfotipSupport: WordBool dispid 63;
    property PanAnimationLayer: WordBool dispid 60;
    property InfotipPopupDelay: Integer dispid 61;
    property MouseIcon: WideString dispid 62;
    property WaitCursorEnabled: WordBool dispid 58;
    property RedrawInterval: Integer dispid 55;
    property SearchPath: WideString dispid 56;
    property DefaultStyle: CMapXStyle dispid 17;
    property DataSetTheme: ThemeTypeConstants dispid 19;
    property GeoDictionary: WideString dispid 18;
    property PaperUnit: PaperUnitConstants dispid 15;
    property Dataset: IRowCursor dispid 4;
    property Annotations: CMapXAnnotations readonly dispid 3;
    property PreferCompactLegends: WordBool dispid 16;
    property MapPaperWidth: Double readonly dispid 13;
    property CheckEscapeKeyInterval: Integer dispid 67;
    property ReuseEquivalentOnRestore: WordBool dispid 69;
    property MaxSearchTime: Smallint dispid 14;
    property GeoSetWidth: Double readonly dispid 11;
    property GeoSet: WideString dispid 10;
    property MapPaperHeight: Double readonly dispid 12;
  end;

// *********************************************************************//
// DispIntf:  CMapXEvents
// Flags:     (4096) Dispatchable
// GUID:      {9D6ED198-5910-11D2-98A6-00A0C9742CCA}
// *********************************************************************//
  CMapXEvents = dispinterface
    ['{9D6ED198-5910-11D2-98A6-00A0C9742CCA}']
    procedure Click; dispid -600;
    procedure DblClick; dispid -601;
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; 
                    const Source: WideString; const HelpFile: WideString; HelpContext: Integer; 
                    var CancelDisplay: WordBool); dispid -608;
    procedure KeyDown(var KeyCode: Smallint; Shift: Smallint); dispid -602;
    procedure KeyPress(var KeyAscii: Smallint); dispid -603;
    procedure KeyUp(var KeyCode: Smallint; Shift: Smallint); dispid -604;
    procedure MouseMove(Button: Smallint; Shift: Smallint; X: Single; Y: Single); dispid -606;
    procedure MouseDown(Button: Smallint; Shift: Smallint; X: Single; Y: Single); dispid -605;
    procedure MouseUp(Button: Smallint; Shift: Smallint; X: Single; Y: Single); dispid -607;
    procedure SelectionChanged; dispid 1;
    procedure ResolveDataBind(Flag: Smallint; NumMatches: Smallint; Matches: OleVariant; 
                              var Choice: Smallint; var Cancel: WordBool); dispid 2;
    procedure ToolUsed(ToolNum: Smallint; X1: Double; Y1: Double; X2: Double; Y2: Double; 
                       Distance: Double; Shift: WordBool; Ctrl: WordBool; 
                       var EnableDefault: WordBool); dispid 3;
    procedure RequestData(const DataSetName: WideString; Row: Integer; Field: Smallint; 
                          var Value: OleVariant; var Done: WordBool); dispid 4;
    procedure DataMismatch(const DataSetName: WideString; Row: Integer; 
                           var GeoFieldValue: WideString); dispid 5;
    procedure MapViewChanged; dispid 6;
    procedure AnnotationAdded(const Annotation: IDispatch); dispid 7;
    procedure AnnotationChanged(ChangeType: Smallint; const Annotation: IDispatch; 
                                var EnableDefault: WordBool); dispid 8;
    procedure ThemeModifyRequested(const Theme: IDispatch); dispid 9;
    procedure DrawUserLayer(const Layer: IDispatch; hOutputDC: OLE_HANDLE; 
                            hAttributeDC: OLE_HANDLE; const RectFull: IDispatch; 
                            const RectInvalid: IDispatch); dispid 10;
    procedure PolyToolUsed(ToolNum: Smallint; Flags: Integer; const Points: IDispatch; 
                           bShift: WordBool; bCtrl: WordBool; var EnableDefault: WordBool); dispid 11;
    procedure MouseWheel(Flags: Integer; zDelta: Smallint; var X: Single; var Y: Single; 
                         var EnableDefault: WordBool); dispid 12;
    procedure MapInitialized; dispid 13;
    procedure ResolveDataBindEx(Flag: Smallint; NumMatches: Smallint; Matches: OleVariant; 
                                var Choice: Smallint; var Cancel: WordBool); dispid 14;
    procedure MapDraw(Flag: Smallint); dispid 15;
    procedure AddFeatureToolUsed(ToolNum: Smallint; Flags: Integer; const Feature: IDispatch; 
                                 bShift: WordBool; bCtrl: WordBool; var EnableDefault: WordBool); dispid 16;
    procedure LabelChanged(ChangeType: Smallint; const ChangingLabels: CMapXLabels; 
                           var EnableDefault: WordBool); dispid 17;
  end;

// *********************************************************************//
// DispIntf:  CMapXCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {3AAB5861-6166-11CF-8795-00AA00B7EF73}
// *********************************************************************//
  CMapXCollection = dispinterface
    ['{3AAB5861-6166-11CF-8795-00AA00B7EF73}']
    property _NewEnum: IUnknown readonly dispid -4;
  end;

// *********************************************************************//
// DispIntf:  CMapXBindLayer
// Flags:     (4112) Hidden Dispatchable
// GUID:      {234FF3C8-071E-11D0-9BEE-00AA00A478CB}
// *********************************************************************//
  CMapXBindLayer = dispinterface
    ['{234FF3C8-071E-11D0-9BEE-00AA00A478CB}']
    property LayerName: WideString dispid 1;
    property RefColumn1: OleVariant dispid 2;
    property RefColumn2: OleVariant dispid 3;
    property LayerType: BindLayerTypeConstants dispid 4;
    property ReferenceLayer: WideString dispid 5;
    property CoordSys: CMapXCoordSys dispid 6;
    property FileSpec: WideString dispid 7;
    property KeyLength: Smallint dispid 8;
    property ReferenceLayerField: Integer dispid 9;
    property OverwriteFile: WordBool dispid 10;
  end;

// *********************************************************************//
// DispIntf:  CMapXBitmapSymbolsCollection
// Flags:     (4112) Hidden Dispatchable
// GUID:      {ECC81866-038E-11D1-9DC6-00AA00A478CB}
// *********************************************************************//
  CMapXBitmapSymbolsCollection = dispinterface
    ['{ECC81866-038E-11D1-9DC6-00AA00A478CB}']
    function _Item(Index: OleVariant): CMapXBitmapSymbol; dispid 2;
    procedure Refresh; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    procedure Unload; dispid 4;
    property Item[Index: OleVariant]: CMapXBitmapSymbol readonly dispid 0; default;
    property Count: Integer readonly dispid 1;
  end;

// *********************************************************************//
// The Class CoDataSets provides a Create and CreateRemote method to          
// create instances of the default interface CMapXDatasets exposed by              
// the CoClass DataSets. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataSets = class
    class function Create: CMapXDatasets;
    class function CreateRemote(const MachineName: string): CMapXDatasets;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDataSets
// Help String      : 
// Default Interface: CMapXDatasets
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDataSetsProperties= class;
{$ENDIF}
  TDataSets = class(TOleServer)
  private
    FIntf: CMapXDatasets;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDataSetsProperties;
    function GetServerProperties: TDataSetsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXDatasets;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXDataset;
    function Get_BuildSourceRows: WordBool;
    procedure Set_BuildSourceRows(Value: WordBool);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXDatasets);
    procedure Disconnect; override;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant; SecondaryGeoField: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant; 
                 Fields: OleVariant): CMapXDataset; overload;
    function Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                 GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant; 
                 Fields: OleVariant; Dynamic: OleVariant): CMapXDataset; overload;
    procedure Remove(Index: OleVariant);
    function _Item(Index: OleVariant): CMapXDataset;
    function Restore(const Name: WideString; SourceData: OleVariant): CMapXDataset;
    procedure RemoveAll;
    function Contains(Index: OleVariant): WordBool;
    property DefaultInterface: CMapXDatasets read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXDataset read Get_Item; default;
    property Count: Integer read Get_Count;
    property BuildSourceRows: WordBool read Get_BuildSourceRows write Set_BuildSourceRows;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDataSetsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDataSets
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDataSetsProperties = class(TPersistent)
  private
    FServer:    TDataSets;
    function    GetDefaultInterface: CMapXDatasets;
    constructor Create(AServer: TDataSets);
  protected
    function Get_Item(Index: OleVariant): CMapXDataset;
    function Get_BuildSourceRows: WordBool;
    procedure Set_BuildSourceRows(Value: WordBool);
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXDatasets read GetDefaultInterface;
  published
    property BuildSourceRows: WordBool read Get_BuildSourceRows write Set_BuildSourceRows;
  end;
{$ENDIF}



// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TMap
// Help String      : MapInfo MapX V5
// Default Interface: CMapX
// Def. Intf. DISP? : Yes
// Event   Interface: CMapXEvents
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TMapError = procedure(ASender: TObject; Number: Smallint; var Description: WideString; 
                                          Scode: Integer; const Source: WideString; 
                                          const HelpFile: WideString; HelpContext: Integer; 
                                          var CancelDisplay: WordBool) of object;
  TMapResolveDataBind = procedure(ASender: TObject; Flag: Smallint; NumMatches: Smallint; 
                                                    Matches: OleVariant; var Choice: Smallint; 
                                                    var Cancel: WordBool) of object;
  TMapToolUsed = procedure(ASender: TObject; ToolNum: Smallint; X1: Double; Y1: Double; X2: Double; 
                                             Y2: Double; Distance: Double; Shift: WordBool; 
                                             Ctrl: WordBool; var EnableDefault: WordBool) of object;
  TMapRequestData = procedure(ASender: TObject; const DataSetName: WideString; Row: Integer; 
                                                Field: Smallint; var Value: OleVariant; 
                                                var Done: WordBool) of object;
  TMapDataMismatch = procedure(ASender: TObject; const DataSetName: WideString; Row: Integer; 
                                                 var GeoFieldValue: WideString) of object;
  TMapAnnotationAdded = procedure(ASender: TObject; const Annotation: IDispatch) of object;
  TMapAnnotationChanged = procedure(ASender: TObject; ChangeType: Smallint; 
                                                      const Annotation: IDispatch; 
                                                      var EnableDefault: WordBool) of object;
  TMapThemeModifyRequested = procedure(ASender: TObject; const Theme: IDispatch) of object;
  TMapDrawUserLayer = procedure(ASender: TObject; const Layer: IDispatch; hOutputDC: OLE_HANDLE; 
                                                  hAttributeDC: OLE_HANDLE; 
                                                  const RectFull: IDispatch; 
                                                  const RectInvalid: IDispatch) of object;
  TMapPolyToolUsed = procedure(ASender: TObject; ToolNum: Smallint; Flags: Integer; 
                                                 const Points: IDispatch; bShift: WordBool; 
                                                 bCtrl: WordBool; var EnableDefault: WordBool) of object;
  TMapMouseWheel = procedure(ASender: TObject; Flags: Integer; zDelta: Smallint; var X: Single; 
                                               var Y: Single; var EnableDefault: WordBool) of object;
  TMapResolveDataBindEx = procedure(ASender: TObject; Flag: Smallint; NumMatches: Smallint; 
                                                      Matches: OleVariant; var Choice: Smallint; 
                                                      var Cancel: WordBool) of object;
  TMapMapDraw = procedure(ASender: TObject; Flag: Smallint) of object;
  TMapAddFeatureToolUsed = procedure(ASender: TObject; ToolNum: Smallint; Flags: Integer; 
                                                       const Feature: IDispatch; bShift: WordBool; 
                                                       bCtrl: WordBool; var EnableDefault: WordBool) of object;
  TMapLabelChanged = procedure(ASender: TObject; ChangeType: Smallint; 
                                                 const ChangingLabels: CMapXLabels; 
                                                 var EnableDefault: WordBool) of object;

  TMap = class(TOleControl)
  private
    FOnError: TMapError;
    FOnSelectionChanged: TNotifyEvent;
    FOnResolveDataBind: TMapResolveDataBind;
    FOnToolUsed: TMapToolUsed;
    FOnRequestData: TMapRequestData;
    FOnDataMismatch: TMapDataMismatch;
    FOnMapViewChanged: TNotifyEvent;
    FOnAnnotationAdded: TMapAnnotationAdded;
    FOnAnnotationChanged: TMapAnnotationChanged;
    FOnThemeModifyRequested: TMapThemeModifyRequested;
    FOnDrawUserLayer: TMapDrawUserLayer;
    FOnPolyToolUsed: TMapPolyToolUsed;
    FOnMouseWheel: TMapMouseWheel;
    FOnMapInitialized: TNotifyEvent;
    FOnResolveDataBindEx: TMapResolveDataBindEx;
    FOnMapDraw: TMapMapDraw;
    FOnAddFeatureToolUsed: TMapAddFeatureToolUsed;
    FOnLabelChanged: TMapLabelChanged;
    FIntf: CMapX;
    function  GetControlInterface: CMapX;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_FeatureFactory: CMapXFeatureFactory;
    function Get_SelectionStyle: CMapXStyle;
    procedure Set_SelectionStyle(const Value: CMapXStyle);
    function Get_NumericCoordSys: CMapXCoordSys;
    procedure Set_NumericCoordSys(const Value: CMapXCoordSys);
    function Get_Layers: CMapXLayers;
    function Get_Bounds: CMapXRectangle;
    procedure Set_Bounds(const Value: CMapXRectangle);
    function Get_DataSets: CMapXDatasets;
    function Get_DisplayCoordSys: CMapXCoordSys;
    procedure Set_DisplayCoordSys(const Value: CMapXCoordSys);
    function Get_Geosets: CMapXGeosets;
    function Get_Title: CMapXTitle;
    function Get_DefaultStyle: CMapXStyle;
    procedure Set_DefaultStyle(const Value: CMapXStyle);
    function Get_Dataset: IRowCursor;
    procedure Set_Dataset(const Value: IRowCursor);
    function Get_Annotations: CMapXAnnotations;
  public
    procedure AboutBox;
    function LoadMIProWSAndGST(const WorkSpace: WideString; const GeoSet: WideString): WordBool;
    function LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool;
    function MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X: OleVariant; 
                                           var Y: OleVariant): WordBool;
    function MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X: Double; var Y: Double): WordBool;
    function MilitaryGridReferenceFromPoint(X: OleVariant; Y: OleVariant): WideString;
    function ConvertCoordP(X: OleVariant; Y: OleVariant; Direction: ConversionConstants): CMapXPoint;
    procedure Pan(ScreenX: Single; ScreenY: Single);
    procedure Die(const Password: WideString);
    function ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; 
                            lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool;
    procedure SaveMapAsGeoset(const Name: WideString; const FileSpec: WideString);
    function GetControl: Integer;
    function ClipLineV(var X1: OleVariant; var Y1: OleVariant; var X2: OleVariant; 
                       var Y2: OleVariant): WordBool;
    function ClipLine(var X1: Double; var Y1: Double; var X2: Double; var Y2: Double): WordBool;
    function IsPointVisible(X: Double; Y: Double): WordBool;
    procedure SetSize(Width: Integer; Height: Integer);
    procedure ConvertCoordV(var ScreenX: OleVariant; var ScreenY: OleVariant; var MapX: OleVariant; 
                            var MapY: OleVariant; Direction: ConversionConstants);
    procedure PropertyPage;
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants); overload;
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants; 
                        Width: OleVariant); overload;
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants; 
                        Width: OleVariant; Height: OleVariant); overload;
    procedure PrintMap(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer);
    procedure Refresh;
    function Distance(X1: Double; Y1: Double; X2: Double; Y2: Double): Double;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant); overload;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                               ShiftCursor: OleVariant); overload;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                               ShiftCursor: OleVariant; CtrlCursor: OleVariant); overload;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                               ShiftCursor: OleVariant; CtrlCursor: OleVariant; 
                               bInfoTips: OleVariant); overload;
    procedure ZoomTo(Zoom: Double; X: Double; Y: Double);
    procedure ConvertCoord(var ScreenX: Single; var ScreenY: Single; var MapX: Double; 
                           var MapY: Double; Direction: ConversionConstants);
    property  ControlInterface: CMapX read GetControlInterface;
    property  DefaultInterface: CMapX read GetControlInterface;
    property FeatureFactory: CMapXFeatureFactory read Get_FeatureFactory;
    property MapScreenWidth: Single index 53 read GetSingleProp;
    property Version: WideString index 2 read GetWideStringProp;
    property Layers: CMapXLayers read Get_Layers;
    property DataSets: CMapXDatasets read Get_DataSets;
    property Geosets: CMapXGeosets read Get_Geosets;
    property MapScreenHeight: Single index 54 read GetSingleProp;
    property Title: CMapXTitle read Get_Title;
    property hWnd: Integer index -515 read GetIntegerProp;
    property Annotations: CMapXAnnotations read Get_Annotations;
    property MapPaperWidth: Double index 13 read GetDoubleProp;
    property GeoSetWidth: Double index 11 read GetDoubleProp;
    property MapPaperHeight: Double index 12 read GetDoubleProp;
  published
    property Anchors;
    property  ParentColor;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property  OnMouseUp;
    property  OnMouseMove;
    property  OnMouseDown;
    property  OnKeyUp;
    property  OnKeyPress;
    property  OnKeyDown;
    property  OnDblClick;
    property  OnClick;
    property DefaultConversionResolution: Integer index 50 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentTool: TOleEnum index 20 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property SelectionStyle: CMapXStyle read Get_SelectionStyle write Set_SelectionStyle stored False;
    property ExportSelection: WordBool index 32 read GetWordBoolProp write SetWordBoolProp stored False;
    property NumericCoordSys: CMapXCoordSys read Get_NumericCoordSys write Set_NumericCoordSys stored False;
    property CenterX: Double index 8 read GetDoubleProp write SetDoubleProp stored False;
    property DataSetGeoField: WideString index 1 read GetWideStringProp write SetWideStringProp stored False;
    property CenterY: Double index 9 read GetDoubleProp write SetDoubleProp stored False;
    property AutoRedraw: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property Zoom: Double index 7 read GetDoubleProp write SetDoubleProp stored False;
    property Bounds: CMapXRectangle read Get_Bounds write Set_Bounds stored False;
    property MousePointer: TOleEnum index 21 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property DisplayCoordSys: CMapXCoordSys read Get_DisplayCoordSys write Set_DisplayCoordSys stored False;
    property Rotation: Double index 26 read GetDoubleProp write SetDoubleProp stored False;
    property AreaUnit: TOleEnum index 28 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property MatchNumericFields: WordBool index 52 read GetWordBoolProp write SetWordBoolProp stored False;
    property MousewheelSupport: TOleEnum index 51 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property MapUnit: TOleEnum index 25 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property TitleText: WideString index 24 read GetWideStringProp write SetWideStringProp stored False;
    property SnapToNodeSupport: WordBool index 70 read GetWordBoolProp write SetWordBoolProp stored False;
    property SnapTolerance: Smallint index 71 read GetSmallintProp write SetSmallintProp stored False;
    property MatchThreshold: Smallint index 57 read GetSmallintProp write SetSmallintProp stored False;
    property EditableLabels: WordBool index 76 read GetWordBoolProp write SetWordBoolProp stored False;
    property FeatureEditMode: Smallint index 65 read GetSmallintProp write SetSmallintProp stored False;
    property DynamicSelectionSupport: WordBool index 72 read GetWordBoolProp write SetWordBoolProp stored False;
    property InfotipSupport: WordBool index 63 read GetWordBoolProp write SetWordBoolProp stored False;
    property PanAnimationLayer: WordBool index 60 read GetWordBoolProp write SetWordBoolProp stored False;
    property InfotipPopupDelay: Integer index 61 read GetIntegerProp write SetIntegerProp stored False;
    property MouseIcon: WideString index 62 read GetWideStringProp write SetWideStringProp stored False;
    property WaitCursorEnabled: WordBool index 58 read GetWordBoolProp write SetWordBoolProp stored False;
    property RedrawInterval: Integer index 55 read GetIntegerProp write SetIntegerProp stored False;
    property SearchPath: WideString index 56 read GetWideStringProp write SetWideStringProp stored False;
    property DefaultStyle: CMapXStyle read Get_DefaultStyle write Set_DefaultStyle stored False;
    property DataSetTheme: TOleEnum index 19 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property GeoDictionary: WideString index 18 read GetWideStringProp write SetWideStringProp stored False;
    property PaperUnit: TOleEnum index 15 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Dataset: IRowCursor read Get_Dataset write Set_Dataset stored False;
    property PreferCompactLegends: WordBool index 16 read GetWordBoolProp write SetWordBoolProp stored False;
    property CheckEscapeKeyInterval: Integer index 67 read GetIntegerProp write SetIntegerProp stored False;
    property ReuseEquivalentOnRestore: WordBool index 69 read GetWordBoolProp write SetWordBoolProp stored False;
    property MaxSearchTime: Smallint index 14 read GetSmallintProp write SetSmallintProp stored False;
    property GeoSet: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property OnError: TMapError read FOnError write FOnError;
    property OnSelectionChanged: TNotifyEvent read FOnSelectionChanged write FOnSelectionChanged;
    property OnResolveDataBind: TMapResolveDataBind read FOnResolveDataBind write FOnResolveDataBind;
    property OnToolUsed: TMapToolUsed read FOnToolUsed write FOnToolUsed;
    property OnRequestData: TMapRequestData read FOnRequestData write FOnRequestData;
    property OnDataMismatch: TMapDataMismatch read FOnDataMismatch write FOnDataMismatch;
    property OnMapViewChanged: TNotifyEvent read FOnMapViewChanged write FOnMapViewChanged;
    property OnAnnotationAdded: TMapAnnotationAdded read FOnAnnotationAdded write FOnAnnotationAdded;
    property OnAnnotationChanged: TMapAnnotationChanged read FOnAnnotationChanged write FOnAnnotationChanged;
    property OnThemeModifyRequested: TMapThemeModifyRequested read FOnThemeModifyRequested write FOnThemeModifyRequested;
    property OnDrawUserLayer: TMapDrawUserLayer read FOnDrawUserLayer write FOnDrawUserLayer;
    property OnPolyToolUsed: TMapPolyToolUsed read FOnPolyToolUsed write FOnPolyToolUsed;
    property OnMouseWheel: TMapMouseWheel read FOnMouseWheel write FOnMouseWheel;
    property OnMapInitialized: TNotifyEvent read FOnMapInitialized write FOnMapInitialized;
    property OnResolveDataBindEx: TMapResolveDataBindEx read FOnResolveDataBindEx write FOnResolveDataBindEx;
    property OnMapDraw: TMapMapDraw read FOnMapDraw write FOnMapDraw;
    property OnAddFeatureToolUsed: TMapAddFeatureToolUsed read FOnAddFeatureToolUsed write FOnAddFeatureToolUsed;
    property OnLabelChanged: TMapLabelChanged read FOnLabelChanged write FOnLabelChanged;
  end;

// *********************************************************************//
// The Class CoLayers provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLayers exposed by              
// the CoClass Layers. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayers = class
    class function Create: CMapXLayers;
    class function CreateRemote(const MachineName: string): CMapXLayers;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLayers
// Help String      : 
// Default Interface: CMapXLayers
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLayersProperties= class;
{$ENDIF}
  TLayers = class(TOleServer)
  private
    FIntf: CMapXLayers;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLayersProperties;
    function GetServerProperties: TLayersProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLayers;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXLayer;
    function Get_ClippedBounds: CMapXRectangle;
    function Get_InsertionLayer: CMapXLayer;
    procedure Set_InsertionLayer(const Value: CMapXLayer);
    function Get_Bounds: CMapXRectangle;
    function Get_AnimationLayer: CMapXLayer;
    procedure Set_AnimationLayer(const Value: CMapXLayer);
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLayers);
    procedure Disconnect; override;
    function Move(From: Smallint; To_: Smallint): WordBool;
    procedure RemoveAll;
    function AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                            const Query: WideString): CMapXLayer; overload;
    function AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                            const Query: WideString; Position: OleVariant): CMapXLayer; overload;
    function AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                            const Query: WideString; Position: OleVariant; Options: OleVariant): CMapXLayer; overload;
    function Add(LayerInfo: OleVariant): CMapXLayer; overload;
    function Add(LayerInfo: OleVariant; Position: OleVariant): CMapXLayer; overload;
    procedure AddGeoSetLayers(const GeoSetName: WideString);
    procedure ClearSelection;
    function _Item(Index: OleVariant): CMapXLayer;
    function CreateLayer(const Name: WideString): CMapXLayer; overload;
    function CreateLayer(const Name: WideString; FileSpec: OleVariant): CMapXLayer; overload;
    function CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant): CMapXLayer; overload;
    function CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant; 
                         KeyLength: OleVariant): CMapXLayer; overload;
    function CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant; 
                         KeyLength: OleVariant; CoordSys: OleVariant): CMapXLayer; overload;
    function AddUserDrawLayer(const Name: WideString; Position: Smallint): CMapXLayer;
    function LayersDlg: WordBool; overload;
    function LayersDlg(HelpFile: OleVariant): WordBool; overload;
    function LayersDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; overload;
    procedure Remove(Index: OleVariant);
    property DefaultInterface: CMapXLayers read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXLayer read Get_Item; default;
    property ClippedBounds: CMapXRectangle read Get_ClippedBounds;
    property Bounds: CMapXRectangle read Get_Bounds;
    property Count: Integer read Get_Count;
    property InsertionLayer: CMapXLayer read Get_InsertionLayer write Set_InsertionLayer;
    property AnimationLayer: CMapXLayer read Get_AnimationLayer write Set_AnimationLayer;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLayersProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLayers
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLayersProperties = class(TPersistent)
  private
    FServer:    TLayers;
    function    GetDefaultInterface: CMapXLayers;
    constructor Create(AServer: TLayers);
  protected
    function Get_Item(Index: OleVariant): CMapXLayer;
    function Get_ClippedBounds: CMapXRectangle;
    function Get_InsertionLayer: CMapXLayer;
    procedure Set_InsertionLayer(const Value: CMapXLayer);
    function Get_Bounds: CMapXRectangle;
    function Get_AnimationLayer: CMapXLayer;
    procedure Set_AnimationLayer(const Value: CMapXLayer);
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXLayers read GetDefaultInterface;
  published
    property InsertionLayer: CMapXLayer read Get_InsertionLayer write Set_InsertionLayer;
    property AnimationLayer: CMapXLayer read Get_AnimationLayer write Set_AnimationLayer;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLayerInfo provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLayerInfo exposed by              
// the CoClass LayerInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayerInfo = class
    class function Create: CMapXLayerInfo;
    class function CreateRemote(const MachineName: string): CMapXLayerInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLayerInfo
// Help String      : 
// Default Interface: CMapXLayerInfo
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLayerInfoProperties= class;
{$ENDIF}
  TLayerInfo = class(TOleServer)
  private
    FIntf: CMapXLayerInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLayerInfoProperties;
    function GetServerProperties: TLayerInfoProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLayerInfo;
  protected
    procedure InitServerData; override;
    procedure Set_Parameter(const ParamName: WideString; Param2: OleVariant);
    function Get_Parameter(const ParamName: WideString): OleVariant;
    function Get_type_: LayerInfoTypeConstants;
    procedure Set_type_(Value: LayerInfoTypeConstants);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLayerInfo);
    procedure Disconnect; override;
    procedure AddParameter(const ParamName: WideString; Param: OleVariant);
    property DefaultInterface: CMapXLayerInfo read GetDefaultInterface;
    property Parameter[const ParamName: WideString]: OleVariant read Get_Parameter write Set_Parameter;
    property type_: LayerInfoTypeConstants read Get_type_ write Set_type_;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLayerInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLayerInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLayerInfoProperties = class(TPersistent)
  private
    FServer:    TLayerInfo;
    function    GetDefaultInterface: CMapXLayerInfo;
    constructor Create(AServer: TLayerInfo);
  protected
    procedure Set_Parameter(const ParamName: WideString; Param2: OleVariant);
    function Get_Parameter(const ParamName: WideString): OleVariant;
    function Get_type_: LayerInfoTypeConstants;
    procedure Set_type_(Value: LayerInfoTypeConstants);
  public
    property DefaultInterface: CMapXLayerInfo read GetDefaultInterface;
  published
    property type_: LayerInfoTypeConstants read Get_type_ write Set_type_;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLayer provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLayer exposed by              
// the CoClass Layer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayer = class
    class function Create: CMapXLayer;
    class function CreateRemote(const MachineName: string): CMapXLayer;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLayer
// Help String      : 
// Default Interface: CMapXLayer
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLayerProperties= class;
{$ENDIF}
  TLayer = class(TOleServer)
  private
    FIntf: CMapXLayer;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLayerProperties;
    function GetServerProperties: TLayerProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLayer;
  protected
    procedure InitServerData; override;
    function Get_NoFeatures: CMapXFeatures;
    function Get_AllFeatures: CMapXFeatures;
    function Get_Labels: CMapXLabels;
    function Get_ClippedBounds: CMapXRectangle;
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
    function Get_ShowLineDirection: WordBool;
    procedure Set_ShowLineDirection(Value: WordBool);
    function Get_ShowCentroids: WordBool;
    procedure Set_ShowCentroids(Value: WordBool);
    function Get_ShowNodes: WordBool;
    procedure Set_ShowNodes(Value: WordBool);
    function Get_DataSets: CMapXDatasets;
    function Get_DrawLabelsAfter: WordBool;
    procedure Set_DrawLabelsAfter(Value: WordBool);
    function Get_Bounds: CMapXRectangle;
    function Get_CoordSys: CMapXCoordSys;
    function Get_KeyField: WideString;
    procedure Set_KeyField(const Value: WideString);
    function Get_type_: LayerTypeConstants;
    function Get_Find: CMapXLayerFind;
    function Get_PredominantFeatureType: FeatureTypeConstants;
    function Get_Selection: CMapXSelection;
    function Get_ZoomMax: Double;
    procedure Set_ZoomMax(Value: Double);
    function Get_ZoomMin: Double;
    procedure Set_ZoomMin(Value: Double);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_OverrideStyle: WordBool;
    procedure Set_OverrideStyle(Value: WordBool);
    function Get_ZoomLayer: WordBool;
    procedure Set_ZoomLayer(Value: WordBool);
    function Get_AutoLabel: WordBool;
    procedure Set_AutoLabel(Value: WordBool);
    function Get_LabelProperties: CMapXLabelProperties;
    function Get_FileSpec: WideString;
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
    function Get_Selectable: WordBool;
    procedure Set_Selectable(Value: WordBool);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLayer);
    procedure Disconnect; override;
    function SupportsPack(PackType: LayerPackConstant): WordBool;
    function CreateAllFeaturesConstraint: CMapXAllFeaturesConstraint;
    procedure Refresh;
    procedure Pack(PackType: LayerPackConstant);
    function FeatureKeyFromFeatureName(const strKeyValue: WideString): WideString;
    function GetFeatureByKey(const FeatureKey: WideString): CMapXFeature;
    function CreateFeaturesConstraint: CMapXFeaturesConstraint;
    procedure BeginAccess(BeginAccessType: LayerBeginAccessConstants);
    function Search(const strWhere: WideString): CMapXFeatures; overload;
    function Search(const strWhere: WideString; Variables: OleVariant): CMapXFeatures; overload;
    procedure LabelAtPoint(X: Double; Y: Double);
    procedure EndAccess; overload;
    procedure EndAccess(EndAccessType: OleVariant); overload;
    function GetFeatureByID(FeatureID: Integer): CMapXFeature;
    procedure DrilldownReset(const strLevel: WideString);
    function FeatureIDFromFeatureName(const strKeyValue: WideString): Integer;
    function CreateBoundsConstraint: CMapXBoundsConstraint;
    function GetDrilldownFeaturesByID(const strLevel: WideString; FeatureID: OleVariant): CMapXFeatures;
    procedure DrillDownAddFeatures(const Level: WideString; FeatureKeys: OleVariant);
    procedure DrillDownRemoveFeatures(const Level: WideString; FeatureKeys: OleVariant);
    function SearchAtPoint(const Point: IDispatch): CMapXFeatures; overload;
    function SearchAtPoint(const Point: IDispatch; SearchResultFlags: OleVariant): CMapXFeatures; overload;
    function SearchWithinFeature(const Feature: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures;
    function SearchWithinRectangle(const Rectangle: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures;
    function SearchWithinDistance(const Source: IDispatch; Distance: Double; 
                                  Units: MapUnitConstants; SearchType: SearchTypeConstants): CMapXFeatures;
    procedure Invalidate; overload;
    procedure Invalidate(InvalidRect: OleVariant); overload;
    procedure DeleteFeature(Target: OleVariant);
    function AddFeature(const SourceFeature: IDispatch): CMapXFeature; overload;
    function AddFeature(const SourceFeature: IDispatch; RowValues: OleVariant): CMapXFeature; overload;
    procedure UpdateFeature(Target: OleVariant); overload;
    procedure UpdateFeature(Target: OleVariant; Source: OleVariant); overload;
    procedure UpdateFeature(Target: OleVariant; Source: OleVariant; RowValues: OleVariant); overload;
    procedure ClearCustomLabels;
    property DefaultInterface: CMapXLayer read GetDefaultInterface;
    property NoFeatures: CMapXFeatures read Get_NoFeatures;
    property AllFeatures: CMapXFeatures read Get_AllFeatures;
    property Labels: CMapXLabels read Get_Labels;
    property ClippedBounds: CMapXRectangle read Get_ClippedBounds;
    property DataSets: CMapXDatasets read Get_DataSets;
    property Bounds: CMapXRectangle read Get_Bounds;
    property CoordSys: CMapXCoordSys read Get_CoordSys;
    property type_: LayerTypeConstants read Get_type_;
    property Find: CMapXLayerFind read Get_Find;
    property PredominantFeatureType: FeatureTypeConstants read Get_PredominantFeatureType;
    property Selection: CMapXSelection read Get_Selection;
    property LabelProperties: CMapXLabelProperties read Get_LabelProperties;
    property FileSpec: WideString read Get_FileSpec;
    property _Name: WideString read Get__Name write Set__Name;
    property Editable: WordBool read Get_Editable write Set_Editable;
    property ShowLineDirection: WordBool read Get_ShowLineDirection write Set_ShowLineDirection;
    property ShowCentroids: WordBool read Get_ShowCentroids write Set_ShowCentroids;
    property ShowNodes: WordBool read Get_ShowNodes write Set_ShowNodes;
    property DrawLabelsAfter: WordBool read Get_DrawLabelsAfter write Set_DrawLabelsAfter;
    property KeyField: WideString read Get_KeyField write Set_KeyField;
    property ZoomMax: Double read Get_ZoomMax write Set_ZoomMax;
    property ZoomMin: Double read Get_ZoomMin write Set_ZoomMin;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property OverrideStyle: WordBool read Get_OverrideStyle write Set_OverrideStyle;
    property ZoomLayer: WordBool read Get_ZoomLayer write Set_ZoomLayer;
    property AutoLabel: WordBool read Get_AutoLabel write Set_AutoLabel;
    property Selectable: WordBool read Get_Selectable write Set_Selectable;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Name: WideString read Get_Name write Set_Name;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLayerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLayer
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLayerProperties = class(TPersistent)
  private
    FServer:    TLayer;
    function    GetDefaultInterface: CMapXLayer;
    constructor Create(AServer: TLayer);
  protected
    function Get_NoFeatures: CMapXFeatures;
    function Get_AllFeatures: CMapXFeatures;
    function Get_Labels: CMapXLabels;
    function Get_ClippedBounds: CMapXRectangle;
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
    function Get_ShowLineDirection: WordBool;
    procedure Set_ShowLineDirection(Value: WordBool);
    function Get_ShowCentroids: WordBool;
    procedure Set_ShowCentroids(Value: WordBool);
    function Get_ShowNodes: WordBool;
    procedure Set_ShowNodes(Value: WordBool);
    function Get_DataSets: CMapXDatasets;
    function Get_DrawLabelsAfter: WordBool;
    procedure Set_DrawLabelsAfter(Value: WordBool);
    function Get_Bounds: CMapXRectangle;
    function Get_CoordSys: CMapXCoordSys;
    function Get_KeyField: WideString;
    procedure Set_KeyField(const Value: WideString);
    function Get_type_: LayerTypeConstants;
    function Get_Find: CMapXLayerFind;
    function Get_PredominantFeatureType: FeatureTypeConstants;
    function Get_Selection: CMapXSelection;
    function Get_ZoomMax: Double;
    procedure Set_ZoomMax(Value: Double);
    function Get_ZoomMin: Double;
    procedure Set_ZoomMin(Value: Double);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_OverrideStyle: WordBool;
    procedure Set_OverrideStyle(Value: WordBool);
    function Get_ZoomLayer: WordBool;
    procedure Set_ZoomLayer(Value: WordBool);
    function Get_AutoLabel: WordBool;
    procedure Set_AutoLabel(Value: WordBool);
    function Get_LabelProperties: CMapXLabelProperties;
    function Get_FileSpec: WideString;
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
    function Get_Selectable: WordBool;
    procedure Set_Selectable(Value: WordBool);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
  public
    property DefaultInterface: CMapXLayer read GetDefaultInterface;
  published
    property Editable: WordBool read Get_Editable write Set_Editable;
    property ShowLineDirection: WordBool read Get_ShowLineDirection write Set_ShowLineDirection;
    property ShowCentroids: WordBool read Get_ShowCentroids write Set_ShowCentroids;
    property ShowNodes: WordBool read Get_ShowNodes write Set_ShowNodes;
    property DrawLabelsAfter: WordBool read Get_DrawLabelsAfter write Set_DrawLabelsAfter;
    property KeyField: WideString read Get_KeyField write Set_KeyField;
    property ZoomMax: Double read Get_ZoomMax write Set_ZoomMax;
    property ZoomMin: Double read Get_ZoomMin write Set_ZoomMin;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property OverrideStyle: WordBool read Get_OverrideStyle write Set_OverrideStyle;
    property ZoomLayer: WordBool read Get_ZoomLayer write Set_ZoomLayer;
    property AutoLabel: WordBool read Get_AutoLabel write Set_AutoLabel;
    property Selectable: WordBool read Get_Selectable write Set_Selectable;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Name: WideString read Get_Name write Set_Name;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoField provides a Create and CreateRemote method to          
// create instances of the default interface CMapXField exposed by              
// the CoClass Field. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoField = class
    class function Create: CMapXField;
    class function CreateRemote(const MachineName: string): CMapXField;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TField
// Help String      : 
// Default Interface: CMapXField
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFieldProperties= class;
{$ENDIF}
  TField = class(TOleServer)
  private
    FIntf: CMapXField;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFieldProperties;
    function GetServerProperties: TFieldProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXField;
  protected
    procedure InitServerData; override;
    function Get_Width: Smallint;
    function Get_Decimals: Smallint;
    function Get_TypeEx: FieldTypeConstants;
    function Get_Indexed: WordBool;
    function Get_Precision: Smallint;
    function Get_AggregationFunction: AggregationFunctionConstants;
    function Get_Name: WideString;
    function Get_type_: FieldTypeConstants;
    function Get__Name: WideString;
    procedure Set_Width(v:smallint);
    procedure Set_Decimals(v:smallint);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXField);
    procedure Disconnect; override;
    property DefaultInterface: CMapXField read GetDefaultInterface;
    property TypeEx: FieldTypeConstants read Get_TypeEx;
    property Indexed: WordBool read Get_Indexed;
    property Precision: Smallint read Get_Precision;
    property AggregationFunction: AggregationFunctionConstants read Get_AggregationFunction;
    property Name: WideString read Get_Name;
    property type_: FieldTypeConstants read Get_type_;
    property _Name: WideString read Get__Name;
    property Width: Smallint read Get_Width write Set_Width;
    property Decimals: Smallint read Get_Decimals write Set_Decimals;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFieldProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TField
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFieldProperties = class(TPersistent)
  private
    FServer:    TField;
    function    GetDefaultInterface: CMapXField;
    constructor Create(AServer: TField);
  protected
    function Get_Width: Smallint;
    function Get_Decimals: Smallint;
    function Get_TypeEx: FieldTypeConstants;
    function Get_Indexed: WordBool;
    function Get_Precision: Smallint;
    function Get_AggregationFunction: AggregationFunctionConstants;
    function Get_Name: WideString;
    function Get_type_: FieldTypeConstants;
    function Get__Name: WideString;
  public
    property DefaultInterface: CMapXField read GetDefaultInterface;
  published
    property Width: Smallint read Get_Width write Set_Width;
    property Decimals: Smallint read Get_Decimals write Set_Decimals;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDataset provides a Create and CreateRemote method to          
// create instances of the default interface CMapXDataset exposed by              
// the CoClass Dataset. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataset = class
    class function Create: CMapXDataset;
    class function CreateRemote(const MachineName: string): CMapXDataset;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDataset
// Help String      : 
// Default Interface: CMapXDataset
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDatasetProperties= class;
{$ENDIF}
  TDataset = class(TOleServer)
  private
    FIntf: CMapXDataset;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDatasetProperties;
    function GetServerProperties: TDatasetProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXDataset;
  protected
    procedure InitServerData; override;
    function Get_RowValues(Row: OleVariant): CMapXRowValues;
    function Get_SourceRows(Row: OleVariant): CMapXSourceRows;
    function Get__Value(Row: OleVariant; Column: OleVariant): OleVariant;
    function Get_Value(Row: OleVariant; Column: OleVariant): OleVariant;
    function Get_Layer: CMapXLayer;
    function Get_Themes: CMapXThemes;
    function Get_GeoField: Integer;
    function Get_SecondaryGeoField: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
    function Get_type_: DatasetTypeConstants;
    function Get_ReadOnly: WordBool;
    function Get_RowCount: Integer;
    function Get_Fields: CMapXFields;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXDataset);
    procedure Disconnect; override;
    function AddField(const Name: WideString; const Expression: WideString): CMapXField;
    procedure Refresh;
    property DefaultInterface: CMapXDataset read GetDefaultInterface;
    property RowValues[Row: OleVariant]: CMapXRowValues read Get_RowValues;
    property SourceRows[Row: OleVariant]: CMapXSourceRows read Get_SourceRows;
    property _Value[Row: OleVariant; Column: OleVariant]: OleVariant read Get__Value;
    property Value[Row: OleVariant; Column: OleVariant]: OleVariant read Get_Value;
    property Layer: CMapXLayer read Get_Layer;
    property Themes: CMapXThemes read Get_Themes;
    property GeoField: Integer read Get_GeoField;
    property SecondaryGeoField: Integer read Get_SecondaryGeoField;
    property type_: DatasetTypeConstants read Get_type_;
    property ReadOnly: WordBool read Get_ReadOnly;
    property RowCount: Integer read Get_RowCount;
    property Fields: CMapXFields read Get_Fields;
    property Name: WideString read Get_Name write Set_Name;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDatasetProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDataset
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDatasetProperties = class(TPersistent)
  private
    FServer:    TDataset;
    function    GetDefaultInterface: CMapXDataset;
    constructor Create(AServer: TDataset);
  protected
    function Get_RowValues(Row: OleVariant): CMapXRowValues;
    function Get_SourceRows(Row: OleVariant): CMapXSourceRows;
    function Get__Value(Row: OleVariant; Column: OleVariant): OleVariant;
    function Get_Value(Row: OleVariant; Column: OleVariant): OleVariant;
    function Get_Layer: CMapXLayer;
    function Get_Themes: CMapXThemes;
    function Get_GeoField: Integer;
    function Get_SecondaryGeoField: Integer;
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
    function Get_type_: DatasetTypeConstants;
    function Get_ReadOnly: WordBool;
    function Get_RowCount: Integer;
    function Get_Fields: CMapXFields;
  public
    property DefaultInterface: CMapXDataset read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoThemes provides a Create and CreateRemote method to          
// create instances of the default interface CMapXThemes exposed by              
// the CoClass Themes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoThemes = class
    class function Create: CMapXThemes;
    class function CreateRemote(const MachineName: string): CMapXThemes;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TThemes
// Help String      : 
// Default Interface: CMapXThemes
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TThemesProperties= class;
{$ENDIF}
  TThemes = class(TOleServer)
  private
    FIntf: CMapXThemes;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TThemesProperties;
    function GetServerProperties: TThemesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXThemes;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXTheme;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXThemes);
    procedure Disconnect; override;
    procedure Remove(Index: OleVariant);
    function Add: CMapXTheme; overload;
    function Add(Type_: OleVariant): CMapXTheme; overload;
    function Add(Type_: OleVariant; Field: OleVariant): CMapXTheme; overload;
    function Add(Type_: OleVariant; Field: OleVariant; Name: OleVariant): CMapXTheme; overload;
    function Add(Type_: OleVariant; Field: OleVariant; Name: OleVariant; ComputeTheme: OleVariant): CMapXTheme; overload;
    function _Item(Index: OleVariant): CMapXTheme;
    procedure RemoveAll;
    property DefaultInterface: CMapXThemes read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXTheme read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TThemesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TThemes
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TThemesProperties = class(TPersistent)
  private
    FServer:    TThemes;
    function    GetDefaultInterface: CMapXThemes;
    constructor Create(AServer: TThemes);
  protected
    function Get_Item(Index: OleVariant): CMapXTheme;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXThemes read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTheme provides a Create and CreateRemote method to          
// create instances of the default interface CMapXTheme exposed by              
// the CoClass Theme. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTheme = class
    class function Create: CMapXTheme;
    class function CreateRemote(const MachineName: string): CMapXTheme;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTheme
// Help String      : 
// Default Interface: CMapXTheme
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TThemeProperties= class;
{$ENDIF}
  TTheme = class(TOleServer)
  private
    FIntf: CMapXTheme;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TThemeProperties;
    function GetServerProperties: TThemeProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXTheme;
  protected
    procedure InitServerData; override;
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_type_: ThemeTypeConstants;
    function Get_Properties: CMapXThemeProperties;
    function Get_Legend: CMapXLegend;
    function Get_AutoRecompute: WordBool;
    procedure Set_AutoRecompute(Value: WordBool);
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
    function Get_Layer: CMapXLayer;
    function Get_Fields: CMapXFields;
    function Get_DataMin: Double;
    procedure Set_DataMin(Value: Double);
    function Get_ThemedFeatureType: FeatureTypeConstants;
    function Get_ThemeProperties: CMapXThemeProperties;
    function Get_DataMax: Double;
    procedure Set_DataMax(Value: Double);
    function Get_ComputeTheme: WordBool;
    procedure Set_ComputeTheme(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXTheme);
    procedure Disconnect; override;
    function ThemeDlg: WordBool; overload;
    function ThemeDlg(HelpFile: OleVariant): WordBool; overload;
    function ThemeDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; overload;
    property DefaultInterface: CMapXTheme read GetDefaultInterface;
    property type_: ThemeTypeConstants read Get_type_;
    property Properties: CMapXThemeProperties read Get_Properties;
    property Legend: CMapXLegend read Get_Legend;
    property _Name: WideString read Get__Name write Set__Name;
    property Layer: CMapXLayer read Get_Layer;
    property Fields: CMapXFields read Get_Fields;
    property ThemedFeatureType: FeatureTypeConstants read Get_ThemedFeatureType;
    property ThemeProperties: CMapXThemeProperties read Get_ThemeProperties;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoRecompute: WordBool read Get_AutoRecompute write Set_AutoRecompute;
    property Name: WideString read Get_Name write Set_Name;
    property DataMin: Double read Get_DataMin write Set_DataMin;
    property DataMax: Double read Get_DataMax write Set_DataMax;
    property ComputeTheme: WordBool read Get_ComputeTheme write Set_ComputeTheme;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TThemeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTheme
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TThemeProperties = class(TPersistent)
  private
    FServer:    TTheme;
    function    GetDefaultInterface: CMapXTheme;
    constructor Create(AServer: TTheme);
  protected
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_type_: ThemeTypeConstants;
    function Get_Properties: CMapXThemeProperties;
    function Get_Legend: CMapXLegend;
    function Get_AutoRecompute: WordBool;
    procedure Set_AutoRecompute(Value: WordBool);
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
    function Get_Name: WideString;
    procedure Set_Name(const Value: WideString);
    function Get_Layer: CMapXLayer;
    function Get_Fields: CMapXFields;
    function Get_DataMin: Double;
    procedure Set_DataMin(Value: Double);
    function Get_ThemedFeatureType: FeatureTypeConstants;
    function Get_ThemeProperties: CMapXThemeProperties;
    function Get_DataMax: Double;
    procedure Set_DataMax(Value: Double);
    function Get_ComputeTheme: WordBool;
    procedure Set_ComputeTheme(Value: WordBool);
  public
    property DefaultInterface: CMapXTheme read GetDefaultInterface;
  published
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoRecompute: WordBool read Get_AutoRecompute write Set_AutoRecompute;
    property Name: WideString read Get_Name write Set_Name;
    property DataMin: Double read Get_DataMin write Set_DataMin;
    property DataMax: Double read Get_DataMax write Set_DataMax;
    property ComputeTheme: WordBool read Get_ComputeTheme write Set_ComputeTheme;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLegend provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLegend exposed by              
// the CoClass Legend. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLegend = class
    class function Create: CMapXLegend;
    class function CreateRemote(const MachineName: string): CMapXLegend;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLegend
// Help String      : 
// Default Interface: CMapXLegend
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLegendProperties= class;
{$ENDIF}
  TLegend = class(TOleServer)
  private
    FIntf: CMapXLegend;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLegendProperties;
    function GetServerProperties: TLegendProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLegend;
  protected
    procedure InitServerData; override;
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_BodyTextStyle: CMapXStyle;
    procedure Set_BodyTextStyle(const Value: CMapXStyle);
    function Get_TitleStyle: CMapXStyle;
    procedure Set_TitleStyle(const Value: CMapXStyle);
    function Get_Compact: WordBool;
    procedure Set_Compact(Value: WordBool);
    function Get_SubTitle: WideString;
    procedure Set_SubTitle(const Value: WideString);
    function Get_LegendTexts: CMapXLegendTexts;
    function Get_CurrencyFormat: WordBool;
    procedure Set_CurrencyFormat(Value: WordBool);
    function Get_CompactTitle: WideString;
    procedure Set_CompactTitle(const Value: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const Value: WideString);
    function Get_CompactTitleStyle: CMapXStyle;
    procedure Set_CompactTitleStyle(const Value: CMapXStyle);
    function Get_Left: Single;
    procedure Set_Left(Value: Single);
    function Get_Top: Single;
    procedure Set_Top(Value: Single);
    function Get_Width: Single;
    function Get_Height: Single;
    function Get_PaperHeight: Double;
    function Get_ShowCount: WordBool;
    procedure Set_ShowCount(Value: WordBool);
    function Get_SubTitleStyle: CMapXStyle;
    procedure Set_SubTitleStyle(const Value: CMapXStyle);
    function Get_PaperWidth: Double;
    function Get_ShowEmptyRanges: WordBool;
    procedure Set_ShowEmptyRanges(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLegend);
    procedure Disconnect; override;
    procedure PrintLegend(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer);
    procedure ExportLegend(const Destination: WideString; Format: ExportFormatConstants);
    function LegendDlg: WordBool; overload;
    function LegendDlg(HelpFile: OleVariant): WordBool; overload;
    function LegendDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool; overload;
    property DefaultInterface: CMapXLegend read GetDefaultInterface;
    property LegendTexts: CMapXLegendTexts read Get_LegendTexts;
    property Width: Single read Get_Width;
    property Height: Single read Get_Height;
    property PaperHeight: Double read Get_PaperHeight;
    property PaperWidth: Double read Get_PaperWidth;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property BodyTextStyle: CMapXStyle read Get_BodyTextStyle write Set_BodyTextStyle;
    property TitleStyle: CMapXStyle read Get_TitleStyle write Set_TitleStyle;
    property Compact: WordBool read Get_Compact write Set_Compact;
    property SubTitle: WideString read Get_SubTitle write Set_SubTitle;
    property CurrencyFormat: WordBool read Get_CurrencyFormat write Set_CurrencyFormat;
    property CompactTitle: WideString read Get_CompactTitle write Set_CompactTitle;
    property Title: WideString read Get_Title write Set_Title;
    property CompactTitleStyle: CMapXStyle read Get_CompactTitleStyle write Set_CompactTitleStyle;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property ShowCount: WordBool read Get_ShowCount write Set_ShowCount;
    property SubTitleStyle: CMapXStyle read Get_SubTitleStyle write Set_SubTitleStyle;
    property ShowEmptyRanges: WordBool read Get_ShowEmptyRanges write Set_ShowEmptyRanges;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLegendProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLegend
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLegendProperties = class(TPersistent)
  private
    FServer:    TLegend;
    function    GetDefaultInterface: CMapXLegend;
    constructor Create(AServer: TLegend);
  protected
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_BodyTextStyle: CMapXStyle;
    procedure Set_BodyTextStyle(const Value: CMapXStyle);
    function Get_TitleStyle: CMapXStyle;
    procedure Set_TitleStyle(const Value: CMapXStyle);
    function Get_Compact: WordBool;
    procedure Set_Compact(Value: WordBool);
    function Get_SubTitle: WideString;
    procedure Set_SubTitle(const Value: WideString);
    function Get_LegendTexts: CMapXLegendTexts;
    function Get_CurrencyFormat: WordBool;
    procedure Set_CurrencyFormat(Value: WordBool);
    function Get_CompactTitle: WideString;
    procedure Set_CompactTitle(const Value: WideString);
    function Get_Title: WideString;
    procedure Set_Title(const Value: WideString);
    function Get_CompactTitleStyle: CMapXStyle;
    procedure Set_CompactTitleStyle(const Value: CMapXStyle);
    function Get_Left: Single;
    procedure Set_Left(Value: Single);
    function Get_Top: Single;
    procedure Set_Top(Value: Single);
    function Get_Width: Single;
    function Get_Height: Single;
    function Get_PaperHeight: Double;
    function Get_ShowCount: WordBool;
    procedure Set_ShowCount(Value: WordBool);
    function Get_SubTitleStyle: CMapXStyle;
    procedure Set_SubTitleStyle(const Value: CMapXStyle);
    function Get_PaperWidth: Double;
    function Get_ShowEmptyRanges: WordBool;
    procedure Set_ShowEmptyRanges(Value: WordBool);
  public
    property DefaultInterface: CMapXLegend read GetDefaultInterface;
  published
    property Visible: WordBool read Get_Visible write Set_Visible;
    property BodyTextStyle: CMapXStyle read Get_BodyTextStyle write Set_BodyTextStyle;
    property TitleStyle: CMapXStyle read Get_TitleStyle write Set_TitleStyle;
    property Compact: WordBool read Get_Compact write Set_Compact;
    property SubTitle: WideString read Get_SubTitle write Set_SubTitle;
    property CurrencyFormat: WordBool read Get_CurrencyFormat write Set_CurrencyFormat;
    property CompactTitle: WideString read Get_CompactTitle write Set_CompactTitle;
    property Title: WideString read Get_Title write Set_Title;
    property CompactTitleStyle: CMapXStyle read Get_CompactTitleStyle write Set_CompactTitleStyle;
    property Left: Single read Get_Left write Set_Left;
    property Top: Single read Get_Top write Set_Top;
    property ShowCount: WordBool read Get_ShowCount write Set_ShowCount;
    property SubTitleStyle: CMapXStyle read Get_SubTitleStyle write Set_SubTitleStyle;
    property ShowEmptyRanges: WordBool read Get_ShowEmptyRanges write Set_ShowEmptyRanges;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCollection provides a Create and CreateRemote method to          
// create instances of the default interface CMapXCollection exposed by              
// the CoClass Collection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCollection = class
    class function Create: CMapXCollection;
    class function CreateRemote(const MachineName: string): CMapXCollection;
  end;

// *********************************************************************//
// The Class CoAnnotations provides a Create and CreateRemote method to          
// create instances of the default interface CMapXAnnotations exposed by              
// the CoClass Annotations. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnnotations = class
    class function Create: CMapXAnnotations;
    class function CreateRemote(const MachineName: string): CMapXAnnotations;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAnnotations
// Help String      : 
// Default Interface: CMapXAnnotations
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAnnotationsProperties= class;
{$ENDIF}
  TAnnotations = class(TOleServer)
  private
    FIntf: CMapXAnnotations;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAnnotationsProperties;
    function GetServerProperties: TAnnotationsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXAnnotations;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXAnnotation;
    function Get_Count: Integer;
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXAnnotations);
    procedure Disconnect; override;
    function AddSymbol(X: Double; Y: Double): CMapXAnnotation;
    procedure Remove(Index: OleVariant);
    function _Item(Index: OleVariant): CMapXAnnotation;
    function AddText(const Text: WideString; X: Double; Y: Double): CMapXAnnotation; overload;
    function AddText(const Text: WideString; X: Double; Y: Double; Position: OleVariant): CMapXAnnotation; overload;
    procedure RemoveAll;
    function ActiveAnnotation: CMapXAnnotation;
    property DefaultInterface: CMapXAnnotations read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXAnnotation read Get_Item; default;
    property Count: Integer read Get_Count;
    property Editable: WordBool read Get_Editable write Set_Editable;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnnotationsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAnnotations
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAnnotationsProperties = class(TPersistent)
  private
    FServer:    TAnnotations;
    function    GetDefaultInterface: CMapXAnnotations;
    constructor Create(AServer: TAnnotations);
  protected
    function Get_Item(Index: OleVariant): CMapXAnnotation;
    function Get_Count: Integer;
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
  public
    property DefaultInterface: CMapXAnnotations read GetDefaultInterface;
  published
    property Editable: WordBool read Get_Editable write Set_Editable;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoThemeProperties provides a Create and CreateRemote method to          
// create instances of the default interface CMapXThemeProperties exposed by              
// the CoClass ThemeProperties. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoThemeProperties = class
    class function Create: CMapXThemeProperties;
    class function CreateRemote(const MachineName: string): CMapXThemeProperties;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TThemeProperties
// Help String      : 
// Default Interface: CMapXThemeProperties
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TThemePropertiesProperties= class;
{$ENDIF}
  TThemeProperties = class(TOleServer)
  private
    FIntf: CMapXThemeProperties;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TThemePropertiesProperties;
    function GetServerProperties: TThemePropertiesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXThemeProperties;
  protected
    procedure InitServerData; override;
    function Get_DistMethod: DistribMethodConstants;
    procedure Set_DistMethod(Value: DistribMethodConstants);
    function Get_NumRanges: Smallint;
    procedure Set_NumRanges(Value: Smallint);
    function Get_RangeCategories: CMapXRangeCategoriesCollection;
    function Get_DotSize: Smallint;
    procedure Set_DotSize(Value: Smallint);
    function Get_Graduated: WordBool;
    procedure Set_Graduated(Value: WordBool);
    function Get_MultivarCategories: CMapXMultivarCategoriesCollection;
    function Get_Independent: WordBool;
    procedure Set_Independent(Value: WordBool);
    function Get_IndividualValueCategories: CMapXIndividualValueCategoriesCollection;
    function Get_ValuePerDot: Double;
    procedure Set_ValuePerDot(Value: Double);
    function Get_DataValue: Double;
    procedure Set_DataValue(Value: Double);
    function Get_Size: Double;
    procedure Set_Size(Value: Double);
    function Get_Width: Double;
    procedure Set_Width(Value: Double);
    function Get_SymbolStyle: CMapXStyle;
    procedure Set_SymbolStyle(const Value: CMapXStyle);
    function Get_SpreadBy: SpreadByConstants;
    procedure Set_SpreadBy(Value: SpreadByConstants);
    function Get_AllowEmptyRanges: WordBool;
    procedure Set_AllowEmptyRanges(Value: WordBool);
    function Get_DotColor: OLE_COLOR;
    procedure Set_DotColor(Value: OLE_COLOR);
    function Get_PieClockwise: WordBool;
    procedure Set_PieClockwise(Value: WordBool);
    function Get_PieHalfPies: WordBool;
    procedure Set_PieHalfPies(Value: WordBool);
    function Get_PieStartAngle: Smallint;
    procedure Set_PieStartAngle(Value: Smallint);
    function Get_BarStacked: WordBool;
    procedure Set_BarStacked(Value: WordBool);
    function Get_NegativeSymbolStyle: CMapXStyle;
    procedure Set_NegativeSymbolStyle(const Value: CMapXStyle);
    function Get_ShowNegativeValues: WordBool;
    procedure Set_ShowNegativeValues(Value: WordBool);
    function Get_GraduateSizeBy: GraduationConstants;
    procedure Set_GraduateSizeBy(Value: GraduationConstants);
    function Get_BorderStyle: CMapXStyle;
    procedure Set_BorderStyle(const Value: CMapXStyle);
    function Get_BarWidth: Double;
    procedure Set_BarWidth(Value: Double);
    function Get_BarIndependentScale: WordBool;
    procedure Set_BarIndependentScale(Value: WordBool);
    function Get_PositiveSymbolStyle: CMapXStyle;
    procedure Set_PositiveSymbolStyle(const Value: CMapXStyle);
    function Get_BarFrameStyle: CMapXStyle;
    procedure Set_BarFrameStyle(const Value: CMapXStyle);
    function Get_PieGraduated: WordBool;
    procedure Set_PieGraduated(Value: WordBool);
    function Get_BarGraduatedStack: WordBool;
    procedure Set_BarGraduatedStack(Value: WordBool);
    function Get_ApplyAttribute: ApplyAttributeConstants;
    procedure Set_ApplyAttribute(Value: ApplyAttributeConstants);
    function Get_RoundRanges: WordBool;
    procedure Set_RoundRanges(Value: WordBool);
    function Get_RoundBy: Double;
    procedure Set_RoundBy(Value: Double);
    function Get_ColorMethod: ColorSpreadingMethodConstants;
    procedure Set_ColorMethod(Value: ColorSpreadingMethodConstants);
    function Get_InflectRanges: WordBool;
    procedure Set_InflectRanges(Value: WordBool);
    function Get_InflectionRange: Smallint;
    procedure Set_InflectionRange(Value: Smallint);
    function Get_InflectionColor: OLE_COLOR;
    procedure Set_InflectionColor(Value: OLE_COLOR);
    function Get_BarFramed: WordBool;
    procedure Set_BarFramed(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXThemeProperties);
    procedure Disconnect; override;
    property DefaultInterface: CMapXThemeProperties read GetDefaultInterface;
    property RangeCategories: CMapXRangeCategoriesCollection read Get_RangeCategories;
    property MultivarCategories: CMapXMultivarCategoriesCollection read Get_MultivarCategories;
    property IndividualValueCategories: CMapXIndividualValueCategoriesCollection read Get_IndividualValueCategories;
    property DistMethod: DistribMethodConstants read Get_DistMethod write Set_DistMethod;
    property NumRanges: Smallint read Get_NumRanges write Set_NumRanges;
    property DotSize: Smallint read Get_DotSize write Set_DotSize;
    property Graduated: WordBool read Get_Graduated write Set_Graduated;
    property Independent: WordBool read Get_Independent write Set_Independent;
    property ValuePerDot: Double read Get_ValuePerDot write Set_ValuePerDot;
    property DataValue: Double read Get_DataValue write Set_DataValue;
    property Size: Double read Get_Size write Set_Size;
    property Width: Double read Get_Width write Set_Width;
    property SymbolStyle: CMapXStyle read Get_SymbolStyle write Set_SymbolStyle;
    property SpreadBy: SpreadByConstants read Get_SpreadBy write Set_SpreadBy;
    property AllowEmptyRanges: WordBool read Get_AllowEmptyRanges write Set_AllowEmptyRanges;
    property DotColor: OLE_COLOR read Get_DotColor write Set_DotColor;
    property PieClockwise: WordBool read Get_PieClockwise write Set_PieClockwise;
    property PieHalfPies: WordBool read Get_PieHalfPies write Set_PieHalfPies;
    property PieStartAngle: Smallint read Get_PieStartAngle write Set_PieStartAngle;
    property BarStacked: WordBool read Get_BarStacked write Set_BarStacked;
    property NegativeSymbolStyle: CMapXStyle read Get_NegativeSymbolStyle write Set_NegativeSymbolStyle;
    property ShowNegativeValues: WordBool read Get_ShowNegativeValues write Set_ShowNegativeValues;
    property GraduateSizeBy: GraduationConstants read Get_GraduateSizeBy write Set_GraduateSizeBy;
    property BorderStyle: CMapXStyle read Get_BorderStyle write Set_BorderStyle;
    property BarWidth: Double read Get_BarWidth write Set_BarWidth;
    property BarIndependentScale: WordBool read Get_BarIndependentScale write Set_BarIndependentScale;
    property PositiveSymbolStyle: CMapXStyle read Get_PositiveSymbolStyle write Set_PositiveSymbolStyle;
    property BarFrameStyle: CMapXStyle read Get_BarFrameStyle write Set_BarFrameStyle;
    property PieGraduated: WordBool read Get_PieGraduated write Set_PieGraduated;
    property BarGraduatedStack: WordBool read Get_BarGraduatedStack write Set_BarGraduatedStack;
    property ApplyAttribute: ApplyAttributeConstants read Get_ApplyAttribute write Set_ApplyAttribute;
    property RoundRanges: WordBool read Get_RoundRanges write Set_RoundRanges;
    property RoundBy: Double read Get_RoundBy write Set_RoundBy;
    property ColorMethod: ColorSpreadingMethodConstants read Get_ColorMethod write Set_ColorMethod;
    property InflectRanges: WordBool read Get_InflectRanges write Set_InflectRanges;
    property InflectionRange: Smallint read Get_InflectionRange write Set_InflectionRange;
    property InflectionColor: OLE_COLOR read Get_InflectionColor write Set_InflectionColor;
    property BarFramed: WordBool read Get_BarFramed write Set_BarFramed;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TThemePropertiesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TThemeProperties
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TThemePropertiesProperties = class(TPersistent)
  private
    FServer:    TThemeProperties;
    function    GetDefaultInterface: CMapXThemeProperties;
    constructor Create(AServer: TThemeProperties);
  protected
    function Get_DistMethod: DistribMethodConstants;
    procedure Set_DistMethod(Value: DistribMethodConstants);
    function Get_NumRanges: Smallint;
    procedure Set_NumRanges(Value: Smallint);
    function Get_RangeCategories: CMapXRangeCategoriesCollection;
    function Get_DotSize: Smallint;
    procedure Set_DotSize(Value: Smallint);
    function Get_Graduated: WordBool;
    procedure Set_Graduated(Value: WordBool);
    function Get_MultivarCategories: CMapXMultivarCategoriesCollection;
    function Get_Independent: WordBool;
    procedure Set_Independent(Value: WordBool);
    function Get_IndividualValueCategories: CMapXIndividualValueCategoriesCollection;
    function Get_ValuePerDot: Double;
    procedure Set_ValuePerDot(Value: Double);
    function Get_DataValue: Double;
    procedure Set_DataValue(Value: Double);
    function Get_Size: Double;
    procedure Set_Size(Value: Double);
    function Get_Width: Double;
    procedure Set_Width(Value: Double);
    function Get_SymbolStyle: CMapXStyle;
    procedure Set_SymbolStyle(const Value: CMapXStyle);
    function Get_SpreadBy: SpreadByConstants;
    procedure Set_SpreadBy(Value: SpreadByConstants);
    function Get_AllowEmptyRanges: WordBool;
    procedure Set_AllowEmptyRanges(Value: WordBool);
    function Get_DotColor: OLE_COLOR;
    procedure Set_DotColor(Value: OLE_COLOR);
    function Get_PieClockwise: WordBool;
    procedure Set_PieClockwise(Value: WordBool);
    function Get_PieHalfPies: WordBool;
    procedure Set_PieHalfPies(Value: WordBool);
    function Get_PieStartAngle: Smallint;
    procedure Set_PieStartAngle(Value: Smallint);
    function Get_BarStacked: WordBool;
    procedure Set_BarStacked(Value: WordBool);
    function Get_NegativeSymbolStyle: CMapXStyle;
    procedure Set_NegativeSymbolStyle(const Value: CMapXStyle);
    function Get_ShowNegativeValues: WordBool;
    procedure Set_ShowNegativeValues(Value: WordBool);
    function Get_GraduateSizeBy: GraduationConstants;
    procedure Set_GraduateSizeBy(Value: GraduationConstants);
    function Get_BorderStyle: CMapXStyle;
    procedure Set_BorderStyle(const Value: CMapXStyle);
    function Get_BarWidth: Double;
    procedure Set_BarWidth(Value: Double);
    function Get_BarIndependentScale: WordBool;
    procedure Set_BarIndependentScale(Value: WordBool);
    function Get_PositiveSymbolStyle: CMapXStyle;
    procedure Set_PositiveSymbolStyle(const Value: CMapXStyle);
    function Get_BarFrameStyle: CMapXStyle;
    procedure Set_BarFrameStyle(const Value: CMapXStyle);
    function Get_PieGraduated: WordBool;
    procedure Set_PieGraduated(Value: WordBool);
    function Get_BarGraduatedStack: WordBool;
    procedure Set_BarGraduatedStack(Value: WordBool);
    function Get_ApplyAttribute: ApplyAttributeConstants;
    procedure Set_ApplyAttribute(Value: ApplyAttributeConstants);
    function Get_RoundRanges: WordBool;
    procedure Set_RoundRanges(Value: WordBool);
    function Get_RoundBy: Double;
    procedure Set_RoundBy(Value: Double);
    function Get_ColorMethod: ColorSpreadingMethodConstants;
    procedure Set_ColorMethod(Value: ColorSpreadingMethodConstants);
    function Get_InflectRanges: WordBool;
    procedure Set_InflectRanges(Value: WordBool);
    function Get_InflectionRange: Smallint;
    procedure Set_InflectionRange(Value: Smallint);
    function Get_InflectionColor: OLE_COLOR;
    procedure Set_InflectionColor(Value: OLE_COLOR);
    function Get_BarFramed: WordBool;
    procedure Set_BarFramed(Value: WordBool);
  public
    property DefaultInterface: CMapXThemeProperties read GetDefaultInterface;
  published
    property DistMethod: DistribMethodConstants read Get_DistMethod write Set_DistMethod;
    property NumRanges: Smallint read Get_NumRanges write Set_NumRanges;
    property DotSize: Smallint read Get_DotSize write Set_DotSize;
    property Graduated: WordBool read Get_Graduated write Set_Graduated;
    property Independent: WordBool read Get_Independent write Set_Independent;
    property ValuePerDot: Double read Get_ValuePerDot write Set_ValuePerDot;
    property DataValue: Double read Get_DataValue write Set_DataValue;
    property Size: Double read Get_Size write Set_Size;
    property Width: Double read Get_Width write Set_Width;
    property SymbolStyle: CMapXStyle read Get_SymbolStyle write Set_SymbolStyle;
    property SpreadBy: SpreadByConstants read Get_SpreadBy write Set_SpreadBy;
    property AllowEmptyRanges: WordBool read Get_AllowEmptyRanges write Set_AllowEmptyRanges;
    property DotColor: OLE_COLOR read Get_DotColor write Set_DotColor;
    property PieClockwise: WordBool read Get_PieClockwise write Set_PieClockwise;
    property PieHalfPies: WordBool read Get_PieHalfPies write Set_PieHalfPies;
    property PieStartAngle: Smallint read Get_PieStartAngle write Set_PieStartAngle;
    property BarStacked: WordBool read Get_BarStacked write Set_BarStacked;
    property NegativeSymbolStyle: CMapXStyle read Get_NegativeSymbolStyle write Set_NegativeSymbolStyle;
    property ShowNegativeValues: WordBool read Get_ShowNegativeValues write Set_ShowNegativeValues;
    property GraduateSizeBy: GraduationConstants read Get_GraduateSizeBy write Set_GraduateSizeBy;
    property BorderStyle: CMapXStyle read Get_BorderStyle write Set_BorderStyle;
    property BarWidth: Double read Get_BarWidth write Set_BarWidth;
    property BarIndependentScale: WordBool read Get_BarIndependentScale write Set_BarIndependentScale;
    property PositiveSymbolStyle: CMapXStyle read Get_PositiveSymbolStyle write Set_PositiveSymbolStyle;
    property BarFrameStyle: CMapXStyle read Get_BarFrameStyle write Set_BarFrameStyle;
    property PieGraduated: WordBool read Get_PieGraduated write Set_PieGraduated;
    property BarGraduatedStack: WordBool read Get_BarGraduatedStack write Set_BarGraduatedStack;
    property ApplyAttribute: ApplyAttributeConstants read Get_ApplyAttribute write Set_ApplyAttribute;
    property RoundRanges: WordBool read Get_RoundRanges write Set_RoundRanges;
    property RoundBy: Double read Get_RoundBy write Set_RoundBy;
    property ColorMethod: ColorSpreadingMethodConstants read Get_ColorMethod write Set_ColorMethod;
    property InflectRanges: WordBool read Get_InflectRanges write Set_InflectRanges;
    property InflectionRange: Smallint read Get_InflectionRange write Set_InflectionRange;
    property InflectionColor: OLE_COLOR read Get_InflectionColor write Set_InflectionColor;
    property BarFramed: WordBool read Get_BarFramed write Set_BarFramed;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSelection provides a Create and CreateRemote method to          
// create instances of the default interface CMapXSelection exposed by              
// the CoClass Selection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSelection = class
    class function Create: CMapXSelection;
    class function CreateRemote(const MachineName: string): CMapXSelection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSelection
// Help String      : 
// Default Interface: CMapXSelection
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSelectionProperties= class;
{$ENDIF}
  TSelection = class(TOleServer)
  private
    FIntf: CMapXSelection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSelectionProperties;
    function GetServerProperties: TSelectionProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXSelection;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXFeature;
    function Get_Bounds: CMapXRectangle;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXSelection);
    procedure Disconnect; override;
    function Clone: CMapXFeatures;
    function _Item(Index: OleVariant): CMapXFeature;
    procedure RemoveByID(FeatureID: OleVariant);
    procedure Add(const Source: IDispatch);
    procedure Replace(const Source: IDispatch);
    procedure Remove(Source: OleVariant);
    procedure Common(const Source: IDispatch);
    procedure AddByID(FeatureID: OleVariant);
    procedure SelectByRectangle(X1: Double; Y1: Double; X2: Double; Y2: Double; 
                                SelectionFlag: SelectionTypeConstants);
    procedure SelectByRegion(const Layer: IDispatch; FeatureID: OleVariant; 
                             SelectionFlag: SelectionTypeConstants);
    procedure ClearSelection;
    procedure SelectByID(FeatureID: OleVariant; SelectionFlag: SelectionTypeConstants);
    procedure SelectByRadius(X: Double; Y: Double; radius: Double; 
                             SelectionFlag: SelectionTypeConstants);
    procedure SelectByPoint(X: Double; Y: Double; SelectionFlag: SelectionTypeConstants); overload;
    procedure SelectByPoint(X: Double; Y: Double; SelectionFlag: SelectionTypeConstants; 
                            SearchResultFlags: OleVariant); overload;
    function SelectAll(SelectionFlag: SelectionTypeConstants): WordBool;
    property DefaultInterface: CMapXSelection read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXFeature read Get_Item; default;
    property Bounds: CMapXRectangle read Get_Bounds;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSelectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSelection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSelectionProperties = class(TPersistent)
  private
    FServer:    TSelection;
    function    GetDefaultInterface: CMapXSelection;
    constructor Create(AServer: TSelection);
  protected
    function Get_Item(Index: OleVariant): CMapXFeature;
    function Get_Bounds: CMapXRectangle;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXSelection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFeature provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFeature exposed by              
// the CoClass Feature. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeature = class
    class function Create: CMapXFeature;
    class function CreateRemote(const MachineName: string): CMapXFeature;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFeature
// Help String      : 
// Default Interface: CMapXFeature
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFeatureProperties= class;
{$ENDIF}
  TFeature = class(TOleServer)
  private
    FIntf: CMapXFeature;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFeatureProperties;
    function GetServerProperties: TFeatureProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFeature;
  protected
    procedure InitServerData; override;
    procedure Set_Nodes(CSys: OleVariant; Param2: OleVariant);
    function Get_Nodes(CSys: OleVariant): OleVariant;
    function Get_Length: Double;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_LabelPoint: CMapXPoint;
    function Get_CenterX: Double;
    function Get_FeatureID: Integer;
    function Get_type_: FeatureTypeConstants;
    procedure Set_type_(Value: FeatureTypeConstants);
    function Get_Parts: CMapXParts;
    function Get_Area: Double;
    function Get_Layer: CMapXLayer;
    function Get__FeatureID: Integer;
    function Get_Perimeter: Double;
    function Get_Point: CMapXPoint;
    procedure Set_Point(const Value: CMapXPoint);
    function Get_Bounds: CMapXRectangle;
    function Get_KeyValue: WideString;
    procedure Set_KeyValue(const Value: WideString);
    function Get_Polyline: IDispatch;
    procedure Set_Polyline(const Value: IDispatch);
    function Get_HasPolyline: WordBool;
    function Get_FeatureKey: WideString;
    function Get_Region: IDispatch;
    procedure Set_Region(const Value: IDispatch);
    function Get_Name: WideString;
    function Get_Smooth: WordBool;
    procedure Set_Smooth(Value: WordBool);
    function Get_CenterY: Double;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_HasMultipoint: WordBool;
    function Get_Multipoint: IDispatch;
    procedure Set_Multipoint(const Value: IDispatch);
    function Get_HasRegion: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFeature);
    procedure Disconnect; override;
    function Clone: CMapXFeature;
    procedure Attach(const Map: IDispatch);
    procedure Offset(deltaX: Double; deltaY: Double);
    procedure Update; overload;
    procedure Update(UpdateFeature: OleVariant); overload;
    procedure Update(UpdateFeature: OleVariant; RowValues: OleVariant); overload;
    property DefaultInterface: CMapXFeature read GetDefaultInterface;
    property Nodes[CSys: OleVariant]: OleVariant read Get_Nodes write Set_Nodes;
    property Length: Double read Get_Length;
    property LabelPoint: CMapXPoint read Get_LabelPoint;
    property CenterX: Double read Get_CenterX;
    property FeatureID: Integer read Get_FeatureID;
    property Parts: CMapXParts read Get_Parts;
    property Area: Double read Get_Area;
    property Layer: CMapXLayer read Get_Layer;
    property _FeatureID: Integer read Get__FeatureID;
    property Perimeter: Double read Get_Perimeter;
    property Bounds: CMapXRectangle read Get_Bounds;
    property Polyline: IDispatch read Get_Polyline write Set_Polyline;
    property HasPolyline: WordBool read Get_HasPolyline;
    property FeatureKey: WideString read Get_FeatureKey;
    property Region: IDispatch read Get_Region write Set_Region;
    property Name: WideString read Get_Name;
    property CenterY: Double read Get_CenterY;
    property HasMultipoint: WordBool read Get_HasMultipoint;
    property Multipoint: IDispatch read Get_Multipoint write Set_Multipoint;
    property HasRegion: WordBool read Get_HasRegion;
    property Caption: WideString read Get_Caption write Set_Caption;
    property type_: FeatureTypeConstants read Get_type_ write Set_type_;
    property Point: CMapXPoint read Get_Point write Set_Point;
    property KeyValue: WideString read Get_KeyValue write Set_KeyValue;
    property Smooth: WordBool read Get_Smooth write Set_Smooth;
    property Style: CMapXStyle read Get_Style write Set_Style;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFeatureProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFeature
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFeatureProperties = class(TPersistent)
  private
    FServer:    TFeature;
    function    GetDefaultInterface: CMapXFeature;
    constructor Create(AServer: TFeature);
  protected
    procedure Set_Nodes(CSys: OleVariant; Param2: OleVariant);
    function Get_Nodes(CSys: OleVariant): OleVariant;
    function Get_Length: Double;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_LabelPoint: CMapXPoint;
    function Get_CenterX: Double;
    function Get_FeatureID: Integer;
    function Get_type_: FeatureTypeConstants;
    procedure Set_type_(Value: FeatureTypeConstants);
    function Get_Parts: CMapXParts;
    function Get_Area: Double;
    function Get_Layer: CMapXLayer;
    function Get__FeatureID: Integer;
    function Get_Perimeter: Double;
    function Get_Point: CMapXPoint;
    procedure Set_Point(const Value: CMapXPoint);
    function Get_Bounds: CMapXRectangle;
    function Get_KeyValue: WideString;
    procedure Set_KeyValue(const Value: WideString);
    function Get_Polyline: IDispatch;
    procedure Set_Polyline(const Value: IDispatch);
    function Get_HasPolyline: WordBool;
    function Get_FeatureKey: WideString;
    function Get_Region: IDispatch;
    procedure Set_Region(const Value: IDispatch);
    function Get_Name: WideString;
    function Get_Smooth: WordBool;
    procedure Set_Smooth(Value: WordBool);
    function Get_CenterY: Double;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_HasMultipoint: WordBool;
    function Get_Multipoint: IDispatch;
    procedure Set_Multipoint(const Value: IDispatch);
    function Get_HasRegion: WordBool;
  public
    property DefaultInterface: CMapXFeature read GetDefaultInterface;
  published
    property Caption: WideString read Get_Caption write Set_Caption;
    property type_: FeatureTypeConstants read Get_type_ write Set_type_;
    property Point: CMapXPoint read Get_Point write Set_Point;
    property KeyValue: WideString read Get_KeyValue write Set_KeyValue;
    property Smooth: WordBool read Get_Smooth write Set_Smooth;
    property Style: CMapXStyle read Get_Style write Set_Style;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRangeCategory provides a Create and CreateRemote method to          
// create instances of the default interface CMapXRangeCategory exposed by              
// the CoClass RangeCategory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRangeCategory = class
    class function Create: CMapXRangeCategory;
    class function CreateRemote(const MachineName: string): CMapXRangeCategory;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRangeCategory
// Help String      : 
// Default Interface: CMapXRangeCategory
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRangeCategoryProperties= class;
{$ENDIF}
  TRangeCategory = class(TOleServer)
  private
    FIntf: CMapXRangeCategory;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TRangeCategoryProperties;
    function GetServerProperties: TRangeCategoryProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXRangeCategory;
  protected
    procedure InitServerData; override;
    function Get_Min: Double;
    procedure Set_Min(Value: Double);
    function Get_Max: Double;
    procedure Set_Max(Value: Double);
    function Get_NumItems: Integer;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXRangeCategory);
    procedure Disconnect; override;
    property DefaultInterface: CMapXRangeCategory read GetDefaultInterface;
    property NumItems: Integer read Get_NumItems;
    property Min: Double read Get_Min write Set_Min;
    property Max: Double read Get_Max write Set_Max;
    property Style: CMapXStyle read Get_Style write Set_Style;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRangeCategoryProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRangeCategory
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRangeCategoryProperties = class(TPersistent)
  private
    FServer:    TRangeCategory;
    function    GetDefaultInterface: CMapXRangeCategory;
    constructor Create(AServer: TRangeCategory);
  protected
    function Get_Min: Double;
    procedure Set_Min(Value: Double);
    function Get_Max: Double;
    procedure Set_Max(Value: Double);
    function Get_NumItems: Integer;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    property DefaultInterface: CMapXRangeCategory read GetDefaultInterface;
  published
    property Min: Double read Get_Min write Set_Min;
    property Max: Double read Get_Max write Set_Max;
    property Style: CMapXStyle read Get_Style write Set_Style;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFields provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFields exposed by              
// the CoClass Fields. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFields = class
    class function Create: CMapXFields;
    class function CreateRemote(const MachineName: string): CMapXFields;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFields
// Help String      : 
// Default Interface: CMapXFields
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFieldsProperties= class;
{$ENDIF}
  TFields = class(TOleServer)
  private
    FIntf: CMapXFields;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFieldsProperties;
    function GetServerProperties: TFieldsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFields;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXField;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFields);
    procedure Disconnect; override;
    function Add(SourceField: OleVariant): CMapXField; overload;
    function Add(SourceField: OleVariant; Name: OleVariant): CMapXField; overload;
    function Add(SourceField: OleVariant; Name: OleVariant; AggregationFunction: OleVariant): CMapXField; overload;
    function Add(SourceField: OleVariant; Name: OleVariant; AggregationFunction: OleVariant; 
                 Type_: OleVariant): CMapXField; overload;
    function _Item(Index: OleVariant): CMapXField;
    procedure Remove(Index: OleVariant);
    procedure RemoveAll;
    function AddStringField(Name: OleVariant; Width: OleVariant): CMapXField; overload;
    function AddStringField(Name: OleVariant; Width: OleVariant; Indexed: OleVariant): CMapXField; overload;
    function AddLogicalField(Name: OleVariant): CMapXField; overload;
    function AddLogicalField(Name: OleVariant; Indexed: OleVariant): CMapXField; overload;
    function AddDateField(Name: OleVariant): CMapXField; overload;
    function AddDateField(Name: OleVariant; Indexed: OleVariant): CMapXField; overload;
    function AddIntegerField(Name: OleVariant): CMapXField; overload;
    function AddIntegerField(Name: OleVariant; Indexed: OleVariant): CMapXField; overload;
    function AddSmallIntField(Name: OleVariant): CMapXField; overload;
    function AddSmallIntField(Name: OleVariant; Indexed: OleVariant): CMapXField; overload;
    function AddNumericField(Name: OleVariant; Precision: OleVariant; Decimals: OleVariant): CMapXField; overload;
    function AddNumericField(Name: OleVariant; Precision: OleVariant; Decimals: OleVariant; 
                             Indexed: OleVariant): CMapXField; overload;
    function AddFloatField(Name: OleVariant): CMapXField; overload;
    function AddFloatField(Name: OleVariant; Indexed: OleVariant): CMapXField; overload;
    property DefaultInterface: CMapXFields read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXField read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFieldsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFields
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFieldsProperties = class(TPersistent)
  private
    FServer:    TFields;
    function    GetDefaultInterface: CMapXFields;
    constructor Create(AServer: TFields);
  protected
    function Get_Item(Index: OleVariant): CMapXField;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXFields read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoStyle provides a Create and CreateRemote method to          
// create instances of the default interface CMapXStyle exposed by              
// the CoClass Style. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStyle = class
    class function Create: CMapXStyle;
    class function CreateRemote(const MachineName: string): CMapXStyle;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TStyle
// Help String      : 
// Default Interface: CMapXStyle
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TStyleProperties= class;
{$ENDIF}
  TStyle = class(TOleServer)
  private
    FIntf: CMapXStyle;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TStyleProperties;
    function GetServerProperties: TStyleProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXStyle;
  protected
    procedure InitServerData; override;
    function Get_RegionColor: OLE_COLOR;
    procedure Set_RegionColor(Value: OLE_COLOR);
    function Get_RegionPattern: FillPatternConstants;
    procedure Set_RegionPattern(Value: FillPatternConstants);
    function Get_TextFontDblSpace: WordBool;
    procedure Set_TextFontDblSpace(Value: WordBool);
    function Get_TextFontShadow: WordBool;
    procedure Set_TextFontShadow(Value: WordBool);
    function Get_TextFontAllCaps: WordBool;
    procedure Set_TextFontAllCaps(Value: WordBool);
    function Get_LineColor: OLE_COLOR;
    procedure Set_LineColor(Value: OLE_COLOR);
    function Get_LineStyle: PenStyleConstants;
    procedure Set_LineStyle(Value: PenStyleConstants);
    function Get_SymbolCharacter: Smallint;
    procedure Set_SymbolCharacter(Value: Smallint);
    function Get_RegionBackColor: OLE_COLOR;
    procedure Set_RegionBackColor(Value: OLE_COLOR);
    function Get_LineWidth: Smallint;
    procedure Set_LineWidth(Value: Smallint);
    function Get_SymbolBitmapTransparent: WordBool;
    procedure Set_SymbolBitmapTransparent(Value: WordBool);
    function Get_TextFontOpaque: WordBool;
    procedure Set_TextFontOpaque(Value: WordBool);
    function Get_SymbolFontColor: OLE_COLOR;
    procedure Set_SymbolFontColor(Value: OLE_COLOR);
    function Get_TextFontHalo: WordBool;
    procedure Set_TextFontHalo(Value: WordBool);
    function Get_SymbolFontHalo: WordBool;
    procedure Set_SymbolFontHalo(Value: WordBool);
    function Get_SymbolFontShadow: WordBool;
    procedure Set_SymbolFontShadow(Value: WordBool);
    function Get_SymbolBitmapColor: OLE_COLOR;
    procedure Set_SymbolBitmapColor(Value: OLE_COLOR);
    function Get_SymbolBitmapName: WideString;
    procedure Set_SymbolBitmapName(const Value: WideString);
    function Get_SymbolBitmapOverrideColor: WordBool;
    procedure Set_SymbolBitmapOverrideColor(Value: WordBool);
    function Get_SymbolFontBackColor: OLE_COLOR;
    procedure Set_SymbolFontBackColor(Value: OLE_COLOR);
    function Get_SymbolFontOpaque: WordBool;
    procedure Set_SymbolFontOpaque(Value: WordBool);
    function Get_SymbolFont: IFontDisp;
    function Get_SupportsBitmapSymbols: WordBool;
    function Get_SymbolBitmapSize: Integer;
    procedure Set_SymbolBitmapSize(Value: Integer);
    function Get_LineWidthUnit: StyleUnitConstants;
    procedure Set_LineWidthUnit(Value: StyleUnitConstants);
    function Get_MinVectorSymbolCharacter: Smallint;
    function Get_SymbolVectorSize: Smallint;
    procedure Set_SymbolVectorSize(Value: Smallint);
    function Get_RegionTransparent: WordBool;
    procedure Set_RegionTransparent(Value: WordBool);
    function Get_LineStyleCount: Integer;
    function Get_LineInterleaved: WordBool;
    procedure Set_LineInterleaved(Value: WordBool);
    function Get_SymbolType: SymbolTypeConstants;
    procedure Set_SymbolType(Value: SymbolTypeConstants);
    function Get_SymbolFontRotation: Smallint;
    procedure Set_SymbolFontRotation(Value: Smallint);
    function Get_MaxVectorSymbolCharacter: Smallint;
    function Get_RegionBorderStyle: PenStyleConstants;
    procedure Set_RegionBorderStyle(Value: PenStyleConstants);
    function Get_RegionBorderColor: OLE_COLOR;
    procedure Set_RegionBorderColor(Value: OLE_COLOR);
    function Get_TextFont: IFontDisp;
    function Get_TextFontColor: OLE_COLOR;
    procedure Set_TextFontColor(Value: OLE_COLOR);
    function Get_TextFontBackColor: OLE_COLOR;
    procedure Set_TextFontBackColor(Value: OLE_COLOR);
    function Get_RegionBorderWidthUnit: StyleUnitConstants;
    procedure Set_RegionBorderWidthUnit(Value: StyleUnitConstants);
    function Get_SymbolVectorColor: OLE_COLOR;
    procedure Set_SymbolVectorColor(Value: OLE_COLOR);
    function Get_LineSupportsInterleave: WordBool;
    function Get_RegionBorderWidth: Smallint;
    procedure Set_RegionBorderWidth(Value: Smallint);
    function Get_TextFontRotation: Smallint;
    procedure Set_TextFontRotation(Value: Smallint);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXStyle);
    procedure Disconnect; override;
    procedure ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double; const SampleText: WideString); overload;
    procedure ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double; const SampleText: WideString; 
                               BackgroundColor: OleVariant); overload;
    procedure ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double); overload;
    procedure ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; 
                               Width: Double; Height: Double; BackgroundColor: OleVariant); overload;
    procedure ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double); overload;
    procedure ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double; BackgroundColor: OleVariant); overload;
    procedure ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double); overload;
    procedure ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; 
                                 Width: Double; Height: Double; BackgroundColor: OleVariant); overload;
    function Clone: CMapXStyle;
    procedure DrawLineSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
    procedure DrawRegionSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
    procedure DrawSymbolSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
    procedure DrawTextSample(hDC: OLE_HANDLE; const Rectangle: IDispatch; 
                             const SampleText: WideString);
    function PickSymbol: WordBool;
    function PickText: WordBool;
    function PickLine: WordBool;
    function PickRegion: WordBool;
    property DefaultInterface: CMapXStyle read GetDefaultInterface;
    property SymbolFont: IFontDisp read Get_SymbolFont;
    property SupportsBitmapSymbols: WordBool read Get_SupportsBitmapSymbols;
    property MinVectorSymbolCharacter: Smallint read Get_MinVectorSymbolCharacter;
    property LineStyleCount: Integer read Get_LineStyleCount;
    property MaxVectorSymbolCharacter: Smallint read Get_MaxVectorSymbolCharacter;
    property TextFont: IFontDisp read Get_TextFont;
    property LineSupportsInterleave: WordBool read Get_LineSupportsInterleave;
    property RegionColor: OLE_COLOR read Get_RegionColor write Set_RegionColor;
    property RegionPattern: FillPatternConstants read Get_RegionPattern write Set_RegionPattern;
    property TextFontDblSpace: WordBool read Get_TextFontDblSpace write Set_TextFontDblSpace;
    property TextFontShadow: WordBool read Get_TextFontShadow write Set_TextFontShadow;
    property TextFontAllCaps: WordBool read Get_TextFontAllCaps write Set_TextFontAllCaps;
    property LineColor: OLE_COLOR read Get_LineColor write Set_LineColor;
    property LineStyle: PenStyleConstants read Get_LineStyle write Set_LineStyle;
    property SymbolCharacter: Smallint read Get_SymbolCharacter write Set_SymbolCharacter;
    property RegionBackColor: OLE_COLOR read Get_RegionBackColor write Set_RegionBackColor;
    property LineWidth: Smallint read Get_LineWidth write Set_LineWidth;
    property SymbolBitmapTransparent: WordBool read Get_SymbolBitmapTransparent write Set_SymbolBitmapTransparent;
    property TextFontOpaque: WordBool read Get_TextFontOpaque write Set_TextFontOpaque;
    property SymbolFontColor: OLE_COLOR read Get_SymbolFontColor write Set_SymbolFontColor;
    property TextFontHalo: WordBool read Get_TextFontHalo write Set_TextFontHalo;
    property SymbolFontHalo: WordBool read Get_SymbolFontHalo write Set_SymbolFontHalo;
    property SymbolFontShadow: WordBool read Get_SymbolFontShadow write Set_SymbolFontShadow;
    property SymbolBitmapColor: OLE_COLOR read Get_SymbolBitmapColor write Set_SymbolBitmapColor;
    property SymbolBitmapName: WideString read Get_SymbolBitmapName write Set_SymbolBitmapName;
    property SymbolBitmapOverrideColor: WordBool read Get_SymbolBitmapOverrideColor write Set_SymbolBitmapOverrideColor;
    property SymbolFontBackColor: OLE_COLOR read Get_SymbolFontBackColor write Set_SymbolFontBackColor;
    property SymbolFontOpaque: WordBool read Get_SymbolFontOpaque write Set_SymbolFontOpaque;
    property SymbolBitmapSize: Integer read Get_SymbolBitmapSize write Set_SymbolBitmapSize;
    property LineWidthUnit: StyleUnitConstants read Get_LineWidthUnit write Set_LineWidthUnit;
    property SymbolVectorSize: Smallint read Get_SymbolVectorSize write Set_SymbolVectorSize;
    property RegionTransparent: WordBool read Get_RegionTransparent write Set_RegionTransparent;
    property LineInterleaved: WordBool read Get_LineInterleaved write Set_LineInterleaved;
    property SymbolType: SymbolTypeConstants read Get_SymbolType write Set_SymbolType;
    property SymbolFontRotation: Smallint read Get_SymbolFontRotation write Set_SymbolFontRotation;
    property RegionBorderStyle: PenStyleConstants read Get_RegionBorderStyle write Set_RegionBorderStyle;
    property RegionBorderColor: OLE_COLOR read Get_RegionBorderColor write Set_RegionBorderColor;
    property TextFontColor: OLE_COLOR read Get_TextFontColor write Set_TextFontColor;
    property TextFontBackColor: OLE_COLOR read Get_TextFontBackColor write Set_TextFontBackColor;
    property RegionBorderWidthUnit: StyleUnitConstants read Get_RegionBorderWidthUnit write Set_RegionBorderWidthUnit;
    property SymbolVectorColor: OLE_COLOR read Get_SymbolVectorColor write Set_SymbolVectorColor;
    property RegionBorderWidth: Smallint read Get_RegionBorderWidth write Set_RegionBorderWidth;
    property TextFontRotation: Smallint read Get_TextFontRotation write Set_TextFontRotation;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TStyleProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TStyle
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TStyleProperties = class(TPersistent)
  private
    FServer:    TStyle;
    function    GetDefaultInterface: CMapXStyle;
    constructor Create(AServer: TStyle);
  protected
    function Get_RegionColor: OLE_COLOR;
    procedure Set_RegionColor(Value: OLE_COLOR);
    function Get_RegionPattern: FillPatternConstants;
    procedure Set_RegionPattern(Value: FillPatternConstants);
    function Get_TextFontDblSpace: WordBool;
    procedure Set_TextFontDblSpace(Value: WordBool);
    function Get_TextFontShadow: WordBool;
    procedure Set_TextFontShadow(Value: WordBool);
    function Get_TextFontAllCaps: WordBool;
    procedure Set_TextFontAllCaps(Value: WordBool);
    function Get_LineColor: OLE_COLOR;
    procedure Set_LineColor(Value: OLE_COLOR);
    function Get_LineStyle: PenStyleConstants;
    procedure Set_LineStyle(Value: PenStyleConstants);
    function Get_SymbolCharacter: Smallint;
    procedure Set_SymbolCharacter(Value: Smallint);
    function Get_RegionBackColor: OLE_COLOR;
    procedure Set_RegionBackColor(Value: OLE_COLOR);
    function Get_LineWidth: Smallint;
    procedure Set_LineWidth(Value: Smallint);
    function Get_SymbolBitmapTransparent: WordBool;
    procedure Set_SymbolBitmapTransparent(Value: WordBool);
    function Get_TextFontOpaque: WordBool;
    procedure Set_TextFontOpaque(Value: WordBool);
    function Get_SymbolFontColor: OLE_COLOR;
    procedure Set_SymbolFontColor(Value: OLE_COLOR);
    function Get_TextFontHalo: WordBool;
    procedure Set_TextFontHalo(Value: WordBool);
    function Get_SymbolFontHalo: WordBool;
    procedure Set_SymbolFontHalo(Value: WordBool);
    function Get_SymbolFontShadow: WordBool;
    procedure Set_SymbolFontShadow(Value: WordBool);
    function Get_SymbolBitmapColor: OLE_COLOR;
    procedure Set_SymbolBitmapColor(Value: OLE_COLOR);
    function Get_SymbolBitmapName: WideString;
    procedure Set_SymbolBitmapName(const Value: WideString);
    function Get_SymbolBitmapOverrideColor: WordBool;
    procedure Set_SymbolBitmapOverrideColor(Value: WordBool);
    function Get_SymbolFontBackColor: OLE_COLOR;
    procedure Set_SymbolFontBackColor(Value: OLE_COLOR);
    function Get_SymbolFontOpaque: WordBool;
    procedure Set_SymbolFontOpaque(Value: WordBool);
    function Get_SymbolFont: IFontDisp;
    function Get_SupportsBitmapSymbols: WordBool;
    function Get_SymbolBitmapSize: Integer;
    procedure Set_SymbolBitmapSize(Value: Integer);
    function Get_LineWidthUnit: StyleUnitConstants;
    procedure Set_LineWidthUnit(Value: StyleUnitConstants);
    function Get_MinVectorSymbolCharacter: Smallint;
    function Get_SymbolVectorSize: Smallint;
    procedure Set_SymbolVectorSize(Value: Smallint);
    function Get_RegionTransparent: WordBool;
    procedure Set_RegionTransparent(Value: WordBool);
    function Get_LineStyleCount: Integer;
    function Get_LineInterleaved: WordBool;
    procedure Set_LineInterleaved(Value: WordBool);
    function Get_SymbolType: SymbolTypeConstants;
    procedure Set_SymbolType(Value: SymbolTypeConstants);
    function Get_SymbolFontRotation: Smallint;
    procedure Set_SymbolFontRotation(Value: Smallint);
    function Get_MaxVectorSymbolCharacter: Smallint;
    function Get_RegionBorderStyle: PenStyleConstants;
    procedure Set_RegionBorderStyle(Value: PenStyleConstants);
    function Get_RegionBorderColor: OLE_COLOR;
    procedure Set_RegionBorderColor(Value: OLE_COLOR);
    function Get_TextFont: IFontDisp;
    function Get_TextFontColor: OLE_COLOR;
    procedure Set_TextFontColor(Value: OLE_COLOR);
    function Get_TextFontBackColor: OLE_COLOR;
    procedure Set_TextFontBackColor(Value: OLE_COLOR);
    function Get_RegionBorderWidthUnit: StyleUnitConstants;
    procedure Set_RegionBorderWidthUnit(Value: StyleUnitConstants);
    function Get_SymbolVectorColor: OLE_COLOR;
    procedure Set_SymbolVectorColor(Value: OLE_COLOR);
    function Get_LineSupportsInterleave: WordBool;
    function Get_RegionBorderWidth: Smallint;
    procedure Set_RegionBorderWidth(Value: Smallint);
    function Get_TextFontRotation: Smallint;
    procedure Set_TextFontRotation(Value: Smallint);
  public
    property DefaultInterface: CMapXStyle read GetDefaultInterface;
  published
    property RegionColor: OLE_COLOR read Get_RegionColor write Set_RegionColor;
    property RegionPattern: FillPatternConstants read Get_RegionPattern write Set_RegionPattern;
    property TextFontDblSpace: WordBool read Get_TextFontDblSpace write Set_TextFontDblSpace;
    property TextFontShadow: WordBool read Get_TextFontShadow write Set_TextFontShadow;
    property TextFontAllCaps: WordBool read Get_TextFontAllCaps write Set_TextFontAllCaps;
    property LineColor: OLE_COLOR read Get_LineColor write Set_LineColor;
    property LineStyle: PenStyleConstants read Get_LineStyle write Set_LineStyle;
    property SymbolCharacter: Smallint read Get_SymbolCharacter write Set_SymbolCharacter;
    property RegionBackColor: OLE_COLOR read Get_RegionBackColor write Set_RegionBackColor;
    property LineWidth: Smallint read Get_LineWidth write Set_LineWidth;
    property SymbolBitmapTransparent: WordBool read Get_SymbolBitmapTransparent write Set_SymbolBitmapTransparent;
    property TextFontOpaque: WordBool read Get_TextFontOpaque write Set_TextFontOpaque;
    property SymbolFontColor: OLE_COLOR read Get_SymbolFontColor write Set_SymbolFontColor;
    property TextFontHalo: WordBool read Get_TextFontHalo write Set_TextFontHalo;
    property SymbolFontHalo: WordBool read Get_SymbolFontHalo write Set_SymbolFontHalo;
    property SymbolFontShadow: WordBool read Get_SymbolFontShadow write Set_SymbolFontShadow;
    property SymbolBitmapColor: OLE_COLOR read Get_SymbolBitmapColor write Set_SymbolBitmapColor;
    property SymbolBitmapName: WideString read Get_SymbolBitmapName write Set_SymbolBitmapName;
    property SymbolBitmapOverrideColor: WordBool read Get_SymbolBitmapOverrideColor write Set_SymbolBitmapOverrideColor;
    property SymbolFontBackColor: OLE_COLOR read Get_SymbolFontBackColor write Set_SymbolFontBackColor;
    property SymbolFontOpaque: WordBool read Get_SymbolFontOpaque write Set_SymbolFontOpaque;
    property SymbolBitmapSize: Integer read Get_SymbolBitmapSize write Set_SymbolBitmapSize;
    property LineWidthUnit: StyleUnitConstants read Get_LineWidthUnit write Set_LineWidthUnit;
    property SymbolVectorSize: Smallint read Get_SymbolVectorSize write Set_SymbolVectorSize;
    property RegionTransparent: WordBool read Get_RegionTransparent write Set_RegionTransparent;
    property LineInterleaved: WordBool read Get_LineInterleaved write Set_LineInterleaved;
    property SymbolType: SymbolTypeConstants read Get_SymbolType write Set_SymbolType;
    property SymbolFontRotation: Smallint read Get_SymbolFontRotation write Set_SymbolFontRotation;
    property RegionBorderStyle: PenStyleConstants read Get_RegionBorderStyle write Set_RegionBorderStyle;
    property RegionBorderColor: OLE_COLOR read Get_RegionBorderColor write Set_RegionBorderColor;
    property TextFontColor: OLE_COLOR read Get_TextFontColor write Set_TextFontColor;
    property TextFontBackColor: OLE_COLOR read Get_TextFontBackColor write Set_TextFontBackColor;
    property RegionBorderWidthUnit: StyleUnitConstants read Get_RegionBorderWidthUnit write Set_RegionBorderWidthUnit;
    property SymbolVectorColor: OLE_COLOR read Get_SymbolVectorColor write Set_SymbolVectorColor;
    property RegionBorderWidth: Smallint read Get_RegionBorderWidth write Set_RegionBorderWidth;
    property TextFontRotation: Smallint read Get_TextFontRotation write Set_TextFontRotation;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoIndividualValueCategory provides a Create and CreateRemote method to          
// create instances of the default interface CMapXIValueCategory exposed by              
// the CoClass IndividualValueCategory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIndividualValueCategory = class
    class function Create: CMapXIValueCategory;
    class function CreateRemote(const MachineName: string): CMapXIValueCategory;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIndividualValueCategory
// Help String      : 
// Default Interface: CMapXIValueCategory
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TIndividualValueCategoryProperties= class;
{$ENDIF}
  TIndividualValueCategory = class(TOleServer)
  private
    FIntf: CMapXIValueCategory;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TIndividualValueCategoryProperties;
    function GetServerProperties: TIndividualValueCategoryProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXIValueCategory;
  protected
    procedure InitServerData; override;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_NumItems: Integer;
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXIValueCategory);
    procedure Disconnect; override;
    property DefaultInterface: CMapXIValueCategory read GetDefaultInterface;
    property NumItems: Integer read Get_NumItems;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Value: WideString read Get_Value write Set_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TIndividualValueCategoryProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TIndividualValueCategory
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TIndividualValueCategoryProperties = class(TPersistent)
  private
    FServer:    TIndividualValueCategory;
    function    GetDefaultInterface: CMapXIValueCategory;
    constructor Create(AServer: TIndividualValueCategory);
  protected
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_NumItems: Integer;
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
  public
    property DefaultInterface: CMapXIValueCategory read GetDefaultInterface;
  published
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Value: WideString read Get_Value write Set_Value;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMultiVarCategory provides a Create and CreateRemote method to          
// create instances of the default interface CMapXMultiVarCategory exposed by              
// the CoClass MultiVarCategory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMultiVarCategory = class
    class function Create: CMapXMultiVarCategory;
    class function CreateRemote(const MachineName: string): CMapXMultiVarCategory;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMultiVarCategory
// Help String      : 
// Default Interface: CMapXMultiVarCategory
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMultiVarCategoryProperties= class;
{$ENDIF}
  TMultiVarCategory = class(TOleServer)
  private
    FIntf: CMapXMultiVarCategory;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMultiVarCategoryProperties;
    function GetServerProperties: TMultiVarCategoryProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXMultiVarCategory;
  protected
    procedure InitServerData; override;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXMultiVarCategory);
    procedure Disconnect; override;
    property DefaultInterface: CMapXMultiVarCategory read GetDefaultInterface;
    property Style: CMapXStyle read Get_Style write Set_Style;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMultiVarCategoryProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMultiVarCategory
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMultiVarCategoryProperties = class(TPersistent)
  private
    FServer:    TMultiVarCategory;
    function    GetDefaultInterface: CMapXMultiVarCategory;
    constructor Create(AServer: TMultiVarCategory);
  protected
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    property DefaultInterface: CMapXMultiVarCategory read GetDefaultInterface;
  published
    property Style: CMapXStyle read Get_Style write Set_Style;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSourceRows provides a Create and CreateRemote method to          
// create instances of the default interface CMapXSourceRows exposed by              
// the CoClass SourceRows. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSourceRows = class
    class function Create: CMapXSourceRows;
    class function CreateRemote(const MachineName: string): CMapXSourceRows;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSourceRows
// Help String      : 
// Default Interface: CMapXSourceRows
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSourceRowsProperties= class;
{$ENDIF}
  TSourceRows = class(TOleServer)
  private
    FIntf: CMapXSourceRows;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSourceRowsProperties;
    function GetServerProperties: TSourceRowsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXSourceRows;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXSourceRow;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXSourceRows);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXSourceRow;
    property DefaultInterface: CMapXSourceRows read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXSourceRow read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSourceRowsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSourceRows
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSourceRowsProperties = class(TPersistent)
  private
    FServer:    TSourceRows;
    function    GetDefaultInterface: CMapXSourceRows;
    constructor Create(AServer: TSourceRows);
  protected
    function Get_Item(Index: OleVariant): CMapXSourceRow;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXSourceRows read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSourceRow provides a Create and CreateRemote method to          
// create instances of the default interface CMapXSourceRow exposed by              
// the CoClass SourceRow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSourceRow = class
    class function Create: CMapXSourceRow;
    class function CreateRemote(const MachineName: string): CMapXSourceRow;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSourceRow
// Help String      : 
// Default Interface: CMapXSourceRow
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSourceRowProperties= class;
{$ENDIF}
  TSourceRow = class(TOleServer)
  private
    FIntf: CMapXSourceRow;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSourceRowProperties;
    function GetServerProperties: TSourceRowProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXSourceRow;
  protected
    procedure InitServerData; override;
    function Get_Row: Integer;
    function Get__Row: Integer;
    procedure Set__Row(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXSourceRow);
    procedure Disconnect; override;
    property DefaultInterface: CMapXSourceRow read GetDefaultInterface;
    property Row: Integer read Get_Row;
    property _Row: Integer read Get__Row write Set__Row;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSourceRowProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSourceRow
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSourceRowProperties = class(TPersistent)
  private
    FServer:    TSourceRow;
    function    GetDefaultInterface: CMapXSourceRow;
    constructor Create(AServer: TSourceRow);
  protected
    function Get_Row: Integer;
    function Get__Row: Integer;
    procedure Set__Row(Value: Integer);
  public
    property DefaultInterface: CMapXSourceRow read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAnnotation provides a Create and CreateRemote method to          
// create instances of the default interface CMapXAnnotation exposed by              
// the CoClass Annotation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAnnotation = class
    class function Create: CMapXAnnotation;
    class function CreateRemote(const MachineName: string): CMapXAnnotation;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAnnotation
// Help String      : 
// Default Interface: CMapXAnnotation
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAnnotationProperties= class;
{$ENDIF}
  TAnnotation = class(TOleServer)
  private
    FIntf: CMapXAnnotation;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAnnotationProperties;
    function GetServerProperties: TAnnotationProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXAnnotation;
  protected
    procedure InitServerData; override;
    function Get_type_: AnnotationTypeConstants;
    function Get_Graphic: CMapXText;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXAnnotation);
    procedure Disconnect; override;
    property DefaultInterface: CMapXAnnotation read GetDefaultInterface;
    property type_: AnnotationTypeConstants read Get_type_;
    property Graphic: CMapXText read Get_Graphic;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnnotationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAnnotation
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAnnotationProperties = class(TPersistent)
  private
    FServer:    TAnnotation;
    function    GetDefaultInterface: CMapXAnnotation;
    constructor Create(AServer: TAnnotation);
  protected
    function Get_type_: AnnotationTypeConstants;
    function Get_Graphic: CMapXText;
  public
    property DefaultInterface: CMapXAnnotation read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoGraphic provides a Create and CreateRemote method to          
// create instances of the default interface CMapXText exposed by              
// the CoClass Graphic. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGraphic = class
    class function Create: CMapXText;
    class function CreateRemote(const MachineName: string): CMapXText;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TGraphic
// Help String      : 
// Default Interface: CMapXText
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TGraphicProperties= class;
{$ENDIF}
  TGraphic = class(TOleServer)
  private
    FIntf: CMapXText;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TGraphicProperties;
    function GetServerProperties: TGraphicProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXText;
  protected
    procedure InitServerData; override;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_X: Double;
    procedure Set_X(Value: Double);
    function Get_Y: Double;
    procedure Set_Y(Value: Double);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXText);
    procedure Disconnect; override;
    property DefaultInterface: CMapXText read GetDefaultInterface;
    property Caption: WideString read Get_Caption write Set_Caption;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Style: CMapXStyle read Get_Style write Set_Style;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TGraphicProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TGraphic
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TGraphicProperties = class(TPersistent)
  private
    FServer:    TGraphic;
    function    GetDefaultInterface: CMapXText;
    constructor Create(AServer: TGraphic);
  protected
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_X: Double;
    procedure Set_X(Value: Double);
    function Get_Y: Double;
    procedure Set_Y(Value: Double);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
  public
    property DefaultInterface: CMapXText read GetDefaultInterface;
  published
    property Caption: WideString read Get_Caption write Set_Caption;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Style: CMapXStyle read Get_Style write Set_Style;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLegendText provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLegendText exposed by              
// the CoClass LegendText. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLegendText = class
    class function Create: CMapXLegendText;
    class function CreateRemote(const MachineName: string): CMapXLegendText;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLegendText
// Help String      : 
// Default Interface: CMapXLegendText
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLegendTextProperties= class;
{$ENDIF}
  TLegendText = class(TOleServer)
  private
    FIntf: CMapXLegendText;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLegendTextProperties;
    function GetServerProperties: TLegendTextProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLegendText;
  protected
    procedure InitServerData; override;
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLegendText);
    procedure Disconnect; override;
    property DefaultInterface: CMapXLegendText read GetDefaultInterface;
    property Text: WideString read Get_Text write Set_Text;
    property Visible: WordBool read Get_Visible write Set_Visible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLegendTextProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLegendText
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLegendTextProperties = class(TPersistent)
  private
    FServer:    TLegendText;
    function    GetDefaultInterface: CMapXLegendText;
    constructor Create(AServer: TLegendText);
  protected
    function Get_Text: WideString;
    procedure Set_Text(const Value: WideString);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
  public
    property DefaultInterface: CMapXLegendText read GetDefaultInterface;
  published
    property Text: WideString read Get_Text write Set_Text;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLegendTexts provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLegendTexts exposed by              
// the CoClass LegendTexts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLegendTexts = class
    class function Create: CMapXLegendTexts;
    class function CreateRemote(const MachineName: string): CMapXLegendTexts;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLegendTexts
// Help String      : 
// Default Interface: CMapXLegendTexts
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLegendTextsProperties= class;
{$ENDIF}
  TLegendTexts = class(TOleServer)
  private
    FIntf: CMapXLegendTexts;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLegendTextsProperties;
    function GetServerProperties: TLegendTextsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLegendTexts;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXLegendText;
    function Get_AllOthersText: CMapXLegendText;
    function Get_Count: Integer;
    function Get_AutoGenerate: WordBool;
    procedure Set_AutoGenerate(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLegendTexts);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXLegendText;
    property DefaultInterface: CMapXLegendTexts read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXLegendText read Get_Item; default;
    property AllOthersText: CMapXLegendText read Get_AllOthersText;
    property Count: Integer read Get_Count;
    property AutoGenerate: WordBool read Get_AutoGenerate write Set_AutoGenerate;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLegendTextsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLegendTexts
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLegendTextsProperties = class(TPersistent)
  private
    FServer:    TLegendTexts;
    function    GetDefaultInterface: CMapXLegendTexts;
    constructor Create(AServer: TLegendTexts);
  protected
    function Get_Item(Index: OleVariant): CMapXLegendText;
    function Get_AllOthersText: CMapXLegendText;
    function Get_Count: Integer;
    function Get_AutoGenerate: WordBool;
    procedure Set_AutoGenerate(Value: WordBool);
  public
    property DefaultInterface: CMapXLegendTexts read GetDefaultInterface;
  published
    property AutoGenerate: WordBool read Get_AutoGenerate write Set_AutoGenerate;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTitle provides a Create and CreateRemote method to          
// create instances of the default interface CMapXTitle exposed by              
// the CoClass Title. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTitle = class
    class function Create: CMapXTitle;
    class function CreateRemote(const MachineName: string): CMapXTitle;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTitle
// Help String      : 
// Default Interface: CMapXTitle
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTitleProperties= class;
{$ENDIF}
  TTitle = class(TOleServer)
  private
    FIntf: CMapXTitle;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTitleProperties;
    function GetServerProperties: TTitleProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXTitle;
  protected
    procedure InitServerData; override;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_TextStyle: CMapXStyle;
    procedure Set_TextStyle(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_X: Single;
    procedure Set_X(Value: Single);
    function Get_Y: Single;
    procedure Set_Y(Value: Single);
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get__Caption: WideString;
    procedure Set__Caption(const Value: WideString);
    function Get_Border: WordBool;
    procedure Set_Border(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXTitle);
    procedure Disconnect; override;
    property DefaultInterface: CMapXTitle read GetDefaultInterface;
    property _Caption: WideString read Get__Caption write Set__Caption;
    property Caption: WideString read Get_Caption write Set_Caption;
    property TextStyle: CMapXStyle read Get_TextStyle write Set_TextStyle;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property X: Single read Get_X write Set_X;
    property Y: Single read Get_Y write Set_Y;
    property Editable: WordBool read Get_Editable write Set_Editable;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Border: WordBool read Get_Border write Set_Border;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTitleProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTitle
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTitleProperties = class(TPersistent)
  private
    FServer:    TTitle;
    function    GetDefaultInterface: CMapXTitle;
    constructor Create(AServer: TTitle);
  protected
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_TextStyle: CMapXStyle;
    procedure Set_TextStyle(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_X: Single;
    procedure Set_X(Value: Single);
    function Get_Y: Single;
    procedure Set_Y(Value: Single);
    function Get_Editable: WordBool;
    procedure Set_Editable(Value: WordBool);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get__Caption: WideString;
    procedure Set__Caption(const Value: WideString);
    function Get_Border: WordBool;
    procedure Set_Border(Value: WordBool);
  public
    property DefaultInterface: CMapXTitle read GetDefaultInterface;
  published
    property Caption: WideString read Get_Caption write Set_Caption;
    property TextStyle: CMapXStyle read Get_TextStyle write Set_TextStyle;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property X: Single read Get_X write Set_X;
    property Y: Single read Get_Y write Set_Y;
    property Editable: WordBool read Get_Editable write Set_Editable;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Border: WordBool read Get_Border write Set_Border;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLabelProperties provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLabelProperties exposed by              
// the CoClass LabelProperties. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabelProperties = class
    class function Create: CMapXLabelProperties;
    class function CreateRemote(const MachineName: string): CMapXLabelProperties;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabelProperties
// Help String      : 
// Default Interface: CMapXLabelProperties
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabelPropertiesProperties= class;
{$ENDIF}
  TLabelProperties = class(TOleServer)
  private
    FIntf: CMapXLabelProperties;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLabelPropertiesProperties;
    function GetServerProperties: TLabelPropertiesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLabelProperties;
  protected
    procedure InitServerData; override;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_LabelZoom: WordBool;
    procedure Set_LabelZoom(Value: WordBool);
    function Get_LabelZoomMin: Double;
    procedure Set_LabelZoomMin(Value: Double);
    function Get_LabelZoomMax: Double;
    procedure Set_LabelZoomMax(Value: Double);
    function Get_LineType: LineTypeConstants;
    procedure Set_LineType(Value: LineTypeConstants);
    function Get_Offset: Smallint;
    procedure Set_Offset(Value: Smallint);
    function Get_Parallel: WordBool;
    procedure Set_Parallel(Value: WordBool);
    function Get_Dataset: IDispatch;
    procedure Set_Dataset(const Value: IDispatch);
    function Get_Duplicate: WordBool;
    procedure Set_Duplicate(Value: WordBool);
    function Get_Overlap: WordBool;
    procedure Set_Overlap(Value: WordBool);
    function Get_LabelMax: Smallint;
    procedure Set_LabelMax(Value: Smallint);
    function Get_DataField: IDispatch;
    procedure Set_DataField(const Value: IDispatch);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_PartialSegments: WordBool;
    procedure Set_PartialSegments(Value: WordBool);
    function Get_LabelPartialObjects: WordBool;
    procedure Set_LabelPartialObjects(Value: WordBool);
    function Get_LabelAlong: LabelAlongConstants;
    procedure Set_LabelAlong(Value: LabelAlongConstants);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLabelProperties);
    procedure Disconnect; override;
    property DefaultInterface: CMapXLabelProperties read GetDefaultInterface;
    property Parallel: WordBool read Get_Parallel write Set_Parallel;
    property Dataset: IDispatch read Get_Dataset write Set_Dataset;
    property DataField: IDispatch read Get_DataField write Set_DataField;
    property PartialSegments: WordBool read Get_PartialSegments write Set_PartialSegments;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property LabelZoom: WordBool read Get_LabelZoom write Set_LabelZoom;
    property LabelZoomMin: Double read Get_LabelZoomMin write Set_LabelZoomMin;
    property LabelZoomMax: Double read Get_LabelZoomMax write Set_LabelZoomMax;
    property LineType: LineTypeConstants read Get_LineType write Set_LineType;
    property Offset: Smallint read Get_Offset write Set_Offset;
    property Duplicate: WordBool read Get_Duplicate write Set_Duplicate;
    property Overlap: WordBool read Get_Overlap write Set_Overlap;
    property LabelMax: Smallint read Get_LabelMax write Set_LabelMax;
    property Position: PositionConstants read Get_Position write Set_Position;
    property LabelPartialObjects: WordBool read Get_LabelPartialObjects write Set_LabelPartialObjects;
    property LabelAlong: LabelAlongConstants read Get_LabelAlong write Set_LabelAlong;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabelPropertiesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabelProperties
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabelPropertiesProperties = class(TPersistent)
  private
    FServer:    TLabelProperties;
    function    GetDefaultInterface: CMapXLabelProperties;
    constructor Create(AServer: TLabelProperties);
  protected
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_LabelZoom: WordBool;
    procedure Set_LabelZoom(Value: WordBool);
    function Get_LabelZoomMin: Double;
    procedure Set_LabelZoomMin(Value: Double);
    function Get_LabelZoomMax: Double;
    procedure Set_LabelZoomMax(Value: Double);
    function Get_LineType: LineTypeConstants;
    procedure Set_LineType(Value: LineTypeConstants);
    function Get_Offset: Smallint;
    procedure Set_Offset(Value: Smallint);
    function Get_Parallel: WordBool;
    procedure Set_Parallel(Value: WordBool);
    function Get_Dataset: IDispatch;
    procedure Set_Dataset(const Value: IDispatch);
    function Get_Duplicate: WordBool;
    procedure Set_Duplicate(Value: WordBool);
    function Get_Overlap: WordBool;
    procedure Set_Overlap(Value: WordBool);
    function Get_LabelMax: Smallint;
    procedure Set_LabelMax(Value: Smallint);
    function Get_DataField: IDispatch;
    procedure Set_DataField(const Value: IDispatch);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_PartialSegments: WordBool;
    procedure Set_PartialSegments(Value: WordBool);
    function Get_LabelPartialObjects: WordBool;
    procedure Set_LabelPartialObjects(Value: WordBool);
    function Get_LabelAlong: LabelAlongConstants;
    procedure Set_LabelAlong(Value: LabelAlongConstants);
  public
    property DefaultInterface: CMapXLabelProperties read GetDefaultInterface;
  published
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property LabelZoom: WordBool read Get_LabelZoom write Set_LabelZoom;
    property LabelZoomMin: Double read Get_LabelZoomMin write Set_LabelZoomMin;
    property LabelZoomMax: Double read Get_LabelZoomMax write Set_LabelZoomMax;
    property LineType: LineTypeConstants read Get_LineType write Set_LineType;
    property Offset: Smallint read Get_Offset write Set_Offset;
    property Duplicate: WordBool read Get_Duplicate write Set_Duplicate;
    property Overlap: WordBool read Get_Overlap write Set_Overlap;
    property LabelMax: Smallint read Get_LabelMax write Set_LabelMax;
    property Position: PositionConstants read Get_Position write Set_Position;
    property LabelPartialObjects: WordBool read Get_LabelPartialObjects write Set_LabelPartialObjects;
    property LabelAlong: LabelAlongConstants read Get_LabelAlong write Set_LabelAlong;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBindLayer provides a Create and CreateRemote method to          
// create instances of the default interface CMapXBindLayer exposed by              
// the CoClass BindLayer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBindLayer = class
    class function Create: CMapXBindLayer;
    class function CreateRemote(const MachineName: string): CMapXBindLayer;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBindLayer
// Help String      : 
// Default Interface: CMapXBindLayer
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBindLayerProperties= class;
{$ENDIF}
  TBindLayer = class(TOleServer)
  private
    FIntf: CMapXBindLayer;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBindLayerProperties;
    function GetServerProperties: TBindLayerProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXBindLayer;
  protected
    procedure InitServerData; override;
    function Get_LayerName: WideString;
    procedure Set_LayerName(const Value: WideString);
    function Get_RefColumn1: OleVariant;
    procedure Set_RefColumn1(Value: OleVariant);
    function Get_RefColumn2: OleVariant;
    procedure Set_RefColumn2(Value: OleVariant);
    function Get_LayerType: BindLayerTypeConstants;
    procedure Set_LayerType(Value: BindLayerTypeConstants);
    function Get_ReferenceLayer: WideString;
    procedure Set_ReferenceLayer(const Value: WideString);
    function Get_CoordSys: CMapXCoordSys;
    procedure Set_CoordSys(const Value: CMapXCoordSys);
    function Get_FileSpec: WideString;
    procedure Set_FileSpec(const Value: WideString);
    function Get_KeyLength: Smallint;
    procedure Set_KeyLength(Value: Smallint);
    function Get_ReferenceLayerField: Integer;
    procedure Set_ReferenceLayerField(Value: Integer);
    function Get_OverwriteFile: WordBool;
    procedure Set_OverwriteFile(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXBindLayer);
    procedure Disconnect; override;
    property DefaultInterface: CMapXBindLayer read GetDefaultInterface;
    property RefColumn1: OleVariant read Get_RefColumn1 write Set_RefColumn1;
    property RefColumn2: OleVariant read Get_RefColumn2 write Set_RefColumn2;
    property LayerName: WideString read Get_LayerName write Set_LayerName;
    property LayerType: BindLayerTypeConstants read Get_LayerType write Set_LayerType;
    property ReferenceLayer: WideString read Get_ReferenceLayer write Set_ReferenceLayer;
    property CoordSys: CMapXCoordSys read Get_CoordSys write Set_CoordSys;
    property FileSpec: WideString read Get_FileSpec write Set_FileSpec;
    property KeyLength: Smallint read Get_KeyLength write Set_KeyLength;
    property ReferenceLayerField: Integer read Get_ReferenceLayerField write Set_ReferenceLayerField;
    property OverwriteFile: WordBool read Get_OverwriteFile write Set_OverwriteFile;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBindLayerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBindLayer
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBindLayerProperties = class(TPersistent)
  private
    FServer:    TBindLayer;
    function    GetDefaultInterface: CMapXBindLayer;
    constructor Create(AServer: TBindLayer);
  protected
    function Get_LayerName: WideString;
    procedure Set_LayerName(const Value: WideString);
    function Get_RefColumn1: OleVariant;
    procedure Set_RefColumn1(Value: OleVariant);
    function Get_RefColumn2: OleVariant;
    procedure Set_RefColumn2(Value: OleVariant);
    function Get_LayerType: BindLayerTypeConstants;
    procedure Set_LayerType(Value: BindLayerTypeConstants);
    function Get_ReferenceLayer: WideString;
    procedure Set_ReferenceLayer(const Value: WideString);
    function Get_CoordSys: CMapXCoordSys;
    procedure Set_CoordSys(const Value: CMapXCoordSys);
    function Get_FileSpec: WideString;
    procedure Set_FileSpec(const Value: WideString);
    function Get_KeyLength: Smallint;
    procedure Set_KeyLength(Value: Smallint);
    function Get_ReferenceLayerField: Integer;
    procedure Set_ReferenceLayerField(Value: Integer);
    function Get_OverwriteFile: WordBool;
    procedure Set_OverwriteFile(Value: WordBool);
  public
    property DefaultInterface: CMapXBindLayer read GetDefaultInterface;
  published
    property LayerName: WideString read Get_LayerName write Set_LayerName;
    property LayerType: BindLayerTypeConstants read Get_LayerType write Set_LayerType;
    property ReferenceLayer: WideString read Get_ReferenceLayer write Set_ReferenceLayer;
    property CoordSys: CMapXCoordSys read Get_CoordSys write Set_CoordSys;
    property FileSpec: WideString read Get_FileSpec write Set_FileSpec;
    property KeyLength: Smallint read Get_KeyLength write Set_KeyLength;
    property ReferenceLayerField: Integer read Get_ReferenceLayerField write Set_ReferenceLayerField;
    property OverwriteFile: WordBool read Get_OverwriteFile write Set_OverwriteFile;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRangeCategories provides a Create and CreateRemote method to          
// create instances of the default interface CMapXRangeCategoriesCollection exposed by              
// the CoClass RangeCategories. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRangeCategories = class
    class function Create: CMapXRangeCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXRangeCategoriesCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRangeCategories
// Help String      : 
// Default Interface: CMapXRangeCategoriesCollection
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRangeCategoriesProperties= class;
{$ENDIF}
  TRangeCategories = class(TOleServer)
  private
    FIntf: CMapXRangeCategoriesCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TRangeCategoriesProperties;
    function GetServerProperties: TRangeCategoriesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXRangeCategoriesCollection;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXRangeCategory;
    function Get_AllOthersCategory: CMapXRangeCategory;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXRangeCategoriesCollection);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXRangeCategory;
    property DefaultInterface: CMapXRangeCategoriesCollection read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXRangeCategory read Get_Item; default;
    property AllOthersCategory: CMapXRangeCategory read Get_AllOthersCategory;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRangeCategoriesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRangeCategories
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRangeCategoriesProperties = class(TPersistent)
  private
    FServer:    TRangeCategories;
    function    GetDefaultInterface: CMapXRangeCategoriesCollection;
    constructor Create(AServer: TRangeCategories);
  protected
    function Get_Item(Index: OleVariant): CMapXRangeCategory;
    function Get_AllOthersCategory: CMapXRangeCategory;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXRangeCategoriesCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoIndividualValueCategories provides a Create and CreateRemote method to          
// create instances of the default interface CMapXIndividualValueCategoriesCollection exposed by              
// the CoClass IndividualValueCategories. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIndividualValueCategories = class
    class function Create: CMapXIndividualValueCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXIndividualValueCategoriesCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIndividualValueCategories
// Help String      : 
// Default Interface: CMapXIndividualValueCategoriesCollection
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TIndividualValueCategoriesProperties= class;
{$ENDIF}
  TIndividualValueCategories = class(TOleServer)
  private
    FIntf: CMapXIndividualValueCategoriesCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TIndividualValueCategoriesProperties;
    function GetServerProperties: TIndividualValueCategoriesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXIndividualValueCategoriesCollection;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXIValueCategory;
    function Get_AllOthersCategory: CMapXIValueCategory;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXIndividualValueCategoriesCollection);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXIValueCategory;
    property DefaultInterface: CMapXIndividualValueCategoriesCollection read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXIValueCategory read Get_Item; default;
    property AllOthersCategory: CMapXIValueCategory read Get_AllOthersCategory;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TIndividualValueCategoriesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TIndividualValueCategories
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TIndividualValueCategoriesProperties = class(TPersistent)
  private
    FServer:    TIndividualValueCategories;
    function    GetDefaultInterface: CMapXIndividualValueCategoriesCollection;
    constructor Create(AServer: TIndividualValueCategories);
  protected
    function Get_Item(Index: OleVariant): CMapXIValueCategory;
    function Get_AllOthersCategory: CMapXIValueCategory;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXIndividualValueCategoriesCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMultivarCategories provides a Create and CreateRemote method to          
// create instances of the default interface CMapXMultivarCategoriesCollection exposed by              
// the CoClass MultivarCategories. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMultivarCategories = class
    class function Create: CMapXMultivarCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXMultivarCategoriesCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMultivarCategories
// Help String      : 
// Default Interface: CMapXMultivarCategoriesCollection
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMultivarCategoriesProperties= class;
{$ENDIF}
  TMultivarCategories = class(TOleServer)
  private
    FIntf: CMapXMultivarCategoriesCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMultivarCategoriesProperties;
    function GetServerProperties: TMultivarCategoriesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXMultivarCategoriesCollection;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXMultiVarCategory;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXMultivarCategoriesCollection);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXMultiVarCategory;
    property DefaultInterface: CMapXMultivarCategoriesCollection read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXMultiVarCategory read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMultivarCategoriesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMultivarCategories
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMultivarCategoriesProperties = class(TPersistent)
  private
    FServer:    TMultivarCategories;
    function    GetDefaultInterface: CMapXMultivarCategoriesCollection;
    constructor Create(AServer: TMultivarCategories);
  protected
    function Get_Item(Index: OleVariant): CMapXMultiVarCategory;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXMultivarCategoriesCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBitmapSymbols provides a Create and CreateRemote method to          
// create instances of the default interface CMapXBitmapSymbolsCollection exposed by              
// the CoClass BitmapSymbols. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBitmapSymbols = class
    class function Create: CMapXBitmapSymbolsCollection;
    class function CreateRemote(const MachineName: string): CMapXBitmapSymbolsCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBitmapSymbols
// Help String      : 
// Default Interface: CMapXBitmapSymbolsCollection
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBitmapSymbolsProperties= class;
{$ENDIF}
  TBitmapSymbols = class(TOleServer)
  private
    FIntf: CMapXBitmapSymbolsCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBitmapSymbolsProperties;
    function GetServerProperties: TBitmapSymbolsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXBitmapSymbolsCollection;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXBitmapSymbol;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXBitmapSymbolsCollection);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXBitmapSymbol;
    procedure Refresh;
    procedure Unload;
    property DefaultInterface: CMapXBitmapSymbolsCollection read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXBitmapSymbol read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBitmapSymbolsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBitmapSymbols
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBitmapSymbolsProperties = class(TPersistent)
  private
    FServer:    TBitmapSymbols;
    function    GetDefaultInterface: CMapXBitmapSymbolsCollection;
    constructor Create(AServer: TBitmapSymbols);
  protected
    function Get_Item(Index: OleVariant): CMapXBitmapSymbol;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXBitmapSymbolsCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRectangle provides a Create and CreateRemote method to          
// create instances of the default interface CMapXRectangle exposed by              
// the CoClass Rectangle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRectangle = class
    class function Create: CMapXRectangle;
    class function CreateRemote(const MachineName: string): CMapXRectangle;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRectangle
// Help String      : 
// Default Interface: CMapXRectangle
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRectangleProperties= class;
{$ENDIF}
  TRectangle = class(TOleServer)
  private
    FIntf: CMapXRectangle;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TRectangleProperties;
    function GetServerProperties: TRectangleProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXRectangle;
  protected
    procedure InitServerData; override;
    function Get_XMin: Double;
    function Get_YMax: Double;
    function Get_XMax: Double;
    function Get_Height: Double;
    function Get_Width: Double;
    function Get_YMin: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXRectangle);
    procedure Disconnect; override;
    procedure Offset(deltaX: Double; deltaY: Double);
    procedure Set_(X1: Double; Y1: Double; X2: Double; Y2: Double);
    property DefaultInterface: CMapXRectangle read GetDefaultInterface;
    property XMin: Double read Get_XMin;
    property YMax: Double read Get_YMax;
    property XMax: Double read Get_XMax;
    property Height: Double read Get_Height;
    property Width: Double read Get_Width;
    property YMin: Double read Get_YMin;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRectangleProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRectangle
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRectangleProperties = class(TPersistent)
  private
    FServer:    TRectangle;
    function    GetDefaultInterface: CMapXRectangle;
    constructor Create(AServer: TRectangle);
  protected
    function Get_XMin: Double;
    function Get_YMax: Double;
    function Get_XMax: Double;
    function Get_Height: Double;
    function Get_Width: Double;
    function Get_YMin: Double;
  public
    property DefaultInterface: CMapXRectangle read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBoundsConstraint provides a Create and CreateRemote method to          
// create instances of the default interface CMapXBoundsConstraint exposed by              
// the CoClass BoundsConstraint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBoundsConstraint = class
    class function Create: CMapXBoundsConstraint;
    class function CreateRemote(const MachineName: string): CMapXBoundsConstraint;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBoundsConstraint
// Help String      : 
// Default Interface: CMapXBoundsConstraint
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBoundsConstraintProperties= class;
{$ENDIF}
  TBoundsConstraint = class(TOleServer)
  private
    FIntf: CMapXBoundsConstraint;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBoundsConstraintProperties;
    function GetServerProperties: TBoundsConstraintProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXBoundsConstraint;
  protected
    procedure InitServerData; override;
    function Get_Bounds: CMapXRectangle;
    procedure Set_Bounds(const Value: CMapXRectangle);
    function Get_Enabled: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXBoundsConstraint);
    procedure Disconnect; override;
    procedure Disable;
    procedure Enable;
    property DefaultInterface: CMapXBoundsConstraint read GetDefaultInterface;
    property Enabled: WordBool read Get_Enabled;
    property Bounds: CMapXRectangle read Get_Bounds write Set_Bounds;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBoundsConstraintProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBoundsConstraint
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBoundsConstraintProperties = class(TPersistent)
  private
    FServer:    TBoundsConstraint;
    function    GetDefaultInterface: CMapXBoundsConstraint;
    constructor Create(AServer: TBoundsConstraint);
  protected
    function Get_Bounds: CMapXRectangle;
    procedure Set_Bounds(const Value: CMapXRectangle);
    function Get_Enabled: WordBool;
  public
    property DefaultInterface: CMapXBoundsConstraint read GetDefaultInterface;
  published
    property Bounds: CMapXRectangle read Get_Bounds write Set_Bounds;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFeaturesConstraint provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFeaturesConstraint exposed by              
// the CoClass FeaturesConstraint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeaturesConstraint = class
    class function Create: CMapXFeaturesConstraint;
    class function CreateRemote(const MachineName: string): CMapXFeaturesConstraint;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFeaturesConstraint
// Help String      : 
// Default Interface: CMapXFeaturesConstraint
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFeaturesConstraintProperties= class;
{$ENDIF}
  TFeaturesConstraint = class(TOleServer)
  private
    FIntf: CMapXFeaturesConstraint;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFeaturesConstraintProperties;
    function GetServerProperties: TFeaturesConstraintProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFeaturesConstraint;
  protected
    procedure InitServerData; override;
    function Get_Features: CMapXFeatures;
    procedure Set_Features(const Value: CMapXFeatures);
    function Get_Enabled: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFeaturesConstraint);
    procedure Disconnect; override;
    procedure Disable;
    procedure Enable;
    property DefaultInterface: CMapXFeaturesConstraint read GetDefaultInterface;
    property Enabled: WordBool read Get_Enabled;
    property Features: CMapXFeatures read Get_Features write Set_Features;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFeaturesConstraintProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFeaturesConstraint
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFeaturesConstraintProperties = class(TPersistent)
  private
    FServer:    TFeaturesConstraint;
    function    GetDefaultInterface: CMapXFeaturesConstraint;
    constructor Create(AServer: TFeaturesConstraint);
  protected
    function Get_Features: CMapXFeatures;
    procedure Set_Features(const Value: CMapXFeatures);
    function Get_Enabled: WordBool;
  public
    property DefaultInterface: CMapXFeaturesConstraint read GetDefaultInterface;
  published
    property Features: CMapXFeatures read Get_Features write Set_Features;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAllFeaturesConstraint provides a Create and CreateRemote method to          
// create instances of the default interface CMapXAllFeaturesConstraint exposed by              
// the CoClass AllFeaturesConstraint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAllFeaturesConstraint = class
    class function Create: CMapXAllFeaturesConstraint;
    class function CreateRemote(const MachineName: string): CMapXAllFeaturesConstraint;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAllFeaturesConstraint
// Help String      : 
// Default Interface: CMapXAllFeaturesConstraint
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAllFeaturesConstraintProperties= class;
{$ENDIF}
  TAllFeaturesConstraint = class(TOleServer)
  private
    FIntf: CMapXAllFeaturesConstraint;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAllFeaturesConstraintProperties;
    function GetServerProperties: TAllFeaturesConstraintProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXAllFeaturesConstraint;
  protected
    procedure InitServerData; override;
    function Get_Enabled: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXAllFeaturesConstraint);
    procedure Disconnect; override;
    procedure Enable;
    procedure Disable;
    property DefaultInterface: CMapXAllFeaturesConstraint read GetDefaultInterface;
    property Enabled: WordBool read Get_Enabled;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAllFeaturesConstraintProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAllFeaturesConstraint
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAllFeaturesConstraintProperties = class(TPersistent)
  private
    FServer:    TAllFeaturesConstraint;
    function    GetDefaultInterface: CMapXAllFeaturesConstraint;
    constructor Create(AServer: TAllFeaturesConstraint);
  protected
    function Get_Enabled: WordBool;
  public
    property DefaultInterface: CMapXAllFeaturesConstraint read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFind provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLayerFind exposed by              
// the CoClass Find. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFind = class
    class function Create: CMapXLayerFind;
    class function CreateRemote(const MachineName: string): CMapXLayerFind;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFind
// Help String      : 
// Default Interface: CMapXLayerFind
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFindProperties= class;
{$ENDIF}
  TFind = class(TOleServer)
  private
    FIntf: CMapXLayerFind;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFindProperties;
    function GetServerProperties: TFindProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLayerFind;
  protected
    procedure InitServerData; override;
    function Get_ClosestAddr: WordBool;
    procedure Set_ClosestAddr(Value: WordBool);
    function Get_RefineLayer: IDispatch;
    procedure Set_RefineLayer(const Value: IDispatch);
    function Get_OtherBoundary: WordBool;
    procedure Set_OtherBoundary(Value: WordBool);
    function Get_FindField: IDispatch;
    procedure Set_FindField(const Value: IDispatch);
    function Get_Abbreviations: WordBool;
    procedure Set_Abbreviations(Value: WordBool);
    function Get_RefineDataset: IDispatch;
    procedure Set_RefineDataset(const Value: IDispatch);
    function Get_FindDataset: IDispatch;
    procedure Set_FindDataset(const Value: IDispatch);
    function Get_RefineField: IDispatch;
    procedure Set_RefineField(const Value: IDispatch);
    function Get_CloseMatchMax: Integer;
    procedure Set_CloseMatchMax(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLayerFind);
    procedure Disconnect; override;
    function SearchEx(const Address: WideString): CMapXFindResult; overload;
    function SearchEx(const Address: WideString; RefineBoundary: OleVariant): CMapXFindResult; overload;
    function Search(const Address: WideString): CMapXFindFeature; overload;
    function Search(const Address: WideString; RefineBoundary: OleVariant): CMapXFindFeature; overload;
    property DefaultInterface: CMapXLayerFind read GetDefaultInterface;
    property RefineLayer: IDispatch read Get_RefineLayer write Set_RefineLayer;
    property FindField: IDispatch read Get_FindField write Set_FindField;
    property RefineDataset: IDispatch read Get_RefineDataset write Set_RefineDataset;
    property FindDataset: IDispatch read Get_FindDataset write Set_FindDataset;
    property RefineField: IDispatch read Get_RefineField write Set_RefineField;
    property ClosestAddr: WordBool read Get_ClosestAddr write Set_ClosestAddr;
    property OtherBoundary: WordBool read Get_OtherBoundary write Set_OtherBoundary;
    property Abbreviations: WordBool read Get_Abbreviations write Set_Abbreviations;
    property CloseMatchMax: Integer read Get_CloseMatchMax write Set_CloseMatchMax;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFindProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFind
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFindProperties = class(TPersistent)
  private
    FServer:    TFind;
    function    GetDefaultInterface: CMapXLayerFind;
    constructor Create(AServer: TFind);
  protected
    function Get_ClosestAddr: WordBool;
    procedure Set_ClosestAddr(Value: WordBool);
    function Get_RefineLayer: IDispatch;
    procedure Set_RefineLayer(const Value: IDispatch);
    function Get_OtherBoundary: WordBool;
    procedure Set_OtherBoundary(Value: WordBool);
    function Get_FindField: IDispatch;
    procedure Set_FindField(const Value: IDispatch);
    function Get_Abbreviations: WordBool;
    procedure Set_Abbreviations(Value: WordBool);
    function Get_RefineDataset: IDispatch;
    procedure Set_RefineDataset(const Value: IDispatch);
    function Get_FindDataset: IDispatch;
    procedure Set_FindDataset(const Value: IDispatch);
    function Get_RefineField: IDispatch;
    procedure Set_RefineField(const Value: IDispatch);
    function Get_CloseMatchMax: Integer;
    procedure Set_CloseMatchMax(Value: Integer);
  public
    property DefaultInterface: CMapXLayerFind read GetDefaultInterface;
  published
    property ClosestAddr: WordBool read Get_ClosestAddr write Set_ClosestAddr;
    property OtherBoundary: WordBool read Get_OtherBoundary write Set_OtherBoundary;
    property Abbreviations: WordBool read Get_Abbreviations write Set_Abbreviations;
    property CloseMatchMax: Integer read Get_CloseMatchMax write Set_CloseMatchMax;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFindFeature provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFindFeature exposed by              
// the CoClass FindFeature. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFindFeature = class
    class function Create: CMapXFindFeature;
    class function CreateRemote(const MachineName: string): CMapXFindFeature;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFindFeature
// Help String      : 
// Default Interface: CMapXFindFeature
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFindFeatureProperties= class;
{$ENDIF}
  TFindFeature = class(TOleServer)
  private
    FIntf: CMapXFindFeature;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFindFeatureProperties;
    function GetServerProperties: TFindFeatureProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFindFeature;
  protected
    procedure InitServerData; override;
    procedure Set_Nodes(CSys: OleVariant; Param2: OleVariant);
    function Get_Nodes(CSys: OleVariant): OleVariant;
    function Get_CenterX: Double;
    function Get_Length: Double;
    function Get__FeatureID: Integer;
    function Get_Bounds: CMapXRectangle;
    function Get_type_: FeatureTypeConstants;
    procedure Set_type_(Value: FeatureTypeConstants);
    function Get_FeatureID: Integer;
    function Get_LabelPoint: CMapXPoint;
    function Get_Parts: CMapXParts;
    function Get_Point: CMapXPoint;
    procedure Set_Point(const Value: CMapXPoint);
    function Get_Layer: CMapXLayer;
    function Get_Smooth: WordBool;
    procedure Set_Smooth(Value: WordBool);
    function Get_Perimeter: Double;
    function Get_Area: Double;
    function Get_Name: WideString;
    function Get_KeyValue: WideString;
    procedure Set_KeyValue(const Value: WideString);
    function Get_HasMultipoint: WordBool;
    function Get_Region: IDispatch;
    procedure Set_Region(const Value: IDispatch);
    function Get_Polyline: IDispatch;
    procedure Set_Polyline(const Value: IDispatch);
    function Get_FeatureKey: WideString;
    function Get_FindRC: Smallint;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_CenterY: Double;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_HasPolyline: WordBool;
    function Get_Multipoint: IDispatch;
    procedure Set_Multipoint(const Value: IDispatch);
    function Get_HasRegion: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFindFeature);
    procedure Disconnect; override;
    function Clone: CMapXFeature;
    procedure Attach(const Map: IDispatch);
    procedure Offset(deltaX: Double; deltaY: Double);
    procedure Update; overload;
    procedure Update(UpdateFeature: OleVariant); overload;
    procedure Update(UpdateFeature: OleVariant; RowValues: OleVariant); overload;
    property DefaultInterface: CMapXFindFeature read GetDefaultInterface;
    property Nodes[CSys: OleVariant]: OleVariant read Get_Nodes write Set_Nodes;
    property CenterX: Double read Get_CenterX;
    property Length: Double read Get_Length;
    property _FeatureID: Integer read Get__FeatureID;
    property Bounds: CMapXRectangle read Get_Bounds;
    property FeatureID: Integer read Get_FeatureID;
    property LabelPoint: CMapXPoint read Get_LabelPoint;
    property Parts: CMapXParts read Get_Parts;
    property Layer: CMapXLayer read Get_Layer;
    property Perimeter: Double read Get_Perimeter;
    property Area: Double read Get_Area;
    property Name: WideString read Get_Name;
    property HasMultipoint: WordBool read Get_HasMultipoint;
    property Region: IDispatch read Get_Region write Set_Region;
    property Polyline: IDispatch read Get_Polyline write Set_Polyline;
    property FeatureKey: WideString read Get_FeatureKey;
    property FindRC: Smallint read Get_FindRC;
    property CenterY: Double read Get_CenterY;
    property HasPolyline: WordBool read Get_HasPolyline;
    property Multipoint: IDispatch read Get_Multipoint write Set_Multipoint;
    property HasRegion: WordBool read Get_HasRegion;
    property type_: FeatureTypeConstants read Get_type_ write Set_type_;
    property Point: CMapXPoint read Get_Point write Set_Point;
    property Smooth: WordBool read Get_Smooth write Set_Smooth;
    property KeyValue: WideString read Get_KeyValue write Set_KeyValue;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Caption: WideString read Get_Caption write Set_Caption;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFindFeatureProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFindFeature
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFindFeatureProperties = class(TPersistent)
  private
    FServer:    TFindFeature;
    function    GetDefaultInterface: CMapXFindFeature;
    constructor Create(AServer: TFindFeature);
  protected
    procedure Set_Nodes(CSys: OleVariant; Param2: OleVariant);
    function Get_Nodes(CSys: OleVariant): OleVariant;
    function Get_CenterX: Double;
    function Get_Length: Double;
    function Get__FeatureID: Integer;
    function Get_Bounds: CMapXRectangle;
    function Get_type_: FeatureTypeConstants;
    procedure Set_type_(Value: FeatureTypeConstants);
    function Get_FeatureID: Integer;
    function Get_LabelPoint: CMapXPoint;
    function Get_Parts: CMapXParts;
    function Get_Point: CMapXPoint;
    procedure Set_Point(const Value: CMapXPoint);
    function Get_Layer: CMapXLayer;
    function Get_Smooth: WordBool;
    procedure Set_Smooth(Value: WordBool);
    function Get_Perimeter: Double;
    function Get_Area: Double;
    function Get_Name: WideString;
    function Get_KeyValue: WideString;
    procedure Set_KeyValue(const Value: WideString);
    function Get_HasMultipoint: WordBool;
    function Get_Region: IDispatch;
    procedure Set_Region(const Value: IDispatch);
    function Get_Polyline: IDispatch;
    procedure Set_Polyline(const Value: IDispatch);
    function Get_FeatureKey: WideString;
    function Get_FindRC: Smallint;
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_CenterY: Double;
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_HasPolyline: WordBool;
    function Get_Multipoint: IDispatch;
    procedure Set_Multipoint(const Value: IDispatch);
    function Get_HasRegion: WordBool;
  public
    property DefaultInterface: CMapXFindFeature read GetDefaultInterface;
  published
    property type_: FeatureTypeConstants read Get_type_ write Set_type_;
    property Point: CMapXPoint read Get_Point write Set_Point;
    property Smooth: WordBool read Get_Smooth write Set_Smooth;
    property KeyValue: WideString read Get_KeyValue write Set_KeyValue;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Caption: WideString read Get_Caption write Set_Caption;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFindResult provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFindResult exposed by              
// the CoClass FindResult. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFindResult = class
    class function Create: CMapXFindResult;
    class function CreateRemote(const MachineName: string): CMapXFindResult;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFindResult
// Help String      : 
// Default Interface: CMapXFindResult
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFindResultProperties= class;
{$ENDIF}
  TFindResult = class(TOleServer)
  private
    FIntf: CMapXFindResult;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFindResultProperties;
    function GetServerProperties: TFindResultProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFindResult;
  protected
    procedure InitServerData; override;
    function Get_ExactMatch: WordBool;
    function Get_Substitute: WordBool;
    function Get_AddressOutOfRange: WordBool;
    function Get_IntersectionNotFound: WordBool;
    function Get_MultipleMatches: WordBool;
    function Get_RefineRegion: WordBool;
    function Get_FindRC: Smallint;
    function Get_Matches: CMapXFindMatches;
    function Get_MatchedFeature: CMapXFeature;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFindResult);
    procedure Disconnect; override;
    property DefaultInterface: CMapXFindResult read GetDefaultInterface;
    property ExactMatch: WordBool read Get_ExactMatch;
    property Substitute: WordBool read Get_Substitute;
    property AddressOutOfRange: WordBool read Get_AddressOutOfRange;
    property IntersectionNotFound: WordBool read Get_IntersectionNotFound;
    property MultipleMatches: WordBool read Get_MultipleMatches;
    property RefineRegion: WordBool read Get_RefineRegion;
    property FindRC: Smallint read Get_FindRC;
    property Matches: CMapXFindMatches read Get_Matches;
    property MatchedFeature: CMapXFeature read Get_MatchedFeature;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFindResultProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFindResult
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFindResultProperties = class(TPersistent)
  private
    FServer:    TFindResult;
    function    GetDefaultInterface: CMapXFindResult;
    constructor Create(AServer: TFindResult);
  protected
    function Get_ExactMatch: WordBool;
    function Get_Substitute: WordBool;
    function Get_AddressOutOfRange: WordBool;
    function Get_IntersectionNotFound: WordBool;
    function Get_MultipleMatches: WordBool;
    function Get_RefineRegion: WordBool;
    function Get_FindRC: Smallint;
    function Get_Matches: CMapXFindMatches;
    function Get_MatchedFeature: CMapXFeature;
  public
    property DefaultInterface: CMapXFindResult read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFindMatch provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFindMatch exposed by              
// the CoClass FindMatch. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFindMatch = class
    class function Create: CMapXFindMatch;
    class function CreateRemote(const MachineName: string): CMapXFindMatch;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFindMatch
// Help String      : 
// Default Interface: CMapXFindMatch
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFindMatchProperties= class;
{$ENDIF}
  TFindMatch = class(TOleServer)
  private
    FIntf: CMapXFindMatch;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFindMatchProperties;
    function GetServerProperties: TFindMatchProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFindMatch;
  protected
    procedure InitServerData; override;
    function Get_FeatureID: Integer;
    function Get_Name: WideString;
    function Get_Score: Integer;
    function Get_FeatureKey: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFindMatch);
    procedure Disconnect; override;
    property DefaultInterface: CMapXFindMatch read GetDefaultInterface;
    property FeatureID: Integer read Get_FeatureID;
    property Name: WideString read Get_Name;
    property Score: Integer read Get_Score;
    property FeatureKey: WideString read Get_FeatureKey;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFindMatchProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFindMatch
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFindMatchProperties = class(TPersistent)
  private
    FServer:    TFindMatch;
    function    GetDefaultInterface: CMapXFindMatch;
    constructor Create(AServer: TFindMatch);
  protected
    function Get_FeatureID: Integer;
    function Get_Name: WideString;
    function Get_Score: Integer;
    function Get_FeatureKey: WideString;
  public
    property DefaultInterface: CMapXFindMatch read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFindMatches provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFindMatches exposed by              
// the CoClass FindMatches. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFindMatches = class
    class function Create: CMapXFindMatches;
    class function CreateRemote(const MachineName: string): CMapXFindMatches;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFindMatches
// Help String      : 
// Default Interface: CMapXFindMatches
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFindMatchesProperties= class;
{$ENDIF}
  TFindMatches = class(TOleServer)
  private
    FIntf: CMapXFindMatches;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFindMatchesProperties;
    function GetServerProperties: TFindMatchesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFindMatches;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXFindMatch;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFindMatches);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXFindMatch;
    property DefaultInterface: CMapXFindMatches read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXFindMatch read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFindMatchesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFindMatches
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFindMatchesProperties = class(TPersistent)
  private
    FServer:    TFindMatches;
    function    GetDefaultInterface: CMapXFindMatches;
    constructor Create(AServer: TFindMatches);
  protected
    function Get_Item(Index: OleVariant): CMapXFindMatch;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXFindMatches read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoParts provides a Create and CreateRemote method to          
// create instances of the default interface CMapXParts exposed by              
// the CoClass Parts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParts = class
    class function Create: CMapXParts;
    class function CreateRemote(const MachineName: string): CMapXParts;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TParts
// Help String      : 
// Default Interface: CMapXParts
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPartsProperties= class;
{$ENDIF}
  TParts = class(TOleServer)
  private
    FIntf: CMapXParts;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPartsProperties;
    function GetServerProperties: TPartsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXParts;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXPoints;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXParts);
    procedure Disconnect; override;
    function Add(const Points: IDispatch): CMapXPoints;
    function _Item(Index: OleVariant): CMapXPoints;
    procedure Remove(Index: OleVariant);
    procedure RemoveAll;
    property DefaultInterface: CMapXParts read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXPoints read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPartsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TParts
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPartsProperties = class(TPersistent)
  private
    FServer:    TParts;
    function    GetDefaultInterface: CMapXParts;
    constructor Create(AServer: TParts);
  protected
    function Get_Item(Index: OleVariant): CMapXPoints;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXParts read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPoints provides a Create and CreateRemote method to          
// create instances of the default interface CMapXPoints exposed by              
// the CoClass Points. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoints = class
    class function Create: CMapXPoints;
    class function CreateRemote(const MachineName: string): CMapXPoints;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPoints
// Help String      : 
// Default Interface: CMapXPoints
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPointsProperties= class;
{$ENDIF}
  TPoints = class(TOleServer)
  private
    FIntf: CMapXPoints;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPointsProperties;
    function GetServerProperties: TPointsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXPoints;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXPoint;
    function Get_X(Index: Integer): Double;
    function Get_Y(Index: Integer): Double;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXPoints);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXPoint;
    procedure Remove(Index: OleVariant);
    procedure GetXY(Index: Integer; var X: Double; var Y: Double);
    function AddXY(X: Double; Y: Double): CMapXPoint; overload;
    function AddXY(X: Double; Y: Double; Position: OleVariant): CMapXPoint; overload;
    procedure RemoveAll;
    function Add(const Point: IDispatch): CMapXPoint; overload;
    function Add(const Point: IDispatch; Position: OleVariant): CMapXPoint; overload;
    procedure GetXYV(Index: Integer; var X: OleVariant; var Y: OleVariant);
    property DefaultInterface: CMapXPoints read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXPoint read Get_Item; default;
    property X[Index: Integer]: Double read Get_X;
    property Y[Index: Integer]: Double read Get_Y;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPointsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPoints
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPointsProperties = class(TPersistent)
  private
    FServer:    TPoints;
    function    GetDefaultInterface: CMapXPoints;
    constructor Create(AServer: TPoints);
  protected
    function Get_Item(Index: OleVariant): CMapXPoint;
    function Get_X(Index: Integer): Double;
    function Get_Y(Index: Integer): Double;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXPoints read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPoint provides a Create and CreateRemote method to          
// create instances of the default interface CMapXPoint exposed by              
// the CoClass Point. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint = class
    class function Create: CMapXPoint;
    class function CreateRemote(const MachineName: string): CMapXPoint;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPoint
// Help String      : 
// Default Interface: CMapXPoint
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPointProperties= class;
{$ENDIF}
  TPoint = class(TOleServer)
  private
    FIntf: CMapXPoint;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPointProperties;
    function GetServerProperties: TPointProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXPoint;
  protected
    procedure InitServerData; override;
    function Get_Y: Double;
    function Get_X: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXPoint);
    procedure Disconnect; override;
    procedure Offset(deltaX: Double; deltaY: Double);
    procedure Set_(X: Double; Y: Double);
    property DefaultInterface: CMapXPoint read GetDefaultInterface;
    property Y: Double read Get_Y;
    property X: Double read Get_X;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPointProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPoint
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPointProperties = class(TPersistent)
  private
    FServer:    TPoint;
    function    GetDefaultInterface: CMapXPoint;
    constructor Create(AServer: TPoint);
  protected
    function Get_Y: Double;
    function Get_X: Double;
  public
    property DefaultInterface: CMapXPoint read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoGeosets provides a Create and CreateRemote method to          
// create instances of the default interface CMapXGeosets exposed by              
// the CoClass Geosets. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGeosets = class
    class function Create: CMapXGeosets;
    class function CreateRemote(const MachineName: string): CMapXGeosets;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TGeosets
// Help String      : 
// Default Interface: CMapXGeosets
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TGeosetsProperties= class;
{$ENDIF}
  TGeosets = class(TOleServer)
  private
    FIntf: CMapXGeosets;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TGeosetsProperties;
    function GetServerProperties: TGeosetsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXGeosets;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXGeoset;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXGeosets);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXGeoset;
    property DefaultInterface: CMapXGeosets read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXGeoset read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TGeosetsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TGeosets
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TGeosetsProperties = class(TPersistent)
  private
    FServer:    TGeosets;
    function    GetDefaultInterface: CMapXGeosets;
    constructor Create(AServer: TGeosets);
  protected
    function Get_Item(Index: OleVariant): CMapXGeoset;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXGeosets read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoGeoSet provides a Create and CreateRemote method to          
// create instances of the default interface CMapXGeoset exposed by              
// the CoClass GeoSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGeoSet = class
    class function Create: CMapXGeoset;
    class function CreateRemote(const MachineName: string): CMapXGeoset;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TGeoSet
// Help String      : 
// Default Interface: CMapXGeoset
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TGeoSetProperties= class;
{$ENDIF}
  TGeoSet = class(TOleServer)
  private
    FIntf: CMapXGeoset;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TGeoSetProperties;
    function GetServerProperties: TGeoSetProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXGeoset;
  protected
    procedure InitServerData; override;
    function Get_Centroid: CMapXPoint;
    function Get_PathName: WideString;
    function Get_UserName: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXGeoset);
    procedure Disconnect; override;
    property DefaultInterface: CMapXGeoset read GetDefaultInterface;
    property Centroid: CMapXPoint read Get_Centroid;
    property PathName: WideString read Get_PathName;
    property UserName: WideString read Get_UserName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TGeoSetProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TGeoSet
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TGeoSetProperties = class(TPersistent)
  private
    FServer:    TGeoSet;
    function    GetDefaultInterface: CMapXGeoset;
    constructor Create(AServer: TGeoSet);
  protected
    function Get_Centroid: CMapXPoint;
    function Get_PathName: WideString;
    function Get_UserName: WideString;
  public
    property DefaultInterface: CMapXGeoset read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFeatures provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFeatures exposed by              
// the CoClass Features. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeatures = class
    class function Create: CMapXFeatures;
    class function CreateRemote(const MachineName: string): CMapXFeatures;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFeatures
// Help String      : 
// Default Interface: CMapXFeatures
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFeaturesProperties= class;
{$ENDIF}
  TFeatures = class(TOleServer)
  private
    FIntf: CMapXFeatures;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFeaturesProperties;
    function GetServerProperties: TFeaturesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFeatures;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXFeature;
    function Get_Bounds: CMapXRectangle;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFeatures);
    procedure Disconnect; override;
    function Clone: CMapXFeatures;
    procedure RemoveByID(FeatureID: OleVariant);
    function _Item(Index: OleVariant): CMapXFeature;
    procedure Add(const Source: IDispatch);
    procedure Common(const Source: IDispatch);
    procedure Replace(const Source: IDispatch);
    procedure AddByID(FeatureID: OleVariant);
    procedure Remove(Source: OleVariant);
    property DefaultInterface: CMapXFeatures read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXFeature read Get_Item; default;
    property Bounds: CMapXRectangle read Get_Bounds;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFeaturesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFeatures
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFeaturesProperties = class(TPersistent)
  private
    FServer:    TFeatures;
    function    GetDefaultInterface: CMapXFeatures;
    constructor Create(AServer: TFeatures);
  protected
    function Get_Item(Index: OleVariant): CMapXFeature;
    function Get_Bounds: CMapXRectangle;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXFeatures read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDatum provides a Create and CreateRemote method to          
// create instances of the default interface CMapXDatum exposed by              
// the CoClass Datum. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDatum = class
    class function Create: CMapXDatum;
    class function CreateRemote(const MachineName: string): CMapXDatum;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDatum
// Help String      : 
// Default Interface: CMapXDatum
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDatumProperties= class;
{$ENDIF}
  TDatum = class(TOleServer)
  private
    FIntf: CMapXDatum;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDatumProperties;
    function GetServerProperties: TDatumProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXDatum;
  protected
    procedure InitServerData; override;
    function Get_ShiftZ: Double;
    function Get_Ellipsoid: Smallint;
    function Get_ShiftX: Double;
    function Get_RotateX: Double;
    function Get_RotateY: Double;
    function Get_RotateZ: Double;
    function Get_ShiftY: Double;
    function Get_SemiMinorAxis: Double;
    function Get_PrimeMeridian: Double;
    function Get_SemiMajorAxis: Double;
    function Get_ScaleAdjust: Double;
    function Get_Flattening: Double;
    function Get_Eccentricity: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXDatum);
    procedure Disconnect; override;
    procedure SetFromList(DatumNum: Smallint);
    procedure Set_(Ellipsoid: Smallint; ShiftX: Double; ShiftY: Double; ShiftZ: Double; 
                   RotateX: Double; RotateY: Double; RotateZ: Double; ScaleAdjust: Double; 
                   PrimeMeridian: Double);
    property DefaultInterface: CMapXDatum read GetDefaultInterface;
    property ShiftZ: Double read Get_ShiftZ;
    property Ellipsoid: Smallint read Get_Ellipsoid;
    property ShiftX: Double read Get_ShiftX;
    property RotateX: Double read Get_RotateX;
    property RotateY: Double read Get_RotateY;
    property RotateZ: Double read Get_RotateZ;
    property ShiftY: Double read Get_ShiftY;
    property SemiMinorAxis: Double read Get_SemiMinorAxis;
    property PrimeMeridian: Double read Get_PrimeMeridian;
    property SemiMajorAxis: Double read Get_SemiMajorAxis;
    property ScaleAdjust: Double read Get_ScaleAdjust;
    property Flattening: Double read Get_Flattening;
    property Eccentricity: Double read Get_Eccentricity;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDatumProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDatum
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDatumProperties = class(TPersistent)
  private
    FServer:    TDatum;
    function    GetDefaultInterface: CMapXDatum;
    constructor Create(AServer: TDatum);
  protected
    function Get_ShiftZ: Double;
    function Get_Ellipsoid: Smallint;
    function Get_ShiftX: Double;
    function Get_RotateX: Double;
    function Get_RotateY: Double;
    function Get_RotateZ: Double;
    function Get_ShiftY: Double;
    function Get_SemiMinorAxis: Double;
    function Get_PrimeMeridian: Double;
    function Get_SemiMajorAxis: Double;
    function Get_ScaleAdjust: Double;
    function Get_Flattening: Double;
    function Get_Eccentricity: Double;
  public
    property DefaultInterface: CMapXDatum read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAffineTransform provides a Create and CreateRemote method to          
// create instances of the default interface CMapXAffineTransform exposed by              
// the CoClass AffineTransform. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAffineTransform = class
    class function Create: CMapXAffineTransform;
    class function CreateRemote(const MachineName: string): CMapXAffineTransform;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAffineTransform
// Help String      : 
// Default Interface: CMapXAffineTransform
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAffineTransformProperties= class;
{$ENDIF}
  TAffineTransform = class(TOleServer)
  private
    FIntf: CMapXAffineTransform;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAffineTransformProperties;
    function GetServerProperties: TAffineTransformProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXAffineTransform;
  protected
    procedure InitServerData; override;
    function Get_Units: MapUnitConstants;
    function Get_C: Double;
    function Get_B: Double;
    function Get_A: Double;
    function Get_D: Double;
    function Get_E: Double;
    function Get_F: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXAffineTransform);
    procedure Disconnect; override;
    procedure Set_(Units: MapUnitConstants; A: Double; B: Double; C: Double; D: Double; E: Double; 
                   F: Double);
    property DefaultInterface: CMapXAffineTransform read GetDefaultInterface;
    property Units: MapUnitConstants read Get_Units;
    property C: Double read Get_C;
    property B: Double read Get_B;
    property A: Double read Get_A;
    property D: Double read Get_D;
    property E: Double read Get_E;
    property F: Double read Get_F;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAffineTransformProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAffineTransform
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAffineTransformProperties = class(TPersistent)
  private
    FServer:    TAffineTransform;
    function    GetDefaultInterface: CMapXAffineTransform;
    constructor Create(AServer: TAffineTransform);
  protected
    function Get_Units: MapUnitConstants;
    function Get_C: Double;
    function Get_B: Double;
    function Get_A: Double;
    function Get_D: Double;
    function Get_E: Double;
    function Get_F: Double;
  public
    property DefaultInterface: CMapXAffineTransform read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoordSys provides a Create and CreateRemote method to          
// create instances of the default interface CMapXCoordSys exposed by              
// the CoClass CoordSys. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoordSys = class
    class function Create: CMapXCoordSys;
    class function CreateRemote(const MachineName: string): CMapXCoordSys;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoordSys
// Help String      : 
// Default Interface: CMapXCoordSys
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoordSysProperties= class;
{$ENDIF}
  TCoordSys = class(TOleServer)
  private
    FIntf: CMapXCoordSys;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoordSysProperties;
    function GetServerProperties: TCoordSysProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXCoordSys;
  protected
    procedure InitServerData; override;
    function Get_Datum: CMapXDatum;
    function Get_type_: CoordSysTypeConstants;
    function Get_Bounds: CMapXRectangle;
    function Get_StandardParallelOne: Double;
    function Get_OriginLatitude: Double;
    function Get_OriginLongitude: Double;
    function Get_StandardParallelTwo: Double;
    function Get_FalseNorthing: Double;
    function Get_ScaleFactor: Double;
    function Get_FalseEasting: Double;
    function Get_AffineTransform: CMapXAffineTransform;
    function Get_Units: MapUnitConstants;
    function Get_Azimuth: Double;
    function Get_Range: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXCoordSys);
    procedure Disconnect; override;
    function Clone: CMapXCoordSys;
    function PickCoordSys: WordBool; overload;
    function PickCoordSys(HelpFile: OleVariant): WordBool; overload;
    function PickCoordSys(HelpFile: OleVariant; HelpID: OleVariant): WordBool; overload;
    procedure Set_(Type_: CoordSysTypeConstants); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                   FalseNorthing: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                   FalseNorthing: OleVariant; Range: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                   FalseNorthing: OleVariant; Range: OleVariant; Bounds: OleVariant); overload;
    procedure Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                   OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                   StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                   Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                   FalseNorthing: OleVariant; Range: OleVariant; Bounds: OleVariant; 
                   AffineTransform: OleVariant); overload;
    property DefaultInterface: CMapXCoordSys read GetDefaultInterface;
    property Datum: CMapXDatum read Get_Datum;
    property type_: CoordSysTypeConstants read Get_type_;
    property Bounds: CMapXRectangle read Get_Bounds;
    property StandardParallelOne: Double read Get_StandardParallelOne;
    property OriginLatitude: Double read Get_OriginLatitude;
    property OriginLongitude: Double read Get_OriginLongitude;
    property StandardParallelTwo: Double read Get_StandardParallelTwo;
    property FalseNorthing: Double read Get_FalseNorthing;
    property ScaleFactor: Double read Get_ScaleFactor;
    property FalseEasting: Double read Get_FalseEasting;
    property AffineTransform: CMapXAffineTransform read Get_AffineTransform;
    property Units: MapUnitConstants read Get_Units;
    property Azimuth: Double read Get_Azimuth;
    property Range: Double read Get_Range;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoordSysProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoordSys
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoordSysProperties = class(TPersistent)
  private
    FServer:    TCoordSys;
    function    GetDefaultInterface: CMapXCoordSys;
    constructor Create(AServer: TCoordSys);
  protected
    function Get_Datum: CMapXDatum;
    function Get_type_: CoordSysTypeConstants;
    function Get_Bounds: CMapXRectangle;
    function Get_StandardParallelOne: Double;
    function Get_OriginLatitude: Double;
    function Get_OriginLongitude: Double;
    function Get_StandardParallelTwo: Double;
    function Get_FalseNorthing: Double;
    function Get_ScaleFactor: Double;
    function Get_FalseEasting: Double;
    function Get_AffineTransform: CMapXAffineTransform;
    function Get_Units: MapUnitConstants;
    function Get_Azimuth: Double;
    function Get_Range: Double;
  public
    property DefaultInterface: CMapXCoordSys read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBitmapSymbol provides a Create and CreateRemote method to          
// create instances of the default interface CMapXBitmapSymbol exposed by              
// the CoClass BitmapSymbol. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBitmapSymbol = class
    class function Create: CMapXBitmapSymbol;
    class function CreateRemote(const MachineName: string): CMapXBitmapSymbol;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBitmapSymbol
// Help String      : 
// Default Interface: CMapXBitmapSymbol
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBitmapSymbolProperties= class;
{$ENDIF}
  TBitmapSymbol = class(TOleServer)
  private
    FIntf: CMapXBitmapSymbol;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBitmapSymbolProperties;
    function GetServerProperties: TBitmapSymbolProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXBitmapSymbol;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXBitmapSymbol);
    procedure Disconnect; override;
    property DefaultInterface: CMapXBitmapSymbol read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property _Name: WideString read Get__Name write Set__Name;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBitmapSymbolProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBitmapSymbol
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBitmapSymbolProperties = class(TPersistent)
  private
    FServer:    TBitmapSymbol;
    function    GetDefaultInterface: CMapXBitmapSymbol;
    constructor Create(AServer: TBitmapSymbol);
  protected
    function Get_Name: WideString;
    function Get__Name: WideString;
    procedure Set__Name(const Value: WideString);
  public
    property DefaultInterface: CMapXBitmapSymbol read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFeatureFactory provides a Create and CreateRemote method to          
// create instances of the default interface CMapXFeatureFactory exposed by              
// the CoClass FeatureFactory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeatureFactory = class
    class function Create: CMapXFeatureFactory;
    class function CreateRemote(const MachineName: string): CMapXFeatureFactory;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFeatureFactory
// Help String      : 
// Default Interface: CMapXFeatureFactory
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFeatureFactoryProperties= class;
{$ENDIF}
  TFeatureFactory = class(TOleServer)
  private
    FIntf: CMapXFeatureFactory;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFeatureFactoryProperties;
    function GetServerProperties: TFeatureFactoryProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXFeatureFactory;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXFeatureFactory);
    procedure Disconnect; override;
    function BufferFeatures(const Source: IDispatch; Distance: Double): CMapXFeature; overload;
    function BufferFeatures(const Source: IDispatch; Distance: Double; Units: OleVariant): CMapXFeature; overload;
    function BufferFeatures(const Source: IDispatch; Distance: Double; Units: OleVariant; 
                            Resolution: OleVariant): CMapXFeature; overload;
    function CombineFeatures(const Source1: IDispatch): CMapXFeature; overload;
    function CombineFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature; overload;
    function IntersectFeatures(const Source1: IDispatch): CMapXFeature; overload;
    function IntersectFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature; overload;
    function EraseFeature(const Feature: IDispatch; const EraserFeature: IDispatch): CMapXFeature;
    function CreateSymbol: CMapXFeature; overload;
    function CreateSymbol(Point: OleVariant): CMapXFeature; overload;
    function CreateSymbol(Point: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function CreateRegion: CMapXFeature; overload;
    function CreateRegion(Points: OleVariant): CMapXFeature; overload;
    function CreateRegion(Points: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function CreateLine: CMapXFeature; overload;
    function CreateLine(Points: OleVariant): CMapXFeature; overload;
    function CreateLine(Points: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function CreateText: CMapXFeature; overload;
    function CreateText(Point: OleVariant): CMapXFeature; overload;
    function CreateText(Point: OleVariant; Caption: OleVariant): CMapXFeature; overload;
    function CreateText(Point: OleVariant; Caption: OleVariant; Position: OleVariant): CMapXFeature; overload;
    function CreateText(Point: OleVariant; Caption: OleVariant; Position: OleVariant; 
                        Style: OleVariant): CMapXFeature; overload;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch): CMapXFeature; overload;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch; Angle: OleVariant): CMapXFeature; overload;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch; Angle: OleVariant; 
                       Distance: OleVariant): CMapXFeature; overload;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch; Angle: OleVariant; 
                       Distance: OleVariant; Resolution: OleVariant): CMapXFeature; overload;
    function CreateArc(const Point1: IDispatch; const Point2: IDispatch; Angle: OleVariant; 
                       Distance: OleVariant; Resolution: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function CreateEllipticalRegion(const Rectangle: IDispatch): CMapXFeature; overload;
    function CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant): CMapXFeature; overload;
    function CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant; 
                                    Resolution: OleVariant): CMapXFeature; overload;
    function CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant; 
                                    Resolution: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                  Distance: Double): CMapXFeature; overload;
    function CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                  Distance: Double; Units: OleVariant): CMapXFeature; overload;
    function CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                  Distance: Double; Units: OleVariant; Resolution: OleVariant): CMapXFeature; overload;
    function CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                  Distance: Double; Units: OleVariant; Resolution: OleVariant; 
                                  Style: OleVariant): CMapXFeature; overload;
    function IntersectionTest(const Feature1: IDispatch; const Feature2: IDispatch): WordBool; overload;
    function IntersectionTest(const Feature1: IDispatch; const Feature2: IDispatch; Flag: OleVariant): WordBool; overload;
    function IntersectionPoints(const Feature1: IDispatch; const Feature2: IDispatch): CMapXPoints; overload;
    function IntersectionPoints(const Feature1: IDispatch; const Feature2: IDispatch; 
                                Flag: OleVariant): CMapXPoints; overload;
    function CreateCollectionFeature: CMapXFeature; overload;
    function CreateCollectionFeature(Source1: OleVariant): CMapXFeature; overload;
    function CreateCollectionFeature(Source1: OleVariant; Source2: OleVariant): CMapXFeature; overload;
    function CreateCollectionFeature(Source1: OleVariant; Source2: OleVariant; Source3: OleVariant): CMapXFeature; overload;
    function CreateMultipoint: CMapXFeature; overload;
    function CreateMultipoint(Points: OleVariant): CMapXFeature; overload;
    function CreateMultipoint(Points: OleVariant; Style: OleVariant): CMapXFeature; overload;
    function ThinFeature(const Source: CMapXFeature; BendTolerance: Double; 
                         DistanceTolerance: Double): CMapXFeature; overload;
    function ThinFeature(const Source: CMapXFeature; BendTolerance: Double; 
                         DistanceTolerance: Double; Units: OleVariant): CMapXFeature; overload;
    property DefaultInterface: CMapXFeatureFactory read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFeatureFactoryProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFeatureFactory
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFeatureFactoryProperties = class(TPersistent)
  private
    FServer:    TFeatureFactory;
    function    GetDefaultInterface: CMapXFeatureFactory;
    constructor Create(AServer: TFeatureFactory);
  protected
  public
    property DefaultInterface: CMapXFeatureFactory read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoResolveObjects provides a Create and CreateRemote method to          
// create instances of the default interface CMapXResolveObjects exposed by              
// the CoClass ResolveObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResolveObjects = class
    class function Create: CMapXResolveObjects;
    class function CreateRemote(const MachineName: string): CMapXResolveObjects;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TResolveObjects
// Help String      : 
// Default Interface: CMapXResolveObjects
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TResolveObjectsProperties= class;
{$ENDIF}
  TResolveObjects = class(TOleServer)
  private
    FIntf: CMapXResolveObjects;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TResolveObjectsProperties;
    function GetServerProperties: TResolveObjectsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXResolveObjects;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXResolveObject;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXResolveObjects);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXResolveObject;
    property DefaultInterface: CMapXResolveObjects read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXResolveObject read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TResolveObjectsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TResolveObjects
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TResolveObjectsProperties = class(TPersistent)
  private
    FServer:    TResolveObjects;
    function    GetDefaultInterface: CMapXResolveObjects;
    constructor Create(AServer: TResolveObjects);
  protected
    function Get_Item(Index: OleVariant): CMapXResolveObject;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXResolveObjects read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoResolveObject provides a Create and CreateRemote method to          
// create instances of the default interface CMapXResolveObject exposed by              
// the CoClass ResolveObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResolveObject = class
    class function Create: CMapXResolveObject;
    class function CreateRemote(const MachineName: string): CMapXResolveObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TResolveObject
// Help String      : 
// Default Interface: CMapXResolveObject
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TResolveObjectProperties= class;
{$ENDIF}
  TResolveObject = class(TOleServer)
  private
    FIntf: CMapXResolveObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TResolveObjectProperties;
    function GetServerProperties: TResolveObjectProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXResolveObject;
  protected
    procedure InitServerData; override;
    function Get_TableName: WideString;
    function Get_SourceMatch: Integer;
    function Get_TableMatch: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXResolveObject);
    procedure Disconnect; override;
    property DefaultInterface: CMapXResolveObject read GetDefaultInterface;
    property TableName: WideString read Get_TableName;
    property SourceMatch: Integer read Get_SourceMatch;
    property TableMatch: Integer read Get_TableMatch;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TResolveObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TResolveObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TResolveObjectProperties = class(TPersistent)
  private
    FServer:    TResolveObject;
    function    GetDefaultInterface: CMapXResolveObject;
    constructor Create(AServer: TResolveObject);
  protected
    function Get_TableName: WideString;
    function Get_SourceMatch: Integer;
    function Get_TableMatch: Integer;
  public
    property DefaultInterface: CMapXResolveObject read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRowValues provides a Create and CreateRemote method to          
// create instances of the default interface CMapXRowValues exposed by              
// the CoClass RowValues. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRowValues = class
    class function Create: CMapXRowValues;
    class function CreateRemote(const MachineName: string): CMapXRowValues;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRowValues
// Help String      : 
// Default Interface: CMapXRowValues
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRowValuesProperties= class;
{$ENDIF}
  TRowValues = class(TOleServer)
  private
    FIntf: CMapXRowValues;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TRowValuesProperties;
    function GetServerProperties: TRowValuesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXRowValues;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXRowValue;
    function Get_ReadOnly: WordBool;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXRowValues);
    procedure Disconnect; override;
    function Add(const RowValue: IDispatch): CMapXRowValue;
    function _Item(Index: OleVariant): CMapXRowValue;
    procedure Remove(Index: OleVariant);
    function Clone: CMapXRowValues;
    procedure RemoveAll;
    property DefaultInterface: CMapXRowValues read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXRowValue read Get_Item; default;
    property ReadOnly: WordBool read Get_ReadOnly;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRowValuesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRowValues
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRowValuesProperties = class(TPersistent)
  private
    FServer:    TRowValues;
    function    GetDefaultInterface: CMapXRowValues;
    constructor Create(AServer: TRowValues);
  protected
    function Get_Item(Index: OleVariant): CMapXRowValue;
    function Get_ReadOnly: WordBool;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXRowValues read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRowValue provides a Create and CreateRemote method to          
// create instances of the default interface CMapXRowValue exposed by              
// the CoClass RowValue. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRowValue = class
    class function Create: CMapXRowValue;
    class function CreateRemote(const MachineName: string): CMapXRowValue;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRowValue
// Help String      : 
// Default Interface: CMapXRowValue
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRowValueProperties= class;
{$ENDIF}
  TRowValue = class(TOleServer)
  private
    FIntf: CMapXRowValue;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TRowValueProperties;
    function GetServerProperties: TRowValueProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXRowValue;
  protected
    procedure InitServerData; override;
    function Get_ReadOnly: WordBool;
    function Get_Dataset: IDispatch;
    procedure Set_Dataset(const Value: IDispatch);
    function Get_Field: IDispatch;
    procedure Set_Field(const Value: IDispatch);
    function Get_Value: OleVariant;
    procedure Set_Value(Value: OleVariant);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXRowValue);
    procedure Disconnect; override;
    property DefaultInterface: CMapXRowValue read GetDefaultInterface;
    property ReadOnly: WordBool read Get_ReadOnly;
    property Dataset: IDispatch read Get_Dataset write Set_Dataset;
    property Field: IDispatch read Get_Field write Set_Field;
    property Value: OleVariant read Get_Value write Set_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRowValueProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRowValue
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRowValueProperties = class(TPersistent)
  private
    FServer:    TRowValue;
    function    GetDefaultInterface: CMapXRowValue;
    constructor Create(AServer: TRowValue);
  protected
    function Get_ReadOnly: WordBool;
    function Get_Dataset: IDispatch;
    procedure Set_Dataset(const Value: IDispatch);
    function Get_Field: IDispatch;
    procedure Set_Field(const Value: IDispatch);
    function Get_Value: OleVariant;
    procedure Set_Value(Value: OleVariant);
  public
    property DefaultInterface: CMapXRowValue read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoVariables provides a Create and CreateRemote method to          
// create instances of the default interface CMapXVariables exposed by              
// the CoClass Variables. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVariables = class
    class function Create: CMapXVariables;
    class function CreateRemote(const MachineName: string): CMapXVariables;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVariables
// Help String      : 
// Default Interface: CMapXVariables
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TVariablesProperties= class;
{$ENDIF}
  TVariables = class(TOleServer)
  private
    FIntf: CMapXVariables;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TVariablesProperties;
    function GetServerProperties: TVariablesProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXVariables;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXVariable;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXVariables);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXVariable;
    procedure Remove(Index: OleVariant);
    function Add(const Name: WideString; Value: OleVariant): CMapXVariable;
    function Clone: CMapXVariables;
    procedure RemoveAll;
    property DefaultInterface: CMapXVariables read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXVariable read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TVariablesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TVariables
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TVariablesProperties = class(TPersistent)
  private
    FServer:    TVariables;
    function    GetDefaultInterface: CMapXVariables;
    constructor Create(AServer: TVariables);
  protected
    function Get_Item(Index: OleVariant): CMapXVariable;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXVariables read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoVariable provides a Create and CreateRemote method to          
// create instances of the default interface CMapXVariable exposed by              
// the CoClass Variable. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVariable = class
    class function Create: CMapXVariable;
    class function CreateRemote(const MachineName: string): CMapXVariable;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVariable
// Help String      : 
// Default Interface: CMapXVariable
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TVariableProperties= class;
{$ENDIF}
  TVariable = class(TOleServer)
  private
    FIntf: CMapXVariable;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TVariableProperties;
    function GetServerProperties: TVariableProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXVariable;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_Value: OleVariant;
    procedure Set_Value(Value: OleVariant);
    function Get__Value: OleVariant;
    procedure Set__Value(Value: OleVariant);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXVariable);
    procedure Disconnect; override;
    property DefaultInterface: CMapXVariable read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property Value: OleVariant read Get_Value write Set_Value;
    property _Value: OleVariant read Get__Value write Set__Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TVariableProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TVariable
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TVariableProperties = class(TPersistent)
  private
    FServer:    TVariable;
    function    GetDefaultInterface: CMapXVariable;
    constructor Create(AServer: TVariable);
  protected
    function Get_Name: WideString;
    function Get_Value: OleVariant;
    procedure Set_Value(Value: OleVariant);
    function Get__Value: OleVariant;
    procedure Set__Value(Value: OleVariant);
  public
    property DefaultInterface: CMapXVariable read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLabels provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLabels exposed by              
// the CoClass Labels. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabels = class
    class function Create: CMapXLabels;
    class function CreateRemote(const MachineName: string): CMapXLabels;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabels
// Help String      : 
// Default Interface: CMapXLabels
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabelsProperties= class;
{$ENDIF}
  TLabels = class(TOleServer)
  private
    FIntf: CMapXLabels;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLabelsProperties;
    function GetServerProperties: TLabelsProperties;
{$ENDIF}
    function GetDefaultInterface: CMapXLabels;
  protected
    procedure InitServerData; override;
    function Get_Item(Index: OleVariant): CMapXLabel;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLabels);
    procedure Disconnect; override;
    function _Item(Index: OleVariant): CMapXLabel;
    property DefaultInterface: CMapXLabels read GetDefaultInterface;
    property Item[Index: OleVariant]: CMapXLabel read Get_Item; default;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabelsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabels
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabelsProperties = class(TPersistent)
  private
    FServer:    TLabels;
    function    GetDefaultInterface: CMapXLabels;
    constructor Create(AServer: TLabels);
  protected
    function Get_Item(Index: OleVariant): CMapXLabel;
    function Get_Count: Integer;
  public
    property DefaultInterface: CMapXLabels read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLabel_ provides a Create and CreateRemote method to          
// create instances of the default interface CMapXLabel exposed by              
// the CoClass Label_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabel_ = class
    class function Create: CMapXLabel;
    class function CreateRemote(const MachineName: string): CMapXLabel;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLabel_
// Help String      : 
// Default Interface: CMapXLabel
// Def. Intf. DISP? : Yes
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLabel_Properties= class;
{$ENDIF}
  TLabel_ = class(TOleServer)
  private
    FIntf: CMapXLabel;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLabel_Properties;
    function GetServerProperties: TLabel_Properties;
{$ENDIF}
    function GetDefaultInterface: CMapXLabel;
  protected
    procedure InitServerData; override;
    function Get_AnchorX: Double;
    procedure Set_AnchorX(Value: Double);
    function Get_AnchorY: Double;
    procedure Set_AnchorY(Value: Double);
    function Get_Angle: Smallint;
    procedure Set_Angle(Value: Smallint);
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_LineType: LineTypeConstants;
    procedure Set_LineType(Value: LineTypeConstants);
    function Get_MultiSegment: WordBool;
    procedure Set_MultiSegment(Value: WordBool);
    function Get_Offset: Integer;
    procedure Set_Offset(Value: Integer);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_Selected: WordBool;
    procedure Set_Selected(Value: WordBool);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_Drawn: WordBool;
    function Get_Edited: WordBool;
    function Get_EditedAnchor: WordBool;
    function Get_EditedAngle: WordBool;
    function Get_EditedCaption: WordBool;
    function Get_EditedLineStyle: WordBool;
    function Get_EditedLineType: WordBool;
    function Get_EditedMultiSegment: WordBool;
    function Get_EditedOffset: WordBool;
    function Get_EditedPosition: WordBool;
    function Get_EditedTextStyle: WordBool;
    function Get_EditedVisible: WordBool;
    function Get_Layer: CMapXLayer;
    function Get_FeatureKey: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: CMapXLabel);
    procedure Disconnect; override;
    property DefaultInterface: CMapXLabel read GetDefaultInterface;
    property Drawn: WordBool read Get_Drawn;
    property Edited: WordBool read Get_Edited;
    property EditedAnchor: WordBool read Get_EditedAnchor;
    property EditedAngle: WordBool read Get_EditedAngle;
    property EditedCaption: WordBool read Get_EditedCaption;
    property EditedLineStyle: WordBool read Get_EditedLineStyle;
    property EditedLineType: WordBool read Get_EditedLineType;
    property EditedMultiSegment: WordBool read Get_EditedMultiSegment;
    property EditedOffset: WordBool read Get_EditedOffset;
    property EditedPosition: WordBool read Get_EditedPosition;
    property EditedTextStyle: WordBool read Get_EditedTextStyle;
    property EditedVisible: WordBool read Get_EditedVisible;
    property Layer: CMapXLayer read Get_Layer;
    property FeatureKey: WideString read Get_FeatureKey;
    property AnchorX: Double read Get_AnchorX write Set_AnchorX;
    property AnchorY: Double read Get_AnchorY write Set_AnchorY;
    property Angle: Smallint read Get_Angle write Set_Angle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property LineType: LineTypeConstants read Get_LineType write Set_LineType;
    property MultiSegment: WordBool read Get_MultiSegment write Set_MultiSegment;
    property Offset: Integer read Get_Offset write Set_Offset;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Visible: WordBool read Get_Visible write Set_Visible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLabel_Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLabel_
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLabel_Properties = class(TPersistent)
  private
    FServer:    TLabel_;
    function    GetDefaultInterface: CMapXLabel;
    constructor Create(AServer: TLabel_);
  protected
    function Get_AnchorX: Double;
    procedure Set_AnchorX(Value: Double);
    function Get_AnchorY: Double;
    procedure Set_AnchorY(Value: Double);
    function Get_Angle: Smallint;
    procedure Set_Angle(Value: Smallint);
    function Get_Caption: WideString;
    procedure Set_Caption(const Value: WideString);
    function Get_LineType: LineTypeConstants;
    procedure Set_LineType(Value: LineTypeConstants);
    function Get_MultiSegment: WordBool;
    procedure Set_MultiSegment(Value: WordBool);
    function Get_Offset: Integer;
    procedure Set_Offset(Value: Integer);
    function Get_Position: PositionConstants;
    procedure Set_Position(Value: PositionConstants);
    function Get_Selected: WordBool;
    procedure Set_Selected(Value: WordBool);
    function Get_Style: CMapXStyle;
    procedure Set_Style(const Value: CMapXStyle);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_Drawn: WordBool;
    function Get_Edited: WordBool;
    function Get_EditedAnchor: WordBool;
    function Get_EditedAngle: WordBool;
    function Get_EditedCaption: WordBool;
    function Get_EditedLineStyle: WordBool;
    function Get_EditedLineType: WordBool;
    function Get_EditedMultiSegment: WordBool;
    function Get_EditedOffset: WordBool;
    function Get_EditedPosition: WordBool;
    function Get_EditedTextStyle: WordBool;
    function Get_EditedVisible: WordBool;
    function Get_Layer: CMapXLayer;
    function Get_FeatureKey: WideString;
  public
    property DefaultInterface: CMapXLabel read GetDefaultInterface;
  published
    property AnchorX: Double read Get_AnchorX write Set_AnchorX;
    property AnchorY: Double read Get_AnchorY write Set_AnchorY;
    property Angle: Smallint read Get_Angle write Set_Angle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property LineType: LineTypeConstants read Get_LineType write Set_LineType;
    property MultiSegment: WordBool read Get_MultiSegment write Set_MultiSegment;
    property Offset: Integer read Get_Offset write Set_Offset;
    property Position: PositionConstants read Get_Position write Set_Position;
    property Selected: WordBool read Get_Selected write Set_Selected;
    property Style: CMapXStyle read Get_Style write Set_Style;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoDataSets.Create: CMapXDatasets;
begin
  Result := CreateComObject(CLASS_DataSets) as CMapXDatasets;
end;

class function CoDataSets.CreateRemote(const MachineName: string): CMapXDatasets;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataSets) as CMapXDatasets;
end;

procedure TDataSets.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D4F-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D4E-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDataSets.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXDatasets;
  end;
end;

procedure TDataSets.ConnectTo(svrIntf: CMapXDatasets);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDataSets.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDataSets.GetDefaultInterface: CMapXDatasets;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDataSets.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDataSetsProperties.Create(Self);
{$ENDIF}
end;

destructor TDataSets.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDataSets.GetServerProperties: TDataSetsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDataSets.Get_Item(Index: OleVariant): CMapXDataset;
begin
    Result := DefaultInterface.Item[Index];
end;

function TDataSets.Get_BuildSourceRows: WordBool;
begin
  Result := DefaultInterface.BuildSourceRows;
end;

procedure TDataSets.Set_BuildSourceRows(Value: WordBool);
begin
  DefaultInterface.BuildSourceRows := Value;
end;

function TDataSets.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                 EmptyParam, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, EmptyParam, EmptyParam, EmptyParam, 
                                 EmptyParam, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                       GeoField: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, GeoField, EmptyParam, EmptyParam, 
                                 EmptyParam, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                       GeoField: OleVariant; SecondaryGeoField: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, GeoField, SecondaryGeoField, EmptyParam, 
                                 EmptyParam, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                       GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, GeoField, SecondaryGeoField, BindLayer, 
                                 EmptyParam, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                       GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant; 
                       Fields: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, GeoField, SecondaryGeoField, BindLayer, 
                                 Fields, EmptyParam);
end;

function TDataSets.Add(Type_: DatasetTypeConstants; SourceData: OleVariant; Name: OleVariant; 
                       GeoField: OleVariant; SecondaryGeoField: OleVariant; BindLayer: OleVariant; 
                       Fields: OleVariant; Dynamic: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Add(Type_, SourceData, Name, GeoField, SecondaryGeoField, BindLayer, 
                                 Fields, Dynamic);
end;

procedure TDataSets.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

function TDataSets._Item(Index: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface._Item(Index);
end;

function TDataSets.Restore(const Name: WideString; SourceData: OleVariant): CMapXDataset;
begin
  Result := DefaultInterface.Restore(Name, SourceData);
end;

procedure TDataSets.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

function TDataSets.Contains(Index: OleVariant): WordBool;
begin
  Result := DefaultInterface.Contains(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDataSetsProperties.Create(AServer: TDataSets);
begin
  inherited Create;
  FServer := AServer;
end;

function TDataSetsProperties.GetDefaultInterface: CMapXDatasets;
begin
  Result := FServer.DefaultInterface;
end;

function TDataSetsProperties.Get_Item(Index: OleVariant): CMapXDataset;
begin
    Result := DefaultInterface.Item[Index];
end;

function TDataSetsProperties.Get_BuildSourceRows: WordBool;
begin
  Result := DefaultInterface.BuildSourceRows;
end;

procedure TDataSetsProperties.Set_BuildSourceRows(Value: WordBool);
begin
  DefaultInterface.BuildSourceRows := Value;
end;

function TDataSetsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

procedure TMap.InitControlData;
const
  CEventDispIDs: array [0..17] of DWORD = (
    $FFFFFDA0, $00000001, $00000002, $00000003, $00000004, $00000005,
    $00000006, $00000007, $00000008, $00000009, $0000000A, $0000000B,
    $0000000C, $0000000D, $0000000E, $0000000F, $00000010, $00000011);
  CLicenseKey: array[0..61] of Word = ( $0075, $0051, $006E, $005A, $0069, $0032, $0073, $0046, $0077, $0032, $0032
    , $004C, $0030, $002D, $004D, $0052, $0061, $0038, $0070, $0059, $0058
    , $002D, $0031, $0045, $0032, $0050, $0038, $0030, $0036, $0035, $002D
    , $0035, $004E, $0035, $004D, $0033, $0034, $0035, $0039, $002D, $0033
    , $0043, $0039, $0033, $0034, $0032, $0032, $0050, $0030, $002D, $004D
    , $0030, $0034, $0039, $0036, $0039, $002D, $0036, $0035, $0036, $0032
    , $0000);
  CControlData: TControlData2 = (
    ClassID: '{B06B11B1-EBEC-4972-B786-369EB41C18B2}';
    EventIID: '{9D6ED198-5910-11D2-98A6-00A0C9742CCA}';
    EventCount: 18;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000001;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnError) - Cardinal(Self);
end;

procedure TMap.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as CMapX;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TMap.GetControlInterface: CMapX;
begin
  CreateControl;
  Result := FIntf;
end;

function TMap.Get_FeatureFactory: CMapXFeatureFactory;
begin
  Result := DefaultInterface.FeatureFactory;
end;

function TMap.Get_SelectionStyle: CMapXStyle;
begin
  Result := DefaultInterface.SelectionStyle;
end;

procedure TMap.Set_SelectionStyle(const Value: CMapXStyle);
begin
  DefaultInterface.SelectionStyle := Value;
end;

function TMap.Get_NumericCoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.NumericCoordSys;
end;

procedure TMap.Set_NumericCoordSys(const Value: CMapXCoordSys);
begin
  DefaultInterface.NumericCoordSys := Value;
end;

function TMap.Get_Layers: CMapXLayers;
begin
  Result := DefaultInterface.Layers;
end;

function TMap.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

procedure TMap.Set_Bounds(const Value: CMapXRectangle);
begin
  DefaultInterface.Bounds := Value;
end;

function TMap.Get_DataSets: CMapXDatasets;
begin
  Result := DefaultInterface.DataSets;
end;

function TMap.Get_DisplayCoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.DisplayCoordSys;
end;

procedure TMap.Set_DisplayCoordSys(const Value: CMapXCoordSys);
begin
  DefaultInterface.DisplayCoordSys := Value;
end;

function TMap.Get_Geosets: CMapXGeosets;
begin
  Result := DefaultInterface.Geosets;
end;

function TMap.Get_Title: CMapXTitle;
begin
  Result := DefaultInterface.Title;
end;

function TMap.Get_DefaultStyle: CMapXStyle;
begin
  Result := DefaultInterface.DefaultStyle;
end;

procedure TMap.Set_DefaultStyle(const Value: CMapXStyle);
begin
  DefaultInterface.DefaultStyle := Value;
end;

function TMap.Get_Dataset: IRowCursor;
begin
  Result := DefaultInterface.Dataset;
end;

procedure TMap.Set_Dataset(const Value: IRowCursor);
begin
  DefaultInterface.Dataset := Value;
end;

function TMap.Get_Annotations: CMapXAnnotations;
begin
  Result := DefaultInterface.Annotations;
end;

procedure TMap.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

function TMap.LoadMIProWSAndGST(const WorkSpace: WideString; const GeoSet: WideString): WordBool;
begin
  Result := DefaultInterface.LoadMIProWSAndGST(WorkSpace, GeoSet);
end;

function TMap.LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool;
begin
  Result := DefaultInterface.LoadXMLWorkSpace(XMLWorkSpace);
end;

function TMap.MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X: OleVariant; 
                                            var Y: OleVariant): WordBool;
begin
  Result := DefaultInterface.MilitaryGridReferenceToPointV(MGRSPoint, X, Y);
end;

function TMap.MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X: Double; var Y: Double): WordBool;
begin
  Result := DefaultInterface.MilitaryGridReferenceToPoint(MGRSPoint, X, Y);
end;

function TMap.MilitaryGridReferenceFromPoint(X: OleVariant; Y: OleVariant): WideString;
begin
  Result := DefaultInterface.MilitaryGridReferenceFromPoint(X, Y);
end;

function TMap.ConvertCoordP(X: OleVariant; Y: OleVariant; Direction: ConversionConstants): CMapXPoint;
begin
  Result := DefaultInterface.ConvertCoordP(X, Y, Direction);
end;

procedure TMap.Pan(ScreenX: Single; ScreenY: Single);
begin
  DefaultInterface.Pan(ScreenX, ScreenY);
end;

procedure TMap.Die(const Password: WideString);
begin
  DefaultInterface.Die(Password);
end;

function TMap.ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; 
                             lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool;
begin
  Result := DefaultInterface.ExportMapToMTF(Destination, sMapDataCSys, lMapDataCSysPrecision, 
                                            bCompressMapData);
end;

procedure TMap.SaveMapAsGeoset(const Name: WideString; const FileSpec: WideString);
begin
  DefaultInterface.SaveMapAsGeoset(Name, FileSpec);
end;

function TMap.GetControl: Integer;
begin
  Result := DefaultInterface.GetControl;
end;

function TMap.ClipLineV(var X1: OleVariant; var Y1: OleVariant; var X2: OleVariant; 
                        var Y2: OleVariant): WordBool;
begin
  Result := DefaultInterface.ClipLineV(X1, Y1, X2, Y2);
end;

function TMap.ClipLine(var X1: Double; var Y1: Double; var X2: Double; var Y2: Double): WordBool;
begin
  Result := DefaultInterface.ClipLine(X1, Y1, X2, Y2);
end;

function TMap.IsPointVisible(X: Double; Y: Double): WordBool;
begin
  Result := DefaultInterface.IsPointVisible(X, Y);
end;

procedure TMap.SetSize(Width: Integer; Height: Integer);
begin
  DefaultInterface.SetSize(Width, Height);
end;

procedure TMap.ConvertCoordV(var ScreenX: OleVariant; var ScreenY: OleVariant; 
                             var MapX: OleVariant; var MapY: OleVariant; 
                             Direction: ConversionConstants);
begin
  DefaultInterface.ConvertCoordV(ScreenX, ScreenY, MapX, MapY, Direction);
end;

procedure TMap.PropertyPage;
begin
  DefaultInterface.PropertyPage;
end;

procedure TMap.ExportMap(const Destination: WideString; Format: ExportFormatConstants);
begin
  DefaultInterface.ExportMap(Destination, Format, EmptyParam, EmptyParam);
end;

procedure TMap.ExportMap(const Destination: WideString; Format: ExportFormatConstants; 
                         Width: OleVariant);
begin
  DefaultInterface.ExportMap(Destination, Format, Width, EmptyParam);
end;

procedure TMap.ExportMap(const Destination: WideString; Format: ExportFormatConstants; 
                         Width: OleVariant; Height: OleVariant);
begin
  DefaultInterface.ExportMap(Destination, Format, Width, Height);
end;

procedure TMap.PrintMap(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer);
begin
  DefaultInterface.PrintMap(hDC, X, Y, W, H);
end;

procedure TMap.Refresh;
begin
  DefaultInterface.Refresh;
end;

function TMap.Distance(X1: Double; Y1: Double; X2: Double; Y2: Double): Double;
begin
  Result := DefaultInterface.Distance(X1, Y1, X2, Y2);
end;

procedure TMap.CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant);
begin
  DefaultInterface.CreateCustomTool(ToolNumber, Type_, Cursor, EmptyParam, EmptyParam, EmptyParam);
end;

procedure TMap.CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                                ShiftCursor: OleVariant);
begin
  DefaultInterface.CreateCustomTool(ToolNumber, Type_, Cursor, ShiftCursor, EmptyParam, EmptyParam);
end;

procedure TMap.CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                                ShiftCursor: OleVariant; CtrlCursor: OleVariant);
begin
  DefaultInterface.CreateCustomTool(ToolNumber, Type_, Cursor, ShiftCursor, CtrlCursor, EmptyParam);
end;

procedure TMap.CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor: OleVariant; 
                                ShiftCursor: OleVariant; CtrlCursor: OleVariant; 
                                bInfoTips: OleVariant);
begin
  DefaultInterface.CreateCustomTool(ToolNumber, Type_, Cursor, ShiftCursor, CtrlCursor, bInfoTips);
end;

procedure TMap.ZoomTo(Zoom: Double; X: Double; Y: Double);
begin
  DefaultInterface.ZoomTo(Zoom, X, Y);
end;

procedure TMap.ConvertCoord(var ScreenX: Single; var ScreenY: Single; var MapX: Double; 
                            var MapY: Double; Direction: ConversionConstants);
begin
  DefaultInterface.ConvertCoord(ScreenX, ScreenY, MapX, MapY, Direction);
end;

class function CoLayers.Create: CMapXLayers;
begin
  Result := CreateComObject(CLASS_Layers) as CMapXLayers;
end;

class function CoLayers.CreateRemote(const MachineName: string): CMapXLayers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Layers) as CMapXLayers;
end;

procedure TLayers.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D43-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D42-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLayers.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLayers;
  end;
end;

procedure TLayers.ConnectTo(svrIntf: CMapXLayers);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLayers.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLayers.GetDefaultInterface: CMapXLayers;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLayers.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLayersProperties.Create(Self);
{$ENDIF}
end;

destructor TLayers.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLayers.GetServerProperties: TLayersProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLayers.Get_Item(Index: OleVariant): CMapXLayer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLayers.Get_ClippedBounds: CMapXRectangle;
begin
  Result := DefaultInterface.ClippedBounds;
end;

function TLayers.Get_InsertionLayer: CMapXLayer;
begin
  Result := DefaultInterface.InsertionLayer;
end;

procedure TLayers.Set_InsertionLayer(const Value: CMapXLayer);
begin
  DefaultInterface.InsertionLayer := Value;
end;

function TLayers.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TLayers.Get_AnimationLayer: CMapXLayer;
begin
  Result := DefaultInterface.AnimationLayer;
end;

procedure TLayers.Set_AnimationLayer(const Value: CMapXLayer);
begin
  DefaultInterface.AnimationLayer := Value;
end;

function TLayers.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TLayers.Move(From: Smallint; To_: Smallint): WordBool;
begin
  Result := DefaultInterface.Move(From, To_);
end;

procedure TLayers.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

function TLayers.AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                                const Query: WideString): CMapXLayer;
begin
  Result := DefaultInterface.AddServerLayer(Name, ConnectString, Query, EmptyParam, EmptyParam);
end;

function TLayers.AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                                const Query: WideString; Position: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.AddServerLayer(Name, ConnectString, Query, Position, EmptyParam);
end;

function TLayers.AddServerLayer(const Name: WideString; const ConnectString: WideString; 
                                const Query: WideString; Position: OleVariant; Options: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.AddServerLayer(Name, ConnectString, Query, Position, Options);
end;

function TLayers.Add(LayerInfo: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.Add(LayerInfo, EmptyParam);
end;

function TLayers.Add(LayerInfo: OleVariant; Position: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.Add(LayerInfo, Position);
end;

procedure TLayers.AddGeoSetLayers(const GeoSetName: WideString);
begin
  DefaultInterface.AddGeoSetLayers(GeoSetName);
end;

procedure TLayers.ClearSelection;
begin
  DefaultInterface.ClearSelection;
end;

function TLayers._Item(Index: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface._Item(Index);
end;

function TLayers.CreateLayer(const Name: WideString): CMapXLayer;
begin
  Result := DefaultInterface.CreateLayer(Name, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TLayers.CreateLayer(const Name: WideString; FileSpec: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.CreateLayer(Name, FileSpec, EmptyParam, EmptyParam, EmptyParam);
end;

function TLayers.CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.CreateLayer(Name, FileSpec, Position, EmptyParam, EmptyParam);
end;

function TLayers.CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant; 
                             KeyLength: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.CreateLayer(Name, FileSpec, Position, KeyLength, EmptyParam);
end;

function TLayers.CreateLayer(const Name: WideString; FileSpec: OleVariant; Position: OleVariant; 
                             KeyLength: OleVariant; CoordSys: OleVariant): CMapXLayer;
begin
  Result := DefaultInterface.CreateLayer(Name, FileSpec, Position, KeyLength, CoordSys);
end;

function TLayers.AddUserDrawLayer(const Name: WideString; Position: Smallint): CMapXLayer;
begin
  Result := DefaultInterface.AddUserDrawLayer(Name, Position);
end;

function TLayers.LayersDlg: WordBool;
begin
  Result := DefaultInterface.LayersDlg(EmptyParam, EmptyParam);
end;

function TLayers.LayersDlg(HelpFile: OleVariant): WordBool;
begin
  Result := DefaultInterface.LayersDlg(HelpFile, EmptyParam);
end;

function TLayers.LayersDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool;
begin
  Result := DefaultInterface.LayersDlg(HelpFile, HelpID);
end;

procedure TLayers.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLayersProperties.Create(AServer: TLayers);
begin
  inherited Create;
  FServer := AServer;
end;

function TLayersProperties.GetDefaultInterface: CMapXLayers;
begin
  Result := FServer.DefaultInterface;
end;

function TLayersProperties.Get_Item(Index: OleVariant): CMapXLayer;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLayersProperties.Get_ClippedBounds: CMapXRectangle;
begin
  Result := DefaultInterface.ClippedBounds;
end;

function TLayersProperties.Get_InsertionLayer: CMapXLayer;
begin
  Result := DefaultInterface.InsertionLayer;
end;

procedure TLayersProperties.Set_InsertionLayer(const Value: CMapXLayer);
begin
  DefaultInterface.InsertionLayer := Value;
end;

function TLayersProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TLayersProperties.Get_AnimationLayer: CMapXLayer;
begin
  Result := DefaultInterface.AnimationLayer;
end;

procedure TLayersProperties.Set_AnimationLayer(const Value: CMapXLayer);
begin
  DefaultInterface.AnimationLayer := Value;
end;

function TLayersProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoLayerInfo.Create: CMapXLayerInfo;
begin
  Result := CreateComObject(CLASS_LayerInfo) as CMapXLayerInfo;
end;

class function CoLayerInfo.CreateRemote(const MachineName: string): CMapXLayerInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayerInfo) as CMapXLayerInfo;
end;

procedure TLayerInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{40E661C9-0975-4060-94B4-B870BB9DBCAA}';
    IntfIID:   '{30D28170-FE33-11D2-9878-0060089F59A5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLayerInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLayerInfo;
  end;
end;

procedure TLayerInfo.ConnectTo(svrIntf: CMapXLayerInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLayerInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLayerInfo.GetDefaultInterface: CMapXLayerInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLayerInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLayerInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TLayerInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLayerInfo.GetServerProperties: TLayerInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TLayerInfo.Set_Parameter(const ParamName: WideString; Param2: OleVariant);
begin
  DefaultInterface.Parameter[ParamName] := Param2;
end;

function TLayerInfo.Get_Parameter(const ParamName: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Parameter;
end;

function TLayerInfo.Get_type_: LayerInfoTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TLayerInfo.Set_type_(Value: LayerInfoTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

procedure TLayerInfo.AddParameter(const ParamName: WideString; Param: OleVariant);
begin
  DefaultInterface.AddParameter(ParamName, Param);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLayerInfoProperties.Create(AServer: TLayerInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TLayerInfoProperties.GetDefaultInterface: CMapXLayerInfo;
begin
  Result := FServer.DefaultInterface;
end;

procedure TLayerInfoProperties.Set_Parameter(const ParamName: WideString; Param2: OleVariant);
begin
  DefaultInterface.Parameter[ParamName] := Param2;
end;

function TLayerInfoProperties.Get_Parameter(const ParamName: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Parameter;
end;

function TLayerInfoProperties.Get_type_: LayerInfoTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TLayerInfoProperties.Set_type_(Value: LayerInfoTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

{$ENDIF}

class function CoLayer.Create: CMapXLayer;
begin
  Result := CreateComObject(CLASS_Layer) as CMapXLayer;
end;

class function CoLayer.CreateRemote(const MachineName: string): CMapXLayer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Layer) as CMapXLayer;
end;

procedure TLayer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D49-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D48-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLayer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLayer;
  end;
end;

procedure TLayer.ConnectTo(svrIntf: CMapXLayer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLayer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLayer.GetDefaultInterface: CMapXLayer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLayer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLayerProperties.Create(Self);
{$ENDIF}
end;

destructor TLayer.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLayer.GetServerProperties: TLayerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLayer.Get_NoFeatures: CMapXFeatures;
begin
    Result := DefaultInterface.NoFeatures;
end;

function TLayer.Get_AllFeatures: CMapXFeatures;
begin
    Result := DefaultInterface.AllFeatures;
end;

function TLayer.Get_Labels: CMapXLabels;
begin
  Result := DefaultInterface.Labels;
end;

function TLayer.Get_ClippedBounds: CMapXRectangle;
begin
  Result := DefaultInterface.ClippedBounds;
end;

function TLayer.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TLayer.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

function TLayer.Get_ShowLineDirection: WordBool;
begin
  Result := DefaultInterface.ShowLineDirection;
end;

procedure TLayer.Set_ShowLineDirection(Value: WordBool);
begin
  DefaultInterface.ShowLineDirection := Value;
end;

function TLayer.Get_ShowCentroids: WordBool;
begin
  Result := DefaultInterface.ShowCentroids;
end;

procedure TLayer.Set_ShowCentroids(Value: WordBool);
begin
  DefaultInterface.ShowCentroids := Value;
end;

function TLayer.Get_ShowNodes: WordBool;
begin
  Result := DefaultInterface.ShowNodes;
end;

procedure TLayer.Set_ShowNodes(Value: WordBool);
begin
  DefaultInterface.ShowNodes := Value;
end;

function TLayer.Get_DataSets: CMapXDatasets;
begin
  Result := DefaultInterface.DataSets;
end;

function TLayer.Get_DrawLabelsAfter: WordBool;
begin
  Result := DefaultInterface.DrawLabelsAfter;
end;

procedure TLayer.Set_DrawLabelsAfter(Value: WordBool);
begin
  DefaultInterface.DrawLabelsAfter := Value;
end;

function TLayer.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TLayer.Get_CoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.CoordSys;
end;

function TLayer.Get_KeyField: WideString;
begin
  Result := DefaultInterface.KeyField;
end;

procedure TLayer.Set_KeyField(const Value: WideString);
begin
  DefaultInterface.KeyField := Value;
end;

function TLayer.Get_type_: LayerTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TLayer.Get_Find: CMapXLayerFind;
begin
  Result := DefaultInterface.Find;
end;

function TLayer.Get_PredominantFeatureType: FeatureTypeConstants;
begin
  Result := DefaultInterface.PredominantFeatureType;
end;

function TLayer.Get_Selection: CMapXSelection;
begin
  Result := DefaultInterface.Selection;
end;

function TLayer.Get_ZoomMax: Double;
begin
  Result := DefaultInterface.ZoomMax;
end;

procedure TLayer.Set_ZoomMax(Value: Double);
begin
  DefaultInterface.ZoomMax := Value;
end;

function TLayer.Get_ZoomMin: Double;
begin
  Result := DefaultInterface.ZoomMin;
end;

procedure TLayer.Set_ZoomMin(Value: Double);
begin
  DefaultInterface.ZoomMin := Value;
end;

function TLayer.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLayer.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLayer.Get_OverrideStyle: WordBool;
begin
  Result := DefaultInterface.OverrideStyle;
end;

procedure TLayer.Set_OverrideStyle(Value: WordBool);
begin
  DefaultInterface.OverrideStyle := Value;
end;

function TLayer.Get_ZoomLayer: WordBool;
begin
  Result := DefaultInterface.ZoomLayer;
end;

procedure TLayer.Set_ZoomLayer(Value: WordBool);
begin
  DefaultInterface.ZoomLayer := Value;
end;

function TLayer.Get_AutoLabel: WordBool;
begin
  Result := DefaultInterface.AutoLabel;
end;

procedure TLayer.Set_AutoLabel(Value: WordBool);
begin
  DefaultInterface.AutoLabel := Value;
end;

function TLayer.Get_LabelProperties: CMapXLabelProperties;
begin
  Result := DefaultInterface.LabelProperties;
end;

function TLayer.Get_FileSpec: WideString;
begin
  Result := DefaultInterface.FileSpec;
end;

function TLayer.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TLayer.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

function TLayer.Get_Selectable: WordBool;
begin
  Result := DefaultInterface.Selectable;
end;

procedure TLayer.Set_Selectable(Value: WordBool);
begin
  DefaultInterface.Selectable := Value;
end;

function TLayer.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLayer.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLayer.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TLayer.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

function TLayer.SupportsPack(PackType: LayerPackConstant): WordBool;
begin
  Result := DefaultInterface.SupportsPack(PackType);
end;

function TLayer.CreateAllFeaturesConstraint: CMapXAllFeaturesConstraint;
begin
  Result := DefaultInterface.CreateAllFeaturesConstraint;
end;

procedure TLayer.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TLayer.Pack(PackType: LayerPackConstant);
begin
  DefaultInterface.Pack(PackType);
end;

function TLayer.FeatureKeyFromFeatureName(const strKeyValue: WideString): WideString;
begin
  Result := DefaultInterface.FeatureKeyFromFeatureName(strKeyValue);
end;

function TLayer.GetFeatureByKey(const FeatureKey: WideString): CMapXFeature;
begin
  Result := DefaultInterface.GetFeatureByKey(FeatureKey);
end;

function TLayer.CreateFeaturesConstraint: CMapXFeaturesConstraint;
begin
  Result := DefaultInterface.CreateFeaturesConstraint;
end;

procedure TLayer.BeginAccess(BeginAccessType: LayerBeginAccessConstants);
begin
  DefaultInterface.BeginAccess(BeginAccessType);
end;

function TLayer.Search(const strWhere: WideString): CMapXFeatures;
begin
  Result := DefaultInterface.Search(strWhere, EmptyParam);
end;

function TLayer.Search(const strWhere: WideString; Variables: OleVariant): CMapXFeatures;
begin
  Result := DefaultInterface.Search(strWhere, Variables);
end;

procedure TLayer.LabelAtPoint(X: Double; Y: Double);
begin
  DefaultInterface.LabelAtPoint(X, Y);
end;

procedure TLayer.EndAccess;
begin
  DefaultInterface.EndAccess(EmptyParam);
end;

procedure TLayer.EndAccess(EndAccessType: OleVariant);
begin
  DefaultInterface.EndAccess(EndAccessType);
end;

function TLayer.GetFeatureByID(FeatureID: Integer): CMapXFeature;
begin
  Result := DefaultInterface.GetFeatureByID(FeatureID);
end;

procedure TLayer.DrilldownReset(const strLevel: WideString);
begin
  DefaultInterface.DrilldownReset(strLevel);
end;

function TLayer.FeatureIDFromFeatureName(const strKeyValue: WideString): Integer;
begin
  Result := DefaultInterface.FeatureIDFromFeatureName(strKeyValue);
end;

function TLayer.CreateBoundsConstraint: CMapXBoundsConstraint;
begin
  Result := DefaultInterface.CreateBoundsConstraint;
end;

function TLayer.GetDrilldownFeaturesByID(const strLevel: WideString; FeatureID: OleVariant): CMapXFeatures;
begin
  Result := DefaultInterface.GetDrilldownFeaturesByID(strLevel, FeatureID);
end;

procedure TLayer.DrillDownAddFeatures(const Level: WideString; FeatureKeys: OleVariant);
begin
  DefaultInterface.DrillDownAddFeatures(Level, FeatureKeys);
end;

procedure TLayer.DrillDownRemoveFeatures(const Level: WideString; FeatureKeys: OleVariant);
begin
  DefaultInterface.DrillDownRemoveFeatures(Level, FeatureKeys);
end;

function TLayer.SearchAtPoint(const Point: IDispatch): CMapXFeatures;
begin
  Result := DefaultInterface.SearchAtPoint(Point, EmptyParam);
end;

function TLayer.SearchAtPoint(const Point: IDispatch; SearchResultFlags: OleVariant): CMapXFeatures;
begin
  Result := DefaultInterface.SearchAtPoint(Point, SearchResultFlags);
end;

function TLayer.SearchWithinFeature(const Feature: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures;
begin
  Result := DefaultInterface.SearchWithinFeature(Feature, SearchType);
end;

function TLayer.SearchWithinRectangle(const Rectangle: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures;
begin
  Result := DefaultInterface.SearchWithinRectangle(Rectangle, SearchType);
end;

function TLayer.SearchWithinDistance(const Source: IDispatch; Distance: Double; 
                                     Units: MapUnitConstants; SearchType: SearchTypeConstants): CMapXFeatures;
begin
  Result := DefaultInterface.SearchWithinDistance(Source, Distance, Units, SearchType);
end;

procedure TLayer.Invalidate;
begin
  DefaultInterface.Invalidate(EmptyParam);
end;

procedure TLayer.Invalidate(InvalidRect: OleVariant);
begin
  DefaultInterface.Invalidate(InvalidRect);
end;

procedure TLayer.DeleteFeature(Target: OleVariant);
begin
  DefaultInterface.DeleteFeature(Target);
end;

function TLayer.AddFeature(const SourceFeature: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.AddFeature(SourceFeature, EmptyParam);
end;

function TLayer.AddFeature(const SourceFeature: IDispatch; RowValues: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.AddFeature(SourceFeature, RowValues);
end;

procedure TLayer.UpdateFeature(Target: OleVariant);
begin
  DefaultInterface.UpdateFeature(Target, EmptyParam, EmptyParam);
end;

procedure TLayer.UpdateFeature(Target: OleVariant; Source: OleVariant);
begin
  DefaultInterface.UpdateFeature(Target, Source, EmptyParam);
end;

procedure TLayer.UpdateFeature(Target: OleVariant; Source: OleVariant; RowValues: OleVariant);
begin
  DefaultInterface.UpdateFeature(Target, Source, RowValues);
end;

procedure TLayer.ClearCustomLabels;
begin
  DefaultInterface.ClearCustomLabels;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLayerProperties.Create(AServer: TLayer);
begin
  inherited Create;
  FServer := AServer;
end;

function TLayerProperties.GetDefaultInterface: CMapXLayer;
begin
  Result := FServer.DefaultInterface;
end;

function TLayerProperties.Get_NoFeatures: CMapXFeatures;
begin
    Result := DefaultInterface.NoFeatures;
end;

function TLayerProperties.Get_AllFeatures: CMapXFeatures;
begin
    Result := DefaultInterface.AllFeatures;
end;

function TLayerProperties.Get_Labels: CMapXLabels;
begin
  Result := DefaultInterface.Labels;
end;

function TLayerProperties.Get_ClippedBounds: CMapXRectangle;
begin
  Result := DefaultInterface.ClippedBounds;
end;

function TLayerProperties.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TLayerProperties.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

function TLayerProperties.Get_ShowLineDirection: WordBool;
begin
  Result := DefaultInterface.ShowLineDirection;
end;

procedure TLayerProperties.Set_ShowLineDirection(Value: WordBool);
begin
  DefaultInterface.ShowLineDirection := Value;
end;

function TLayerProperties.Get_ShowCentroids: WordBool;
begin
  Result := DefaultInterface.ShowCentroids;
end;

procedure TLayerProperties.Set_ShowCentroids(Value: WordBool);
begin
  DefaultInterface.ShowCentroids := Value;
end;

function TLayerProperties.Get_ShowNodes: WordBool;
begin
  Result := DefaultInterface.ShowNodes;
end;

procedure TLayerProperties.Set_ShowNodes(Value: WordBool);
begin
  DefaultInterface.ShowNodes := Value;
end;

function TLayerProperties.Get_DataSets: CMapXDatasets;
begin
  Result := DefaultInterface.DataSets;
end;

function TLayerProperties.Get_DrawLabelsAfter: WordBool;
begin
  Result := DefaultInterface.DrawLabelsAfter;
end;

procedure TLayerProperties.Set_DrawLabelsAfter(Value: WordBool);
begin
  DefaultInterface.DrawLabelsAfter := Value;
end;

function TLayerProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TLayerProperties.Get_CoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.CoordSys;
end;

function TLayerProperties.Get_KeyField: WideString;
begin
  Result := DefaultInterface.KeyField;
end;

procedure TLayerProperties.Set_KeyField(const Value: WideString);
begin
  DefaultInterface.KeyField := Value;
end;

function TLayerProperties.Get_type_: LayerTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TLayerProperties.Get_Find: CMapXLayerFind;
begin
  Result := DefaultInterface.Find;
end;

function TLayerProperties.Get_PredominantFeatureType: FeatureTypeConstants;
begin
  Result := DefaultInterface.PredominantFeatureType;
end;

function TLayerProperties.Get_Selection: CMapXSelection;
begin
  Result := DefaultInterface.Selection;
end;

function TLayerProperties.Get_ZoomMax: Double;
begin
  Result := DefaultInterface.ZoomMax;
end;

procedure TLayerProperties.Set_ZoomMax(Value: Double);
begin
  DefaultInterface.ZoomMax := Value;
end;

function TLayerProperties.Get_ZoomMin: Double;
begin
  Result := DefaultInterface.ZoomMin;
end;

procedure TLayerProperties.Set_ZoomMin(Value: Double);
begin
  DefaultInterface.ZoomMin := Value;
end;

function TLayerProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLayerProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLayerProperties.Get_OverrideStyle: WordBool;
begin
  Result := DefaultInterface.OverrideStyle;
end;

procedure TLayerProperties.Set_OverrideStyle(Value: WordBool);
begin
  DefaultInterface.OverrideStyle := Value;
end;

function TLayerProperties.Get_ZoomLayer: WordBool;
begin
  Result := DefaultInterface.ZoomLayer;
end;

procedure TLayerProperties.Set_ZoomLayer(Value: WordBool);
begin
  DefaultInterface.ZoomLayer := Value;
end;

function TLayerProperties.Get_AutoLabel: WordBool;
begin
  Result := DefaultInterface.AutoLabel;
end;

procedure TLayerProperties.Set_AutoLabel(Value: WordBool);
begin
  DefaultInterface.AutoLabel := Value;
end;

function TLayerProperties.Get_LabelProperties: CMapXLabelProperties;
begin
  Result := DefaultInterface.LabelProperties;
end;

function TLayerProperties.Get_FileSpec: WideString;
begin
  Result := DefaultInterface.FileSpec;
end;

function TLayerProperties.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TLayerProperties.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

function TLayerProperties.Get_Selectable: WordBool;
begin
  Result := DefaultInterface.Selectable;
end;

procedure TLayerProperties.Set_Selectable(Value: WordBool);
begin
  DefaultInterface.Selectable := Value;
end;

function TLayerProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLayerProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLayerProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TLayerProperties.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

{$ENDIF}

class function CoField.Create: CMapXField;
begin
  Result := CreateComObject(CLASS_Field) as CMapXField;
end;

class function CoField.CreateRemote(const MachineName: string): CMapXField;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Field) as CMapXField;
end;

procedure TField.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D4D-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D4C-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TField.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXField;
  end;
end;

procedure TField.ConnectTo(svrIntf: CMapXField);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TField.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TField.GetDefaultInterface: CMapXField;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TField.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFieldProperties.Create(Self);
{$ENDIF}
end;

destructor TField.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TField.GetServerProperties: TFieldProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TField.Set_Width(v:smallint);
begin
  DefaultInterface.Width:=v;
end;

procedure TField.Set_Decimals(v:smallint);
begin
  DefaultInterface.Decimals:=v;
end;


function TField.Get_Width: Smallint;
begin
    Result := DefaultInterface.Width;
end;

function TField.Get_Decimals: Smallint;
begin
    Result := DefaultInterface.Decimals;
end;

function TField.Get_TypeEx: FieldTypeConstants;
begin
  Result := DefaultInterface.TypeEx;
end;

function TField.Get_Indexed: WordBool;
begin
  Result := DefaultInterface.Indexed;
end;

function TField.Get_Precision: Smallint;
begin
  Result := DefaultInterface.Precision;
end;

function TField.Get_AggregationFunction: AggregationFunctionConstants;
begin
  Result := DefaultInterface.AggregationFunction;
end;

function TField.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TField.Get_type_: FieldTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TField.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFieldProperties.Create(AServer: TField);
begin
  inherited Create;
  FServer := AServer;
end;

function TFieldProperties.GetDefaultInterface: CMapXField;
begin
  Result := FServer.DefaultInterface;
end;

function TFieldProperties.Get_Width: Smallint;
begin
    Result := DefaultInterface.Width;
end;

function TFieldProperties.Get_Decimals: Smallint;
begin
    Result := DefaultInterface.Decimals;
end;

function TFieldProperties.Get_TypeEx: FieldTypeConstants;
begin
  Result := DefaultInterface.TypeEx;
end;

function TFieldProperties.Get_Indexed: WordBool;
begin
  Result := DefaultInterface.Indexed;
end;

function TFieldProperties.Get_Precision: Smallint;
begin
  Result := DefaultInterface.Precision;
end;

function TFieldProperties.Get_AggregationFunction: AggregationFunctionConstants;
begin
  Result := DefaultInterface.AggregationFunction;
end;

function TFieldProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFieldProperties.Get_type_: FieldTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TFieldProperties.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

{$ENDIF}

class function CoDataset.Create: CMapXDataset;
begin
  Result := CreateComObject(CLASS_Dataset) as CMapXDataset;
end;

class function CoDataset.CreateRemote(const MachineName: string): CMapXDataset;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Dataset) as CMapXDataset;
end;

procedure TDataset.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D52-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D51-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDataset.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXDataset;
  end;
end;

procedure TDataset.ConnectTo(svrIntf: CMapXDataset);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDataset.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDataset.GetDefaultInterface: CMapXDataset;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDataset.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDatasetProperties.Create(Self);
{$ENDIF}
end;

destructor TDataset.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDataset.GetServerProperties: TDatasetProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDataset.Get_RowValues(Row: OleVariant): CMapXRowValues;
begin
    Result := DefaultInterface.RowValues[Row];
end;

function TDataset.Get_SourceRows(Row: OleVariant): CMapXSourceRows;
begin
    Result := DefaultInterface.SourceRows[Row];
end;

function TDataset.Get__Value(Row: OleVariant; Column: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant._Value[Row, Column];
end;

function TDataset.Get_Value(Row: OleVariant; Column: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value[Row, Column];
end;

function TDataset.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TDataset.Get_Themes: CMapXThemes;
begin
  Result := DefaultInterface.Themes;
end;

function TDataset.Get_GeoField: Integer;
begin
  Result := DefaultInterface.GeoField;
end;

function TDataset.Get_SecondaryGeoField: Integer;
begin
  Result := DefaultInterface.SecondaryGeoField;
end;

function TDataset.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TDataset.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

function TDataset.Get_type_: DatasetTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TDataset.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TDataset.Get_RowCount: Integer;
begin
  Result := DefaultInterface.RowCount;
end;

function TDataset.Get_Fields: CMapXFields;
begin
  Result := DefaultInterface.Fields;
end;

function TDataset.AddField(const Name: WideString; const Expression: WideString): CMapXField;
begin
  Result := DefaultInterface.AddField(Name, Expression);
end;

procedure TDataset.Refresh;
begin
  DefaultInterface.Refresh;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDatasetProperties.Create(AServer: TDataset);
begin
  inherited Create;
  FServer := AServer;
end;

function TDatasetProperties.GetDefaultInterface: CMapXDataset;
begin
  Result := FServer.DefaultInterface;
end;

function TDatasetProperties.Get_RowValues(Row: OleVariant): CMapXRowValues;
begin
    Result := DefaultInterface.RowValues[Row];
end;

function TDatasetProperties.Get_SourceRows(Row: OleVariant): CMapXSourceRows;
begin
    Result := DefaultInterface.SourceRows[Row];
end;

function TDatasetProperties.Get__Value(Row: OleVariant; Column: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant._Value[Row, Column];
end;

function TDatasetProperties.Get_Value(Row: OleVariant; Column: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value[Row, Column];
end;

function TDatasetProperties.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TDatasetProperties.Get_Themes: CMapXThemes;
begin
  Result := DefaultInterface.Themes;
end;

function TDatasetProperties.Get_GeoField: Integer;
begin
  Result := DefaultInterface.GeoField;
end;

function TDatasetProperties.Get_SecondaryGeoField: Integer;
begin
  Result := DefaultInterface.SecondaryGeoField;
end;

function TDatasetProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TDatasetProperties.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

function TDatasetProperties.Get_type_: DatasetTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TDatasetProperties.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TDatasetProperties.Get_RowCount: Integer;
begin
  Result := DefaultInterface.RowCount;
end;

function TDatasetProperties.Get_Fields: CMapXFields;
begin
  Result := DefaultInterface.Fields;
end;

{$ENDIF}

class function CoThemes.Create: CMapXThemes;
begin
  Result := CreateComObject(CLASS_Themes) as CMapXThemes;
end;

class function CoThemes.CreateRemote(const MachineName: string): CMapXThemes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Themes) as CMapXThemes;
end;

procedure TThemes.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D55-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D54-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TThemes.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXThemes;
  end;
end;

procedure TThemes.ConnectTo(svrIntf: CMapXThemes);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TThemes.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TThemes.GetDefaultInterface: CMapXThemes;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TThemes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TThemesProperties.Create(Self);
{$ENDIF}
end;

destructor TThemes.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TThemes.GetServerProperties: TThemesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TThemes.Get_Item(Index: OleVariant): CMapXTheme;
begin
    Result := DefaultInterface.Item[Index];
end;

function TThemes.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

procedure TThemes.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

function TThemes.Add: CMapXTheme;
begin
  Result := DefaultInterface.Add(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TThemes.Add(Type_: OleVariant): CMapXTheme;
begin
  Result := DefaultInterface.Add(Type_, EmptyParam, EmptyParam, EmptyParam);
end;

function TThemes.Add(Type_: OleVariant; Field: OleVariant): CMapXTheme;
begin
  Result := DefaultInterface.Add(Type_, Field, EmptyParam, EmptyParam);
end;

function TThemes.Add(Type_: OleVariant; Field: OleVariant; Name: OleVariant): CMapXTheme;
begin
  Result := DefaultInterface.Add(Type_, Field, Name, EmptyParam);
end;

function TThemes.Add(Type_: OleVariant; Field: OleVariant; Name: OleVariant; 
                     ComputeTheme: OleVariant): CMapXTheme;
begin
  Result := DefaultInterface.Add(Type_, Field, Name, ComputeTheme);
end;

function TThemes._Item(Index: OleVariant): CMapXTheme;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TThemes.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TThemesProperties.Create(AServer: TThemes);
begin
  inherited Create;
  FServer := AServer;
end;

function TThemesProperties.GetDefaultInterface: CMapXThemes;
begin
  Result := FServer.DefaultInterface;
end;

function TThemesProperties.Get_Item(Index: OleVariant): CMapXTheme;
begin
    Result := DefaultInterface.Item[Index];
end;

function TThemesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoTheme.Create: CMapXTheme;
begin
  Result := CreateComObject(CLASS_Theme) as CMapXTheme;
end;

class function CoTheme.CreateRemote(const MachineName: string): CMapXTheme;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Theme) as CMapXTheme;
end;

procedure TTheme.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D57-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D56-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTheme.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXTheme;
  end;
end;

procedure TTheme.ConnectTo(svrIntf: CMapXTheme);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTheme.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTheme.GetDefaultInterface: CMapXTheme;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTheme.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TThemeProperties.Create(Self);
{$ENDIF}
end;

destructor TTheme.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTheme.GetServerProperties: TThemeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTheme.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TTheme.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TTheme.Get_type_: ThemeTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TTheme.Get_Properties: CMapXThemeProperties;
begin
  Result := DefaultInterface.Properties;
end;

function TTheme.Get_Legend: CMapXLegend;
begin
  Result := DefaultInterface.Legend;
end;

function TTheme.Get_AutoRecompute: WordBool;
begin
  Result := DefaultInterface.AutoRecompute;
end;

procedure TTheme.Set_AutoRecompute(Value: WordBool);
begin
  DefaultInterface.AutoRecompute := Value;
end;

function TTheme.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TTheme.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

function TTheme.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TTheme.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

function TTheme.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TTheme.Get_Fields: CMapXFields;
begin
  Result := DefaultInterface.Fields;
end;

function TTheme.Get_DataMin: Double;
begin
  Result := DefaultInterface.DataMin;
end;

procedure TTheme.Set_DataMin(Value: Double);
begin
  DefaultInterface.DataMin := Value;
end;

function TTheme.Get_ThemedFeatureType: FeatureTypeConstants;
begin
  Result := DefaultInterface.ThemedFeatureType;
end;

function TTheme.Get_ThemeProperties: CMapXThemeProperties;
begin
  Result := DefaultInterface.ThemeProperties;
end;

function TTheme.Get_DataMax: Double;
begin
  Result := DefaultInterface.DataMax;
end;

procedure TTheme.Set_DataMax(Value: Double);
begin
  DefaultInterface.DataMax := Value;
end;

function TTheme.Get_ComputeTheme: WordBool;
begin
  Result := DefaultInterface.ComputeTheme;
end;

procedure TTheme.Set_ComputeTheme(Value: WordBool);
begin
  DefaultInterface.ComputeTheme := Value;
end;

function TTheme.ThemeDlg: WordBool;
begin
  Result := DefaultInterface.ThemeDlg(EmptyParam, EmptyParam);
end;

function TTheme.ThemeDlg(HelpFile: OleVariant): WordBool;
begin
  Result := DefaultInterface.ThemeDlg(HelpFile, EmptyParam);
end;

function TTheme.ThemeDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool;
begin
  Result := DefaultInterface.ThemeDlg(HelpFile, HelpID);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TThemeProperties.Create(AServer: TTheme);
begin
  inherited Create;
  FServer := AServer;
end;

function TThemeProperties.GetDefaultInterface: CMapXTheme;
begin
  Result := FServer.DefaultInterface;
end;

function TThemeProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TThemeProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TThemeProperties.Get_type_: ThemeTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TThemeProperties.Get_Properties: CMapXThemeProperties;
begin
  Result := DefaultInterface.Properties;
end;

function TThemeProperties.Get_Legend: CMapXLegend;
begin
  Result := DefaultInterface.Legend;
end;

function TThemeProperties.Get_AutoRecompute: WordBool;
begin
  Result := DefaultInterface.AutoRecompute;
end;

procedure TThemeProperties.Set_AutoRecompute(Value: WordBool);
begin
  DefaultInterface.AutoRecompute := Value;
end;

function TThemeProperties.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TThemeProperties.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

function TThemeProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TThemeProperties.Set_Name(const Value: WideString);
begin
  DefaultInterface.Name := Value;
end;

function TThemeProperties.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TThemeProperties.Get_Fields: CMapXFields;
begin
  Result := DefaultInterface.Fields;
end;

function TThemeProperties.Get_DataMin: Double;
begin
  Result := DefaultInterface.DataMin;
end;

procedure TThemeProperties.Set_DataMin(Value: Double);
begin
  DefaultInterface.DataMin := Value;
end;

function TThemeProperties.Get_ThemedFeatureType: FeatureTypeConstants;
begin
  Result := DefaultInterface.ThemedFeatureType;
end;

function TThemeProperties.Get_ThemeProperties: CMapXThemeProperties;
begin
  Result := DefaultInterface.ThemeProperties;
end;

function TThemeProperties.Get_DataMax: Double;
begin
  Result := DefaultInterface.DataMax;
end;

procedure TThemeProperties.Set_DataMax(Value: Double);
begin
  DefaultInterface.DataMax := Value;
end;

function TThemeProperties.Get_ComputeTheme: WordBool;
begin
  Result := DefaultInterface.ComputeTheme;
end;

procedure TThemeProperties.Set_ComputeTheme(Value: WordBool);
begin
  DefaultInterface.ComputeTheme := Value;
end;

{$ENDIF}

class function CoLegend.Create: CMapXLegend;
begin
  Result := CreateComObject(CLASS_Legend) as CMapXLegend;
end;

class function CoLegend.CreateRemote(const MachineName: string): CMapXLegend;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Legend) as CMapXLegend;
end;

procedure TLegend.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{77306D5D-5C82-11CF-8795-00AA00B7EF73}';
    IntfIID:   '{77306D5C-5C82-11CF-8795-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLegend.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLegend;
  end;
end;

procedure TLegend.ConnectTo(svrIntf: CMapXLegend);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLegend.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLegend.GetDefaultInterface: CMapXLegend;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLegend.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLegendProperties.Create(Self);
{$ENDIF}
end;

destructor TLegend.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLegend.GetServerProperties: TLegendProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLegend.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLegend.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLegend.Get_BodyTextStyle: CMapXStyle;
begin
  Result := DefaultInterface.BodyTextStyle;
end;

procedure TLegend.Set_BodyTextStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BodyTextStyle := Value;
end;

function TLegend.Get_TitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.TitleStyle;
end;

procedure TLegend.Set_TitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.TitleStyle := Value;
end;

function TLegend.Get_Compact: WordBool;
begin
  Result := DefaultInterface.Compact;
end;

procedure TLegend.Set_Compact(Value: WordBool);
begin
  DefaultInterface.Compact := Value;
end;

function TLegend.Get_SubTitle: WideString;
begin
  Result := DefaultInterface.SubTitle;
end;

procedure TLegend.Set_SubTitle(const Value: WideString);
begin
  DefaultInterface.SubTitle := Value;
end;

function TLegend.Get_LegendTexts: CMapXLegendTexts;
begin
  Result := DefaultInterface.LegendTexts;
end;

function TLegend.Get_CurrencyFormat: WordBool;
begin
  Result := DefaultInterface.CurrencyFormat;
end;

procedure TLegend.Set_CurrencyFormat(Value: WordBool);
begin
  DefaultInterface.CurrencyFormat := Value;
end;

function TLegend.Get_CompactTitle: WideString;
begin
  Result := DefaultInterface.CompactTitle;
end;

procedure TLegend.Set_CompactTitle(const Value: WideString);
begin
  DefaultInterface.CompactTitle := Value;
end;

function TLegend.Get_Title: WideString;
begin
  Result := DefaultInterface.Title;
end;

procedure TLegend.Set_Title(const Value: WideString);
begin
  DefaultInterface.Title := Value;
end;

function TLegend.Get_CompactTitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.CompactTitleStyle;
end;

procedure TLegend.Set_CompactTitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.CompactTitleStyle := Value;
end;

function TLegend.Get_Left: Single;
begin
  Result := DefaultInterface.Left;
end;

procedure TLegend.Set_Left(Value: Single);
begin
  DefaultInterface.Left := Value;
end;

function TLegend.Get_Top: Single;
begin
  Result := DefaultInterface.Top;
end;

procedure TLegend.Set_Top(Value: Single);
begin
  DefaultInterface.Top := Value;
end;

function TLegend.Get_Width: Single;
begin
  Result := DefaultInterface.Width;
end;

function TLegend.Get_Height: Single;
begin
  Result := DefaultInterface.Height;
end;

function TLegend.Get_PaperHeight: Double;
begin
  Result := DefaultInterface.PaperHeight;
end;

function TLegend.Get_ShowCount: WordBool;
begin
  Result := DefaultInterface.ShowCount;
end;

procedure TLegend.Set_ShowCount(Value: WordBool);
begin
  DefaultInterface.ShowCount := Value;
end;

function TLegend.Get_SubTitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.SubTitleStyle;
end;

procedure TLegend.Set_SubTitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.SubTitleStyle := Value;
end;

function TLegend.Get_PaperWidth: Double;
begin
  Result := DefaultInterface.PaperWidth;
end;

function TLegend.Get_ShowEmptyRanges: WordBool;
begin
  Result := DefaultInterface.ShowEmptyRanges;
end;

procedure TLegend.Set_ShowEmptyRanges(Value: WordBool);
begin
  DefaultInterface.ShowEmptyRanges := Value;
end;

procedure TLegend.PrintLegend(hDC: OLE_HANDLE; X: Integer; Y: Integer; W: Integer; H: Integer);
begin
  DefaultInterface.PrintLegend(hDC, X, Y, W, H);
end;

procedure TLegend.ExportLegend(const Destination: WideString; Format: ExportFormatConstants);
begin
  DefaultInterface.ExportLegend(Destination, Format);
end;

function TLegend.LegendDlg: WordBool;
begin
  Result := DefaultInterface.LegendDlg(EmptyParam, EmptyParam);
end;

function TLegend.LegendDlg(HelpFile: OleVariant): WordBool;
begin
  Result := DefaultInterface.LegendDlg(HelpFile, EmptyParam);
end;

function TLegend.LegendDlg(HelpFile: OleVariant; HelpID: OleVariant): WordBool;
begin
  Result := DefaultInterface.LegendDlg(HelpFile, HelpID);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLegendProperties.Create(AServer: TLegend);
begin
  inherited Create;
  FServer := AServer;
end;

function TLegendProperties.GetDefaultInterface: CMapXLegend;
begin
  Result := FServer.DefaultInterface;
end;

function TLegendProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLegendProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLegendProperties.Get_BodyTextStyle: CMapXStyle;
begin
  Result := DefaultInterface.BodyTextStyle;
end;

procedure TLegendProperties.Set_BodyTextStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BodyTextStyle := Value;
end;

function TLegendProperties.Get_TitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.TitleStyle;
end;

procedure TLegendProperties.Set_TitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.TitleStyle := Value;
end;

function TLegendProperties.Get_Compact: WordBool;
begin
  Result := DefaultInterface.Compact;
end;

procedure TLegendProperties.Set_Compact(Value: WordBool);
begin
  DefaultInterface.Compact := Value;
end;

function TLegendProperties.Get_SubTitle: WideString;
begin
  Result := DefaultInterface.SubTitle;
end;

procedure TLegendProperties.Set_SubTitle(const Value: WideString);
begin
  DefaultInterface.SubTitle := Value;
end;

function TLegendProperties.Get_LegendTexts: CMapXLegendTexts;
begin
  Result := DefaultInterface.LegendTexts;
end;

function TLegendProperties.Get_CurrencyFormat: WordBool;
begin
  Result := DefaultInterface.CurrencyFormat;
end;

procedure TLegendProperties.Set_CurrencyFormat(Value: WordBool);
begin
  DefaultInterface.CurrencyFormat := Value;
end;

function TLegendProperties.Get_CompactTitle: WideString;
begin
  Result := DefaultInterface.CompactTitle;
end;

procedure TLegendProperties.Set_CompactTitle(const Value: WideString);
begin
  DefaultInterface.CompactTitle := Value;
end;

function TLegendProperties.Get_Title: WideString;
begin
  Result := DefaultInterface.Title;
end;

procedure TLegendProperties.Set_Title(const Value: WideString);
begin
  DefaultInterface.Title := Value;
end;

function TLegendProperties.Get_CompactTitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.CompactTitleStyle;
end;

procedure TLegendProperties.Set_CompactTitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.CompactTitleStyle := Value;
end;

function TLegendProperties.Get_Left: Single;
begin
  Result := DefaultInterface.Left;
end;

procedure TLegendProperties.Set_Left(Value: Single);
begin
  DefaultInterface.Left := Value;
end;

function TLegendProperties.Get_Top: Single;
begin
  Result := DefaultInterface.Top;
end;

procedure TLegendProperties.Set_Top(Value: Single);
begin
  DefaultInterface.Top := Value;
end;

function TLegendProperties.Get_Width: Single;
begin
  Result := DefaultInterface.Width;
end;

function TLegendProperties.Get_Height: Single;
begin
  Result := DefaultInterface.Height;
end;

function TLegendProperties.Get_PaperHeight: Double;
begin
  Result := DefaultInterface.PaperHeight;
end;

function TLegendProperties.Get_ShowCount: WordBool;
begin
  Result := DefaultInterface.ShowCount;
end;

procedure TLegendProperties.Set_ShowCount(Value: WordBool);
begin
  DefaultInterface.ShowCount := Value;
end;

function TLegendProperties.Get_SubTitleStyle: CMapXStyle;
begin
  Result := DefaultInterface.SubTitleStyle;
end;

procedure TLegendProperties.Set_SubTitleStyle(const Value: CMapXStyle);
begin
  DefaultInterface.SubTitleStyle := Value;
end;

function TLegendProperties.Get_PaperWidth: Double;
begin
  Result := DefaultInterface.PaperWidth;
end;

function TLegendProperties.Get_ShowEmptyRanges: WordBool;
begin
  Result := DefaultInterface.ShowEmptyRanges;
end;

procedure TLegendProperties.Set_ShowEmptyRanges(Value: WordBool);
begin
  DefaultInterface.ShowEmptyRanges := Value;
end;

{$ENDIF}

class function CoCollection.Create: CMapXCollection;
begin
  Result := CreateComObject(CLASS_Collection) as CMapXCollection;
end;

class function CoCollection.CreateRemote(const MachineName: string): CMapXCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Collection) as CMapXCollection;
end;

class function CoAnnotations.Create: CMapXAnnotations;
begin
  Result := CreateComObject(CLASS_Annotations) as CMapXAnnotations;
end;

class function CoAnnotations.CreateRemote(const MachineName: string): CMapXAnnotations;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Annotations) as CMapXAnnotations;
end;

procedure TAnnotations.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7A35D062-6AAC-11CF-96AE-00AA00A4760F}';
    IntfIID:   '{7A35D061-6AAC-11CF-96AE-00AA00A4760F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnnotations.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXAnnotations;
  end;
end;

procedure TAnnotations.ConnectTo(svrIntf: CMapXAnnotations);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAnnotations.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAnnotations.GetDefaultInterface: CMapXAnnotations;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAnnotations.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnnotationsProperties.Create(Self);
{$ENDIF}
end;

destructor TAnnotations.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAnnotations.GetServerProperties: TAnnotationsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAnnotations.Get_Item(Index: OleVariant): CMapXAnnotation;
begin
    Result := DefaultInterface.Item[Index];
end;

function TAnnotations.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TAnnotations.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TAnnotations.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

function TAnnotations.AddSymbol(X: Double; Y: Double): CMapXAnnotation;
begin
  Result := DefaultInterface.AddSymbol(X, Y);
end;

procedure TAnnotations.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

function TAnnotations._Item(Index: OleVariant): CMapXAnnotation;
begin
  Result := DefaultInterface._Item(Index);
end;

function TAnnotations.AddText(const Text: WideString; X: Double; Y: Double): CMapXAnnotation;
begin
  Result := DefaultInterface.AddText(Text, X, Y, EmptyParam);
end;

function TAnnotations.AddText(const Text: WideString; X: Double; Y: Double; Position: OleVariant): CMapXAnnotation;
begin
  Result := DefaultInterface.AddText(Text, X, Y, Position);
end;

procedure TAnnotations.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

function TAnnotations.ActiveAnnotation: CMapXAnnotation;
begin
  Result := DefaultInterface.ActiveAnnotation;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAnnotationsProperties.Create(AServer: TAnnotations);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnnotationsProperties.GetDefaultInterface: CMapXAnnotations;
begin
  Result := FServer.DefaultInterface;
end;

function TAnnotationsProperties.Get_Item(Index: OleVariant): CMapXAnnotation;
begin
    Result := DefaultInterface.Item[Index];
end;

function TAnnotationsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TAnnotationsProperties.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TAnnotationsProperties.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

{$ENDIF}

class function CoThemeProperties.Create: CMapXThemeProperties;
begin
  Result := CreateComObject(CLASS_ThemeProperties) as CMapXThemeProperties;
end;

class function CoThemeProperties.CreateRemote(const MachineName: string): CMapXThemeProperties;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ThemeProperties) as CMapXThemeProperties;
end;

procedure TThemeProperties.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{44DB7B48-B2F5-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{44DB7B47-B2F5-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TThemeProperties.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXThemeProperties;
  end;
end;

procedure TThemeProperties.ConnectTo(svrIntf: CMapXThemeProperties);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TThemeProperties.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TThemeProperties.GetDefaultInterface: CMapXThemeProperties;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TThemeProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TThemePropertiesProperties.Create(Self);
{$ENDIF}
end;

destructor TThemeProperties.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TThemeProperties.GetServerProperties: TThemePropertiesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TThemeProperties.Get_DistMethod: DistribMethodConstants;
begin
  Result := DefaultInterface.DistMethod;
end;

procedure TThemeProperties.Set_DistMethod(Value: DistribMethodConstants);
begin
  DefaultInterface.DistMethod := Value;
end;

function TThemeProperties.Get_NumRanges: Smallint;
begin
  Result := DefaultInterface.NumRanges;
end;

procedure TThemeProperties.Set_NumRanges(Value: Smallint);
begin
  DefaultInterface.NumRanges := Value;
end;

function TThemeProperties.Get_RangeCategories: CMapXRangeCategoriesCollection;
begin
  Result := DefaultInterface.RangeCategories;
end;

function TThemeProperties.Get_DotSize: Smallint;
begin
  Result := DefaultInterface.DotSize;
end;

procedure TThemeProperties.Set_DotSize(Value: Smallint);
begin
  DefaultInterface.DotSize := Value;
end;

function TThemeProperties.Get_Graduated: WordBool;
begin
  Result := DefaultInterface.Graduated;
end;

procedure TThemeProperties.Set_Graduated(Value: WordBool);
begin
  DefaultInterface.Graduated := Value;
end;

function TThemeProperties.Get_MultivarCategories: CMapXMultivarCategoriesCollection;
begin
  Result := DefaultInterface.MultivarCategories;
end;

function TThemeProperties.Get_Independent: WordBool;
begin
  Result := DefaultInterface.Independent;
end;

procedure TThemeProperties.Set_Independent(Value: WordBool);
begin
  DefaultInterface.Independent := Value;
end;

function TThemeProperties.Get_IndividualValueCategories: CMapXIndividualValueCategoriesCollection;
begin
  Result := DefaultInterface.IndividualValueCategories;
end;

function TThemeProperties.Get_ValuePerDot: Double;
begin
  Result := DefaultInterface.ValuePerDot;
end;

procedure TThemeProperties.Set_ValuePerDot(Value: Double);
begin
  DefaultInterface.ValuePerDot := Value;
end;

function TThemeProperties.Get_DataValue: Double;
begin
  Result := DefaultInterface.DataValue;
end;

procedure TThemeProperties.Set_DataValue(Value: Double);
begin
  DefaultInterface.DataValue := Value;
end;

function TThemeProperties.Get_Size: Double;
begin
  Result := DefaultInterface.Size;
end;

procedure TThemeProperties.Set_Size(Value: Double);
begin
  DefaultInterface.Size := Value;
end;

function TThemeProperties.Get_Width: Double;
begin
  Result := DefaultInterface.Width;
end;

procedure TThemeProperties.Set_Width(Value: Double);
begin
  DefaultInterface.Width := Value;
end;

function TThemeProperties.Get_SymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.SymbolStyle;
end;

procedure TThemeProperties.Set_SymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.SymbolStyle := Value;
end;

function TThemeProperties.Get_SpreadBy: SpreadByConstants;
begin
  Result := DefaultInterface.SpreadBy;
end;

procedure TThemeProperties.Set_SpreadBy(Value: SpreadByConstants);
begin
  DefaultInterface.SpreadBy := Value;
end;

function TThemeProperties.Get_AllowEmptyRanges: WordBool;
begin
  Result := DefaultInterface.AllowEmptyRanges;
end;

procedure TThemeProperties.Set_AllowEmptyRanges(Value: WordBool);
begin
  DefaultInterface.AllowEmptyRanges := Value;
end;

function TThemeProperties.Get_DotColor: OLE_COLOR;
begin
  Result := DefaultInterface.DotColor;
end;

procedure TThemeProperties.Set_DotColor(Value: OLE_COLOR);
begin
  DefaultInterface.DotColor := Value;
end;

function TThemeProperties.Get_PieClockwise: WordBool;
begin
  Result := DefaultInterface.PieClockwise;
end;

procedure TThemeProperties.Set_PieClockwise(Value: WordBool);
begin
  DefaultInterface.PieClockwise := Value;
end;

function TThemeProperties.Get_PieHalfPies: WordBool;
begin
  Result := DefaultInterface.PieHalfPies;
end;

procedure TThemeProperties.Set_PieHalfPies(Value: WordBool);
begin
  DefaultInterface.PieHalfPies := Value;
end;

function TThemeProperties.Get_PieStartAngle: Smallint;
begin
  Result := DefaultInterface.PieStartAngle;
end;

procedure TThemeProperties.Set_PieStartAngle(Value: Smallint);
begin
  DefaultInterface.PieStartAngle := Value;
end;

function TThemeProperties.Get_BarStacked: WordBool;
begin
  Result := DefaultInterface.BarStacked;
end;

procedure TThemeProperties.Set_BarStacked(Value: WordBool);
begin
  DefaultInterface.BarStacked := Value;
end;

function TThemeProperties.Get_NegativeSymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.NegativeSymbolStyle;
end;

procedure TThemeProperties.Set_NegativeSymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.NegativeSymbolStyle := Value;
end;

function TThemeProperties.Get_ShowNegativeValues: WordBool;
begin
  Result := DefaultInterface.ShowNegativeValues;
end;

procedure TThemeProperties.Set_ShowNegativeValues(Value: WordBool);
begin
  DefaultInterface.ShowNegativeValues := Value;
end;

function TThemeProperties.Get_GraduateSizeBy: GraduationConstants;
begin
  Result := DefaultInterface.GraduateSizeBy;
end;

procedure TThemeProperties.Set_GraduateSizeBy(Value: GraduationConstants);
begin
  DefaultInterface.GraduateSizeBy := Value;
end;

function TThemeProperties.Get_BorderStyle: CMapXStyle;
begin
  Result := DefaultInterface.BorderStyle;
end;

procedure TThemeProperties.Set_BorderStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BorderStyle := Value;
end;

function TThemeProperties.Get_BarWidth: Double;
begin
  Result := DefaultInterface.BarWidth;
end;

procedure TThemeProperties.Set_BarWidth(Value: Double);
begin
  DefaultInterface.BarWidth := Value;
end;

function TThemeProperties.Get_BarIndependentScale: WordBool;
begin
  Result := DefaultInterface.BarIndependentScale;
end;

procedure TThemeProperties.Set_BarIndependentScale(Value: WordBool);
begin
  DefaultInterface.BarIndependentScale := Value;
end;

function TThemeProperties.Get_PositiveSymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.PositiveSymbolStyle;
end;

procedure TThemeProperties.Set_PositiveSymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.PositiveSymbolStyle := Value;
end;

function TThemeProperties.Get_BarFrameStyle: CMapXStyle;
begin
  Result := DefaultInterface.BarFrameStyle;
end;

procedure TThemeProperties.Set_BarFrameStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BarFrameStyle := Value;
end;

function TThemeProperties.Get_PieGraduated: WordBool;
begin
  Result := DefaultInterface.PieGraduated;
end;

procedure TThemeProperties.Set_PieGraduated(Value: WordBool);
begin
  DefaultInterface.PieGraduated := Value;
end;

function TThemeProperties.Get_BarGraduatedStack: WordBool;
begin
  Result := DefaultInterface.BarGraduatedStack;
end;

procedure TThemeProperties.Set_BarGraduatedStack(Value: WordBool);
begin
  DefaultInterface.BarGraduatedStack := Value;
end;

function TThemeProperties.Get_ApplyAttribute: ApplyAttributeConstants;
begin
  Result := DefaultInterface.ApplyAttribute;
end;

procedure TThemeProperties.Set_ApplyAttribute(Value: ApplyAttributeConstants);
begin
  DefaultInterface.ApplyAttribute := Value;
end;

function TThemeProperties.Get_RoundRanges: WordBool;
begin
  Result := DefaultInterface.RoundRanges;
end;

procedure TThemeProperties.Set_RoundRanges(Value: WordBool);
begin
  DefaultInterface.RoundRanges := Value;
end;

function TThemeProperties.Get_RoundBy: Double;
begin
  Result := DefaultInterface.RoundBy;
end;

procedure TThemeProperties.Set_RoundBy(Value: Double);
begin
  DefaultInterface.RoundBy := Value;
end;

function TThemeProperties.Get_ColorMethod: ColorSpreadingMethodConstants;
begin
  Result := DefaultInterface.ColorMethod;
end;

procedure TThemeProperties.Set_ColorMethod(Value: ColorSpreadingMethodConstants);
begin
  DefaultInterface.ColorMethod := Value;
end;

function TThemeProperties.Get_InflectRanges: WordBool;
begin
  Result := DefaultInterface.InflectRanges;
end;

procedure TThemeProperties.Set_InflectRanges(Value: WordBool);
begin
  DefaultInterface.InflectRanges := Value;
end;

function TThemeProperties.Get_InflectionRange: Smallint;
begin
  Result := DefaultInterface.InflectionRange;
end;

procedure TThemeProperties.Set_InflectionRange(Value: Smallint);
begin
  DefaultInterface.InflectionRange := Value;
end;

function TThemeProperties.Get_InflectionColor: OLE_COLOR;
begin
  Result := DefaultInterface.InflectionColor;
end;

procedure TThemeProperties.Set_InflectionColor(Value: OLE_COLOR);
begin
  DefaultInterface.InflectionColor := Value;
end;

function TThemeProperties.Get_BarFramed: WordBool;
begin
  Result := DefaultInterface.BarFramed;
end;

procedure TThemeProperties.Set_BarFramed(Value: WordBool);
begin
  DefaultInterface.BarFramed := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TThemePropertiesProperties.Create(AServer: TThemeProperties);
begin
  inherited Create;
  FServer := AServer;
end;

function TThemePropertiesProperties.GetDefaultInterface: CMapXThemeProperties;
begin
  Result := FServer.DefaultInterface;
end;

function TThemePropertiesProperties.Get_DistMethod: DistribMethodConstants;
begin
  Result := DefaultInterface.DistMethod;
end;

procedure TThemePropertiesProperties.Set_DistMethod(Value: DistribMethodConstants);
begin
  DefaultInterface.DistMethod := Value;
end;

function TThemePropertiesProperties.Get_NumRanges: Smallint;
begin
  Result := DefaultInterface.NumRanges;
end;

procedure TThemePropertiesProperties.Set_NumRanges(Value: Smallint);
begin
  DefaultInterface.NumRanges := Value;
end;

function TThemePropertiesProperties.Get_RangeCategories: CMapXRangeCategoriesCollection;
begin
  Result := DefaultInterface.RangeCategories;
end;

function TThemePropertiesProperties.Get_DotSize: Smallint;
begin
  Result := DefaultInterface.DotSize;
end;

procedure TThemePropertiesProperties.Set_DotSize(Value: Smallint);
begin
  DefaultInterface.DotSize := Value;
end;

function TThemePropertiesProperties.Get_Graduated: WordBool;
begin
  Result := DefaultInterface.Graduated;
end;

procedure TThemePropertiesProperties.Set_Graduated(Value: WordBool);
begin
  DefaultInterface.Graduated := Value;
end;

function TThemePropertiesProperties.Get_MultivarCategories: CMapXMultivarCategoriesCollection;
begin
  Result := DefaultInterface.MultivarCategories;
end;

function TThemePropertiesProperties.Get_Independent: WordBool;
begin
  Result := DefaultInterface.Independent;
end;

procedure TThemePropertiesProperties.Set_Independent(Value: WordBool);
begin
  DefaultInterface.Independent := Value;
end;

function TThemePropertiesProperties.Get_IndividualValueCategories: CMapXIndividualValueCategoriesCollection;
begin
  Result := DefaultInterface.IndividualValueCategories;
end;

function TThemePropertiesProperties.Get_ValuePerDot: Double;
begin
  Result := DefaultInterface.ValuePerDot;
end;

procedure TThemePropertiesProperties.Set_ValuePerDot(Value: Double);
begin
  DefaultInterface.ValuePerDot := Value;
end;

function TThemePropertiesProperties.Get_DataValue: Double;
begin
  Result := DefaultInterface.DataValue;
end;

procedure TThemePropertiesProperties.Set_DataValue(Value: Double);
begin
  DefaultInterface.DataValue := Value;
end;

function TThemePropertiesProperties.Get_Size: Double;
begin
  Result := DefaultInterface.Size;
end;

procedure TThemePropertiesProperties.Set_Size(Value: Double);
begin
  DefaultInterface.Size := Value;
end;

function TThemePropertiesProperties.Get_Width: Double;
begin
  Result := DefaultInterface.Width;
end;

procedure TThemePropertiesProperties.Set_Width(Value: Double);
begin
  DefaultInterface.Width := Value;
end;

function TThemePropertiesProperties.Get_SymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.SymbolStyle;
end;

procedure TThemePropertiesProperties.Set_SymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.SymbolStyle := Value;
end;

function TThemePropertiesProperties.Get_SpreadBy: SpreadByConstants;
begin
  Result := DefaultInterface.SpreadBy;
end;

procedure TThemePropertiesProperties.Set_SpreadBy(Value: SpreadByConstants);
begin
  DefaultInterface.SpreadBy := Value;
end;

function TThemePropertiesProperties.Get_AllowEmptyRanges: WordBool;
begin
  Result := DefaultInterface.AllowEmptyRanges;
end;

procedure TThemePropertiesProperties.Set_AllowEmptyRanges(Value: WordBool);
begin
  DefaultInterface.AllowEmptyRanges := Value;
end;

function TThemePropertiesProperties.Get_DotColor: OLE_COLOR;
begin
  Result := DefaultInterface.DotColor;
end;

procedure TThemePropertiesProperties.Set_DotColor(Value: OLE_COLOR);
begin
  DefaultInterface.DotColor := Value;
end;

function TThemePropertiesProperties.Get_PieClockwise: WordBool;
begin
  Result := DefaultInterface.PieClockwise;
end;

procedure TThemePropertiesProperties.Set_PieClockwise(Value: WordBool);
begin
  DefaultInterface.PieClockwise := Value;
end;

function TThemePropertiesProperties.Get_PieHalfPies: WordBool;
begin
  Result := DefaultInterface.PieHalfPies;
end;

procedure TThemePropertiesProperties.Set_PieHalfPies(Value: WordBool);
begin
  DefaultInterface.PieHalfPies := Value;
end;

function TThemePropertiesProperties.Get_PieStartAngle: Smallint;
begin
  Result := DefaultInterface.PieStartAngle;
end;

procedure TThemePropertiesProperties.Set_PieStartAngle(Value: Smallint);
begin
  DefaultInterface.PieStartAngle := Value;
end;

function TThemePropertiesProperties.Get_BarStacked: WordBool;
begin
  Result := DefaultInterface.BarStacked;
end;

procedure TThemePropertiesProperties.Set_BarStacked(Value: WordBool);
begin
  DefaultInterface.BarStacked := Value;
end;

function TThemePropertiesProperties.Get_NegativeSymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.NegativeSymbolStyle;
end;

procedure TThemePropertiesProperties.Set_NegativeSymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.NegativeSymbolStyle := Value;
end;

function TThemePropertiesProperties.Get_ShowNegativeValues: WordBool;
begin
  Result := DefaultInterface.ShowNegativeValues;
end;

procedure TThemePropertiesProperties.Set_ShowNegativeValues(Value: WordBool);
begin
  DefaultInterface.ShowNegativeValues := Value;
end;

function TThemePropertiesProperties.Get_GraduateSizeBy: GraduationConstants;
begin
  Result := DefaultInterface.GraduateSizeBy;
end;

procedure TThemePropertiesProperties.Set_GraduateSizeBy(Value: GraduationConstants);
begin
  DefaultInterface.GraduateSizeBy := Value;
end;

function TThemePropertiesProperties.Get_BorderStyle: CMapXStyle;
begin
  Result := DefaultInterface.BorderStyle;
end;

procedure TThemePropertiesProperties.Set_BorderStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BorderStyle := Value;
end;

function TThemePropertiesProperties.Get_BarWidth: Double;
begin
  Result := DefaultInterface.BarWidth;
end;

procedure TThemePropertiesProperties.Set_BarWidth(Value: Double);
begin
  DefaultInterface.BarWidth := Value;
end;

function TThemePropertiesProperties.Get_BarIndependentScale: WordBool;
begin
  Result := DefaultInterface.BarIndependentScale;
end;

procedure TThemePropertiesProperties.Set_BarIndependentScale(Value: WordBool);
begin
  DefaultInterface.BarIndependentScale := Value;
end;

function TThemePropertiesProperties.Get_PositiveSymbolStyle: CMapXStyle;
begin
  Result := DefaultInterface.PositiveSymbolStyle;
end;

procedure TThemePropertiesProperties.Set_PositiveSymbolStyle(const Value: CMapXStyle);
begin
  DefaultInterface.PositiveSymbolStyle := Value;
end;

function TThemePropertiesProperties.Get_BarFrameStyle: CMapXStyle;
begin
  Result := DefaultInterface.BarFrameStyle;
end;

procedure TThemePropertiesProperties.Set_BarFrameStyle(const Value: CMapXStyle);
begin
  DefaultInterface.BarFrameStyle := Value;
end;

function TThemePropertiesProperties.Get_PieGraduated: WordBool;
begin
  Result := DefaultInterface.PieGraduated;
end;

procedure TThemePropertiesProperties.Set_PieGraduated(Value: WordBool);
begin
  DefaultInterface.PieGraduated := Value;
end;

function TThemePropertiesProperties.Get_BarGraduatedStack: WordBool;
begin
  Result := DefaultInterface.BarGraduatedStack;
end;

procedure TThemePropertiesProperties.Set_BarGraduatedStack(Value: WordBool);
begin
  DefaultInterface.BarGraduatedStack := Value;
end;

function TThemePropertiesProperties.Get_ApplyAttribute: ApplyAttributeConstants;
begin
  Result := DefaultInterface.ApplyAttribute;
end;

procedure TThemePropertiesProperties.Set_ApplyAttribute(Value: ApplyAttributeConstants);
begin
  DefaultInterface.ApplyAttribute := Value;
end;

function TThemePropertiesProperties.Get_RoundRanges: WordBool;
begin
  Result := DefaultInterface.RoundRanges;
end;

procedure TThemePropertiesProperties.Set_RoundRanges(Value: WordBool);
begin
  DefaultInterface.RoundRanges := Value;
end;

function TThemePropertiesProperties.Get_RoundBy: Double;
begin
  Result := DefaultInterface.RoundBy;
end;

procedure TThemePropertiesProperties.Set_RoundBy(Value: Double);
begin
  DefaultInterface.RoundBy := Value;
end;

function TThemePropertiesProperties.Get_ColorMethod: ColorSpreadingMethodConstants;
begin
  Result := DefaultInterface.ColorMethod;
end;

procedure TThemePropertiesProperties.Set_ColorMethod(Value: ColorSpreadingMethodConstants);
begin
  DefaultInterface.ColorMethod := Value;
end;

function TThemePropertiesProperties.Get_InflectRanges: WordBool;
begin
  Result := DefaultInterface.InflectRanges;
end;

procedure TThemePropertiesProperties.Set_InflectRanges(Value: WordBool);
begin
  DefaultInterface.InflectRanges := Value;
end;

function TThemePropertiesProperties.Get_InflectionRange: Smallint;
begin
  Result := DefaultInterface.InflectionRange;
end;

procedure TThemePropertiesProperties.Set_InflectionRange(Value: Smallint);
begin
  DefaultInterface.InflectionRange := Value;
end;

function TThemePropertiesProperties.Get_InflectionColor: OLE_COLOR;
begin
  Result := DefaultInterface.InflectionColor;
end;

procedure TThemePropertiesProperties.Set_InflectionColor(Value: OLE_COLOR);
begin
  DefaultInterface.InflectionColor := Value;
end;

function TThemePropertiesProperties.Get_BarFramed: WordBool;
begin
  Result := DefaultInterface.BarFramed;
end;

procedure TThemePropertiesProperties.Set_BarFramed(Value: WordBool);
begin
  DefaultInterface.BarFramed := Value;
end;

{$ENDIF}

class function CoSelection.Create: CMapXSelection;
begin
  Result := CreateComObject(CLASS_Selection) as CMapXSelection;
end;

class function CoSelection.CreateRemote(const MachineName: string): CMapXSelection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Selection) as CMapXSelection;
end;

procedure TSelection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B0929661-BA3A-11CF-9019-00AA00A53B3C}';
    IntfIID:   '{B0929660-BA3A-11CF-9019-00AA00A53B3C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSelection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXSelection;
  end;
end;

procedure TSelection.ConnectTo(svrIntf: CMapXSelection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSelection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSelection.GetDefaultInterface: CMapXSelection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSelection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSelectionProperties.Create(Self);
{$ENDIF}
end;

destructor TSelection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSelection.GetServerProperties: TSelectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSelection.Get_Item(Index: OleVariant): CMapXFeature;
begin
    Result := DefaultInterface.Item[Index];
end;

function TSelection.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TSelection.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TSelection.Clone: CMapXFeatures;
begin
  Result := DefaultInterface.Clone;
end;

function TSelection._Item(Index: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TSelection.RemoveByID(FeatureID: OleVariant);
begin
  DefaultInterface.RemoveByID(FeatureID);
end;

procedure TSelection.Add(const Source: IDispatch);
begin
  DefaultInterface.Add(Source);
end;

procedure TSelection.Replace(const Source: IDispatch);
begin
  DefaultInterface.Replace(Source);
end;

procedure TSelection.Remove(Source: OleVariant);
begin
  DefaultInterface.Remove(Source);
end;

procedure TSelection.Common(const Source: IDispatch);
begin
  DefaultInterface.Common(Source);
end;

procedure TSelection.AddByID(FeatureID: OleVariant);
begin
  DefaultInterface.AddByID(FeatureID);
end;

procedure TSelection.SelectByRectangle(X1: Double; Y1: Double; X2: Double; Y2: Double; 
                                       SelectionFlag: SelectionTypeConstants);
begin
  DefaultInterface.SelectByRectangle(X1, Y1, X2, Y2, SelectionFlag);
end;

procedure TSelection.SelectByRegion(const Layer: IDispatch; FeatureID: OleVariant; 
                                    SelectionFlag: SelectionTypeConstants);
begin
  DefaultInterface.SelectByRegion(Layer, FeatureID, SelectionFlag);
end;

procedure TSelection.ClearSelection;
begin
  DefaultInterface.ClearSelection;
end;

procedure TSelection.SelectByID(FeatureID: OleVariant; SelectionFlag: SelectionTypeConstants);
begin
  DefaultInterface.SelectByID(FeatureID, SelectionFlag);
end;

procedure TSelection.SelectByRadius(X: Double; Y: Double; radius: Double; 
                                    SelectionFlag: SelectionTypeConstants);
begin
  DefaultInterface.SelectByRadius(X, Y, radius, SelectionFlag);
end;

procedure TSelection.SelectByPoint(X: Double; Y: Double; SelectionFlag: SelectionTypeConstants);
begin
  DefaultInterface.SelectByPoint(X, Y, SelectionFlag, EmptyParam);
end;

procedure TSelection.SelectByPoint(X: Double; Y: Double; SelectionFlag: SelectionTypeConstants; 
                                   SearchResultFlags: OleVariant);
begin
  DefaultInterface.SelectByPoint(X, Y, SelectionFlag, SearchResultFlags);
end;

function TSelection.SelectAll(SelectionFlag: SelectionTypeConstants): WordBool;
begin
  Result := DefaultInterface.SelectAll(SelectionFlag);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSelectionProperties.Create(AServer: TSelection);
begin
  inherited Create;
  FServer := AServer;
end;

function TSelectionProperties.GetDefaultInterface: CMapXSelection;
begin
  Result := FServer.DefaultInterface;
end;

function TSelectionProperties.Get_Item(Index: OleVariant): CMapXFeature;
begin
    Result := DefaultInterface.Item[Index];
end;

function TSelectionProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TSelectionProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoFeature.Create: CMapXFeature;
begin
  Result := CreateComObject(CLASS_Feature) as CMapXFeature;
end;

class function CoFeature.CreateRemote(const MachineName: string): CMapXFeature;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Feature) as CMapXFeature;
end;

procedure TFeature.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7278781B-1C44-40BD-9CBA-488047138933}';
    IntfIID:   '{B0929662-BA3A-11CF-9019-00AA00A53B3C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFeature.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFeature;
  end;
end;

procedure TFeature.ConnectTo(svrIntf: CMapXFeature);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFeature.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFeature.GetDefaultInterface: CMapXFeature;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFeature.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFeatureProperties.Create(Self);
{$ENDIF}
end;

destructor TFeature.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFeature.GetServerProperties: TFeatureProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TFeature.Set_Nodes(CSys: OleVariant; Param2: OleVariant);
begin
  DefaultInterface.Nodes[CSys] := Param2;
end;

function TFeature.Get_Nodes(CSys: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Nodes;
end;

function TFeature.Get_Length: Double;
begin
  Result := DefaultInterface.Length;
end;

function TFeature.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFeature.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TFeature.Get_LabelPoint: CMapXPoint;
begin
  Result := DefaultInterface.LabelPoint;
end;

function TFeature.Get_CenterX: Double;
begin
  Result := DefaultInterface.CenterX;
end;

function TFeature.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFeature.Get_type_: FeatureTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TFeature.Set_type_(Value: FeatureTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

function TFeature.Get_Parts: CMapXParts;
begin
  Result := DefaultInterface.Parts;
end;

function TFeature.Get_Area: Double;
begin
  Result := DefaultInterface.Area;
end;

function TFeature.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TFeature.Get__FeatureID: Integer;
begin
  Result := DefaultInterface._FeatureID;
end;

function TFeature.Get_Perimeter: Double;
begin
  Result := DefaultInterface.Perimeter;
end;

function TFeature.Get_Point: CMapXPoint;
begin
  Result := DefaultInterface.Point;
end;

procedure TFeature.Set_Point(const Value: CMapXPoint);
begin
  DefaultInterface.Point := Value;
end;

function TFeature.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFeature.Get_KeyValue: WideString;
begin
  Result := DefaultInterface.KeyValue;
end;

procedure TFeature.Set_KeyValue(const Value: WideString);
begin
  DefaultInterface.KeyValue := Value;
end;

function TFeature.Get_Polyline: IDispatch;
begin
  Result := DefaultInterface.Polyline;
end;

procedure TFeature.Set_Polyline(const Value: IDispatch);
begin
  DefaultInterface.Polyline := Value;
end;

function TFeature.Get_HasPolyline: WordBool;
begin
  Result := DefaultInterface.HasPolyline;
end;

function TFeature.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

function TFeature.Get_Region: IDispatch;
begin
  Result := DefaultInterface.Region;
end;

procedure TFeature.Set_Region(const Value: IDispatch);
begin
  DefaultInterface.Region := Value;
end;

function TFeature.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFeature.Get_Smooth: WordBool;
begin
  Result := DefaultInterface.Smooth;
end;

procedure TFeature.Set_Smooth(Value: WordBool);
begin
  DefaultInterface.Smooth := Value;
end;

function TFeature.Get_CenterY: Double;
begin
  Result := DefaultInterface.CenterY;
end;

function TFeature.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TFeature.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TFeature.Get_HasMultipoint: WordBool;
begin
  Result := DefaultInterface.HasMultipoint;
end;

function TFeature.Get_Multipoint: IDispatch;
begin
  Result := DefaultInterface.Multipoint;
end;

procedure TFeature.Set_Multipoint(const Value: IDispatch);
begin
  DefaultInterface.Multipoint := Value;
end;

function TFeature.Get_HasRegion: WordBool;
begin
  Result := DefaultInterface.HasRegion;
end;

function TFeature.Clone: CMapXFeature;
begin
  Result := DefaultInterface.Clone;
end;

procedure TFeature.Attach(const Map: IDispatch);
begin
  DefaultInterface.Attach(Map);
end;

procedure TFeature.Offset(deltaX: Double; deltaY: Double);
begin
  DefaultInterface.Offset(deltaX, deltaY);
end;

procedure TFeature.Update;
begin
  DefaultInterface.Update(EmptyParam, EmptyParam);
end;

procedure TFeature.Update(UpdateFeature: OleVariant);
begin
  DefaultInterface.Update(UpdateFeature, EmptyParam);
end;

procedure TFeature.Update(UpdateFeature: OleVariant; RowValues: OleVariant);
begin
  DefaultInterface.Update(UpdateFeature, RowValues);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFeatureProperties.Create(AServer: TFeature);
begin
  inherited Create;
  FServer := AServer;
end;

function TFeatureProperties.GetDefaultInterface: CMapXFeature;
begin
  Result := FServer.DefaultInterface;
end;

procedure TFeatureProperties.Set_Nodes(CSys: OleVariant; Param2: OleVariant);
begin
  DefaultInterface.Nodes[CSys] := Param2;
end;

function TFeatureProperties.Get_Nodes(CSys: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Nodes;
end;

function TFeatureProperties.Get_Length: Double;
begin
  Result := DefaultInterface.Length;
end;

function TFeatureProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFeatureProperties.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TFeatureProperties.Get_LabelPoint: CMapXPoint;
begin
  Result := DefaultInterface.LabelPoint;
end;

function TFeatureProperties.Get_CenterX: Double;
begin
  Result := DefaultInterface.CenterX;
end;

function TFeatureProperties.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFeatureProperties.Get_type_: FeatureTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TFeatureProperties.Set_type_(Value: FeatureTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

function TFeatureProperties.Get_Parts: CMapXParts;
begin
  Result := DefaultInterface.Parts;
end;

function TFeatureProperties.Get_Area: Double;
begin
  Result := DefaultInterface.Area;
end;

function TFeatureProperties.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TFeatureProperties.Get__FeatureID: Integer;
begin
  Result := DefaultInterface._FeatureID;
end;

function TFeatureProperties.Get_Perimeter: Double;
begin
  Result := DefaultInterface.Perimeter;
end;

function TFeatureProperties.Get_Point: CMapXPoint;
begin
  Result := DefaultInterface.Point;
end;

procedure TFeatureProperties.Set_Point(const Value: CMapXPoint);
begin
  DefaultInterface.Point := Value;
end;

function TFeatureProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFeatureProperties.Get_KeyValue: WideString;
begin
  Result := DefaultInterface.KeyValue;
end;

procedure TFeatureProperties.Set_KeyValue(const Value: WideString);
begin
  DefaultInterface.KeyValue := Value;
end;

function TFeatureProperties.Get_Polyline: IDispatch;
begin
  Result := DefaultInterface.Polyline;
end;

procedure TFeatureProperties.Set_Polyline(const Value: IDispatch);
begin
  DefaultInterface.Polyline := Value;
end;

function TFeatureProperties.Get_HasPolyline: WordBool;
begin
  Result := DefaultInterface.HasPolyline;
end;

function TFeatureProperties.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

function TFeatureProperties.Get_Region: IDispatch;
begin
  Result := DefaultInterface.Region;
end;

procedure TFeatureProperties.Set_Region(const Value: IDispatch);
begin
  DefaultInterface.Region := Value;
end;

function TFeatureProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFeatureProperties.Get_Smooth: WordBool;
begin
  Result := DefaultInterface.Smooth;
end;

procedure TFeatureProperties.Set_Smooth(Value: WordBool);
begin
  DefaultInterface.Smooth := Value;
end;

function TFeatureProperties.Get_CenterY: Double;
begin
  Result := DefaultInterface.CenterY;
end;

function TFeatureProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TFeatureProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TFeatureProperties.Get_HasMultipoint: WordBool;
begin
  Result := DefaultInterface.HasMultipoint;
end;

function TFeatureProperties.Get_Multipoint: IDispatch;
begin
  Result := DefaultInterface.Multipoint;
end;

procedure TFeatureProperties.Set_Multipoint(const Value: IDispatch);
begin
  DefaultInterface.Multipoint := Value;
end;

function TFeatureProperties.Get_HasRegion: WordBool;
begin
  Result := DefaultInterface.HasRegion;
end;

{$ENDIF}

class function CoRangeCategory.Create: CMapXRangeCategory;
begin
  Result := CreateComObject(CLASS_RangeCategory) as CMapXRangeCategory;
end;

class function CoRangeCategory.CreateRemote(const MachineName: string): CMapXRangeCategory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RangeCategory) as CMapXRangeCategory;
end;

procedure TRangeCategory.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{97F45D07-BF8A-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{97F45D06-BF8A-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRangeCategory.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXRangeCategory;
  end;
end;

procedure TRangeCategory.ConnectTo(svrIntf: CMapXRangeCategory);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRangeCategory.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRangeCategory.GetDefaultInterface: CMapXRangeCategory;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TRangeCategory.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRangeCategoryProperties.Create(Self);
{$ENDIF}
end;

destructor TRangeCategory.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRangeCategory.GetServerProperties: TRangeCategoryProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRangeCategory.Get_Min: Double;
begin
  Result := DefaultInterface.Min;
end;

procedure TRangeCategory.Set_Min(Value: Double);
begin
  DefaultInterface.Min := Value;
end;

function TRangeCategory.Get_Max: Double;
begin
  Result := DefaultInterface.Max;
end;

procedure TRangeCategory.Set_Max(Value: Double);
begin
  DefaultInterface.Max := Value;
end;

function TRangeCategory.Get_NumItems: Integer;
begin
  Result := DefaultInterface.NumItems;
end;

function TRangeCategory.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TRangeCategory.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRangeCategoryProperties.Create(AServer: TRangeCategory);
begin
  inherited Create;
  FServer := AServer;
end;

function TRangeCategoryProperties.GetDefaultInterface: CMapXRangeCategory;
begin
  Result := FServer.DefaultInterface;
end;

function TRangeCategoryProperties.Get_Min: Double;
begin
  Result := DefaultInterface.Min;
end;

procedure TRangeCategoryProperties.Set_Min(Value: Double);
begin
  DefaultInterface.Min := Value;
end;

function TRangeCategoryProperties.Get_Max: Double;
begin
  Result := DefaultInterface.Max;
end;

procedure TRangeCategoryProperties.Set_Max(Value: Double);
begin
  DefaultInterface.Max := Value;
end;

function TRangeCategoryProperties.Get_NumItems: Integer;
begin
  Result := DefaultInterface.NumItems;
end;

function TRangeCategoryProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TRangeCategoryProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$ENDIF}

class function CoFields.Create: CMapXFields;
begin
  Result := CreateComObject(CLASS_Fields) as CMapXFields;
end;

class function CoFields.CreateRemote(const MachineName: string): CMapXFields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Fields) as CMapXFields;
end;

procedure TFields.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6FD7917A-0B74-4963-8267-52249CF53842}';
    IntfIID:   '{3DBD18C2-C2AC-11CF-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFields.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFields;
  end;
end;

procedure TFields.ConnectTo(svrIntf: CMapXFields);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFields.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFields.GetDefaultInterface: CMapXFields;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFields.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFieldsProperties.Create(Self);
{$ENDIF}
end;

destructor TFields.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFields.GetServerProperties: TFieldsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFields.Get_Item(Index: OleVariant): CMapXField;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFields.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TFields.Add(SourceField: OleVariant): CMapXField;
begin
  Result := DefaultInterface.Add(SourceField, EmptyParam, EmptyParam, EmptyParam);
end;

function TFields.Add(SourceField: OleVariant; Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.Add(SourceField, Name, EmptyParam, EmptyParam);
end;

function TFields.Add(SourceField: OleVariant; Name: OleVariant; AggregationFunction: OleVariant): CMapXField;
begin
  Result := DefaultInterface.Add(SourceField, Name, AggregationFunction, EmptyParam);
end;

function TFields.Add(SourceField: OleVariant; Name: OleVariant; AggregationFunction: OleVariant; 
                     Type_: OleVariant): CMapXField;
begin
  Result := DefaultInterface.Add(SourceField, Name, AggregationFunction, Type_);
end;

function TFields._Item(Index: OleVariant): CMapXField;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TFields.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

procedure TFields.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

function TFields.AddStringField(Name: OleVariant; Width: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddStringField(Name, Width, EmptyParam);
end;

function TFields.AddStringField(Name: OleVariant; Width: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddStringField(Name, Width, Indexed);
end;

function TFields.AddLogicalField(Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddLogicalField(Name, EmptyParam);
end;

function TFields.AddLogicalField(Name: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddLogicalField(Name, Indexed);
end;

function TFields.AddDateField(Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddDateField(Name, EmptyParam);
end;

function TFields.AddDateField(Name: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddDateField(Name, Indexed);
end;

function TFields.AddIntegerField(Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddIntegerField(Name, EmptyParam);
end;

function TFields.AddIntegerField(Name: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddIntegerField(Name, Indexed);
end;

function TFields.AddSmallIntField(Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddSmallIntField(Name, EmptyParam);
end;

function TFields.AddSmallIntField(Name: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddSmallIntField(Name, Indexed);
end;

function TFields.AddNumericField(Name: OleVariant; Precision: OleVariant; Decimals: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddNumericField(Name, Precision, Decimals, EmptyParam);
end;

function TFields.AddNumericField(Name: OleVariant; Precision: OleVariant; Decimals: OleVariant; 
                                 Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddNumericField(Name, Precision, Decimals, Indexed);
end;

function TFields.AddFloatField(Name: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddFloatField(Name, EmptyParam);
end;

function TFields.AddFloatField(Name: OleVariant; Indexed: OleVariant): CMapXField;
begin
  Result := DefaultInterface.AddFloatField(Name, Indexed);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFieldsProperties.Create(AServer: TFields);
begin
  inherited Create;
  FServer := AServer;
end;

function TFieldsProperties.GetDefaultInterface: CMapXFields;
begin
  Result := FServer.DefaultInterface;
end;

function TFieldsProperties.Get_Item(Index: OleVariant): CMapXField;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFieldsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoStyle.Create: CMapXStyle;
begin
  Result := CreateComObject(CLASS_Style) as CMapXStyle;
end;

class function CoStyle.CreateRemote(const MachineName: string): CMapXStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Style) as CMapXStyle;
end;

procedure TStyle.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A2C029E1-C867-4175-AC0C-233F7B65894A}';
    IntfIID:   '{1C1EE340-C439-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TStyle.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXStyle;
  end;
end;

procedure TStyle.ConnectTo(svrIntf: CMapXStyle);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TStyle.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TStyle.GetDefaultInterface: CMapXStyle;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TStyle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TStyleProperties.Create(Self);
{$ENDIF}
end;

destructor TStyle.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TStyle.GetServerProperties: TStyleProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TStyle.Get_RegionColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionColor;
end;

procedure TStyle.Set_RegionColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionColor := Value;
end;

function TStyle.Get_RegionPattern: FillPatternConstants;
begin
  Result := DefaultInterface.RegionPattern;
end;

procedure TStyle.Set_RegionPattern(Value: FillPatternConstants);
begin
  DefaultInterface.RegionPattern := Value;
end;

function TStyle.Get_TextFontDblSpace: WordBool;
begin
  Result := DefaultInterface.TextFontDblSpace;
end;

procedure TStyle.Set_TextFontDblSpace(Value: WordBool);
begin
  DefaultInterface.TextFontDblSpace := Value;
end;

function TStyle.Get_TextFontShadow: WordBool;
begin
  Result := DefaultInterface.TextFontShadow;
end;

procedure TStyle.Set_TextFontShadow(Value: WordBool);
begin
  DefaultInterface.TextFontShadow := Value;
end;

function TStyle.Get_TextFontAllCaps: WordBool;
begin
  Result := DefaultInterface.TextFontAllCaps;
end;

procedure TStyle.Set_TextFontAllCaps(Value: WordBool);
begin
  DefaultInterface.TextFontAllCaps := Value;
end;

function TStyle.Get_LineColor: OLE_COLOR;
begin
  Result := DefaultInterface.LineColor;
end;

procedure TStyle.Set_LineColor(Value: OLE_COLOR);
begin
  DefaultInterface.LineColor := Value;
end;

function TStyle.Get_LineStyle: PenStyleConstants;
begin
  Result := DefaultInterface.LineStyle;
end;

procedure TStyle.Set_LineStyle(Value: PenStyleConstants);
begin
  DefaultInterface.LineStyle := Value;
end;

function TStyle.Get_SymbolCharacter: Smallint;
begin
  Result := DefaultInterface.SymbolCharacter;
end;

procedure TStyle.Set_SymbolCharacter(Value: Smallint);
begin
  DefaultInterface.SymbolCharacter := Value;
end;

function TStyle.Get_RegionBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionBackColor;
end;

procedure TStyle.Set_RegionBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionBackColor := Value;
end;

function TStyle.Get_LineWidth: Smallint;
begin
  Result := DefaultInterface.LineWidth;
end;

procedure TStyle.Set_LineWidth(Value: Smallint);
begin
  DefaultInterface.LineWidth := Value;
end;

function TStyle.Get_SymbolBitmapTransparent: WordBool;
begin
  Result := DefaultInterface.SymbolBitmapTransparent;
end;

procedure TStyle.Set_SymbolBitmapTransparent(Value: WordBool);
begin
  DefaultInterface.SymbolBitmapTransparent := Value;
end;

function TStyle.Get_TextFontOpaque: WordBool;
begin
  Result := DefaultInterface.TextFontOpaque;
end;

procedure TStyle.Set_TextFontOpaque(Value: WordBool);
begin
  DefaultInterface.TextFontOpaque := Value;
end;

function TStyle.Get_SymbolFontColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolFontColor;
end;

procedure TStyle.Set_SymbolFontColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolFontColor := Value;
end;

function TStyle.Get_TextFontHalo: WordBool;
begin
  Result := DefaultInterface.TextFontHalo;
end;

procedure TStyle.Set_TextFontHalo(Value: WordBool);
begin
  DefaultInterface.TextFontHalo := Value;
end;

function TStyle.Get_SymbolFontHalo: WordBool;
begin
  Result := DefaultInterface.SymbolFontHalo;
end;

procedure TStyle.Set_SymbolFontHalo(Value: WordBool);
begin
  DefaultInterface.SymbolFontHalo := Value;
end;

function TStyle.Get_SymbolFontShadow: WordBool;
begin
  Result := DefaultInterface.SymbolFontShadow;
end;

procedure TStyle.Set_SymbolFontShadow(Value: WordBool);
begin
  DefaultInterface.SymbolFontShadow := Value;
end;

function TStyle.Get_SymbolBitmapColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolBitmapColor;
end;

procedure TStyle.Set_SymbolBitmapColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolBitmapColor := Value;
end;

function TStyle.Get_SymbolBitmapName: WideString;
begin
  Result := DefaultInterface.SymbolBitmapName;
end;

procedure TStyle.Set_SymbolBitmapName(const Value: WideString);
begin
  DefaultInterface.SymbolBitmapName := Value;
end;

function TStyle.Get_SymbolBitmapOverrideColor: WordBool;
begin
  Result := DefaultInterface.SymbolBitmapOverrideColor;
end;

procedure TStyle.Set_SymbolBitmapOverrideColor(Value: WordBool);
begin
  DefaultInterface.SymbolBitmapOverrideColor := Value;
end;

function TStyle.Get_SymbolFontBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolFontBackColor;
end;

procedure TStyle.Set_SymbolFontBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolFontBackColor := Value;
end;

function TStyle.Get_SymbolFontOpaque: WordBool;
begin
  Result := DefaultInterface.SymbolFontOpaque;
end;

procedure TStyle.Set_SymbolFontOpaque(Value: WordBool);
begin
  DefaultInterface.SymbolFontOpaque := Value;
end;

function TStyle.Get_SymbolFont: IFontDisp;
begin
  Result := DefaultInterface.SymbolFont;
end;

function TStyle.Get_SupportsBitmapSymbols: WordBool;
begin
  Result := DefaultInterface.SupportsBitmapSymbols;
end;

function TStyle.Get_SymbolBitmapSize: Integer;
begin
  Result := DefaultInterface.SymbolBitmapSize;
end;

procedure TStyle.Set_SymbolBitmapSize(Value: Integer);
begin
  DefaultInterface.SymbolBitmapSize := Value;
end;

function TStyle.Get_LineWidthUnit: StyleUnitConstants;
begin
  Result := DefaultInterface.LineWidthUnit;
end;

procedure TStyle.Set_LineWidthUnit(Value: StyleUnitConstants);
begin
  DefaultInterface.LineWidthUnit := Value;
end;

function TStyle.Get_MinVectorSymbolCharacter: Smallint;
begin
  Result := DefaultInterface.MinVectorSymbolCharacter;
end;

function TStyle.Get_SymbolVectorSize: Smallint;
begin
  Result := DefaultInterface.SymbolVectorSize;
end;

procedure TStyle.Set_SymbolVectorSize(Value: Smallint);
begin
  DefaultInterface.SymbolVectorSize := Value;
end;

function TStyle.Get_RegionTransparent: WordBool;
begin
  Result := DefaultInterface.RegionTransparent;
end;

procedure TStyle.Set_RegionTransparent(Value: WordBool);
begin
  DefaultInterface.RegionTransparent := Value;
end;

function TStyle.Get_LineStyleCount: Integer;
begin
  Result := DefaultInterface.LineStyleCount;
end;

function TStyle.Get_LineInterleaved: WordBool;
begin
  Result := DefaultInterface.LineInterleaved;
end;

procedure TStyle.Set_LineInterleaved(Value: WordBool);
begin
  DefaultInterface.LineInterleaved := Value;
end;

function TStyle.Get_SymbolType: SymbolTypeConstants;
begin
  Result := DefaultInterface.SymbolType;
end;

procedure TStyle.Set_SymbolType(Value: SymbolTypeConstants);
begin
  DefaultInterface.SymbolType := Value;
end;

function TStyle.Get_SymbolFontRotation: Smallint;
begin
  Result := DefaultInterface.SymbolFontRotation;
end;

procedure TStyle.Set_SymbolFontRotation(Value: Smallint);
begin
  DefaultInterface.SymbolFontRotation := Value;
end;

function TStyle.Get_MaxVectorSymbolCharacter: Smallint;
begin
  Result := DefaultInterface.MaxVectorSymbolCharacter;
end;

function TStyle.Get_RegionBorderStyle: PenStyleConstants;
begin
  Result := DefaultInterface.RegionBorderStyle;
end;

procedure TStyle.Set_RegionBorderStyle(Value: PenStyleConstants);
begin
  DefaultInterface.RegionBorderStyle := Value;
end;

function TStyle.Get_RegionBorderColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionBorderColor;
end;

procedure TStyle.Set_RegionBorderColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionBorderColor := Value;
end;

function TStyle.Get_TextFont: IFontDisp;
begin
  Result := DefaultInterface.TextFont;
end;

function TStyle.Get_TextFontColor: OLE_COLOR;
begin
  Result := DefaultInterface.TextFontColor;
end;

procedure TStyle.Set_TextFontColor(Value: OLE_COLOR);
begin
  DefaultInterface.TextFontColor := Value;
end;

function TStyle.Get_TextFontBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.TextFontBackColor;
end;

procedure TStyle.Set_TextFontBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.TextFontBackColor := Value;
end;

function TStyle.Get_RegionBorderWidthUnit: StyleUnitConstants;
begin
  Result := DefaultInterface.RegionBorderWidthUnit;
end;

procedure TStyle.Set_RegionBorderWidthUnit(Value: StyleUnitConstants);
begin
  DefaultInterface.RegionBorderWidthUnit := Value;
end;

function TStyle.Get_SymbolVectorColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolVectorColor;
end;

procedure TStyle.Set_SymbolVectorColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolVectorColor := Value;
end;

function TStyle.Get_LineSupportsInterleave: WordBool;
begin
  Result := DefaultInterface.LineSupportsInterleave;
end;

function TStyle.Get_RegionBorderWidth: Smallint;
begin
  Result := DefaultInterface.RegionBorderWidth;
end;

procedure TStyle.Set_RegionBorderWidth(Value: Smallint);
begin
  DefaultInterface.RegionBorderWidth := Value;
end;

function TStyle.Get_TextFontRotation: Smallint;
begin
  Result := DefaultInterface.TextFontRotation;
end;

procedure TStyle.Set_TextFontRotation(Value: Smallint);
begin
  DefaultInterface.TextFontRotation := Value;
end;

procedure TStyle.ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; 
                                  Width: Double; Height: Double; const SampleText: WideString);
begin
  DefaultInterface.ExportTextSample(Destination, Format, Width, Height, SampleText, EmptyParam);
end;

procedure TStyle.ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; 
                                  Width: Double; Height: Double; const SampleText: WideString; 
                                  BackgroundColor: OleVariant);
begin
  DefaultInterface.ExportTextSample(Destination, Format, Width, Height, SampleText, BackgroundColor);
end;

procedure TStyle.ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; 
                                  Width: Double; Height: Double);
begin
  DefaultInterface.ExportLineSample(Destination, Format, Width, Height, EmptyParam);
end;

procedure TStyle.ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; 
                                  Width: Double; Height: Double; BackgroundColor: OleVariant);
begin
  DefaultInterface.ExportLineSample(Destination, Format, Width, Height, BackgroundColor);
end;

procedure TStyle.ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; 
                                    Width: Double; Height: Double);
begin
  DefaultInterface.ExportRegionSample(Destination, Format, Width, Height, EmptyParam);
end;

procedure TStyle.ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; 
                                    Width: Double; Height: Double; BackgroundColor: OleVariant);
begin
  DefaultInterface.ExportRegionSample(Destination, Format, Width, Height, BackgroundColor);
end;

procedure TStyle.ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; 
                                    Width: Double; Height: Double);
begin
  DefaultInterface.ExportSymbolSample(Destination, Format, Width, Height, EmptyParam);
end;

procedure TStyle.ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; 
                                    Width: Double; Height: Double; BackgroundColor: OleVariant);
begin
  DefaultInterface.ExportSymbolSample(Destination, Format, Width, Height, BackgroundColor);
end;

function TStyle.Clone: CMapXStyle;
begin
  Result := DefaultInterface.Clone;
end;

procedure TStyle.DrawLineSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
begin
  DefaultInterface.DrawLineSample(hDC, Rectangle);
end;

procedure TStyle.DrawRegionSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
begin
  DefaultInterface.DrawRegionSample(hDC, Rectangle);
end;

procedure TStyle.DrawSymbolSample(hDC: OLE_HANDLE; const Rectangle: IDispatch);
begin
  DefaultInterface.DrawSymbolSample(hDC, Rectangle);
end;

procedure TStyle.DrawTextSample(hDC: OLE_HANDLE; const Rectangle: IDispatch; 
                                const SampleText: WideString);
begin
  DefaultInterface.DrawTextSample(hDC, Rectangle, SampleText);
end;

function TStyle.PickSymbol: WordBool;
begin
  Result := DefaultInterface.PickSymbol;
end;

function TStyle.PickText: WordBool;
begin
  Result := DefaultInterface.PickText;
end;

function TStyle.PickLine: WordBool;
begin
  Result := DefaultInterface.PickLine;
end;

function TStyle.PickRegion: WordBool;
begin
  Result := DefaultInterface.PickRegion;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TStyleProperties.Create(AServer: TStyle);
begin
  inherited Create;
  FServer := AServer;
end;

function TStyleProperties.GetDefaultInterface: CMapXStyle;
begin
  Result := FServer.DefaultInterface;
end;

function TStyleProperties.Get_RegionColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionColor;
end;

procedure TStyleProperties.Set_RegionColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionColor := Value;
end;

function TStyleProperties.Get_RegionPattern: FillPatternConstants;
begin
  Result := DefaultInterface.RegionPattern;
end;

procedure TStyleProperties.Set_RegionPattern(Value: FillPatternConstants);
begin
  DefaultInterface.RegionPattern := Value;
end;

function TStyleProperties.Get_TextFontDblSpace: WordBool;
begin
  Result := DefaultInterface.TextFontDblSpace;
end;

procedure TStyleProperties.Set_TextFontDblSpace(Value: WordBool);
begin
  DefaultInterface.TextFontDblSpace := Value;
end;

function TStyleProperties.Get_TextFontShadow: WordBool;
begin
  Result := DefaultInterface.TextFontShadow;
end;

procedure TStyleProperties.Set_TextFontShadow(Value: WordBool);
begin
  DefaultInterface.TextFontShadow := Value;
end;

function TStyleProperties.Get_TextFontAllCaps: WordBool;
begin
  Result := DefaultInterface.TextFontAllCaps;
end;

procedure TStyleProperties.Set_TextFontAllCaps(Value: WordBool);
begin
  DefaultInterface.TextFontAllCaps := Value;
end;

function TStyleProperties.Get_LineColor: OLE_COLOR;
begin
  Result := DefaultInterface.LineColor;
end;

procedure TStyleProperties.Set_LineColor(Value: OLE_COLOR);
begin
  DefaultInterface.LineColor := Value;
end;

function TStyleProperties.Get_LineStyle: PenStyleConstants;
begin
  Result := DefaultInterface.LineStyle;
end;

procedure TStyleProperties.Set_LineStyle(Value: PenStyleConstants);
begin
  DefaultInterface.LineStyle := Value;
end;

function TStyleProperties.Get_SymbolCharacter: Smallint;
begin
  Result := DefaultInterface.SymbolCharacter;
end;

procedure TStyleProperties.Set_SymbolCharacter(Value: Smallint);
begin
  DefaultInterface.SymbolCharacter := Value;
end;

function TStyleProperties.Get_RegionBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionBackColor;
end;

procedure TStyleProperties.Set_RegionBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionBackColor := Value;
end;

function TStyleProperties.Get_LineWidth: Smallint;
begin
  Result := DefaultInterface.LineWidth;
end;

procedure TStyleProperties.Set_LineWidth(Value: Smallint);
begin
  DefaultInterface.LineWidth := Value;
end;

function TStyleProperties.Get_SymbolBitmapTransparent: WordBool;
begin
  Result := DefaultInterface.SymbolBitmapTransparent;
end;

procedure TStyleProperties.Set_SymbolBitmapTransparent(Value: WordBool);
begin
  DefaultInterface.SymbolBitmapTransparent := Value;
end;

function TStyleProperties.Get_TextFontOpaque: WordBool;
begin
  Result := DefaultInterface.TextFontOpaque;
end;

procedure TStyleProperties.Set_TextFontOpaque(Value: WordBool);
begin
  DefaultInterface.TextFontOpaque := Value;
end;

function TStyleProperties.Get_SymbolFontColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolFontColor;
end;

procedure TStyleProperties.Set_SymbolFontColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolFontColor := Value;
end;

function TStyleProperties.Get_TextFontHalo: WordBool;
begin
  Result := DefaultInterface.TextFontHalo;
end;

procedure TStyleProperties.Set_TextFontHalo(Value: WordBool);
begin
  DefaultInterface.TextFontHalo := Value;
end;

function TStyleProperties.Get_SymbolFontHalo: WordBool;
begin
  Result := DefaultInterface.SymbolFontHalo;
end;

procedure TStyleProperties.Set_SymbolFontHalo(Value: WordBool);
begin
  DefaultInterface.SymbolFontHalo := Value;
end;

function TStyleProperties.Get_SymbolFontShadow: WordBool;
begin
  Result := DefaultInterface.SymbolFontShadow;
end;

procedure TStyleProperties.Set_SymbolFontShadow(Value: WordBool);
begin
  DefaultInterface.SymbolFontShadow := Value;
end;

function TStyleProperties.Get_SymbolBitmapColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolBitmapColor;
end;

procedure TStyleProperties.Set_SymbolBitmapColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolBitmapColor := Value;
end;

function TStyleProperties.Get_SymbolBitmapName: WideString;
begin
  Result := DefaultInterface.SymbolBitmapName;
end;

procedure TStyleProperties.Set_SymbolBitmapName(const Value: WideString);
begin
  DefaultInterface.SymbolBitmapName := Value;
end;

function TStyleProperties.Get_SymbolBitmapOverrideColor: WordBool;
begin
  Result := DefaultInterface.SymbolBitmapOverrideColor;
end;

procedure TStyleProperties.Set_SymbolBitmapOverrideColor(Value: WordBool);
begin
  DefaultInterface.SymbolBitmapOverrideColor := Value;
end;

function TStyleProperties.Get_SymbolFontBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolFontBackColor;
end;

procedure TStyleProperties.Set_SymbolFontBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolFontBackColor := Value;
end;

function TStyleProperties.Get_SymbolFontOpaque: WordBool;
begin
  Result := DefaultInterface.SymbolFontOpaque;
end;

procedure TStyleProperties.Set_SymbolFontOpaque(Value: WordBool);
begin
  DefaultInterface.SymbolFontOpaque := Value;
end;

function TStyleProperties.Get_SymbolFont: IFontDisp;
begin
  Result := DefaultInterface.SymbolFont;
end;

function TStyleProperties.Get_SupportsBitmapSymbols: WordBool;
begin
  Result := DefaultInterface.SupportsBitmapSymbols;
end;

function TStyleProperties.Get_SymbolBitmapSize: Integer;
begin
  Result := DefaultInterface.SymbolBitmapSize;
end;

procedure TStyleProperties.Set_SymbolBitmapSize(Value: Integer);
begin
  DefaultInterface.SymbolBitmapSize := Value;
end;

function TStyleProperties.Get_LineWidthUnit: StyleUnitConstants;
begin
  Result := DefaultInterface.LineWidthUnit;
end;

procedure TStyleProperties.Set_LineWidthUnit(Value: StyleUnitConstants);
begin
  DefaultInterface.LineWidthUnit := Value;
end;

function TStyleProperties.Get_MinVectorSymbolCharacter: Smallint;
begin
  Result := DefaultInterface.MinVectorSymbolCharacter;
end;

function TStyleProperties.Get_SymbolVectorSize: Smallint;
begin
  Result := DefaultInterface.SymbolVectorSize;
end;

procedure TStyleProperties.Set_SymbolVectorSize(Value: Smallint);
begin
  DefaultInterface.SymbolVectorSize := Value;
end;

function TStyleProperties.Get_RegionTransparent: WordBool;
begin
  Result := DefaultInterface.RegionTransparent;
end;

procedure TStyleProperties.Set_RegionTransparent(Value: WordBool);
begin
  DefaultInterface.RegionTransparent := Value;
end;

function TStyleProperties.Get_LineStyleCount: Integer;
begin
  Result := DefaultInterface.LineStyleCount;
end;

function TStyleProperties.Get_LineInterleaved: WordBool;
begin
  Result := DefaultInterface.LineInterleaved;
end;

procedure TStyleProperties.Set_LineInterleaved(Value: WordBool);
begin
  DefaultInterface.LineInterleaved := Value;
end;

function TStyleProperties.Get_SymbolType: SymbolTypeConstants;
begin
  Result := DefaultInterface.SymbolType;
end;

procedure TStyleProperties.Set_SymbolType(Value: SymbolTypeConstants);
begin
  DefaultInterface.SymbolType := Value;
end;

function TStyleProperties.Get_SymbolFontRotation: Smallint;
begin
  Result := DefaultInterface.SymbolFontRotation;
end;

procedure TStyleProperties.Set_SymbolFontRotation(Value: Smallint);
begin
  DefaultInterface.SymbolFontRotation := Value;
end;

function TStyleProperties.Get_MaxVectorSymbolCharacter: Smallint;
begin
  Result := DefaultInterface.MaxVectorSymbolCharacter;
end;

function TStyleProperties.Get_RegionBorderStyle: PenStyleConstants;
begin
  Result := DefaultInterface.RegionBorderStyle;
end;

procedure TStyleProperties.Set_RegionBorderStyle(Value: PenStyleConstants);
begin
  DefaultInterface.RegionBorderStyle := Value;
end;

function TStyleProperties.Get_RegionBorderColor: OLE_COLOR;
begin
  Result := DefaultInterface.RegionBorderColor;
end;

procedure TStyleProperties.Set_RegionBorderColor(Value: OLE_COLOR);
begin
  DefaultInterface.RegionBorderColor := Value;
end;

function TStyleProperties.Get_TextFont: IFontDisp;
begin
  Result := DefaultInterface.TextFont;
end;

function TStyleProperties.Get_TextFontColor: OLE_COLOR;
begin
  Result := DefaultInterface.TextFontColor;
end;

procedure TStyleProperties.Set_TextFontColor(Value: OLE_COLOR);
begin
  DefaultInterface.TextFontColor := Value;
end;

function TStyleProperties.Get_TextFontBackColor: OLE_COLOR;
begin
  Result := DefaultInterface.TextFontBackColor;
end;

procedure TStyleProperties.Set_TextFontBackColor(Value: OLE_COLOR);
begin
  DefaultInterface.TextFontBackColor := Value;
end;

function TStyleProperties.Get_RegionBorderWidthUnit: StyleUnitConstants;
begin
  Result := DefaultInterface.RegionBorderWidthUnit;
end;

procedure TStyleProperties.Set_RegionBorderWidthUnit(Value: StyleUnitConstants);
begin
  DefaultInterface.RegionBorderWidthUnit := Value;
end;

function TStyleProperties.Get_SymbolVectorColor: OLE_COLOR;
begin
  Result := DefaultInterface.SymbolVectorColor;
end;

procedure TStyleProperties.Set_SymbolVectorColor(Value: OLE_COLOR);
begin
  DefaultInterface.SymbolVectorColor := Value;
end;

function TStyleProperties.Get_LineSupportsInterleave: WordBool;
begin
  Result := DefaultInterface.LineSupportsInterleave;
end;

function TStyleProperties.Get_RegionBorderWidth: Smallint;
begin
  Result := DefaultInterface.RegionBorderWidth;
end;

procedure TStyleProperties.Set_RegionBorderWidth(Value: Smallint);
begin
  DefaultInterface.RegionBorderWidth := Value;
end;

function TStyleProperties.Get_TextFontRotation: Smallint;
begin
  Result := DefaultInterface.TextFontRotation;
end;

procedure TStyleProperties.Set_TextFontRotation(Value: Smallint);
begin
  DefaultInterface.TextFontRotation := Value;
end;

{$ENDIF}

class function CoIndividualValueCategory.Create: CMapXIValueCategory;
begin
  Result := CreateComObject(CLASS_IndividualValueCategory) as CMapXIValueCategory;
end;

class function CoIndividualValueCategory.CreateRemote(const MachineName: string): CMapXIValueCategory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IndividualValueCategory) as CMapXIValueCategory;
end;

procedure TIndividualValueCategory.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{985148C4-C84B-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{985148C3-C84B-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIndividualValueCategory.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXIValueCategory;
  end;
end;

procedure TIndividualValueCategory.ConnectTo(svrIntf: CMapXIValueCategory);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIndividualValueCategory.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIndividualValueCategory.GetDefaultInterface: CMapXIValueCategory;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TIndividualValueCategory.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TIndividualValueCategoryProperties.Create(Self);
{$ENDIF}
end;

destructor TIndividualValueCategory.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TIndividualValueCategory.GetServerProperties: TIndividualValueCategoryProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TIndividualValueCategory.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TIndividualValueCategory.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TIndividualValueCategory.Get_NumItems: Integer;
begin
  Result := DefaultInterface.NumItems;
end;

function TIndividualValueCategory.Get_Value: WideString;
begin
  Result := DefaultInterface.Value;
end;

procedure TIndividualValueCategory.Set_Value(const Value: WideString);
begin
  DefaultInterface.Value := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TIndividualValueCategoryProperties.Create(AServer: TIndividualValueCategory);
begin
  inherited Create;
  FServer := AServer;
end;

function TIndividualValueCategoryProperties.GetDefaultInterface: CMapXIValueCategory;
begin
  Result := FServer.DefaultInterface;
end;

function TIndividualValueCategoryProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TIndividualValueCategoryProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TIndividualValueCategoryProperties.Get_NumItems: Integer;
begin
  Result := DefaultInterface.NumItems;
end;

function TIndividualValueCategoryProperties.Get_Value: WideString;
begin
  Result := DefaultInterface.Value;
end;

procedure TIndividualValueCategoryProperties.Set_Value(const Value: WideString);
begin
  DefaultInterface.Value := Value;
end;

{$ENDIF}

class function CoMultiVarCategory.Create: CMapXMultiVarCategory;
begin
  Result := CreateComObject(CLASS_MultiVarCategory) as CMapXMultiVarCategory;
end;

class function CoMultiVarCategory.CreateRemote(const MachineName: string): CMapXMultiVarCategory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MultiVarCategory) as CMapXMultiVarCategory;
end;

procedure TMultiVarCategory.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6DDA5661-C853-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{6DDA5660-C853-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMultiVarCategory.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXMultiVarCategory;
  end;
end;

procedure TMultiVarCategory.ConnectTo(svrIntf: CMapXMultiVarCategory);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMultiVarCategory.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMultiVarCategory.GetDefaultInterface: CMapXMultiVarCategory;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMultiVarCategory.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMultiVarCategoryProperties.Create(Self);
{$ENDIF}
end;

destructor TMultiVarCategory.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMultiVarCategory.GetServerProperties: TMultiVarCategoryProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMultiVarCategory.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TMultiVarCategory.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMultiVarCategoryProperties.Create(AServer: TMultiVarCategory);
begin
  inherited Create;
  FServer := AServer;
end;

function TMultiVarCategoryProperties.GetDefaultInterface: CMapXMultiVarCategory;
begin
  Result := FServer.DefaultInterface;
end;

function TMultiVarCategoryProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TMultiVarCategoryProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$ENDIF}

class function CoSourceRows.Create: CMapXSourceRows;
begin
  Result := CreateComObject(CLASS_SourceRows) as CMapXSourceRows;
end;

class function CoSourceRows.CreateRemote(const MachineName: string): CMapXSourceRows;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SourceRows) as CMapXSourceRows;
end;

procedure TSourceRows.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46FF43C1-C9ED-11CF-8796-00AA00B7EF73}';
    IntfIID:   '{46FF43C0-C9ED-11CF-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSourceRows.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXSourceRows;
  end;
end;

procedure TSourceRows.ConnectTo(svrIntf: CMapXSourceRows);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSourceRows.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSourceRows.GetDefaultInterface: CMapXSourceRows;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSourceRows.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSourceRowsProperties.Create(Self);
{$ENDIF}
end;

destructor TSourceRows.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSourceRows.GetServerProperties: TSourceRowsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSourceRows.Get_Item(Index: OleVariant): CMapXSourceRow;
begin
    Result := DefaultInterface.Item[Index];
end;

function TSourceRows.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TSourceRows._Item(Index: OleVariant): CMapXSourceRow;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSourceRowsProperties.Create(AServer: TSourceRows);
begin
  inherited Create;
  FServer := AServer;
end;

function TSourceRowsProperties.GetDefaultInterface: CMapXSourceRows;
begin
  Result := FServer.DefaultInterface;
end;

function TSourceRowsProperties.Get_Item(Index: OleVariant): CMapXSourceRow;
begin
    Result := DefaultInterface.Item[Index];
end;

function TSourceRowsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoSourceRow.Create: CMapXSourceRow;
begin
  Result := CreateComObject(CLASS_SourceRow) as CMapXSourceRow;
end;

class function CoSourceRow.CreateRemote(const MachineName: string): CMapXSourceRow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SourceRow) as CMapXSourceRow;
end;

procedure TSourceRow.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46FF43C3-C9ED-11CF-8796-00AA00B7EF73}';
    IntfIID:   '{46FF43C2-C9ED-11CF-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSourceRow.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXSourceRow;
  end;
end;

procedure TSourceRow.ConnectTo(svrIntf: CMapXSourceRow);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSourceRow.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSourceRow.GetDefaultInterface: CMapXSourceRow;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSourceRow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSourceRowProperties.Create(Self);
{$ENDIF}
end;

destructor TSourceRow.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSourceRow.GetServerProperties: TSourceRowProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSourceRow.Get_Row: Integer;
begin
  Result := DefaultInterface.Row;
end;

function TSourceRow.Get__Row: Integer;
begin
  Result := DefaultInterface._Row;
end;

procedure TSourceRow.Set__Row(Value: Integer);
begin
  DefaultInterface._Row := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSourceRowProperties.Create(AServer: TSourceRow);
begin
  inherited Create;
  FServer := AServer;
end;

function TSourceRowProperties.GetDefaultInterface: CMapXSourceRow;
begin
  Result := FServer.DefaultInterface;
end;

function TSourceRowProperties.Get_Row: Integer;
begin
  Result := DefaultInterface.Row;
end;

function TSourceRowProperties.Get__Row: Integer;
begin
  Result := DefaultInterface._Row;
end;

procedure TSourceRowProperties.Set__Row(Value: Integer);
begin
  DefaultInterface._Row := Value;
end;

{$ENDIF}

class function CoAnnotation.Create: CMapXAnnotation;
begin
  Result := CreateComObject(CLASS_Annotation) as CMapXAnnotation;
end;

class function CoAnnotation.CreateRemote(const MachineName: string): CMapXAnnotation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Annotation) as CMapXAnnotation;
end;

procedure TAnnotation.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1C66DB82-D40D-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{1C66DB81-D40D-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnnotation.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXAnnotation;
  end;
end;

procedure TAnnotation.ConnectTo(svrIntf: CMapXAnnotation);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAnnotation.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAnnotation.GetDefaultInterface: CMapXAnnotation;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAnnotation.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnnotationProperties.Create(Self);
{$ENDIF}
end;

destructor TAnnotation.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAnnotation.GetServerProperties: TAnnotationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAnnotation.Get_type_: AnnotationTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TAnnotation.Get_Graphic: CMapXText;
begin
  Result := DefaultInterface.Graphic;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAnnotationProperties.Create(AServer: TAnnotation);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnnotationProperties.GetDefaultInterface: CMapXAnnotation;
begin
  Result := FServer.DefaultInterface;
end;

function TAnnotationProperties.Get_type_: AnnotationTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TAnnotationProperties.Get_Graphic: CMapXText;
begin
  Result := DefaultInterface.Graphic;
end;

{$ENDIF}

class function CoGraphic.Create: CMapXText;
begin
  Result := CreateComObject(CLASS_Graphic) as CMapXText;
end;

class function CoGraphic.CreateRemote(const MachineName: string): CMapXText;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Graphic) as CMapXText;
end;

procedure TGraphic.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4B6690A1-D4D1-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{4B6690A0-D4D1-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TGraphic.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXText;
  end;
end;

procedure TGraphic.ConnectTo(svrIntf: CMapXText);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TGraphic.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TGraphic.GetDefaultInterface: CMapXText;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TGraphic.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TGraphicProperties.Create(Self);
{$ENDIF}
end;

destructor TGraphic.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TGraphic.GetServerProperties: TGraphicProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TGraphic.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TGraphic.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TGraphic.Get_X: Double;
begin
  Result := DefaultInterface.X;
end;

procedure TGraphic.Set_X(Value: Double);
begin
  DefaultInterface.X := Value;
end;

function TGraphic.Get_Y: Double;
begin
  Result := DefaultInterface.Y;
end;

procedure TGraphic.Set_Y(Value: Double);
begin
  DefaultInterface.Y := Value;
end;

function TGraphic.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TGraphic.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TGraphic.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TGraphic.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TGraphicProperties.Create(AServer: TGraphic);
begin
  inherited Create;
  FServer := AServer;
end;

function TGraphicProperties.GetDefaultInterface: CMapXText;
begin
  Result := FServer.DefaultInterface;
end;

function TGraphicProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TGraphicProperties.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TGraphicProperties.Get_X: Double;
begin
  Result := DefaultInterface.X;
end;

procedure TGraphicProperties.Set_X(Value: Double);
begin
  DefaultInterface.X := Value;
end;

function TGraphicProperties.Get_Y: Double;
begin
  Result := DefaultInterface.Y;
end;

procedure TGraphicProperties.Set_Y(Value: Double);
begin
  DefaultInterface.Y := Value;
end;

function TGraphicProperties.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TGraphicProperties.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TGraphicProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TGraphicProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

{$ENDIF}

class function CoLegendText.Create: CMapXLegendText;
begin
  Result := CreateComObject(CLASS_LegendText) as CMapXLegendText;
end;

class function CoLegendText.CreateRemote(const MachineName: string): CMapXLegendText;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LegendText) as CMapXLegendText;
end;

procedure TLegendText.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4EC9B521-DFCF-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{4EC9B520-DFCF-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLegendText.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLegendText;
  end;
end;

procedure TLegendText.ConnectTo(svrIntf: CMapXLegendText);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLegendText.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLegendText.GetDefaultInterface: CMapXLegendText;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLegendText.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLegendTextProperties.Create(Self);
{$ENDIF}
end;

destructor TLegendText.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLegendText.GetServerProperties: TLegendTextProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLegendText.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

procedure TLegendText.Set_Text(const Value: WideString);
begin
  DefaultInterface.Text := Value;
end;

function TLegendText.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLegendText.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLegendTextProperties.Create(AServer: TLegendText);
begin
  inherited Create;
  FServer := AServer;
end;

function TLegendTextProperties.GetDefaultInterface: CMapXLegendText;
begin
  Result := FServer.DefaultInterface;
end;

function TLegendTextProperties.Get_Text: WideString;
begin
  Result := DefaultInterface.Text;
end;

procedure TLegendTextProperties.Set_Text(const Value: WideString);
begin
  DefaultInterface.Text := Value;
end;

function TLegendTextProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLegendTextProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

{$ENDIF}

class function CoLegendTexts.Create: CMapXLegendTexts;
begin
  Result := CreateComObject(CLASS_LegendTexts) as CMapXLegendTexts;
end;

class function CoLegendTexts.CreateRemote(const MachineName: string): CMapXLegendTexts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LegendTexts) as CMapXLegendTexts;
end;

procedure TLegendTexts.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4EC9B529-DFCF-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{4EC9B528-DFCF-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLegendTexts.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLegendTexts;
  end;
end;

procedure TLegendTexts.ConnectTo(svrIntf: CMapXLegendTexts);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLegendTexts.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLegendTexts.GetDefaultInterface: CMapXLegendTexts;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLegendTexts.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLegendTextsProperties.Create(Self);
{$ENDIF}
end;

destructor TLegendTexts.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLegendTexts.GetServerProperties: TLegendTextsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLegendTexts.Get_Item(Index: OleVariant): CMapXLegendText;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLegendTexts.Get_AllOthersText: CMapXLegendText;
begin
  Result := DefaultInterface.AllOthersText;
end;

function TLegendTexts.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TLegendTexts.Get_AutoGenerate: WordBool;
begin
  Result := DefaultInterface.AutoGenerate;
end;

procedure TLegendTexts.Set_AutoGenerate(Value: WordBool);
begin
  DefaultInterface.AutoGenerate := Value;
end;

function TLegendTexts._Item(Index: OleVariant): CMapXLegendText;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLegendTextsProperties.Create(AServer: TLegendTexts);
begin
  inherited Create;
  FServer := AServer;
end;

function TLegendTextsProperties.GetDefaultInterface: CMapXLegendTexts;
begin
  Result := FServer.DefaultInterface;
end;

function TLegendTextsProperties.Get_Item(Index: OleVariant): CMapXLegendText;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLegendTextsProperties.Get_AllOthersText: CMapXLegendText;
begin
  Result := DefaultInterface.AllOthersText;
end;

function TLegendTextsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TLegendTextsProperties.Get_AutoGenerate: WordBool;
begin
  Result := DefaultInterface.AutoGenerate;
end;

procedure TLegendTextsProperties.Set_AutoGenerate(Value: WordBool);
begin
  DefaultInterface.AutoGenerate := Value;
end;

{$ENDIF}

class function CoTitle.Create: CMapXTitle;
begin
  Result := CreateComObject(CLASS_Title) as CMapXTitle;
end;

class function CoTitle.CreateRemote(const MachineName: string): CMapXTitle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Title) as CMapXTitle;
end;

procedure TTitle.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B2504161-E149-11CF-9BEE-00AA00A478CB}';
    IntfIID:   '{B2504160-E149-11CF-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTitle.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXTitle;
  end;
end;

procedure TTitle.ConnectTo(svrIntf: CMapXTitle);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTitle.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTitle.GetDefaultInterface: CMapXTitle;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTitle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTitleProperties.Create(Self);
{$ENDIF}
end;

destructor TTitle.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTitle.GetServerProperties: TTitleProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTitle.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TTitle.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TTitle.Get_TextStyle: CMapXStyle;
begin
  Result := DefaultInterface.TextStyle;
end;

procedure TTitle.Set_TextStyle(const Value: CMapXStyle);
begin
  DefaultInterface.TextStyle := Value;
end;

function TTitle.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TTitle.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TTitle.Get_X: Single;
begin
  Result := DefaultInterface.X;
end;

procedure TTitle.Set_X(Value: Single);
begin
  DefaultInterface.X := Value;
end;

function TTitle.Get_Y: Single;
begin
  Result := DefaultInterface.Y;
end;

procedure TTitle.Set_Y(Value: Single);
begin
  DefaultInterface.Y := Value;
end;

function TTitle.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TTitle.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

function TTitle.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TTitle.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TTitle.Get__Caption: WideString;
begin
  Result := DefaultInterface._Caption;
end;

procedure TTitle.Set__Caption(const Value: WideString);
begin
  DefaultInterface._Caption := Value;
end;

function TTitle.Get_Border: WordBool;
begin
  Result := DefaultInterface.Border;
end;

procedure TTitle.Set_Border(Value: WordBool);
begin
  DefaultInterface.Border := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTitleProperties.Create(AServer: TTitle);
begin
  inherited Create;
  FServer := AServer;
end;

function TTitleProperties.GetDefaultInterface: CMapXTitle;
begin
  Result := FServer.DefaultInterface;
end;

function TTitleProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TTitleProperties.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TTitleProperties.Get_TextStyle: CMapXStyle;
begin
  Result := DefaultInterface.TextStyle;
end;

procedure TTitleProperties.Set_TextStyle(const Value: CMapXStyle);
begin
  DefaultInterface.TextStyle := Value;
end;

function TTitleProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TTitleProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TTitleProperties.Get_X: Single;
begin
  Result := DefaultInterface.X;
end;

procedure TTitleProperties.Set_X(Value: Single);
begin
  DefaultInterface.X := Value;
end;

function TTitleProperties.Get_Y: Single;
begin
  Result := DefaultInterface.Y;
end;

procedure TTitleProperties.Set_Y(Value: Single);
begin
  DefaultInterface.Y := Value;
end;

function TTitleProperties.Get_Editable: WordBool;
begin
  Result := DefaultInterface.Editable;
end;

procedure TTitleProperties.Set_Editable(Value: WordBool);
begin
  DefaultInterface.Editable := Value;
end;

function TTitleProperties.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TTitleProperties.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TTitleProperties.Get__Caption: WideString;
begin
  Result := DefaultInterface._Caption;
end;

procedure TTitleProperties.Set__Caption(const Value: WideString);
begin
  DefaultInterface._Caption := Value;
end;

function TTitleProperties.Get_Border: WordBool;
begin
  Result := DefaultInterface.Border;
end;

procedure TTitleProperties.Set_Border(Value: WordBool);
begin
  DefaultInterface.Border := Value;
end;

{$ENDIF}

class function CoLabelProperties.Create: CMapXLabelProperties;
begin
  Result := CreateComObject(CLASS_LabelProperties) as CMapXLabelProperties;
end;

class function CoLabelProperties.CreateRemote(const MachineName: string): CMapXLabelProperties;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LabelProperties) as CMapXLabelProperties;
end;

procedure TLabelProperties.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{61E82A61-FB59-11CF-9019-00AA00A53B3C}';
    IntfIID:   '{61E82A60-FB59-11CF-9019-00AA00A53B3C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabelProperties.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLabelProperties;
  end;
end;

procedure TLabelProperties.ConnectTo(svrIntf: CMapXLabelProperties);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabelProperties.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabelProperties.GetDefaultInterface: CMapXLabelProperties;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLabelProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabelPropertiesProperties.Create(Self);
{$ENDIF}
end;

destructor TLabelProperties.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabelProperties.GetServerProperties: TLabelPropertiesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLabelProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLabelProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLabelProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLabelProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLabelProperties.Get_LabelZoom: WordBool;
begin
  Result := DefaultInterface.LabelZoom;
end;

procedure TLabelProperties.Set_LabelZoom(Value: WordBool);
begin
  DefaultInterface.LabelZoom := Value;
end;

function TLabelProperties.Get_LabelZoomMin: Double;
begin
  Result := DefaultInterface.LabelZoomMin;
end;

procedure TLabelProperties.Set_LabelZoomMin(Value: Double);
begin
  DefaultInterface.LabelZoomMin := Value;
end;

function TLabelProperties.Get_LabelZoomMax: Double;
begin
  Result := DefaultInterface.LabelZoomMax;
end;

procedure TLabelProperties.Set_LabelZoomMax(Value: Double);
begin
  DefaultInterface.LabelZoomMax := Value;
end;

function TLabelProperties.Get_LineType: LineTypeConstants;
begin
  Result := DefaultInterface.LineType;
end;

procedure TLabelProperties.Set_LineType(Value: LineTypeConstants);
begin
  DefaultInterface.LineType := Value;
end;

function TLabelProperties.Get_Offset: Smallint;
begin
  Result := DefaultInterface.Offset;
end;

procedure TLabelProperties.Set_Offset(Value: Smallint);
begin
  DefaultInterface.Offset := Value;
end;

function TLabelProperties.Get_Parallel: WordBool;
begin
  Result := DefaultInterface.Parallel;
end;

procedure TLabelProperties.Set_Parallel(Value: WordBool);
begin
  DefaultInterface.Parallel := Value;
end;

function TLabelProperties.Get_Dataset: IDispatch;
begin
  Result := DefaultInterface.Dataset;
end;

procedure TLabelProperties.Set_Dataset(const Value: IDispatch);
begin
  DefaultInterface.Dataset := Value;
end;

function TLabelProperties.Get_Duplicate: WordBool;
begin
  Result := DefaultInterface.Duplicate;
end;

procedure TLabelProperties.Set_Duplicate(Value: WordBool);
begin
  DefaultInterface.Duplicate := Value;
end;

function TLabelProperties.Get_Overlap: WordBool;
begin
  Result := DefaultInterface.Overlap;
end;

procedure TLabelProperties.Set_Overlap(Value: WordBool);
begin
  DefaultInterface.Overlap := Value;
end;

function TLabelProperties.Get_LabelMax: Smallint;
begin
  Result := DefaultInterface.LabelMax;
end;

procedure TLabelProperties.Set_LabelMax(Value: Smallint);
begin
  DefaultInterface.LabelMax := Value;
end;

function TLabelProperties.Get_DataField: IDispatch;
begin
  Result := DefaultInterface.DataField;
end;

procedure TLabelProperties.Set_DataField(const Value: IDispatch);
begin
  DefaultInterface.DataField := Value;
end;

function TLabelProperties.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TLabelProperties.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TLabelProperties.Get_PartialSegments: WordBool;
begin
  Result := DefaultInterface.PartialSegments;
end;

procedure TLabelProperties.Set_PartialSegments(Value: WordBool);
begin
  DefaultInterface.PartialSegments := Value;
end;

function TLabelProperties.Get_LabelPartialObjects: WordBool;
begin
  Result := DefaultInterface.LabelPartialObjects;
end;

procedure TLabelProperties.Set_LabelPartialObjects(Value: WordBool);
begin
  DefaultInterface.LabelPartialObjects := Value;
end;

function TLabelProperties.Get_LabelAlong: LabelAlongConstants;
begin
  Result := DefaultInterface.LabelAlong;
end;

procedure TLabelProperties.Set_LabelAlong(Value: LabelAlongConstants);
begin
  DefaultInterface.LabelAlong := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabelPropertiesProperties.Create(AServer: TLabelProperties);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabelPropertiesProperties.GetDefaultInterface: CMapXLabelProperties;
begin
  Result := FServer.DefaultInterface;
end;

function TLabelPropertiesProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLabelPropertiesProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLabelPropertiesProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLabelPropertiesProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLabelPropertiesProperties.Get_LabelZoom: WordBool;
begin
  Result := DefaultInterface.LabelZoom;
end;

procedure TLabelPropertiesProperties.Set_LabelZoom(Value: WordBool);
begin
  DefaultInterface.LabelZoom := Value;
end;

function TLabelPropertiesProperties.Get_LabelZoomMin: Double;
begin
  Result := DefaultInterface.LabelZoomMin;
end;

procedure TLabelPropertiesProperties.Set_LabelZoomMin(Value: Double);
begin
  DefaultInterface.LabelZoomMin := Value;
end;

function TLabelPropertiesProperties.Get_LabelZoomMax: Double;
begin
  Result := DefaultInterface.LabelZoomMax;
end;

procedure TLabelPropertiesProperties.Set_LabelZoomMax(Value: Double);
begin
  DefaultInterface.LabelZoomMax := Value;
end;

function TLabelPropertiesProperties.Get_LineType: LineTypeConstants;
begin
  Result := DefaultInterface.LineType;
end;

procedure TLabelPropertiesProperties.Set_LineType(Value: LineTypeConstants);
begin
  DefaultInterface.LineType := Value;
end;

function TLabelPropertiesProperties.Get_Offset: Smallint;
begin
  Result := DefaultInterface.Offset;
end;

procedure TLabelPropertiesProperties.Set_Offset(Value: Smallint);
begin
  DefaultInterface.Offset := Value;
end;

function TLabelPropertiesProperties.Get_Parallel: WordBool;
begin
  Result := DefaultInterface.Parallel;
end;

procedure TLabelPropertiesProperties.Set_Parallel(Value: WordBool);
begin
  DefaultInterface.Parallel := Value;
end;

function TLabelPropertiesProperties.Get_Dataset: IDispatch;
begin
  Result := DefaultInterface.Dataset;
end;

procedure TLabelPropertiesProperties.Set_Dataset(const Value: IDispatch);
begin
  DefaultInterface.Dataset := Value;
end;

function TLabelPropertiesProperties.Get_Duplicate: WordBool;
begin
  Result := DefaultInterface.Duplicate;
end;

procedure TLabelPropertiesProperties.Set_Duplicate(Value: WordBool);
begin
  DefaultInterface.Duplicate := Value;
end;

function TLabelPropertiesProperties.Get_Overlap: WordBool;
begin
  Result := DefaultInterface.Overlap;
end;

procedure TLabelPropertiesProperties.Set_Overlap(Value: WordBool);
begin
  DefaultInterface.Overlap := Value;
end;

function TLabelPropertiesProperties.Get_LabelMax: Smallint;
begin
  Result := DefaultInterface.LabelMax;
end;

procedure TLabelPropertiesProperties.Set_LabelMax(Value: Smallint);
begin
  DefaultInterface.LabelMax := Value;
end;

function TLabelPropertiesProperties.Get_DataField: IDispatch;
begin
  Result := DefaultInterface.DataField;
end;

procedure TLabelPropertiesProperties.Set_DataField(const Value: IDispatch);
begin
  DefaultInterface.DataField := Value;
end;

function TLabelPropertiesProperties.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TLabelPropertiesProperties.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TLabelPropertiesProperties.Get_PartialSegments: WordBool;
begin
  Result := DefaultInterface.PartialSegments;
end;

procedure TLabelPropertiesProperties.Set_PartialSegments(Value: WordBool);
begin
  DefaultInterface.PartialSegments := Value;
end;

function TLabelPropertiesProperties.Get_LabelPartialObjects: WordBool;
begin
  Result := DefaultInterface.LabelPartialObjects;
end;

procedure TLabelPropertiesProperties.Set_LabelPartialObjects(Value: WordBool);
begin
  DefaultInterface.LabelPartialObjects := Value;
end;

function TLabelPropertiesProperties.Get_LabelAlong: LabelAlongConstants;
begin
  Result := DefaultInterface.LabelAlong;
end;

procedure TLabelPropertiesProperties.Set_LabelAlong(Value: LabelAlongConstants);
begin
  DefaultInterface.LabelAlong := Value;
end;

{$ENDIF}

class function CoBindLayer.Create: CMapXBindLayer;
begin
  Result := CreateComObject(CLASS_BindLayer) as CMapXBindLayer;
end;

class function CoBindLayer.CreateRemote(const MachineName: string): CMapXBindLayer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BindLayer) as CMapXBindLayer;
end;

procedure TBindLayer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FCFA3007-F7B3-4A0D-AB46-A7E7CE221EA7}';
    IntfIID:   '{234FF3C8-071E-11D0-9BEE-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBindLayer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXBindLayer;
  end;
end;

procedure TBindLayer.ConnectTo(svrIntf: CMapXBindLayer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBindLayer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBindLayer.GetDefaultInterface: CMapXBindLayer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBindLayer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBindLayerProperties.Create(Self);
{$ENDIF}
end;

destructor TBindLayer.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBindLayer.GetServerProperties: TBindLayerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBindLayer.Get_LayerName: WideString;
begin
  Result := DefaultInterface.LayerName;
end;

procedure TBindLayer.Set_LayerName(const Value: WideString);
begin
  DefaultInterface.LayerName := Value;
end;

function TBindLayer.Get_RefColumn1: OleVariant;
begin
  Result := DefaultInterface.RefColumn1;
end;

procedure TBindLayer.Set_RefColumn1(Value: OleVariant);
begin
  DefaultInterface.RefColumn1 := Value;
end;

function TBindLayer.Get_RefColumn2: OleVariant;
begin
  Result := DefaultInterface.RefColumn2;
end;

procedure TBindLayer.Set_RefColumn2(Value: OleVariant);
begin
  DefaultInterface.RefColumn2 := Value;
end;

function TBindLayer.Get_LayerType: BindLayerTypeConstants;
begin
  Result := DefaultInterface.LayerType;
end;

procedure TBindLayer.Set_LayerType(Value: BindLayerTypeConstants);
begin
  DefaultInterface.LayerType := Value;
end;

function TBindLayer.Get_ReferenceLayer: WideString;
begin
  Result := DefaultInterface.ReferenceLayer;
end;

procedure TBindLayer.Set_ReferenceLayer(const Value: WideString);
begin
  DefaultInterface.ReferenceLayer := Value;
end;

function TBindLayer.Get_CoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.CoordSys;
end;

procedure TBindLayer.Set_CoordSys(const Value: CMapXCoordSys);
begin
  DefaultInterface.CoordSys := Value;
end;

function TBindLayer.Get_FileSpec: WideString;
begin
  Result := DefaultInterface.FileSpec;
end;

procedure TBindLayer.Set_FileSpec(const Value: WideString);
begin
  DefaultInterface.FileSpec := Value;
end;

function TBindLayer.Get_KeyLength: Smallint;
begin
  Result := DefaultInterface.KeyLength;
end;

procedure TBindLayer.Set_KeyLength(Value: Smallint);
begin
  DefaultInterface.KeyLength := Value;
end;

function TBindLayer.Get_ReferenceLayerField: Integer;
begin
  Result := DefaultInterface.ReferenceLayerField;
end;

procedure TBindLayer.Set_ReferenceLayerField(Value: Integer);
begin
  DefaultInterface.ReferenceLayerField := Value;
end;

function TBindLayer.Get_OverwriteFile: WordBool;
begin
  Result := DefaultInterface.OverwriteFile;
end;

procedure TBindLayer.Set_OverwriteFile(Value: WordBool);
begin
  DefaultInterface.OverwriteFile := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBindLayerProperties.Create(AServer: TBindLayer);
begin
  inherited Create;
  FServer := AServer;
end;

function TBindLayerProperties.GetDefaultInterface: CMapXBindLayer;
begin
  Result := FServer.DefaultInterface;
end;

function TBindLayerProperties.Get_LayerName: WideString;
begin
  Result := DefaultInterface.LayerName;
end;

procedure TBindLayerProperties.Set_LayerName(const Value: WideString);
begin
  DefaultInterface.LayerName := Value;
end;

function TBindLayerProperties.Get_RefColumn1: OleVariant;
begin
  Result := DefaultInterface.RefColumn1;
end;

procedure TBindLayerProperties.Set_RefColumn1(Value: OleVariant);
begin
  DefaultInterface.RefColumn1 := Value;
end;

function TBindLayerProperties.Get_RefColumn2: OleVariant;
begin
  Result := DefaultInterface.RefColumn2;
end;

procedure TBindLayerProperties.Set_RefColumn2(Value: OleVariant);
begin
  DefaultInterface.RefColumn2 := Value;
end;

function TBindLayerProperties.Get_LayerType: BindLayerTypeConstants;
begin
  Result := DefaultInterface.LayerType;
end;

procedure TBindLayerProperties.Set_LayerType(Value: BindLayerTypeConstants);
begin
  DefaultInterface.LayerType := Value;
end;

function TBindLayerProperties.Get_ReferenceLayer: WideString;
begin
  Result := DefaultInterface.ReferenceLayer;
end;

procedure TBindLayerProperties.Set_ReferenceLayer(const Value: WideString);
begin
  DefaultInterface.ReferenceLayer := Value;
end;

function TBindLayerProperties.Get_CoordSys: CMapXCoordSys;
begin
  Result := DefaultInterface.CoordSys;
end;

procedure TBindLayerProperties.Set_CoordSys(const Value: CMapXCoordSys);
begin
  DefaultInterface.CoordSys := Value;
end;

function TBindLayerProperties.Get_FileSpec: WideString;
begin
  Result := DefaultInterface.FileSpec;
end;

procedure TBindLayerProperties.Set_FileSpec(const Value: WideString);
begin
  DefaultInterface.FileSpec := Value;
end;

function TBindLayerProperties.Get_KeyLength: Smallint;
begin
  Result := DefaultInterface.KeyLength;
end;

procedure TBindLayerProperties.Set_KeyLength(Value: Smallint);
begin
  DefaultInterface.KeyLength := Value;
end;

function TBindLayerProperties.Get_ReferenceLayerField: Integer;
begin
  Result := DefaultInterface.ReferenceLayerField;
end;

procedure TBindLayerProperties.Set_ReferenceLayerField(Value: Integer);
begin
  DefaultInterface.ReferenceLayerField := Value;
end;

function TBindLayerProperties.Get_OverwriteFile: WordBool;
begin
  Result := DefaultInterface.OverwriteFile;
end;

procedure TBindLayerProperties.Set_OverwriteFile(Value: WordBool);
begin
  DefaultInterface.OverwriteFile := Value;
end;

{$ENDIF}

class function CoRangeCategories.Create: CMapXRangeCategoriesCollection;
begin
  Result := CreateComObject(CLASS_RangeCategories) as CMapXRangeCategoriesCollection;
end;

class function CoRangeCategories.CreateRemote(const MachineName: string): CMapXRangeCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RangeCategories) as CMapXRangeCategoriesCollection;
end;

procedure TRangeCategories.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ECC81861-038E-11D1-9DC6-00AA00A478CB}';
    IntfIID:   '{ECC81860-038E-11D1-9DC6-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRangeCategories.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXRangeCategoriesCollection;
  end;
end;

procedure TRangeCategories.ConnectTo(svrIntf: CMapXRangeCategoriesCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRangeCategories.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRangeCategories.GetDefaultInterface: CMapXRangeCategoriesCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TRangeCategories.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRangeCategoriesProperties.Create(Self);
{$ENDIF}
end;

destructor TRangeCategories.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRangeCategories.GetServerProperties: TRangeCategoriesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRangeCategories.Get_Item(Index: OleVariant): CMapXRangeCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TRangeCategories.Get_AllOthersCategory: CMapXRangeCategory;
begin
  Result := DefaultInterface.AllOthersCategory;
end;

function TRangeCategories.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TRangeCategories._Item(Index: OleVariant): CMapXRangeCategory;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRangeCategoriesProperties.Create(AServer: TRangeCategories);
begin
  inherited Create;
  FServer := AServer;
end;

function TRangeCategoriesProperties.GetDefaultInterface: CMapXRangeCategoriesCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TRangeCategoriesProperties.Get_Item(Index: OleVariant): CMapXRangeCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TRangeCategoriesProperties.Get_AllOthersCategory: CMapXRangeCategory;
begin
  Result := DefaultInterface.AllOthersCategory;
end;

function TRangeCategoriesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoIndividualValueCategories.Create: CMapXIndividualValueCategoriesCollection;
begin
  Result := CreateComObject(CLASS_IndividualValueCategories) as CMapXIndividualValueCategoriesCollection;
end;

class function CoIndividualValueCategories.CreateRemote(const MachineName: string): CMapXIndividualValueCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IndividualValueCategories) as CMapXIndividualValueCategoriesCollection;
end;

procedure TIndividualValueCategories.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ECC81863-038E-11D1-9DC6-00AA00A478CB}';
    IntfIID:   '{ECC81862-038E-11D1-9DC6-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIndividualValueCategories.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXIndividualValueCategoriesCollection;
  end;
end;

procedure TIndividualValueCategories.ConnectTo(svrIntf: CMapXIndividualValueCategoriesCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIndividualValueCategories.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIndividualValueCategories.GetDefaultInterface: CMapXIndividualValueCategoriesCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TIndividualValueCategories.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TIndividualValueCategoriesProperties.Create(Self);
{$ENDIF}
end;

destructor TIndividualValueCategories.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TIndividualValueCategories.GetServerProperties: TIndividualValueCategoriesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TIndividualValueCategories.Get_Item(Index: OleVariant): CMapXIValueCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TIndividualValueCategories.Get_AllOthersCategory: CMapXIValueCategory;
begin
  Result := DefaultInterface.AllOthersCategory;
end;

function TIndividualValueCategories.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TIndividualValueCategories._Item(Index: OleVariant): CMapXIValueCategory;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TIndividualValueCategoriesProperties.Create(AServer: TIndividualValueCategories);
begin
  inherited Create;
  FServer := AServer;
end;

function TIndividualValueCategoriesProperties.GetDefaultInterface: CMapXIndividualValueCategoriesCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TIndividualValueCategoriesProperties.Get_Item(Index: OleVariant): CMapXIValueCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TIndividualValueCategoriesProperties.Get_AllOthersCategory: CMapXIValueCategory;
begin
  Result := DefaultInterface.AllOthersCategory;
end;

function TIndividualValueCategoriesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoMultivarCategories.Create: CMapXMultivarCategoriesCollection;
begin
  Result := CreateComObject(CLASS_MultivarCategories) as CMapXMultivarCategoriesCollection;
end;

class function CoMultivarCategories.CreateRemote(const MachineName: string): CMapXMultivarCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MultivarCategories) as CMapXMultivarCategoriesCollection;
end;

procedure TMultivarCategories.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ECC81865-038E-11D1-9DC6-00AA00A478CB}';
    IntfIID:   '{ECC81864-038E-11D1-9DC6-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMultivarCategories.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXMultivarCategoriesCollection;
  end;
end;

procedure TMultivarCategories.ConnectTo(svrIntf: CMapXMultivarCategoriesCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMultivarCategories.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMultivarCategories.GetDefaultInterface: CMapXMultivarCategoriesCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMultivarCategories.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMultivarCategoriesProperties.Create(Self);
{$ENDIF}
end;

destructor TMultivarCategories.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMultivarCategories.GetServerProperties: TMultivarCategoriesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMultivarCategories.Get_Item(Index: OleVariant): CMapXMultiVarCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TMultivarCategories.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TMultivarCategories._Item(Index: OleVariant): CMapXMultiVarCategory;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMultivarCategoriesProperties.Create(AServer: TMultivarCategories);
begin
  inherited Create;
  FServer := AServer;
end;

function TMultivarCategoriesProperties.GetDefaultInterface: CMapXMultivarCategoriesCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TMultivarCategoriesProperties.Get_Item(Index: OleVariant): CMapXMultiVarCategory;
begin
    Result := DefaultInterface.Item[Index];
end;

function TMultivarCategoriesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoBitmapSymbols.Create: CMapXBitmapSymbolsCollection;
begin
  Result := CreateComObject(CLASS_BitmapSymbols) as CMapXBitmapSymbolsCollection;
end;

class function CoBitmapSymbols.CreateRemote(const MachineName: string): CMapXBitmapSymbolsCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BitmapSymbols) as CMapXBitmapSymbolsCollection;
end;

procedure TBitmapSymbols.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{795145F6-5D7A-4C0E-AAA4-14539E170074}';
    IntfIID:   '{ECC81866-038E-11D1-9DC6-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBitmapSymbols.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXBitmapSymbolsCollection;
  end;
end;

procedure TBitmapSymbols.ConnectTo(svrIntf: CMapXBitmapSymbolsCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBitmapSymbols.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBitmapSymbols.GetDefaultInterface: CMapXBitmapSymbolsCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBitmapSymbols.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBitmapSymbolsProperties.Create(Self);
{$ENDIF}
end;

destructor TBitmapSymbols.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBitmapSymbols.GetServerProperties: TBitmapSymbolsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBitmapSymbols.Get_Item(Index: OleVariant): CMapXBitmapSymbol;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBitmapSymbols.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TBitmapSymbols._Item(Index: OleVariant): CMapXBitmapSymbol;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TBitmapSymbols.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TBitmapSymbols.Unload;
begin
  DefaultInterface.Unload;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBitmapSymbolsProperties.Create(AServer: TBitmapSymbols);
begin
  inherited Create;
  FServer := AServer;
end;

function TBitmapSymbolsProperties.GetDefaultInterface: CMapXBitmapSymbolsCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TBitmapSymbolsProperties.Get_Item(Index: OleVariant): CMapXBitmapSymbol;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBitmapSymbolsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoRectangle.Create: CMapXRectangle;
begin
  Result := CreateComObject(CLASS_Rectangle) as CMapXRectangle;
end;

class function CoRectangle.CreateRemote(const MachineName: string): CMapXRectangle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Rectangle) as CMapXRectangle;
end;

procedure TRectangle.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{176C3527-CFE1-47B8-BA22-15E7A6EB1C86}';
    IntfIID:   '{4C952040-3331-11D0-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRectangle.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXRectangle;
  end;
end;

procedure TRectangle.ConnectTo(svrIntf: CMapXRectangle);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRectangle.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRectangle.GetDefaultInterface: CMapXRectangle;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TRectangle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRectangleProperties.Create(Self);
{$ENDIF}
end;

destructor TRectangle.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRectangle.GetServerProperties: TRectangleProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRectangle.Get_XMin: Double;
begin
  Result := DefaultInterface.XMin;
end;

function TRectangle.Get_YMax: Double;
begin
  Result := DefaultInterface.YMax;
end;

function TRectangle.Get_XMax: Double;
begin
  Result := DefaultInterface.XMax;
end;

function TRectangle.Get_Height: Double;
begin
  Result := DefaultInterface.Height;
end;

function TRectangle.Get_Width: Double;
begin
  Result := DefaultInterface.Width;
end;

function TRectangle.Get_YMin: Double;
begin
  Result := DefaultInterface.YMin;
end;

procedure TRectangle.Offset(deltaX: Double; deltaY: Double);
begin
  DefaultInterface.Offset(deltaX, deltaY);
end;

procedure TRectangle.Set_(X1: Double; Y1: Double; X2: Double; Y2: Double);
begin
  DefaultInterface.Set_(X1, Y1, X2, Y2);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRectangleProperties.Create(AServer: TRectangle);
begin
  inherited Create;
  FServer := AServer;
end;

function TRectangleProperties.GetDefaultInterface: CMapXRectangle;
begin
  Result := FServer.DefaultInterface;
end;

function TRectangleProperties.Get_XMin: Double;
begin
  Result := DefaultInterface.XMin;
end;

function TRectangleProperties.Get_YMax: Double;
begin
  Result := DefaultInterface.YMax;
end;

function TRectangleProperties.Get_XMax: Double;
begin
  Result := DefaultInterface.XMax;
end;

function TRectangleProperties.Get_Height: Double;
begin
  Result := DefaultInterface.Height;
end;

function TRectangleProperties.Get_Width: Double;
begin
  Result := DefaultInterface.Width;
end;

function TRectangleProperties.Get_YMin: Double;
begin
  Result := DefaultInterface.YMin;
end;

{$ENDIF}

class function CoBoundsConstraint.Create: CMapXBoundsConstraint;
begin
  Result := CreateComObject(CLASS_BoundsConstraint) as CMapXBoundsConstraint;
end;

class function CoBoundsConstraint.CreateRemote(const MachineName: string): CMapXBoundsConstraint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BoundsConstraint) as CMapXBoundsConstraint;
end;

procedure TBoundsConstraint.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{65206DBA-1A3D-4B6B-8A7C-610082024866}';
    IntfIID:   '{4ABEC4CB-DFD0-444F-9472-B5192D6F4526}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBoundsConstraint.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXBoundsConstraint;
  end;
end;

procedure TBoundsConstraint.ConnectTo(svrIntf: CMapXBoundsConstraint);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBoundsConstraint.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBoundsConstraint.GetDefaultInterface: CMapXBoundsConstraint;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBoundsConstraint.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBoundsConstraintProperties.Create(Self);
{$ENDIF}
end;

destructor TBoundsConstraint.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBoundsConstraint.GetServerProperties: TBoundsConstraintProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBoundsConstraint.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

procedure TBoundsConstraint.Set_Bounds(const Value: CMapXRectangle);
begin
  DefaultInterface.Bounds := Value;
end;

function TBoundsConstraint.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

procedure TBoundsConstraint.Disable;
begin
  DefaultInterface.Disable;
end;

procedure TBoundsConstraint.Enable;
begin
  DefaultInterface.Enable;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBoundsConstraintProperties.Create(AServer: TBoundsConstraint);
begin
  inherited Create;
  FServer := AServer;
end;

function TBoundsConstraintProperties.GetDefaultInterface: CMapXBoundsConstraint;
begin
  Result := FServer.DefaultInterface;
end;

function TBoundsConstraintProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

procedure TBoundsConstraintProperties.Set_Bounds(const Value: CMapXRectangle);
begin
  DefaultInterface.Bounds := Value;
end;

function TBoundsConstraintProperties.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

{$ENDIF}

class function CoFeaturesConstraint.Create: CMapXFeaturesConstraint;
begin
  Result := CreateComObject(CLASS_FeaturesConstraint) as CMapXFeaturesConstraint;
end;

class function CoFeaturesConstraint.CreateRemote(const MachineName: string): CMapXFeaturesConstraint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FeaturesConstraint) as CMapXFeaturesConstraint;
end;

procedure TFeaturesConstraint.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{47BEE832-3898-408A-92F2-791373C8C4A6}';
    IntfIID:   '{064F4C93-D40A-4FE4-9FC0-4A6C4A6EAA8D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFeaturesConstraint.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFeaturesConstraint;
  end;
end;

procedure TFeaturesConstraint.ConnectTo(svrIntf: CMapXFeaturesConstraint);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFeaturesConstraint.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFeaturesConstraint.GetDefaultInterface: CMapXFeaturesConstraint;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFeaturesConstraint.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFeaturesConstraintProperties.Create(Self);
{$ENDIF}
end;

destructor TFeaturesConstraint.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFeaturesConstraint.GetServerProperties: TFeaturesConstraintProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFeaturesConstraint.Get_Features: CMapXFeatures;
begin
  Result := DefaultInterface.Features;
end;

procedure TFeaturesConstraint.Set_Features(const Value: CMapXFeatures);
begin
  DefaultInterface.Features := Value;
end;

function TFeaturesConstraint.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

procedure TFeaturesConstraint.Disable;
begin
  DefaultInterface.Disable;
end;

procedure TFeaturesConstraint.Enable;
begin
  DefaultInterface.Enable;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFeaturesConstraintProperties.Create(AServer: TFeaturesConstraint);
begin
  inherited Create;
  FServer := AServer;
end;

function TFeaturesConstraintProperties.GetDefaultInterface: CMapXFeaturesConstraint;
begin
  Result := FServer.DefaultInterface;
end;

function TFeaturesConstraintProperties.Get_Features: CMapXFeatures;
begin
  Result := DefaultInterface.Features;
end;

procedure TFeaturesConstraintProperties.Set_Features(const Value: CMapXFeatures);
begin
  DefaultInterface.Features := Value;
end;

function TFeaturesConstraintProperties.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

{$ENDIF}

class function CoAllFeaturesConstraint.Create: CMapXAllFeaturesConstraint;
begin
  Result := CreateComObject(CLASS_AllFeaturesConstraint) as CMapXAllFeaturesConstraint;
end;

class function CoAllFeaturesConstraint.CreateRemote(const MachineName: string): CMapXAllFeaturesConstraint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AllFeaturesConstraint) as CMapXAllFeaturesConstraint;
end;

procedure TAllFeaturesConstraint.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A9A394A0-F335-47C8-9877-C984224B4740}';
    IntfIID:   '{806FA9D7-C5D9-43E9-B381-69E30C991E84}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAllFeaturesConstraint.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXAllFeaturesConstraint;
  end;
end;

procedure TAllFeaturesConstraint.ConnectTo(svrIntf: CMapXAllFeaturesConstraint);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAllFeaturesConstraint.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAllFeaturesConstraint.GetDefaultInterface: CMapXAllFeaturesConstraint;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAllFeaturesConstraint.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAllFeaturesConstraintProperties.Create(Self);
{$ENDIF}
end;

destructor TAllFeaturesConstraint.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAllFeaturesConstraint.GetServerProperties: TAllFeaturesConstraintProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAllFeaturesConstraint.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

procedure TAllFeaturesConstraint.Enable;
begin
  DefaultInterface.Enable;
end;

procedure TAllFeaturesConstraint.Disable;
begin
  DefaultInterface.Disable;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAllFeaturesConstraintProperties.Create(AServer: TAllFeaturesConstraint);
begin
  inherited Create;
  FServer := AServer;
end;

function TAllFeaturesConstraintProperties.GetDefaultInterface: CMapXAllFeaturesConstraint;
begin
  Result := FServer.DefaultInterface;
end;

function TAllFeaturesConstraintProperties.Get_Enabled: WordBool;
begin
  Result := DefaultInterface.Enabled;
end;

{$ENDIF}

class function CoFind.Create: CMapXLayerFind;
begin
  Result := CreateComObject(CLASS_Find) as CMapXLayerFind;
end;

class function CoFind.CreateRemote(const MachineName: string): CMapXLayerFind;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Find) as CMapXLayerFind;
end;

procedure TFind.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{436052C1-43E3-11D0-83EB-00AA00BD34FC}';
    IntfIID:   '{436052C0-43E3-11D0-83EB-00AA00BD34FC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFind.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLayerFind;
  end;
end;

procedure TFind.ConnectTo(svrIntf: CMapXLayerFind);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFind.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFind.GetDefaultInterface: CMapXLayerFind;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFind.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFindProperties.Create(Self);
{$ENDIF}
end;

destructor TFind.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFind.GetServerProperties: TFindProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFind.Get_ClosestAddr: WordBool;
begin
  Result := DefaultInterface.ClosestAddr;
end;

procedure TFind.Set_ClosestAddr(Value: WordBool);
begin
  DefaultInterface.ClosestAddr := Value;
end;

function TFind.Get_RefineLayer: IDispatch;
begin
  Result := DefaultInterface.RefineLayer;
end;

procedure TFind.Set_RefineLayer(const Value: IDispatch);
begin
  DefaultInterface.RefineLayer := Value;
end;

function TFind.Get_OtherBoundary: WordBool;
begin
  Result := DefaultInterface.OtherBoundary;
end;

procedure TFind.Set_OtherBoundary(Value: WordBool);
begin
  DefaultInterface.OtherBoundary := Value;
end;

function TFind.Get_FindField: IDispatch;
begin
  Result := DefaultInterface.FindField;
end;

procedure TFind.Set_FindField(const Value: IDispatch);
begin
  DefaultInterface.FindField := Value;
end;

function TFind.Get_Abbreviations: WordBool;
begin
  Result := DefaultInterface.Abbreviations;
end;

procedure TFind.Set_Abbreviations(Value: WordBool);
begin
  DefaultInterface.Abbreviations := Value;
end;

function TFind.Get_RefineDataset: IDispatch;
begin
  Result := DefaultInterface.RefineDataset;
end;

procedure TFind.Set_RefineDataset(const Value: IDispatch);
begin
  DefaultInterface.RefineDataset := Value;
end;

function TFind.Get_FindDataset: IDispatch;
begin
  Result := DefaultInterface.FindDataset;
end;

procedure TFind.Set_FindDataset(const Value: IDispatch);
begin
  DefaultInterface.FindDataset := Value;
end;

function TFind.Get_RefineField: IDispatch;
begin
  Result := DefaultInterface.RefineField;
end;

procedure TFind.Set_RefineField(const Value: IDispatch);
begin
  DefaultInterface.RefineField := Value;
end;

function TFind.Get_CloseMatchMax: Integer;
begin
  Result := DefaultInterface.CloseMatchMax;
end;

procedure TFind.Set_CloseMatchMax(Value: Integer);
begin
  DefaultInterface.CloseMatchMax := Value;
end;

function TFind.SearchEx(const Address: WideString): CMapXFindResult;
begin
  Result := DefaultInterface.SearchEx(Address, EmptyParam);
end;

function TFind.SearchEx(const Address: WideString; RefineBoundary: OleVariant): CMapXFindResult;
begin
  Result := DefaultInterface.SearchEx(Address, RefineBoundary);
end;

function TFind.Search(const Address: WideString): CMapXFindFeature;
begin
  Result := DefaultInterface.Search(Address, EmptyParam);
end;

function TFind.Search(const Address: WideString; RefineBoundary: OleVariant): CMapXFindFeature;
begin
  Result := DefaultInterface.Search(Address, RefineBoundary);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFindProperties.Create(AServer: TFind);
begin
  inherited Create;
  FServer := AServer;
end;

function TFindProperties.GetDefaultInterface: CMapXLayerFind;
begin
  Result := FServer.DefaultInterface;
end;

function TFindProperties.Get_ClosestAddr: WordBool;
begin
  Result := DefaultInterface.ClosestAddr;
end;

procedure TFindProperties.Set_ClosestAddr(Value: WordBool);
begin
  DefaultInterface.ClosestAddr := Value;
end;

function TFindProperties.Get_RefineLayer: IDispatch;
begin
  Result := DefaultInterface.RefineLayer;
end;

procedure TFindProperties.Set_RefineLayer(const Value: IDispatch);
begin
  DefaultInterface.RefineLayer := Value;
end;

function TFindProperties.Get_OtherBoundary: WordBool;
begin
  Result := DefaultInterface.OtherBoundary;
end;

procedure TFindProperties.Set_OtherBoundary(Value: WordBool);
begin
  DefaultInterface.OtherBoundary := Value;
end;

function TFindProperties.Get_FindField: IDispatch;
begin
  Result := DefaultInterface.FindField;
end;

procedure TFindProperties.Set_FindField(const Value: IDispatch);
begin
  DefaultInterface.FindField := Value;
end;

function TFindProperties.Get_Abbreviations: WordBool;
begin
  Result := DefaultInterface.Abbreviations;
end;

procedure TFindProperties.Set_Abbreviations(Value: WordBool);
begin
  DefaultInterface.Abbreviations := Value;
end;

function TFindProperties.Get_RefineDataset: IDispatch;
begin
  Result := DefaultInterface.RefineDataset;
end;

procedure TFindProperties.Set_RefineDataset(const Value: IDispatch);
begin
  DefaultInterface.RefineDataset := Value;
end;

function TFindProperties.Get_FindDataset: IDispatch;
begin
  Result := DefaultInterface.FindDataset;
end;

procedure TFindProperties.Set_FindDataset(const Value: IDispatch);
begin
  DefaultInterface.FindDataset := Value;
end;

function TFindProperties.Get_RefineField: IDispatch;
begin
  Result := DefaultInterface.RefineField;
end;

procedure TFindProperties.Set_RefineField(const Value: IDispatch);
begin
  DefaultInterface.RefineField := Value;
end;

function TFindProperties.Get_CloseMatchMax: Integer;
begin
  Result := DefaultInterface.CloseMatchMax;
end;

procedure TFindProperties.Set_CloseMatchMax(Value: Integer);
begin
  DefaultInterface.CloseMatchMax := Value;
end;

{$ENDIF}

class function CoFindFeature.Create: CMapXFindFeature;
begin
  Result := CreateComObject(CLASS_FindFeature) as CMapXFindFeature;
end;

class function CoFindFeature.CreateRemote(const MachineName: string): CMapXFindFeature;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FindFeature) as CMapXFindFeature;
end;

procedure TFindFeature.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{436052C3-43E3-11D0-83EB-00AA00BD34FC}';
    IntfIID:   '{436052C2-43E3-11D0-83EB-00AA00BD34FC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFindFeature.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFindFeature;
  end;
end;

procedure TFindFeature.ConnectTo(svrIntf: CMapXFindFeature);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFindFeature.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFindFeature.GetDefaultInterface: CMapXFindFeature;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFindFeature.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFindFeatureProperties.Create(Self);
{$ENDIF}
end;

destructor TFindFeature.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFindFeature.GetServerProperties: TFindFeatureProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TFindFeature.Set_Nodes(CSys: OleVariant; Param2: OleVariant);
begin
  DefaultInterface.Nodes[CSys] := Param2;
end;

function TFindFeature.Get_Nodes(CSys: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Nodes;
end;

function TFindFeature.Get_CenterX: Double;
begin
  Result := DefaultInterface.CenterX;
end;

function TFindFeature.Get_Length: Double;
begin
  Result := DefaultInterface.Length;
end;

function TFindFeature.Get__FeatureID: Integer;
begin
  Result := DefaultInterface._FeatureID;
end;

function TFindFeature.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFindFeature.Get_type_: FeatureTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TFindFeature.Set_type_(Value: FeatureTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

function TFindFeature.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFindFeature.Get_LabelPoint: CMapXPoint;
begin
  Result := DefaultInterface.LabelPoint;
end;

function TFindFeature.Get_Parts: CMapXParts;
begin
  Result := DefaultInterface.Parts;
end;

function TFindFeature.Get_Point: CMapXPoint;
begin
  Result := DefaultInterface.Point;
end;

procedure TFindFeature.Set_Point(const Value: CMapXPoint);
begin
  DefaultInterface.Point := Value;
end;

function TFindFeature.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TFindFeature.Get_Smooth: WordBool;
begin
  Result := DefaultInterface.Smooth;
end;

procedure TFindFeature.Set_Smooth(Value: WordBool);
begin
  DefaultInterface.Smooth := Value;
end;

function TFindFeature.Get_Perimeter: Double;
begin
  Result := DefaultInterface.Perimeter;
end;

function TFindFeature.Get_Area: Double;
begin
  Result := DefaultInterface.Area;
end;

function TFindFeature.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFindFeature.Get_KeyValue: WideString;
begin
  Result := DefaultInterface.KeyValue;
end;

procedure TFindFeature.Set_KeyValue(const Value: WideString);
begin
  DefaultInterface.KeyValue := Value;
end;

function TFindFeature.Get_HasMultipoint: WordBool;
begin
  Result := DefaultInterface.HasMultipoint;
end;

function TFindFeature.Get_Region: IDispatch;
begin
  Result := DefaultInterface.Region;
end;

procedure TFindFeature.Set_Region(const Value: IDispatch);
begin
  DefaultInterface.Region := Value;
end;

function TFindFeature.Get_Polyline: IDispatch;
begin
  Result := DefaultInterface.Polyline;
end;

procedure TFindFeature.Set_Polyline(const Value: IDispatch);
begin
  DefaultInterface.Polyline := Value;
end;

function TFindFeature.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

function TFindFeature.Get_FindRC: Smallint;
begin
  Result := DefaultInterface.FindRC;
end;

function TFindFeature.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TFindFeature.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TFindFeature.Get_CenterY: Double;
begin
  Result := DefaultInterface.CenterY;
end;

function TFindFeature.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFindFeature.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TFindFeature.Get_HasPolyline: WordBool;
begin
  Result := DefaultInterface.HasPolyline;
end;

function TFindFeature.Get_Multipoint: IDispatch;
begin
  Result := DefaultInterface.Multipoint;
end;

procedure TFindFeature.Set_Multipoint(const Value: IDispatch);
begin
  DefaultInterface.Multipoint := Value;
end;

function TFindFeature.Get_HasRegion: WordBool;
begin
  Result := DefaultInterface.HasRegion;
end;

function TFindFeature.Clone: CMapXFeature;
begin
  Result := DefaultInterface.Clone;
end;

procedure TFindFeature.Attach(const Map: IDispatch);
begin
  DefaultInterface.Attach(Map);
end;

procedure TFindFeature.Offset(deltaX: Double; deltaY: Double);
begin
  DefaultInterface.Offset(deltaX, deltaY);
end;

procedure TFindFeature.Update;
begin
  DefaultInterface.Update(EmptyParam, EmptyParam);
end;

procedure TFindFeature.Update(UpdateFeature: OleVariant);
begin
  DefaultInterface.Update(UpdateFeature, EmptyParam);
end;

procedure TFindFeature.Update(UpdateFeature: OleVariant; RowValues: OleVariant);
begin
  DefaultInterface.Update(UpdateFeature, RowValues);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFindFeatureProperties.Create(AServer: TFindFeature);
begin
  inherited Create;
  FServer := AServer;
end;

function TFindFeatureProperties.GetDefaultInterface: CMapXFindFeature;
begin
  Result := FServer.DefaultInterface;
end;

procedure TFindFeatureProperties.Set_Nodes(CSys: OleVariant; Param2: OleVariant);
begin
  DefaultInterface.Nodes[CSys] := Param2;
end;

function TFindFeatureProperties.Get_Nodes(CSys: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Nodes;
end;

function TFindFeatureProperties.Get_CenterX: Double;
begin
  Result := DefaultInterface.CenterX;
end;

function TFindFeatureProperties.Get_Length: Double;
begin
  Result := DefaultInterface.Length;
end;

function TFindFeatureProperties.Get__FeatureID: Integer;
begin
  Result := DefaultInterface._FeatureID;
end;

function TFindFeatureProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFindFeatureProperties.Get_type_: FeatureTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

procedure TFindFeatureProperties.Set_type_(Value: FeatureTypeConstants);
begin
  DefaultInterface.type_ := Value;
end;

function TFindFeatureProperties.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFindFeatureProperties.Get_LabelPoint: CMapXPoint;
begin
  Result := DefaultInterface.LabelPoint;
end;

function TFindFeatureProperties.Get_Parts: CMapXParts;
begin
  Result := DefaultInterface.Parts;
end;

function TFindFeatureProperties.Get_Point: CMapXPoint;
begin
  Result := DefaultInterface.Point;
end;

procedure TFindFeatureProperties.Set_Point(const Value: CMapXPoint);
begin
  DefaultInterface.Point := Value;
end;

function TFindFeatureProperties.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TFindFeatureProperties.Get_Smooth: WordBool;
begin
  Result := DefaultInterface.Smooth;
end;

procedure TFindFeatureProperties.Set_Smooth(Value: WordBool);
begin
  DefaultInterface.Smooth := Value;
end;

function TFindFeatureProperties.Get_Perimeter: Double;
begin
  Result := DefaultInterface.Perimeter;
end;

function TFindFeatureProperties.Get_Area: Double;
begin
  Result := DefaultInterface.Area;
end;

function TFindFeatureProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFindFeatureProperties.Get_KeyValue: WideString;
begin
  Result := DefaultInterface.KeyValue;
end;

procedure TFindFeatureProperties.Set_KeyValue(const Value: WideString);
begin
  DefaultInterface.KeyValue := Value;
end;

function TFindFeatureProperties.Get_HasMultipoint: WordBool;
begin
  Result := DefaultInterface.HasMultipoint;
end;

function TFindFeatureProperties.Get_Region: IDispatch;
begin
  Result := DefaultInterface.Region;
end;

procedure TFindFeatureProperties.Set_Region(const Value: IDispatch);
begin
  DefaultInterface.Region := Value;
end;

function TFindFeatureProperties.Get_Polyline: IDispatch;
begin
  Result := DefaultInterface.Polyline;
end;

procedure TFindFeatureProperties.Set_Polyline(const Value: IDispatch);
begin
  DefaultInterface.Polyline := Value;
end;

function TFindFeatureProperties.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

function TFindFeatureProperties.Get_FindRC: Smallint;
begin
  Result := DefaultInterface.FindRC;
end;

function TFindFeatureProperties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TFindFeatureProperties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TFindFeatureProperties.Get_CenterY: Double;
begin
  Result := DefaultInterface.CenterY;
end;

function TFindFeatureProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFindFeatureProperties.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TFindFeatureProperties.Get_HasPolyline: WordBool;
begin
  Result := DefaultInterface.HasPolyline;
end;

function TFindFeatureProperties.Get_Multipoint: IDispatch;
begin
  Result := DefaultInterface.Multipoint;
end;

procedure TFindFeatureProperties.Set_Multipoint(const Value: IDispatch);
begin
  DefaultInterface.Multipoint := Value;
end;

function TFindFeatureProperties.Get_HasRegion: WordBool;
begin
  Result := DefaultInterface.HasRegion;
end;

{$ENDIF}

class function CoFindResult.Create: CMapXFindResult;
begin
  Result := CreateComObject(CLASS_FindResult) as CMapXFindResult;
end;

class function CoFindResult.CreateRemote(const MachineName: string): CMapXFindResult;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FindResult) as CMapXFindResult;
end;

procedure TFindResult.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A4274C83-7E2E-11D2-8CE0-00207812C7EB}';
    IntfIID:   '{A4274C81-7E2E-11D2-8CE0-00207812C7EB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFindResult.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFindResult;
  end;
end;

procedure TFindResult.ConnectTo(svrIntf: CMapXFindResult);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFindResult.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFindResult.GetDefaultInterface: CMapXFindResult;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFindResult.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFindResultProperties.Create(Self);
{$ENDIF}
end;

destructor TFindResult.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFindResult.GetServerProperties: TFindResultProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFindResult.Get_ExactMatch: WordBool;
begin
  Result := DefaultInterface.ExactMatch;
end;

function TFindResult.Get_Substitute: WordBool;
begin
  Result := DefaultInterface.Substitute;
end;

function TFindResult.Get_AddressOutOfRange: WordBool;
begin
  Result := DefaultInterface.AddressOutOfRange;
end;

function TFindResult.Get_IntersectionNotFound: WordBool;
begin
  Result := DefaultInterface.IntersectionNotFound;
end;

function TFindResult.Get_MultipleMatches: WordBool;
begin
  Result := DefaultInterface.MultipleMatches;
end;

function TFindResult.Get_RefineRegion: WordBool;
begin
  Result := DefaultInterface.RefineRegion;
end;

function TFindResult.Get_FindRC: Smallint;
begin
  Result := DefaultInterface.FindRC;
end;

function TFindResult.Get_Matches: CMapXFindMatches;
begin
  Result := DefaultInterface.Matches;
end;

function TFindResult.Get_MatchedFeature: CMapXFeature;
begin
  Result := DefaultInterface.MatchedFeature;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFindResultProperties.Create(AServer: TFindResult);
begin
  inherited Create;
  FServer := AServer;
end;

function TFindResultProperties.GetDefaultInterface: CMapXFindResult;
begin
  Result := FServer.DefaultInterface;
end;

function TFindResultProperties.Get_ExactMatch: WordBool;
begin
  Result := DefaultInterface.ExactMatch;
end;

function TFindResultProperties.Get_Substitute: WordBool;
begin
  Result := DefaultInterface.Substitute;
end;

function TFindResultProperties.Get_AddressOutOfRange: WordBool;
begin
  Result := DefaultInterface.AddressOutOfRange;
end;

function TFindResultProperties.Get_IntersectionNotFound: WordBool;
begin
  Result := DefaultInterface.IntersectionNotFound;
end;

function TFindResultProperties.Get_MultipleMatches: WordBool;
begin
  Result := DefaultInterface.MultipleMatches;
end;

function TFindResultProperties.Get_RefineRegion: WordBool;
begin
  Result := DefaultInterface.RefineRegion;
end;

function TFindResultProperties.Get_FindRC: Smallint;
begin
  Result := DefaultInterface.FindRC;
end;

function TFindResultProperties.Get_Matches: CMapXFindMatches;
begin
  Result := DefaultInterface.Matches;
end;

function TFindResultProperties.Get_MatchedFeature: CMapXFeature;
begin
  Result := DefaultInterface.MatchedFeature;
end;

{$ENDIF}

class function CoFindMatch.Create: CMapXFindMatch;
begin
  Result := CreateComObject(CLASS_FindMatch) as CMapXFindMatch;
end;

class function CoFindMatch.CreateRemote(const MachineName: string): CMapXFindMatch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FindMatch) as CMapXFindMatch;
end;

procedure TFindMatch.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CF466D06-7FAB-11D2-8CE0-00207812C7EB}';
    IntfIID:   '{CF466D04-7FAB-11D2-8CE0-00207812C7EB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFindMatch.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFindMatch;
  end;
end;

procedure TFindMatch.ConnectTo(svrIntf: CMapXFindMatch);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFindMatch.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFindMatch.GetDefaultInterface: CMapXFindMatch;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFindMatch.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFindMatchProperties.Create(Self);
{$ENDIF}
end;

destructor TFindMatch.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFindMatch.GetServerProperties: TFindMatchProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFindMatch.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFindMatch.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFindMatch.Get_Score: Integer;
begin
  Result := DefaultInterface.Score;
end;

function TFindMatch.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFindMatchProperties.Create(AServer: TFindMatch);
begin
  inherited Create;
  FServer := AServer;
end;

function TFindMatchProperties.GetDefaultInterface: CMapXFindMatch;
begin
  Result := FServer.DefaultInterface;
end;

function TFindMatchProperties.Get_FeatureID: Integer;
begin
  Result := DefaultInterface.FeatureID;
end;

function TFindMatchProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TFindMatchProperties.Get_Score: Integer;
begin
  Result := DefaultInterface.Score;
end;

function TFindMatchProperties.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

{$ENDIF}

class function CoFindMatches.Create: CMapXFindMatches;
begin
  Result := CreateComObject(CLASS_FindMatches) as CMapXFindMatches;
end;

class function CoFindMatches.CreateRemote(const MachineName: string): CMapXFindMatches;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FindMatches) as CMapXFindMatches;
end;

procedure TFindMatches.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CF466D03-7FAB-11D2-8CE0-00207812C7EB}';
    IntfIID:   '{CF466D01-7FAB-11D2-8CE0-00207812C7EB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFindMatches.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFindMatches;
  end;
end;

procedure TFindMatches.ConnectTo(svrIntf: CMapXFindMatches);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFindMatches.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFindMatches.GetDefaultInterface: CMapXFindMatches;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFindMatches.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFindMatchesProperties.Create(Self);
{$ENDIF}
end;

destructor TFindMatches.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFindMatches.GetServerProperties: TFindMatchesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFindMatches.Get_Item(Index: OleVariant): CMapXFindMatch;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFindMatches.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TFindMatches._Item(Index: OleVariant): CMapXFindMatch;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFindMatchesProperties.Create(AServer: TFindMatches);
begin
  inherited Create;
  FServer := AServer;
end;

function TFindMatchesProperties.GetDefaultInterface: CMapXFindMatches;
begin
  Result := FServer.DefaultInterface;
end;

function TFindMatchesProperties.Get_Item(Index: OleVariant): CMapXFindMatch;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFindMatchesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoParts.Create: CMapXParts;
begin
  Result := CreateComObject(CLASS_Parts) as CMapXParts;
end;

class function CoParts.CreateRemote(const MachineName: string): CMapXParts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Parts) as CMapXParts;
end;

procedure TParts.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3769CE9E-A19C-442F-B004-329B78FAEA81}';
    IntfIID:   '{968303A0-8F18-11D0-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TParts.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXParts;
  end;
end;

procedure TParts.ConnectTo(svrIntf: CMapXParts);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TParts.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TParts.GetDefaultInterface: CMapXParts;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TParts.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPartsProperties.Create(Self);
{$ENDIF}
end;

destructor TParts.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TParts.GetServerProperties: TPartsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TParts.Get_Item(Index: OleVariant): CMapXPoints;
begin
    Result := DefaultInterface.Item[Index];
end;

function TParts.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TParts.Add(const Points: IDispatch): CMapXPoints;
begin
  Result := DefaultInterface.Add(Points);
end;

function TParts._Item(Index: OleVariant): CMapXPoints;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TParts.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

procedure TParts.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPartsProperties.Create(AServer: TParts);
begin
  inherited Create;
  FServer := AServer;
end;

function TPartsProperties.GetDefaultInterface: CMapXParts;
begin
  Result := FServer.DefaultInterface;
end;

function TPartsProperties.Get_Item(Index: OleVariant): CMapXPoints;
begin
    Result := DefaultInterface.Item[Index];
end;

function TPartsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoPoints.Create: CMapXPoints;
begin
  Result := CreateComObject(CLASS_Points) as CMapXPoints;
end;

class function CoPoints.CreateRemote(const MachineName: string): CMapXPoints;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Points) as CMapXPoints;
end;

procedure TPoints.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AEE36CF9-09DC-40C7-8A35-E133C78E4318}';
    IntfIID:   '{968303A2-8F18-11D0-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPoints.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXPoints;
  end;
end;

procedure TPoints.ConnectTo(svrIntf: CMapXPoints);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPoints.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPoints.GetDefaultInterface: CMapXPoints;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPoints.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPointsProperties.Create(Self);
{$ENDIF}
end;

destructor TPoints.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPoints.GetServerProperties: TPointsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPoints.Get_Item(Index: OleVariant): CMapXPoint;
begin
    Result := DefaultInterface.Item[Index];
end;

function TPoints.Get_X(Index: Integer): Double;
begin
    Result := DefaultInterface.X[Index];
end;

function TPoints.Get_Y(Index: Integer): Double;
begin
    Result := DefaultInterface.Y[Index];
end;

function TPoints.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TPoints._Item(Index: OleVariant): CMapXPoint;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TPoints.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

procedure TPoints.GetXY(Index: Integer; var X: Double; var Y: Double);
begin
  DefaultInterface.GetXY(Index, X, Y);
end;

function TPoints.AddXY(X: Double; Y: Double): CMapXPoint;
begin
  Result := DefaultInterface.AddXY(X, Y, EmptyParam);
end;

function TPoints.AddXY(X: Double; Y: Double; Position: OleVariant): CMapXPoint;
begin
  Result := DefaultInterface.AddXY(X, Y, Position);
end;

procedure TPoints.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

function TPoints.Add(const Point: IDispatch): CMapXPoint;
begin
  Result := DefaultInterface.Add(Point, EmptyParam);
end;

function TPoints.Add(const Point: IDispatch; Position: OleVariant): CMapXPoint;
begin
  Result := DefaultInterface.Add(Point, Position);
end;

procedure TPoints.GetXYV(Index: Integer; var X: OleVariant; var Y: OleVariant);
begin
  DefaultInterface.GetXYV(Index, X, Y);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPointsProperties.Create(AServer: TPoints);
begin
  inherited Create;
  FServer := AServer;
end;

function TPointsProperties.GetDefaultInterface: CMapXPoints;
begin
  Result := FServer.DefaultInterface;
end;

function TPointsProperties.Get_Item(Index: OleVariant): CMapXPoint;
begin
    Result := DefaultInterface.Item[Index];
end;

function TPointsProperties.Get_X(Index: Integer): Double;
begin
    Result := DefaultInterface.X[Index];
end;

function TPointsProperties.Get_Y(Index: Integer): Double;
begin
    Result := DefaultInterface.Y[Index];
end;

function TPointsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoPoint.Create: CMapXPoint;
begin
  Result := CreateComObject(CLASS_Point) as CMapXPoint;
end;

class function CoPoint.CreateRemote(const MachineName: string): CMapXPoint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point) as CMapXPoint;
end;

procedure TPoint.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{02539DF4-39DB-4CBA-AD4F-5CE17D26DBC5}';
    IntfIID:   '{968303A6-8F18-11D0-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPoint.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXPoint;
  end;
end;

procedure TPoint.ConnectTo(svrIntf: CMapXPoint);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPoint.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPoint.GetDefaultInterface: CMapXPoint;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPoint.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPointProperties.Create(Self);
{$ENDIF}
end;

destructor TPoint.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPoint.GetServerProperties: TPointProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPoint.Get_Y: Double;
begin
  Result := DefaultInterface.Y;
end;

function TPoint.Get_X: Double;
begin
  Result := DefaultInterface.X;
end;

procedure TPoint.Offset(deltaX: Double; deltaY: Double);
begin
  DefaultInterface.Offset(deltaX, deltaY);
end;

procedure TPoint.Set_(X: Double; Y: Double);
begin
  DefaultInterface.Set_(X, Y);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPointProperties.Create(AServer: TPoint);
begin
  inherited Create;
  FServer := AServer;
end;

function TPointProperties.GetDefaultInterface: CMapXPoint;
begin
  Result := FServer.DefaultInterface;
end;

function TPointProperties.Get_Y: Double;
begin
  Result := DefaultInterface.Y;
end;

function TPointProperties.Get_X: Double;
begin
  Result := DefaultInterface.X;
end;

{$ENDIF}

class function CoGeosets.Create: CMapXGeosets;
begin
  Result := CreateComObject(CLASS_Geosets) as CMapXGeosets;
end;

class function CoGeosets.CreateRemote(const MachineName: string): CMapXGeosets;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Geosets) as CMapXGeosets;
end;

procedure TGeosets.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{984C9421-93BA-11D0-B374-444553540000}';
    IntfIID:   '{984C9420-93BA-11D0-B374-444553540000}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TGeosets.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXGeosets;
  end;
end;

procedure TGeosets.ConnectTo(svrIntf: CMapXGeosets);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TGeosets.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TGeosets.GetDefaultInterface: CMapXGeosets;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TGeosets.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TGeosetsProperties.Create(Self);
{$ENDIF}
end;

destructor TGeosets.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TGeosets.GetServerProperties: TGeosetsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TGeosets.Get_Item(Index: OleVariant): CMapXGeoset;
begin
    Result := DefaultInterface.Item[Index];
end;

function TGeosets.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TGeosets._Item(Index: OleVariant): CMapXGeoset;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TGeosetsProperties.Create(AServer: TGeosets);
begin
  inherited Create;
  FServer := AServer;
end;

function TGeosetsProperties.GetDefaultInterface: CMapXGeosets;
begin
  Result := FServer.DefaultInterface;
end;

function TGeosetsProperties.Get_Item(Index: OleVariant): CMapXGeoset;
begin
    Result := DefaultInterface.Item[Index];
end;

function TGeosetsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoGeoSet.Create: CMapXGeoset;
begin
  Result := CreateComObject(CLASS_GeoSet) as CMapXGeoset;
end;

class function CoGeoSet.CreateRemote(const MachineName: string): CMapXGeoset;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GeoSet) as CMapXGeoset;
end;

procedure TGeoSet.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DC09D462-9575-11D0-83F7-00AA00BD34FC}';
    IntfIID:   '{DC09D461-9575-11D0-83F7-00AA00BD34FC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TGeoSet.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXGeoset;
  end;
end;

procedure TGeoSet.ConnectTo(svrIntf: CMapXGeoset);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TGeoSet.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TGeoSet.GetDefaultInterface: CMapXGeoset;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TGeoSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TGeoSetProperties.Create(Self);
{$ENDIF}
end;

destructor TGeoSet.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TGeoSet.GetServerProperties: TGeoSetProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TGeoSet.Get_Centroid: CMapXPoint;
begin
  Result := DefaultInterface.Centroid;
end;

function TGeoSet.Get_PathName: WideString;
begin
  Result := DefaultInterface.PathName;
end;

function TGeoSet.Get_UserName: WideString;
begin
  Result := DefaultInterface.UserName;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TGeoSetProperties.Create(AServer: TGeoSet);
begin
  inherited Create;
  FServer := AServer;
end;

function TGeoSetProperties.GetDefaultInterface: CMapXGeoset;
begin
  Result := FServer.DefaultInterface;
end;

function TGeoSetProperties.Get_Centroid: CMapXPoint;
begin
  Result := DefaultInterface.Centroid;
end;

function TGeoSetProperties.Get_PathName: WideString;
begin
  Result := DefaultInterface.PathName;
end;

function TGeoSetProperties.Get_UserName: WideString;
begin
  Result := DefaultInterface.UserName;
end;

{$ENDIF}

class function CoFeatures.Create: CMapXFeatures;
begin
  Result := CreateComObject(CLASS_Features) as CMapXFeatures;
end;

class function CoFeatures.CreateRemote(const MachineName: string): CMapXFeatures;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Features) as CMapXFeatures;
end;

procedure TFeatures.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{090703E1-9563-11D0-8796-00AA00B7EF73}';
    IntfIID:   '{090703E0-9563-11D0-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFeatures.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFeatures;
  end;
end;

procedure TFeatures.ConnectTo(svrIntf: CMapXFeatures);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFeatures.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFeatures.GetDefaultInterface: CMapXFeatures;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFeatures.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFeaturesProperties.Create(Self);
{$ENDIF}
end;

destructor TFeatures.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFeatures.GetServerProperties: TFeaturesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFeatures.Get_Item(Index: OleVariant): CMapXFeature;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFeatures.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFeatures.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TFeatures.Clone: CMapXFeatures;
begin
  Result := DefaultInterface.Clone;
end;

procedure TFeatures.RemoveByID(FeatureID: OleVariant);
begin
  DefaultInterface.RemoveByID(FeatureID);
end;

function TFeatures._Item(Index: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TFeatures.Add(const Source: IDispatch);
begin
  DefaultInterface.Add(Source);
end;

procedure TFeatures.Common(const Source: IDispatch);
begin
  DefaultInterface.Common(Source);
end;

procedure TFeatures.Replace(const Source: IDispatch);
begin
  DefaultInterface.Replace(Source);
end;

procedure TFeatures.AddByID(FeatureID: OleVariant);
begin
  DefaultInterface.AddByID(FeatureID);
end;

procedure TFeatures.Remove(Source: OleVariant);
begin
  DefaultInterface.Remove(Source);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFeaturesProperties.Create(AServer: TFeatures);
begin
  inherited Create;
  FServer := AServer;
end;

function TFeaturesProperties.GetDefaultInterface: CMapXFeatures;
begin
  Result := FServer.DefaultInterface;
end;

function TFeaturesProperties.Get_Item(Index: OleVariant): CMapXFeature;
begin
    Result := DefaultInterface.Item[Index];
end;

function TFeaturesProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TFeaturesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoDatum.Create: CMapXDatum;
begin
  Result := CreateComObject(CLASS_Datum) as CMapXDatum;
end;

class function CoDatum.CreateRemote(const MachineName: string): CMapXDatum;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Datum) as CMapXDatum;
end;

procedure TDatum.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5B5DA017-87E0-4E5F-BC9F-89F2BEFFC86F}';
    IntfIID:   '{49EB5384-BFFB-11D0-934C-00AA004603B3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDatum.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXDatum;
  end;
end;

procedure TDatum.ConnectTo(svrIntf: CMapXDatum);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDatum.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDatum.GetDefaultInterface: CMapXDatum;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDatum.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDatumProperties.Create(Self);
{$ENDIF}
end;

destructor TDatum.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDatum.GetServerProperties: TDatumProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDatum.Get_ShiftZ: Double;
begin
  Result := DefaultInterface.ShiftZ;
end;

function TDatum.Get_Ellipsoid: Smallint;
begin
  Result := DefaultInterface.Ellipsoid;
end;

function TDatum.Get_ShiftX: Double;
begin
  Result := DefaultInterface.ShiftX;
end;

function TDatum.Get_RotateX: Double;
begin
  Result := DefaultInterface.RotateX;
end;

function TDatum.Get_RotateY: Double;
begin
  Result := DefaultInterface.RotateY;
end;

function TDatum.Get_RotateZ: Double;
begin
  Result := DefaultInterface.RotateZ;
end;

function TDatum.Get_ShiftY: Double;
begin
  Result := DefaultInterface.ShiftY;
end;

function TDatum.Get_SemiMinorAxis: Double;
begin
  Result := DefaultInterface.SemiMinorAxis;
end;

function TDatum.Get_PrimeMeridian: Double;
begin
  Result := DefaultInterface.PrimeMeridian;
end;

function TDatum.Get_SemiMajorAxis: Double;
begin
  Result := DefaultInterface.SemiMajorAxis;
end;

function TDatum.Get_ScaleAdjust: Double;
begin
  Result := DefaultInterface.ScaleAdjust;
end;

function TDatum.Get_Flattening: Double;
begin
  Result := DefaultInterface.Flattening;
end;

function TDatum.Get_Eccentricity: Double;
begin
  Result := DefaultInterface.Eccentricity;
end;

procedure TDatum.SetFromList(DatumNum: Smallint);
begin
  DefaultInterface.SetFromList(DatumNum);
end;

procedure TDatum.Set_(Ellipsoid: Smallint; ShiftX: Double; ShiftY: Double; ShiftZ: Double; 
                      RotateX: Double; RotateY: Double; RotateZ: Double; ScaleAdjust: Double; 
                      PrimeMeridian: Double);
begin
  DefaultInterface.Set_(Ellipsoid, ShiftX, ShiftY, ShiftZ, RotateX, RotateY, RotateZ, ScaleAdjust, 
                        PrimeMeridian);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDatumProperties.Create(AServer: TDatum);
begin
  inherited Create;
  FServer := AServer;
end;

function TDatumProperties.GetDefaultInterface: CMapXDatum;
begin
  Result := FServer.DefaultInterface;
end;

function TDatumProperties.Get_ShiftZ: Double;
begin
  Result := DefaultInterface.ShiftZ;
end;

function TDatumProperties.Get_Ellipsoid: Smallint;
begin
  Result := DefaultInterface.Ellipsoid;
end;

function TDatumProperties.Get_ShiftX: Double;
begin
  Result := DefaultInterface.ShiftX;
end;

function TDatumProperties.Get_RotateX: Double;
begin
  Result := DefaultInterface.RotateX;
end;

function TDatumProperties.Get_RotateY: Double;
begin
  Result := DefaultInterface.RotateY;
end;

function TDatumProperties.Get_RotateZ: Double;
begin
  Result := DefaultInterface.RotateZ;
end;

function TDatumProperties.Get_ShiftY: Double;
begin
  Result := DefaultInterface.ShiftY;
end;

function TDatumProperties.Get_SemiMinorAxis: Double;
begin
  Result := DefaultInterface.SemiMinorAxis;
end;

function TDatumProperties.Get_PrimeMeridian: Double;
begin
  Result := DefaultInterface.PrimeMeridian;
end;

function TDatumProperties.Get_SemiMajorAxis: Double;
begin
  Result := DefaultInterface.SemiMajorAxis;
end;

function TDatumProperties.Get_ScaleAdjust: Double;
begin
  Result := DefaultInterface.ScaleAdjust;
end;

function TDatumProperties.Get_Flattening: Double;
begin
  Result := DefaultInterface.Flattening;
end;

function TDatumProperties.Get_Eccentricity: Double;
begin
  Result := DefaultInterface.Eccentricity;
end;

{$ENDIF}

class function CoAffineTransform.Create: CMapXAffineTransform;
begin
  Result := CreateComObject(CLASS_AffineTransform) as CMapXAffineTransform;
end;

class function CoAffineTransform.CreateRemote(const MachineName: string): CMapXAffineTransform;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AffineTransform) as CMapXAffineTransform;
end;

procedure TAffineTransform.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3BA114C2-47AB-4101-913E-0F7324DA86BB}';
    IntfIID:   '{DE279C62-DCDF-11D0-934C-00AA004603B3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAffineTransform.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXAffineTransform;
  end;
end;

procedure TAffineTransform.ConnectTo(svrIntf: CMapXAffineTransform);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAffineTransform.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAffineTransform.GetDefaultInterface: CMapXAffineTransform;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAffineTransform.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAffineTransformProperties.Create(Self);
{$ENDIF}
end;

destructor TAffineTransform.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAffineTransform.GetServerProperties: TAffineTransformProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAffineTransform.Get_Units: MapUnitConstants;
begin
  Result := DefaultInterface.Units;
end;

function TAffineTransform.Get_C: Double;
begin
  Result := DefaultInterface.C;
end;

function TAffineTransform.Get_B: Double;
begin
  Result := DefaultInterface.B;
end;

function TAffineTransform.Get_A: Double;
begin
  Result := DefaultInterface.A;
end;

function TAffineTransform.Get_D: Double;
begin
  Result := DefaultInterface.D;
end;

function TAffineTransform.Get_E: Double;
begin
  Result := DefaultInterface.E;
end;

function TAffineTransform.Get_F: Double;
begin
  Result := DefaultInterface.F;
end;

procedure TAffineTransform.Set_(Units: MapUnitConstants; A: Double; B: Double; C: Double; 
                                D: Double; E: Double; F: Double);
begin
  DefaultInterface.Set_(Units, A, B, C, D, E, F);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAffineTransformProperties.Create(AServer: TAffineTransform);
begin
  inherited Create;
  FServer := AServer;
end;

function TAffineTransformProperties.GetDefaultInterface: CMapXAffineTransform;
begin
  Result := FServer.DefaultInterface;
end;

function TAffineTransformProperties.Get_Units: MapUnitConstants;
begin
  Result := DefaultInterface.Units;
end;

function TAffineTransformProperties.Get_C: Double;
begin
  Result := DefaultInterface.C;
end;

function TAffineTransformProperties.Get_B: Double;
begin
  Result := DefaultInterface.B;
end;

function TAffineTransformProperties.Get_A: Double;
begin
  Result := DefaultInterface.A;
end;

function TAffineTransformProperties.Get_D: Double;
begin
  Result := DefaultInterface.D;
end;

function TAffineTransformProperties.Get_E: Double;
begin
  Result := DefaultInterface.E;
end;

function TAffineTransformProperties.Get_F: Double;
begin
  Result := DefaultInterface.F;
end;

{$ENDIF}

class function CoCoordSys.Create: CMapXCoordSys;
begin
  Result := CreateComObject(CLASS_CoordSys) as CMapXCoordSys;
end;

class function CoCoordSys.CreateRemote(const MachineName: string): CMapXCoordSys;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoordSys) as CMapXCoordSys;
end;

procedure TCoordSys.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FAAF04D9-B22A-4694-908A-7BC2685AF140}';
    IntfIID:   '{49EB5382-BFFB-11D0-934C-00AA004603B3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoordSys.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXCoordSys;
  end;
end;

procedure TCoordSys.ConnectTo(svrIntf: CMapXCoordSys);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoordSys.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoordSys.GetDefaultInterface: CMapXCoordSys;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoordSys.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoordSysProperties.Create(Self);
{$ENDIF}
end;

destructor TCoordSys.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoordSys.GetServerProperties: TCoordSysProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoordSys.Get_Datum: CMapXDatum;
begin
  Result := DefaultInterface.Datum;
end;

function TCoordSys.Get_type_: CoordSysTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TCoordSys.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TCoordSys.Get_StandardParallelOne: Double;
begin
  Result := DefaultInterface.StandardParallelOne;
end;

function TCoordSys.Get_OriginLatitude: Double;
begin
  Result := DefaultInterface.OriginLatitude;
end;

function TCoordSys.Get_OriginLongitude: Double;
begin
  Result := DefaultInterface.OriginLongitude;
end;

function TCoordSys.Get_StandardParallelTwo: Double;
begin
  Result := DefaultInterface.StandardParallelTwo;
end;

function TCoordSys.Get_FalseNorthing: Double;
begin
  Result := DefaultInterface.FalseNorthing;
end;

function TCoordSys.Get_ScaleFactor: Double;
begin
  Result := DefaultInterface.ScaleFactor;
end;

function TCoordSys.Get_FalseEasting: Double;
begin
  Result := DefaultInterface.FalseEasting;
end;

function TCoordSys.Get_AffineTransform: CMapXAffineTransform;
begin
  Result := DefaultInterface.AffineTransform;
end;

function TCoordSys.Get_Units: MapUnitConstants;
begin
  Result := DefaultInterface.Units;
end;

function TCoordSys.Get_Azimuth: Double;
begin
  Result := DefaultInterface.Azimuth;
end;

function TCoordSys.Get_Range: Double;
begin
  Result := DefaultInterface.Range;
end;

function TCoordSys.Clone: CMapXCoordSys;
begin
  Result := DefaultInterface.Clone;
end;

function TCoordSys.PickCoordSys: WordBool;
begin
  Result := DefaultInterface.PickCoordSys(EmptyParam, EmptyParam);
end;

function TCoordSys.PickCoordSys(HelpFile: OleVariant): WordBool;
begin
  Result := DefaultInterface.PickCoordSys(HelpFile, EmptyParam);
end;

function TCoordSys.PickCoordSys(HelpFile: OleVariant; HelpID: OleVariant): WordBool;
begin
  Result := DefaultInterface.PickCoordSys(HelpFile, HelpID);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants);
begin
  DefaultInterface.Set_(Type_, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, EmptyParam, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, EmptyParam, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, EmptyParam, 
                        EmptyParam, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                         FalseNorthing: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, FalseNorthing, 
                        EmptyParam, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                         FalseNorthing: OleVariant; Range: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, FalseNorthing, 
                        Range, EmptyParam, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                         FalseNorthing: OleVariant; Range: OleVariant; Bounds: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, FalseNorthing, 
                        Range, Bounds, EmptyParam);
end;

procedure TCoordSys.Set_(Type_: CoordSysTypeConstants; Datum: OleVariant; Units: OleVariant; 
                         OriginLongitude: OleVariant; OriginLatitude: OleVariant; 
                         StandardParallelOne: OleVariant; StandardParallelTwo: OleVariant; 
                         Azimuth: OleVariant; ScaleFactor: OleVariant; FalseEasting: OleVariant; 
                         FalseNorthing: OleVariant; Range: OleVariant; Bounds: OleVariant; 
                         AffineTransform: OleVariant);
begin
  DefaultInterface.Set_(Type_, Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, 
                        StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, FalseNorthing, 
                        Range, Bounds, AffineTransform);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoordSysProperties.Create(AServer: TCoordSys);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoordSysProperties.GetDefaultInterface: CMapXCoordSys;
begin
  Result := FServer.DefaultInterface;
end;

function TCoordSysProperties.Get_Datum: CMapXDatum;
begin
  Result := DefaultInterface.Datum;
end;

function TCoordSysProperties.Get_type_: CoordSysTypeConstants;
begin
  Result := DefaultInterface.type_;
end;

function TCoordSysProperties.Get_Bounds: CMapXRectangle;
begin
  Result := DefaultInterface.Bounds;
end;

function TCoordSysProperties.Get_StandardParallelOne: Double;
begin
  Result := DefaultInterface.StandardParallelOne;
end;

function TCoordSysProperties.Get_OriginLatitude: Double;
begin
  Result := DefaultInterface.OriginLatitude;
end;

function TCoordSysProperties.Get_OriginLongitude: Double;
begin
  Result := DefaultInterface.OriginLongitude;
end;

function TCoordSysProperties.Get_StandardParallelTwo: Double;
begin
  Result := DefaultInterface.StandardParallelTwo;
end;

function TCoordSysProperties.Get_FalseNorthing: Double;
begin
  Result := DefaultInterface.FalseNorthing;
end;

function TCoordSysProperties.Get_ScaleFactor: Double;
begin
  Result := DefaultInterface.ScaleFactor;
end;

function TCoordSysProperties.Get_FalseEasting: Double;
begin
  Result := DefaultInterface.FalseEasting;
end;

function TCoordSysProperties.Get_AffineTransform: CMapXAffineTransform;
begin
  Result := DefaultInterface.AffineTransform;
end;

function TCoordSysProperties.Get_Units: MapUnitConstants;
begin
  Result := DefaultInterface.Units;
end;

function TCoordSysProperties.Get_Azimuth: Double;
begin
  Result := DefaultInterface.Azimuth;
end;

function TCoordSysProperties.Get_Range: Double;
begin
  Result := DefaultInterface.Range;
end;

{$ENDIF}

class function CoBitmapSymbol.Create: CMapXBitmapSymbol;
begin
  Result := CreateComObject(CLASS_BitmapSymbol) as CMapXBitmapSymbol;
end;

class function CoBitmapSymbol.CreateRemote(const MachineName: string): CMapXBitmapSymbol;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BitmapSymbol) as CMapXBitmapSymbol;
end;

procedure TBitmapSymbol.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1FF38E52-F159-11D0-9DB4-00AA00A478CB}';
    IntfIID:   '{1FF38E51-F159-11D0-9DB4-00AA00A478CB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBitmapSymbol.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXBitmapSymbol;
  end;
end;

procedure TBitmapSymbol.ConnectTo(svrIntf: CMapXBitmapSymbol);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBitmapSymbol.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBitmapSymbol.GetDefaultInterface: CMapXBitmapSymbol;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBitmapSymbol.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBitmapSymbolProperties.Create(Self);
{$ENDIF}
end;

destructor TBitmapSymbol.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBitmapSymbol.GetServerProperties: TBitmapSymbolProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBitmapSymbol.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TBitmapSymbol.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TBitmapSymbol.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBitmapSymbolProperties.Create(AServer: TBitmapSymbol);
begin
  inherited Create;
  FServer := AServer;
end;

function TBitmapSymbolProperties.GetDefaultInterface: CMapXBitmapSymbol;
begin
  Result := FServer.DefaultInterface;
end;

function TBitmapSymbolProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TBitmapSymbolProperties.Get__Name: WideString;
begin
  Result := DefaultInterface._Name;
end;

procedure TBitmapSymbolProperties.Set__Name(const Value: WideString);
begin
  DefaultInterface._Name := Value;
end;

{$ENDIF}

class function CoFeatureFactory.Create: CMapXFeatureFactory;
begin
  Result := CreateComObject(CLASS_FeatureFactory) as CMapXFeatureFactory;
end;

class function CoFeatureFactory.CreateRemote(const MachineName: string): CMapXFeatureFactory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FeatureFactory) as CMapXFeatureFactory;
end;

procedure TFeatureFactory.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{BBE482A3-037F-11D1-8796-00AA00B7EF73}';
    IntfIID:   '{BBE482A1-037F-11D1-8796-00AA00B7EF73}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFeatureFactory.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXFeatureFactory;
  end;
end;

procedure TFeatureFactory.ConnectTo(svrIntf: CMapXFeatureFactory);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFeatureFactory.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFeatureFactory.GetDefaultInterface: CMapXFeatureFactory;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFeatureFactory.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFeatureFactoryProperties.Create(Self);
{$ENDIF}
end;

destructor TFeatureFactory.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFeatureFactory.GetServerProperties: TFeatureFactoryProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFeatureFactory.BufferFeatures(const Source: IDispatch; Distance: Double): CMapXFeature;
begin
  Result := DefaultInterface.BufferFeatures(Source, Distance, EmptyParam, EmptyParam);
end;

function TFeatureFactory.BufferFeatures(const Source: IDispatch; Distance: Double; Units: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.BufferFeatures(Source, Distance, Units, EmptyParam);
end;

function TFeatureFactory.BufferFeatures(const Source: IDispatch; Distance: Double; 
                                        Units: OleVariant; Resolution: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.BufferFeatures(Source, Distance, Units, Resolution);
end;

function TFeatureFactory.CombineFeatures(const Source1: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.CombineFeatures(Source1, EmptyParam);
end;

function TFeatureFactory.CombineFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CombineFeatures(Source1, Source2);
end;

function TFeatureFactory.IntersectFeatures(const Source1: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.IntersectFeatures(Source1, EmptyParam);
end;

function TFeatureFactory.IntersectFeatures(const Source1: IDispatch; Source2: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.IntersectFeatures(Source1, Source2);
end;

function TFeatureFactory.EraseFeature(const Feature: IDispatch; const EraserFeature: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.EraseFeature(Feature, EraserFeature);
end;

function TFeatureFactory.CreateSymbol: CMapXFeature;
begin
  Result := DefaultInterface.CreateSymbol(EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateSymbol(Point: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateSymbol(Point, EmptyParam);
end;

function TFeatureFactory.CreateSymbol(Point: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateSymbol(Point, Style);
end;

function TFeatureFactory.CreateRegion: CMapXFeature;
begin
  Result := DefaultInterface.CreateRegion(EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateRegion(Points: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateRegion(Points, EmptyParam);
end;

function TFeatureFactory.CreateRegion(Points: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateRegion(Points, Style);
end;

function TFeatureFactory.CreateLine: CMapXFeature;
begin
  Result := DefaultInterface.CreateLine(EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateLine(Points: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateLine(Points, EmptyParam);
end;

function TFeatureFactory.CreateLine(Points: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateLine(Points, Style);
end;

function TFeatureFactory.CreateText: CMapXFeature;
begin
  Result := DefaultInterface.CreateText(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateText(Point: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateText(Point, EmptyParam, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateText(Point: OleVariant; Caption: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateText(Point, Caption, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateText(Point: OleVariant; Caption: OleVariant; Position: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateText(Point, Caption, Position, EmptyParam);
end;

function TFeatureFactory.CreateText(Point: OleVariant; Caption: OleVariant; Position: OleVariant; 
                                    Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateText(Point, Caption, Position, Style);
end;

function TFeatureFactory.CreateArc(const Point1: IDispatch; const Point2: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.CreateArc(Point1, Point2, EmptyParam, EmptyParam, EmptyParam, 
                                       EmptyParam);
end;

function TFeatureFactory.CreateArc(const Point1: IDispatch; const Point2: IDispatch; 
                                   Angle: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateArc(Point1, Point2, Angle, EmptyParam, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateArc(const Point1: IDispatch; const Point2: IDispatch; 
                                   Angle: OleVariant; Distance: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateArc(Point1, Point2, Angle, Distance, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateArc(const Point1: IDispatch; const Point2: IDispatch; 
                                   Angle: OleVariant; Distance: OleVariant; Resolution: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateArc(Point1, Point2, Angle, Distance, Resolution, EmptyParam);
end;

function TFeatureFactory.CreateArc(const Point1: IDispatch; const Point2: IDispatch; 
                                   Angle: OleVariant; Distance: OleVariant; Resolution: OleVariant; 
                                   Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateArc(Point1, Point2, Angle, Distance, Resolution, Style);
end;

function TFeatureFactory.CreateEllipticalRegion(const Rectangle: IDispatch): CMapXFeature;
begin
  Result := DefaultInterface.CreateEllipticalRegion(Rectangle, EmptyParam, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateEllipticalRegion(Rectangle, Angle, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant; 
                                                Resolution: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateEllipticalRegion(Rectangle, Angle, Resolution, EmptyParam);
end;

function TFeatureFactory.CreateEllipticalRegion(const Rectangle: IDispatch; Angle: OleVariant; 
                                                Resolution: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateEllipticalRegion(Rectangle, Angle, Resolution, Style);
end;

function TFeatureFactory.CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                              Distance: Double): CMapXFeature;
begin
  Result := DefaultInterface.CreateCircularRegion(Type_, Point, Distance, EmptyParam, EmptyParam, 
                                                  EmptyParam);
end;

function TFeatureFactory.CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                              Distance: Double; Units: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCircularRegion(Type_, Point, Distance, Units, EmptyParam, 
                                                  EmptyParam);
end;

function TFeatureFactory.CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                              Distance: Double; Units: OleVariant; 
                                              Resolution: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCircularRegion(Type_, Point, Distance, Units, Resolution, 
                                                  EmptyParam);
end;

function TFeatureFactory.CreateCircularRegion(Type_: CircleTypeConstants; const Point: IDispatch; 
                                              Distance: Double; Units: OleVariant; 
                                              Resolution: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCircularRegion(Type_, Point, Distance, Units, Resolution, Style);
end;

function TFeatureFactory.IntersectionTest(const Feature1: IDispatch; const Feature2: IDispatch): WordBool;
begin
  Result := DefaultInterface.IntersectionTest(Feature1, Feature2, EmptyParam);
end;

function TFeatureFactory.IntersectionTest(const Feature1: IDispatch; const Feature2: IDispatch; 
                                          Flag: OleVariant): WordBool;
begin
  Result := DefaultInterface.IntersectionTest(Feature1, Feature2, Flag);
end;

function TFeatureFactory.IntersectionPoints(const Feature1: IDispatch; const Feature2: IDispatch): CMapXPoints;
begin
  Result := DefaultInterface.IntersectionPoints(Feature1, Feature2, EmptyParam);
end;

function TFeatureFactory.IntersectionPoints(const Feature1: IDispatch; const Feature2: IDispatch; 
                                            Flag: OleVariant): CMapXPoints;
begin
  Result := DefaultInterface.IntersectionPoints(Feature1, Feature2, Flag);
end;

function TFeatureFactory.CreateCollectionFeature: CMapXFeature;
begin
  Result := DefaultInterface.CreateCollectionFeature(EmptyParam, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateCollectionFeature(Source1: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCollectionFeature(Source1, EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateCollectionFeature(Source1: OleVariant; Source2: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCollectionFeature(Source1, Source2, EmptyParam);
end;

function TFeatureFactory.CreateCollectionFeature(Source1: OleVariant; Source2: OleVariant; 
                                                 Source3: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateCollectionFeature(Source1, Source2, Source3);
end;

function TFeatureFactory.CreateMultipoint: CMapXFeature;
begin
  Result := DefaultInterface.CreateMultipoint(EmptyParam, EmptyParam);
end;

function TFeatureFactory.CreateMultipoint(Points: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateMultipoint(Points, EmptyParam);
end;

function TFeatureFactory.CreateMultipoint(Points: OleVariant; Style: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.CreateMultipoint(Points, Style);
end;

function TFeatureFactory.ThinFeature(const Source: CMapXFeature; BendTolerance: Double; 
                                     DistanceTolerance: Double): CMapXFeature;
begin
  Result := DefaultInterface.ThinFeature(Source, BendTolerance, DistanceTolerance, EmptyParam);
end;

function TFeatureFactory.ThinFeature(const Source: CMapXFeature; BendTolerance: Double; 
                                     DistanceTolerance: Double; Units: OleVariant): CMapXFeature;
begin
  Result := DefaultInterface.ThinFeature(Source, BendTolerance, DistanceTolerance, Units);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFeatureFactoryProperties.Create(AServer: TFeatureFactory);
begin
  inherited Create;
  FServer := AServer;
end;

function TFeatureFactoryProperties.GetDefaultInterface: CMapXFeatureFactory;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoResolveObjects.Create: CMapXResolveObjects;
begin
  Result := CreateComObject(CLASS_ResolveObjects) as CMapXResolveObjects;
end;

class function CoResolveObjects.CreateRemote(const MachineName: string): CMapXResolveObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResolveObjects) as CMapXResolveObjects;
end;

procedure TResolveObjects.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{92880602-CD2F-11D1-A34B-00207812EFE7}';
    IntfIID:   '{92880600-CD2F-11D1-A34B-00207812EFE7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TResolveObjects.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXResolveObjects;
  end;
end;

procedure TResolveObjects.ConnectTo(svrIntf: CMapXResolveObjects);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TResolveObjects.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TResolveObjects.GetDefaultInterface: CMapXResolveObjects;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TResolveObjects.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TResolveObjectsProperties.Create(Self);
{$ENDIF}
end;

destructor TResolveObjects.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TResolveObjects.GetServerProperties: TResolveObjectsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TResolveObjects.Get_Item(Index: OleVariant): CMapXResolveObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TResolveObjects.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TResolveObjects._Item(Index: OleVariant): CMapXResolveObject;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TResolveObjectsProperties.Create(AServer: TResolveObjects);
begin
  inherited Create;
  FServer := AServer;
end;

function TResolveObjectsProperties.GetDefaultInterface: CMapXResolveObjects;
begin
  Result := FServer.DefaultInterface;
end;

function TResolveObjectsProperties.Get_Item(Index: OleVariant): CMapXResolveObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TResolveObjectsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoResolveObject.Create: CMapXResolveObject;
begin
  Result := CreateComObject(CLASS_ResolveObject) as CMapXResolveObject;
end;

class function CoResolveObject.CreateRemote(const MachineName: string): CMapXResolveObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResolveObject) as CMapXResolveObject;
end;

procedure TResolveObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{92880605-CD2F-11D1-A34B-00207812EFE7}';
    IntfIID:   '{92880603-CD2F-11D1-A34B-00207812EFE7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TResolveObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXResolveObject;
  end;
end;

procedure TResolveObject.ConnectTo(svrIntf: CMapXResolveObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TResolveObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TResolveObject.GetDefaultInterface: CMapXResolveObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TResolveObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TResolveObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TResolveObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TResolveObject.GetServerProperties: TResolveObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TResolveObject.Get_TableName: WideString;
begin
  Result := DefaultInterface.TableName;
end;

function TResolveObject.Get_SourceMatch: Integer;
begin
  Result := DefaultInterface.SourceMatch;
end;

function TResolveObject.Get_TableMatch: Integer;
begin
  Result := DefaultInterface.TableMatch;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TResolveObjectProperties.Create(AServer: TResolveObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TResolveObjectProperties.GetDefaultInterface: CMapXResolveObject;
begin
  Result := FServer.DefaultInterface;
end;

function TResolveObjectProperties.Get_TableName: WideString;
begin
  Result := DefaultInterface.TableName;
end;

function TResolveObjectProperties.Get_SourceMatch: Integer;
begin
  Result := DefaultInterface.SourceMatch;
end;

function TResolveObjectProperties.Get_TableMatch: Integer;
begin
  Result := DefaultInterface.TableMatch;
end;

{$ENDIF}

class function CoRowValues.Create: CMapXRowValues;
begin
  Result := CreateComObject(CLASS_RowValues) as CMapXRowValues;
end;

class function CoRowValues.CreateRemote(const MachineName: string): CMapXRowValues;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RowValues) as CMapXRowValues;
end;

procedure TRowValues.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6C67BA6D-8175-49E1-AD47-380088D0ABE5}';
    IntfIID:   '{7A5FFDC2-FE6C-11D2-98A9-00A0C9742CCA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRowValues.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXRowValues;
  end;
end;

procedure TRowValues.ConnectTo(svrIntf: CMapXRowValues);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRowValues.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRowValues.GetDefaultInterface: CMapXRowValues;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TRowValues.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRowValuesProperties.Create(Self);
{$ENDIF}
end;

destructor TRowValues.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRowValues.GetServerProperties: TRowValuesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRowValues.Get_Item(Index: OleVariant): CMapXRowValue;
begin
    Result := DefaultInterface.Item[Index];
end;

function TRowValues.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TRowValues.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TRowValues.Add(const RowValue: IDispatch): CMapXRowValue;
begin
  Result := DefaultInterface.Add(RowValue);
end;

function TRowValues._Item(Index: OleVariant): CMapXRowValue;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TRowValues.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

function TRowValues.Clone: CMapXRowValues;
begin
  Result := DefaultInterface.Clone;
end;

procedure TRowValues.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRowValuesProperties.Create(AServer: TRowValues);
begin
  inherited Create;
  FServer := AServer;
end;

function TRowValuesProperties.GetDefaultInterface: CMapXRowValues;
begin
  Result := FServer.DefaultInterface;
end;

function TRowValuesProperties.Get_Item(Index: OleVariant): CMapXRowValue;
begin
    Result := DefaultInterface.Item[Index];
end;

function TRowValuesProperties.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TRowValuesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoRowValue.Create: CMapXRowValue;
begin
  Result := CreateComObject(CLASS_RowValue) as CMapXRowValue;
end;

class function CoRowValue.CreateRemote(const MachineName: string): CMapXRowValue;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RowValue) as CMapXRowValue;
end;

procedure TRowValue.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9097D850-168A-4218-83F0-E05F7DED8DB7}';
    IntfIID:   '{2EF654E2-FE50-11D2-98A9-00A0C9742CCA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRowValue.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXRowValue;
  end;
end;

procedure TRowValue.ConnectTo(svrIntf: CMapXRowValue);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRowValue.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRowValue.GetDefaultInterface: CMapXRowValue;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TRowValue.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRowValueProperties.Create(Self);
{$ENDIF}
end;

destructor TRowValue.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRowValue.GetServerProperties: TRowValueProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRowValue.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TRowValue.Get_Dataset: IDispatch;
begin
  Result := DefaultInterface.Dataset;
end;

procedure TRowValue.Set_Dataset(const Value: IDispatch);
begin
  DefaultInterface.Dataset := Value;
end;

function TRowValue.Get_Field: IDispatch;
begin
  Result := DefaultInterface.Field;
end;

procedure TRowValue.Set_Field(const Value: IDispatch);
begin
  DefaultInterface.Field := Value;
end;

function TRowValue.Get_Value: OleVariant;
begin
  Result := DefaultInterface.Value;
end;

procedure TRowValue.Set_Value(Value: OleVariant);
begin
  DefaultInterface.Value := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRowValueProperties.Create(AServer: TRowValue);
begin
  inherited Create;
  FServer := AServer;
end;

function TRowValueProperties.GetDefaultInterface: CMapXRowValue;
begin
  Result := FServer.DefaultInterface;
end;

function TRowValueProperties.Get_ReadOnly: WordBool;
begin
  Result := DefaultInterface.ReadOnly;
end;

function TRowValueProperties.Get_Dataset: IDispatch;
begin
  Result := DefaultInterface.Dataset;
end;

procedure TRowValueProperties.Set_Dataset(const Value: IDispatch);
begin
  DefaultInterface.Dataset := Value;
end;

function TRowValueProperties.Get_Field: IDispatch;
begin
  Result := DefaultInterface.Field;
end;

procedure TRowValueProperties.Set_Field(const Value: IDispatch);
begin
  DefaultInterface.Field := Value;
end;

function TRowValueProperties.Get_Value: OleVariant;
begin
  Result := DefaultInterface.Value;
end;

procedure TRowValueProperties.Set_Value(Value: OleVariant);
begin
  DefaultInterface.Value := Value;
end;

{$ENDIF}

class function CoVariables.Create: CMapXVariables;
begin
  Result := CreateComObject(CLASS_Variables) as CMapXVariables;
end;

class function CoVariables.CreateRemote(const MachineName: string): CMapXVariables;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Variables) as CMapXVariables;
end;

procedure TVariables.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3D928FE1-1D1B-449E-B134-DA5FECB6DB96}';
    IntfIID:   '{9A5D5583-EFB8-11D3-9C33-0050049DA682}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVariables.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXVariables;
  end;
end;

procedure TVariables.ConnectTo(svrIntf: CMapXVariables);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVariables.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVariables.GetDefaultInterface: CMapXVariables;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVariables.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TVariablesProperties.Create(Self);
{$ENDIF}
end;

destructor TVariables.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TVariables.GetServerProperties: TVariablesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TVariables.Get_Item(Index: OleVariant): CMapXVariable;
begin
    Result := DefaultInterface.Item[Index];
end;

function TVariables.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TVariables._Item(Index: OleVariant): CMapXVariable;
begin
  Result := DefaultInterface._Item(Index);
end;

procedure TVariables.Remove(Index: OleVariant);
begin
  DefaultInterface.Remove(Index);
end;

function TVariables.Add(const Name: WideString; Value: OleVariant): CMapXVariable;
begin
  Result := DefaultInterface.Add(Name, Value);
end;

function TVariables.Clone: CMapXVariables;
begin
  Result := DefaultInterface.Clone;
end;

procedure TVariables.RemoveAll;
begin
  DefaultInterface.RemoveAll;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TVariablesProperties.Create(AServer: TVariables);
begin
  inherited Create;
  FServer := AServer;
end;

function TVariablesProperties.GetDefaultInterface: CMapXVariables;
begin
  Result := FServer.DefaultInterface;
end;

function TVariablesProperties.Get_Item(Index: OleVariant): CMapXVariable;
begin
    Result := DefaultInterface.Item[Index];
end;

function TVariablesProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoVariable.Create: CMapXVariable;
begin
  Result := CreateComObject(CLASS_Variable) as CMapXVariable;
end;

class function CoVariable.CreateRemote(const MachineName: string): CMapXVariable;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Variable) as CMapXVariable;
end;

procedure TVariable.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9A5D5586-EFB8-11D3-9C33-0050049DA682}';
    IntfIID:   '{9A5D5585-EFB8-11D3-9C33-0050049DA682}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVariable.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXVariable;
  end;
end;

procedure TVariable.ConnectTo(svrIntf: CMapXVariable);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVariable.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVariable.GetDefaultInterface: CMapXVariable;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVariable.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TVariableProperties.Create(Self);
{$ENDIF}
end;

destructor TVariable.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TVariable.GetServerProperties: TVariableProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TVariable.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TVariable.Get_Value: OleVariant;
begin
  Result := DefaultInterface.Value;
end;

procedure TVariable.Set_Value(Value: OleVariant);
begin
  DefaultInterface.Value := Value;
end;

function TVariable.Get__Value: OleVariant;
begin
  Result := DefaultInterface._Value;
end;

procedure TVariable.Set__Value(Value: OleVariant);
begin
  DefaultInterface._Value := Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TVariableProperties.Create(AServer: TVariable);
begin
  inherited Create;
  FServer := AServer;
end;

function TVariableProperties.GetDefaultInterface: CMapXVariable;
begin
  Result := FServer.DefaultInterface;
end;

function TVariableProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TVariableProperties.Get_Value: OleVariant;
begin
  Result := DefaultInterface.Value;
end;

procedure TVariableProperties.Set_Value(Value: OleVariant);
begin
  DefaultInterface.Value := Value;
end;

function TVariableProperties.Get__Value: OleVariant;
begin
  Result := DefaultInterface._Value;
end;

procedure TVariableProperties.Set__Value(Value: OleVariant);
begin
  DefaultInterface._Value := Value;
end;

{$ENDIF}

class function CoLabels.Create: CMapXLabels;
begin
  Result := CreateComObject(CLASS_Labels) as CMapXLabels;
end;

class function CoLabels.CreateRemote(const MachineName: string): CMapXLabels;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Labels) as CMapXLabels;
end;

procedure TLabels.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5246D2CB-5F52-436B-95B2-9E00D25A646A}';
    IntfIID:   '{C6AAE3F1-88D9-45FB-B816-7D635B3F259B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabels.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLabels;
  end;
end;

procedure TLabels.ConnectTo(svrIntf: CMapXLabels);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabels.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabels.GetDefaultInterface: CMapXLabels;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLabels.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabelsProperties.Create(Self);
{$ENDIF}
end;

destructor TLabels.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabels.GetServerProperties: TLabelsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLabels.Get_Item(Index: OleVariant): CMapXLabel;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLabels.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TLabels._Item(Index: OleVariant): CMapXLabel;
begin
  Result := DefaultInterface._Item(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabelsProperties.Create(AServer: TLabels);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabelsProperties.GetDefaultInterface: CMapXLabels;
begin
  Result := FServer.DefaultInterface;
end;

function TLabelsProperties.Get_Item(Index: OleVariant): CMapXLabel;
begin
    Result := DefaultInterface.Item[Index];
end;

function TLabelsProperties.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoLabel_.Create: CMapXLabel;
begin
  Result := CreateComObject(CLASS_Label_) as CMapXLabel;
end;

class function CoLabel_.CreateRemote(const MachineName: string): CMapXLabel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Label_) as CMapXLabel;
end;

procedure TLabel_.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{100042C3-C923-4A59-93E6-D0FC2B6F891E}';
    IntfIID:   '{58A009FA-D7D0-4AD9-A593-69ADC20A6A21}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLabel_.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as CMapXLabel;
  end;
end;

procedure TLabel_.ConnectTo(svrIntf: CMapXLabel);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLabel_.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLabel_.GetDefaultInterface: CMapXLabel;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLabel_.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLabel_Properties.Create(Self);
{$ENDIF}
end;

destructor TLabel_.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLabel_.GetServerProperties: TLabel_Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLabel_.Get_AnchorX: Double;
begin
  Result := DefaultInterface.AnchorX;
end;

procedure TLabel_.Set_AnchorX(Value: Double);
begin
  DefaultInterface.AnchorX := Value;
end;

function TLabel_.Get_AnchorY: Double;
begin
  Result := DefaultInterface.AnchorY;
end;

procedure TLabel_.Set_AnchorY(Value: Double);
begin
  DefaultInterface.AnchorY := Value;
end;

function TLabel_.Get_Angle: Smallint;
begin
  Result := DefaultInterface.Angle;
end;

procedure TLabel_.Set_Angle(Value: Smallint);
begin
  DefaultInterface.Angle := Value;
end;

function TLabel_.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TLabel_.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TLabel_.Get_LineType: LineTypeConstants;
begin
  Result := DefaultInterface.LineType;
end;

procedure TLabel_.Set_LineType(Value: LineTypeConstants);
begin
  DefaultInterface.LineType := Value;
end;

function TLabel_.Get_MultiSegment: WordBool;
begin
  Result := DefaultInterface.MultiSegment;
end;

procedure TLabel_.Set_MultiSegment(Value: WordBool);
begin
  DefaultInterface.MultiSegment := Value;
end;

function TLabel_.Get_Offset: Integer;
begin
  Result := DefaultInterface.Offset;
end;

procedure TLabel_.Set_Offset(Value: Integer);
begin
  DefaultInterface.Offset := Value;
end;

function TLabel_.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TLabel_.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TLabel_.Get_Selected: WordBool;
begin
  Result := DefaultInterface.Selected;
end;

procedure TLabel_.Set_Selected(Value: WordBool);
begin
  DefaultInterface.Selected := Value;
end;

function TLabel_.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLabel_.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLabel_.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLabel_.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLabel_.Get_Drawn: WordBool;
begin
  Result := DefaultInterface.Drawn;
end;

function TLabel_.Get_Edited: WordBool;
begin
  Result := DefaultInterface.Edited;
end;

function TLabel_.Get_EditedAnchor: WordBool;
begin
  Result := DefaultInterface.EditedAnchor;
end;

function TLabel_.Get_EditedAngle: WordBool;
begin
  Result := DefaultInterface.EditedAngle;
end;

function TLabel_.Get_EditedCaption: WordBool;
begin
  Result := DefaultInterface.EditedCaption;
end;

function TLabel_.Get_EditedLineStyle: WordBool;
begin
  Result := DefaultInterface.EditedLineStyle;
end;

function TLabel_.Get_EditedLineType: WordBool;
begin
  Result := DefaultInterface.EditedLineType;
end;

function TLabel_.Get_EditedMultiSegment: WordBool;
begin
  Result := DefaultInterface.EditedMultiSegment;
end;

function TLabel_.Get_EditedOffset: WordBool;
begin
  Result := DefaultInterface.EditedOffset;
end;

function TLabel_.Get_EditedPosition: WordBool;
begin
  Result := DefaultInterface.EditedPosition;
end;

function TLabel_.Get_EditedTextStyle: WordBool;
begin
  Result := DefaultInterface.EditedTextStyle;
end;

function TLabel_.Get_EditedVisible: WordBool;
begin
  Result := DefaultInterface.EditedVisible;
end;

function TLabel_.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TLabel_.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLabel_Properties.Create(AServer: TLabel_);
begin
  inherited Create;
  FServer := AServer;
end;

function TLabel_Properties.GetDefaultInterface: CMapXLabel;
begin
  Result := FServer.DefaultInterface;
end;

function TLabel_Properties.Get_AnchorX: Double;
begin
  Result := DefaultInterface.AnchorX;
end;

procedure TLabel_Properties.Set_AnchorX(Value: Double);
begin
  DefaultInterface.AnchorX := Value;
end;

function TLabel_Properties.Get_AnchorY: Double;
begin
  Result := DefaultInterface.AnchorY;
end;

procedure TLabel_Properties.Set_AnchorY(Value: Double);
begin
  DefaultInterface.AnchorY := Value;
end;

function TLabel_Properties.Get_Angle: Smallint;
begin
  Result := DefaultInterface.Angle;
end;

procedure TLabel_Properties.Set_Angle(Value: Smallint);
begin
  DefaultInterface.Angle := Value;
end;

function TLabel_Properties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TLabel_Properties.Set_Caption(const Value: WideString);
begin
  DefaultInterface.Caption := Value;
end;

function TLabel_Properties.Get_LineType: LineTypeConstants;
begin
  Result := DefaultInterface.LineType;
end;

procedure TLabel_Properties.Set_LineType(Value: LineTypeConstants);
begin
  DefaultInterface.LineType := Value;
end;

function TLabel_Properties.Get_MultiSegment: WordBool;
begin
  Result := DefaultInterface.MultiSegment;
end;

procedure TLabel_Properties.Set_MultiSegment(Value: WordBool);
begin
  DefaultInterface.MultiSegment := Value;
end;

function TLabel_Properties.Get_Offset: Integer;
begin
  Result := DefaultInterface.Offset;
end;

procedure TLabel_Properties.Set_Offset(Value: Integer);
begin
  DefaultInterface.Offset := Value;
end;

function TLabel_Properties.Get_Position: PositionConstants;
begin
  Result := DefaultInterface.Position;
end;

procedure TLabel_Properties.Set_Position(Value: PositionConstants);
begin
  DefaultInterface.Position := Value;
end;

function TLabel_Properties.Get_Selected: WordBool;
begin
  Result := DefaultInterface.Selected;
end;

procedure TLabel_Properties.Set_Selected(Value: WordBool);
begin
  DefaultInterface.Selected := Value;
end;

function TLabel_Properties.Get_Style: CMapXStyle;
begin
  Result := DefaultInterface.Style;
end;

procedure TLabel_Properties.Set_Style(const Value: CMapXStyle);
begin
  DefaultInterface.Style := Value;
end;

function TLabel_Properties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TLabel_Properties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Visible := Value;
end;

function TLabel_Properties.Get_Drawn: WordBool;
begin
  Result := DefaultInterface.Drawn;
end;

function TLabel_Properties.Get_Edited: WordBool;
begin
  Result := DefaultInterface.Edited;
end;

function TLabel_Properties.Get_EditedAnchor: WordBool;
begin
  Result := DefaultInterface.EditedAnchor;
end;

function TLabel_Properties.Get_EditedAngle: WordBool;
begin
  Result := DefaultInterface.EditedAngle;
end;

function TLabel_Properties.Get_EditedCaption: WordBool;
begin
  Result := DefaultInterface.EditedCaption;
end;

function TLabel_Properties.Get_EditedLineStyle: WordBool;
begin
  Result := DefaultInterface.EditedLineStyle;
end;

function TLabel_Properties.Get_EditedLineType: WordBool;
begin
  Result := DefaultInterface.EditedLineType;
end;

function TLabel_Properties.Get_EditedMultiSegment: WordBool;
begin
  Result := DefaultInterface.EditedMultiSegment;
end;

function TLabel_Properties.Get_EditedOffset: WordBool;
begin
  Result := DefaultInterface.EditedOffset;
end;

function TLabel_Properties.Get_EditedPosition: WordBool;
begin
  Result := DefaultInterface.EditedPosition;
end;

function TLabel_Properties.Get_EditedTextStyle: WordBool;
begin
  Result := DefaultInterface.EditedTextStyle;
end;

function TLabel_Properties.Get_EditedVisible: WordBool;
begin
  Result := DefaultInterface.EditedVisible;
end;

function TLabel_Properties.Get_Layer: CMapXLayer;
begin
  Result := DefaultInterface.Layer;
end;

function TLabel_Properties.Get_FeatureKey: WideString;
begin
  Result := DefaultInterface.FeatureKey;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TMap]);
{
  RegisterComponents(dtlServerPage, [TDataSets, TLayers, TLayerInfo, TLayer,
    TField, TDataset, TThemes, TTheme, TLegend, 
    TAnnotations, TThemeProperties, TSelection, TFeature, TRangeCategory, 
    TFields, TStyle, TIndividualValueCategory, TMultiVarCategory, TSourceRows, 
    TSourceRow, TAnnotation, TGraphic, TLegendText, TLegendTexts, 
    TTitle, TLabelProperties, TBindLayer, TRangeCategories, TIndividualValueCategories, 
    TMultivarCategories, TBitmapSymbols, TRectangle, TBoundsConstraint, TFeaturesConstraint, 
    TAllFeaturesConstraint, TFind, TFindFeature, TFindResult, TFindMatch, 
    TFindMatches, TParts, TPoints, TPoint, TGeosets, 
    TGeoSet, TFeatures, TDatum, TAffineTransform, TCoordSys, 
    TBitmapSymbol, TFeatureFactory, TResolveObjects, TResolveObject, TRowValues, 
    TRowValue, TVariables, TVariable, TLabels, TLabel_]);
}
end;

end.
