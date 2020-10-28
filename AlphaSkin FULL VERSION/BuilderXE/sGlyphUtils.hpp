// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sGlyphUtils.pas' rev: 22.00

#ifndef SglyphutilsHPP
#define SglyphutilsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <acntUtils.hpp>	// Pascal unit
#include <sGraphUtils.hpp>	// Pascal unit
#include <sDefaults.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <acAlphaImageList.hpp>	// Pascal unit
#include <sSpeedButton.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sglyphutils
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsGlyphMode;
class PASCALIMPLEMENTATION TsGlyphMode : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
private:
	Controls::TWinControl* FOwner;
	Imglist::TCustomImageList* FImages;
	int FImageIndex;
	int FImageIndexHot;
	int FImageIndexPressed;
	void __fastcall SetBlend(const int Value);
	System::UnicodeString __fastcall GetHint(void);
	void __fastcall SetHint(const System::UnicodeString Value);
	void __fastcall SetGrayed(const bool Value);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	void __fastcall SetImageIndex(const int Value);
	void __fastcall SetImageIndexHot(const int Value);
	void __fastcall SetImageIndexPressed(const int Value);
	int __fastcall ReadBlend(void);
	bool __fastcall ReadGrayed(void);
	bool __fastcall BtnIsReady(void);
	
public:
	Sspeedbutton::TsSpeedButton* Btn;
	__fastcall TsGlyphMode(Controls::TWinControl* AOwner);
	void __fastcall Invalidate(void);
	int __fastcall ImageCount(void);
	int __fastcall Width(void);
	int __fastcall Height(void);
	
__published:
	__property int Blend = {read=ReadBlend, write=SetBlend, nodefault};
	__property bool Grayed = {read=ReadGrayed, write=SetGrayed, nodefault};
	__property System::UnicodeString Hint = {read=GetHint, write=SetHint};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property int ImageIndexHot = {read=FImageIndexHot, write=SetImageIndexHot, default=-1};
	__property int ImageIndexPressed = {read=FImageIndexPressed, write=SetImageIndexPressed, default=-1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TsGlyphMode(void) { }
	
};


typedef System::StaticArray<System::UnicodeString, 5> Sglyphutils__2;

//-- var, const, procedure ---------------------------------------------------
static const System::ShortInt iBTN_OPENFILE = 0x0;
static const System::ShortInt iBTN_OPENFOLDER = 0x1;
static const System::ShortInt iBTN_DATE = 0x2;
static const System::ShortInt iBTN_ELLIPSIS = 0x3;
static const System::ShortInt iBTN_CALC = 0x4;
extern PACKAGE Sglyphutils__2 acGlyphsResNames;
extern PACKAGE Acalphaimagelist::TsAlphaImageList* acResImgList;

}	/* namespace Sglyphutils */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sglyphutils;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SglyphutilsHPP
