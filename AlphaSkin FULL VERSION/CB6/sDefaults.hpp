// Borland C++ Builder
// Copyright (c) 1995, 2002 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sDefaults.pas' rev: 6.00

#ifndef sDefaultsHPP
#define sDefaultsHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <ComCtrls.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sdefaults
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TacThirdPartyTypes { tpEdit, tpButton, tpBitBtn, tpCheckBox, tpComboBox, tpGrid, tpGroupBox, tpListView, tpPanel, tpTreeView, tpwwEdit, tpGridEh, tpVirtualTree, tpPageControl, tpTabControl, tpToolBar, tpStatusBar, tpSpeedButton };
#pragma option pop

typedef AnsiString sDefaults__1[18];

typedef AnsiString sDefaults__2[18];

//-- var, const, procedure ---------------------------------------------------
#define acLastSupportedType (TacThirdPartyTypes)(17)
#define sl_Third_Edit "TEdit\r\nTMemo\r\nTMaskEdit\r\nTLabeledEdit\r\nTHotKey\r\n"\
	"TListBox\r\nTCheckListBox\r\nTRichEdit\r\nTDateTimePicker"
#define sl_Third_Panel "TPanel"
#define sl_Third_Button "TButton"
#define sl_Third_BitBtn "TBitBtn"
#define sl_Third_CheckBox "TCheckBox\r\nTRadioButton\r\nTGroupButton"
#define sl_Third_GroupBox "TGroupBox\r\nTRadioGroup"
#define sl_Third_Grid "TStringGrid\r\nTDrawGrid"
#define sl_Third_TreeView "TTreeView"
#define sl_Third_ComboBox "TComboBox\r\nTColorBox"
#define sl_Third_ListView "TListView"
static const char sl_Third_WWEdit = '\x20';
static const char sl_Third_GridEH = '\x20';
static const char sl_Third_VirtualTree = '\x20';
#define sl_Third_PageControl "TPageControl"
#define sl_Third_TabControl "TTabControl"
#define sl_Third_ToolBar "TToolBar"
#define sl_Third_StatusBar "TStatusBar"
#define sl_Third_SpeedButton "TSpeedButton"
extern PACKAGE AnsiString acThirdNames[18];
extern PACKAGE AnsiString acThirdCaptions[18];
#define DefSkinsDir "c:\\Skins"
static const Shortint DefNumGlyphs = 0x1;
#define DefDisabledGlyphKind (System::Set<sConst__2, dgBlended, dgGrayed> () << sConst__2(0) )
#define DefDisabledKind (System::Set<sConst__3, dkBlended, dkGrayed> () << sConst__3(0) )
#define DefDisabledBlend  (4.000000E-01)
static const bool DefMakeSkinMenu = false;
static const Shortint DefGlyphBlend = 0x0;
#define DefWeekends (System::Set<Comctrls::TCalDayOfWeek, dowMonday, dowLocaleDefault> () << Comctrls::TCalDayOfWeek(6) )
static const bool ChangeFormsInDesign = false;

}	/* namespace Sdefaults */
using namespace Sdefaults;
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// sDefaults
