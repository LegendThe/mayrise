// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advgdip.pas' rev: 11.00

#ifndef AdvgdipHPP
#define AdvgdipHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Comobj.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

#pragma link "gdiplus.lib"


namespace Advgdip
{
//-- type declarations -------------------------------------------------------
__interface IWinStyle;
typedef System::DelphiInterface<IWinStyle> _di_IWinStyle;
__interface  INTERFACE_UUID("{41886CF9-1932-4DE4-A90B-6E3D0F181417}") IWinStyle  : public IInterface 
{
	
public:
	virtual void __fastcall ChangeStyle(bool AWin7, int AStyle) = 0 ;
	virtual void __fastcall ChangeMenu(Graphics::TColor AColor) = 0 ;
	virtual void __fastcall UpdateMenu(void) = 0 ;
	virtual void __fastcall HideMenu(void) = 0 ;
	virtual void __fastcall ShowMenuShortCuts(void) = 0 ;
	virtual void __fastcall HideMenuShortCuts(void) = 0 ;
};

typedef DynamicArray<float >  TSingleDynArray;

#pragma option push -b
enum TImageType { itPNG, itBMP, itJPEG, itTIFF, itGIF };
#pragma option pop

#pragma option push -b
enum TAntiAlias { aaNone, aaClearType, aaAntiAlias };
#pragma option pop

class DELPHICLASS TGdiplusBase;
class PASCALIMPLEMENTATION TGdiplusBase : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	/* virtual class method */ virtual System::TObject* __fastcall NewInstance(TMetaClass* vmt);
	virtual void __fastcall FreeInstance(void);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TGdiplusBase(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TGdiplusBase(void) { }
	#pragma option pop
	
};


#pragma option push -b
enum FillMode { FillModeAlternate, FillModeWinding };
#pragma option pop

typedef FillMode TFillMode;

typedef int TPenType;

typedef int TCompositingQuality;

#pragma option push -b
enum Unit_ { UnitWorld, UnitDisplay, UnitPixel, UnitPoint, UnitInch, UnitDocument, UnitMillimeter };
#pragma option pop

typedef Unit_ TUnit;

#pragma option push -b
enum HatchStyle { HatchStyleHorizontal, HatchStyleVertical, HatchStyleForwardDiagonal, HatchStyleBackwardDiagonal, HatchStyleCross, HatchStyleDiagonalCross, HatchStyle05Percent, HatchStyle10Percent, HatchStyle20Percent, HatchStyle25Percent, HatchStyle30Percent, HatchStyle40Percent, HatchStyle50Percent, HatchStyle60Percent, HatchStyle70Percent, HatchStyle75Percent, HatchStyle80Percent, HatchStyle90Percent, HatchStyleLightDownwardDiagonal, HatchStyleLightUpwardDiagonal, HatchStyleDarkDownwardDiagonal, HatchStyleDarkUpwardDiagonal, HatchStyleWideDownwardDiagonal, HatchStyleWideUpwardDiagonal, HatchStyleLightVertical, HatchStyleLightHorizontal, HatchStyleNarrowVertical, HatchStyleNarrowHorizontal, HatchStyleDarkVertical, HatchStyleDarkHorizontal, HatchStyleDashedDownwardDiagonal, HatchStyleDashedUpwardDiagonal, HatchStyleDashedHorizontal, HatchStyleDashedVertical, HatchStyleSmallConfetti, HatchStyleLargeConfetti, HatchStyleZigZag, HatchStyleWave, HatchStyleDiagonalBrick, HatchStyleHorizontalBrick
	, HatchStyleWeave, HatchStylePlaid, HatchStyleDivot, HatchStyleDottedGrid, HatchStyleDottedDiamond, HatchStyleShingle, HatchStyleTrellis, HatchStyleSphere, HatchStyleSmallGrid, HatchStyleSmallCheckerBoard, HatchStyleLargeCheckerBoard, HatchStyleOutlinedDiamond, HatchStyleSolidDiamond, HatchStyleTotal };
#pragma option pop

typedef HatchStyle THatchStyle;

#pragma option push -b
enum DashStyle { DashStyleSolid, DashStyleDash, DashStyleDot, DashStyleDashDot, DashStyleDashDotDot, DashStyleCustom };
#pragma option pop

typedef DashStyle TDashStyle;

#pragma option push -b
enum CoordinateSpace { CoordinateSpaceWorld, CoordinateSpacePage, CoordinateSpaceDevice };
#pragma option pop

typedef CoordinateSpace TCoordinateSpace;

#pragma option push -b
enum WrapMode { WrapModeTile, WrapModeTileFlipX, WrapModeTileFlipY, WrapModeTileFlipXY, WrapModeClamp };
#pragma option pop

typedef WrapMode TWrapMode;

#pragma option push -b
enum LinearGradientMode { LinearGradientModeHorizontal, LinearGradientModeVertical, LinearGradientModeForwardDiagonal, LinearGradientModeBackwardDiagonal };
#pragma option pop

typedef LinearGradientMode TLinearGradientMode;

typedef int TLineCap;

#pragma option push -b
enum CombineMode { CombineModeReplace, CombineModeIntersect, CombineModeUnion, CombineModeXor, CombineModeExclude, CombineModeComplement };
#pragma option pop

typedef CombineMode TCombineMode;

#pragma option push -b
enum MatrixOrder { MatrixOrderPrepend, MatrixOrderAppend };
#pragma option pop

typedef MatrixOrder TMatrixOrder;

typedef float ColorMatrix[5][5];

typedef float TColorMatrix[5][5];

typedef ColorMatrix *PColorMatrix;

#pragma option push -b
enum ColorMatrixFlags { ColorMatrixFlagsDefault, ColorMatrixFlagsSkipGrays, ColorMatrixFlagsAltGray };
#pragma option pop

typedef ColorMatrixFlags TColorMatrixFlags;

#pragma option push -b
enum ColorChannelFlags { ColorChannelFlagsC, ColorChannelFlagsM, ColorChannelFlagsY, ColorChannelFlagsK, ColorChannelFlagsLast };
#pragma option pop

typedef ColorChannelFlags TColorChannelFlags;

typedef int TFontStyle;

typedef int SmoothingMode;

typedef int TSmoothingMode;

#pragma option push -b
enum TextRenderingHint { TextRenderingHintSystemDefault, TextRenderingHintSingleBitPerPixelGridFit, TextRenderingHintSingleBitPerPixel, TextRenderingHintAntiAliasGridFit, TextRenderingHintAntiAlias, TextRenderingHintClearTypeGridFit };
#pragma option pop

typedef TextRenderingHint TTextRenderingHint;

#pragma option push -b
enum StringAlignment { StringAlignmentNear, StringAlignmentCenter, StringAlignmentFar };
#pragma option pop

typedef StringAlignment TStringAlignment;

typedef int TStringFormatFlags;

#pragma option push -b
enum StringTrimming { StringTrimmingNone, StringTrimmingCharacter, StringTrimmingWord, StringTrimmingEllipsisCharacter, StringTrimmingEllipsisWord, StringTrimmingEllipsisPath };
#pragma option pop

typedef StringTrimming TStringTrimming;

#pragma option push -b
enum HotkeyPrefix { HotkeyPrefixNone, HotkeyPrefixShow, HotkeyPrefixHide };
#pragma option pop

typedef HotkeyPrefix THotkeyPrefix;

#pragma option push -b
enum FlushIntention { FlushIntentionFlush, FlushIntentionSync };
#pragma option pop

typedef FlushIntention TFlushIntention;

typedef BOOL __stdcall (*ImageAbort)(void);

typedef BOOL __stdcall (*DrawImageAbort)(void);

typedef BOOL __stdcall (*GetThumbnailImageAbort)(void);

#pragma option push -b
enum Status { Ok, GenericError, InvalidParameter, OutOfMemory, ObjectBusy, InsufficientBuffer, NotImplemented, Win32Error, WrongState, Aborted, FileNotFound, ValueOverflow, AccessDenied, UnknownImageFormat, FontFamilyNotFound, FontStyleNotFound, NotTrueTypeFont, UnsupportedGdiplusVersion, GdiplusNotInitialized, PropertyNotFound, PropertyNotSupported };
#pragma option pop

typedef Status TStatus;

struct TGPPointF;
typedef TGPPointF *PGPPointF;

#pragma pack(push,1)
struct TGPPointF
{
	
public:
	float X;
	float Y;
} ;
#pragma pack(pop)

typedef DynamicArray<TGPPointF >  TPointFDynArray;

#pragma pack(push,1)
struct TGPPoint
{
	
public:
	int X;
	int Y;
} ;
#pragma pack(pop)

typedef TGPPoint *PGPPoint;

typedef DynamicArray<TGPPoint >  TPointDynArray;

struct TGPRectF;
typedef TGPRectF *PGPRectF;

#pragma pack(push,1)
struct TGPRectF
{
	
public:
	float X;
	float Y;
	float Width;
	float Height;
} ;
#pragma pack(pop)

typedef DynamicArray<TGPRectF >  TRectFDynArray;

#pragma pack(push,1)
struct TGPRect
{
	
public:
	int X;
	int Y;
	int Width;
	int Height;
} ;
#pragma pack(pop)

typedef TGPRect *PGPRect;

typedef DynamicArray<TGPRect >  TRectDynArray;

#pragma option push -b
enum DebugEventLevel { DebugEventLevelFatal, DebugEventLevelWarning };
#pragma option pop

typedef DebugEventLevel TDebugEventLevel;

typedef void __stdcall (*DebugEventProc)(DebugEventLevel level, char * message);

typedef Status __stdcall (*NotificationHookProc)(/* out */ unsigned &token);

typedef void __stdcall (*NotificationUnhookProc)(unsigned token);

#pragma pack(push,1)
struct GdiplusStartupInput
{
	
public:
	unsigned GdiplusVersion;
	DebugEventProc DebugEventCallback;
	BOOL SuppressBackgroundThread;
	BOOL SuppressExternalCodecs;
} ;
#pragma pack(pop)

typedef GdiplusStartupInput  TGdiplusStartupInput;

typedef GdiplusStartupInput *PGdiplusStartupInput;

#pragma pack(push,1)
struct GdiplusStartupOutput
{
	
public:
	NotificationHookProc NotificationHook;
	NotificationUnhookProc NotificationUnhook;
} ;
#pragma pack(pop)

typedef GdiplusStartupOutput  TGdiplusStartupOutput;

typedef GdiplusStartupOutput *PGdiplusStartupOutput;

typedef unsigned *PARGB;

typedef unsigned *PGPColor;

typedef int TPixelFormat;

#pragma option push -b
enum RotateFlipType { RotateNoneFlipNone, Rotate90FlipNone, Rotate180FlipNone, Rotate270FlipNone, RotateNoneFlipX, Rotate90FlipX, Rotate180FlipX, Rotate270FlipX };
#pragma option pop

typedef RotateFlipType TRotateFlipType;

#pragma option push -b
enum ColorAdjustType { ColorAdjustTypeDefault, ColorAdjustTypeBitmap, ColorAdjustTypeBrush, ColorAdjustTypePen, ColorAdjustTypeText, ColorAdjustTypeCount, ColorAdjustTypeAny };
#pragma option pop

typedef ColorAdjustType TColorAdjustType;

typedef int EncoderParameterValueType;

typedef int TEncoderParameterValueType;

#pragma option push -b
enum EncoderValue { EncoderValueColorTypeCMYK, EncoderValueColorTypeYCCK, EncoderValueCompressionLZW, EncoderValueCompressionCCITT3, EncoderValueCompressionCCITT4, EncoderValueCompressionRle, EncoderValueCompressionNone, EncoderValueScanMethodInterlaced, EncoderValueScanMethodNonInterlaced, EncoderValueVersionGif87, EncoderValueVersionGif89, EncoderValueRenderProgressive, EncoderValueRenderNonProgressive, EncoderValueTransformRotate90, EncoderValueTransformRotate180, EncoderValueTransformRotate270, EncoderValueTransformFlipHorizontal, EncoderValueTransformFlipVertical, EncoderValueMultiFrame, EncoderValueLastFrame, EncoderValueFlush, EncoderValueFrameDimensionTime, EncoderValueFrameDimensionResolution, EncoderValueFrameDimensionPage };
#pragma option pop

typedef EncoderValue TEncoderValue;

#pragma pack(push,1)
struct EncoderParameter
{
	
public:
	GUID Guid;
	unsigned NumberOfValues;
	unsigned Type_;
	void *Value;
} ;
#pragma pack(pop)

typedef EncoderParameter  TEncoderParameter;

typedef EncoderParameter *PEncoderParameter;

#pragma pack(push,1)
struct EncoderParameters
{
	
public:
	unsigned Count;
	EncoderParameter Parameter[1];
} ;
#pragma pack(pop)

typedef EncoderParameters  TEncoderParameters;

typedef EncoderParameters *PEncoderParameters;

#pragma pack(push,1)
struct ImageCodecInfo
{
	
public:
	GUID Clsid;
	GUID FormatID;
	WideChar *CodecName;
	WideChar *DllName;
	WideChar *FormatDescription;
	WideChar *FilenameExtension;
	WideChar *MimeType;
	unsigned Flags;
	unsigned Version;
	unsigned SigCount;
	unsigned SigSize;
	Byte *SigPattern;
	Byte *SigMask;
} ;
#pragma pack(pop)

typedef ImageCodecInfo  TImageCodecInfo;

typedef ImageCodecInfo *PImageCodecInfo;

#pragma pack(push,1)
struct ColorMap
{
	
public:
	unsigned oldColor;
	unsigned newColor;
} ;
#pragma pack(pop)

typedef ColorMap  TColorMap;

typedef ColorMap *PColorMap;

#pragma pack(push,1)
struct ColorPalette
{
	
public:
	unsigned Flags;
	unsigned Count;
	unsigned Entries[1];
} ;
#pragma pack(pop)

typedef ColorPalette  TColorPalette;

typedef ColorPalette *PColorPalette;

typedef void *GpGraphics;

typedef void *GpMatrix;

typedef void *GpTexture;

typedef void *GpBrush;

typedef void *GpSolidFill;

typedef void *GpLineGradient;

typedef void *GpPathGradient;

typedef void *GpPen;

typedef void *GpHatch;

typedef int GpPenType;

typedef void *GpImage;

typedef void *GpBitmap;

typedef void *GpImageAttributes;

typedef void *GpPath;

typedef void *GpRegion;

typedef void *GpFontFamily;

typedef void *GpFont;

typedef void *GpStringFormat;

typedef void *GpFontCollection;

typedef Status GpStatus;

typedef FillMode GpFillMode;

typedef WrapMode GpWrapMode;

typedef Unit_ GpUnit;

typedef TGPPointF *GpPointF;

typedef TGPPoint *GpPoint;

typedef TGPRectF *GpRectF;

typedef TGPRect *GpRect;

typedef DashStyle GpDashStyle;

typedef int GpLineCap;

typedef FlushIntention GpFlushIntention;

typedef MatrixOrder GpMatrixOrder;

typedef CoordinateSpace GpCoordinateSpace;

typedef HatchStyle GpHatchStyle;

class DELPHICLASS TGPRegion;
class DELPHICLASS TGPGraphicsPath;
class PASCALIMPLEMENTATION TGPRegion : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeRegion;
	Status lastResult;
	Status __fastcall SetStatus(Status status);
	void __fastcall SetNativeRegion(void * nativeRegion);
	
public:
	__fastcall TGPRegion(const TGPRectF &rect)/* overload */;
	__fastcall TGPRegion(TGPGraphicsPath* path)/* overload */;
	__fastcall virtual ~TGPRegion(void);
	Status __fastcall Exclude(TGPGraphicsPath* path)/* overload */;
	Status __fastcall Union(TGPRegion* region)/* overload */;
};


class DELPHICLASS TGPImageAttributes;
class PASCALIMPLEMENTATION TGPImageAttributes : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeImageAttr;
	Status lastResult;
	void __fastcall SetNativeImageAttr(void * nativeImageAttr);
	Status __fastcall SetStatus(Status status);
	__fastcall TGPImageAttributes(void * imageAttr, Status status)/* overload */;
	
public:
	__fastcall TGPImageAttributes(void)/* overload */;
	__fastcall virtual ~TGPImageAttributes(void);
	TGPImageAttributes* __fastcall Clone(void);
	Status __fastcall SetToIdentity(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall Reset(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetColorMatrix( const * colorMatrix, ColorMatrixFlags mode = (ColorMatrixFlags)(0x0), ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearColorMatrix(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetColorMatrices( const * colorMatrix,  const * grayMatrix, ColorMatrixFlags mode = (ColorMatrixFlags)(0x0), ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearColorMatrices(ColorAdjustType Type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetThreshold(float threshold, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearThreshold(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetGamma(float gamma, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearGamma(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetNoOp(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearNoOp(ColorAdjustType Type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetColorKey(unsigned colorLow, unsigned colorHigh, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearColorKey(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetOutputChannel(ColorChannelFlags channelFlags, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearOutputChannel(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetOutputChannelColorProfile(WideString colorProfileFilename, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearOutputChannelColorProfile(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetRemapTable(unsigned mapSize, PColorMap map, ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall ClearRemapTable(ColorAdjustType type_ = (ColorAdjustType)(0x0));
	Status __fastcall SetBrushRemapTable(unsigned mapSize, PColorMap map);
	Status __fastcall ClearBrushRemapTable(void);
	Status __fastcall SetWrapMode(WrapMode wrap, unsigned color = (unsigned)(0xff000000), BOOL clamp = false);
	Status __fastcall GetAdjustedPalette(PColorPalette colorPalette, ColorAdjustType colorAdjustType);
	Status __fastcall GetLastStatus(void);
};


class DELPHICLASS TGPFontFamily;
class DELPHICLASS TGPFontCollection;
class PASCALIMPLEMENTATION TGPFontFamily : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeFamily;
	Status lastResult;
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPFontFamily(void * nativeOrig, Status status)/* overload */;
	__fastcall TGPFontFamily(WideString name, TGPFontCollection* fontCollection)/* overload */;
	__fastcall virtual ~TGPFontFamily(void);
	__property Status Status = {read=lastResult, nodefault};
	/*         class method */ static TGPFontFamily* __fastcall GenericSansSerif(TMetaClass* vmt);
	/*         class method */ static TGPFontFamily* __fastcall GenericSerif(TMetaClass* vmt);
	/*         class method */ static TGPFontFamily* __fastcall GenericMonospace(TMetaClass* vmt);
};


class PASCALIMPLEMENTATION TGPFontCollection : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeFontCollection;
	Status lastResult;
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPFontCollection(void);
	__fastcall virtual ~TGPFontCollection(void);
};


class DELPHICLASS TGPFont;
class PASCALIMPLEMENTATION TGPFont : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeFont;
	Status lastResult;
	void __fastcall SetNativeFont(void * Font);
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPFont(void * font, Status status)/* overload */;
	__fastcall TGPFont(TGPFontFamily* family, float emSize, int style, Unit_ unit_)/* overload */;
	__fastcall TGPFont(WideString familyName, float emSize, Graphics::TFontStyles style, Unit_ unit_, TGPFontCollection* fontCollection)/* overload */;
	__fastcall virtual ~TGPFont(void);
	__property Status Status = {read=lastResult, nodefault};
};


class DELPHICLASS TGPBrush;
class PASCALIMPLEMENTATION TGPBrush : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeBrush;
	Status lastResult;
	void __fastcall SetNativeBrush(void * nativeBrush);
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPBrush(void * nativeBrush, Status status)/* overload */;
	__fastcall TGPBrush(void)/* overload */;
	__fastcall virtual ~TGPBrush(void);
};


class DELPHICLASS TGPSolidBrush;
class PASCALIMPLEMENTATION TGPSolidBrush : public TGPBrush 
{
	typedef TGPBrush inherited;
	
public:
	__fastcall TGPSolidBrush(unsigned color)/* overload */;
	__fastcall TGPSolidBrush(void)/* overload */;
public:
	#pragma option push -w-inl
	/* TGPBrush.Destroy */ inline __fastcall virtual ~TGPSolidBrush(void) { }
	#pragma option pop
	
};


class DELPHICLASS TGPTextureBrush;
class DELPHICLASS TGPImage;
class PASCALIMPLEMENTATION TGPTextureBrush : public TGPBrush 
{
	typedef TGPBrush inherited;
	
public:
	__fastcall TGPTextureBrush(TGPImage* image, WrapMode wrapMode)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, WrapMode wrapMode, const TGPRectF &dstRect)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, const TGPRectF &dstRect, TGPImageAttributes* imageAttributes)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, const TGPRect &dstRect, TGPImageAttributes* imageAttributes)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, WrapMode wrapMode, const TGPRect &dstRect)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, WrapMode wrapMode, float dstX, float dstY, float dstWidth, float dstHeight)/* overload */;
	__fastcall TGPTextureBrush(TGPImage* image, WrapMode wrapMode, int dstX, int dstY, int dstWidth, int dstHeight)/* overload */;
	__fastcall TGPTextureBrush(void)/* overload */;
	Status __fastcall ResetTransform(void);
	Status __fastcall TranslateTransform(float dx, float dy, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall ScaleTransform(float sx, float sy, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall RotateTransform(float angle, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall SetWrapMode(WrapMode wrapMode);
	WrapMode __fastcall GetWrapMode(void);
	TGPImage* __fastcall GetImage(void);
public:
	#pragma option push -w-inl
	/* TGPBrush.Destroy */ inline __fastcall virtual ~TGPTextureBrush(void) { }
	#pragma option pop
	
};


class DELPHICLASS TGPLinearGradientBrush;
class PASCALIMPLEMENTATION TGPLinearGradientBrush : public TGPBrush 
{
	typedef TGPBrush inherited;
	
public:
	__fastcall TGPLinearGradientBrush(const TGPPointF &point1, const TGPPointF &point2, unsigned color1, unsigned color2)/* overload */;
	__fastcall TGPLinearGradientBrush(const TGPPoint &point1, const TGPPoint &point2, unsigned color1, unsigned color2)/* overload */;
	__fastcall TGPLinearGradientBrush(const TGPRectF &rect, unsigned color1, unsigned color2, LinearGradientMode mode)/* overload */;
	__fastcall TGPLinearGradientBrush(const TGPRect &rect, unsigned color1, unsigned color2, LinearGradientMode mode)/* overload */;
	__fastcall TGPLinearGradientBrush(const TGPRectF &rect, unsigned color1, unsigned color2, float angle, BOOL isAngleScalable)/* overload */;
	__fastcall TGPLinearGradientBrush(const TGPRect &rect, unsigned color1, unsigned color2, float angle, BOOL isAngleScalable)/* overload */;
	Status __fastcall SetGammaCorrection(BOOL useGammaCorrection);
	Status __fastcall SetInterpolationColors(PGPColor presetColors, Windows::PSingle blendPositions, int count);
public:
	#pragma option push -w-inl
	/* TGPBrush.Destroy */ inline __fastcall virtual ~TGPLinearGradientBrush(void) { }
	#pragma option pop
	
};


class DELPHICLASS TGPHatchBrush;
class PASCALIMPLEMENTATION TGPHatchBrush : public TGPBrush 
{
	typedef TGPBrush inherited;
	
public:
	__fastcall TGPHatchBrush(void)/* overload */;
	__fastcall TGPHatchBrush(HatchStyle hatchStyle, unsigned foreColor, unsigned backColor)/* overload */;
	HatchStyle __fastcall GetHatchStyle(void);
	Status __fastcall GetForegroundColor(/* out */ unsigned &color);
	Status __fastcall GetBackgroundColor(/* out */ unsigned &color);
public:
	#pragma option push -w-inl
	/* TGPBrush.Destroy */ inline __fastcall virtual ~TGPHatchBrush(void) { }
	#pragma option pop
	
};


class DELPHICLASS TGPPen;
class PASCALIMPLEMENTATION TGPPen : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativePen;
	Status lastResult;
	void __fastcall SetNativePen(void * nativePen);
	Status __fastcall SetStatus(Status status);
	__fastcall TGPPen(void * nativePen, Status status)/* overload */;
	
public:
	__fastcall TGPPen(unsigned color, float width)/* overload */;
	__fastcall TGPPen(TGPBrush* brush, float width)/* overload */;
	__fastcall virtual ~TGPPen(void);
	Status __fastcall SetBrush(TGPBrush* brush);
	TGPBrush* __fastcall GetBrush(void);
	DashStyle __fastcall GetDashStyle(void);
	Status __fastcall SetDashStyle(DashStyle dashStyle);
	Status __fastcall SetEndCap(int endCap);
	int __fastcall GetPenType(void);
};


class DELPHICLASS TGPStringFormat;
class PASCALIMPLEMENTATION TGPStringFormat : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeFormat;
	Status lastError;
	Status __fastcall SetStatus(Status newStatus);
	void __fastcall Assign(TGPStringFormat* source);
	
public:
	__fastcall TGPStringFormat(void * clonedStringFormat, Status status)/* overload */;
	__fastcall TGPStringFormat(int formatFlags, Word language)/* overload */;
	__fastcall TGPStringFormat(TGPStringFormat* format)/* overload */;
	__fastcall virtual ~TGPStringFormat(void);
	Status __fastcall SetAlignment(StringAlignment align);
	StringAlignment __fastcall GetAlignment(void);
	Status __fastcall SetLineAlignment(StringAlignment align);
	StringAlignment __fastcall GetLineAlignment(void);
	Status __fastcall SetTrimming(StringTrimming trimming);
	StringTrimming __fastcall GetTrimming(void);
	Status __fastcall SetFormatFlags(int format);
	int __fastcall GetFormatFlags(void);
	Status __fastcall SetHotkeyPrefix(HotkeyPrefix hotkeyPrefix);
	HotkeyPrefix __fastcall GetHotkeyPrefix(void);
};


class PASCALIMPLEMENTATION TGPGraphicsPath : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativePath;
	Status lastResult;
	void __fastcall SetNativePath(void * nativePath);
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPGraphicsPath(void * nativePath)/* overload */;
	__fastcall TGPGraphicsPath(FillMode fillMode)/* overload */;
	__fastcall virtual ~TGPGraphicsPath(void);
	Status __fastcall CloseFigure(void);
	Status __fastcall AddLine(const TGPPointF &pt1, const TGPPointF &pt2)/* overload */;
	Status __fastcall AddLine(float x1, float y1, float x2, float y2)/* overload */;
	Status __fastcall AddLines(PGPPoint points, int count)/* overload */;
	Status __fastcall AddRectangle(const TGPRectF &rect)/* overload */;
	Status __fastcall AddRectangle(const TGPRect &rect)/* overload */;
	Status __fastcall AddArc(const TGPRectF &rect, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall AddArc(float x, float y, float width, float height, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall AddEllipse(const TGPRectF &rect)/* overload */;
	Status __fastcall AddEllipse(float x, float y, float width, float height)/* overload */;
	Status __fastcall Reset(void);
	Status __fastcall AddPie(const TGPRectF &rect, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall AddPie(float x, float y, float width, float height, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall AddPolygon(PGPPointF points, int count)/* overload */;
	Status __fastcall AddPolygon(PGPPoint points, int count)/* overload */;
	Status __fastcall AddCurve(PGPPointF points, int count)/* overload */;
	Status __fastcall AddCurve(PGPPoint points, int count)/* overload */;
	Status __fastcall AddCurve(PGPPoint points, int count, float tension)/* overload */;
	Status __fastcall AddBezier(const TGPPoint &pt1, const TGPPoint &pt2, const TGPPoint &pt3, const TGPPoint &pt4)/* overload */;
	Status __fastcall AddBezier(const TGPPointF &pt1, const TGPPointF &pt2, const TGPPointF &pt3, const TGPPointF &pt4)/* overload */;
	Status __fastcall AddBezier(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4)/* overload */;
	Status __fastcall AddString(WideString string_, int length, TGPFontFamily* family, int style, float emSize, const TGPRectF &layoutRect, TGPStringFormat* format)/* overload */;
};


class DELPHICLASS TGPPathGradientBrush;
class PASCALIMPLEMENTATION TGPPathGradientBrush : public TGPBrush 
{
	typedef TGPBrush inherited;
	
public:
	__fastcall TGPPathGradientBrush(TGPGraphicsPath* path)/* overload */;
	Status __fastcall GetCenterColor(/* out */ unsigned &Color);
	Status __fastcall SetCenterColor(unsigned color);
	int __fastcall GetPointCount(void);
	Status __fastcall GetSurroundColors(PARGB colors, int &count);
	Status __fastcall SetSurroundColors(PARGB colors, int &count);
	Status __fastcall GetCenterPoint(/* out */ TGPPointF &point)/* overload */;
	Status __fastcall GetCenterPoint(/* out */ TGPPoint &point)/* overload */;
	Status __fastcall SetCenterPoint(const TGPPointF &point)/* overload */;
	Status __fastcall SetCenterPoint(const TGPPoint &point)/* overload */;
	Status __fastcall SetWrapMode(WrapMode wrapMode);
	Status __fastcall SetGammaCorrection(BOOL useGammaCorrection)/* overload */;
	Status __fastcall SetInterpolationColors(PARGB presetColors, Windows::PSingle blendPositions, int count);
public:
	#pragma option push -w-inl
	/* TGPBrush.Destroy */ inline __fastcall virtual ~TGPPathGradientBrush(void) { }
	#pragma option pop
	
};


#pragma option push -b
enum TGPImageFormat { ifUndefined, ifMemoryBMP, ifBMP, ifEMF, ifWMF, ifJPEG, ifPNG, ifGIF, ifTIFF, ifEXIF, ifIcon };
#pragma option pop

class PASCALIMPLEMENTATION TGPImage : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeImage;
	Status lastResult;
	Status loadStatus;
	void __fastcall SetNativeImage(void * nativeImage);
	Status __fastcall SetStatus(Status status);
	
public:
	__fastcall TGPImage(void * nativeImage, Status status)/* overload */;
	__fastcall TGPImage(WideString filename, BOOL useEmbeddedColorManagement)/* overload */;
	__fastcall TGPImage(_di_IStream stream, BOOL useEmbeddedColorManagement)/* overload */;
	Status __fastcall SaveAdd(TGPImage* newImage, PEncoderParameters encoderParams)/* overload */;
	Status __fastcall Save(WideString filename, const GUID &clsidEncoder, PEncoderParameters encoderParams = (void *)(0x0))/* overload */;
	Status __fastcall Save(_di_IStream stream, const GUID &clsidEncoder, PEncoderParameters encoderParams = (void *)(0x0))/* overload */;
	__fastcall virtual ~TGPImage(void);
	TGPImageFormat __fastcall GetFormat(void);
	int __fastcall GetPixelFormat(void);
	int __fastcall GetPixelDepth(void);
	bool __fastcall HasPalette(void);
	bool __fastcall HasAlphaChannel(void);
	TGPImage* __fastcall GetThumbnailImage(unsigned thumbWidth, unsigned thumbHeight, ImageAbort callback = 0x0, void * callbackData = (void *)(0x0));
	unsigned __fastcall GetWidth(void);
	unsigned __fastcall GetHeight(void);
	Status __fastcall RotateFlip(RotateFlipType rotateFlipType);
	__property unsigned Width = {read=GetWidth, nodefault};
	__property unsigned Height = {read=GetHeight, nodefault};
};


class DELPHICLASS TGPBitmap;
class PASCALIMPLEMENTATION TGPBitmap : public TGPImage 
{
	typedef TGPImage inherited;
	
public:
	__fastcall TGPBitmap(void * nativeBitmap)/* overload */;
	__fastcall TGPBitmap(_di_IStream stream, BOOL useEmbeddedColorManagement)/* overload */;
	__fastcall TGPBitmap(int width, int height, int format)/* overload */;
	TGPBitmap* __fastcall FromStream(_di_IStream stream, BOOL useEmbeddedColorManagement = false);
	Status __fastcall GetPixel(int x, int y, /* out */ unsigned &color);
	Status __fastcall SetPixel(int x, int y, unsigned color);
	Status __fastcall GetHBITMAP(unsigned colorBackground, /* out */ HBITMAP &hbmReturn);
public:
	#pragma option push -w-inl
	/* TGPImage.Destroy */ inline __fastcall virtual ~TGPBitmap(void) { }
	#pragma option pop
	
};


typedef float TMatrixArray[6];

class DELPHICLASS TGPMatrix;
class PASCALIMPLEMENTATION TGPMatrix : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeMatrix;
	Status lastResult;
	void __fastcall SetNativeMatrix(void * nativeMatrix);
	Status __fastcall SetStatus(Status status);
	__fastcall TGPMatrix(void * nativeMatrix)/* overload */;
	
public:
	__fastcall TGPMatrix(void)/* overload */;
	__fastcall TGPMatrix(float m11, float m12, float m21, float m22, float dx, float dy)/* overload */;
	__fastcall TGPMatrix(const TGPRectF &rect, const TGPPointF &dstplg)/* overload */;
	__fastcall TGPMatrix(const TGPRect &rect, const TGPPoint &dstplg)/* overload */;
	__fastcall virtual ~TGPMatrix(void);
	TGPMatrix* __fastcall Clone(void);
	Status __fastcall GetElements(float const * m);
	Status __fastcall SetElements(float m11, float m12, float m21, float m22, float dx, float dy);
	float __fastcall OffsetX(void);
	float __fastcall OffsetY(void);
	Status __fastcall Reset(void);
	Status __fastcall Multiply(TGPMatrix* matrix, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall Translate(float offsetX, float offsetY, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall Scale(float scaleX, float scaleY, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall Rotate(float angle, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall RotateAt(float angle, const TGPPointF &center, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall Shear(float shearX, float shearY, MatrixOrder order = (MatrixOrder)(0x0));
	Status __fastcall Invert(void);
	Status __fastcall TransformPoints(PGPPointF pts, int count = 0x1)/* overload */;
	Status __fastcall TransformPoints(PGPPoint pts, int count = 0x1)/* overload */;
	Status __fastcall TransformVectors(PGPPointF pts, int count = 0x1)/* overload */;
	Status __fastcall TransformVectors(PGPPoint pts, int count = 0x1)/* overload */;
	BOOL __fastcall IsInvertible(void);
	BOOL __fastcall IsIdentity(void);
	Status __fastcall GetLastStatus(void);
};


class DELPHICLASS TGPGraphics;
class PASCALIMPLEMENTATION TGPGraphics : public TGdiplusBase 
{
	typedef TGdiplusBase inherited;
	
protected:
	void *nativeGraphics;
	Status lastResult;
	void __fastcall SetNativeGraphics(void * graphics);
	Status __fastcall SetStatus(Status status);
	void * __fastcall GetNativeGraphics(void);
	
public:
	__fastcall TGPGraphics(HDC hdc)/* overload */;
	__fastcall TGPGraphics(TGPImage* image)/* overload */;
	__fastcall virtual ~TGPGraphics(void);
	TGPGraphics* __fastcall FromImage(TGPImage* image);
	void __fastcall Flush(FlushIntention intention = (FlushIntention)(0x0));
	Status __fastcall Clear(unsigned color);
	Status __fastcall SetTransform(TGPMatrix* matrix);
	Status __fastcall ResetTransform(void);
	HDC __fastcall GetHDC(void);
	void __fastcall ReleaseHDC(HDC hdc);
	Status __fastcall SetCompositingQuality(int compositingQuality);
	int __fastcall GetCompositingQuality(void);
	TGPFont* __fastcall MakeFont(Graphics::TFont* AFont);
	int __fastcall TextHeight(AnsiString string_, Graphics::TFont* font);
	int __fastcall TextWidth(AnsiString string_, Graphics::TFont* font);
	int __fastcall DrawText(AnsiString string_, int len, Types::TRect &rect, Graphics::TFont* font, unsigned style, Graphics::TColor bkColor = (Graphics::TColor)(0x1fffffff));
	Status __fastcall SetTextRenderingHint(TextRenderingHint newMode);
	TextRenderingHint __fastcall GetTextRenderingHint(void);
	int __fastcall GetSmoothingMode(void);
	Status __fastcall SetSmoothingMode(int smoothingMode);
	Status __fastcall DrawPath(TGPPen* pen, TGPGraphicsPath* path);
	Status __fastcall FillRectangle(TGPBrush* brush, const TGPRectF &rect)/* overload */;
	Status __fastcall FillRectangle(TGPBrush* brush, float x, float y, float width, float height)/* overload */;
	Status __fastcall DrawString(AnsiString string_, int length, TGPFont* font, const TGPRectF &layoutRect, TGPStringFormat* stringFormat, TGPBrush* brush)/* overload */;
	Status __fastcall DrawString(WideString string_, int length, TGPFont* font, const TGPRectF &layoutRect, TGPStringFormat* stringFormat, TGPBrush* brush)/* overload */;
	Status __fastcall DrawString(WideString string_, int length, TGPFont* font, const TGPPointF &origin, TGPBrush* brush)/* overload */;
	Status __fastcall DrawString(WideString string_, int length, TGPFont* font, const TGPPointF &origin, TGPStringFormat* stringFormat, TGPBrush* brush)/* overload */;
	Status __fastcall MeasureString(WideString string_, int length, TGPFont* font, const TGPRectF &layoutRect, TGPStringFormat* stringFormat, /* out */ TGPRectF &boundingBox, System::PInteger codepointsFitted = (void *)(0x0), System::PInteger linesFilled = (void *)(0x0))/* overload */;
	Status __fastcall MeasureString(WideString string_, int length, TGPFont* font, const TGPPointF &origin, TGPStringFormat* stringFormat, /* out */ TGPRectF &boundingBox)/* overload */;
	Status __fastcall MeasureString(WideString string_, int length, TGPFont* font, const TGPRectF &layoutRect, /* out */ TGPRectF &boundingBox)/* overload */;
	Status __fastcall GetLastStatus(void);
	Status __fastcall DrawRectangle(TGPPen* pen, const TGPRectF &rect)/* overload */;
	Status __fastcall DrawRectangle(TGPPen* pen, float x, float y, float width, float height)/* overload */;
	Status __fastcall DrawLine(TGPPen* pen, float x1, float y1, float x2, float y2)/* overload */;
	Status __fastcall DrawArc(TGPPen* pen, float x, float y, float width, float height, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall DrawArc(TGPPen* pen, const TGPRectF &rect, float startAngle, float sweepAngle)/* overload */;
	Status __fastcall DrawEllipse(TGPPen* pen, const TGPRectF &rect)/* overload */;
	Status __fastcall DrawEllipse(TGPPen* pen, float x, float y, float width, float height)/* overload */;
	Status __fastcall DrawEllipse(TGPPen* pen, const TGPRect &rect)/* overload */;
	Status __fastcall DrawEllipse(TGPPen* pen, int x, int y, int width, int height)/* overload */;
	Status __fastcall DrawImage(TGPImage* image, int x, int y)/* overload */;
	Status __fastcall DrawImage(TGPImage* image, const TGPRectF &rect)/* overload */;
	Status __fastcall DrawImage(TGPImage* image, float x, float y, float width, float height)/* overload */;
	Status __fastcall DrawImageRect(TGPImage* image, int x, int y, int w, int h)/* overload */;
	Status __fastcall DrawImageRect(TGPImage* image, const TGPRectF &ARect)/* overload */;
	Status __fastcall FillPolygon(TGPBrush* brush, PGPPointF points, int count)/* overload */;
	Status __fastcall FillPolygon(TGPBrush* brush, PGPPointF points, int count, FillMode fillMode)/* overload */;
	Status __fastcall FillPolygon(TGPBrush* brush, PGPPoint points, int count)/* overload */;
	Status __fastcall FillPolygon(TGPBrush* brush, PGPPoint points, int count, FillMode fillMode)/* overload */;
	Status __fastcall DrawImage(TGPImage* image, const TGPRectF &destRect, float srcx, float srcy, float srcwidth, float srcheight, Unit_ srcUnit, TGPImageAttributes* imageAttributes = (TGPImageAttributes*)(0x0), ImageAbort callback = 0x0, void * callbackData = (void *)(0x0))/* overload */;
	Status __fastcall FillPath(TGPBrush* brush, TGPGraphicsPath* path);
	Status __fastcall FillEllipse(TGPBrush* brush, const TGPRectF &rect)/* overload */;
	Status __fastcall FillEllipse(TGPBrush* brush, float x, float y, float width, float height)/* overload */;
	Status __fastcall FillEllipse(TGPBrush* brush, const TGPRect &rect)/* overload */;
	Status __fastcall FillEllipse(TGPBrush* brush, int x, int y, int width, int height)/* overload */;
	Status __fastcall ExcludeClip(const TGPRectF &rect)/* overload */;
	Status __fastcall ExcludeClip(TGPRegion* region)/* overload */;
	Status __fastcall SetClip(TGPRegion* region, CombineMode combineMode = (CombineMode)(0x0))/* overload */;
	Status __fastcall SetClip(TGPGraphicsPath* path, CombineMode combineMode = (CombineMode)(0x0))/* overload */;
	Status __fastcall ResetClip(void);
};


class DELPHICLASS TFixedStreamAdapter;
class PASCALIMPLEMENTATION TFixedStreamAdapter : public Classes::TStreamAdapter 
{
	typedef Classes::TStreamAdapter inherited;
	
public:
	virtual HRESULT __stdcall Stat(/* out */ tagSTATSTG &statstg, int grfStatFlag);
public:
	#pragma option push -w-inl
	/* TStreamAdapter.Create */ inline __fastcall TFixedStreamAdapter(Classes::TStream* Stream, Classes::TStreamOwnership Ownership) : Classes::TStreamAdapter(Stream, Ownership) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TStreamAdapter.Destroy */ inline __fastcall virtual ~TFixedStreamAdapter(void) { }
	#pragma option pop
	
};


#pragma option push -b
enum TAdvGradientType { gtSolid, gtRadial, gtVertical, gtHorizontal, gtForwardDiagonal, gtBackwardDiagonal, gtAngle, gtHatch, gtPath, gtTexture, gtNone };
#pragma option pop

class DELPHICLASS TAdvGDIPPicture;
class PASCALIMPLEMENTATION TAdvGDIPPicture : public Graphics::TGraphic 
{
	typedef Graphics::TGraphic inherited;
	
private:
	bool FDrawing;
	Classes::TMemoryStream* FDatastream;
	bool FIsEmpty;
	int FWidth;
	int FHeight;
	bool FDoubleBuffered;
	Classes::TNotifyEvent FOnClear;
	Graphics::TTransparentMode FBitmapTransparentMode;
	Graphics::TColor FBitmapTransparentColor;
	AnsiString FID;
	int FPixelDepth;
	bool FHasAlpha;
	bool FHasPalette;
	int FPixelFormat;
	
protected:
	virtual bool __fastcall GetEmpty(void);
	virtual int __fastcall GetHeight(void);
	virtual int __fastcall GetWidth(void);
	virtual void __fastcall SetHeight(int Value);
	virtual void __fastcall SetWidth(int Value);
	virtual void __fastcall ReadData(Classes::TStream* Stream);
	virtual void __fastcall WriteData(Classes::TStream* Stream);
	
public:
	__fastcall virtual TAdvGDIPPicture(void);
	__fastcall virtual ~TAdvGDIPPicture(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	bool __fastcall GetImageSizes(void);
	bool __fastcall GetImageSizesFromFileName(AnsiString FileName);
	virtual void __fastcall Draw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	void __fastcall GDIPDraw(TGPGraphics* Graphics, const Types::TRect &Rect)/* overload */;
	void __fastcall GDIPDraw(TGPGraphics* Graphics, const TGPRectF &Rect)/* overload */;
	void __fastcall FillRect(TGPGraphics* graphics, const TGPRectF &R);
	void __fastcall FillPath(TGPGraphics* graphics, TGPGraphicsPath* Path);
	virtual void __fastcall LoadFromFile(const AnsiString FileName);
	virtual void __fastcall LoadFromStream(Classes::TStream* Stream);
	virtual void __fastcall SaveToStream(Classes::TStream* Stream);
	void __fastcall LoadFromResourceName(unsigned Instance, const AnsiString ResName);
	void __fastcall LoadFromResourceID(unsigned Instance, int ResID);
	void __fastcall LoadFromURL(AnsiString url);
	virtual void __fastcall LoadFromClipboardFormat(Word AFormat, unsigned AData, HPALETTE APalette);
	virtual void __fastcall SaveToClipboardFormat(Word &AFormat, unsigned &AData, HPALETTE &APalette);
	__property bool DoubleBuffered = {read=FDoubleBuffered, write=FDoubleBuffered, nodefault};
	__property Graphics::TColor TransparentColor = {read=FBitmapTransparentColor, write=FBitmapTransparentColor, nodefault};
	__property Graphics::TTransparentMode TransparentMode = {read=FBitmapTransparentMode, write=FBitmapTransparentMode, nodefault};
	__property AnsiString ID = {read=FID, write=FID};
	__property int PixelFormat = {read=FPixelFormat, nodefault};
	__property int PixelDepth = {read=FPixelDepth, nodefault};
	__property bool HasAlpha = {read=FHasAlpha, nodefault};
	__property bool HasPalette = {read=FHasPalette, nodefault};
	
__published:
	__property Classes::TNotifyEvent OnClear = {read=FOnClear, write=FOnClear};
};


#pragma pack(push,4)
struct TGDIPFillParameters
{
	
public:
	TGPGraphics* Graphics;
	TGPGraphicsPath* Path;
	bool Fillpath;
	TGPRectF R;
	TAdvGradientType GT;
	Graphics::TColor ColorFrom;
	Graphics::TColor ColorTo;
	int OpacityFrom;
	int OpacityTo;
	HatchStyle HatchStyle;
	int Angle;
	TAdvGDIPPicture* Image;
	Graphics::TColor BorderColor;
	int BorderWidth;
	DashStyle BorderStyle;
	bool Mirror;
} ;
#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int GlowSpeed;
#define WINGDIPDLL "gdiplus.dll"
static const unsigned aclBlack = 0xff000000;
static const Shortint PenTypeSolidColor = 0x0;
static const Shortint PenTypeHatchFill = 0x1;
static const Shortint PenTypeTextureFill = 0x2;
static const Shortint PenTypePathGradient = 0x3;
static const Shortint PenTypeLinearGradient = 0x4;
static const Shortint PenTypeUnknown = -1;
static const Shortint QualityModeInvalid = -1;
static const Shortint QualityModeDefault = 0x0;
static const Shortint QualityModeLow = 0x1;
static const Shortint QualityModeHigh = 0x2;
static const Shortint CompositingQualityInvalid = -1;
static const Shortint CompositingQualityDefault = 0x0;
static const Shortint CompositingQualityHighSpeed = 0x1;
static const Shortint CompositingQualityHighQuality = 0x2;
static const Shortint CompositingQualityGammaCorrected = 0x3;
static const Shortint CompositingQualityAssumeLinear = 0x4;
static const HatchStyle HatchStyleLargeGrid = (HatchStyle)(4);
static const HatchStyle HatchStyleMin = (HatchStyle)(0);
static const HatchStyle HatchStyleMax = (HatchStyle)(52);
static const Shortint LineCapFlat = 0x0;
static const Shortint LineCapSquare = 0x1;
static const Shortint LineCapRound = 0x2;
static const Shortint LineCapTriangle = 0x3;
static const Shortint LineCapNoAnchor = 0x10;
static const Shortint LineCapSquareAnchor = 0x11;
static const Shortint LineCapRoundAnchor = 0x12;
static const Shortint LineCapDiamondAnchor = 0x13;
static const Shortint LineCapArrowAnchor = 0x14;
static const Byte LineCapCustom = 0xff;
static const Byte LineCapAnchorMask = 0xf0;
static const int FontStyleRegular = 0;
static const int FontStyleBold = 1;
static const int FontStyleItalic = 2;
static const int FontStyleBoldItalic = 3;
static const int FontStyleUnderline = 4;
static const int FontStyleStrikeout = 8;
static const Shortint SmoothingModeInvalid = -1;
static const Shortint SmoothingModeDefault = 0x0;
static const Shortint SmoothingModeHighSpeed = 0x1;
static const Shortint SmoothingModeHighQuality = 0x2;
static const Shortint SmoothingModeNone = 0x3;
static const Shortint SmoothingModeAntiAlias = 0x4;
static const Shortint StringFormatFlagsDirectionRightToLeft = 0x1;
static const Shortint StringFormatFlagsDirectionVertical = 0x2;
static const Shortint StringFormatFlagsNoFitBlackBox = 0x4;
static const Shortint StringFormatFlagsDisplayFormatControl = 0x20;
static const Word StringFormatFlagsNoFontFallback = 0x400;
static const Word StringFormatFlagsMeasureTrailingSpaces = 0x800;
static const Word StringFormatFlagsNoWrap = 0x1000;
static const Word StringFormatFlagsLineLimit = 0x2000;
static const Word StringFormatFlagsNoClip = 0x4000;
static const RotateFlipType RotateNoneFlipY = (RotateFlipType)(6);
static const RotateFlipType Rotate90FlipY = (RotateFlipType)(7);
static const RotateFlipType Rotate180FlipY = (RotateFlipType)(4);
static const RotateFlipType Rotate270FlipY = (RotateFlipType)(5);
static const RotateFlipType RotateNoneFlipXY = (RotateFlipType)(2);
static const RotateFlipType Rotate90FlipXY = (RotateFlipType)(3);
static const RotateFlipType Rotate180FlipXY = (RotateFlipType)(0);
static const RotateFlipType Rotate270FlipXY = (RotateFlipType)(1);
extern PACKAGE int EncoderParameterValueTypeByte;
extern PACKAGE int EncoderParameterValueTypeASCII;
extern PACKAGE int EncoderParameterValueTypeShort;
extern PACKAGE int EncoderParameterValueTypeLong;
extern PACKAGE int EncoderParameterValueTypeRational;
extern PACKAGE int EncoderParameterValueTypeLongRange;
extern PACKAGE int EncoderParameterValueTypeUndefined;
extern PACKAGE int EncoderParameterValueTypeRationalRange;
extern PACKAGE GdiplusStartupInput StartupInput;
extern PACKAGE GdiplusStartupOutput StartupOutput;
extern PACKAGE unsigned gdiplusToken;
extern PACKAGE EncoderParameters __fastcall GetEncoderQualityParameters(int ImageQualityPercentage);
extern PACKAGE void __fastcall SetWin7(bool AWin7);
extern PACKAGE bool __fastcall IsWin7(void);
extern PACKAGE void __fastcall SetGlass(bool AGlass);
extern PACKAGE bool __fastcall IsGlass(void);
extern PACKAGE unsigned __fastcall ColorToARGB(Graphics::TColor Color);
extern PACKAGE void __fastcall ShadowGDIP(TGPGraphics* graphics, const TGPRectF &Rect);
extern PACKAGE void __fastcall FillGDIP(const TGDIPFillParameters &Params);
extern PACKAGE void __fastcall ArrowGDIP(TGPGraphics* graphics, const Types::TPoint &origin, const Types::TPoint &target, int ArrowSize, Graphics::TColor ArrowColor, double ScaleX, double ScaleY);
extern PACKAGE TGPPoint __fastcall MakePoint(int X, int Y)/* overload */;
extern PACKAGE TGPPointF __fastcall MakePoint(float X, float Y)/* overload */;
extern PACKAGE TGPPointF __fastcall MakePointF(float X, float Y);
extern PACKAGE TGPRectF __fastcall MakeRect(float x, float y, float width, float height)/* overload */;
extern PACKAGE GUID __fastcall GetCLSID(TImageType ImageType);
extern PACKAGE _di_IStream __fastcall CreateStream(Graphics::TBitmap* bmp);
extern PACKAGE void __fastcall GetJPGSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE void __fastcall GetPNGSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE void __fastcall GetGIFSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE void __fastcall GetBMPSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE void __fastcall GetTifSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE void __fastcall GetICOSize(const AnsiString sFile, Word &wWidth, Word &wHeight);
extern PACKAGE unsigned __fastcall MakeColor(Byte a, Byte r, Byte g, Byte b)/* overload */;
extern PACKAGE unsigned __fastcall MakeColor(Byte a, Graphics::TColor Color)/* overload */;
extern PACKAGE unsigned __fastcall MakeColor(Byte r, Byte g, Byte b)/* overload */;
extern PACKAGE Byte __fastcall GetAlpha(unsigned color);
extern PACKAGE Byte __fastcall GetRed(unsigned color);
extern PACKAGE Byte __fastcall GetGreen(unsigned color);
extern PACKAGE Byte __fastcall GetBlue(unsigned color);

}	/* namespace Advgdip */
using namespace Advgdip;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advgdip
