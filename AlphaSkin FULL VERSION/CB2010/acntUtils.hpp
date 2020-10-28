// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acntutils.pas' rev: 21.00

#ifndef AcntutilsHPP
#define AcntutilsHPP

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
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acntutils
{
//-- type declarations -------------------------------------------------------
typedef Sysutils::TSearchRec TacSearchRec;

typedef Classes::TStrings TacStrings;

typedef Classes::TStringList TacStringList;

typedef Classes::TFileStream TacFileStream;

typedef _WIN32_FIND_DATAW TacWIN32FindData;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int __fastcall GetCaptionFontSize(void);
extern PACKAGE HFONT __fastcall acGetTitleFont(void);
extern PACKAGE int __fastcall CheckLimits(int Value, int MinValue, int MaxValue);
extern PACKAGE System::Byte __fastcall IntToByte(const int Value);
extern PACKAGE __int64 __fastcall HexToInt(System::AnsiString HexStr);
extern PACKAGE void __fastcall GetIniSections(Classes::TStringList* IniList, Classes::TStringList* SectionsList);
extern PACKAGE void __fastcall GetIniSection(const System::UnicodeString Section, Classes::TStrings* Sections, Classes::TStrings* Strings);
extern PACKAGE System::UnicodeString __fastcall ReadIniString(Classes::TStringList* IniList, Classes::TStringList* SectionsList, const System::UnicodeString Section, const System::UnicodeString Ident, const System::UnicodeString Default);
extern PACKAGE int __fastcall ReadIniInteger(Classes::TStringList* IniList, Classes::TStringList* SectionsList, const System::UnicodeString Section, const System::UnicodeString Ident, int Default);
extern PACKAGE void __fastcall Alert(void)/* overload */;
extern PACKAGE void __fastcall Alert(const System::UnicodeString s)/* overload */;
extern PACKAGE void __fastcall Alert(int i)/* overload */;
extern PACKAGE System::Extended __fastcall StringToFloat(System::UnicodeString S);
extern PACKAGE System::UnicodeString __fastcall BoolToStr(bool b);
extern PACKAGE Messages::TMessage __fastcall MakeMessage(int Msg, int WParam, int LParam, int Rsult);
extern PACKAGE short __fastcall GetCents(System::Extended Value);
extern PACKAGE System::UnicodeString __fastcall iff(bool L, const System::UnicodeString s1, const System::UnicodeString s2);
extern PACKAGE System::TObject* __fastcall iffo(bool L, System::TObject* o1, System::TObject* o2);
extern PACKAGE int __fastcall iffi(bool L, int i1, int i2);
extern PACKAGE bool __fastcall Between(int Value, int i1, int i2);
extern PACKAGE int __fastcall SumTrans(int i1, int i2);
extern PACKAGE int __fastcall Maxi(int i1, int i2);
extern PACKAGE int __fastcall Mini(int i1, int i2);
extern PACKAGE int __fastcall LimitIt(int Value, int MinValue, int MaxValue);
extern PACKAGE void __fastcall Changei(int &i1, int &i2);
extern PACKAGE bool __fastcall IsValidFloat(const System::AnsiString Value, System::Extended &RetValue);
extern PACKAGE System::UnicodeString __fastcall FormatFloatStr(const System::AnsiString S, bool Thousands);
extern PACKAGE bool __fastcall acGetAnimation(void);
extern PACKAGE void __fastcall acSetAnimation(bool Value);
extern PACKAGE bool __fastcall RectIsVisible(const Types::TRect &ParentRect, const Types::TRect &Rect);
extern PACKAGE bool __fastcall RectInRect(const Types::TRect &BigRect, const Types::TRect &SmallRect);
extern PACKAGE Types::TRect __fastcall RotateRect(const Types::TRect &R);
extern PACKAGE Types::TRect __fastcall RectsAnd(const Types::TRect &R1, const Types::TRect &R2);
extern PACKAGE Types::TPoint __fastcall OffsetPoint(const Types::TPoint &p, int x, int y);
extern PACKAGE int __fastcall WidthOf(const Types::TRect &r, bool CheckNegative = false);
extern PACKAGE int __fastcall HeightOf(const Types::TRect &r, bool CheckNegative = false);
extern PACKAGE bool __fastcall SubStrInclude(const System::UnicodeString SubString, const System::UnicodeString s, bool CaseInsensitive);
extern PACKAGE System::UnicodeString __fastcall CorrectString(const System::UnicodeString s);
extern PACKAGE int __fastcall acWordPosition(const int N, const System::UnicodeString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE int __fastcall WordPosition(const int N, const System::AnsiString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE System::AnsiString __fastcall ExtractWord(int N, const System::AnsiString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE int __fastcall acWordCount(const System::UnicodeString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE int __fastcall WordCount(const System::AnsiString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE int __fastcall GetWordNumber(const System::UnicodeString W, const System::UnicodeString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE System::AnsiString __fastcall AnsiProperCase(const System::AnsiString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE System::AnsiString __fastcall MakeStr(char C, int N);
extern PACKAGE System::UnicodeString __fastcall DelRSpace(const System::UnicodeString S);
extern PACKAGE System::UnicodeString __fastcall DelESpace(const System::UnicodeString S);
extern PACKAGE System::UnicodeString __fastcall DelBSpace(const System::UnicodeString S);
extern PACKAGE System::UnicodeString __fastcall DelChars(const System::UnicodeString S, System::WideChar Chr);
extern PACKAGE System::UnicodeString __fastcall ReplaceStr(const System::UnicodeString S, const System::UnicodeString Srch, const System::UnicodeString Replace);
extern PACKAGE System::UnicodeString __fastcall ExtractSubStr(const System::AnsiString S, int &Pos, const Sysutils::TSysCharSet &Delims);
extern PACKAGE bool __fastcall IsEmptyStr(const System::AnsiString S, const Sysutils::TSysCharSet &EmptyChars);
extern PACKAGE bool __fastcall IsNTFamily(void);
extern PACKAGE Sconst::TCacheInfo __fastcall MakeCacheInfo(Graphics::TBitmap* Bmp, int x = 0x0, int y = 0x0);
extern PACKAGE System::AnsiString __fastcall AddChar(char C, const System::AnsiString S, int N);
extern PACKAGE System::AnsiString __fastcall AddCharR(char C, const System::AnsiString S, int N);
extern PACKAGE System::UnicodeString __fastcall OemToAnsiStr(const System::UnicodeString OemStr);
extern PACKAGE bool __fastcall IsWordPresent(const System::UnicodeString W, const System::UnicodeString S, const Sysutils::TSysCharSet &WordDelims);
extern PACKAGE double __fastcall CurRound(double f);
extern PACKAGE bool __fastcall DeleteRequest(void);
extern PACKAGE bool __fastcall CustomRequest(const System::UnicodeString s);
extern PACKAGE void __fastcall ShowWarning(const System::UnicodeString S);
extern PACKAGE void __fastcall ShowError(const System::UnicodeString s);
extern PACKAGE void __fastcall Delay(int MSecs);
extern PACKAGE bool __fastcall IsIDERunning(void);
extern PACKAGE BOOL __fastcall IsWOW64Proc(void);
extern PACKAGE bool __fastcall HasProperty(System::TObject* Component, System::UnicodeString PropName);
extern PACKAGE System::TObject* __fastcall GetObjProp(System::TObject* Component, System::UnicodeString PropName);
extern PACKAGE void __fastcall SetObjProp(System::TObject* Component, System::UnicodeString PropName, System::TObject* Value);
extern PACKAGE bool __fastcall CheckSetProp(System::TObject* Component, System::UnicodeString PropName, System::UnicodeString Value);
extern PACKAGE bool __fastcall SetSetPropValue(System::TObject* Component, System::UnicodeString PropName, System::UnicodeString ValueName, bool Value);
extern PACKAGE int __fastcall GetIntProp(System::TObject* Component, System::UnicodeString PropName);
extern PACKAGE void __fastcall SetIntProp(System::TObject* Component, System::UnicodeString PropName, int Value);
extern PACKAGE System::UnicodeString __fastcall GetSystemDir(void);
extern PACKAGE System::UnicodeString __fastcall NormalDir(const System::UnicodeString DirName);
extern PACKAGE __int64 __fastcall GetFileSize(const System::UnicodeString FileName)/* overload */;
extern PACKAGE BOOL __fastcall acFindNextFile(unsigned hFindFile, _WIN32_FIND_DATAW &lpFindFileData);
extern PACKAGE unsigned __fastcall acFindFirstFile(System::WideChar * lpFileName, _WIN32_FIND_DATAW &lpFindFileData);
extern PACKAGE bool __fastcall ValidFileName(const System::UnicodeString FileName);
extern PACKAGE bool __fastcall acDirExists(const System::UnicodeString Name);
extern PACKAGE System::UnicodeString __fastcall ShortToLongFileName(const System::UnicodeString ShortName);
extern PACKAGE System::UnicodeString __fastcall LongToShortFileName(const System::UnicodeString LongName);
extern PACKAGE System::UnicodeString __fastcall ShortToLongPath(System::UnicodeString ShortName);
extern PACKAGE System::UnicodeString __fastcall LongToShortPath(System::UnicodeString LongName);
extern PACKAGE void __fastcall CopyFiles(System::UnicodeString SrcMask, System::UnicodeString SrcDir, System::UnicodeString DstDir);
extern PACKAGE bool __fastcall acCreateDir(const System::UnicodeString DirName);
extern PACKAGE bool __fastcall acRemoveDir(const System::UnicodeString DirName);
extern PACKAGE bool __fastcall acSetCurrentDir(const System::UnicodeString DirName);
extern PACKAGE System::UnicodeString __fastcall acGetCurrentDir(void);
extern PACKAGE bool __fastcall acDeleteFile(const System::UnicodeString FileName);
extern PACKAGE bool __fastcall acCopyFile(const System::UnicodeString ExistingFileName, const System::UnicodeString NewFileName, bool bFailIfExists);
extern PACKAGE int __fastcall acFileSetAttr(const System::UnicodeString FileName, unsigned Attr);
extern PACKAGE unsigned __fastcall acFileGetAttr(const System::UnicodeString FileName);
extern PACKAGE int __fastcall acFindFirst(const System::UnicodeString Path, int Attr, Sysutils::TSearchRec &F);
extern PACKAGE int __fastcall acFindNext(Sysutils::TSearchRec &F);
extern PACKAGE void __fastcall acFindClose(Sysutils::TSearchRec &F);
extern PACKAGE bool __fastcall ClearDir(const System::UnicodeString Path, bool Delete);
extern PACKAGE System::UnicodeString __fastcall GetAppName(void);
extern PACKAGE System::UnicodeString __fastcall GetAppPath(void);
extern PACKAGE Graphics::TIcon* __fastcall GetIconForFile(const System::UnicodeString FullFileName, int Flag);
extern PACKAGE void __fastcall GetDirs(const System::UnicodeString Path, Classes::TStrings* Items);
extern PACKAGE bool __fastcall acSameText(const System::UnicodeString S1, const System::UnicodeString S2);
extern PACKAGE void __fastcall acFillString(System::UnicodeString &S, int nCount, System::WideChar C);
extern PACKAGE System::UnicodeString __fastcall acMakeString(System::WideChar C, int nCount);

}	/* namespace Acntutils */
using namespace Acntutils;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcntutilsHPP
