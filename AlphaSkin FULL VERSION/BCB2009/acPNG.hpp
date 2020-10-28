// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acpng.pas' rev: 20.00

#ifndef AcpngHPP
#define AcpngHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Aczlibex.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acpng
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TColorScheme { csUnknown, csIndexed, csG, csGA, csRGB, csRGBA, csBGR, csBGRA, csCMY, csCMYK, csCIELab, csYCbCr, csPhotoYCC };
#pragma option pop

#pragma option push -b-
enum Acpng__1 { coAlpha, coApplyGamma, coNeedByteSwap, coLabByteRange, coLabChromaOffset };
#pragma option pop

typedef Set<Acpng__1, coAlpha, coLabChromaOffset>  TConvertOptions;

#pragma option push -b-
enum TRawPaletteFormat { pfInterlaced8Triple, pfInterlaced8Quad, pfPlane8Triple, pfPlane8Quad, pfInterlaced16Triple, pfInterlaced16Quad, pfPlane16Triple, pfPlane16Quad };
#pragma option pop

typedef void __fastcall (__closure *TConversionMethod)(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);

class DELPHICLASS TColorManager;
class PASCALIMPLEMENTATION TColorManager : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	typedef DynamicArray<int> _TColorManager__1;
	
	
private:
	bool FChanged;
	System::Byte FSourceBPS;
	System::Byte FTargetBPS;
	System::Byte FSourceSPP;
	System::Byte FTargetSPP;
	float FMainGamma;
	float FDisplayGamma;
	StaticArray<System::Byte, 256> FGammaTable;
	StaticArray<float, 3> FYCbCrCoefficients;
	System::Byte FHSubsampling;
	System::Byte FVSubSampling;
	_TColorManager__1 FCrToRedTable;
	_TColorManager__1 FCbToBlueTable;
	_TColorManager__1 FCrToGreenTable;
	_TColorManager__1 FCbToGreenTable;
	TColorScheme FSourceScheme;
	TColorScheme FTargetScheme;
	TConversionMethod FRowConversion;
	TConvertOptions FSourceOptions;
	TConvertOptions FTargetOptions;
	
protected:
	System::Byte __fastcall ComponentGammaConvert(System::Byte Value);
	System::Word __fastcall ComponentNoConvert16(System::Word Value);
	System::Byte __fastcall ComponentNoConvert8(System::Byte Value);
	System::Byte __fastcall ComponentScaleConvert(System::Word Value);
	System::Byte __fastcall ComponentScaleGammaConvert(System::Word Value);
	System::Byte __fastcall ComponentSwapScaleGammaConvert(System::Word Value);
	System::Byte __fastcall ComponentSwapScaleConvert(System::Word Value);
	System::Word __fastcall ComponentSwapConvert(System::Word Value);
	void __fastcall RowConvertBGR2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertBGR2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertCIELAB2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertCIELAB2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertCMYK2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertCMYK2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertGray(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertIndexed8(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertIndexedBoth16(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertIndexedSource16(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertIndexedTarget16(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertRGB2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertRGB2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertPhotoYCC2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertPhotoYCC2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertYCbCr2BGR(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall RowConvertYCbCr2RGB(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	void __fastcall CreateYCbCrLookup(void);
	Graphics::TPixelFormat __fastcall GetPixelFormat(int Index);
	void __fastcall PrepareConversion(void);
	void __fastcall SetSourceBitsPerSample(const System::Byte Value);
	void __fastcall SetSourceColorScheme(const TColorScheme Value);
	void __fastcall SetSourceSamplesPerPixel(const System::Byte Value);
	void __fastcall SetTargetBitsPerSample(const System::Byte Value);
	void __fastcall SetTargetColorScheme(const TColorScheme Value);
	void __fastcall SetTargetSamplesPerPixel(const System::Byte Value);
	
public:
	__fastcall TColorManager(void);
	void __fastcall ConvertRow(void * *Source, const int Source_Size, void * Target, unsigned Count, System::Byte Mask);
	HPALETTE __fastcall CreateColorPalette(void * *Data, const int Data_Size, TRawPaletteFormat DataFormat, unsigned ColorCount, bool RGB);
	HPALETTE __fastcall CreateGrayscalePalette(bool MinimumIsWhite);
	void __fastcall Error(const System::UnicodeString Msg);
	void __fastcall SetGamma(float MainGamma, float DisplayGamma = 2.200000E+00);
	__property System::Byte SourceBitsPerSample = {read=FSourceBPS, write=SetSourceBitsPerSample, nodefault};
	__property TColorScheme SourceColorScheme = {read=FSourceScheme, write=SetSourceColorScheme, nodefault};
	__property TConvertOptions SourceOptions = {read=FSourceOptions, write=FSourceOptions, nodefault};
	__property Graphics::TPixelFormat SourcePixelFormat = {read=GetPixelFormat, index=0, nodefault};
	__property System::Byte SourceSamplesPerPixel = {read=FSourceSPP, write=SetSourceSamplesPerPixel, nodefault};
	__property System::Byte TargetBitsPerSample = {read=FTargetBPS, write=SetTargetBitsPerSample, nodefault};
	__property TColorScheme TargetColorScheme = {read=FTargetScheme, write=SetTargetColorScheme, nodefault};
	__property TConvertOptions TargetOptions = {read=FTargetOptions, write=FTargetOptions, nodefault};
	__property Graphics::TPixelFormat TargetPixelFormat = {read=GetPixelFormat, index=1, nodefault};
	__property System::Byte TargetSamplesPerPixel = {read=FTargetSPP, write=SetTargetSamplesPerPixel, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TColorManager(void) { }
	
};


typedef DynamicArray<System::Byte> TByteArray;

typedef DynamicArray<unsigned> TCardinalArray;

typedef DynamicArray<float> TFloatArray;

class DELPHICLASS TLZ77Decoder;
class PASCALIMPLEMENTATION TLZ77Decoder : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Aczlibex::TZStreamRec FStream;
	int FZLibResult;
	int FFlushMode;
	bool FAutoReset;
	int __fastcall GetAvailableInput(void);
	int __fastcall GetAvailableOutput(void);
	
public:
	__fastcall TLZ77Decoder(int FlushMode, bool AutoReset);
	void __fastcall Decode(void * &Source, void * &Dest, int PackedSize, int UnpackedSize);
	void __fastcall DecodeEnd(void);
	void __fastcall DecodeInit(void);
	void __fastcall Encode(void * Source, void * Dest, unsigned Count, unsigned &BytesStored);
	__property int AvailableInput = {read=GetAvailableInput, nodefault};
	__property int AvailableOutput = {read=GetAvailableOutput, nodefault};
	__property int ZLibResult = {read=FZLibResult, nodefault};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TLZ77Decoder(void) { }
	
};


#pragma option push -b-
enum Acpng__4 { ioBigEndian, ioUseGamma };
#pragma option pop

typedef Set<Acpng__4, ioBigEndian, ioUseGamma>  TImageOptions;

#pragma option push -b-
enum TCompressionType { ctUnknown, ctNone, ctLZ77 };
#pragma option pop

struct TImageProperties;
typedef TImageProperties *PImageProperties;

struct TImageProperties
{
	
public:
	TImageOptions Options;
	unsigned Width;
	unsigned Height;
	TColorScheme ColorScheme;
	System::Byte BitsPerSample;
	System::Byte SamplesPerPixel;
	System::Byte BitsPerPixel;
	TCompressionType Compression;
	float FileGamma;
	bool Interlaced;
	bool HasAlpha;
	System::Byte FilterMode;
};


typedef StaticArray<char, 4> TChunkType;

#pragma pack(push,1)
struct TPNGChunkHeader
{
	
public:
	unsigned Length;
	TChunkType ChunkType;
};
#pragma pack(pop)


class DELPHICLASS TPNGGraphic;
class PASCALIMPLEMENTATION TPNGGraphic : public Graphics::TBitmap
{
	typedef Graphics::TBitmap inherited;
	
private:
	TColorManager* FColorManager;
	Types::TRect FProgressRect;
	unsigned FBasePosition;
	Classes::TStream* FStream;
	TImageProperties FImageProperties;
	TLZ77Decoder* FDecoder;
	int FIDATSize;
	void *FRawBuffer;
	void *FCurrentSource;
	TPNGChunkHeader FHeader;
	unsigned FCurrentCRC;
	int FSourceBPP;
	HPALETTE FPalette;
	TByteArray FTransparency;
	Graphics::TColor FTransparentColor;
	Graphics::TColor FBackgroundColor;
	void __fastcall ApplyFilter(System::Byte Filter, System::PByte Line, System::PByte PrevLine, System::PByte Target, int BPP, int BytesPerRow);
	bool __fastcall IsChunk(TChunkType ChunkType);
	unsigned __fastcall LoadAndSwapHeader(void);
	void __fastcall LoadBackgroundColor(const void *Description);
	void __fastcall LoadIDAT(const void *Description);
	void __fastcall LoadTransparency(const void *Description);
	void __fastcall ReadDataAndCheckCRC(void);
	void __fastcall ReadRow(void * RowBuffer, int BytesPerRow);
	int __fastcall SetupColorDepth(int ColorType, int BitDepth);
	
public:
	bool Reflected;
	__fastcall virtual TPNGGraphic(void);
	__fastcall virtual ~TPNGGraphic(void);
	virtual void __fastcall Draw(Graphics::TCanvas* ACanvas, const Types::TRect &Rect);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__classmethod bool __fastcall CanLoad(const System::UnicodeString FileName)/* overload */;
	__classmethod bool __fastcall CanLoad(Classes::TStream* Stream)/* overload */;
	virtual void __fastcall LoadFromStream(Classes::TStream* Stream);
	bool __fastcall ReadImageProperties(Classes::TStream* Stream, unsigned ImageIndex);
	__property Graphics::TColor BackgroundColor = {read=FBackgroundColor, nodefault};
	__property TByteArray Transparency = {read=FTransparency};
	__property TColorManager* ColorManager = {read=FColorManager};
	__property TImageProperties ImageProperties = {read=FImageProperties, write=FImageProperties};
};


//-- var, const, procedure ---------------------------------------------------
#define DefaultDisplayGamma  (2.200000E+00)
#define gesInvalidImage L"Cannot load image. Invalid or unexpected %s image format."
#define gesInvalidColorFormat L"Invalid color format in %s file."
#define gesUnsupportedFeature L"Cannot load image. %s not supported for %s files."
#define gesInvalidCRC L"Cannot load image. CRC error found in %s file."
#define gesCompression L"Cannot load image. Compression error found in %s file."
#define gesExtraCompressedData L"Cannot load image. Extra compressed data found in %s file."\
	""
#define gesInvalidPalette L"Cannot load image. Palette in %s file is invalid."
#define gesUnknownCriticalChunk L"Cannot load PNG image. Unexpected but critical chunk detec"\
	"ted."
#define gesIndexedNotSupported L"Conversion between indexed and non-indexed pixel formats i"\
	"s not supported."
#define gesConversionUnsupported L"Color conversion failed. Could not find a proper method."
#define gesInvalidSampleDepth L"Color depth is invalid. Bits per sample must be 1, 2, 4, 8"\
	" or 16."
#define gesInvalidPixelDepth L"Sample count per pixel does not correspond to the given co"\
	"lor scheme."
#define gesInvalidSubSampling L"Subsampling value is invalid. Allowed are 1, 2 and 4."
#define gesVerticalSubSamplingError L"Vertical subsampling value must be <= horizontal subsampli"\
	"ng value."
#define gesPreparing L"Preparing..."
#define gesLoadingData L"Loading data..."
#define gesUpsampling L"Upsampling..."
#define gesTransfering L"Transfering..."
extern PACKAGE StaticArray<System::Byte, 8> PNGMagic;
extern PACKAGE bool UseACPng;
extern PACKAGE void __fastcall SwapLong(System::PInteger P, unsigned Count)/* overload */;
extern PACKAGE unsigned __fastcall SwapLong(unsigned Value)/* overload */;
extern PACKAGE System::Byte __fastcall ClampByte(int Value);
extern PACKAGE System::Word __fastcall MulDiv16(System::Word Number, System::Word Numerator, System::Word Denominator);
extern PACKAGE HICON __fastcall MakeIcon32(Graphics::TBitmap* Img, bool UpdateAlphaChannell = false);
extern PACKAGE HICON __fastcall MakeCompIcon(TPNGGraphic* Img, Graphics::TColor BGColor = (Graphics::TColor)(0x1fffffff));
extern PACKAGE void __fastcall UpdateTransPixels(Graphics::TBitmap* Img);

}	/* namespace Acpng */
using namespace Acpng;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcpngHPP
