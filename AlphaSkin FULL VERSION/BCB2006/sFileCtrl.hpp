// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sfilectrl.pas' rev: 10.00

#ifndef SfilectrlHPP
#define SfilectrlHPP

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
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Scombobox.hpp>	// Pascal unit
#include <Scomboboxes.hpp>	// Pascal unit
#include <Shlobj.hpp>	// Pascal unit
#include <Activex.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sfilectrl
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsFilterComboBox;
class PASCALIMPLEMENTATION TsFilterComboBox : public Scombobox::TsCustomComboBox 
{
	typedef Scombobox::TsCustomComboBox inherited;
	
private:
	AnsiString FFilter;
	bool __fastcall IsFilterStored(void);
	AnsiString __fastcall GetMask();
	void __fastcall SetFilter(const AnsiString NewFilter);
	
protected:
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall Click(void);
	void __fastcall BuildList(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	Classes::TStringList* MaskList;
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual TsFilterComboBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TsFilterComboBox(void);
	__property AnsiString Mask = {read=GetMask};
	__property Text ;
	
__published:
	__property Anchors  = {default=3};
	__property Color  = {default=-16777211};
	__property Constraints ;
	__property Ctl3D ;
	__property DragMode  = {default=0};
	__property DragCursor  = {default=-12};
	__property Enabled  = {default=1};
	__property Font ;
	__property ImeName ;
	__property ImeMode  = {default=3};
	__property ParentColor  = {default=0};
	__property ParentCtl3D  = {default=1};
	__property ParentFont  = {default=1};
	__property ParentShowHint  = {default=1};
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder  = {default=-1};
	__property TabStop  = {default=1};
	__property Visible  = {default=1};
	__property OnChange ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnStartDrag ;
	__property AnsiString Filter = {read=FFilter, write=SetFilter, stored=IsFilterStored};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsFilterComboBox(HWND ParentWindow) : Scombobox::TsCustomComboBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sfilectrl */
using namespace Sfilectrl;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sfilectrl
