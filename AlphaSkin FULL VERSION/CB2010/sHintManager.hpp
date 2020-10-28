// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Shintmanager.pas' rev: 21.00

#ifndef ShintmanagerHPP
#define ShintmanagerHPP

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
#include <Sgraphutils.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Shtmlparse.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shintmanager
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TsMousePosition { mpLeftTop, mpLeftBottom, mpRightTop, mpRightBottom };
#pragma option pop

#pragma option push -b-
enum TsHintsEffectsMode { hmNone, hmSystem, hmCustom };
#pragma option pop

typedef Controls::THintInfo THintInfo;

class DELPHICLASS TsHintKind;
class DELPHICLASS TsHintManager;
class PASCALIMPLEMENTATION TsHintKind : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
private:
	TsHintManager* FOwner;
	bool FShadowEnabled;
	int FMarginV;
	int FTexturePercent;
	int FShadowBlur;
	int FTransparency;
	int FGradientPercent;
	int FMarginH;
	int FExOffset;
	int FShadowTransparency;
	int FShadowOffset;
	int FBevelWidth;
	int FMaxWidth;
	int FRadius;
	int FBevel;
	System::UnicodeString FGradientData;
	System::UnicodeString FTextureFile;
	Graphics::TColor FColorBorderTop;
	Graphics::TColor FColorBorderBottom;
	Graphics::TColor FColor;
	Graphics::TColor FShadowColor;
	Graphics::TFont* FFont;
	Graphics::TPicture* FTexture;
	Sconst::TsHintStyle FStyle;
	int FBlur;
	void __fastcall SetFont(const Graphics::TFont* Value);
	void __fastcall SetStyle(const Sconst::TsHintStyle Value);
	void __fastcall SetTexture(const Graphics::TPicture* Value);
	bool __fastcall GetShadowEnabled(void);
	int __fastcall GetShadowBlur(void);
	int __fastcall GetShadowOffset(void);
	int __fastcall GetShadowTransparency(void);
	void __fastcall SetBlur(const int Value);
	void __fastcall SetShadowColor(const Graphics::TColor Value);
	
public:
	__fastcall TsHintKind(TsHintManager* AOwner);
	__fastcall virtual ~TsHintKind(void);
	
__published:
	__property Sconst::TsHintStyle Style = {read=FStyle, write=SetStyle, default=2};
	__property int Radius = {read=FRadius, write=FRadius, default=20};
	__property int BevelWidth = {read=FBevelWidth, write=FBevelWidth, default=1};
	__property int Blur = {read=FBlur, write=SetBlur, default=0};
	__property int ExOffset = {read=FExOffset, write=FExOffset, default=32};
	__property System::UnicodeString GradientData = {read=FGradientData, write=FGradientData};
	__property Graphics::TPicture* Texture = {read=FTexture, write=SetTexture};
	__property System::UnicodeString TextureFile = {read=FTextureFile, write=FTextureFile};
	__property int GradientPercent = {read=FGradientPercent, write=FGradientPercent, default=0};
	__property int TexturePercent = {read=FTexturePercent, write=FTexturePercent, default=0};
	__property int Bevel = {read=FBevel, write=FBevel, nodefault};
	__property Graphics::TColor Color = {read=FColor, write=FColor, nodefault};
	__property Graphics::TColor ColorBorderTop = {read=FColorBorderTop, write=FColorBorderTop, nodefault};
	__property Graphics::TColor ColorBorderBottom = {read=FColorBorderBottom, write=FColorBorderBottom, nodefault};
	__property int Transparency = {read=FTransparency, write=FTransparency, nodefault};
	__property int ShadowBlur = {read=GetShadowBlur, write=FShadowBlur, nodefault};
	__property Graphics::TColor ShadowColor = {read=FShadowColor, write=SetShadowColor, default=0};
	__property bool ShadowEnabled = {read=GetShadowEnabled, write=FShadowEnabled, nodefault};
	__property int ShadowOffset = {read=GetShadowOffset, write=FShadowOffset, nodefault};
	__property int ShadowTransparency = {read=GetShadowTransparency, write=FShadowTransparency, nodefault};
	__property int MarginH = {read=FMarginH, write=FMarginH, default=15};
	__property int MarginV = {read=FMarginV, write=FMarginV, default=10};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, default=200};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
};


typedef void __fastcall (__closure *TacShowHintEvent)(System::UnicodeString &HintStr, bool &CanShow, Controls::THintInfo &HintInfo, Forms::TFrame* &Frame);

class DELPHICLASS TsCustomHintWindow;
class PASCALIMPLEMENTATION TsHintManager : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
private:
	int FPauseHide;
	bool FHTMLMode;
	Sconst::TsHintsPredefinitions FPredefinitions;
	TacShowHintEvent FOnShowHint;
	TsHintKind* FHintKind;
	TsMousePosition FDefaultMousePos;
	bool FAnimated;
	Types::TPoint FHintPos;
	System::UnicodeString FSkinSection;
	bool FUseSkinData;
	void __fastcall SetNewStyle(Sconst::TsHintStyle hs);
	void __fastcall SetPredefinitions(const Sconst::TsHintsPredefinitions Value);
	bool __fastcall GetAnimated(void);
	void __fastcall SetSkinData(const bool Value);
	void __fastcall SetPauseHide(const int Value);
	
public:
	TsCustomHintWindow* FTempHint;
	Graphics::TBitmap* FCacheBmp;
	void __fastcall OnShowHintApp(System::UnicodeString &HintStr, bool &CanShow, Controls::THintInfo &HintInfo);
	__fastcall virtual TsHintManager(Classes::TComponent* AOwner);
	__fastcall virtual ~TsHintManager(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall AfterConstruction(void);
	void __fastcall Invalidate(void);
	void __fastcall PaintBG(Graphics::TBitmap* BGBmp, const Types::TRect &R, const Sconst::TCacheInfo &ci);
	void __fastcall ShowHint(Controls::TControl* TheControl, System::UnicodeString HintText);
	void __fastcall HideHint(void);
	void __fastcall UpdateProperties(void);
	bool __fastcall Skinned(void);
	
__published:
	__property TacShowHintEvent OnShowHint = {read=FOnShowHint, write=FOnShowHint};
	__property bool Animated = {read=GetAnimated, write=FAnimated, default=1};
	__property TsMousePosition DefaultMousePos = {read=FDefaultMousePos, write=FDefaultMousePos, default=0};
	__property TsHintKind* HintKind = {read=FHintKind, write=FHintKind};
	__property bool HTMLMode = {read=FHTMLMode, write=FHTMLMode, default=0};
	__property int PauseHide = {read=FPauseHide, write=SetPauseHide, default=5000};
	__property Sconst::TsHintsPredefinitions Predefinitions = {read=FPredefinitions, write=SetPredefinitions, default=3};
	__property System::UnicodeString SkinSection = {read=FSkinSection, write=FSkinSection};
	__property bool UseSkinData = {read=FUseSkinData, write=SetSkinData, default=0};
};


class PASCALIMPLEMENTATION TsCustomHintWindow : public Controls::THintWindow
{
	typedef Controls::THintWindow inherited;
	
private:
	Types::TPoint FHintLocation;
	HIDESBASE MESSAGE void __fastcall WMEraseBkGND(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMNCPaint(Messages::TWMPaint &Message);
	void __fastcall PrepareMask(void);
	
protected:
	int SkinIndex;
	int BorderIndex;
	int BGIndex;
	HRGN rgn;
	int dx;
	int dy;
	TsMousePosition FMousePos;
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual Types::TPoint __fastcall GetMousePosition(void);
	DYNAMIC Types::TRect __fastcall MainRect(void);
	int __fastcall ShadowTransparency(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	int __fastcall SkinMargin(System::Byte Border);
	
public:
	Graphics::TBitmap* BodyBmp;
	Graphics::TBitmap* MaskBmp;
	Graphics::TBitmap* ScreenBmp;
	Graphics::TBitmap* AlphaBmp;
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	virtual void __fastcall PaintShadow(Graphics::TBitmap* Bmp = (Graphics::TBitmap*)(0x0));
	__property Types::TPoint HintLocation = {read=FHintLocation, write=FHintLocation};
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall PaintBG(Graphics::TBitmap* Bmp, const Types::TRect &aRect);
	DYNAMIC void __fastcall PaintBorder(Graphics::TBitmap* Bmp);
	DYNAMIC void __fastcall TextOut(Graphics::TBitmap* Bmp);
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
	virtual void __fastcall ActivateHint(const Types::TRect &Rect, const System::UnicodeString AHint);
	__fastcall virtual TsCustomHintWindow(Classes::TComponent* AOwner);
	__fastcall virtual ~TsCustomHintWindow(void);
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCustomHintWindow(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	
};


class DELPHICLASS TsSimplyHintWindow;
class PASCALIMPLEMENTATION TsSimplyHintWindow : public TsCustomHintWindow
{
	typedef TsCustomHintWindow inherited;
	
public:
	virtual void __fastcall PaintShadow(Graphics::TBitmap* Bmp = (Graphics::TBitmap*)(0x0));
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	virtual Types::TPoint __fastcall GetMousePosition(void);
	DYNAMIC void __fastcall PaintBorder(Graphics::TBitmap* Bmp);
public:
	/* TsCustomHintWindow.Create */ inline __fastcall virtual TsSimplyHintWindow(Classes::TComponent* AOwner) : TsCustomHintWindow(AOwner) { }
	/* TsCustomHintWindow.Destroy */ inline __fastcall virtual ~TsSimplyHintWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsSimplyHintWindow(HWND ParentWindow) : TsCustomHintWindow(ParentWindow) { }
	
};


class DELPHICLASS TsComicsHintWindow;
class PASCALIMPLEMENTATION TsComicsHintWindow : public TsCustomHintWindow
{
	typedef TsCustomHintWindow inherited;
	
public:
	DYNAMIC Types::TRect __fastcall MainRect(void);
	virtual void __fastcall PaintShadow(Graphics::TBitmap* Bmp = (Graphics::TBitmap*)(0x0));
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	Types::TPoint __fastcall GetArrowPosition(void);
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	DYNAMIC void __fastcall PaintBorder(Graphics::TBitmap* Bmp);
public:
	/* TsCustomHintWindow.Create */ inline __fastcall virtual TsComicsHintWindow(Classes::TComponent* AOwner) : TsCustomHintWindow(AOwner) { }
	/* TsCustomHintWindow.Destroy */ inline __fastcall virtual ~TsComicsHintWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsComicsHintWindow(HWND ParentWindow) : TsCustomHintWindow(ParentWindow) { }
	
};


class DELPHICLASS TsEllipseHintWindow;
class PASCALIMPLEMENTATION TsEllipseHintWindow : public TsCustomHintWindow
{
	typedef TsCustomHintWindow inherited;
	
public:
	Types::TPoint __fastcall GetArrowPosition(void);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	DYNAMIC Types::TRect __fastcall MainRect(void);
	virtual void __fastcall PaintShadow(Graphics::TBitmap* Bmp = (Graphics::TBitmap*)(0x0));
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
	DYNAMIC void __fastcall PaintBorder(Graphics::TBitmap* Bmp);
public:
	/* TsCustomHintWindow.Create */ inline __fastcall virtual TsEllipseHintWindow(Classes::TComponent* AOwner) : TsCustomHintWindow(AOwner) { }
	/* TsCustomHintWindow.Destroy */ inline __fastcall virtual ~TsEllipseHintWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsEllipseHintWindow(HWND ParentWindow) : TsCustomHintWindow(ParentWindow) { }
	
};


class DELPHICLASS TsBalloonHintWindow;
class PASCALIMPLEMENTATION TsBalloonHintWindow : public TsCustomHintWindow
{
	typedef TsCustomHintWindow inherited;
	
public:
	int BalloonCount;
	int Divid;
	virtual void __fastcall PaintShadow(Graphics::TBitmap* Bmp = (Graphics::TBitmap*)(0x0));
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	Graphics::TBitmap* __fastcall GetCustMask(bool Shadow);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	Types::TPoint __fastcall GetArrowPosition(void);
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
	__fastcall virtual TsBalloonHintWindow(Classes::TComponent* AOwner);
	DYNAMIC Types::TRect __fastcall MainRect(void);
	DYNAMIC void __fastcall PaintBorder(Graphics::TBitmap* Bmp);
public:
	/* TsCustomHintWindow.Destroy */ inline __fastcall virtual ~TsBalloonHintWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsBalloonHintWindow(HWND ParentWindow) : TsCustomHintWindow(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const Sconst::TsHintStyle DefStyle = (Sconst::TsHintStyle)(2);
static const Byte DefAnimationTime = 0xfa;
extern PACKAGE StaticArray<Sconst::TsHintsPredefinitions, 9> asHintsPredefinitions;
extern PACKAGE TsHintManager* Manager;
extern PACKAGE bool acHintsInEditor;

}	/* namespace Shintmanager */
using namespace Shintmanager;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ShintmanagerHPP
