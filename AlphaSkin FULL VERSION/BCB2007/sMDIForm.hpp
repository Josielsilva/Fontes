// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Smdiform.pas' rev: 11.00

#ifndef SmdiformHPP
#define SmdiformHPP

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
#include <Scommondata.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Smdiform
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsMDIForm;
class PASCALIMPLEMENTATION TsMDIForm : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
public:
	Forms::TCustomForm* FForm;
	Acsbutils::TacScrollWnd* ListSW;
	Sskinprovider::TsSkinProvider* SkinProvider;
	void __fastcall ConnectToClient(void);
	__fastcall TsMDIForm(Classes::TPersistent* AOwner);
	__fastcall virtual ~TsMDIForm(void);
	Menus::TMenuItem* __fastcall MakeChildIconItem(void);
	void __fastcall UpdateMDIIconItem(void);
	void __fastcall RefreshMDIScrolls(void);
	void __fastcall DestroyScrolls(void);
	void __fastcall RestoreClick(System::TObject* Sender);
	void __fastcall MinClick(System::TObject* Sender);
	void __fastcall CloseClick(System::TObject* Sender);
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Smdiform */
using namespace Smdiform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Smdiform
