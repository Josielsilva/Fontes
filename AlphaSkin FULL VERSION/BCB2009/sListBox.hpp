// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Slistbox.pas' rev: 20.00

#ifndef SlistboxHPP
#define SlistboxHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Slistbox
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsCustomListBox;
class PASCALIMPLEMENTATION TsCustomListBox : public Stdctrls::TListBox
{
	typedef Stdctrls::TListBox inherited;
	
private:
	Scommondata::TsBoundLabel* FBoundLabel;
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	HIDESBASE MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE void __fastcall WMEraseBkGnd(Messages::TWMPaint &Message);
	
protected:
	bool FAutoHideScroll;
	Scommondata::TsCtrlSkinData* FCommonData;
	System::Word FAutoCompleteDelay;
	Sconst::TsDisabledKind FDisabledKind;
	void __fastcall SetAutoHideScroll(const bool Value);
	virtual void __fastcall DrawItem(int Index, const Types::TRect &Rect, Windows::TOwnerDrawState State);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	Acsbutils::TacScrollWnd* ListSW;
	__fastcall virtual TsCustomListBox(Classes::TComponent* AOwner);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TsCustomListBox(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property System::Word AutoCompleteDelay = {read=FAutoCompleteDelay, write=FAutoCompleteDelay, default=500};
	__property bool AutoHideScroll = {read=FAutoHideScroll, write=SetAutoHideScroll, default=1};
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCustomListBox(HWND ParentWindow) : Stdctrls::TListBox(ParentWindow) { }
	
};


class DELPHICLASS TsListBox;
class PASCALIMPLEMENTATION TsListBox : public TsCustomListBox
{
	typedef TsCustomListBox inherited;
	
public:
	/* TsCustomListBox.Create */ inline __fastcall virtual TsListBox(Classes::TComponent* AOwner) : TsCustomListBox(AOwner) { }
	/* TsCustomListBox.Destroy */ inline __fastcall virtual ~TsListBox(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsListBox(HWND ParentWindow) : TsCustomListBox(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Slistbox */
using namespace Slistbox;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SlistboxHPP
