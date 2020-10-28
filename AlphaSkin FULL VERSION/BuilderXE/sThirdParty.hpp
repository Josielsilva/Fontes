// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sThirdParty.pas' rev: 22.00

#ifndef SthirdpartyHPP
#define SthirdpartyHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <sCommonData.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <sBitBtn.hpp>	// Pascal unit
#include <sSpeedButton.hpp>	// Pascal unit
#include <sToolBar.hpp>	// Pascal unit

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
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sthirdparty;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SthirdpartyHPP
