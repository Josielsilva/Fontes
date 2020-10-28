// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Streeview.pas' rev: 11.00

#ifndef StreeviewHPP
#define StreeviewHPP

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
#include <Comctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Smessages.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Acsbutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Streeview
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsTreeView;
class PASCALIMPLEMENTATION TsTreeView : public Comctrls::TTreeView 
{
	typedef Comctrls::TTreeView inherited;
	
private:
	Scommondata::TsCtrlSkinData* FCommonData;
	Scommondata::TsBoundLabel* FBoundLabel;
	Comctrls::TTVAdvancedCustomDrawItemEvent FOldDrawItem;
	
protected:
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall Loaded(void);
	void __fastcall SkinCustomDrawItem(Comctrls::TCustomTreeView* Sender, Comctrls::TTreeNode* Node, Comctrls::TCustomDrawState State, Comctrls::TCustomDrawStage Stage, bool &PaintImages, bool &DefaultDraw);
	
public:
	Acsbutils::TacScrollWnd* ListSW;
	__fastcall virtual TsTreeView(Classes::TComponent* AOwner);
	__fastcall virtual ~TsTreeView(void);
	virtual void __fastcall AfterConstruction(void);
	
__published:
	__property Scommondata::TsBoundLabel* BoundLabel = {read=FBoundLabel, write=FBoundLabel};
	__property Scommondata::TsCtrlSkinData* SkinData = {read=FCommonData, write=FCommonData};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsTreeView(HWND ParentWindow) : Comctrls::TTreeView(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Comctrls::TTreeNode* __fastcall GetNodeByText(const Comctrls::TCustomTreeView* TreeView, const AnsiString s);

}	/* namespace Streeview */
using namespace Streeview;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Streeview
