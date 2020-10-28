// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smessages.pas' rev: 21.00

#ifndef SmessagesHPP
#define SmessagesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smessages
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct TacSectionInfo
{
	
public:
	int SkinIndex;
	System::UnicodeString Name;
	bool RepaintNeeded;
};
#pragma pack(pop)


typedef TacSectionInfo *PacSectionInfo;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE unsigned SM_ALPHACMD;
static const ShortInt AC_SETNEWSKIN = 0x1;
static const ShortInt AC_REMOVESKIN = 0x2;
static const ShortInt AC_REFRESH = 0x3;
static const ShortInt AC_GETPROVIDER = 0x4;
static const ShortInt AC_GETCACHE = 0x5;
static const ShortInt AC_ENDPARENTUPDATE = 0x6;
static const ShortInt AC_CTRLHANDLED = 0x7;
static const ShortInt AC_UPDATING = 0x8;
static const ShortInt AC_URGENTPAINT = 0x9;
static const ShortInt AC_PREPARING = 0xa;
static const ShortInt AC_GETHALFVISIBLE = 0xb;
static const ShortInt AC_UPDATESECTION = 0xd;
static const ShortInt AC_DROPPEDDOWN = 0xe;
static const ShortInt AC_SETSECTION = 0xf;
static const ShortInt AC_STOPFADING = 0x10;
static const ShortInt AC_SETBGCHANGED = 0x11;
static const ShortInt AC_INVALIDATE = 0x12;
static const ShortInt AC_CHILDCHANGED = 0x13;
static const ShortInt AC_SETCHANGEDIFNECESSARY = 0x14;
static const ShortInt AC_GETCONTROLCOLOR = 0x15;
static const ShortInt AC_SETHALFVISIBLE = 0x16;
static const ShortInt AC_PREPARECACHE = 0x17;
static const ShortInt AC_DRAWANIMAGE = 0x18;
static const ShortInt AC_CONTROLLOADED = 0x19;
static const ShortInt AC_GETSKININDEX = 0x1a;
static const ShortInt AC_GETSERVICEINT = 0x1b;
static const ShortInt AC_UPDATECHILDREN = 0x1c;
static const ShortInt AC_MOUSEENTER = 0x1d;
static const ShortInt AC_MOUSELEAVE = 0x1e;
static const ShortInt AC_BEGINUPDATE = 0x1f;
static const ShortInt AC_ENDUPDATE = 0x20;
static const ShortInt AC_GETBG = 0x22;
static const ShortInt AC_GETDISKIND = 0x23;
static const ShortInt AC_GETSKINSTATE = 0x24;
static const ShortInt AC_PRINTING = 0x26;
static const ShortInt AC_BEFORESCROLL = 0x33;
static const ShortInt AC_AFTERSCROLL = 0x34;
static const ShortInt AC_GETAPPLICATION = 0x3c;
static const ShortInt AC_PARENTCLOFFSET = 0x3d;
static const Word WM_DRAWMENUBORDER = 0xbcb3;
static const Word WM_DRAWMENUBORDER2 = 0xbcb4;

}	/* namespace Smessages */
using namespace Smessages;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SmessagesHPP
