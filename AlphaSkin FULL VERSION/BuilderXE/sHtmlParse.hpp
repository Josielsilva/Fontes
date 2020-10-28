// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sHtmlParse.pas' rev: 22.00

#ifndef ShtmlparseHPP
#define ShtmlparseHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <acntUtils.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shtmlparse
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsHtml;
class PASCALIMPLEMENTATION TsHtml : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	typedef System::DynamicArray<Graphics::TFont*> _TsHtml__1;
	
	
public:
	Graphics::TBitmap* Bitmap;
	int CurX;
	int CurY;
	int Len;
	System::UnicodeString Origin;
	System::UnicodeString UppedText;
	_TsHtml__1 aFonts;
	Types::TRect Area;
	int MaxBmpWidth;
	int MaxBmpHeight;
	int CurWidthValue;
	int CurHeightValue;
	int CurrentRowHeight;
	Classes::TAlignment CurrentRowAlignment;
	__fastcall virtual ~TsHtml(void);
	void __fastcall ShowCut(int i2, int &i1);
	void __fastcall Init(Graphics::TBitmap* Bmp, System::UnicodeString Text, const Types::TRect &aRect);
	bool __fastcall ExecTag(const System::UnicodeString s);
	void __fastcall NewRow(void);
	void __fastcall NewFont(const System::UnicodeString s);
	void __fastcall BackFont(void);
	Types::TRect __fastcall HTMLText(void);
	void __fastcall SetAlignment(const System::UnicodeString Tag);
public:
	/* TObject.Create */ inline __fastcall TsHtml(void) : System::TObject() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define Letters (System::Set<char, 0, 255> () << '\x41' << '\x42' << '\x43' << '\x44' << '\x45' << '\x46' )
#define Digits (System::Set<char, 0, 255> () << '\x30' << '\x31' << '\x32' << '\x33' << '\x34' << '\x35' << '\x36' << '\x37' << '\x38' << '\x39' )
#define DisabledChars (System::Set<char, 0, 255> () << '\xa' << '\xd' )
extern PACKAGE System::UnicodeString __fastcall GetTag(const System::UnicodeString s, int CurPos);
extern PACKAGE void __fastcall SetFont(Graphics::TFont* Font, const System::UnicodeString Tag);

}	/* namespace Shtmlparse */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Shtmlparse;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ShtmlparseHPP
