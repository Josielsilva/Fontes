// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sstatusbar.pas' rev: 11.00

#ifndef SstatusbarHPP
#define SstatusbarHPP

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
#include <Sconst.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sstatusbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsStatusBar;
class PASCALIMPLEMENTATION TsStatusBar : public Comctrls::TStatusBar 
{
	typedef Comctrls::TStatusBar inherited;
	
private:
	Scommondata::TsCommonData* FCommonData;
	
protected:
	void __fastcall PaintGrip(void);
	void __fastcall PaintPanels(void);
	int __fastcall PanelOffset(int k);
	HIDESBASE void __fastcall DrawPanel(Comctrls::TStatusPanel* Panel, const Types::TRect &Rect);
	void __fastcall InternalDrawPanel(Comctrls::TStatusPanel* Panel, AnsiString Text, const Types::TRect &Rect);
	void __fastcall DoDrawText(const AnsiString Text, Types::TRect &Rect, int Flags);
	void __fastcall PrepareCache(void);
	void __fastcall OurPaintHandler(HDC MsgDC);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall PaintWindow(HDC DC);
	
public:
	__fastcall virtual TsStatusBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TsStatusBar(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall AfterConstruction(void);
	
__published:
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsStatusBar(HWND ParentWindow) : Comctrls::TStatusBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sstatusbar */
using namespace Sstatusbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sstatusbar
