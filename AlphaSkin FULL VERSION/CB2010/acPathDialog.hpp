// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acpathdialog.pas' rev: 21.00

#ifndef AcpathdialogHPP
#define AcpathdialogHPP

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
#include <Acshellctrls.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Sedit.hpp>	// Pascal unit
#include <Streeview.hpp>	// Pascal unit
#include <Sscrollbox.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Slabel.hpp>	// Pascal unit
#include <Acalphaimagelist.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acpathdialog
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TPathDialogForm;
class PASCALIMPLEMENTATION TPathDialogForm : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Acshellctrls::TsShellTreeView* sShellTreeView1;
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sbitbtn::TsBitBtn* sBitBtn3;
	Sscrollbox::TsScrollBox* sScrollBox1;
	Slabel::TsLabel* sLabel1;
	Acalphaimagelist::TsAlphaImageList* ImageList1;
	void __fastcall sShellTreeView1Change(System::TObject* Sender, Comctrls::TTreeNode* Node);
	void __fastcall sBitBtn3Click(System::TObject* Sender);
	void __fastcall sBitBtn2Click(System::TObject* Sender);
	void __fastcall sBitBtn1Click(System::TObject* Sender);
	
public:
	void __fastcall InitLngCaptions(void);
	void __fastcall GenerateButtons(void);
	void __fastcall UpdateAnchors(void);
	void __fastcall BtnOnClick(System::TObject* Sender);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TPathDialogForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TPathDialogForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TPathDialogForm(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TPathDialogForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TPathDialogForm* PathDialogForm;
extern PACKAGE int FLargeImages;

}	/* namespace Acpathdialog */
using namespace Acpathdialog;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcpathdialogHPP
