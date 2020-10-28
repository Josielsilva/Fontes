// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sdefaults.pas' rev: 20.00

#ifndef SdefaultsHPP
#define SdefaultsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sdefaults
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TacThirdPartyTypes { tpEdit, tpButton, tpBitBtn, tpCheckBox, tpComboBox, tpGrid, tpGroupBox, tpListView, tpPanel, tpTreeView, tpwwEdit, tpGridEh, tpVirtualTree, tpPageControl, tpTabControl, tpToolBar, tpStatusBar, tpSpeedButton };
#pragma option pop

typedef StaticArray<System::UnicodeString, 18> Sdefaults__1;

typedef StaticArray<System::UnicodeString, 18> Sdefaults__2;

//-- var, const, procedure ---------------------------------------------------
static const TacThirdPartyTypes acLastSupportedType = (TacThirdPartyTypes)(17);
#define sl_Third_Edit L"TEdit\r\nTMemo\r\nTMaskEdit\r\nTLabeledEdit\r\nTHotKey\r\n"\
	"TListBox\r\nTCheckListBox\r\nTRichEdit\r\nTDateTimePicker"
#define sl_Third_Panel L"TPanel"
#define sl_Third_Button L"TButton"
#define sl_Third_BitBtn L"TBitBtn"
#define sl_Third_CheckBox L"TCheckBox\r\nTRadioButton\r\nTGroupButton"
#define sl_Third_GroupBox L"TGroupBox\r\nTRadioGroup"
#define sl_Third_Grid L"TStringGrid\r\nTDrawGrid"
#define sl_Third_TreeView L"TTreeView"
#define sl_Third_ComboBox L"TComboBox\r\nTColorBox"
#define sl_Third_ListView L"TListView"
static const WideChar sl_Third_WWEdit = (WideChar)(0x20);
static const WideChar sl_Third_GridEH = (WideChar)(0x20);
static const WideChar sl_Third_VirtualTree = (WideChar)(0x20);
#define sl_Third_PageControl L"TPageControl"
#define sl_Third_TabControl L"TTabControl"
#define sl_Third_ToolBar L"TToolBar"
#define sl_Third_StatusBar L"TStatusBar"
#define sl_Third_SpeedButton L"TSpeedButton"
extern PACKAGE Sdefaults__1 acThirdNames;
extern PACKAGE Sdefaults__2 acThirdCaptions;
#define DefSkinsDir L"c:\\Skins"
static const ShortInt DefNumGlyphs = 0x1;
#define DefDisabledGlyphKind (Set<Sconst::Sconst__2, dgBlended, dgGrayed> () << dgBlended )
#define DefDisabledKind (Set<Sconst::Sconst__3, dkBlended, dkGrayed> () << dkBlended )
#define DefDisabledBlend  (4.000000E-01)
static const bool DefMakeSkinMenu = false;
static const ShortInt DefGlyphBlend = 0x0;
#define DefWeekends (Set<Comctrls::TCalDayOfWeek, dowMonday, dowLocaleDefault> () << dowSunday )
static const bool ChangeFormsInDesign = false;

}	/* namespace Sdefaults */
using namespace Sdefaults;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SdefaultsHPP
