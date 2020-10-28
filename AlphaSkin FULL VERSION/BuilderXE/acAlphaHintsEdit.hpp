// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'acAlphaHintsEdit.pas' rev: 22.00

#ifndef AcalphahintseditHPP
#define AcalphahintseditHPP

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
#include <acAlphaHints.hpp>	// Pascal unit
#include <sListBox.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <sBitBtn.hpp>	// Pascal unit
#include <sSpeedButton.hpp>	// Pascal unit
#include <sEdit.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <sPageControl.hpp>	// Pascal unit
#include <sLabel.hpp>	// Pascal unit
#include <sCheckBox.hpp>	// Pascal unit
#include <acHintPage.hpp>	// Pascal unit
#include <sGroupBox.hpp>	// Pascal unit
#include <sSkinProvider.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acalphahintsedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TAlphaHintsEdit;
class PASCALIMPLEMENTATION TAlphaHintsEdit : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	Spagecontrol::TsPageControl* sPageControl1;
	Sedit::TsEdit* sEdit1;
	Spagecontrol::TsTabSheet* sTabSheet1;
	Spagecontrol::TsTabSheet* sTabSheet2;
	Spagecontrol::TsTabSheet* sTabSheet3;
	Spagecontrol::TsTabSheet* sTabSheet4;
	Scheckbox::TsCheckBox* sCheckBox1;
	Achintpage::TFrameHintPage* FrameTL;
	Acalphahints::TsAlphaHints* Hints;
	Sgroupbox::TsGroupBox* sGroupBox1;
	Sspeedbutton::TsSpeedButton* sSpeedButton1;
	Sspeedbutton::TsSpeedButton* sSpeedButton2;
	Slistbox::TsListBox* sListBox1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sspeedbutton::TsSpeedButton* sSpeedButton3;
	Dialogs::TFontDialog* FontDialog1;
	void __fastcall sCheckBox1Click(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall sListBox1Click(System::TObject* Sender);
	void __fastcall sEdit1Change(System::TObject* Sender);
	void __fastcall sPageControl1Change(System::TObject* Sender);
	void __fastcall sSpeedButton3Click(System::TObject* Sender);
	void __fastcall sSpeedButton1Click(System::TObject* Sender);
	void __fastcall sSpeedButton2Click(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	
public:
	Achintpage::TFrameHintPage* CurrentFrame;
	void __fastcall LoadTemplates(void);
	void __fastcall InitTemplate(int Index);
	void __fastcall UpdateFrame(System::TObject* Sender);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TAlphaHintsEdit(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TAlphaHintsEdit(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TAlphaHintsEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TAlphaHintsEdit(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TAlphaHintsEdit* AlphaHintsEdit;
extern PACKAGE Achintpage::TFrameHintPage* FrameTR;
extern PACKAGE Achintpage::TFrameHintPage* FrameBR;
extern PACKAGE Achintpage::TFrameHintPage* FrameBL;
extern PACKAGE Acalphahints::TacHintTemplate* CurrentTemplate;
extern PACKAGE Graphics::TBitmap* PreviewBmp;
extern PACKAGE void __fastcall ChangeStates(Controls::TWinControl* Parent, int Tag, bool Enabled);
extern PACKAGE bool __fastcall EditHints(Acalphahints::TsAlphaHints* acHints);

}	/* namespace Acalphahintsedit */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Acalphahintsedit;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcalphahintseditHPP
