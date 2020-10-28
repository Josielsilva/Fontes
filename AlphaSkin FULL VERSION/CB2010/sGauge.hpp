// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sgauge.pas' rev: 21.00

#ifndef SgaugeHPP
#define SgaugeHPP

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
#include <Sconst.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit
#include <Svclutils.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sgauge
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TsGaugeKind { gkText, gkHorizontalBar, gkVerticalBar, gkPie, gkNeedle };
#pragma option pop

class DELPHICLASS TsGauge;
class PASCALIMPLEMENTATION TsGauge : public Controls::TGraphicControl
{
	typedef Controls::TGraphicControl inherited;
	
private:
	int FMinValue;
	int FMaxValue;
	int FCurValue;
	TsGaugeKind FKind;
	bool FShowText;
	Classes::TNotifyEvent FOnChange;
	System::UnicodeString FSuffix;
	Scommondata::TsCommonData* FCommonData;
	Graphics::TColor FForeColor;
	Forms::TFormBorderStyle FBorderStyle;
	Graphics::TColor FBackColor;
	System::UnicodeString FProgressSkin;
	bool FCalcPercents;
	bool FAnimated;
	int FLongTime;
	int FAnimPos;
	Graphics::TBitmap* Light;
	void __fastcall PaintBackground(Graphics::TBitmap* AnImage);
	void __fastcall PaintAsText(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	void __fastcall PaintAsNothing(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	void __fastcall PaintAsBar(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	void __fastcall PaintAsPie(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	void __fastcall PaintAsNeedle(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	void __fastcall SkinPaintAsText(const Types::TRect &aRect);
	void __fastcall SkinPaintAsBar(const Types::TRect &aRect);
	void __fastcall SkinPaintAsPie(const Types::TRect &aRect);
	void __fastcall SkinPaintAsNeedle(const Types::TRect &aRect);
	void __fastcall SkinPaintBody(const Types::TRect &aRect);
	void __fastcall SetGaugeKind(TsGaugeKind Value);
	void __fastcall SetShowText(bool Value);
	void __fastcall SetMinValue(int Value);
	void __fastcall SetMaxValue(int Value);
	void __fastcall SetProgress(int Value);
	int __fastcall GetPercentDone(void);
	MESSAGE void __fastcall WMEraseBkGND(Messages::TWMPaint &Message);
	void __fastcall SetSuffix(const System::UnicodeString Value);
	void __fastcall SetForeColor(const Graphics::TColor Value);
	void __fastcall SetBorderStyle(const Forms::TBorderStyle Value);
	void __fastcall SetBackColor(const Graphics::TColor Value);
	void __fastcall SetProgressSkin(const System::UnicodeString Value);
	void __fastcall SetCalcPercents(const bool Value);
	void __fastcall SetAnimated(const bool Value);
	
protected:
	Extctrls::TTimer* Timer;
	Graphics::TBitmap* FTmpProgressBmp;
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall TimerAction(System::TObject* Sender);
	int __fastcall AnimSize(void);
	int __fastcall AnimStep(void);
	void __fastcall UpdateLighting(void);
	
public:
	virtual void __fastcall Paint(void);
	void __fastcall PrepareCache(void);
	__fastcall virtual TsGauge(Classes::TComponent* AOwner);
	__fastcall virtual ~TsGauge(void);
	void __fastcall AddProgress(int Value);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	__property int PercentDone = {read=GetPercentDone, nodefault};
	__property Color = {default=-16777211};
	
__published:
	__property Align = {default=0};
	__property Anchors = {default=3};
	__property Constraints;
	__property Enabled = {default=1};
	__property Font;
	__property ParentFont = {default=1};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property ShowHint;
	__property Visible = {default=1};
	__property OnClick;
	__property OnContextPopup;
	__property OnDblClick;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnResize;
	__property TsGaugeKind Kind = {read=FKind, write=SetGaugeKind, default=1};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property bool CalcPercents = {read=FCalcPercents, write=SetCalcPercents, default=1};
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=1};
	__property bool Animated = {read=FAnimated, write=SetAnimated, default=1};
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
	__property Graphics::TColor BackColor = {read=FBackColor, write=SetBackColor, default=16777215};
	__property Graphics::TColor ForeColor = {read=FForeColor, write=SetForeColor, nodefault};
	__property int MinValue = {read=FMinValue, write=SetMinValue, default=0};
	__property int MaxValue = {read=FMaxValue, write=SetMaxValue, default=100};
	__property int Progress = {read=FCurValue, write=SetProgress, default=47};
	__property System::UnicodeString ProgressSkin = {read=FProgressSkin, write=SetProgressSkin};
	__property bool ShowText = {read=FShowText, write=SetShowText, default=1};
	__property System::UnicodeString Suffix = {read=FSuffix, write=SetSuffix};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int AnimLongDelay;

}	/* namespace Sgauge */
using namespace Sgauge;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SgaugeHPP
