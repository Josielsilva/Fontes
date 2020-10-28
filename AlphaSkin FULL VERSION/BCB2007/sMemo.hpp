// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smemo.pas' rev: 11.00

#ifndef SmemoHPP
#define SmemoHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smemo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsMemo;
class PASCALIMPLEMENTATION TsMemo : public Stdctrls::TMemo 
{
	typedef Stdctrls::TMemo inherited;
	
private:
	Scommondata::TsCtrlSkinData* FCommonData;
	Sconst::TsDisabledKind FDisabledKind;
	Classes::TNotifyEvent FOnVScroll;
	Classes::TNotifyEvent FOnScrollCaret;
	Scommondata::TsBoundLabel* FBoundLabel;
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	
public:
	Acsbutils::TacScrollWnd* ListSW;
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsMemo(Classes::TComponent* AOwner);
	__fastcall virtual ~TsMemo(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Text ;
	__property CharCase  = {default=0};
	__property Classes::TNotifyEvent OnScrollCaret = {read=FOnScrollCaret, write=FOnScrollCaret};
	__property Classes::TNotifyEvent OnVScroll = {read=FOnVScroll, write=FOnVScroll};
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsMemo(HWND ParentWindow) : Stdctrls::TMemo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Smemo */
using namespace Smemo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Smemo
