// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sCurrencyEdit.pas' rev: 22.00

#ifndef ScurrencyeditHPP
#define ScurrencyeditHPP

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
#include <acntUtils.hpp>	// Pascal unit
#include <sCurrEdit.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <ToolWin.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <sCustomComboEdit.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scurrencyedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsCurrencyEdit;
class PASCALIMPLEMENTATION TsCurrencyEdit : public Scurredit::TsCustomNumEdit
{
	typedef Scurredit::TsCustomNumEdit inherited;
	
public:
	__fastcall virtual TsCurrencyEdit(Classes::TComponent* AOwner);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
__published:
	__property Alignment = {default=1};
	__property AutoSelect = {default=1};
	__property AutoSize = {default=1};
	__property BeepOnError = {default=1};
	__property CheckOnExit = {default=0};
	__property DecimalPlaces = {default=2};
	__property DisplayFormat;
	__property DragCursor = {default=-12};
	__property DragMode = {default=0};
	__property HideSelection = {default=1};
	__property ImeMode = {default=3};
	__property ImeName;
	__property MaxValue;
	__property MinValue;
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property Text;
	__property Value;
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
	__property OnContextPopup;
	__property HelpContext = {default=0};
	__property OEMConvert = {default=0};
	__property ReadOnly = {default=0};
	__property Enabled = {default=1};
	__property Font;
	__property Hint;
	__property MaxLength = {default=0};
	__property ParentFont = {default=1};
	__property CharCase = {default=0};
	__property Anchors = {default=3};
	__property BiDiMode;
	__property Constraints;
	__property DragKind = {default=0};
	__property ParentBiDiMode = {default=1};
	__property OnEndDock;
	__property OnStartDock;
	__property OnStartDrag;
public:
	/* TsCustomNumEdit.Destroy */ inline __fastcall virtual ~TsCurrencyEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCurrencyEdit(HWND ParentWindow) : Scurredit::TsCustomNumEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Scurrencyedit */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Scurrencyedit;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScurrencyeditHPP
