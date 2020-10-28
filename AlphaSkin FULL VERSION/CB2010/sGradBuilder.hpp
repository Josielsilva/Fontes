// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sgradbuilder.pas' rev: 21.00

#ifndef SgradbuilderHPP
#define SgradbuilderHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Sgradient.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Slabel.hpp>	// Pascal unit
#include <Sbutton.hpp>	// Pascal unit
#include <Scombobox.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Sradiobutton.hpp>	// Pascal unit
#include <Sdialogs.hpp>	// Pascal unit
#include <Spagecontrol.hpp>	// Pascal unit
#include <Scolorselect.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit
#include <Sgroupbox.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sgradbuilder
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TGradPoint;
class PASCALIMPLEMENTATION TGradPoint : public Extctrls::TPanel
{
	typedef Extctrls::TPanel inherited;
	
public:
	int Number;
	__fastcall virtual TGradPoint(Classes::TComponent* AOwner);
public:
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TGradPoint(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TGradPoint(HWND ParentWindow) : Extctrls::TPanel(ParentWindow) { }
	
};


typedef DynamicArray<TGradPoint*> TPointArray;

class DELPHICLASS TGradBuilder;
class PASCALIMPLEMENTATION TGradBuilder : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Menus::TPopupMenu* PopupMenu1;
	Menus::TMenuItem* Changecolor1;
	Menus::TMenuItem* Delete1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sbutton::TsButton* BitBtn1;
	Sbutton::TsButton* sButton1;
	Sbutton::TsButton* sButton2;
	Sradiobutton::TsRadioButton* sRadioButton1;
	Sradiobutton::TsRadioButton* sRadioButton2;
	Sradiobutton::TsRadioButton* sRadioButton3;
	Sgroupbox::TsGroupBox* sGroupBox1;
	Spanel::TsPanel* PaintPanel;
	Extctrls::TPaintBox* PaintBox1;
	Spanel::TsPanel* Panel2;
	Spanel::TsPanel* TemplatePanel;
	Sgroupbox::TsGroupBox* sGroupBox2;
	Spanel::TsPanel* sPanel1;
	Extctrls::TPaintBox* PaintBox2;
	Scolorselect::TsColorSelect* sColorSelect5;
	Scolorselect::TsColorSelect* sColorSelect3;
	Scolorselect::TsColorSelect* sColorSelect4;
	Scolorselect::TsColorSelect* sColorSelect2;
	Scolorselect::TsColorSelect* sColorSelect1;
	void __fastcall Panel2Click(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall TemplatePanelMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall TemplatePanelMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall Changecolor1Click(System::TObject* Sender);
	void __fastcall PopupMenu1Popup(System::TObject* Sender);
	void __fastcall Delete1Click(System::TObject* Sender);
	void __fastcall PaintBox1Paint(System::TObject* Sender);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall BitBtn1Click(System::TObject* Sender);
	void __fastcall TemplatePanelMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall TemplatePanelDblClick(System::TObject* Sender);
	void __fastcall sButton1Click(System::TObject* Sender);
	void __fastcall sButton2Click(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall sRadioButton1Click(System::TObject* Sender);
	void __fastcall sColorSelect1Change(System::TObject* Sender);
	
private:
	int __fastcall GetDirection(void);
	void __fastcall SetDirection(const int Value);
	void __fastcall MakefirstPoints(void);
	void __fastcall InitTriangles(void);
	
public:
	TPointArray a;
	Sconst::TsGradArray g;
	TGradPoint* LastPoint;
	Controls::TModalResult ModalResult;
	Sconst::TsGradArray CurrentArray;
	Dialogs::TColorDialog* ColorDialog1;
	System::UnicodeString __fastcall AsString(void);
	void __fastcall LoadFromArray(Sconst::TsGradArray NewArray);
	void __fastcall ReCalcData(void);
	void __fastcall NewPoint(Spanel::TsPanel* Owner, int y, Graphics::TColor Color);
	void __fastcall DeleteFromArray(TGradPoint* p);
	void __fastcall Reinit(void);
	__property int Direction = {read=GetDirection, write=SetDirection, nodefault};
public:
	/* TCustomForm.Create */ inline __fastcall virtual TGradBuilder(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TGradBuilder(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TGradBuilder(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TGradBuilder(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const ShortInt PointHeight = 0x6;
extern PACKAGE TGradBuilder* GradBuilder;
extern PACKAGE bool NoMouse;
extern PACKAGE Dialogs::TColorDialog* ColorDialog;
extern PACKAGE void __fastcall CreateEditorForm(void)/* overload */;
extern PACKAGE void __fastcall CreateEditorForm(Dialogs::TColorDialog* CustomDlg)/* overload */;
extern PACKAGE void __fastcall KillForm(void);

}	/* namespace Sgradbuilder */
using namespace Sgradbuilder;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgradbuilderHPP
