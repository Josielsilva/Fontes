// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sColorDialog.pas' rev: 22.00

#ifndef ScolordialogHPP
#define ScolordialogHPP

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
#include <sSkinProvider.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <sBitBtn.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <sPanel.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <sMaskEdit.hpp>	// Pascal unit
#include <sCurrencyEdit.hpp>	// Pascal unit
#include <sLabel.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <sSpeedButton.hpp>	// Pascal unit
#include <sGraphUtils.hpp>	// Pascal unit
#include <sCustomComboEdit.hpp>	// Pascal unit
#include <sCurrEdit.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scolordialog
{
//-- type declarations -------------------------------------------------------
typedef System::DynamicArray<Graphics::TColor> TColorArray;

class DELPHICLASS TsColorDialogForm;
class PASCALIMPLEMENTATION TsColorDialogForm : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sbitbtn::TsBitBtn* sBitBtn1;
	Sbitbtn::TsBitBtn* sBitBtn2;
	Spanel::TsPanel* ColorPanel;
	Spanel::TsPanel* GradPanel;
	Scurrencyedit::TsCurrencyEdit* sREdit;
	Scurrencyedit::TsCurrencyEdit* sGEdit;
	Scurrencyedit::TsCurrencyEdit* sBEdit;
	Sbitbtn::TsBitBtn* sBitBtn3;
	Sbitbtn::TsBitBtn* sBitBtn4;
	Slabel::TsLabel* sLabel1;
	Slabel::TsLabel* sLabel2;
	Scurrencyedit::TsCurrencyEdit* sHEdit;
	Scurrencyedit::TsCurrencyEdit* sSEdit;
	Scurrencyedit::TsCurrencyEdit* sVEdit;
	Spanel::TsColorsPanel* MainPal;
	Spanel::TsColorsPanel* AddPal;
	Scurrencyedit::TsCurrencyEdit* sEditDecimal;
	Smaskedit::TsMaskEdit* sEditHex;
	Slabel::TsLabel* sLabel4;
	Slabel::TsLabel* sLabel5;
	Slabel::TsLabel* sLabel6;
	Sbitbtn::TsBitBtn* sBitBtn5;
	Sspeedbutton::TsSpeedButton* sSpeedButton1;
	Extctrls::TShape* SelectedPanel;
	void __fastcall sBitBtn2Click(System::TObject* Sender);
	void __fastcall sBitBtn1Click(System::TObject* Sender);
	void __fastcall CreateExtBmp(void);
	void __fastcall FormShow(System::TObject* Sender);
	void __fastcall ColorPanelPaint(System::TObject* Sender, Graphics::TCanvas* Canvas);
	void __fastcall ColorPanelMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ColorPanelMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ColorPanelMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall GradPanelPaint(System::TObject* Sender, Graphics::TCanvas* Canvas);
	void __fastcall GradPanelMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall GradPanelMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall GradPanelMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall MainPalChange(System::TObject* Sender);
	void __fastcall sEditHexKeyPress(System::TObject* Sender, System::WideChar &Key);
	int __fastcall GetColorCoord(Sconst::TsColor C);
	void __fastcall FormPaint(System::TObject* Sender);
	void __fastcall sEditHexChange(System::TObject* Sender);
	void __fastcall sEditDecimalChange(System::TObject* Sender);
	void __fastcall sHEditChange(System::TObject* Sender);
	void __fastcall sREditChange(System::TObject* Sender);
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall sBitBtn4Click(System::TObject* Sender);
	void __fastcall sBitBtn5Click(System::TObject* Sender);
	void __fastcall sBitBtn3Click(System::TObject* Sender);
	void __fastcall sSpeedButton1Click(System::TObject* Sender);
	void __fastcall PickFormPaint(System::TObject* Sender);
	void __fastcall PickFormMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall PickFormKeyDown(System::TObject* Sender, System::Word &Key, Classes::TShiftState Shift);
	void __fastcall PickFormMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int Y);
	void __fastcall FormMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall MainPalDblClick(System::TObject* Sender);
	void __fastcall AddPalDblClick(System::TObject* Sender);
	void __fastcall FormDestroy(System::TObject* Sender);
	
public:
	Graphics::TBitmap* TmpBmp;
	Graphics::TBitmap* ExtBmp;
	TColorArray TopColors;
	Dialogs::TColorDialog* Owner;
	Extctrls::TPanel* PickPanel;
	__fastcall virtual ~TsColorDialogForm(void);
	void __fastcall SetMarker(void);
	void __fastcall PaintMarker(int mX, int mY);
	void __fastcall PaintCursor(int mX, int mY, Graphics::TCanvas* Canvas);
	Graphics::TColor __fastcall GradToColor(int Coord);
	void __fastcall SetCurrentColor(Graphics::TColor c);
	void __fastcall SetInternalColor(int h, double s);
	void __fastcall SetColorFromEdit(Graphics::TColor Color, bool &Flag);
	void __fastcall ExitPanels(void);
	void __fastcall InitLngCaptions(void);
	Types::TRect __fastcall MarkerRect(void);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TsColorDialogForm(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TsColorDialogForm(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsColorDialogForm(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


class DELPHICLASS TAccessPanel;
class PASCALIMPLEMENTATION TAccessPanel : public Extctrls::TPanel
{
	typedef Extctrls::TPanel inherited;
	
public:
	/* TCustomPanel.Create */ inline __fastcall virtual TAccessPanel(Classes::TComponent* AOwner) : Extctrls::TPanel(AOwner) { }
	
public:
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TAccessPanel(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TAccessPanel(HWND ParentWindow) : Extctrls::TPanel(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::ShortInt bWidth = 0x0;
static const System::ShortInt dblWidth = 0x0;
static const System::ShortInt ArrowSize = 0x5;
extern PACKAGE TsColorDialogForm* sColorDialogForm;
extern PACKAGE Graphics::TColor InternalColor;
extern PACKAGE Graphics::TColor PickColor;
extern PACKAGE Sgraphutils::TsHSV SelectedHsv;
extern PACKAGE Types::TPoint ColorCoord;
extern PACKAGE bool ExPressed;
extern PACKAGE bool GradPressed;
extern PACKAGE int j;
extern PACKAGE int GradY;
extern PACKAGE int CurrCustomIndex;
extern PACKAGE bool UseCoords;
extern PACKAGE bool ColorChanging;
extern PACKAGE bool HexChanging;
extern PACKAGE bool DecChanging;
extern PACKAGE bool HsvChanging;
extern PACKAGE bool RgbChanging;
extern PACKAGE Graphics::TBitmap* b;

}	/* namespace Scolordialog */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Scolordialog;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScolordialogHPP
