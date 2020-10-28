// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Scomboedit.pas' rev: 20.00

#ifndef ScomboeditHPP
#define ScomboeditHPP

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
#include <Acntutils.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Toolwin.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Scustomcomboedit.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Maskutils.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scomboedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsComboEdit;
class PASCALIMPLEMENTATION TsComboEdit : public Scustomcomboedit::TsCustomComboEdit
{
	typedef Scustomcomboedit::TsCustomComboEdit inherited;
	
public:
	__fastcall virtual TsComboEdit(Classes::TComponent* AOwner);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall AfterConstruction(void);
	
__published:
	__property Alignment = {default=0};
	__property CharCase = {default=0};
	__property ClickKey = {default=32808};
	__property DirectInput = {default=1};
	__property EditMask;
	__property Enabled = {default=1};
	__property Font;
	__property HideSelection = {default=1};
	__property Anchors = {default=3};
	__property BiDiMode;
	__property Constraints;
	__property DragKind = {default=0};
	__property ParentBiDiMode = {default=1};
	__property ImeMode = {default=3};
	__property ImeName;
	__property MaxLength = {default=0};
	__property OEMConvert = {default=0};
	__property ParentFont = {default=1};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property ReadOnly = {default=0};
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property Text;
	__property Visible = {default=1};
	__property OnButtonClick;
	__property OnChange;
	__property OnClick;
	__property OnDblClick;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnEndDrag;
	__property OnKeyDown;
	__property OnKeyPress;
	__property OnKeyUp;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnStartDrag;
	__property OnContextPopup;
	__property OnEndDock;
	__property OnStartDock;
	__property AutoSelect = {default=1};
	__property HelpContext = {default=0};
	__property PasswordChar = {default=0};
	__property Hint;
	__property DragCursor = {default=-12};
	__property OnEnter;
	__property OnExit;
public:
	/* TsCustomComboEdit.Destroy */ inline __fastcall virtual ~TsComboEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsComboEdit(HWND ParentWindow) : Scustomcomboedit::TsCustomComboEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Scomboedit */
using namespace Scomboedit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScomboeditHPP
