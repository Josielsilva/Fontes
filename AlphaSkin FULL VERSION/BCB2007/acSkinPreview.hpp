// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acskinpreview.pas' rev: 11.00

#ifndef AcskinpreviewHPP
#define AcskinpreviewHPP

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
#include <Buttons.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Sstatusbar.hpp>	// Pascal unit
#include <Sedit.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Sskinmanager.hpp>	// Pascal unit
#include <Scheckbox.hpp>	// Pascal unit
#include <Sgroupbox.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acskinpreview
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TFormSkinPreview;
class PASCALIMPLEMENTATION TFormSkinPreview : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Sedit::TsEdit* sEdit1;
	Sstatusbar::TsStatusBar* sStatusBar1;
	Spanel::TsPanel* sPanel1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sgroupbox::TsGroupBox* sGroupBox1;
	Scheckbox::TsCheckBox* sCheckBox1;
	Scheckbox::TsCheckBox* sCheckBox2;
	Spanel::TsPanel* sPanel2;
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	Sskinmanager::TsSkinManager* PreviewManager;
public:
	#pragma option push -w-inl
	/* TCustomForm.Create */ inline __fastcall virtual TFormSkinPreview(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TFormSkinPreview(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TFormSkinPreview(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TFormSkinPreview(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TFormSkinPreview* FormSkinPreview;

}	/* namespace Acskinpreview */
using namespace Acskinpreview;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Acskinpreview
