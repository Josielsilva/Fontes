// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sFrameAdapter.pas' rev: 22.00

#ifndef SframeadapterHPP
#define SframeadapterHPP

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
#include <sConst.hpp>	// Pascal unit
#include <sCommonData.hpp>	// Pascal unit
#include <sPanel.hpp>	// Pascal unit
#include <acSBUtils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sframeadapter
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsFrameAdapter;
class PASCALIMPLEMENTATION TsFrameAdapter : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
protected:
	Scommondata::TsCommonData* FCommonData;
	void __fastcall PrepareCache(void);
	void __fastcall OurPaintHandler(HDC aDC);
	void __fastcall AC_WMPaint(HDC aDC);
	
public:
	Forms::TFrame* Frame;
	Classes::TWndMethod OldWndProc;
	Acsbutils::TacScrollWnd* ListSW;
	virtual void __fastcall Loaded(void);
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsFrameAdapter(Classes::TComponent* AOwner);
	__fastcall virtual ~TsFrameAdapter(void);
	void __fastcall NewWndProc(Messages::TMessage &Message);
	
__published:
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sframeadapter */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sframeadapter;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SframeadapterHPP
