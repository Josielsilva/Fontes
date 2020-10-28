// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sinternalskins.pas' rev: 21.00

#ifndef SinternalskinsHPP
#define SinternalskinsHPP

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
#include <Sskinmanager.hpp>	// Pascal unit
#include <Filectrl.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Sbutton.hpp>	// Pascal unit
#include <Slistbox.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sinternalskins
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TFormInternalSkins;
class PASCALIMPLEMENTATION TFormInternalSkins : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Actnlist::TActionList* ActionList1;
	Actnlist::TAction* ActionAddNew;
	Actnlist::TAction* ActionDelete;
	Actnlist::TAction* ActionRename;
	Actnlist::TAction* ActionClose;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Slistbox::TsListBox* ListBox1;
	Sbutton::TsButton* sBitBtn1;
	Spanel::TsPanel* sPanel1;
	Sbutton::TsButton* sButton2;
	Sbutton::TsButton* sButton3;
	Sbutton::TsButton* sButton4;
	Sbutton::TsButton* sButton1;
	Sbutton::TsButton* sButton5;
	Actnlist::TAction* ActionClear;
	Actnlist::TAction* ActionExtract;
	void __fastcall ActionAddNewExecute(System::TObject* Sender);
	void __fastcall ActionCloseExecute(System::TObject* Sender);
	void __fastcall ActionRenameExecute(System::TObject* Sender);
	void __fastcall ActionDeleteExecute(System::TObject* Sender);
	void __fastcall ListBox1Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall ActionExtractExecute(System::TObject* Sender);
	void __fastcall ActionClearExecute(System::TObject* Sender);
	
public:
	System::UnicodeString NewName;
	System::UnicodeString NewDir;
	Sskinmanager::TsSkinManager* SkinManager;
	void __fastcall AddNewSkin(void);
	void __fastcall UpdateMyActions(void);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TFormInternalSkins(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TFormInternalSkins(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TFormInternalSkins(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TFormInternalSkins(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TFormInternalSkins* FormInternalSkins;

}	/* namespace Sinternalskins */
using namespace Sinternalskins;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SinternalskinsHPP
