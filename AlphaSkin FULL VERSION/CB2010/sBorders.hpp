// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sborders.pas' rev: 21.00

#ifndef SbordersHPP
#define SbordersHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Smaskdata.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sborders
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Types::TRect __fastcall PaintBorderFast(HDC DC, const Types::TRect &aRect, int MinBorderWidth, Scommondata::TsCommonData* SkinData, int State);
extern PACKAGE void __fastcall CopyMask(int DstX1, int DstY1, int DstX2, int DstY2, int SrcX1, int SrcY1, int SrcX2, int SrcY2, Graphics::TBitmap* Bmp, HRGN Region, const Smaskdata::TsMaskData &MaskData, bool FillRgn = false);
extern PACKAGE void __fastcall PaintRgnBorder(Graphics::TBitmap* Bmp, HRGN Region, bool Filling, const Smaskdata::TsMaskData &MaskData, int State);

}	/* namespace Sborders */
using namespace Sborders;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SbordersHPP
