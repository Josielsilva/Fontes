// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smaskedit.pas' rev: 11.00

#ifndef SmaskeditHPP
#define SmaskeditHPP

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
#include <Stdctrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit

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
	__property Align  = {default=0};
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsMaskEdit(HWND ParentWindow) : Mask::TMaskEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Smaskedit */
using namespace Smaskedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Smaskedit
