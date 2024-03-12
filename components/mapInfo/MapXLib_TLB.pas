unit MapXLib_TLB;

{ This file contains pascal declarations imported from a type library.
  This file will be written during each import or refresh of the type
  library editor.  Changes to this file will be discarded during the
  refresh process. }

{ MapInfo MapX V5 }
{ Version 5.0 }

{ Conversion log:
  Warning: 'Label' is a reserved word. Label changed to Label_
  Warning: 'Type' is a reserved word. CMapXAnnotation.Type changed to Type_
  Warning: 'Set' is a reserved word. CMapXRectangle.Set changed to Set_
  Warning: 'Type' is a reserved word. CMapXCoordSys.Type changed to Type_
  Warning: 'Set' is a reserved word. CMapXCoordSys.Set changed to Set_
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapXCoordSys.Set_ changed to 'Type_'
  Warning: 'Set' is a reserved word. CMapXDatum.Set changed to Set_
  Warning: 'Set' is a reserved word. CMapXAffineTransform.Set changed to Set_
  Warning: 'Type' is a reserved word. CMapXLayer.Type changed to Type_
  Warning: 'Type' is a reserved word. CMapXFeature.Type changed to Type_
  Warning: 'Set' is a reserved word. CMapXPoint.Set changed to Set_
  Warning: 'Type' is a reserved word. CMapXFindFeature.Type changed to Type_
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapXDatasets.Add changed to 'Type_'
  Warning: 'Type' is a reserved word. CMapXDataset.Type changed to Type_
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapXFields.Add changed to 'Type_'
  Warning: 'Type' is a reserved word. CMapXField.Type changed to Type_
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapXThemes.Add changed to 'Type_'
  Warning: 'Type' is a reserved word. CMapXTheme.Type changed to Type_
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapXFeatureFactory.CreateCircularRegion changed to 'Type_'
  Warning: 'Type' is a reserved word. CMapXLayerInfo.Type changed to Type_
  Warning: 'To' is a reserved word. Parameter 'To' in CMapXLayers.Move changed to 'To_'
  Warning: 'Type' is a reserved word. Parameter 'Type' in CMapX.CreateCustomTool changed to 'Type_'
 }

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

const
  LIBID_MapXLib: TGUID = '{E760686B-BC9E-4802-9ECF-175FDF4062CE}';

const

{ AnnotationTypeConstants }

  miSymbolAnnotation = 1;
  miTextAnnotation = 6;

{ PositionConstants }

  miPositionCC = 0;
  miPositionTL = 1;
  miPositionTC = 2;
  miPositionTR = 3;
  miPositionCL = 4;
  miPositionCR = 5;
  miPositionBL = 6;
  miPositionBC = 7;
  miPositionBR = 8;

{ PenStyleConstants }

  miPenNone = 0;
  miPenSolid = 1;

{ FillPatternConstants }

  miPatternNoFill = 0;
  miPatternHollow = 1;
  miPatternSolid = 2;
  miPatternHorizontal = 3;
  miPatternVertical = 4;
  miPatternFDiag = 5;
  miPatternFilBDiag = 6;
  miPatternCross = 7;
  miPatternDiagCross = 8;

{ SymbolTypeConstants }

  miSymbolTypeTrueTypeFont = 0;
  miSymbolTypeBitmap = 1;
  miSymbolTypeVector = 2;

{ StyleUnitConstants }

  miStyleUnitPixel = 0;
  miStyleUnitTenthsOfPoint = 1;

{ ExportFormatConstants }

  miFormatWMF = 0;
  miFormatBMP = 1;
  miFormatGIF = 2;
  miFormatJPEG = 3;
  miFormatTIF = 4;
  miFormatPNG = 5;
  miFormatPSD = 6;

{ CoordSysTypeConstants }

  miNonEarth = 0;
  miLongLat = 1;
  miCylindricalEqualArea = 2;
  miLambertConformalConic = 3;
  miLambertAzimuthalEqualArea = 4;
  miAzimuthalEquidistant = 5;
  miEquidistantConic = 6;
  miHotineObliqueMercator = 7;
  miTransverseMercator = 8;
  miAlbersEqualAreaConic = 9;
  miMercator = 10;
  miMillerCylindrical = 11;
  miRobinson = 12;
  miMollweide = 13;
  miEckertIV = 14;
  miEckertVI = 15;
  miSinusoidal = 16;
  miGall = 17;
  miNewZealandMapGrid = 18;
  miLambertConformalConicBelgium = 19;
  miStereographic = 20;
  miTransverseMercatorDenmarkS34J = 21;
  miTransverseMercatorDenmarkS34S = 22;
  miTransverseMercatorDenmarkS45B = 23;
  miTransverseMercatorFinland = 24;
  miSwissObliqueMercator = 25;
  miMercatorStdParallel = 26;
  miPolyconic = 27;
  miAzimuthalEquidistantOblique = 28;
  miLambertAzimuthalEqualAreaOblique = 29;
  miCassiniSoldner = 30;
  miDblStereographic = 31;

{ MapUnitConstants }

  miUnitMile = 0;
  miUnitKilometer = 1;
  miUnitInch = 2;
  miUnitFoot = 3;
  miUnitYard = 4;
  miUnitMillimeter = 5;
  miUnitCentimeter = 6;
  miUnitMeter = 7;
  miUnitSurveyFoot = 8;
  miUnitNauticalMile = 9;
  miUnitTwip = 10;
  miUnitPoint = 11;
  miUnitPica = 12;
  miUnitDegree = 13;
  miUnitLink = 30;
  miUnitChain = 31;
  miUnitRod = 32;

{ LineTypeConstants }

  miLineTypeNone = 0;
  miLineTypeSimple = 1;
  miLineTypeArrow = 2;

{ LabelAlongConstants }

  miLabelAlongNone = 0;
  miLabelAlongParallel = 1;
  miLabelAlongMultiSegment = 2;

{ FeatureTypeConstants }

  miFeatureTypeRegion = 0;
  miFeatureTypeLine = 1;
  miFeatureTypeSymbol = 2;
  miFeatureTypeMixed = 3;
  miFeatureTypeUnknown = 4;
  miFeatureTypeText = 5;
  miFeatureTypeNull = 6;
  miFeatureTypeMultipoint = 7;
  miFeatureTypeCollection = 8;

{ SelectionTypeConstants }

  miSelectionNew = 0;
  miSelectionAppend = 1;
  miSelectionRemove = 2;

{ LayerTypeConstants }

  miLayerTypeNormal = 0;
  miLayerTypeRaster = 2;
  miLayerTypeSeamless = 4;
  miLayerTypeUnknown = 5;
  miLayerTypeUserDraw = 6;
  miLayerTypeDrilldown = 7;

{ FieldTypeConstants }

  miTypeString = 0;
  miTypeNumeric = 1;
  miTypeDate = 2;
  miTypeInteger = 3;
  miTypeSmallInt = 4;
  miTypeFloat = 5;
  miTypeLogical = 6;

{ AggregationFunctionConstants }

  miAggregationSum = 0;
  miAggregationAverage = 1;
  miAggregationCount = 2;
  miAggregationIndividual = 4;
  miAggregationAuto = 5;

{ ThemeTypeConstants }

  miThemeRanged = 0;
  miThemeBarChart = 1;
  miThemePieChart = 2;
  miThemeGradSymbol = 3;
  miThemeDotDensity = 4;
  miThemeIndividualValue = 5;
  miThemeAuto = 6;
  miThemeLabelRanged = 7;
  miThemeLabelIndividualValue = 8;
  miThemeNone = 9;

{ DistribMethodConstants }

  miCustomRanges = 0;
  miEqualCountPerRange = 1;
  miEqualRangeSize = 2;
  miNaturalBreak = 3;
  miStandardDeviation = 4;

{ SpreadByConstants }

  miSpreadByNone = 0;
  miSpreadByColor = 1;
  miSpreadBySize = 2;

{ GraduationConstants }

  miGraduateBySquareRoot = 0;
  miGraduateByConstant = 1;
  miGraduateByLogarithm = 2;

{ ApplyAttributeConstants }

  miApplyAttributeAll = 0;
  miApplyAttributeColor = 1;
  miApplyAttributeSize = 2;

{ ColorSpreadingMethodConstants }

  miColorMethodRGB = 0;
  miColorMethodHSV = 1;

{ DatasetTypeConstants }

  miDataSetDAO = 1;
  miDataSetODBC = 2;
  miDataSetUnbound = 3;
  miDataSetGlobalHandle = 4;
  miDataSetOLEData = 5;
  miDataSetLayer = 6;
  miDataSetNotesView = 7;
  miDataSetNotesQuery = 8;
  miDataSetSafeArray = 9;
  miDataSetDelphi = 1010;
  miDataSetDelphi4 = 1011;
  miDataSetDelphi5 = 1012;
  miDataSetDelphi6 = 1013;
  miDataSetADO = 12;
  miDataSetRDO = 13;
  miDatasetXML = 14;
  miDataSetOCI = 15;

{ SearchTypeConstants }

  miSearchTypeCentroidWithin = 0;
  miSearchTypePartiallyWithin = 1;
  miSearchTypeEntirelyWithin = 2;

{ LayerBeginAccessConstants }

  miAccessRead = 0;
  miAccessReadWrite = 1;

{ LayerPackConstant }

  miPackGraphics = 1;
  miRebuildGraphics = 2;
  miPackIndex = 4;
  miRebuildIndex = 8;
  miPackData = 16;
  miPackCompactDB = 32;
  miPackAll = 21;

{ CircleTypeConstants }

  miCircleTypeScreen = 0;
  miCircleTypeMap = 1;

{ LayerInfoTypeConstants }

  miLayerInfoTypeTab = 0;
  miLayerInfoTypeUserDraw = 1;
  miLayerInfoTypeRaster = 2;
  miLayerInfoTypeShape = 3;
  miLayerInfoTypeServer = 4;
  miLayerInfoTypeGeodictUserName = 5;
  miLayerInfoTypeTemp = 6;
  miLayerInfoTypeNewTable = 7;

{ ToolConstants }

  miArrowTool = 1000;
  miPanTool = 1001;
  miCenterTool = 1002;
  miZoomInTool = 1003;
  miZoomOutTool = 1004;
  miSymbolTool = 1005;
  miTextTool = 1006;
  miSelectTool = 1007;
  miRadiusSelectTool = 1008;
  miRectSelectTool = 1009;
  miPolygonSelectTool = 1010;
  miLabelTool = 1011;
  miAddLineTool = 1012;
  miAddPolylineTool = 1013;
  miAddRegionTool = 1014;
  miAddPointTool = 1015;

{ CursorConstants }

  miDefaultCursor = 0;
  miArrowCursor = 1;
  miCrossCursor = 2;
  miIBeamCursor = 3;
  miIconCursor = 4;
  miSizeCursor = 5;
  miSizeNESWCursor = 6;
  miSizeNSCursor = 7;
  miSizeNWSECursor = 8;
  miSizeEWCursor = 9;
  miUpArrowCursor = 10;
  miHourglassCursor = 11;
  miNoDropCursor = 12;
  miArrowHourglassCursor = 13;
  miArrowQuestionCursor = 14;
  miSizeAllCursor = 15;
  miArrowToolCursor = 16;
  miPanCursor = 17;
  miCenterCursor = 18;
  miZoomInCursor = 19;
  miZoomOutCursor = 20;
  miSymbolCursor = 21;
  miTextCursor = 22;
  miSelectCursor = 23;
  miRadiusSelectCursor = 24;
  miRectSelectCursor = 25;
  miRegionSelectCursor = 26;
  miInfoCursor = 27;
  miSelectPlusCursor = 28;
  miSelectRadiusPlusCursor = 29;
  miSelectRectPlusCursor = 30;
  miSelectRegionPlusCursor = 31;
  miSelectMinusCursor = 32;
  miSelectRadiusMinusCursor = 33;
  miSelectRectMinusCursor = 34;
  miSelectRegionMinusCursor = 35;
  miLabelCursor = 36;
  miDrilldownExpandCursor = 37;
  miDrilldownContractCursor = 38;
  miInfoCursorOld = 39;
  miCustomCursor = 40;

{ PaperUnitConstants }

  miPaperUnitMile = 0;
  miPaperUnitKilometer = 1;
  miPaperUnitInch = 2;
  miPaperUnitFoot = 3;
  miPaperUnitYard = 4;
  miPaperUnitMillimeter = 5;
  miPaperUnitCentimeter = 6;
  miPaperUnitMeter = 7;
  miPaperUnitSurveyFoot = 8;
  miPaperUnitNauticalMile = 9;
  miPaperUnitTwip = 10;
  miPaperUnitPoint = 11;
  miPaperUnitPica = 12;
  miPaperUnitDegree = 13;
  miPaperUnitLink = 30;
  miPaperUnitChain = 31;
  miPaperUnitRod = 32;

{ ConversionConstants }

  miMapToScreen = 0;
  miScreenToMap = 1;

{ DotSizeConstants }

  miDotSizeSmall = 0;
  miDotSizeLarge = 1;

{ ToolTypeConstants }

  miToolTypePoint = 0;
  miToolTypeLine = 1;
  miToolTypeCircle = 2;
  miToolTypeMarquee = 3;
  miToolTypePoly = 4;
  miToolTypePolygon = 5;

{ PolyToolFlagConstants }

  miPolyToolBegin = 0;
  miPolyToolEnd = 1;
  miPolyToolEndEscaped = 2;
  miPolyToolInProgress = 3;

{ AnnotationChangedTypeConstants }

  miAddAnnotation = 0;
  miDeleteAnnotation = 1;
  miSelectAnnotation = 2;
  miEditAnnotation = 3;

{ ResolveDataBindConstants }

  miChooseField = 0;
  miChooseLayer = 1;
  miChooseGeoSet = 2;

{ BindLayerTypeConstants }

  miBindLayerTypeNormal = 0;
  miBindLayerTypeXY = 1;
  miBindLayerTypePointRef = 2;

{ AreaUnitConstants }

  miUnitSquareMile = 14;
  miUnitSquareKilometer = 15;
  miUnitSquareInch = 16;
  miUnitSquareFoot = 17;
  miUnitSquareYard = 18;
  miUnitSquareMillimeter = 19;
  miUnitSquareCentimeter = 20;
  miUnitSquareMeter = 21;
  miUnitSquareSurveyFoot = 22;
  miUnitSquareNauticalMile = 23;
  miUnitSquareTwip = 24;
  miUnitSquarePoint = 25;
  miUnitSquarePica = 26;
  miUnitSquareDegree = 27;
  miUnitAcre = 28;
  miUnitHectare = 29;
  miUnitSquareLink = 33;
  miUnitSquareChain = 34;
  miUnitSquareRod = 35;
  miUnitPerch = 36;
  miUnitRood = 37;

{ ColorConstants }

  miColorBlack = 0;
  miColorRed = 255;
  miColorGreen = 65280;
  miColorBlue = 16711680;
  miColorMagenta = 16711935;
  miColorCyan = 16776960;
  miColorWhite = 16777215;
  miColorLightGray = 12632256;
  miColorDarkGray = 4210752;
  miColorGray = 8421504;
  miColorPaleYellow = 13697023;
  miColorLightYellow = 8454143;
  miColorYellow = 65535;
  miColorLimeGreen = 12639424;
  miColorTeal = 8421440;
  miColorDarkGreen = 16384;
  miColorMaroon = 128;
  miColorPurple = 8388736;
  miColorOrange = 33023;
  miColorKhaki = 7051175;
  miColorOlive = 32896;
  miColorBrown = 4210816;
  miColorNavy = 8404992;
  miColorScrollBars = $80000000;
  miColorDesktop = -2147483647;
  miColorActiveTitleBar = -2147483646;
  miColorInactiveTitleBar = -2147483645;
  miColorMenuBar = -2147483644;
  miColorWindowBackground = -2147483643;
  miColorWindowFrame = -2147483642;
  miColorMenuText = -2147483641;
  miColorWindowText = -2147483640;
  miColorTitleBarText = -2147483639;
  miColorActiveBorder = -2147483638;
  miColorInactiveBorder = -2147483637;
  miColorApplicationWorkspace = -2147483636;
  miColorHighlight = -2147483635;
  miColorHighlightText = -2147483634;
  miColorButtonFace = -2147483633;
  miColorButtonShadow = -2147483632;
  miColorGrayText = -2147483631;
  miColorButtonText = -2147483630;
  miColorInactiveCaptionText = -2147483629;
  miColor3DHighlight = -2147483628;
  miColor3DDarkShadow = -2147483627;
  miColor3DLight = -2147483626;
  miColorInfoText = -2147483625;
  miColorInfoBackground = -2147483624;

{ IntersectionTestConstants }

  miIntersectCentroidWithinFeature = 0;
  miIntersectFeature = 1;
  miIntersectEntirelyWithinFeature = 2;

{ IntersectionPointConstants }

  miIntersectCrossings = 9;
  miIntersectCommon = 10;
  miIntersectAll = 11;

{ MousewheelSupportConstants }

  miNoMousewheelSupport = 1;
  miMousewheelNoAutoScroll = 2;
  miFullMousewheelSupport = 3;

{ LayerSrvLayerOptions }

  miLayerCacheOn = 0;
  miLayerMBRSearchOn = 0;
  miLayerCacheOff = 1;
  miLayerMBRSearchOff = 2;

{ LayerEndAccessConstants }

  miAccessEnd = 0;

{ MapDrawConstants }

  miDrawBegin = 1;
  miDrawEnd = 2;

{ ToolFlagConstants }

  miToolBegin = 0;
  miToolEnd = 1;
  miToolEndEscaped = 2;
  miToolInProgress = 3;
  miToolCompleted = 4;

{ FeatureEditModeConstants }

  miEditModeFeature = 1;
  miEditModeNode = 2;
  miMoveDuplicateNodes = 4;
  miDeleteDuplicateNodes = 8;
  miEditModeAddNode = 64;

{ SearchResultTypeConstants }

  miSearchResultDefault = 0;
  miSearchResultTopmost = 1;
  miSearchResultRegion = 2;
  miSearchResultSymbol = 4;
  miSearchResultLine = 8;
  miSearchResultText = 16;
  miSearchResultMultipoint = 32;
  miSearchResultCollection = 64;
  miSearchResultAll = 65534;

{ LabelChangedTypeConstants }

  miLabelMove = 0;
  miLabelAdd = 1;
  miLabelSelectionChange = 2;

const

{ Component class GUIDs }
  Class_DataSets: TGUID = '{77306D4F-5C82-11CF-8795-00AA00B7EF73}';
  Class_Map: TGUID = '{B06B11B1-EBEC-4972-B786-369EB41C18B2}';
  Class_Layers: TGUID = '{77306D43-5C82-11CF-8795-00AA00B7EF73}';
  Class_LayerInfo: TGUID = '{40E661C9-0975-4060-94B4-B870BB9DBCAA}';
  Class_Layer: TGUID = '{77306D49-5C82-11CF-8795-00AA00B7EF73}';
  Class_Field: TGUID = '{77306D4D-5C82-11CF-8795-00AA00B7EF73}';
  Class_Dataset: TGUID = '{77306D52-5C82-11CF-8795-00AA00B7EF73}';
  Class_Themes: TGUID = '{77306D55-5C82-11CF-8795-00AA00B7EF73}';
  Class_Theme: TGUID = '{77306D57-5C82-11CF-8795-00AA00B7EF73}';
  Class_Legend: TGUID = '{77306D5D-5C82-11CF-8795-00AA00B7EF73}';
  Class_Collection: TGUID = '{3AAB5862-6166-11CF-8795-00AA00B7EF73}';
  Class_Annotations: TGUID = '{7A35D062-6AAC-11CF-96AE-00AA00A4760F}';
  Class_ThemeProperties: TGUID = '{44DB7B48-B2F5-11CF-9BEE-00AA00A478CB}';
  Class_Selection: TGUID = '{B0929661-BA3A-11CF-9019-00AA00A53B3C}';
  Class_Feature: TGUID = '{7278781B-1C44-40BD-9CBA-488047138933}';
  Class_RangeCategory: TGUID = '{97F45D07-BF8A-11CF-9BEE-00AA00A478CB}';
  Class_Fields: TGUID = '{6FD7917A-0B74-4963-8267-52249CF53842}';
  Class_Style: TGUID = '{A2C029E1-C867-4175-AC0C-233F7B65894A}';
  Class_IndividualValueCategory: TGUID = '{985148C4-C84B-11CF-9BEE-00AA00A478CB}';
  Class_MultiVarCategory: TGUID = '{6DDA5661-C853-11CF-9BEE-00AA00A478CB}';
  Class_SourceRows: TGUID = '{46FF43C1-C9ED-11CF-8796-00AA00B7EF73}';
  Class_SourceRow: TGUID = '{46FF43C3-C9ED-11CF-8796-00AA00B7EF73}';
  Class_Annotation: TGUID = '{1C66DB82-D40D-11CF-9BEE-00AA00A478CB}';
  Class_Graphic: TGUID = '{4B6690A1-D4D1-11CF-9BEE-00AA00A478CB}';
  Class_LegendText: TGUID = '{4EC9B521-DFCF-11CF-9BEE-00AA00A478CB}';
  Class_LegendTexts: TGUID = '{4EC9B529-DFCF-11CF-9BEE-00AA00A478CB}';
  Class_Title: TGUID = '{B2504161-E149-11CF-9BEE-00AA00A478CB}';
  Class_LabelProperties: TGUID = '{61E82A61-FB59-11CF-9019-00AA00A53B3C}';
  Class_BindLayer: TGUID = '{FCFA3007-F7B3-4A0D-AB46-A7E7CE221EA7}';
  Class_RangeCategories: TGUID = '{ECC81861-038E-11D1-9DC6-00AA00A478CB}';
  Class_IndividualValueCategories: TGUID = '{ECC81863-038E-11D1-9DC6-00AA00A478CB}';
  Class_MultivarCategories: TGUID = '{ECC81865-038E-11D1-9DC6-00AA00A478CB}';
  Class_BitmapSymbols: TGUID = '{795145F6-5D7A-4C0E-AAA4-14539E170074}';
  Class_Rectangle: TGUID = '{176C3527-CFE1-47B8-BA22-15E7A6EB1C86}';
  Class_BoundsConstraint: TGUID = '{65206DBA-1A3D-4B6B-8A7C-610082024866}';
  Class_FeaturesConstraint: TGUID = '{47BEE832-3898-408A-92F2-791373C8C4A6}';
  Class_AllFeaturesConstraint: TGUID = '{A9A394A0-F335-47C8-9877-C984224B4740}';
  Class_Find: TGUID = '{436052C1-43E3-11D0-83EB-00AA00BD34FC}';
  Class_FindFeature: TGUID = '{436052C3-43E3-11D0-83EB-00AA00BD34FC}';
  Class_FindResult: TGUID = '{A4274C83-7E2E-11D2-8CE0-00207812C7EB}';
  Class_FindMatch: TGUID = '{CF466D06-7FAB-11D2-8CE0-00207812C7EB}';
  Class_FindMatches: TGUID = '{CF466D03-7FAB-11D2-8CE0-00207812C7EB}';
  Class_Parts: TGUID = '{3769CE9E-A19C-442F-B004-329B78FAEA81}';
  Class_Points: TGUID = '{AEE36CF9-09DC-40C7-8A35-E133C78E4318}';
  Class_Point: TGUID = '{02539DF4-39DB-4CBA-AD4F-5CE17D26DBC5}';
  Class_Geosets: TGUID = '{984C9421-93BA-11D0-B374-444553540000}';
  Class_GeoSet: TGUID = '{DC09D462-9575-11D0-83F7-00AA00BD34FC}';
  Class_Features: TGUID = '{090703E1-9563-11D0-8796-00AA00B7EF73}';
  Class_Datum: TGUID = '{5B5DA017-87E0-4E5F-BC9F-89F2BEFFC86F}';
  Class_AffineTransform: TGUID = '{3BA114C2-47AB-4101-913E-0F7324DA86BB}';
  Class_CoordSys: TGUID = '{FAAF04D9-B22A-4694-908A-7BC2685AF140}';
  Class_BitmapSymbol: TGUID = '{1FF38E52-F159-11D0-9DB4-00AA00A478CB}';
  Class_FeatureFactory: TGUID = '{BBE482A3-037F-11D1-8796-00AA00B7EF73}';
  Class_ResolveObjects: TGUID = '{92880602-CD2F-11D1-A34B-00207812EFE7}';
  Class_ResolveObject: TGUID = '{92880605-CD2F-11D1-A34B-00207812EFE7}';
  Class_RowValues: TGUID = '{6C67BA6D-8175-49E1-AD47-380088D0ABE5}';
  Class_RowValue: TGUID = '{9097D850-168A-4218-83F0-E05F7DED8DB7}';
  Class_Variables: TGUID = '{3D928FE1-1D1B-449E-B134-DA5FECB6DB96}';
  Class_Variable: TGUID = '{9A5D5586-EFB8-11D3-9C33-0050049DA682}';
  Class_Labels: TGUID = '{5246D2CB-5F52-436B-95B2-9E00D25A646A}';
  Class_Label_: TGUID = '{100042C3-C923-4A59-93E6-D0FC2B6F891E}';

type

{ Forward declarations: Interfaces }
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

{ Forward declarations: CoClasses }
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

{ Forward declarations: Enums }
  AnnotationTypeConstants = TOleEnum;
  PositionConstants = TOleEnum;
  PenStyleConstants = TOleEnum;
  FillPatternConstants = TOleEnum;
  SymbolTypeConstants = TOleEnum;
  StyleUnitConstants = TOleEnum;
  ExportFormatConstants = TOleEnum;
  CoordSysTypeConstants = TOleEnum;
  MapUnitConstants = TOleEnum;
  LineTypeConstants = TOleEnum;
  LabelAlongConstants = TOleEnum;
  FeatureTypeConstants = TOleEnum;
  SelectionTypeConstants = TOleEnum;
  LayerTypeConstants = TOleEnum;
  FieldTypeConstants = TOleEnum;
  AggregationFunctionConstants = TOleEnum;
  ThemeTypeConstants = TOleEnum;
  DistribMethodConstants = TOleEnum;
  SpreadByConstants = TOleEnum;
  GraduationConstants = TOleEnum;
  ApplyAttributeConstants = TOleEnum;
  ColorSpreadingMethodConstants = TOleEnum;
  DatasetTypeConstants = TOleEnum;
  SearchTypeConstants = TOleEnum;
  LayerBeginAccessConstants = TOleEnum;
  LayerPackConstant = TOleEnum;
  CircleTypeConstants = TOleEnum;
  LayerInfoTypeConstants = TOleEnum;
  ToolConstants = TOleEnum;
  CursorConstants = TOleEnum;
  PaperUnitConstants = TOleEnum;
  ConversionConstants = TOleEnum;
  DotSizeConstants = TOleEnum;
  ToolTypeConstants = TOleEnum;
  PolyToolFlagConstants = TOleEnum;
  AnnotationChangedTypeConstants = TOleEnum;
  ResolveDataBindConstants = TOleEnum;
  BindLayerTypeConstants = TOleEnum;
  AreaUnitConstants = TOleEnum;
  ColorConstants = TOleEnum;
  IntersectionTestConstants = TOleEnum;
  IntersectionPointConstants = TOleEnum;
  MousewheelSupportConstants = TOleEnum;
  LayerSrvLayerOptions = TOleEnum;
  LayerEndAccessConstants = TOleEnum;
  MapDrawConstants = TOleEnum;
  ToolFlagConstants = TOleEnum;
  FeatureEditModeConstants = TOleEnum;
  SearchResultTypeConstants = TOleEnum;
  LabelChangedTypeConstants = TOleEnum;

  CMapXAllFeaturesConstraint = dispinterface
    ['{806FA9D7-C5D9-43E9-B381-69E30C991E84}']
    property Enabled: WordBool readonly dispid 1;
    procedure Enable; dispid 2;
    procedure Disable; dispid 3;
  end;

  CMapXAnnotation = dispinterface
    ['{1C66DB81-D40D-11CF-9BEE-00AA00A478CB}']
    property Type_: AnnotationTypeConstants readonly dispid 1;
    property Graphic: CMapXText readonly dispid 2;
  end;

  CMapXText = dispinterface
    ['{4B6690A0-D4D1-11CF-9BEE-00AA00A478CB}']
    property Caption: WideString dispid 1;
    property X: Double dispid 2;
    property Y: Double dispid 3;
    property Position: PositionConstants dispid 4;
    property Style: CMapXStyle dispid 5;
  end;

  CMapXStyle = dispinterface
    ['{1C1EE340-C439-11CF-9BEE-00AA00A478CB}']
    property SymbolCharacter: Smallint dispid 1;
    property LineColor: TColor dispid 2;
    property LineStyle: PenStyleConstants dispid 3;
    property LineWidth: Smallint dispid 4;
    property RegionColor: TColor dispid 5;
    property RegionPattern: FillPatternConstants dispid 6;
    property RegionBackColor: TColor dispid 7;
    property RegionBorderStyle: PenStyleConstants dispid 8;
    property RegionBorderColor: TColor dispid 9;
    property RegionBorderWidth: Smallint dispid 10;
    property TextFont: IFontDisp readonly dispid 11;
    property SymbolFont: IFontDisp readonly dispid 12;
    property TextFontColor: TColor dispid 13;
    property TextFontBackColor: TColor dispid 14;
    property SymbolFontColor: TColor dispid 15;
    property SymbolFontBackColor: TColor dispid 16;
    property SymbolFontOpaque: WordBool dispid 17;
    property TextFontOpaque: WordBool dispid 18;
    property SymbolFontHalo: WordBool dispid 19;
    property SymbolFontShadow: WordBool dispid 20;
    property TextFontHalo: WordBool dispid 21;
    property TextFontShadow: WordBool dispid 22;
    property TextFontAllCaps: WordBool dispid 23;
    property TextFontDblSpace: WordBool dispid 24;
    property SymbolBitmapTransparent: WordBool dispid 33;
    property SymbolBitmapOverrideColor: WordBool dispid 34;
    property SymbolBitmapColor: TColor dispid 35;
    property SymbolBitmapName: WideString dispid 36;
    property SymbolType: SymbolTypeConstants dispid 37;
    property SymbolBitmapSize: Integer dispid 38;
    property SupportsBitmapSymbols: WordBool readonly dispid 39;
    property SymbolFontRotation: Smallint dispid 40;
    property LineStyleCount: Integer readonly dispid 42;
    property RegionTransparent: WordBool dispid 43;
    property LineInterleaved: WordBool dispid 44;
    property LineWidthUnit: StyleUnitConstants dispid 45;
    property RegionBorderWidthUnit: StyleUnitConstants dispid 46;
    property LineSupportsInterleave: WordBool readonly dispid 47;
    property TextFontRotation: Smallint dispid 48;
    property SymbolVectorColor: TColor dispid 53;
    property SymbolVectorSize: Smallint dispid 54;
    property MinVectorSymbolCharacter: Smallint readonly dispid 55;
    property MaxVectorSymbolCharacter: Smallint readonly dispid 56;
    function PickRegion: WordBool; dispid 25;
    function PickLine: WordBool; dispid 26;
    function PickText: WordBool; dispid 27;
    function PickSymbol: WordBool; dispid 28;
    procedure DrawTextSample(hDC: OLE_HANDLE; Rectangle: IDispatch; const SampleText: WideString); dispid 29;
    procedure DrawSymbolSample(hDC: OLE_HANDLE; Rectangle: IDispatch); dispid 30;
    procedure DrawRegionSample(hDC: OLE_HANDLE; Rectangle: IDispatch); dispid 31;
    procedure DrawLineSample(hDC: OLE_HANDLE; Rectangle: IDispatch); dispid 32;
    function Clone: CMapXStyle; dispid 41;
    procedure ExportSymbolSample(const Destination: WideString; Format: ExportFormatConstants; Width, Height: Double; BackgroundColor: OleVariant); dispid 49;
    procedure ExportRegionSample(const Destination: WideString; Format: ExportFormatConstants; Width, Height: Double; BackgroundColor: OleVariant); dispid 50;
    procedure ExportLineSample(const Destination: WideString; Format: ExportFormatConstants; Width, Height: Double; BackgroundColor: OleVariant); dispid 51;
    procedure ExportTextSample(const Destination: WideString; Format: ExportFormatConstants; Width, Height: Double; const SampleText: WideString; BackgroundColor: OleVariant); dispid 52;
  end;

  CMapXAnnotations = dispinterface
    ['{7A35D061-6AAC-11CF-96AE-00AA00A4760F}']
    property Editable: WordBool dispid 1;
    property Count: Integer readonly dispid 2;
    function AddSymbol(X, Y: Double): CMapXAnnotation; dispid 3;
    function _Item(Index: OleVariant): CMapXAnnotation; dispid 4;
    procedure Remove(Index: OleVariant); dispid 5;
    function AddText(const Text: WideString; X, Y: Double; Position: OleVariant): CMapXAnnotation; dispid 6;
    procedure RemoveAll; dispid 7;
    function ActiveAnnotation: CMapXAnnotation; dispid 8;
    property Item[Index: OleVariant]: CMapXAnnotation readonly dispid 0; default;
  end;

  CMapXBitmapSymbol = dispinterface
    ['{1FF38E51-F159-11D0-9DB4-00AA00A478CB}']
    property Name: WideString readonly dispid 1;
    property _Name: WideString dispid 0;
  end;

  CMapXBoundsConstraint = dispinterface
    ['{4ABEC4CB-DFD0-444F-9472-B5192D6F4526}']
    property Enabled: WordBool readonly dispid 1;
    property Bounds: CMapXRectangle dispid 2;
    procedure Enable; dispid 3;
    procedure Disable; dispid 4;
  end;

  CMapXRectangle = dispinterface
    ['{4C952040-3331-11D0-8796-00AA00B7EF73}']
    property XMin: Double readonly dispid 1;
    property YMin: Double readonly dispid 2;
    property XMax: Double readonly dispid 3;
    property YMax: Double readonly dispid 4;
    property Height: Double readonly dispid 5;
    property Width: Double readonly dispid 6;
    procedure Set_(X1, Y1, X2, Y2: Double); dispid 7;
    procedure Offset(deltaX, deltaY: Double); dispid 8;
  end;

  CMapXCoordSys = dispinterface
    ['{49EB5382-BFFB-11D0-934C-00AA004603B3}']
    property Type_: CoordSysTypeConstants readonly dispid 1;
    property Datum: CMapXDatum readonly dispid 2;
    property Units: MapUnitConstants readonly dispid 3;
    property Bounds: CMapXRectangle readonly dispid 4;
    property OriginLongitude: Double readonly dispid 5;
    property OriginLatitude: Double readonly dispid 6;
    property StandardParallelOne: Double readonly dispid 7;
    property StandardParallelTwo: Double readonly dispid 8;
    property Azimuth: Double readonly dispid 9;
    property ScaleFactor: Double readonly dispid 10;
    property FalseEasting: Double readonly dispid 11;
    property FalseNorthing: Double readonly dispid 12;
    property Range: Double readonly dispid 13;
    property AffineTransform: CMapXAffineTransform readonly dispid 14;
    procedure Set_(Type_: CoordSysTypeConstants; Datum, Units, OriginLongitude, OriginLatitude, StandardParallelOne, StandardParallelTwo, Azimuth, ScaleFactor, FalseEasting, FalseNorthing, Range, Bounds, AffineTransform: OleVariant); dispid 15;
    function PickCoordSys(HelpFile, HelpID: OleVariant): WordBool; dispid 16;
    function Clone: CMapXCoordSys; dispid 17;
  end;

  CMapXDatum = dispinterface
    ['{49EB5384-BFFB-11D0-934C-00AA004603B3}']
    property Ellipsoid: Smallint readonly dispid 1;
    property ShiftX: Double readonly dispid 2;
    property ShiftY: Double readonly dispid 3;
    property ShiftZ: Double readonly dispid 4;
    property RotateX: Double readonly dispid 5;
    property RotateY: Double readonly dispid 6;
    property RotateZ: Double readonly dispid 7;
    property ScaleAdjust: Double readonly dispid 8;
    property PrimeMeridian: Double readonly dispid 9;
    property SemiMajorAxis: Double readonly dispid 10;
    property SemiMinorAxis: Double readonly dispid 11;
    property Flattening: Double readonly dispid 12;
    property Eccentricity: Double readonly dispid 13;
    procedure Set_(Ellipsoid: Smallint; ShiftX, ShiftY, ShiftZ, RotateX, RotateY, RotateZ, ScaleAdjust, PrimeMeridian: Double); dispid 14;
    procedure SetFromList(DatumNum: Smallint); dispid 15;
  end;

  CMapXAffineTransform = dispinterface
    ['{DE279C62-DCDF-11D0-934C-00AA004603B3}']
    property Units: MapUnitConstants readonly dispid 1;
    property A: Double readonly dispid 2;
    property B: Double readonly dispid 3;
    property C: Double readonly dispid 4;
    property D: Double readonly dispid 5;
    property E: Double readonly dispid 6;
    property F: Double readonly dispid 7;
    procedure Set_(Units: MapUnitConstants; A, B, C, D, E, F: Double); dispid 8;
  end;

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

  CMapXLayer = dispinterface
    ['{77306D48-5C82-11CF-8795-00AA00B7EF73}']
    property Name: WideString dispid 1;
    property Visible: WordBool dispid 2;
    property Selectable: WordBool dispid 3;
    property _Name: WideString dispid 0;
    property FileSpec: WideString readonly dispid 4;
    property LabelProperties: CMapXLabelProperties readonly dispid 5;
    property AutoLabel: WordBool dispid 6;
    property ZoomLayer: WordBool dispid 7;
    property OverrideStyle: WordBool dispid 8;
    property Style: CMapXStyle dispid 9;
    property ZoomMin: Double dispid 10;
    property ZoomMax: Double dispid 11;
    property Selection: CMapXSelection readonly dispid 12;
    property PredominantFeatureType: FeatureTypeConstants readonly dispid 13;
    property Find: CMapXLayerFind readonly dispid 14;
    property Type_: LayerTypeConstants readonly dispid 15;
    property KeyField: WideString dispid 16;
    property CoordSys: CMapXCoordSys readonly dispid 17;
    property Bounds: CMapXRectangle readonly dispid 32;
    property DrawLabelsAfter: WordBool dispid 37;
    property DataSets: CMapXDatasets readonly dispid 39;
    property ShowNodes: WordBool dispid 43;
    property ShowCentroids: WordBool dispid 44;
    property ShowLineDirection: WordBool dispid 45;
    property Editable: WordBool dispid 46;
    property ClippedBounds: CMapXRectangle readonly dispid 49;
    property Labels: CMapXLabels readonly dispid 55;
    procedure LabelAtPoint(X, Y: Double); dispid 18;
    procedure ClearCustomLabels; dispid 19;
    procedure UpdateFeature(Target, Source, RowValues: OleVariant); dispid 20;
    function AddFeature(SourceFeature: IDispatch; RowValues: OleVariant): CMapXFeature; dispid 21;
    procedure DeleteFeature(Target: OleVariant); dispid 22;
    procedure Invalidate(InvalidRect: OleVariant); dispid 23;
    function SearchWithinDistance(Source: IDispatch; Distance: Double; Units: MapUnitConstants; SearchType: SearchTypeConstants): CMapXFeatures; dispid 24;
    function SearchWithinRectangle(Rectangle: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures; dispid 25;
    property AllFeatures: CMapXFeatures readonly dispid 26;
    property NoFeatures: CMapXFeatures readonly dispid 27;
    function SearchWithinFeature(Feature: IDispatch; SearchType: SearchTypeConstants): CMapXFeatures; dispid 28;
    function SearchAtPoint(Point: IDispatch; SearchResultFlags: OleVariant): CMapXFeatures; dispid 29;
    procedure DrillDownRemoveFeatures(const Level: WideString; FeatureKeys: OleVariant); dispid 30;
    procedure DrillDownAddFeatures(const Level: WideString; FeatureKeys: OleVariant); dispid 31;
    function GetDrilldownFeaturesByID(const strLevel: WideString; FeatureID: OleVariant): CMapXFeatures; dispid 33;
    procedure DrilldownReset(const strLevel: WideString); dispid 34;
    function GetFeatureByID(FeatureID: Integer): CMapXFeature; dispid 35;
    procedure Refresh; dispid 36;
    function FeatureIDFromFeatureName(const strKeyValue: WideString): Integer; dispid 38;
    function Search(const strWhere: WideString; Variables: OleVariant): CMapXFeatures; dispid 40;
    procedure BeginAccess(BeginAccessType: LayerBeginAccessConstants); dispid 41;
    procedure EndAccess(EndAccessType: OleVariant); dispid 42;
    function GetFeatureByKey(const FeatureKey: WideString): CMapXFeature; dispid 47;
    function FeatureKeyFromFeatureName(const strKeyValue: WideString): WideString; dispid 48;
    function CreateBoundsConstraint: CMapXBoundsConstraint; dispid 50;
    function CreateFeaturesConstraint: CMapXFeaturesConstraint; dispid 51;
    function CreateAllFeaturesConstraint: CMapXAllFeaturesConstraint; dispid 52;
    function SupportsPack(PackType: LayerPackConstant): WordBool; dispid 53;
    procedure Pack(PackType: LayerPackConstant); dispid 54;
  end;

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

  CMapXSelection = dispinterface
    ['{B0929660-BA3A-11CF-9019-00AA00A53B3C}']
    property Count: Integer readonly dispid 65537;
    property Bounds: CMapXRectangle readonly dispid 65544;
    function _Item(Index: OleVariant): CMapXFeature; dispid 65538;
    function Clone: CMapXFeatures; dispid 65539;
    procedure Add(Source: IDispatch); dispid 65540;
    procedure Common(Source: IDispatch); dispid 65541;
    procedure Remove(Source: OleVariant); dispid 65542;
    procedure Replace(Source: IDispatch); dispid 65543;
    procedure AddByID(FeatureID: OleVariant); dispid 65545;
    procedure RemoveByID(FeatureID: OleVariant); dispid 65546;
    property Item[Index: OleVariant]: CMapXFeature readonly dispid 0; default;
    procedure SelectByRegion(Layer: IDispatch; FeatureID: OleVariant; SelectionFlag: SelectionTypeConstants); dispid 1;
    procedure ClearSelection; dispid 2;
    procedure SelectByPoint(X, Y: Double; SelectionFlag: SelectionTypeConstants; SearchResultFlags: OleVariant); dispid 3;
    procedure SelectByRadius(X, Y, radius: Double; SelectionFlag: SelectionTypeConstants); dispid 4;
    procedure SelectByRectangle(X1, Y1, X2, Y2: Double; SelectionFlag: SelectionTypeConstants); dispid 5;
    function SelectAll(SelectionFlag: SelectionTypeConstants): WordBool; dispid 6;
    procedure SelectByID(FeatureID: OleVariant; SelectionFlag: SelectionTypeConstants); dispid 7;
  end;

  CMapXFeature = dispinterface
    ['{B0929662-BA3A-11CF-9019-00AA00A53B3C}']
    property FeatureID: Integer readonly dispid 1;
    property Type_: FeatureTypeConstants dispid 2;
    property Length: Double readonly dispid 3;
    property CenterX: Double readonly dispid 4;
    property CenterY: Double readonly dispid 5;
    property Style: CMapXStyle dispid 6;
    property Bounds: CMapXRectangle readonly dispid 7;
    property Caption: WideString dispid 8;
    property Parts: CMapXParts readonly dispid 9;
    property Area: Double readonly dispid 10;
    property Layer: CMapXLayer readonly dispid 11;
    property Point: CMapXPoint dispid 12;
    property LabelPoint: CMapXPoint readonly dispid 13;
    property _FeatureID: Integer readonly dispid 0;
    property Perimeter: Double readonly dispid 14;
    property Smooth: WordBool dispid 15;
    property Name: WideString readonly dispid 16;
    property KeyValue: WideString dispid 17;
    property FeatureKey: WideString readonly dispid 23;
    property Region: IDispatch dispid 24;
    property Polyline: IDispatch dispid 25;
    property Multipoint: IDispatch dispid 26;
    property HasRegion: WordBool readonly dispid 27;
    property HasPolyline: WordBool readonly dispid 28;
    property HasMultipoint: WordBool readonly dispid 29;
    procedure Update(UpdateFeature, RowValues: OleVariant); dispid 18;
    procedure Offset(deltaX, deltaY: Double); dispid 19;
    procedure Attach(Map: IDispatch); dispid 20;
    function Clone: CMapXFeature; dispid 21;
    property Nodes[CSys: OleVariant]: OleVariant dispid 22;
  end;

  CMapXParts = dispinterface
    ['{968303A0-8F18-11D0-8796-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXPoints; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    function Add(Points: IDispatch): CMapXPoints; dispid 4;
    procedure RemoveAll; dispid 5;
    property Item[Index: OleVariant]: CMapXPoints readonly dispid 0; default;
  end;

  CMapXPoints = dispinterface
    ['{968303A2-8F18-11D0-8796-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXPoint; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    function Add(Point: IDispatch; Position: OleVariant): CMapXPoint; dispid 4;
    function AddXY(X, Y: Double; Position: OleVariant): CMapXPoint; dispid 5;
    procedure RemoveAll; dispid 6;
    procedure GetXY(Index: Integer; var X, Y: Double); dispid 8;
    procedure GetXYV(Index: Integer; var X, Y: OleVariant); dispid 11;
    property Item[Index: OleVariant]: CMapXPoint readonly dispid 0; default;
    property X[Index: Integer]: Double readonly dispid 9;
    property Y[Index: Integer]: Double readonly dispid 10;
  end;

  CMapXPoint = dispinterface
    ['{968303A6-8F18-11D0-8796-00AA00B7EF73}']
    property X: Double readonly dispid 1;
    property Y: Double readonly dispid 2;
    procedure Set_(X, Y: Double); dispid 3;
    procedure Offset(deltaX, deltaY: Double); dispid 4;
  end;

  CMapXFeatures = dispinterface
    ['{090703E0-9563-11D0-8796-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    property Bounds: CMapXRectangle readonly dispid 8;
    function _Item(Index: OleVariant): CMapXFeature; dispid 2;
    function Clone: CMapXFeatures; dispid 3;
    procedure Add(Source: IDispatch); dispid 4;
    procedure Common(Source: IDispatch); dispid 5;
    procedure Remove(Source: OleVariant); dispid 6;
    procedure Replace(Source: IDispatch); dispid 7;
    procedure AddByID(FeatureID: OleVariant); dispid 9;
    procedure RemoveByID(FeatureID: OleVariant); dispid 10;
    property Item[Index: OleVariant]: CMapXFeature readonly dispid 0; default;
  end;

  CMapXLayerFind = dispinterface
    ['{436052C0-43E3-11D0-83EB-00AA00BD34FC}']
    property RefineLayer: IDispatch dispid 1;
    property Abbreviations: WordBool dispid 2;
    property ClosestAddr: WordBool dispid 3;
    property OtherBoundary: WordBool dispid 4;
    property FindField: IDispatch dispid 5;
    property RefineField: IDispatch dispid 6;
    property FindDataset: IDispatch dispid 7;
    property RefineDataset: IDispatch dispid 8;
    property CloseMatchMax: Integer dispid 10;
    function Search(const Address: WideString; RefineBoundary: OleVariant): CMapXFindFeature; dispid 9;
    function SearchEx(const Address: WideString; RefineBoundary: OleVariant): CMapXFindResult; dispid 11;
  end;

  CMapXFindFeature = dispinterface
    ['{436052C2-43E3-11D0-83EB-00AA00BD34FC}']
    property FeatureID: Integer readonly dispid 65537;
    property Type_: FeatureTypeConstants dispid 65538;
    property Length: Double readonly dispid 65539;
    property CenterX: Double readonly dispid 65540;
    property CenterY: Double readonly dispid 65541;
    property Style: CMapXStyle dispid 65542;
    property Bounds: CMapXRectangle readonly dispid 65543;
    property Caption: WideString dispid 65544;
    property Parts: CMapXParts readonly dispid 65545;
    property Area: Double readonly dispid 65546;
    property Layer: CMapXLayer readonly dispid 65547;
    property Point: CMapXPoint dispid 65548;
    property LabelPoint: CMapXPoint readonly dispid 65549;
    property _FeatureID: Integer readonly dispid 0;
    property Perimeter: Double readonly dispid 65550;
    property Smooth: WordBool dispid 65551;
    property Name: WideString readonly dispid 65552;
    property KeyValue: WideString dispid 65553;
    property FeatureKey: WideString readonly dispid 65559;
    property Region: IDispatch dispid 65560;
    property Polyline: IDispatch dispid 65561;
    property Multipoint: IDispatch dispid 65562;
    property HasRegion: WordBool readonly dispid 65563;
    property HasPolyline: WordBool readonly dispid 65564;
    property HasMultipoint: WordBool readonly dispid 65565;
    property FindRC: Smallint readonly dispid 1;
    procedure Update(UpdateFeature, RowValues: OleVariant); dispid 65554;
    procedure Offset(deltaX, deltaY: Double); dispid 65555;
    procedure Attach(Map: IDispatch); dispid 65556;
    function Clone: CMapXFeature; dispid 65557;
    property Nodes[CSys: OleVariant]: OleVariant dispid 65558;
  end;

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

  CMapXFindMatches = dispinterface
    ['{CF466D01-7FAB-11D2-8CE0-00207812C7EB}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXFindMatch; dispid 2;
    property Item[Index: OleVariant]: CMapXFindMatch readonly dispid 0; default;
  end;

  CMapXFindMatch = dispinterface
    ['{CF466D04-7FAB-11D2-8CE0-00207812C7EB}']
    property FeatureID: Integer readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property Score: Integer readonly dispid 3;
    property FeatureKey: WideString readonly dispid 4;
  end;

  CMapXDatasets = dispinterface
    ['{77306D4E-5C82-11CF-8795-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    property BuildSourceRows: WordBool dispid 7;
    function Add(Type_: DatasetTypeConstants; SourceData, Name, GeoField, SecondaryGeoField, BindLayer, Fields, Dynamic: OleVariant): CMapXDataset; dispid 2;
    function _Item(Index: OleVariant): CMapXDataset; dispid 3;
    procedure Remove(Index: OleVariant); dispid 4;
    function Restore(const Name: WideString; SourceData: OleVariant): CMapXDataset; dispid 5;
    procedure RemoveAll; dispid 6;
    function Contains(Index: OleVariant): WordBool; dispid 8;
    property Item[Index: OleVariant]: CMapXDataset readonly dispid 0; default;
  end;

  CMapXDataset = dispinterface
    ['{77306D51-5C82-11CF-8795-00AA00B7EF73}']
    property Name: WideString dispid 1;
    property RowCount: Integer readonly dispid 2;
    property Fields: CMapXFields readonly dispid 3;
    property Themes: CMapXThemes readonly dispid 4;
    property GeoField: Integer readonly dispid 5;
    property SecondaryGeoField: Integer readonly dispid 6;
    property Layer: CMapXLayer readonly dispid 7;
    property Type_: DatasetTypeConstants readonly dispid 11;
    property ReadOnly: WordBool readonly dispid 12;
    procedure Refresh; dispid 8;
    property Value[Row, Column: OleVariant]: OleVariant readonly dispid 9;
    property _Value[Row, Column: OleVariant]: OleVariant readonly dispid 0; default;
    property SourceRows[Row: OleVariant]: CMapXSourceRows readonly dispid 10;
    property RowValues[Row: OleVariant]: CMapXRowValues readonly dispid 13;
    function AddField(const Name, Expression: WideString): CMapXField; dispid 14;
  end;

  CMapXFields = dispinterface
    ['{3DBD18C2-C2AC-11CF-8796-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    function Add(SourceField, Name, AggregationFunction, Type_: OleVariant): CMapXField; dispid 2;
    function _Item(Index: OleVariant): CMapXField; dispid 3;
    procedure Remove(Index: OleVariant); dispid 4;
    procedure RemoveAll; dispid 5;
    function AddStringField(Name, Width, Indexed: OleVariant): CMapXField; dispid 6;
    function AddLogicalField(Name, Indexed: OleVariant): CMapXField; dispid 7;
    function AddIntegerField(Name, Indexed: OleVariant): CMapXField; dispid 8;
    function AddSmallIntField(Name, Indexed: OleVariant): CMapXField; dispid 9;
    function AddNumericField(Name, Precision, Decimals, Indexed: OleVariant): CMapXField; dispid 10;
    function AddFloatField(Name, Indexed: OleVariant): CMapXField; dispid 11;
    function AddDateField(Name, Indexed: OleVariant): CMapXField; dispid 12;
    property Item[Index: OleVariant]: CMapXField readonly dispid 0; default;
  end;

  CMapXField = dispinterface
    ['{77306D4C-5C82-11CF-8795-00AA00B7EF73}']
    property _Name: WideString readonly dispid 0;
    property Type_: FieldTypeConstants readonly dispid 1;
    property Name: WideString readonly dispid 2;
    property AggregationFunction: AggregationFunctionConstants readonly dispid 3;
    property Precision: Smallint readonly dispid 5;
    property Indexed: WordBool readonly dispid 7;
    property TypeEx: FieldTypeConstants readonly dispid 8;
    property Width: Smallint dispid 4;
    property Decimals: Smallint dispid 6;
  end;

  CMapXThemes = dispinterface
    ['{77306D54-5C82-11CF-8795-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    function Add(Type_, Field, Name, ComputeTheme: OleVariant): CMapXTheme; dispid 2;
    function _Item(Index: OleVariant): CMapXTheme; dispid 3;
    procedure Remove(Index: OleVariant); dispid 4;
    procedure RemoveAll; dispid 5;
    property Item[Index: OleVariant]: CMapXTheme readonly dispid 0; default;
  end;

  CMapXTheme = dispinterface
    ['{77306D56-5C82-11CF-8795-00AA00B7EF73}']
    property Visible: WordBool dispid 1;
    property Type_: ThemeTypeConstants readonly dispid 2;
    property Properties: CMapXThemeProperties readonly dispid 3;
    property Legend: CMapXLegend readonly dispid 4;
    property AutoRecompute: WordBool dispid 5;
    property _Name: WideString dispid 0;
    property Name: WideString dispid 6;
    property ThemeProperties: CMapXThemeProperties readonly dispid 7;
    property Layer: CMapXLayer readonly dispid 9;
    property Fields: CMapXFields readonly dispid 10;
    property DataMin: Double dispid 11;
    property DataMax: Double dispid 12;
    property ComputeTheme: WordBool dispid 13;
    property ThemedFeatureType: FeatureTypeConstants readonly dispid 14;
    function ThemeDlg(HelpFile, HelpID: OleVariant): WordBool; dispid 8;
  end;

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
    property DotColor: TColor dispid 16;
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
    property InflectionColor: TColor dispid 37;
    property BarFramed: WordBool dispid 38;
  end;

  CMapXRangeCategoriesCollection = dispinterface
    ['{ECC81860-038E-11D1-9DC6-00AA00A478CB}']
    property Count: Integer readonly dispid 1;
    property AllOthersCategory: CMapXRangeCategory readonly dispid 3;
    function _Item(Index: OleVariant): CMapXRangeCategory; dispid 2;
    property Item[Index: OleVariant]: CMapXRangeCategory readonly dispid 0; default;
  end;

  CMapXRangeCategory = dispinterface
    ['{97F45D06-BF8A-11CF-9BEE-00AA00A478CB}']
    property Min: Double dispid 1;
    property Max: Double dispid 2;
    property NumItems: Integer readonly dispid 3;
    property Style: CMapXStyle dispid 4;
  end;

  CMapXMultivarCategoriesCollection = dispinterface
    ['{ECC81864-038E-11D1-9DC6-00AA00A478CB}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXMultiVarCategory; dispid 2;
    property Item[Index: OleVariant]: CMapXMultiVarCategory readonly dispid 0; default;
  end;

  CMapXMultiVarCategory = dispinterface
    ['{6DDA5660-C853-11CF-9BEE-00AA00A478CB}']
    property Style: CMapXStyle dispid 1;
  end;

  CMapXIndividualValueCategoriesCollection = dispinterface
    ['{ECC81862-038E-11D1-9DC6-00AA00A478CB}']
    property Count: Integer readonly dispid 1;
    property AllOthersCategory: CMapXIValueCategory readonly dispid 3;
    function _Item(Index: OleVariant): CMapXIValueCategory; dispid 2;
    property Item[Index: OleVariant]: CMapXIValueCategory readonly dispid 0; default;
  end;

  CMapXIValueCategory = dispinterface
    ['{985148C3-C84B-11CF-9BEE-00AA00A478CB}']
    property Style: CMapXStyle dispid 1;
    property NumItems: Integer readonly dispid 2;
    property Value: WideString dispid 3;
  end;

  CMapXLegend = dispinterface
    ['{77306D5C-5C82-11CF-8795-00AA00B7EF73}']
    property Compact: WordBool dispid 1;
    property Visible: WordBool dispid 2;
    property TitleStyle: CMapXStyle dispid 3;
    property SubTitleStyle: CMapXStyle dispid 4;
    property CompactTitleStyle: CMapXStyle dispid 5;
    property BodyTextStyle: CMapXStyle dispid 6;
    property LegendTexts: CMapXLegendTexts readonly dispid 7;
    property CurrencyFormat: WordBool dispid 8;
    property Title: WideString dispid 9;
    property SubTitle: WideString dispid 10;
    property CompactTitle: WideString dispid 11;
    property Left: Single dispid 12;
    property Top: Single dispid 13;
    property Width: Single readonly dispid 14;
    property Height: Single readonly dispid 15;
    property ShowEmptyRanges: WordBool dispid 17;
    property ShowCount: WordBool dispid 19;
    property PaperHeight: Double readonly dispid 21;
    property PaperWidth: Double readonly dispid 22;
    function LegendDlg(HelpFile, HelpID: OleVariant): WordBool; dispid 16;
    procedure ExportLegend(const Destination: WideString; Format: ExportFormatConstants); dispid 18;
    procedure PrintLegend(hDC: OLE_HANDLE; X, Y, W, H: Integer); dispid 20;
  end;

  CMapXLegendTexts = dispinterface
    ['{4EC9B528-DFCF-11CF-9BEE-00AA00A478CB}']
    property AutoGenerate: WordBool dispid 1;
    property Count: Integer readonly dispid 2;
    property AllOthersText: CMapXLegendText readonly dispid 4;
    function _Item(Index: OleVariant): CMapXLegendText; dispid 3;
    property Item[Index: OleVariant]: CMapXLegendText readonly dispid 0; default;
  end;

  CMapXLegendText = dispinterface
    ['{4EC9B520-DFCF-11CF-9BEE-00AA00A478CB}']
    property Text: WideString dispid 1;
    property Visible: WordBool dispid 2;
  end;

  CMapXSourceRows = dispinterface
    ['{46FF43C0-C9ED-11CF-8796-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXSourceRow; dispid 2;
    property Item[Index: OleVariant]: CMapXSourceRow readonly dispid 0; default;
  end;

  CMapXSourceRow = dispinterface
    ['{46FF43C2-C9ED-11CF-8796-00AA00B7EF73}']
    property Row: Integer readonly dispid 1;
    property _Row: Integer dispid 0;
  end;

  CMapXRowValues = dispinterface
    ['{7A5FFDC2-FE6C-11D2-98A9-00A0C9742CCA}']
    property Count: Integer readonly dispid 1;
    property ReadOnly: WordBool readonly dispid 7;
    function _Item(Index: OleVariant): CMapXRowValue; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    function Add(RowValue: IDispatch): CMapXRowValue; dispid 4;
    procedure RemoveAll; dispid 5;
    function Clone: CMapXRowValues; dispid 6;
    property Item[Index: OleVariant]: CMapXRowValue readonly dispid 0; default;
  end;

  CMapXRowValue = dispinterface
    ['{2EF654E2-FE50-11D2-98A9-00A0C9742CCA}']
    property ReadOnly: WordBool readonly dispid 1;
    property Dataset: IDispatch dispid 2;
    property Field: IDispatch dispid 3;
    property Value: OleVariant dispid 4;
  end;

  CMapXLabels = dispinterface
    ['{C6AAE3F1-88D9-45FB-B816-7D635B3F259B}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXLabel; dispid 2;
    property Item[Index: OleVariant]: CMapXLabel readonly dispid 0; default;
  end;

  CMapXFeaturesConstraint = dispinterface
    ['{064F4C93-D40A-4FE4-9FC0-4A6C4A6EAA8D}']
    property Enabled: WordBool readonly dispid 1;
    property Features: CMapXFeatures dispid 2;
    procedure Enable; dispid 3;
    procedure Disable; dispid 4;
  end;

  CMapXFeatureFactory = dispinterface
    ['{BBE482A1-037F-11D1-8796-00AA00B7EF73}']
    function BufferFeatures(Source: IDispatch; Distance: Double; Units, Resolution: OleVariant): CMapXFeature; dispid 1;
    function CombineFeatures(Source1: IDispatch; Source2: OleVariant): CMapXFeature; dispid 2;
    function IntersectFeatures(Source1: IDispatch; Source2: OleVariant): CMapXFeature; dispid 3;
    function EraseFeature(Feature, EraserFeature: IDispatch): CMapXFeature; dispid 4;
    function CreateSymbol(Point, Style: OleVariant): CMapXFeature; dispid 5;
    function CreateRegion(Points, Style: OleVariant): CMapXFeature; dispid 6;
    function CreateLine(Points, Style: OleVariant): CMapXFeature; dispid 7;
    function CreateText(Point, Caption, Position, Style: OleVariant): CMapXFeature; dispid 8;
    function CreateArc(Point1, Point2: IDispatch; Angle, Distance, Resolution, Style: OleVariant): CMapXFeature; dispid 9;
    function CreateEllipticalRegion(Rectangle: IDispatch; Angle, Resolution, Style: OleVariant): CMapXFeature; dispid 10;
    function CreateCircularRegion(Type_: CircleTypeConstants; Point: IDispatch; Distance: Double; Units, Resolution, Style: OleVariant): CMapXFeature; dispid 11;
    function IntersectionTest(Feature1, Feature2: IDispatch; Flag: OleVariant): WordBool; dispid 12;
    function IntersectionPoints(Feature1, Feature2: IDispatch; Flag: OleVariant): CMapXPoints; dispid 13;
    function CreateCollectionFeature(Source1, Source2, Source3: OleVariant): CMapXFeature; dispid 14;
    function CreateMultipoint(Points, Style: OleVariant): CMapXFeature; dispid 15;
    function ThinFeature(const Source: CMapXFeature; BendTolerance, DistanceTolerance: Double; Units: OleVariant): CMapXFeature; dispid 16;
  end;

  CMapXGeoset = dispinterface
    ['{DC09D461-9575-11D0-83F7-00AA00BD34FC}']
    property Centroid: CMapXPoint readonly dispid 1;
    property PathName: WideString readonly dispid 2;
    property UserName: WideString readonly dispid 3;
  end;

  CMapXGeosets = dispinterface
    ['{984C9420-93BA-11D0-B374-444553540000}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXGeoset; dispid 2;
    property Item[Index: OleVariant]: CMapXGeoset readonly dispid 0; default;
  end;

  CMapXLayerInfo = dispinterface
    ['{30D28170-FE33-11D2-9878-0060089F59A5}']
    property Type_: LayerInfoTypeConstants dispid 1;
    procedure AddParameter(const ParamName: WideString; Param: OleVariant); dispid 2;
    property Parameter[const ParamName: WideString]: OleVariant dispid 3;
  end;

  CMapXLayers = dispinterface
    ['{77306D42-5C82-11CF-8795-00AA00B7EF73}']
    property Count: Integer readonly dispid 1;
    property AnimationLayer: CMapXLayer dispid 9;
    property Bounds: CMapXRectangle readonly dispid 12;
    property InsertionLayer: CMapXLayer dispid 15;
    property ClippedBounds: CMapXRectangle readonly dispid 16;
    procedure ClearSelection; dispid 2;
    function Move(From, To_: Smallint): WordBool; dispid 3;
    function Add(LayerInfo, Position: OleVariant): CMapXLayer; dispid 4;
    procedure AddGeoSetLayers(const GeoSetName: WideString); dispid 5;
    function _Item(Index: OleVariant): CMapXLayer; dispid 6;
    procedure Remove(Index: OleVariant); dispid 7;
    function AddUserDrawLayer(const Name: WideString; Position: Smallint): CMapXLayer; dispid 8;
    function CreateLayer(const Name: WideString; FileSpec, Position, KeyLength, CoordSys: OleVariant): CMapXLayer; dispid 10;
    function LayersDlg(HelpFile, HelpID: OleVariant): WordBool; dispid 11;
    function AddServerLayer(const Name, ConnectString, Query: WideString; Position, Options: OleVariant): CMapXLayer; dispid 13;
    procedure RemoveAll; dispid 14;
    property Item[Index: OleVariant]: CMapXLayer readonly dispid 0; default;
  end;

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

  CMapXResolveObject = dispinterface
    ['{92880603-CD2F-11D1-A34B-00207812EFE7}']
    property TableName: WideString readonly dispid 1;
    property SourceMatch: Integer readonly dispid 2;
    property TableMatch: Integer readonly dispid 3;
  end;

  CMapXResolveObjects = dispinterface
    ['{92880600-CD2F-11D1-A34B-00207812EFE7}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXResolveObject; dispid 2;
    property Item[Index: OleVariant]: CMapXResolveObject readonly dispid 0; default;
  end;

  CMapXVariable = dispinterface
    ['{9A5D5585-EFB8-11D3-9C33-0050049DA682}']
    property Name: WideString readonly dispid 1;
    property Value: OleVariant dispid 2;
    property _Value: OleVariant dispid 0;
  end;

  CMapXVariables = dispinterface
    ['{9A5D5583-EFB8-11D3-9C33-0050049DA682}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXVariable; dispid 2;
    procedure Remove(Index: OleVariant); dispid 3;
    function Add(const Name: WideString; Value: OleVariant): CMapXVariable; dispid 4;
    procedure RemoveAll; dispid 5;
    function Clone: CMapXVariables; dispid 6;
    property Item[Index: OleVariant]: CMapXVariable readonly dispid 0; default;
  end;

  IRowCursor = interface(IUnknown)
    ['{9F6AA700-D188-11CD-AD48-00AA003C9CB6}']
  end;

{ Dispatch interface for MapInfo MapX }

  CMapX = dispinterface
    ['{9D6ED197-5910-11D2-98A6-00A0C9742CCA}']
    property DataSetGeoField: WideString dispid 1;
    property Version: WideString readonly dispid 2;
    property hWnd: OLE_HANDLE readonly dispid -515;
    property Annotations: CMapXAnnotations readonly dispid 3;
    property Dataset: IRowCursor dispid 4;
    property Layers: CMapXLayers readonly dispid 5;
    property AutoRedraw: WordBool dispid 6;
    property Zoom: Double dispid 7;
    property CenterX: Double dispid 8;
    property CenterY: Double dispid 9;
    property GeoSet: WideString dispid 10;
    property GeoSetWidth: Double readonly dispid 11;
    property MapPaperHeight: Double readonly dispid 12;
    property MapPaperWidth: Double readonly dispid 13;
    property MaxSearchTime: Smallint dispid 14;
    property PaperUnit: PaperUnitConstants dispid 15;
    property PreferCompactLegends: WordBool dispid 16;
    property DefaultStyle: CMapXStyle dispid 17;
    property GeoDictionary: WideString dispid 18;
    property DataSetTheme: ThemeTypeConstants dispid 19;
    property CurrentTool: ToolConstants dispid 20;
    property MousePointer: CursorConstants dispid 21;
    property DataSets: CMapXDatasets readonly dispid 22;
    property Title: CMapXTitle readonly dispid 23;
    property TitleText: WideString dispid 24;
    property MapUnit: MapUnitConstants dispid 25;
    property Rotation: Double dispid 26;
    property Geosets: CMapXGeosets readonly dispid 27;
    property AreaUnit: AreaUnitConstants dispid 28;
    property Bounds: CMapXRectangle dispid 29;
    property DisplayCoordSys: CMapXCoordSys dispid 30;
    property NumericCoordSys: CMapXCoordSys dispid 31;
    property ExportSelection: WordBool dispid 32;
    property SelectionStyle: CMapXStyle dispid 33;
    property FeatureFactory: CMapXFeatureFactory readonly dispid 49;
    property DefaultConversionResolution: Integer dispid 50;
    property BackColor: TColor dispid -501;
    property MousewheelSupport: MousewheelSupportConstants dispid 51;
    property MatchNumericFields: WordBool dispid 52;
    property MapScreenWidth: Single readonly dispid 53;
    property MapScreenHeight: Single readonly dispid 54;
    property RedrawInterval: Integer dispid 55;
    property SearchPath: WideString dispid 56;
    property MatchThreshold: Smallint dispid 57;
    property WaitCursorEnabled: WordBool dispid 58;
    property PanAnimationLayer: WordBool dispid 60;
    property InfotipPopupDelay: Integer dispid 61;
    property MouseIcon: WideString dispid 62;
    property InfotipSupport: WordBool dispid 63;
    property FeatureEditMode: Smallint dispid 65;
    property CheckEscapeKeyInterval: Integer dispid 67;
    property ReuseEquivalentOnRestore: WordBool dispid 69;
    property SnapToNodeSupport: WordBool dispid 70;
    property SnapTolerance: Smallint dispid 71;
    property DynamicSelectionSupport: WordBool dispid 72;
    property EditableLabels: WordBool dispid 76;
    procedure ConvertCoord(var ScreenX, ScreenY: Single; var MapX, MapY: Double; Direction: ConversionConstants); dispid 34;
    procedure ZoomTo(Zoom, X, Y: Double); dispid 35;
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor, ShiftCursor, CtrlCursor, bInfoTips: OleVariant); dispid 36;
    function Distance(X1, Y1, X2, Y2: Double): Double; dispid 37;
    procedure Refresh; dispid -550;
    procedure PrintMap(hDC: OLE_HANDLE; X, Y, W, H: Integer); dispid 38;
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants; Width, Height: OleVariant); dispid 39;
    procedure PropertyPage; dispid 40;
    procedure ConvertCoordV(var ScreenX, ScreenY, MapX, MapY: OleVariant; Direction: ConversionConstants); dispid 41;
    procedure SetSize(Width, Height: Integer); dispid 42;
    function IsPointVisible(X, Y: Double): WordBool; dispid 43;
    function ClipLine(var X1, Y1, X2, Y2: Double): WordBool; dispid 44;
    function ClipLineV(var X1, Y1, X2, Y2: OleVariant): WordBool; dispid 45;
    function GetControl: Integer; dispid 46;
    procedure SaveMapAsGeoset(const Name, FileSpec: WideString); dispid 47;
    function ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool; dispid 48;
    procedure Die(const Password: WideString); dispid 59;
    procedure Pan(ScreenX, ScreenY: Single); dispid 64;
    function ConvertCoordP(X, Y: OleVariant; Direction: ConversionConstants): CMapXPoint; dispid 68;
    function MilitaryGridReferenceFromPoint(X, Y: OleVariant): WideString; dispid 73;
    function MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X, Y: Double): WordBool; dispid 74;
    function MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X, Y: OleVariant): WordBool; dispid 75;
    function LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool; dispid 77;
    function LoadMIProWSAndGST(const WorkSpace, GeoSet: WideString): WordBool; dispid 78;
    procedure AboutBox; dispid -552;
  end;

{ Event interface for MapInfo MapX }

  CMapXEvents = dispinterface
    ['{9D6ED198-5910-11D2-98A6-00A0C9742CCA}']
    procedure Click; dispid -600;
    procedure DblClick; dispid -601;
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure KeyDown(var KeyCode: Smallint; Shift: Smallint); dispid -602;
    procedure KeyPress(var KeyAscii: Smallint); dispid -603;
    procedure KeyUp(var KeyCode: Smallint; Shift: Smallint); dispid -604;
    procedure MouseMove(Button, Shift: Smallint; X, Y: Single); dispid -606;
    procedure MouseDown(Button, Shift: Smallint; X, Y: Single); dispid -605;
    procedure MouseUp(Button, Shift: Smallint; X, Y: Single); dispid -607;
    procedure SelectionChanged; dispid 1;
    procedure ResolveDataBind(Flag, NumMatches: Smallint; Matches: OleVariant; var Choice: Smallint; var Cancel: WordBool); dispid 2;
    procedure ToolUsed(ToolNum: Smallint; X1, Y1, X2, Y2, Distance: Double; Shift, Ctrl: WordBool; var EnableDefault: WordBool); dispid 3;
    procedure RequestData(const DataSetName: WideString; Row: Integer; Field: Smallint; var Value: OleVariant; var Done: WordBool); dispid 4;
    procedure DataMismatch(const DataSetName: WideString; Row: Integer; var GeoFieldValue: WideString); dispid 5;
    procedure MapViewChanged; dispid 6;
    procedure AnnotationAdded(Annotation: IDispatch); dispid 7;
    procedure AnnotationChanged(ChangeType: Smallint; Annotation: IDispatch; var EnableDefault: WordBool); dispid 8;
    procedure ThemeModifyRequested(Theme: IDispatch); dispid 9;
    procedure DrawUserLayer(Layer: IDispatch; hOutputDC, hAttributeDC: OLE_HANDLE; RectFull, RectInvalid: IDispatch); dispid 10;
    procedure PolyToolUsed(ToolNum: Smallint; Flags: Integer; Points: IDispatch; bShift, bCtrl: WordBool; var EnableDefault: WordBool); dispid 11;
    procedure MouseWheel(Flags: Integer; zDelta: Smallint; var X, Y: Single; var EnableDefault: WordBool); dispid 12;
    procedure MapInitialized; dispid 13;
    procedure ResolveDataBindEx(Flag, NumMatches: Smallint; Matches: OleVariant; var Choice: Smallint; var Cancel: WordBool); dispid 14;
    procedure MapDraw(Flag: Smallint); dispid 15;
    procedure AddFeatureToolUsed(ToolNum: Smallint; Flags: Integer; Feature: IDispatch; bShift, bCtrl: WordBool; var EnableDefault: WordBool); dispid 16;
    procedure LabelChanged(ChangeType: Smallint; const ChangingLabels: CMapXLabels; var EnableDefault: WordBool); dispid 17;
  end;

  CMapXCollection = dispinterface
    ['{3AAB5861-6166-11CF-8795-00AA00B7EF73}']
  end;

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

  CMapXBitmapSymbolsCollection = dispinterface
    ['{ECC81866-038E-11D1-9DC6-00AA00A478CB}']
    property Count: Integer readonly dispid 1;
    function _Item(Index: OleVariant): CMapXBitmapSymbol; dispid 2;
    procedure Refresh; dispid 3;
    procedure Unload; dispid 4;
    property Item[Index: OleVariant]: CMapXBitmapSymbol readonly dispid 0; default;
  end;

  CoDataSets = class
    class function Create: CMapXDatasets;
    class function CreateRemote(const MachineName: string): CMapXDatasets;
  end;

  CoLayers = class
    class function Create: CMapXLayers;
    class function CreateRemote(const MachineName: string): CMapXLayers;
  end;

  CoLayerInfo = class
    class function Create: CMapXLayerInfo;
    class function CreateRemote(const MachineName: string): CMapXLayerInfo;
  end;

  CoLayer = class
    class function Create: CMapXLayer;
    class function CreateRemote(const MachineName: string): CMapXLayer;
  end;

  CoField = class
    class function Create: CMapXField;
    class function CreateRemote(const MachineName: string): CMapXField;
  end;

  CoDataset = class
    class function Create: CMapXDataset;
    class function CreateRemote(const MachineName: string): CMapXDataset;
  end;

  CoThemes = class
    class function Create: CMapXThemes;
    class function CreateRemote(const MachineName: string): CMapXThemes;
  end;

  CoTheme = class
    class function Create: CMapXTheme;
    class function CreateRemote(const MachineName: string): CMapXTheme;
  end;

  CoLegend = class
    class function Create: CMapXLegend;
    class function CreateRemote(const MachineName: string): CMapXLegend;
  end;

  CoCollection = class
    class function Create: CMapXCollection;
    class function CreateRemote(const MachineName: string): CMapXCollection;
  end;

  CoAnnotations = class
    class function Create: CMapXAnnotations;
    class function CreateRemote(const MachineName: string): CMapXAnnotations;
  end;

  CoThemeProperties = class
    class function Create: CMapXThemeProperties;
    class function CreateRemote(const MachineName: string): CMapXThemeProperties;
  end;

  CoSelection = class
    class function Create: CMapXSelection;
    class function CreateRemote(const MachineName: string): CMapXSelection;
  end;

  CoFeature = class
    class function Create: CMapXFeature;
    class function CreateRemote(const MachineName: string): CMapXFeature;
  end;

  CoRangeCategory = class
    class function Create: CMapXRangeCategory;
    class function CreateRemote(const MachineName: string): CMapXRangeCategory;
  end;

  CoFields = class
    class function Create: CMapXFields;
    class function CreateRemote(const MachineName: string): CMapXFields;
  end;

  CoStyle = class
    class function Create: CMapXStyle;
    class function CreateRemote(const MachineName: string): CMapXStyle;
  end;

  CoIndividualValueCategory = class
    class function Create: CMapXIValueCategory;
    class function CreateRemote(const MachineName: string): CMapXIValueCategory;
  end;

  CoMultiVarCategory = class
    class function Create: CMapXMultiVarCategory;
    class function CreateRemote(const MachineName: string): CMapXMultiVarCategory;
  end;

  CoSourceRows = class
    class function Create: CMapXSourceRows;
    class function CreateRemote(const MachineName: string): CMapXSourceRows;
  end;

  CoSourceRow = class
    class function Create: CMapXSourceRow;
    class function CreateRemote(const MachineName: string): CMapXSourceRow;
  end;

  CoAnnotation = class
    class function Create: CMapXAnnotation;
    class function CreateRemote(const MachineName: string): CMapXAnnotation;
  end;

  CoGraphic = class
    class function Create: CMapXText;
    class function CreateRemote(const MachineName: string): CMapXText;
  end;

  CoLegendText = class
    class function Create: CMapXLegendText;
    class function CreateRemote(const MachineName: string): CMapXLegendText;
  end;

  CoLegendTexts = class
    class function Create: CMapXLegendTexts;
    class function CreateRemote(const MachineName: string): CMapXLegendTexts;
  end;

  CoTitle = class
    class function Create: CMapXTitle;
    class function CreateRemote(const MachineName: string): CMapXTitle;
  end;

  CoLabelProperties = class
    class function Create: CMapXLabelProperties;
    class function CreateRemote(const MachineName: string): CMapXLabelProperties;
  end;

  CoBindLayer = class
    class function Create: CMapXBindLayer;
    class function CreateRemote(const MachineName: string): CMapXBindLayer;
  end;

  CoRangeCategories = class
    class function Create: CMapXRangeCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXRangeCategoriesCollection;
  end;

  CoIndividualValueCategories = class
    class function Create: CMapXIndividualValueCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXIndividualValueCategoriesCollection;
  end;

  CoMultivarCategories = class
    class function Create: CMapXMultivarCategoriesCollection;
    class function CreateRemote(const MachineName: string): CMapXMultivarCategoriesCollection;
  end;

  CoBitmapSymbols = class
    class function Create: CMapXBitmapSymbolsCollection;
    class function CreateRemote(const MachineName: string): CMapXBitmapSymbolsCollection;
  end;

  CoRectangle = class
    class function Create: CMapXRectangle;
    class function CreateRemote(const MachineName: string): CMapXRectangle;
  end;

  CoBoundsConstraint = class
    class function Create: CMapXBoundsConstraint;
    class function CreateRemote(const MachineName: string): CMapXBoundsConstraint;
  end;

  CoFeaturesConstraint = class
    class function Create: CMapXFeaturesConstraint;
    class function CreateRemote(const MachineName: string): CMapXFeaturesConstraint;
  end;

  CoAllFeaturesConstraint = class
    class function Create: CMapXAllFeaturesConstraint;
    class function CreateRemote(const MachineName: string): CMapXAllFeaturesConstraint;
  end;

  CoFind = class
    class function Create: CMapXLayerFind;
    class function CreateRemote(const MachineName: string): CMapXLayerFind;
  end;

  CoFindFeature = class
    class function Create: CMapXFindFeature;
    class function CreateRemote(const MachineName: string): CMapXFindFeature;
  end;

  CoFindResult = class
    class function Create: CMapXFindResult;
    class function CreateRemote(const MachineName: string): CMapXFindResult;
  end;

  CoFindMatch = class
    class function Create: CMapXFindMatch;
    class function CreateRemote(const MachineName: string): CMapXFindMatch;
  end;

  CoFindMatches = class
    class function Create: CMapXFindMatches;
    class function CreateRemote(const MachineName: string): CMapXFindMatches;
  end;

  CoParts = class
    class function Create: CMapXParts;
    class function CreateRemote(const MachineName: string): CMapXParts;
  end;

  CoPoints = class
    class function Create: CMapXPoints;
    class function CreateRemote(const MachineName: string): CMapXPoints;
  end;

  CoPoint = class
    class function Create: CMapXPoint;
    class function CreateRemote(const MachineName: string): CMapXPoint;
  end;

  CoGeosets = class
    class function Create: CMapXGeosets;
    class function CreateRemote(const MachineName: string): CMapXGeosets;
  end;

  CoGeoSet = class
    class function Create: CMapXGeoset;
    class function CreateRemote(const MachineName: string): CMapXGeoset;
  end;

  CoFeatures = class
    class function Create: CMapXFeatures;
    class function CreateRemote(const MachineName: string): CMapXFeatures;
  end;

  CoDatum = class
    class function Create: CMapXDatum;
    class function CreateRemote(const MachineName: string): CMapXDatum;
  end;

  CoAffineTransform = class
    class function Create: CMapXAffineTransform;
    class function CreateRemote(const MachineName: string): CMapXAffineTransform;
  end;

  CoCoordSys = class
    class function Create: CMapXCoordSys;
    class function CreateRemote(const MachineName: string): CMapXCoordSys;
  end;

  CoBitmapSymbol = class
    class function Create: CMapXBitmapSymbol;
    class function CreateRemote(const MachineName: string): CMapXBitmapSymbol;
  end;

  CoFeatureFactory = class
    class function Create: CMapXFeatureFactory;
    class function CreateRemote(const MachineName: string): CMapXFeatureFactory;
  end;

  CoResolveObjects = class
    class function Create: CMapXResolveObjects;
    class function CreateRemote(const MachineName: string): CMapXResolveObjects;
  end;

  CoResolveObject = class
    class function Create: CMapXResolveObject;
    class function CreateRemote(const MachineName: string): CMapXResolveObject;
  end;

  CoRowValues = class
    class function Create: CMapXRowValues;
    class function CreateRemote(const MachineName: string): CMapXRowValues;
  end;

  CoRowValue = class
    class function Create: CMapXRowValue;
    class function CreateRemote(const MachineName: string): CMapXRowValue;
  end;

  CoVariables = class
    class function Create: CMapXVariables;
    class function CreateRemote(const MachineName: string): CMapXVariables;
  end;

  CoVariable = class
    class function Create: CMapXVariable;
    class function CreateRemote(const MachineName: string): CMapXVariable;
  end;

  CoLabels = class
    class function Create: CMapXLabels;
    class function CreateRemote(const MachineName: string): CMapXLabels;
  end;

  CoLabel_ = class
    class function Create: CMapXLabel;
    class function CreateRemote(const MachineName: string): CMapXLabel;
  end;

{ MapInfo MapX V5 }

  TMapError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TMapResolveDataBind = procedure(Sender: TObject; Flag, NumMatches: Smallint; Matches: OleVariant; var Choice: Smallint; var Cancel: WordBool) of object;
  TMapToolUsed = procedure(Sender: TObject; ToolNum: Smallint; X1, Y1, X2, Y2, Distance: Double; Shift, Ctrl: WordBool; var EnableDefault: WordBool) of object;
  TMapRequestData = procedure(Sender: TObject; const DataSetName: WideString; Row: Integer; Field: Smallint; var Value: OleVariant; var Done: WordBool) of object;
  TMapDataMismatch = procedure(Sender: TObject; const DataSetName: WideString; Row: Integer; var GeoFieldValue: WideString) of object;
  TMapAnnotationAdded = procedure(Sender: TObject; Annotation: IDispatch) of object;
  TMapAnnotationChanged = procedure(Sender: TObject; ChangeType: Smallint; Annotation: IDispatch; var EnableDefault: WordBool) of object;
  TMapThemeModifyRequested = procedure(Sender: TObject; Theme: IDispatch) of object;
  TMapDrawUserLayer = procedure(Sender: TObject; Layer: IDispatch; hOutputDC, hAttributeDC: OLE_HANDLE; RectFull, RectInvalid: IDispatch) of object;
  TMapPolyToolUsed = procedure(Sender: TObject; ToolNum: Smallint; Flags: Integer; Points: IDispatch; bShift, bCtrl: WordBool; var EnableDefault: WordBool) of object;
  TMapMouseWheel = procedure(Sender: TObject; Flags: Integer; zDelta: Smallint; var X, Y: Single; var EnableDefault: WordBool) of object;
  TMapResolveDataBindEx = procedure(Sender: TObject; Flag, NumMatches: Smallint; Matches: OleVariant; var Choice: Smallint; var Cancel: WordBool) of object;
  TMapMapDraw = procedure(Sender: TObject; Flag: Smallint) of object;
  TMapAddFeatureToolUsed = procedure(Sender: TObject; ToolNum: Smallint; Flags: Integer; Feature: IDispatch; bShift, bCtrl: WordBool; var EnableDefault: WordBool) of object;
  TMapLabelChanged = procedure(Sender: TObject; ChangeType: Smallint; const ChangingLabels: CMapXLabels; var EnableDefault: WordBool) of object;

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
    function GetControlInterface: CMapX;
    function Get_hWnd: OLE_HANDLE;
    function Get_Annotations: CMapXAnnotations;
    function Get_Dataset: IRowCursor;
    procedure Set_Dataset(var Value: IRowCursor);
    function Get_Layers: CMapXLayers;
    function Get_DefaultStyle: CMapXStyle;
    procedure Set_DefaultStyle(var Value: CMapXStyle);
    function Get_DataSets: CMapXDatasets;
    function Get_Title: CMapXTitle;
    function Get_Geosets: CMapXGeosets;
    function Get_Bounds: CMapXRectangle;
    procedure Set_Bounds(var Value: CMapXRectangle);
    function Get_DisplayCoordSys: CMapXCoordSys;
    procedure Set_DisplayCoordSys(var Value: CMapXCoordSys);
    function Get_NumericCoordSys: CMapXCoordSys;
    procedure Set_NumericCoordSys(var Value: CMapXCoordSys);
    function Get_SelectionStyle: CMapXStyle;
    procedure Set_SelectionStyle(var Value: CMapXStyle);
    function Get_FeatureFactory: CMapXFeatureFactory;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function GetTOleEnumProp(Index: Integer): TOleEnum;
    procedure SetTOleEnumProp(Index: Integer; Value: TOleEnum);
  public
    procedure ConvertCoord(var ScreenX, ScreenY: Single; var MapX, MapY: Double; Direction: ConversionConstants);
    procedure ZoomTo(Zoom, X, Y: Double);
    procedure CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor, ShiftCursor, CtrlCursor, bInfoTips: OleVariant);
    function Distance(X1, Y1, X2, Y2: Double): Double;
    procedure Refresh;
    procedure PrintMap(hDC: OLE_HANDLE; X, Y, W, H: Integer);
    procedure ExportMap(const Destination: WideString; Format: ExportFormatConstants; Width, Height: OleVariant);
    procedure PropertyPage;
    procedure ConvertCoordV(var ScreenX, ScreenY, MapX, MapY: OleVariant; Direction: ConversionConstants);
    procedure SetSize(Width, Height: Integer);
    function IsPointVisible(X, Y: Double): WordBool;
    function ClipLine(var X1, Y1, X2, Y2: Double): WordBool;
    function ClipLineV(var X1, Y1, X2, Y2: OleVariant): WordBool;
    function GetControl: Integer;
    procedure SaveMapAsGeoset(const Name, FileSpec: WideString);
    function ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool;
    procedure Die(const Password: WideString);
    procedure Pan(ScreenX, ScreenY: Single);
    function ConvertCoordP(X, Y: OleVariant; Direction: ConversionConstants): CMapXPoint;
    function MilitaryGridReferenceFromPoint(X, Y: OleVariant): WideString;
    function MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X, Y: Double): WordBool;
    function MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X, Y: OleVariant): WordBool;
    function LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool;
    function LoadMIProWSAndGST(const WorkSpace, GeoSet: WideString): WordBool;
    procedure AboutBox;
    property ControlInterface: CMapX read GetControlInterface;
    property Version: WideString index 2 read GetWideStringProp;
    property hWnd: OLE_HANDLE read Get_hWnd;
    property Annotations: CMapXAnnotations read Get_Annotations;
    property Layers: CMapXLayers read Get_Layers;
    property GeoSetWidth: Double index 11 read GetDoubleProp;
    property MapPaperHeight: Double index 12 read GetDoubleProp;
    property MapPaperWidth: Double index 13 read GetDoubleProp;
    property DataSets: CMapXDatasets read Get_DataSets;
    property Title: CMapXTitle read Get_Title;
    property Geosets: CMapXGeosets read Get_Geosets;
    property FeatureFactory: CMapXFeatureFactory read Get_FeatureFactory;
    property MapScreenWidth: Single index 53 read GetSingleProp;
    property MapScreenHeight: Single index 54 read GetSingleProp;
  published
    property ParentColor;
    property TabStop;
    property Align;
    property DragCursor;
    property DragMode;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property Visible;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnStartDrag;
    property OnMouseUp;
    property OnMouseMove;
    property OnMouseDown;
    property OnKeyUp;
    property OnKeyPress;
    property OnKeyDown;
    property OnDblClick;
    property OnClick;
    property DataSetGeoField: WideString index 1 read GetWideStringProp write SetWideStringProp stored False;
    property Dataset: IRowCursor read Get_Dataset write Set_Dataset stored False;
    property AutoRedraw: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property Zoom: Double index 7 read GetDoubleProp write SetDoubleProp stored False;
    property CenterX: Double index 8 read GetDoubleProp write SetDoubleProp stored False;
    property CenterY: Double index 9 read GetDoubleProp write SetDoubleProp stored False;
    property GeoSet: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property MaxSearchTime: Smallint index 14 read GetSmallintProp write SetSmallintProp stored False;
    property PaperUnit: PaperUnitConstants index 15 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property PreferCompactLegends: WordBool index 16 read GetWordBoolProp write SetWordBoolProp stored False;
    property DefaultStyle: CMapXStyle read Get_DefaultStyle write Set_DefaultStyle stored False;
    property GeoDictionary: WideString index 18 read GetWideStringProp write SetWideStringProp stored False;
    property DataSetTheme: ThemeTypeConstants index 19 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property CurrentTool: ToolConstants index 20 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property MousePointer: CursorConstants index 21 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property TitleText: WideString index 24 read GetWideStringProp write SetWideStringProp stored False;
    property MapUnit: MapUnitConstants index 25 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Rotation: Double index 26 read GetDoubleProp write SetDoubleProp stored False;
    property AreaUnit: AreaUnitConstants index 28 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Bounds: CMapXRectangle read Get_Bounds write Set_Bounds stored False;
    property DisplayCoordSys: CMapXCoordSys read Get_DisplayCoordSys write Set_DisplayCoordSys stored False;
    property NumericCoordSys: CMapXCoordSys read Get_NumericCoordSys write Set_NumericCoordSys stored False;
    property ExportSelection: WordBool index 32 read GetWordBoolProp write SetWordBoolProp stored False;
    property SelectionStyle: CMapXStyle read Get_SelectionStyle write Set_SelectionStyle stored False;
    property DefaultConversionResolution: Integer index 50 read GetIntegerProp write SetIntegerProp stored False;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property MousewheelSupport: MousewheelSupportConstants index 51 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property MatchNumericFields: WordBool index 52 read GetWordBoolProp write SetWordBoolProp stored False;
    property RedrawInterval: Integer index 55 read GetIntegerProp write SetIntegerProp stored False;
    property SearchPath: WideString index 56 read GetWideStringProp write SetWideStringProp stored False;
    property MatchThreshold: Smallint index 57 read GetSmallintProp write SetSmallintProp stored False;
    property WaitCursorEnabled: WordBool index 58 read GetWordBoolProp write SetWordBoolProp stored False;
    property PanAnimationLayer: WordBool index 60 read GetWordBoolProp write SetWordBoolProp stored False;
    property InfotipPopupDelay: Integer index 61 read GetIntegerProp write SetIntegerProp stored False;
    property MouseIcon: WideString index 62 read GetWideStringProp write SetWideStringProp stored False;
    property InfotipSupport: WordBool index 63 read GetWordBoolProp write SetWordBoolProp stored False;
    property FeatureEditMode: Smallint index 65 read GetSmallintProp write SetSmallintProp stored False;
    property CheckEscapeKeyInterval: Integer index 67 read GetIntegerProp write SetIntegerProp stored False;
    property ReuseEquivalentOnRestore: WordBool index 69 read GetWordBoolProp write SetWordBoolProp stored False;
    property SnapToNodeSupport: WordBool index 70 read GetWordBoolProp write SetWordBoolProp stored False;
    property SnapTolerance: Smallint index 71 read GetSmallintProp write SetSmallintProp stored False;
    property DynamicSelectionSupport: WordBool index 72 read GetWordBoolProp write SetWordBoolProp stored False;
    property EditableLabels: WordBool index 76 read GetWordBoolProp write SetWordBoolProp stored False;
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

procedure Register;

implementation

uses ComObj;

class function CoDataSets.Create: CMapXDatasets;
begin
  Result := CreateComObject(Class_DataSets) as CMapXDatasets;
end;

class function CoDataSets.CreateRemote(const MachineName: string): CMapXDatasets;
begin
  Result := CreateRemoteComObject(MachineName, Class_DataSets) as CMapXDatasets;
end;

class function CoLayers.Create: CMapXLayers;
begin
  Result := CreateComObject(Class_Layers) as CMapXLayers;
end;

class function CoLayers.CreateRemote(const MachineName: string): CMapXLayers;
begin
  Result := CreateRemoteComObject(MachineName, Class_Layers) as CMapXLayers;
end;

class function CoLayerInfo.Create: CMapXLayerInfo;
begin
  Result := CreateComObject(Class_LayerInfo) as CMapXLayerInfo;
end;

class function CoLayerInfo.CreateRemote(const MachineName: string): CMapXLayerInfo;
begin
  Result := CreateRemoteComObject(MachineName, Class_LayerInfo) as CMapXLayerInfo;
end;

class function CoLayer.Create: CMapXLayer;
begin
  Result := CreateComObject(Class_Layer) as CMapXLayer;
end;

class function CoLayer.CreateRemote(const MachineName: string): CMapXLayer;
begin
  Result := CreateRemoteComObject(MachineName, Class_Layer) as CMapXLayer;
end;

class function CoField.Create: CMapXField;
begin
  Result := CreateComObject(Class_Field) as CMapXField;
end;

class function CoField.CreateRemote(const MachineName: string): CMapXField;
begin
  Result := CreateRemoteComObject(MachineName, Class_Field) as CMapXField;
end;

class function CoDataset.Create: CMapXDataset;
begin
  Result := CreateComObject(Class_Dataset) as CMapXDataset;
end;

class function CoDataset.CreateRemote(const MachineName: string): CMapXDataset;
begin
  Result := CreateRemoteComObject(MachineName, Class_Dataset) as CMapXDataset;
end;

class function CoThemes.Create: CMapXThemes;
begin
  Result := CreateComObject(Class_Themes) as CMapXThemes;
end;

class function CoThemes.CreateRemote(const MachineName: string): CMapXThemes;
begin
  Result := CreateRemoteComObject(MachineName, Class_Themes) as CMapXThemes;
end;

class function CoTheme.Create: CMapXTheme;
begin
  Result := CreateComObject(Class_Theme) as CMapXTheme;
end;

class function CoTheme.CreateRemote(const MachineName: string): CMapXTheme;
begin
  Result := CreateRemoteComObject(MachineName, Class_Theme) as CMapXTheme;
end;

class function CoLegend.Create: CMapXLegend;
begin
  Result := CreateComObject(Class_Legend) as CMapXLegend;
end;

class function CoLegend.CreateRemote(const MachineName: string): CMapXLegend;
begin
  Result := CreateRemoteComObject(MachineName, Class_Legend) as CMapXLegend;
end;

class function CoCollection.Create: CMapXCollection;
begin
  Result := CreateComObject(Class_Collection) as CMapXCollection;
end;

class function CoCollection.CreateRemote(const MachineName: string): CMapXCollection;
begin
  Result := CreateRemoteComObject(MachineName, Class_Collection) as CMapXCollection;
end;

class function CoAnnotations.Create: CMapXAnnotations;
begin
  Result := CreateComObject(Class_Annotations) as CMapXAnnotations;
end;

class function CoAnnotations.CreateRemote(const MachineName: string): CMapXAnnotations;
begin
  Result := CreateRemoteComObject(MachineName, Class_Annotations) as CMapXAnnotations;
end;

class function CoThemeProperties.Create: CMapXThemeProperties;
begin
  Result := CreateComObject(Class_ThemeProperties) as CMapXThemeProperties;
end;

class function CoThemeProperties.CreateRemote(const MachineName: string): CMapXThemeProperties;
begin
  Result := CreateRemoteComObject(MachineName, Class_ThemeProperties) as CMapXThemeProperties;
end;

class function CoSelection.Create: CMapXSelection;
begin
  Result := CreateComObject(Class_Selection) as CMapXSelection;
end;

class function CoSelection.CreateRemote(const MachineName: string): CMapXSelection;
begin
  Result := CreateRemoteComObject(MachineName, Class_Selection) as CMapXSelection;
end;

class function CoFeature.Create: CMapXFeature;
begin
  Result := CreateComObject(Class_Feature) as CMapXFeature;
end;

class function CoFeature.CreateRemote(const MachineName: string): CMapXFeature;
begin
  Result := CreateRemoteComObject(MachineName, Class_Feature) as CMapXFeature;
end;

class function CoRangeCategory.Create: CMapXRangeCategory;
begin
  Result := CreateComObject(Class_RangeCategory) as CMapXRangeCategory;
end;

class function CoRangeCategory.CreateRemote(const MachineName: string): CMapXRangeCategory;
begin
  Result := CreateRemoteComObject(MachineName, Class_RangeCategory) as CMapXRangeCategory;
end;

class function CoFields.Create: CMapXFields;
begin
  Result := CreateComObject(Class_Fields) as CMapXFields;
end;

class function CoFields.CreateRemote(const MachineName: string): CMapXFields;
begin
  Result := CreateRemoteComObject(MachineName, Class_Fields) as CMapXFields;
end;

class function CoStyle.Create: CMapXStyle;
begin
  Result := CreateComObject(Class_Style) as CMapXStyle;
end;

class function CoStyle.CreateRemote(const MachineName: string): CMapXStyle;
begin
  Result := CreateRemoteComObject(MachineName, Class_Style) as CMapXStyle;
end;

class function CoIndividualValueCategory.Create: CMapXIValueCategory;
begin
  Result := CreateComObject(Class_IndividualValueCategory) as CMapXIValueCategory;
end;

class function CoIndividualValueCategory.CreateRemote(const MachineName: string): CMapXIValueCategory;
begin
  Result := CreateRemoteComObject(MachineName, Class_IndividualValueCategory) as CMapXIValueCategory;
end;

class function CoMultiVarCategory.Create: CMapXMultiVarCategory;
begin
  Result := CreateComObject(Class_MultiVarCategory) as CMapXMultiVarCategory;
end;

class function CoMultiVarCategory.CreateRemote(const MachineName: string): CMapXMultiVarCategory;
begin
  Result := CreateRemoteComObject(MachineName, Class_MultiVarCategory) as CMapXMultiVarCategory;
end;

class function CoSourceRows.Create: CMapXSourceRows;
begin
  Result := CreateComObject(Class_SourceRows) as CMapXSourceRows;
end;

class function CoSourceRows.CreateRemote(const MachineName: string): CMapXSourceRows;
begin
  Result := CreateRemoteComObject(MachineName, Class_SourceRows) as CMapXSourceRows;
end;

class function CoSourceRow.Create: CMapXSourceRow;
begin
  Result := CreateComObject(Class_SourceRow) as CMapXSourceRow;
end;

class function CoSourceRow.CreateRemote(const MachineName: string): CMapXSourceRow;
begin
  Result := CreateRemoteComObject(MachineName, Class_SourceRow) as CMapXSourceRow;
end;

class function CoAnnotation.Create: CMapXAnnotation;
begin
  Result := CreateComObject(Class_Annotation) as CMapXAnnotation;
end;

class function CoAnnotation.CreateRemote(const MachineName: string): CMapXAnnotation;
begin
  Result := CreateRemoteComObject(MachineName, Class_Annotation) as CMapXAnnotation;
end;

class function CoGraphic.Create: CMapXText;
begin
  Result := CreateComObject(Class_Graphic) as CMapXText;
end;

class function CoGraphic.CreateRemote(const MachineName: string): CMapXText;
begin
  Result := CreateRemoteComObject(MachineName, Class_Graphic) as CMapXText;
end;

class function CoLegendText.Create: CMapXLegendText;
begin
  Result := CreateComObject(Class_LegendText) as CMapXLegendText;
end;

class function CoLegendText.CreateRemote(const MachineName: string): CMapXLegendText;
begin
  Result := CreateRemoteComObject(MachineName, Class_LegendText) as CMapXLegendText;
end;

class function CoLegendTexts.Create: CMapXLegendTexts;
begin
  Result := CreateComObject(Class_LegendTexts) as CMapXLegendTexts;
end;

class function CoLegendTexts.CreateRemote(const MachineName: string): CMapXLegendTexts;
begin
  Result := CreateRemoteComObject(MachineName, Class_LegendTexts) as CMapXLegendTexts;
end;

class function CoTitle.Create: CMapXTitle;
begin
  Result := CreateComObject(Class_Title) as CMapXTitle;
end;

class function CoTitle.CreateRemote(const MachineName: string): CMapXTitle;
begin
  Result := CreateRemoteComObject(MachineName, Class_Title) as CMapXTitle;
end;

class function CoLabelProperties.Create: CMapXLabelProperties;
begin
  Result := CreateComObject(Class_LabelProperties) as CMapXLabelProperties;
end;

class function CoLabelProperties.CreateRemote(const MachineName: string): CMapXLabelProperties;
begin
  Result := CreateRemoteComObject(MachineName, Class_LabelProperties) as CMapXLabelProperties;
end;

class function CoBindLayer.Create: CMapXBindLayer;
begin
  Result := CreateComObject(Class_BindLayer) as CMapXBindLayer;
end;

class function CoBindLayer.CreateRemote(const MachineName: string): CMapXBindLayer;
begin
  Result := CreateRemoteComObject(MachineName, Class_BindLayer) as CMapXBindLayer;
end;

class function CoRangeCategories.Create: CMapXRangeCategoriesCollection;
begin
  Result := CreateComObject(Class_RangeCategories) as CMapXRangeCategoriesCollection;
end;

class function CoRangeCategories.CreateRemote(const MachineName: string): CMapXRangeCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, Class_RangeCategories) as CMapXRangeCategoriesCollection;
end;

class function CoIndividualValueCategories.Create: CMapXIndividualValueCategoriesCollection;
begin
  Result := CreateComObject(Class_IndividualValueCategories) as CMapXIndividualValueCategoriesCollection;
end;

class function CoIndividualValueCategories.CreateRemote(const MachineName: string): CMapXIndividualValueCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, Class_IndividualValueCategories) as CMapXIndividualValueCategoriesCollection;
end;

class function CoMultivarCategories.Create: CMapXMultivarCategoriesCollection;
begin
  Result := CreateComObject(Class_MultivarCategories) as CMapXMultivarCategoriesCollection;
end;

class function CoMultivarCategories.CreateRemote(const MachineName: string): CMapXMultivarCategoriesCollection;
begin
  Result := CreateRemoteComObject(MachineName, Class_MultivarCategories) as CMapXMultivarCategoriesCollection;
end;

class function CoBitmapSymbols.Create: CMapXBitmapSymbolsCollection;
begin
  Result := CreateComObject(Class_BitmapSymbols) as CMapXBitmapSymbolsCollection;
end;

class function CoBitmapSymbols.CreateRemote(const MachineName: string): CMapXBitmapSymbolsCollection;
begin
  Result := CreateRemoteComObject(MachineName, Class_BitmapSymbols) as CMapXBitmapSymbolsCollection;
end;

class function CoRectangle.Create: CMapXRectangle;
begin
  Result := CreateComObject(Class_Rectangle) as CMapXRectangle;
end;

class function CoRectangle.CreateRemote(const MachineName: string): CMapXRectangle;
begin
  Result := CreateRemoteComObject(MachineName, Class_Rectangle) as CMapXRectangle;
end;

class function CoBoundsConstraint.Create: CMapXBoundsConstraint;
begin
  Result := CreateComObject(Class_BoundsConstraint) as CMapXBoundsConstraint;
end;

class function CoBoundsConstraint.CreateRemote(const MachineName: string): CMapXBoundsConstraint;
begin
  Result := CreateRemoteComObject(MachineName, Class_BoundsConstraint) as CMapXBoundsConstraint;
end;

class function CoFeaturesConstraint.Create: CMapXFeaturesConstraint;
begin
  Result := CreateComObject(Class_FeaturesConstraint) as CMapXFeaturesConstraint;
end;

class function CoFeaturesConstraint.CreateRemote(const MachineName: string): CMapXFeaturesConstraint;
begin
  Result := CreateRemoteComObject(MachineName, Class_FeaturesConstraint) as CMapXFeaturesConstraint;
end;

class function CoAllFeaturesConstraint.Create: CMapXAllFeaturesConstraint;
begin
  Result := CreateComObject(Class_AllFeaturesConstraint) as CMapXAllFeaturesConstraint;
end;

class function CoAllFeaturesConstraint.CreateRemote(const MachineName: string): CMapXAllFeaturesConstraint;
begin
  Result := CreateRemoteComObject(MachineName, Class_AllFeaturesConstraint) as CMapXAllFeaturesConstraint;
end;

class function CoFind.Create: CMapXLayerFind;
begin
  Result := CreateComObject(Class_Find) as CMapXLayerFind;
end;

class function CoFind.CreateRemote(const MachineName: string): CMapXLayerFind;
begin
  Result := CreateRemoteComObject(MachineName, Class_Find) as CMapXLayerFind;
end;

class function CoFindFeature.Create: CMapXFindFeature;
begin
  Result := CreateComObject(Class_FindFeature) as CMapXFindFeature;
end;

class function CoFindFeature.CreateRemote(const MachineName: string): CMapXFindFeature;
begin
  Result := CreateRemoteComObject(MachineName, Class_FindFeature) as CMapXFindFeature;
end;

class function CoFindResult.Create: CMapXFindResult;
begin
  Result := CreateComObject(Class_FindResult) as CMapXFindResult;
end;

class function CoFindResult.CreateRemote(const MachineName: string): CMapXFindResult;
begin
  Result := CreateRemoteComObject(MachineName, Class_FindResult) as CMapXFindResult;
end;

class function CoFindMatch.Create: CMapXFindMatch;
begin
  Result := CreateComObject(Class_FindMatch) as CMapXFindMatch;
end;

class function CoFindMatch.CreateRemote(const MachineName: string): CMapXFindMatch;
begin
  Result := CreateRemoteComObject(MachineName, Class_FindMatch) as CMapXFindMatch;
end;

class function CoFindMatches.Create: CMapXFindMatches;
begin
  Result := CreateComObject(Class_FindMatches) as CMapXFindMatches;
end;

class function CoFindMatches.CreateRemote(const MachineName: string): CMapXFindMatches;
begin
  Result := CreateRemoteComObject(MachineName, Class_FindMatches) as CMapXFindMatches;
end;

class function CoParts.Create: CMapXParts;
begin
  Result := CreateComObject(Class_Parts) as CMapXParts;
end;

class function CoParts.CreateRemote(const MachineName: string): CMapXParts;
begin
  Result := CreateRemoteComObject(MachineName, Class_Parts) as CMapXParts;
end;

class function CoPoints.Create: CMapXPoints;
begin
  Result := CreateComObject(Class_Points) as CMapXPoints;
end;

class function CoPoints.CreateRemote(const MachineName: string): CMapXPoints;
begin
  Result := CreateRemoteComObject(MachineName, Class_Points) as CMapXPoints;
end;

class function CoPoint.Create: CMapXPoint;
begin
  Result := CreateComObject(Class_Point) as CMapXPoint;
end;

class function CoPoint.CreateRemote(const MachineName: string): CMapXPoint;
begin
  Result := CreateRemoteComObject(MachineName, Class_Point) as CMapXPoint;
end;

class function CoGeosets.Create: CMapXGeosets;
begin
  Result := CreateComObject(Class_Geosets) as CMapXGeosets;
end;

class function CoGeosets.CreateRemote(const MachineName: string): CMapXGeosets;
begin
  Result := CreateRemoteComObject(MachineName, Class_Geosets) as CMapXGeosets;
end;

class function CoGeoSet.Create: CMapXGeoset;
begin
  Result := CreateComObject(Class_GeoSet) as CMapXGeoset;
end;

class function CoGeoSet.CreateRemote(const MachineName: string): CMapXGeoset;
begin
  Result := CreateRemoteComObject(MachineName, Class_GeoSet) as CMapXGeoset;
end;

class function CoFeatures.Create: CMapXFeatures;
begin
  Result := CreateComObject(Class_Features) as CMapXFeatures;
end;

class function CoFeatures.CreateRemote(const MachineName: string): CMapXFeatures;
begin
  Result := CreateRemoteComObject(MachineName, Class_Features) as CMapXFeatures;
end;

class function CoDatum.Create: CMapXDatum;
begin
  Result := CreateComObject(Class_Datum) as CMapXDatum;
end;

class function CoDatum.CreateRemote(const MachineName: string): CMapXDatum;
begin
  Result := CreateRemoteComObject(MachineName, Class_Datum) as CMapXDatum;
end;

class function CoAffineTransform.Create: CMapXAffineTransform;
begin
  Result := CreateComObject(Class_AffineTransform) as CMapXAffineTransform;
end;

class function CoAffineTransform.CreateRemote(const MachineName: string): CMapXAffineTransform;
begin
  Result := CreateRemoteComObject(MachineName, Class_AffineTransform) as CMapXAffineTransform;
end;

class function CoCoordSys.Create: CMapXCoordSys;
begin
  Result := CreateComObject(Class_CoordSys) as CMapXCoordSys;
end;

class function CoCoordSys.CreateRemote(const MachineName: string): CMapXCoordSys;
begin
  Result := CreateRemoteComObject(MachineName, Class_CoordSys) as CMapXCoordSys;
end;

class function CoBitmapSymbol.Create: CMapXBitmapSymbol;
begin
  Result := CreateComObject(Class_BitmapSymbol) as CMapXBitmapSymbol;
end;

class function CoBitmapSymbol.CreateRemote(const MachineName: string): CMapXBitmapSymbol;
begin
  Result := CreateRemoteComObject(MachineName, Class_BitmapSymbol) as CMapXBitmapSymbol;
end;

class function CoFeatureFactory.Create: CMapXFeatureFactory;
begin
  Result := CreateComObject(Class_FeatureFactory) as CMapXFeatureFactory;
end;

class function CoFeatureFactory.CreateRemote(const MachineName: string): CMapXFeatureFactory;
begin
  Result := CreateRemoteComObject(MachineName, Class_FeatureFactory) as CMapXFeatureFactory;
end;

class function CoResolveObjects.Create: CMapXResolveObjects;
begin
  Result := CreateComObject(Class_ResolveObjects) as CMapXResolveObjects;
end;

class function CoResolveObjects.CreateRemote(const MachineName: string): CMapXResolveObjects;
begin
  Result := CreateRemoteComObject(MachineName, Class_ResolveObjects) as CMapXResolveObjects;
end;

class function CoResolveObject.Create: CMapXResolveObject;
begin
  Result := CreateComObject(Class_ResolveObject) as CMapXResolveObject;
end;

class function CoResolveObject.CreateRemote(const MachineName: string): CMapXResolveObject;
begin
  Result := CreateRemoteComObject(MachineName, Class_ResolveObject) as CMapXResolveObject;
end;

class function CoRowValues.Create: CMapXRowValues;
begin
  Result := CreateComObject(Class_RowValues) as CMapXRowValues;
end;

class function CoRowValues.CreateRemote(const MachineName: string): CMapXRowValues;
begin
  Result := CreateRemoteComObject(MachineName, Class_RowValues) as CMapXRowValues;
end;

class function CoRowValue.Create: CMapXRowValue;
begin
  Result := CreateComObject(Class_RowValue) as CMapXRowValue;
end;

class function CoRowValue.CreateRemote(const MachineName: string): CMapXRowValue;
begin
  Result := CreateRemoteComObject(MachineName, Class_RowValue) as CMapXRowValue;
end;

class function CoVariables.Create: CMapXVariables;
begin
  Result := CreateComObject(Class_Variables) as CMapXVariables;
end;

class function CoVariables.CreateRemote(const MachineName: string): CMapXVariables;
begin
  Result := CreateRemoteComObject(MachineName, Class_Variables) as CMapXVariables;
end;

class function CoVariable.Create: CMapXVariable;
begin
  Result := CreateComObject(Class_Variable) as CMapXVariable;
end;

class function CoVariable.CreateRemote(const MachineName: string): CMapXVariable;
begin
  Result := CreateRemoteComObject(MachineName, Class_Variable) as CMapXVariable;
end;

class function CoLabels.Create: CMapXLabels;
begin
  Result := CreateComObject(Class_Labels) as CMapXLabels;
end;

class function CoLabels.CreateRemote(const MachineName: string): CMapXLabels;
begin
  Result := CreateRemoteComObject(MachineName, Class_Labels) as CMapXLabels;
end;

class function CoLabel_.Create: CMapXLabel;
begin
  Result := CreateComObject(Class_Label_) as CMapXLabel;
end;

class function CoLabel_.CreateRemote(const MachineName: string): CMapXLabel;
begin
  Result := CreateRemoteComObject(MachineName, Class_Label_) as CMapXLabel;
end;

procedure TMap.InitControlData;
const
  CEventDispIDs: array[0..17] of Integer = (
    $FFFFFDA0, $00000001, $00000002, $00000003, $00000004, $00000005,
    $00000006, $00000007, $00000008, $00000009, $0000000A, $0000000B,
    $0000000C, $0000000D, $0000000E, $0000000F, $00000010, $00000011);
  CLicenseKey: array[0..61] of Word = (
    $0075, $0051, $006E, $005A, $0069, $0032, $0073, $0046, $0077, $0032,
    $0032, $004C, $0030, $002D, $004D, $0052, $0061, $0038, $0070, $0059,
    $0058, $002D, $0031, $0045, $0032, $0050, $0038, $0030, $0036, $0035,
    $002D, $0035, $004E, $0035, $004D, $0033, $0034, $0035, $0039, $002D,
    $0033, $0043, $0039, $0033, $0034, $0032, $0032, $0050, $0030, $002D,
    $004D, $0030, $0034, $0039, $0036, $0039, $002D, $0036, $0035, $0036,
    $0032, $0000);
  CControlData: TControlData = (
    ClassID: '{B06B11B1-EBEC-4972-B786-369EB41C18B2}';
    EventIID: '{9D6ED198-5910-11D2-98A6-00A0C9742CCA}';
    EventCount: 18;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000001;
    Version: 300);
begin
  ControlData := @CControlData;
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

function TMap.GetTOleEnumProp(Index: Integer): TOleEnum;
begin
  Result := GetIntegerProp(Index);
end;

procedure TMap.SetTOleEnumProp(Index: Integer; Value: TOleEnum);
begin
  SetIntegerProp(Index, Value);
end;

procedure TMap.ConvertCoord(var ScreenX, ScreenY: Single; var MapX, MapY: Double; Direction: ConversionConstants);
begin
  CreateControl;
  FIntf.ConvertCoord(ScreenX, ScreenY, MapX, MapY, Direction);
end;

procedure TMap.ZoomTo(Zoom, X, Y: Double);
begin
  CreateControl;
  FIntf.ZoomTo(Zoom, X, Y);
end;

procedure TMap.CreateCustomTool(ToolNumber: Smallint; Type_: ToolTypeConstants; Cursor, ShiftCursor, CtrlCursor, bInfoTips: OleVariant);
begin
  CreateControl;
  FIntf.CreateCustomTool(ToolNumber, Type_, Cursor, ShiftCursor, CtrlCursor, bInfoTips);
end;

function TMap.Distance(X1, Y1, X2, Y2: Double): Double;
begin
  CreateControl;
  Result := FIntf.Distance(X1, Y1, X2, Y2);
end;

procedure TMap.Refresh;
begin
  CreateControl;
  FIntf.Refresh;
end;

procedure TMap.PrintMap(hDC: OLE_HANDLE; X, Y, W, H: Integer);
begin
  CreateControl;
  FIntf.PrintMap(hDC, X, Y, W, H);
end;

procedure TMap.ExportMap(const Destination: WideString; Format: ExportFormatConstants; Width, Height: OleVariant);
begin
  CreateControl;
  FIntf.ExportMap(Destination, Format, Width, Height);
end;

procedure TMap.PropertyPage;
begin
  CreateControl;
  FIntf.PropertyPage;
end;

procedure TMap.ConvertCoordV(var ScreenX, ScreenY, MapX, MapY: OleVariant; Direction: ConversionConstants);
begin
  CreateControl;
  FIntf.ConvertCoordV(ScreenX, ScreenY, MapX, MapY, Direction);
end;

procedure TMap.SetSize(Width, Height: Integer);
begin
  CreateControl;
  FIntf.SetSize(Width, Height);
end;

function TMap.IsPointVisible(X, Y: Double): WordBool;
begin
  CreateControl;
  Result := FIntf.IsPointVisible(X, Y);
end;

function TMap.ClipLine(var X1, Y1, X2, Y2: Double): WordBool;
begin
  CreateControl;
  Result := FIntf.ClipLine(X1, Y1, X2, Y2);
end;

function TMap.ClipLineV(var X1, Y1, X2, Y2: OleVariant): WordBool;
begin
  CreateControl;
  Result := FIntf.ClipLineV(X1, Y1, X2, Y2);
end;

function TMap.GetControl: Integer;
begin
  CreateControl;
  Result := FIntf.GetControl;
end;

procedure TMap.SaveMapAsGeoset(const Name, FileSpec: WideString);
begin
  CreateControl;
  FIntf.SaveMapAsGeoset(Name, FileSpec);
end;

function TMap.ExportMapToMTF(const Destination: WideString; sMapDataCSys: Smallint; lMapDataCSysPrecision: Integer; bCompressMapData: WordBool): WordBool;
begin
  CreateControl;
  Result := FIntf.ExportMapToMTF(Destination, sMapDataCSys, lMapDataCSysPrecision, bCompressMapData);
end;

procedure TMap.Die(const Password: WideString);
begin
  CreateControl;
  FIntf.Die(Password);
end;

procedure TMap.Pan(ScreenX, ScreenY: Single);
begin
  CreateControl;
  FIntf.Pan(ScreenX, ScreenY);
end;

function TMap.ConvertCoordP(X, Y: OleVariant; Direction: ConversionConstants): CMapXPoint;
begin
  CreateControl;
  Result := FIntf.ConvertCoordP(X, Y, Direction);
end;

function TMap.MilitaryGridReferenceFromPoint(X, Y: OleVariant): WideString;
begin
  CreateControl;
  Result := FIntf.MilitaryGridReferenceFromPoint(X, Y);
end;

function TMap.MilitaryGridReferenceToPoint(const MGRSPoint: WideString; var X, Y: Double): WordBool;
begin
  CreateControl;
  Result := FIntf.MilitaryGridReferenceToPoint(MGRSPoint, X, Y);
end;

function TMap.MilitaryGridReferenceToPointV(const MGRSPoint: WideString; var X, Y: OleVariant): WordBool;
begin
  CreateControl;
  Result := FIntf.MilitaryGridReferenceToPointV(MGRSPoint, X, Y);
end;

function TMap.LoadXMLWorkSpace(const XMLWorkSpace: WideString): WordBool;
begin
  CreateControl;
  Result := FIntf.LoadXMLWorkSpace(XMLWorkSpace);
end;

function TMap.LoadMIProWSAndGST(const WorkSpace, GeoSet: WideString): WordBool;
begin
  CreateControl;
  Result := FIntf.LoadMIProWSAndGST(WorkSpace, GeoSet);
end;

procedure TMap.AboutBox;
begin
  CreateControl;
  FIntf.AboutBox;
end;

function TMap.Get_hWnd: OLE_HANDLE;
begin
  CreateControl;
  Result := FIntf.hWnd;
end;

function TMap.Get_Annotations: CMapXAnnotations;
begin
  CreateControl;
  Result := FIntf.Annotations;
end;

function TMap.Get_Dataset: IRowCursor;
begin
  CreateControl;
  Result := FIntf.Dataset;
end;

procedure TMap.Set_Dataset(var Value: IRowCursor);
begin
  CreateControl;
  FIntf.Dataset := Value;
end;

function TMap.Get_Layers: CMapXLayers;
begin
  CreateControl;
  Result := FIntf.Layers;
end;

function TMap.Get_DefaultStyle: CMapXStyle;
begin
  CreateControl;
  Result := FIntf.DefaultStyle;
end;

procedure TMap.Set_DefaultStyle(var Value: CMapXStyle);
begin
  CreateControl;
  FIntf.DefaultStyle := Value;
end;

function TMap.Get_DataSets: CMapXDatasets;
begin
  CreateControl;
  Result := FIntf.DataSets;
end;

function TMap.Get_Title: CMapXTitle;
begin
  CreateControl;
  Result := FIntf.Title;
end;

function TMap.Get_Geosets: CMapXGeosets;
begin
  CreateControl;
  Result := FIntf.Geosets;
end;

function TMap.Get_Bounds: CMapXRectangle;
begin
  CreateControl;
  Result := FIntf.Bounds;
end;

procedure TMap.Set_Bounds(var Value: CMapXRectangle);
begin
  CreateControl;
  FIntf.Bounds := Value;
end;

function TMap.Get_DisplayCoordSys: CMapXCoordSys;
begin
  CreateControl;
  Result := FIntf.DisplayCoordSys;
end;

procedure TMap.Set_DisplayCoordSys(var Value: CMapXCoordSys);
begin
  CreateControl;
  FIntf.DisplayCoordSys := Value;
end;

function TMap.Get_NumericCoordSys: CMapXCoordSys;
begin
  CreateControl;
  Result := FIntf.NumericCoordSys;
end;

procedure TMap.Set_NumericCoordSys(var Value: CMapXCoordSys);
begin
  CreateControl;
  FIntf.NumericCoordSys := Value;
end;

function TMap.Get_SelectionStyle: CMapXStyle;
begin
  CreateControl;
  Result := FIntf.SelectionStyle;
end;

procedure TMap.Set_SelectionStyle(var Value: CMapXStyle);
begin
  CreateControl;
  FIntf.SelectionStyle := Value;
end;

function TMap.Get_FeatureFactory: CMapXFeatureFactory;
begin
  CreateControl;
  Result := FIntf.FeatureFactory;
end;


procedure Register;
begin
  RegisterComponents('MapInfo', [TMap]);
end;

end.
