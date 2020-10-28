// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acskinpack.pas' rev: 21.00

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
	System::UnicodeString FileName;
	bool IsBitmap;
	Classes::TMemoryStream* FileStream;
};


typedef DynamicArray<TacImageItem> TacImageItems;

class DELPHICLASS TacSkinConvertor;
class PASCALIMPLEMENTATION TacSkinConvertor : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
public:
	int ImageCount;
	TacImageItems Files;
	Classes::TMemoryStream* Options;
	Classes::TMemoryStream* PackedData;
	void __fastcall Clear(void);
	__fastcall virtual ~TacSkinConvertor(void);
public:
	/* TObject.Create */ inline __fastcall TacSkinConvertor(void) : Classes::TPersistent() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define acAbbr L"ASzf"
extern PACKAGE void __fastcall PackDir(const System::UnicodeString SrcPath, const System::UnicodeString FileName);
extern PACKAGE void __fastcall UnpackSkinFile(const System::UnicodeString Filename, const System::UnicodeString DestDirectory);
extern PACKAGE void __fastcall LoadSkinFromFile(const System::UnicodeString FileName, TacSkinConvertor* &Convertor, bool FreePackedData = true);
extern PACKAGE void __fastcall ExtractPackedData(TacSkinConvertor* &Convertor);

}	/* namespace Acskinpack */
using namespace Acskinpack;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcskinpackHPP
