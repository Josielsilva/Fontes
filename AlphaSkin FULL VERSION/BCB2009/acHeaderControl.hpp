// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acheadercontrol.pas' rev: 20.00

#ifndef AcheadercontrolHPP
#define AcheadercontrolHPP

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
#include <Types.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acheadercontrol
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsHeaderControl;
class PASCALIMPLEMENTATION TsHeaderControl : public Comctrls::THeaderControl
{
	typedef Comctrls::THeaderControl inherited;
	
private:
	Scommondata::TsCommonData* FCommonData;
	
protected:
	int CurItem;
	int PressedItem;
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TMessage &Message);
	void __fastcall PrepareCache(void);
	void __fastcall PaintItems(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	int __fastcall GetItemUnderMouse(const Types::TPoint &p);
	
public:
	__fastcall virtual TsHeaderControl(Classes::TComponent* AOwner);
	__fastcall virtual ~TsHeaderControl(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall AfterConstruction(void);
	
__published:
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsHeaderControl(HWND ParentWindow) : Comctrls::THeaderControl(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Acheadercontrol */
using namespace Acheadercontrol;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcheadercontrolHPP
