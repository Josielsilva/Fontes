// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sDefaults.pas' rev: 22.00

#ifndef SdefaultsHPP
#define SdefaultsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sdefaults
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TacThirdPartyTypes { tpEdit, tpButton, tpBitBtn, tpCheckBox, tpComboBox, tpGrid, tpGroupBox, tpListView, tpPanel, tpTreeView, tpwwEdit, tpGridEh, tpVirtualTree, tpPageControl, tpTabControl, tpToolBar, tpStatusBar, tpSpeedButton };
#pragma option pop

typedef System::StaticArray<System::UnicodeString, 18> Sdefaults__1;

typedef System::StaticArray<System::UnicodeString, 18> Sdefaults__2;

//-- var, const, procedure ---------------------------------------------------
static const TacThirdPartyTypes acLastSupportedType = (TacThirdPartyTypes)(17);
#define sl_Third_Edit L"TEdit\r\nTMemo\r\nTMaskEdit\r\nTLabeledEdit\r\nTHotKey\r\n"\
	L"TListBox\r\nTCheckListBox\r\nTRichEdit\r\nTDateTimePicker"
#define sl_Third_Panel L"TPanel"
#define sl_Third_Button L"TButton"
#define sl_Third_BitBtn L"TBitBtn"
#define sl_Third_CheckBox L"TCheckBox\r\nTRadioButton\r\nTGroupButton"
#define sl_Third_GroupBox L"TGroupBox\r\nTRadioGroup"
#define sl_Third_Grid L"TStringGrid\r\nTDrawGrid"
#define sl_Third_TreeView L"TTreeView"
#define sl_Third_ComboBox L"TComboBox\r\nTColorBox"
#define sl_Third_ListView L"TListView"
static const System::WideChar sl_Third_WWEdit = (System::WideChar)(0x20);
static const System::WideChar sl_Third_GridEH = (System::WideChar)(0x20);
static const System::WideChar sl_Third_VirtualTree = (System::WideChar)(0x20);
#define sl_Third_PageControl L"TPageControl"
#define sl_Third_TabControl L"TTabControl"
#define sl_Third_ToolBar L"TToolBar"
#define sl_Third_StatusBar L"TStatusBar"
#define sl_Third_SpeedButton L"TSpeedButton"
extern PACKAGE Sdefaults__1 acThirdNames;
extern PACKAGE Sdefaults__2 acThirdCaptions;
#define DefSkinsDir L"c:\\Skins"
static const System::ShortInt DefNumGlyphs = 0x1;
#define DefDisabledGlyphKind (System::Set<Sconst::Sconst__2, Sconst::Sconst__2::dgBlended, Sconst::Sconst__2::dgGrayed> () << Sconst::Sconst__2::dgBlended )
#define DefDisabledKind (System::Set<Sconst::Sconst__3, Sconst::Sconst__3::dkBlended, Sconst::Sconst__3::dkGrayed> () << Sconst::Sconst__3::dkBlended )
#define DefDisabledBlend  (4.000000E-01)
static const bool DefMakeSkinMenu = false;
static const System::ShortInt DefGlyphBlend = 0x0;
#define DefWeekends (System::Set<Comctrls::TCalDayOfWeek, Comctrls::TCalDayOfWeek::dowMonday, Comctrls::TCalDayOfWeek::dowLocaleDefault> () << Comctrls::TCalDayOfWeek::dowSunday )
static const bool ChangeFormsInDesign = false;

}	/* namespace Sdefaults */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sdefaults;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SdefaultsHPP
