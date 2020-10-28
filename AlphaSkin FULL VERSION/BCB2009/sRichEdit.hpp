// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Srichedit.pas' rev: 20.00

#ifndef SricheditHPP
#define SricheditHPP

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
#include <Comctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Srichedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsRichEdit;
class PASCALIMPLEMENTATION TsRichEdit : public Comctrls::TRichEdit
{
	typedef Comctrls::TRichEdit inherited;
	
private:
	Scommondata::TsCtrlSkinData* FCommonData;
	Sconst::TsDisabledKind FDisabledKind;
	Scommondata::TsBoundLabel* FBoundLabel;
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	MESSAGE void __fastcall WMPrint(Messages::TWMPaint &Message);
	
public:
	Acsbutils::TacScrollWnd* ListSW;
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsRichEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TsRichEdit(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Text;
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsRichEdit(HWND ParentWindow) : Comctrls::TRichEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Srichedit */
using namespace Srichedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SricheditHPP
