// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sMaskEdit.pas' rev: 22.00

#ifndef SmaskeditHPP
#define SmaskeditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <sCommonData.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <sDefaults.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smaskedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsMaskEdit;
class PASCALIMPLEMENTATION TsMaskEdit : public Mask::TMaskEdit
{
	typedef Mask::TMaskEdit inherited;
	
private:
	Scommondata::TsCtrlSkinData* FCommonData;
	Sconst::TsDisabledKind FDisabledKind;
	Scommondata::TsBoundLabel* FBoundLabel;
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	
protected:
	virtual void __fastcall SetEditRect(void);
	DYNAMIC void __fastcall Change(void);
	virtual void __fastcall PaintBorder(HDC DC);
	void __fastcall PrepareCache(void);
	virtual void __fastcall PaintText(void);
	virtual void __fastcall OurPaintHandler(HDC DC);
	virtual bool __fastcall IsActive(void);
	HIDESBASE int __fastcall BorderWidth(void);
	
public:
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsMaskEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TsMaskEdit(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Align = {default=0};
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsMaskEdit(HWND ParentWindow) : Mask::TMaskEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Smaskedit */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Smaskedit;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SmaskeditHPP
