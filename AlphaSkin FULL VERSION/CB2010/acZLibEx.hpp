// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Aczlibex.pas' rev: 21.00

#ifndef AczlibexHPP
#define AczlibexHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Aczlibex
{
//-- type declarations -------------------------------------------------------
typedef void * __fastcall (*TZAlloc)(void * opaque, int items, int size);

typedef void __fastcall (*TZFree)(void * opaque, void * block);

#pragma option push -b-
enum TZCompressionLevel { zcNone, zcFastest, zcDefault, zcMax, zcLevel1, zcLevel2, zcLevel3, zcLevel4, zcLevel5, zcLevel6, zcLevel7, zcLevel8, zcLevel9 };
#pragma option pop

#pragma option push -b-
enum TZStrategy { zsDefault, zsFiltered, zsHuffman, zsRLE, zsFixed };
#pragma option pop

#pragma option push -b-
enum TZError { zeError, zeStreamError, zeDataError, zeMemoryError, zeBufferError, zeVersionError };
#pragma option pop

#pragma pack(push,1)
struct TZStreamRec
{
	
public:
	System::WideChar *next_in;
	int avail_in;
	int total_in;
	System::WideChar *next_out;
	int avail_out;
	int total_out;
	System::WideChar *msg;
	void *state;
	TZAlloc zalloc;
	TZFree zfree;
	void *opaque;
	int data_type;
	int adler;
	int reserved;
};
#pragma pack(pop)


class DELPHICLASS TCustomZStream;
class PASCALIMPLEMENTATION TCustomZStream : public Classes::TStream
{
	typedef Classes::TStream inherited;
	
private:
	Classes::TStream* FStream;
	__int64 FStreamPos;
	Classes::TNotifyEvent FOnProgress;
	TZStreamRec FZStream;
	StaticArray<System::WideChar, 65536> FBuffer;
	
protected:
	__fastcall TCustomZStream(Classes::TStream* stream);
	DYNAMIC void __fastcall DoProgress(void);
	__property Classes::TNotifyEvent OnProgress = {read=FOnProgress, write=FOnProgress};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TCustomZStream(void) { }
	
};


class DELPHICLASS TZCompressionStream;
class PASCALIMPLEMENTATION TZCompressionStream : public TCustomZStream
{
	typedef TCustomZStream inherited;
	
private:
	float __fastcall GetCompressionRate(void);
	
public:
	__fastcall TZCompressionStream(Classes::TStream* dest, TZCompressionLevel compressionLevel)/* overload */;
	__fastcall TZCompressionStream(Classes::TStream* dest, TZCompressionLevel compressionLevel, int windowBits, int memLevel, TZStrategy strategy)/* overload */;
	__fastcall virtual ~TZCompressionStream(void);
	virtual int __fastcall Read(void *buffer, int count);
	virtual int __fastcall Write(const void *buffer, int count);
	virtual int __fastcall Seek(int offset, System::Word origin)/* overload */;
	__property float CompressionRate = {read=GetCompressionRate};
	__property OnProgress;
	
/* Hoisted overloads: */
	
public:
	inline __int64 __fastcall  Seek(const __int64 Offset, Classes::TSeekOrigin Origin){ return Classes::TStream::Seek(Offset, Origin); }
	
};


class DELPHICLASS TZDecompressionStream;
class PASCALIMPLEMENTATION TZDecompressionStream : public TCustomZStream
{
	typedef TCustomZStream inherited;
	
public:
	__fastcall TZDecompressionStream(Classes::TStream* source)/* overload */;
	__fastcall TZDecompressionStream(Classes::TStream* source, int windowBits)/* overload */;
	__fastcall virtual ~TZDecompressionStream(void);
	virtual int __fastcall Read(void *buffer, int count);
	virtual int __fastcall Write(const void *buffer, int count);
	virtual int __fastcall Seek(int offset, System::Word origin)/* overload */;
	__property OnProgress;
	
/* Hoisted overloads: */
	
public:
	inline __int64 __fastcall  Seek(const __int64 Offset, Classes::TSeekOrigin Origin){ return Classes::TStream::Seek(Offset, Origin); }
	
};


typedef TMetaClass* EZLibErrorClass;

class DELPHICLASS EZLibError;
class PASCALIMPLEMENTATION EZLibError : public Sysutils::Exception
{
	typedef Sysutils::Exception inherited;
	
private:
	int FErrorCode;
	
public:
	__fastcall EZLibError(int code, const System::UnicodeString dummy)/* overload */;
	__fastcall EZLibError(TZError error, const System::UnicodeString dummy)/* overload */;
	__property int ErrorCode = {read=FErrorCode, write=FErrorCode, nodefault};
public:
	/* Exception.CreateFmt */ inline __fastcall EZLibError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	/* Exception.CreateRes */ inline __fastcall EZLibError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	/* Exception.CreateResFmt */ inline __fastcall EZLibError(int Ident, System::TVarRec const *Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	/* Exception.CreateHelp */ inline __fastcall EZLibError(const System::UnicodeString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EZLibError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EZLibError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EZLibError(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EZLibError(void) { }
	
};


class DELPHICLASS EZCompressionError;
class PASCALIMPLEMENTATION EZCompressionError : public EZLibError
{
	typedef EZLibError inherited;
	
public:
	/* EZLibError.Create */ inline __fastcall EZCompressionError(int code, const System::UnicodeString dummy)/* overload */ : EZLibError(code, dummy) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EZCompressionError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size) : EZLibError(Msg, Args, Args_Size) { }
	/* Exception.CreateRes */ inline __fastcall EZCompressionError(int Ident)/* overload */ : EZLibError(Ident) { }
	/* Exception.CreateResFmt */ inline __fastcall EZCompressionError(int Ident, System::TVarRec const *Args, const int Args_Size)/* overload */ : EZLibError(Ident, Args, Args_Size) { }
	/* Exception.CreateHelp */ inline __fastcall EZCompressionError(const System::UnicodeString Msg, int AHelpContext) : EZLibError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EZCompressionError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size, int AHelpContext) : EZLibError(Msg, Args, Args_Size, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EZCompressionError(int Ident, int AHelpContext)/* overload */ : EZLibError(Ident, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EZCompressionError(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_Size, int AHelpContext)/* overload */ : EZLibError(ResStringRec, Args, Args_Size, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EZCompressionError(void) { }
	
};


class DELPHICLASS EZDecompressionError;
class PASCALIMPLEMENTATION EZDecompressionError : public EZLibError
{
	typedef EZLibError inherited;
	
public:
	/* EZLibError.Create */ inline __fastcall EZDecompressionError(int code, const System::UnicodeString dummy)/* overload */ : EZLibError(code, dummy) { }
	
public:
	/* Exception.CreateFmt */ inline __fastcall EZDecompressionError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size) : EZLibError(Msg, Args, Args_Size) { }
	/* Exception.CreateRes */ inline __fastcall EZDecompressionError(int Ident)/* overload */ : EZLibError(Ident) { }
	/* Exception.CreateResFmt */ inline __fastcall EZDecompressionError(int Ident, System::TVarRec const *Args, const int Args_Size)/* overload */ : EZLibError(Ident, Args, Args_Size) { }
	/* Exception.CreateHelp */ inline __fastcall EZDecompressionError(const System::UnicodeString Msg, int AHelpContext) : EZLibError(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall EZDecompressionError(const System::UnicodeString Msg, System::TVarRec const *Args, const int Args_Size, int AHelpContext) : EZLibError(Msg, Args, Args_Size, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall EZDecompressionError(int Ident, int AHelpContext)/* overload */ : EZLibError(Ident, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall EZDecompressionError(System::PResStringRec ResStringRec, System::TVarRec const *Args, const int Args_Size, int AHelpContext)/* overload */ : EZLibError(ResStringRec, Args, Args_Size, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~EZDecompressionError(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define ZLIB_VERSION L"1.2.3"
static const Word ZLIB_VERNUM = 0x1230;
static const ShortInt Z_DEFLATED = 0x8;
static const ShortInt Z_NO_FLUSH = 0x0;
static const ShortInt Z_PARTIAL_FLUSH = 0x1;
static const ShortInt Z_SYNC_FLUSH = 0x2;
static const ShortInt Z_FULL_FLUSH = 0x3;
static const ShortInt Z_FINISH = 0x4;
static const ShortInt Z_BLOCK = 0x5;
static const ShortInt Z_OK = 0x0;
static const ShortInt Z_STREAM_END = 0x1;
static const ShortInt Z_NEED_DICT = 0x2;
static const ShortInt Z_ERRNO = -1;
static const ShortInt Z_STREAM_ERROR = -2;
static const ShortInt Z_DATA_ERROR = -3;
static const ShortInt Z_MEM_ERROR = -4;
static const ShortInt Z_BUF_ERROR = -5;
static const ShortInt Z_VERSION_ERROR = -6;
extern PACKAGE int __fastcall InflateInit(TZStreamRec &stream);
extern PACKAGE void __fastcall ZCompress(const void * inBuffer, int inSize, /* out */ void * &outBuffer, /* out */ int &outSize, TZCompressionLevel level = (TZCompressionLevel)(0x2));
extern PACKAGE void __fastcall ZCompress2(const void * inBuffer, int inSize, /* out */ void * &outBuffer, /* out */ int &outSize, TZCompressionLevel level, int windowBits, int memLevel, TZStrategy strategy);
extern PACKAGE void __fastcall ZDecompress(const void * inBuffer, int inSize, /* out */ void * &outBuffer, /* out */ int &outSize, int outEstimate = 0x0);
extern PACKAGE void __fastcall ZDecompress2(const void * inBuffer, int inSize, /* out */ void * &outBuffer, /* out */ int &outSize, int windowBits, int outEstimate = 0x0);
extern PACKAGE System::UnicodeString __fastcall ZCompressStr(const System::UnicodeString s, TZCompressionLevel level = (TZCompressionLevel)(0x2));
extern PACKAGE System::UnicodeString __fastcall ZCompressStrEx(const System::UnicodeString s, TZCompressionLevel level = (TZCompressionLevel)(0x2));
extern PACKAGE System::UnicodeString __fastcall ZCompressStr2(const System::UnicodeString s, TZCompressionLevel level, int windowBits, int memLevel, TZStrategy strategy);
extern PACKAGE System::UnicodeString __fastcall ZCompressStrWeb(const System::UnicodeString s);
extern PACKAGE System::UnicodeString __fastcall ZDecompressStr(const System::UnicodeString s);
extern PACKAGE System::UnicodeString __fastcall ZDecompressStrEx(const System::UnicodeString s);
extern PACKAGE System::UnicodeString __fastcall ZDecompressStr2(const System::UnicodeString s, int windowBits);
extern PACKAGE void __fastcall ZCompressStream(Classes::TStream* inStream, Classes::TStream* outStream, TZCompressionLevel level = (TZCompressionLevel)(0x2));
extern PACKAGE void __fastcall ZCompressStream2(Classes::TStream* inStream, Classes::TStream* outStream, TZCompressionLevel level, int windowBits, int memLevel, TZStrategy strategy);
extern PACKAGE void __fastcall ZCompressStreamWeb(Classes::TStream* inStream, Classes::TStream* outStream);
extern PACKAGE void __fastcall ZDecompressStream(Classes::TStream* inStream, Classes::TStream* outStream);
extern PACKAGE void __fastcall ZDecompressStream2(Classes::TStream* inStream, Classes::TStream* outStream, int windowBits);
extern PACKAGE int __fastcall ZAdler32(int adler, const void *buffer, int size);
extern PACKAGE int __fastcall ZCrc32(int crc, const void *buffer, int size);
extern PACKAGE int __fastcall inflateReset(TZStreamRec &strm);
extern PACKAGE int __fastcall inflate(TZStreamRec &strm, int flush);
extern PACKAGE int __fastcall inflateEnd(TZStreamRec &strm);

}	/* namespace Aczlibex */
using namespace Aczlibex;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AczlibexHPP
