// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smaskdata.pas' rev: 11.00

#ifndef SmaskdataHPP
#define SmaskdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Jpeg.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smaskdata
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
struct TsMaskData
{
	
public:
	Graphics::TBitmap* Bmp;
	AnsiString ClassName;
	AnsiString PropertyName;
	Types::TRect R;
	short ImageCount;
	short MaskType;
	short BorderWidth;
	short DrawMode;
	Sconst::TacImgType ImgType;
	System::TObject* Manager;
	short WL;
	short WT;
	short WR;
	short WB;
} ;
#pragma pack(pop)

typedef TsMaskData *PsMaskData;

#pragma pack(push,4)
struct TsPatternData
{
	
public:
	Jpeg::TJPEGImage* Img;
	AnsiString ClassName;
	AnsiString PropertyName;
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TsFontColor
{
	
public:
	Graphics::TColor Color;
	Graphics::TColor Left;
	Graphics::TColor Top;
	Graphics::TColor Right;
	Graphics::TColor Bottom;
} ;
#pragma pack(pop)

#pragma pack(push,4)
struct TsGenState
{
	
public:
	Graphics::TColor Color;
	TsFontColor FontColor;
	int GradientPercent;
	AnsiString GradientData;
	DynamicArray<Sconst::TsGradPie >  GradientArray;
	int ImagePercent;
	Graphics::TColor GlowColor;
	Byte GlowSize;
	int Transparency;
} ;
#pragma pack(pop)

typedef TsGenState TsProps[2];

#pragma pack(push,4)
struct TsGeneralData
{
	
public:
	AnsiString ParentClass;
	AnsiString ClassName;
	int States;
	TsGenState Props[2];
	bool GiveOwnFont;
	bool ReservedBoolean;
	bool ShowFocus;
	int GlowCount;
	int GlowMargin;
	int BorderIndex;
	int ImgTL;
	int ImgTR;
	int ImgBL;
	int ImgBR;
	Graphics::TColor Color;
	int Transparency;
	int GradientPercent;
	AnsiString GradientData;
	DynamicArray<Sconst::TsGradPie >  GradientArray;
	int ImagePercent;
	int FontColor[5];
	Graphics::TColor HotColor;
	int HotTransparency;
	int HotGradientPercent;
	AnsiString HotGradientData;
	DynamicArray<Sconst::TsGradPie >  HotGradientArray;
	int HotImagePercent;
	int HotFontColor[5];
	bool FadingEnabled;
	int FadingIterations;
	Graphics::TColor HotGlowColor;
	Graphics::TColor GlowColor;
	Byte HotGlowSize;
	Byte GlowSize;
} ;
#pragma pack(pop)

typedef DynamicArray<TsMaskData >  TsMaskArray;

typedef DynamicArray<TsPatternData >  TsPatternArray;

typedef DynamicArray<TsGeneralData >  TsGeneralDataArray;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int __fastcall WidthOfImage(const TsMaskData &md);
extern PACKAGE int __fastcall HeightOfImage(const TsMaskData &md);

}	/* namespace Smaskdata */
using namespace Smaskdata;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Smaskdata
