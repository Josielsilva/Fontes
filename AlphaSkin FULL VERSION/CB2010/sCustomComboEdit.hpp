// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Scustomcomboedit.pas' rev: 21.00

#ifndef ScustomcomboeditHPP
#define ScustomcomboeditHPP

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
#include <Mask.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Scalcunit.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Smaskedit.hpp>	// Pascal unit
#include <Sskinprops.hpp>	// Pascal unit
#include <Sbitbtn.hpp>	// Pascal unit
#include <Sglyphutils.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Maskutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scustomcomboedit
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TCloseUpEvent)(System::TObject* Sender, bool Accept);

class DELPHICLASS TsEditButton;
class DELPHICLASS TsCustomComboEdit;
class PASCALIMPLEMENTATION TsEditButton : public Sspeedbutton::TsSpeedButton
{
	typedef Sspeedbutton::TsSpeedButton inherited;
	
private:
	TsCustomComboEdit* FOwner;
	
public:
	void __fastcall BeginInitGlyph(void);
	void __fastcall EndInitGlyph(void);
	__fastcall virtual TsEditButton(Classes::TComponent* AOwner);
	void __fastcall PaintTo(HDC DC, const Types::TPoint &R);
	virtual void __fastcall PrepareCache(void);
	virtual void __fastcall Paint(void);
	virtual int __fastcall GlyphWidth(void);
	virtual int __fastcall GlyphHeight(void);
public:
	/* TsSpeedButton.Destroy */ inline __fastcall virtual ~TsEditButton(void) { }
	
};


class PASCALIMPLEMENTATION TsCustomComboEdit : public Smaskedit::TsMaskEdit
{
	typedef Smaskedit::TsMaskEdit inherited;
	
private:
	TsEditButton* FButton;
	Classes::TShortCut FClickKey;
	bool FReadOnly;
	bool FDirectInput;
	Classes::TAlignment FAlignment;
	Sconst::TPopupWindowAlign FPopupWindowAlign;
	Sglyphutils::TsGlyphMode* FGlyphMode;
	int FPopupWidth;
	Sconst::TsDisabledKind FDisabledKind;
	bool FShowButton;
	void __fastcall EditButtonClick(System::TObject* Sender);
	void __fastcall EditButtonMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall EditButtonMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	bool __fastcall GetDroppedDown(void);
	void __fastcall SetDirectInput(bool Value);
	HIDESBASE void __fastcall SetReadOnly(bool Value);
	HIDESBASE void __fastcall SetAlignment(Classes::TAlignment Value);
	MESSAGE void __fastcall CMCancelMode(Controls::TCMCancelMode &Message);
	HIDESBASE MESSAGE void __fastcall WMPaste(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMCut(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall CMFocuseChanged(Controls::TCMFocusChanged &Message);
	void __fastcall SetPopupWidth(const int Value);
	HIDESBASE void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	void __fastcall SetShowButton(const bool Value);
	
protected:
	Classes::TNotifyEvent FOnButtonClick;
	virtual void __fastcall SetEditRect(void);
	virtual bool __fastcall IsActive(void);
	virtual void __fastcall PaintBorder(HDC DC);
	virtual void __fastcall PaintText(void);
	virtual void __fastcall OurPaintHandler(HDC DC);
	virtual bool __fastcall GetReadOnly(void);
	DYNAMIC void __fastcall KeyPress(System::WideChar &Key);
	virtual void __fastcall PopupWindowShow(void);
	virtual void __fastcall PopupWindowClose(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall KeyDown(System::Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall ButtonClick(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property Sconst::TPopupWindowAlign PopupAlign = {read=FPopupWindowAlign, write=FPopupWindowAlign, default=0};
	
public:
	int FDefBmpID;
	Controls::TWinControl* FPopupWindow;
	__fastcall virtual TsCustomComboEdit(Classes::TComponent* AOwner);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TsCustomComboEdit(void);
	virtual void __fastcall Invalidate(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall DoClick(void);
	HIDESBASE virtual void __fastcall SelectAll(void);
	__property TsEditButton* Button = {read=FButton};
	__property bool DroppedDown = {read=GetDroppedDown, nodefault};
	__property int PopupWidth = {read=FPopupWidth, write=SetPopupWidth, default=197};
	
__published:
	__property Align = {default=0};
	__property Anchors = {default=3};
	__property AutoSelect = {default=1};
	__property DragCursor = {default=-12};
	__property DragMode = {default=0};
	__property EditMask;
	__property Enabled = {default=1};
	__property Font;
	__property HideSelection = {default=1};
	__property ImeMode = {default=3};
	__property ImeName;
	__property ParentFont = {default=1};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property Text;
	__property Visible = {default=1};
	__property OnChange;
	__property OnClick;
	__property OnDblClick;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnEndDrag;
	__property OnEnter;
	__property OnExit;
	__property OnKeyDown;
	__property OnKeyPress;
	__property OnKeyUp;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnStartDrag;
	__property OnContextPopup;
	__property Classes::TNotifyEvent OnButtonClick = {read=FOnButtonClick, write=FOnButtonClick};
	__property bool ShowButton = {read=FShowButton, write=SetShowButton, default=1};
	__property Classes::TShortCut ClickKey = {read=FClickKey, write=FClickKey, default=32808};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property Sglyphutils::TsGlyphMode* GlyphMode = {read=FGlyphMode, write=FGlyphMode};
	__property bool DirectInput = {read=FDirectInput, write=SetDirectInput, default=1};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, default=0};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCustomComboEdit(HWND ParentWindow) : Smaskedit::TsMaskEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Scustomcomboedit */
using namespace Scustomcomboedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScustomcomboeditHPP
