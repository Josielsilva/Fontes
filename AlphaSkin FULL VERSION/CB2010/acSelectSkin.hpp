// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acselectskin.pas' rev: 21.00

#ifndef AcselectskinHPP
#define AcselectskinHPP

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
#include <Slistbox.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Smaskedit.hpp>	// Pascal unit
#include <Sskinmanager.hpp>	// Pascal unit
#include <Scustomcomboedit.hpp>	// Pascal unit
#include <Stooledit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acselectskin
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TFormSkinSelect;
class PASCALIMPLEMENTATION TFormSkinSelect : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Slistbox::TsListBox* sListBox1;
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	Spanel::TsPanel* sPanel1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Stooledit::TsDirectoryEdit* sDirectoryEdit1;
	void __fastcall sListBox1Click(System::TObject* Sender);
	void __fastcall sDirectoryEdit1Change(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall sListBox1DblClick(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	
public:
	System::UnicodeString sName;
	Sskinmanager::TacSkinTypes SkinTypes;
	Sskinmanager::TacSkinPlaces SkinPlaces;
	Sskinmanager::TsSkinManager* SkinManager;
public:
	/* TCustomForm.Create */ inline __fastcall virtual TFormSkinSelect(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TFormSkinSelect(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TFormSkinSelect(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TFormSkinSelect(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TFormSkinSelect* FormSkinSelect;
extern PACKAGE bool __fastcall SelectSkin(Sskinmanager::TsSkinManager* SkinManager, Sskinmanager::TacSkinPlaces SkinPlaces = (Sskinmanager::TacSkinPlaces)(0x2))/* overload */;
extern PACKAGE bool __fastcall SelectSkin(System::UnicodeString &SkinName, System::UnicodeString &SkinDir, Sskinmanager::TacSkinTypes SkinTypes = (Sskinmanager::TacSkinTypes)(0x2))/* overload */;
extern PACKAGE bool __fastcall SelectSkin(Classes::TStringList* NameList, System::UnicodeString &SkinDir, Sskinmanager::TacSkinTypes SkinTypes = (Sskinmanager::TacSkinTypes)(0x2))/* overload */;

}	/* namespace Acselectskin */
using namespace Acselectskin;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcselectskinHPP
