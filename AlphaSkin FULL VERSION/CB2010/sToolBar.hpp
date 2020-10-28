// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Stoolbar.pas' rev: 21.00

#ifndef StoolbarHPP
#define StoolbarHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Toolwin.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Stoolbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsToolBar;
class PASCALIMPLEMENTATION TsToolBar : public Comctrls::TToolBar
{
	typedef Comctrls::TToolBar inherited;
	
private:
	int HotButtonIndex;
	Scommondata::TsCommonData* FCommonData;
	Sconst::TsDisabledKind FDisabledKind;
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TWMNCPaint &Message);
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	
protected:
	Comctrls::TToolButton* DroppedButton;
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	int __fastcall OffsetX(void);
	int __fastcall OffsetY(void);
	void __fastcall PrepareCache(void);
	void __fastcall OurAdvancedCustomDraw(Comctrls::TToolBar* Sender, const Types::TRect &ARect, Comctrls::TCustomDrawStage Stage, bool &DefaultDraw);
	void __fastcall OurAdvancedCustomDrawButton(Comctrls::TToolBar* Sender, Comctrls::TToolButton* Button, Comctrls::TCustomDrawState State, Comctrls::TCustomDrawStage Stage, Comctrls::TTBCustomDrawFlags &Flags, bool &DefaultDraw);
	Types::TRect __fastcall GetButtonRect(int Index);
	int __fastcall IndexByMouse(const Types::TPoint &MousePos);
	void __fastcall RepaintButton(int Index);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	__fastcall virtual TsToolBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TsToolBar(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	void __fastcall UpdateEvents(void);
	
__published:
	__property Flat = {default=1};
	__property Sconst::TsDisabledKind BtnDisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsToolBar(HWND ParentWindow) : Comctrls::TToolBar(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Stoolbar */
using namespace Stoolbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// StoolbarHPP
