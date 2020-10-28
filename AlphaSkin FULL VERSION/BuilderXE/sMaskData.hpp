// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sMaskData.pas' rev: 22.00

#ifndef SmaskdataHPP
#define SmaskdataHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <jpeg.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smaskdata
{
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TsMaskData
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

struct DECLSPEC_DRECORD TsPatternData
{
	
public:
	Jpeg::TJPEGImage* Img;
	System::UnicodeString ClassName;
	System::UnicodeString PropertyName;
};


struct DECLSPEC_DRECORD TsFontColor
{
	
public:
	Graphics::TColor Color;
	Graphics::TColor Left;
	Graphics::TColor Top;
	Graphics::TColor Right;
	Graphics::TColor Bottom;
};


struct DECLSPEC_DRECORD TsGenState
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


typedef System::StaticArray<TsGenState, 2> TsProps;

struct DECLSPEC_DRECORD TsGeneralData
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
	System::StaticArray<int, 5> FontColor;
	Graphics::TColor HotColor;
	int HotTransparency;
	int HotGradientPercent;
	System::UnicodeString HotGradientData;
	Sconst::TsGradArray HotGradientArray;
	int HotImagePercent;
	System::StaticArray<int, 5> HotFontColor;
	bool FadingEnabled;
	int FadingIterations;
	Graphics::TColor HotGlowColor;
	Graphics::TColor GlowColor;
	System::Byte HotGlowSize;
	System::Byte GlowSize;
};


typedef System::DynamicArray<TsMaskData> TsMaskArray;

typedef System::DynamicArray<TsPatternData> TsPatternArray;

typedef System::DynamicArray<TsGeneralData> TsGeneralDataArray;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int __fastcall WidthOfImage(const TsMaskData &md);
extern PACKAGE int __fastcall HeightOfImage(const TsMaskData &md);

}	/* namespace Smaskdata */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Smaskdata;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SmaskdataHPP
