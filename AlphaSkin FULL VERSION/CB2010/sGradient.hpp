// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sgradient.pas' rev: 21.00

#ifndef SgradientHPP
#define SgradientHPP

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
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Smaskdata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sgradient
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall PaintGrad(Graphics::TBitmap* Bmp, const Types::TRect &aRect, const System::UnicodeString Gradient)/* overload */;
extern PACKAGE void __fastcall PaintGrad(Graphics::TBitmap* Bmp, const Types::TRect &aRect, const Sconst::TsGradArray Data, int OffsetX = 0x0, int OffsetY = 0x0)/* overload */;
extern PACKAGE void __fastcall PaintGradTxt(Graphics::TBitmap* Bmp, const Types::TRect &aRect, const Sconst::TsGradArray Data, Graphics::TBitmap* TextureBmp, const Types::TRect &TextureRect, System::Byte TextureAlpha);
extern PACKAGE void __fastcall PrepareGradArray(const System::UnicodeString GradientStr, Sconst::TsGradArray &GradArray);

}	/* namespace Sgradient */
using namespace Sgradient;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgradientHPP
