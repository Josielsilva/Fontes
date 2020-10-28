// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sthirdparty.pas' rev: 11.00

#ifndef SthirdpartyHPP
#define SthirdpartyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit
#include <Stoolbar.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sthirdparty
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Classes::TStringList* ThirdPartySkipForms;
extern PACKAGE void __fastcall (*InitDevEx)(const bool Active);
extern PACKAGE bool __fastcall (*CheckDevEx)(const Controls::TControl* Control);
extern PACKAGE void __fastcall (*RefreshDevEx)(void);
extern PACKAGE int __fastcall GetImageCount(Imglist::TCustomImageList* ImgList);
extern PACKAGE void __fastcall DrawBtnGlyph(Controls::TControl* Button, Graphics::TCanvas* Canvas = (Graphics::TCanvas*)(0x0));
extern PACKAGE void __fastcall CopyToolBtnGlyph(Stoolbar::TsToolBar* ToolBar, Comctrls::TToolButton* Button, Comctrls::TCustomDrawState State, Comctrls::TCustomDrawStage Stage, Comctrls::TTBCustomDrawFlags &Flags, Graphics::TBitmap* BtnBmp)/* overload */;
extern PACKAGE void __fastcall CopyToolBtnGlyph(Comctrls::TToolBar* ToolBar, Comctrls::TToolButton* Button, Comctrls::TCustomDrawState State, Comctrls::TCustomDrawStage Stage, Comctrls::TTBCustomDrawFlags &Flags, Graphics::TBitmap* BtnBmp)/* overload */;

}	/* namespace Sthirdparty */
using namespace Sthirdparty;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sthirdparty
