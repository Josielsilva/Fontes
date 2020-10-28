// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sframeadapter.pas' rev: 20.00

#ifndef SframeadapterHPP
#define SframeadapterHPP

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
#include <Sconst.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

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
using namespace Sframeadapter;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SframeadapterHPP
