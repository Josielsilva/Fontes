// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sbevel.pas' rev: 21.00

#ifndef SbevelHPP
#define SbevelHPP

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
#include <Extctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sbevel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsBevel;
class PASCALIMPLEMENTATION TsBevel : public Extctrls::TBevel
{
	typedef Extctrls::TBevel inherited;
	
private:
	Scommondata::TsCommonData* FCommonData;
	
protected:
	Extctrls::TBevelStyle StoredBevel;
	Extctrls::TBevelShape StoredShape;
	virtual void __fastcall Paint(void);
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
	
public:
	__fastcall virtual TsBevel(Classes::TComponent* AOwner);
	__fastcall virtual ~TsBevel(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Invalidate(void);
	void __fastcall CheckSkinSection(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sbevel */
using namespace Sbevel;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SbevelHPP
