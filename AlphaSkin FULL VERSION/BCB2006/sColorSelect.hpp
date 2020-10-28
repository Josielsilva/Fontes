// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Scolorselect.pas' rev: 10.00

#ifndef ScolorselectHPP
#define ScolorselectHPP

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
#include <Buttons.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scolorselect
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsColorSelect;
class PASCALIMPLEMENTATION TsColorSelect : public Sspeedbutton::TsSpeedButton 
{
	typedef Sspeedbutton::TsSpeedButton inherited;
	
private:
	Graphics::TColor FColorValue;
	Classes::TNotifyEvent FOnChange;
	int FImgWidth;
	int FImgHeight;
	bool FStandardDlg;
	void __fastcall SetColorValue(const Graphics::TColor Value);
	void __fastcall SetImgHeight(const int Value);
	void __fastcall SetImgWidth(const int Value);
	
public:
	Dialogs::TColorDialog* ColorDialog;
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsColorSelect(Classes::TComponent* AOwner);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall UpdateGlyph(bool Repaint = true);
	
__published:
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Graphics::TColor ColorValue = {read=FColorValue, write=SetColorValue, nodefault};
	__property int ImgWidth = {read=FImgWidth, write=SetImgWidth, default=15};
	__property int ImgHeight = {read=FImgHeight, write=SetImgHeight, default=15};
	__property bool StandardDlg = {read=FStandardDlg, write=FStandardDlg, default=0};
public:
	#pragma option push -w-inl
	/* TsSpeedButton.Destroy */ inline __fastcall virtual ~TsColorSelect(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Scolorselect */
using namespace Scolorselect;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Scolorselect
