// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Shtmlparse.pas' rev: 11.00

#ifndef ShtmlparseHPP
#define ShtmlparseHPP

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
#include <Acntutils.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shtmlparse
{
//-- type declarations -------------------------------------------------------
typedef DynamicArray<Graphics::TFont* >  sHtmlParse__2;

class DELPHICLASS TsHtml;
class PASCALIMPLEMENTATION TsHtml : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	Graphics::TBitmap* Bitmap;
	int CurX;
	int CurY;
	int Len;
	AnsiString Origin;
	AnsiString UppedText;
	DynamicArray<Graphics::TFont* >  aFonts;
	Types::TRect Area;
	int MaxBmpWidth;
	int MaxBmpHeight;
	int CurWidthValue;
	int CurHeightValue;
	int CurrentRowHeight;
	Classes::TAlignment CurrentRowAlignment;
	__fastcall virtual ~TsHtml(void);
	void __fastcall ShowCut(int i2, int &i1);
	void __fastcall Init(Graphics::TBitmap* Bmp, AnsiString Text, const Types::TRect &aRect);
	bool __fastcall ExecTag(const AnsiString s);
	void __fastcall NewRow(void);
	void __fastcall NewFont(const AnsiString s);
	void __fastcall BackFont(void);
	Types::TRect __fastcall HTMLText();
	void __fastcall SetAlignment(const AnsiString Tag);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TsHtml(void) : System::TObject() { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
#define Letters (Set<char, 0, 255> () << '\x41' << '\x42' << '\x43' << '\x44' << '\x45' << '\x46' )
#define Digits (Set<char, 0, 255> () << '\x30' << '\x31' << '\x32' << '\x33' << '\x34' << '\x35' << '\x36' << '\x37' << '\x38' << '\x39' )
#define DisabledChars (Set<char, 0, 255> () << '\xa' << '\xd' )
extern PACKAGE AnsiString __fastcall GetTag(const AnsiString s, int CurPos);
extern PACKAGE void __fastcall SetFont(Graphics::TFont* Font, const AnsiString Tag);

}	/* namespace Shtmlparse */
using namespace Shtmlparse;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Shtmlparse
