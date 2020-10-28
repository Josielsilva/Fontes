// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Svclutils.pas' rev: 21.00

#ifndef SvclutilsHPP
#define SvclutilsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sskinprovider.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Acdials.hpp>	// Pascal unit
#include <Acthdtimer.hpp>	// Pascal unit
#include <Sedit.hpp>	// Pascal unit
#include <Smemo.hpp>	// Pascal unit
#include <Scombobox.hpp>	// Pascal unit
#include <Stooledit.hpp>	// Pascal unit
#include <Scurredit.hpp>	// Pascal unit
#include <Sdateutils.hpp>	// Pascal unit
#include <Scustomcomboedit.hpp>	// Pascal unit
#include <Sradiobutton.hpp>	// Pascal unit
#include <Smonthcalendar.hpp>	// Pascal unit
#include <Scheckbox.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Svclutils
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TOutputWindow;
class PASCALIMPLEMENTATION TOutputWindow : public Controls::TCustomControl
{
	typedef Controls::TCustomControl inherited;
	
private:
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TWMEraseBkgnd &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__fastcall virtual TOutputWindow(Classes::TComponent* AOwner);
	__property Canvas;
public:
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TOutputWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TOutputWindow(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	
};


class DELPHICLASS TacHideTimer;
class PASCALIMPLEMENTATION TacHideTimer : public Acthdtimer::TacThreadedTimer
{
	typedef Acthdtimer::TacThreadedTimer inherited;
	
public:
	Acdials::TacDialogWnd* Dlg;
	Sskinprovider::TsSkinProvider* sp;
	HDC DC;
	Forms::TForm* Form;
	tagSIZE FBmpSize;
	Types::TPoint FBmpTopLeft;
	#pragma pack(push,1)
	_BLENDFUNCTION FBlend;
	#pragma pack(pop)
	double dx;
	double dy;
	double l;
	double t;
	double r;
	double b;
	int StartBlendValue;
	int i;
	int StepCount;
	Sconst::TacAnimType AnimType;
	int DelayValue;
	double Trans;
	double p;
	Graphics::TBitmap* SrcBmp;
	Graphics::TBitmap* DstBmp;
	void __fastcall Anim_Init(void);
	void __fastcall Anim_DoNext(void);
	void __fastcall Anim_GoToNext(void);
	void __fastcall OnTimerProc(System::TObject* Sender);
	__fastcall virtual ~TacHideTimer(void);
public:
	/* TacThreadedTimer.Create */ inline __fastcall virtual TacHideTimer(Classes::TComponent* AOwner) : Acthdtimer::TacThreadedTimer(AOwner) { }
	/* TacThreadedTimer.CreateOwned */ inline __fastcall virtual TacHideTimer(Classes::TComponent* AOwner, bool ChangeEvent) : Acthdtimer::TacThreadedTimer(AOwner, ChangeEvent) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE StaticArray<int, 3> AlignToInt;
extern PACKAGE TOutputWindow* ow;
extern PACKAGE bool InAnimationProcess;
extern PACKAGE bool acGraphPainting;
extern PACKAGE unsigned uxthemeLib;
extern PACKAGE HRESULT __stdcall (*Ac_SetWindowTheme)(HWND hwnd, System::WideChar * pszSubAppName, System::WideChar * pszSubIdList);
extern PACKAGE TacHideTimer* acHideTimer;
extern PACKAGE Types::TPoint __fastcall acMousePos(void);
extern PACKAGE bool __fastcall LeftToRight(Controls::TControl* Control, bool NormalAlignment = true);
extern PACKAGE void __fastcall AddToAdapter(Controls::TWinControl* Frame);
extern PACKAGE void __fastcall BroadCastMsg(HWND Ctrl, const Messages::TMessage &Message);
extern PACKAGE void __fastcall SkinPaintTo(const Graphics::TBitmap* Bmp, const Controls::TControl* Ctrl, int Left = 0x0, int Top = 0x0, Classes::TComponent* SkinProvider = (Classes::TComponent*)(0x0));
extern PACKAGE void __fastcall AnimShowForm(Sskinprovider::TsSkinProvider* sp, System::Word wTime = (System::Word)(0x0), int MaxTransparency = 0xff, Sconst::TacAnimType AnimType = (Sconst::TacAnimType)(0x1));
extern PACKAGE void __fastcall AnimHideForm(System::TObject* SkinProvider);
extern PACKAGE void __fastcall PrindDlgClient(Acdials::TacDialogWnd* ListSW, Graphics::TBitmap* acDstBmp, bool CopyScreen = false);
extern PACKAGE void __fastcall AnimHideDlg(Acdials::TacDialogWnd* ListSW);
extern PACKAGE void __fastcall AnimShowDlg(Acdials::TacDialogWnd* ListSW, System::Word wTime = (System::Word)(0x0), int MaxTransparency = 0xff, Sconst::TacAnimType AnimType = (Sconst::TacAnimType)(0x1));
extern PACKAGE void __fastcall PrepareForAnimation(Controls::TWinControl* Ctrl);
extern PACKAGE void __fastcall AnimShowControl(Controls::TWinControl* Ctrl, System::Word wTime = (System::Word)(0x0), int MaxTransparency = 0xff, Sconst::TacAnimType AnimType = (Sconst::TacAnimType)(0x0));
extern PACKAGE void __fastcall SetParentUpdated(Controls::TWinControl* wc)/* overload */;
extern PACKAGE void __fastcall SetParentUpdated(HWND pHwnd)/* overload */;
extern PACKAGE Graphics::TColor __fastcall GetControlColor(Controls::TControl* Control)/* overload */;
extern PACKAGE Graphics::TColor __fastcall GetControlColor(unsigned Handle)/* overload */;
extern PACKAGE bool __fastcall AllEditSelected(Stdctrls::TCustomEdit* Ctrl);
extern PACKAGE Controls::TControl* __fastcall GetControlByName [[deprecated]](Controls::TWinControl* ParentControl, const System::UnicodeString CtrlName);
extern PACKAGE void __fastcall PaintControls(HDC DC, Controls::TWinControl* OwnerControl, bool ChangeCache, const Types::TPoint &Offset, unsigned AHandle = (unsigned)(0x0), bool CheckVisible = true);
extern PACKAGE int __fastcall SendAMessage(HWND Handle, int Cmd, int LParam = 0x0)/* overload */;
extern PACKAGE int __fastcall SendAMessage(Controls::TControl* Control, int Cmd, unsigned LParam = (unsigned)(0x0))/* overload */;
extern PACKAGE void __fastcall SetBoolMsg(HWND Handle, unsigned Cmd, bool Value);
extern PACKAGE bool __fastcall GetBoolMsg(Controls::TWinControl* Control, unsigned Cmd)/* overload */;
extern PACKAGE bool __fastcall GetBoolMsg(HWND CtrlHandle, unsigned Cmd)/* overload */;
extern PACKAGE void __fastcall RepaintsGraphicControls [[deprecated]](Controls::TWinControl* WinControl);
extern PACKAGE bool __fastcall ControlIsReady(Controls::TControl* Control);
extern PACKAGE Forms::TCustomForm* __fastcall GetOwnerForm(Classes::TComponent* Component);
extern PACKAGE Forms::TCustomFrame* __fastcall GetOwnerFrame(Classes::TComponent* Component);
extern PACKAGE void __fastcall SetPanelFocus [[deprecated]](Controls::TWinControl* Panel);
extern PACKAGE void __fastcall SetControlsEnabled(Controls::TWinControl* Parent, bool Value);
extern PACKAGE bool __fastcall CheckPanelFilled [[deprecated]](Extctrls::TCustomPanel* Panel);
extern PACKAGE int __fastcall GetStringFlags(Controls::TControl* Control, Classes::TAlignment al);
extern PACKAGE void __fastcall RepaintsControls(Controls::TWinControl* Owner, bool BGChanged);
extern PACKAGE void __fastcall AlphaBroadCast(Controls::TWinControl* Control, void *Message)/* overload */;
extern PACKAGE void __fastcall AlphaBroadCast(HWND Handle, void *Message)/* overload */;
extern PACKAGE void __fastcall SendToProvider(Forms::TCustomForm* Form, void *Message);
extern PACKAGE int __fastcall GetCtrlRange(Controls::TWinControl* Ctl, int nBar);
extern PACKAGE Types::TRect __fastcall ACClientRect(HWND Handle);
extern PACKAGE void __fastcall TrySetSkinSection(Controls::TControl* Control, const System::UnicodeString SectionName);
extern PACKAGE int __fastcall GetAlignShift(Controls::TWinControl* Ctrl, Controls::TAlign Align, bool GraphCtrlsToo = false);
extern PACKAGE HWND __fastcall GetParentFormHandle(const HWND CtrlHandle);

}	/* namespace Svclutils */
using namespace Svclutils;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SvclutilsHPP
