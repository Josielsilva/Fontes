// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Accoolbar.pas' rev: 20.00

#ifndef AccoolbarHPP
#define AccoolbarHPP

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
#include <Toolwin.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Accoolbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsCoolBar;
class PASCALIMPLEMENTATION TsCoolBar : public Comctrls::TCoolBar
{
	typedef Comctrls::TCoolBar inherited;
	
private:
	int FGripIndex;
	int FGripMask;
	System::UnicodeString FGripsection;
	int FGripTexture;
	Scommondata::TsCommonData* FCommonData;
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TWMNCPaint &Message);
	virtual void __fastcall ACPaint(HDC DC = (HDC)(0x0), bool SendUpdated = true);
	void __fastcall PrepareCache(void);
	HIDESBASE int __fastcall GetCaptionSize(Comctrls::TCoolBand* Band);
	HIDESBASE int __fastcall GetCaptionFontHeight(void);
	int __fastcall GetGripSize(Comctrls::TCoolBand* Band);
	void __fastcall UpdateGripIndex(void);
	
public:
	__fastcall virtual TsCoolBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TsCoolBar(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCoolBar(HWND ParentWindow) : Comctrls::TCoolBar(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Accoolbar */
using namespace Accoolbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AccoolbarHPP
