// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acnotebook.pas' rev: 21.00

#ifndef AcnotebookHPP
#define AcnotebookHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acnotebook
{
//-- type declarations -------------------------------------------------------
typedef DynamicArray<Acsbutils::TacMainWnd*> TacWndArray;

class DELPHICLASS TsPage;
class PASCALIMPLEMENTATION TsPage : public Extctrls::TPage
{
	typedef Extctrls::TPage inherited;
	
public:
	/* TPage.Create */ inline __fastcall virtual TsPage(Classes::TComponent* AOwner) : Extctrls::TPage(AOwner) { }
	
public:
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TsPage(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsPage(HWND ParentWindow) : Extctrls::TPage(ParentWindow) { }
	
};


class DELPHICLASS TsNotebook;
class PASCALIMPLEMENTATION TsNotebook : public Extctrls::TNotebook
{
	typedef Extctrls::TNotebook inherited;
	
private:
	Scommondata::TsCommonData* FCommonData;
	TacWndArray wa;
	
public:
	__fastcall virtual TsNotebook(Classes::TComponent* AOwner);
	__fastcall virtual ~TsNotebook(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property Align = {default=0};
	__property Anchors = {default=3};
	__property Color = {default=-16777211};
	__property Ctl3D;
	__property DragCursor = {default=-12};
	__property DragKind = {default=0};
	__property DragMode = {default=0};
	__property Font;
	__property Enabled = {default=1};
	__property Constraints;
	__property ParentColor = {default=1};
	__property ParentCtl3D = {default=1};
	__property ParentFont = {default=1};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=0};
	__property Visible = {default=1};
	__property OnClick;
	__property OnContextPopup;
	__property OnDblClick;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnEndDock;
	__property OnEndDrag;
	__property OnEnter;
	__property OnExit;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnStartDock;
	__property OnStartDrag;
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsNotebook(HWND ParentWindow) : Extctrls::TNotebook(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Acnotebook */
using namespace Acnotebook;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcnotebookHPP
