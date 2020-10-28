// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sradiobutton.pas' rev: 10.00

#ifndef SradiobuttonHPP
#define SradiobuttonHPP

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
#include <Types.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Sfade.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sradiobutton
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsRadioButton;
class PASCALIMPLEMENTATION TsRadioButton : public Stdctrls::TRadioButton 
{
	typedef Stdctrls::TRadioButton inherited;
	
private:
	Scommondata::TsCommonData* FCommonData;
	Sconst::TsDisabledKind FDisabledKind;
	Graphics::TBitmap* FGlyphUnChecked;
	Graphics::TBitmap* FGlyphChecked;
	int FTextIndent;
	bool FShowFocus;
	int FMargin;
	Sfade::TsFadeTimer* FadeTimer;
	Sconst::TacAnimatEvents FAnimatEvents;
	void __fastcall SetDisabledKind(const Sconst::TsDisabledKind Value);
	void __fastcall SetGlyphChecked(const Graphics::TBitmap* Value);
	void __fastcall SetGlyphUnChecked(const Graphics::TBitmap* Value);
	void __fastcall SetTextIndent(const int Value);
	void __fastcall SetShowFocus(const bool Value);
	void __fastcall SetMargin(const int Value);
	void __fastcall SetReadOnly(const bool Value);
	
protected:
	bool FPressed;
	bool FReadOnly;
	virtual bool __fastcall GetReadOnly(void);
	virtual bool __fastcall CanModify(void);
	virtual bool __fastcall CanAutoSize(int &NewWidth, int &NewHeight);
	HIDESBASE void __fastcall PaintHandler(const Messages::TWMPaint &M);
	void __fastcall PaintControl(HDC DC);
	void __fastcall DrawCheckText(void);
	void __fastcall DrawCheckArea(void);
	void __fastcall DrawSkinGlyph(int i);
	void __fastcall PaintGlyph(Graphics::TBitmap* Bmp, const int Index);
	int __fastcall SkinGlyphWidth(int i);
	int __fastcall SkinGlyphHeight(int i);
	Types::TRect __fastcall SkinCheckRect(int i);
	Graphics::TBitmap* __fastcall Glyph(void);
	Types::TRect __fastcall CheckRect();
	int __fastcall GlyphWidth(void);
	int __fastcall GlyphHeight(void);
	short __fastcall GlyphMaskIndex(bool Checked);
	void __fastcall PrepareCache(void);
	
public:
	DYNAMIC Classes::TAlignment __fastcall GetControlsAlignment(void);
	virtual void __fastcall AfterConstruction(void);
	__fastcall virtual TsRadioButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TsRadioButton(void);
	virtual void __fastcall Invalidate(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property AutoSize  = {default=1};
	__property int Margin = {read=FMargin, write=SetMargin, default=2};
	__property Sconst::TacAnimatEvents AnimatEvents = {read=FAnimatEvents, write=FAnimatEvents, default=16};
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
	__property Sconst::TsDisabledKind DisabledKind = {read=FDisabledKind, write=SetDisabledKind, default=1};
	__property Graphics::TBitmap* GlyphChecked = {read=FGlyphChecked, write=SetGlyphChecked};
	__property Graphics::TBitmap* GlyphUnChecked = {read=FGlyphUnChecked, write=SetGlyphUnChecked};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, default=0};
	__property bool ShowFocus = {read=FShowFocus, write=SetShowFocus, default=1};
	__property int TextIndent = {read=FTextIndent, write=SetTextIndent, default=0};
	__property WordWrap  = {default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsRadioButton(HWND ParentWindow) : Stdctrls::TRadioButton(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sradiobutton */
using namespace Sradiobutton;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sradiobutton
