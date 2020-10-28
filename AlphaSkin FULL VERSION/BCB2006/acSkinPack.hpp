// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acskinpack.pas' rev: 10.00

#ifndef AcskinpackHPP
#define AcskinpackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acskinpack
{
//-- type declarations -------------------------------------------------------
struct TacImageItem
{
	
public:
	AnsiString FileName;
	bool IsBitmap;
	Classes::TMemoryStream* FileStream;
} ;

typedef DynamicArray<TacImageItem >  TacImageItems;

class DELPHICLASS TacSkinConvertor;
class PASCALIMPLEMENTATION TacSkinConvertor : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
public:
	int ImageCount;
	DynamicArray<TacImageItem >  Files;
	Classes::TMemoryStream* Options;
	Classes::TMemoryStream* PackedData;
	void __fastcall Clear(void);
	__fastcall virtual ~TacSkinConvertor(void);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TacSkinConvertor(void) : Classes::TPersistent() { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
#define acAbbr "ASzf"
extern PACKAGE void __fastcall PackDir(const AnsiString SrcPath, const AnsiString FileName);
extern PACKAGE void __fastcall UnpackSkinFile(const AnsiString Filename, const AnsiString DestDirectory);
extern PACKAGE void __fastcall LoadSkinFromFile(const AnsiString FileName, TacSkinConvertor* &Convertor, bool FreePackedData = true);
extern PACKAGE void __fastcall ExtractPackedData(TacSkinConvertor* &Convertor);

}	/* namespace Acskinpack */
using namespace Acskinpack;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Acskinpack
