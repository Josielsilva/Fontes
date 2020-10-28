// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smaskdata.pas' rev: 21.00

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
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smaskdata
{
//-- type declarations -------------------------------------------------------
struct TsMaskData
{
	
public:
	Graphics::TBitmap* Bmp;
	System::UnicodeString ClassName;
	System::UnicodeString PropertyName;
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
};


typedef TsMaskData *PsMaskData;

struct TsPatternData
{
	
public:
	Jpeg::TJPEGImage* Img;
	System::UnicodeString ClassName;
	System::UnicodeString PropertyName;
};


struct TsFontColor
{
	
public:
	Graphics::TColor Color;
	Graphics::TColor Left;
	Graphics::TColor Top;
	Graphics::TColor Right;
	Graphics::TColor Bottom;
};


struct TsGenState
{
	
public:
	Graphics::TColor Color;
	TsFontColor FontColor;
	int GradientPercent;
	System::UnicodeString GradientData;
	Sconst::TsGradArray GradientArray;
	int ImagePercent;
	Graphics::TColor GlowColor;
	System::Byte GlowSize;
	int Transparency;
};


typedef StaticArray<TsGenState, 2> TsProps;

struct TsGeneralData
{
	
public:
	System::UnicodeString ParentClass;
	System::UnicodeString ClassName;
	int States;
	TsProps Props;
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
	System::UnicodeString GradientData;
	Sconst::TsGradArray GradientArray;
	int ImagePercent;
	StaticArray<int, 5> FontColor;
	Graphics::TColor HotColor;
	int HotTransparency;
	int HotGradientPercent;
	System::UnicodeString HotGradientData;
	Sconst::TsGradArray HotGradientArray;
	int HotImagePercent;
	StaticArray<int, 5> HotFontColor;
	bool FadingEnabled;
	int FadingIterations;
	Graphics::TColor HotGlowColor;
	Graphics::TColor GlowColor;
	System::Byte HotGlowSize;
	System::Byte GlowSize;
};


typedef DynamicArray<TsMaskData> TsMaskArray;

typedef DynamicArray<TsPatternData> TsPatternArray;

typedef DynamicArray<TsGeneralData> TsGeneralDataArray;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int __fastcall WidthOfImage(const TsMaskData &md);
extern PACKAGE int __fastcall HeightOfImage(const TsMaskData &md);

}	/* namespace Smaskdata */
using namespace Smaskdata;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SmaskdataHPP
