// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Shintdesigner.pas' rev: 21.00

#ifndef ShintdesignerHPP
#define ShintdesignerHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Shintmanager.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Extdlgs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Sedit.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Scheckbox.hpp>	// Pascal unit
#include <Sgroupbox.hpp>	// Pascal unit
#include <Strackbar.hpp>	// Pascal unit
#include <Scombobox.hpp>	// Pascal unit
#include <Slabel.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Scolorselect.hpp>	// Pascal unit
#include <Sdialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shintdesigner
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS THintDesigner;
class PASCALIMPLEMENTATION THintDesigner : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Slabel::TsLabel* Label1;
	Slabel::TsLabel* Label3;
	Slabel::TsLabel* Label5;
	Slabel::TsLabel* Label6;
	Slabel::TsLabel* Label7;
	Slabel::TsLabel* Label8;
	Slabel::TsLabel* Label9;
	Slabel::TsLabel* Label10;
	Scombobox::TsComboBox* sComboBox4;
	Scombobox::TsComboBox* sComboBox1;
	Strackbar::TsTrackBar* sTrackBar1;
	Strackbar::TsTrackBar* sTrackBar2;
	Strackbar::TsTrackBar* sTrackBar3;
	Strackbar::TsTrackBar* sTrackBar4;
	Strackbar::TsTrackBar* sTrackBar5;
	Strackbar::TsTrackBar* sTrackBar21;
	Sgroupbox::TsGroupBox* GroupBox1;
	Slabel::TsLabel* Label12;
	Slabel::TsLabel* Label13;
	Slabel::TsLabel* Label14;
	Scheckbox::TsCheckBox* sCheckBox1;
	Strackbar::TsTrackBar* sTrackBar9;
	Strackbar::TsTrackBar* sTrackBar10;
	Strackbar::TsTrackBar* sTrackBar11;
	Sgroupbox::TsGroupBox* GroupBox2;
	Sgroupbox::TsGroupBox* GroupBox3;
	Sbitbtn::TsBitBtn* BitBtn1;
	Spanel::TsPanel* Panel1;
	Sedit::TsEdit* sSpinEdit2;
	Dialogs::TFontDialog* FontDialog1;
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* Gotohomesite1;
	Menus::TMenuItem* Feedback1;
	Strackbar::TsTrackBar* sTrackBar12;
	Slabel::TsLabel* Label17;
	Slabel::TsLabel* Label2;
	Spanel::TsPanel* Panel4;
	Extctrls::TPaintBox* PaintBox1;
	Strackbar::TsTrackBar* TrackBar1;
	Slabel::TsLabel* Label11;
	Sbitbtn::TsBitBtn* BitBtn2;
	Sbitbtn::TsBitBtn* BitBtn3;
	Extdlgs::TOpenPictureDialog* OpenPictureDialog1;
	Strackbar::TsTrackBar* TrackBar2;
	Slabel::TsLabel* Label15;
	Extctrls::TPaintBox* PaintBox2;
	Dialogs::TSaveDialog* SaveDialog1;
	Dialogs::TOpenDialog* OpenDialog1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Scolorselect::TsColorSelect* sColorSelect2;
	Scolorselect::TsColorSelect* sColorSelect3;
	Scolorselect::TsColorSelect* sColorSelect4;
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	void __fastcall sComboBox4Change(System::TObject* Sender);
	void __fastcall sComboBox1Change(System::TObject* Sender);
	void __fastcall sTrackBar1Change(System::TObject* Sender);
	void __fastcall sTrackBar2Change(System::TObject* Sender);
	void __fastcall sTrackBar3Change(System::TObject* Sender);
	void __fastcall sTrackBar4Change(System::TObject* Sender);
	void __fastcall sTrackBar5Change(System::TObject* Sender);
	void __fastcall sTrackBar21Change(System::TObject* Sender);
	void __fastcall sSpinEdit2Change(System::TObject* Sender);
	void __fastcall sCheckBox1Click(System::TObject* Sender);
	void __fastcall sTrackBar9Change(System::TObject* Sender);
	void __fastcall sTrackBar10Change(System::TObject* Sender);
	void __fastcall sTrackBar11Change(System::TObject* Sender);
	void __fastcall sTrackBar12Change(System::TObject* Sender);
	void __fastcall BitBtn1Click(System::TObject* Sender);
	void __fastcall SpeedButton1Click(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall PaintBox1Paint(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall TrackBar1Change(System::TObject* Sender);
	void __fastcall TrackBar2Change(System::TObject* Sender);
	void __fastcall PaintBox2Paint(System::TObject* Sender);
	void __fastcall PaintBox2MouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall BitBtn3Click(System::TObject* Sender);
	void __fastcall BitBtn2Click(System::TObject* Sender);
	void __fastcall sColorSelect2Change(System::TObject* Sender);
	void __fastcall sColorSelect3Change(System::TObject* Sender);
	void __fastcall sColorSelect4Change(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall sBitBtn1Click(System::TObject* Sender);
	void __fastcall sBitBtn2Click(System::TObject* Sender);
	void __fastcall OpenDialog1SelectionChange(System::TObject* Sender);
	
public:
	Shintmanager::TsHintManager* sHintManager1;
	Shintmanager::TsCustomHintWindow* PreviewWnd;
	void __fastcall SetPanelColor(Extctrls::TPanel* Panel, Graphics::TColor c);
	void __fastcall InitControls(Shintmanager::TsHintManager* Manager, System::TObject* Sender);
	void __fastcall LoadPreserved(int i);
	void __fastcall SetcustomStyle(void);
	void __fastcall PrepareMainBmp(void);
	void __fastcall LoadFromFile(const System::UnicodeString FileName);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall InitLngCaptions(void);
public:
	/* TCustomForm.Create */ inline __fastcall virtual THintDesigner(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual THintDesigner(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~THintDesigner(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall THintDesigner(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE THintDesigner* HintDesigner;
extern PACKAGE Graphics::TBitmap* MainBmp;
extern PACKAGE void __fastcall CreateEditorForm(void);
extern PACKAGE void __fastcall OpenDesigner(void);
extern PACKAGE void __fastcall KillForm(void);

}	/* namespace Shintdesigner */
using namespace Shintdesigner;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ShintdesignerHPP
