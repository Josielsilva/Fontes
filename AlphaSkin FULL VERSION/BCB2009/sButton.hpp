// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sbutton.pas' rev: 20.00

#ifndef SbuttonHPP
#define SbuttonHPP

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
#include <Imglist.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Sfade.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sbutton
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TButtonStyle { bsPushButton, bsCommandLink, bsSplitButton };
#pragma option pop

class DELPHICLASS TsButton;
class PASCALIMPLEMENTATION TsButton : public Stdctrls::TButton
{
	typedef Stdctrls::TButton inherited;
	
private:
	Scommondata::TsCtrlSkinData* FCommonData;
	bool FMouseClicked;
	bool FDown;
	bool RegionChanged;
	int FFocusMargin;
	Sconst::TsDisabledKind FDisabledKind;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	Sfade::TsFadeTimer* FadeTimer;
	Sconst::TacAnimatEvents FAnimatEvents;
	Types::TRect LastRect;
	bool FShowFocus;
	bool FReflected;
	TButtonStyle FStyle;
	int FContentMargin;
	void __fastcall SetDown(const bool Value);
	void __fastcall SetFocusMargin(const int Value);
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	HIDESBASE MESSAGE void __fastcall WMKeyUp(Messages::TWMKey &Message);
	MESSAGE void __fastcall CNMeasureItem(Messages::TWMMeasureItem &Message);
	bool __fastcall GetDown(void);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetReflected(const bool Value);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE void __fastcall SetStyle(const TButtonStyle Value);
	void __fastcall SetContentMargin(const int Value);
	
protected:
	bool IsFocused;
	HRGN FRegion;
	virtual void __fastcall UpdateImageList(void);
	virtual void __fastcall UpdateImages(void);
	void __fastcall StdDrawItem(const tagDRAWITEMSTRUCT &DrawItemStruct);
	virtual void __fastcall SetButtonStyle(bool ADefault);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall OurPaintHandler(HDC aDC);
	DYNAMIC void __fastcall DrawCaption(Graphics::TCanvas* Canvas = (Graphics::TCanvas*)(0x0));
	DYNAMIC Types::TRect __fastcall CaptionRect();
	DYNAMIC void __fastcall DrawGlyph(Graphics::TCanvas* Canvas = (Graphics::TCanvas*)(0x0));
	bool __fastcall GlyphExist(void);
	void __fastcall PrepareCache(void);
	
public:
	bool Active;
	__fastcall virtual TsButton(Classes::TComponent* AOwner);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	int __fastcall CurrentState(void);
	int __fastcall GlyphIndex(void);
	Types::TRect __fastcall GlyphRect();
	__fastcall virtual ~TsButton(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Sconst::TacAnimatEvents AnimatEvents = {read=FAnimatEvents, write=FAnimatEvents, default=16};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property bool Down = {read=GetDown, write=SetDown, default=0};
	__property int FocusMargin = {read=FFocusMargin, write=SetFocusMargin, default=1};
	__property int ContentMargin = {read=FContentMargin, write=SetContentMargin, default=6};
	__property TButtonStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property bool Reflected = {read=FReflected, write=SetReflected, default=0};
	__property WordWrap = {default=1};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsButton(HWND ParentWindow) : Stdctrls::TButton(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sbutton */
using namespace Sbutton;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SbuttonHPP
