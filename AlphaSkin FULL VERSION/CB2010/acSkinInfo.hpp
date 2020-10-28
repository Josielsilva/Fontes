// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acskininfo.pas' rev: 21.00

#ifndef AcskininfoHPP
#define AcskininfoHPP

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
#include <Sskinprovider.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Smemo.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Slabel.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acskininfo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TSkinInfoForm;
class PASCALIMPLEMENTATION TSkinInfoForm : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Smemo::TsMemo* sMemo1;
	Stdctrls::TLabel* Label1;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TSkinInfoForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TSkinInfoForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TSkinInfoForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TSkinInfoForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TSkinInfoForm* SkinInfoForm;

}	/* namespace Acskininfo */
using namespace Acskininfo;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcskininfoHPP
