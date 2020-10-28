// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sInternalSkins.pas' rev: 22.00

#ifndef SinternalskinsHPP
#define SinternalskinsHPP

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
#include <StdCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <sSkinManager.hpp>	// Pascal unit
#include <FileCtrl.hpp>	// Pascal unit
#include <acntUtils.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <sSkinProvider.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <sPanel.hpp>	// Pascal unit
#include <sButton.hpp>	// Pascal unit
#include <sListBox.hpp>	// Pascal unit

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
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sinternalskins;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SinternalskinsHPP
