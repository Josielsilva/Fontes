// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'acAlphaHints.pas' rev: 22.00

#ifndef AcalphahintsHPP
#define AcalphahintsHPP

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
#include <sGraphUtils.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <acntUtils.hpp>	// Pascal unit
#include <sHtmlParse.hpp>	// Pascal unit
#include <acPNG.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acalphahints
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TacMousePosition { mpLeftTop, mpLeftBottom, mpRightTop, mpRightBottom };
#pragma option pop

#pragma option push -b-
enum TacBorderDrawMode { dmRepeat, dmStretch };
#pragma option pop

typedef Controls::THintInfo THintInfo;

typedef void __fastcall (__closure *TacShowHintEvent)(System::UnicodeString &HintStr, bool &CanShow, Controls::THintInfo &HintInfo, Forms::TFrame* &Frame);

class DELPHICLASS TacBorderDrawModes;
class DELPHICLASS TacHintImage;
class PASCALIMPLEMENTATION TacBorderDrawModes : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
private:
	void __fastcall SetDrawMode(const int Index, const TacBorderDrawMode Value);
	
protected:
	TacBorderDrawMode FBottom;
	TacBorderDrawMode FLeft;
	TacBorderDrawMode FTop;
	TacBorderDrawMode FRight;
	TacBorderDrawMode FCenter;
	TacHintImage* FOwner;
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TacBorderDrawModes(TacHintImage* AOwner);
	
__published:
	__property TacBorderDrawMode Top = {read=FTop, write=SetDrawMode, index=0, default=1};
	__property TacBorderDrawMode Left = {read=FLeft, write=SetDrawMode, index=1, default=1};
	__property TacBorderDrawMode Bottom = {read=FBottom, write=SetDrawMode, index=2, default=1};
	__property TacBorderDrawMode Right = {read=FRight, write=SetDrawMode, index=3, default=1};
	__property TacBorderDrawMode Center = {read=FCenter, write=SetDrawMode, index=4, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TacBorderDrawModes(void) { }
	
};


class DELPHICLASS TacBordersSizes;
class PASCALIMPLEMENTATION TacBordersSizes : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
private:
	int __fastcall GetInteger(const int Index);
	
protected:
	int FTop;
	int FLeft;
	int FBottom;
	int FRight;
	TacHintImage* FOwner;
	void __fastcall SetInteger(int Index, int Value);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TacBordersSizes(TacHintImage* AOwner);
	
__published:
	__property int Top = {read=GetInteger, write=SetInteger, index=0, default=0};
	__property int Left = {read=GetInteger, write=SetInteger, index=1, default=0};
	__property int Bottom = {read=GetInteger, write=SetInteger, index=2, default=0};
	__property int Right = {read=GetInteger, write=SetInteger, index=3, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TacBordersSizes(void) { }
	
};


class DELPHICLASS TacHintTemplate;
class PASCALIMPLEMENTATION TacHintImage : public Classes::TPersistent
{
	typedef Classes::TPersistent inherited;
	
private:
	TacHintTemplate* FOwner;
	TacBordersSizes* FBordersWidths;
	TacBordersSizes* FClientMargins;
	TacBorderDrawModes* FBorderDrawModes;
	int __fastcall GetImgHeight(void);
	int __fastcall GetImgWidth(void);
	void __fastcall SetBordersWidths(const TacBordersSizes* Value);
	void __fastcall SetImage(const Acpng::TPNGGraphic* Value);
	void __fastcall SetClientMargins(const TacBordersSizes* Value);
	void __fastcall SetImgHeight(const int Value);
	void __fastcall SetImgWidth(const int Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	Acpng::TPNGGraphic* FImage;
	__fastcall TacHintImage(TacHintTemplate* AOwner);
	__fastcall virtual ~TacHintImage(void);
	void __fastcall ImageChanged(void);
	
__published:
	__property int ImageHeight = {read=GetImgHeight, write=SetImgHeight, nodefault};
	__property int ImageWidth = {read=GetImgWidth, write=SetImgWidth, nodefault};
	__property Acpng::TPNGGraphic* Image = {read=FImage, write=SetImage};
	__property TacBordersSizes* ClientMargins = {read=FClientMargins, write=SetClientMargins};
	__property TacBorderDrawModes* BorderDrawModes = {read=FBorderDrawModes, write=FBorderDrawModes};
	__property TacBordersSizes* BordersWidths = {read=FBordersWidths, write=SetBordersWidths};
};


class DELPHICLASS TacHintTemplates;
class PASCALIMPLEMENTATION TacHintTemplate : public Classes::TCollectionItem
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TacHintImage* FImageDefault;
	TacHintImage* FImageLeftBottom;
	TacHintImage* FImageRightBottom;
	TacHintImage* FImageRightTop;
	System::UnicodeString FName;
	Graphics::TFont* FFont;
	void __fastcall SetHintImage(const int Index, const TacHintImage* Value);
	void __fastcall SetFont(const Graphics::TFont* Value);
	
protected:
	TacHintTemplates* FOwner;
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall virtual ~TacHintTemplate(void);
	__fastcall virtual TacHintTemplate(Classes::TCollection* Collection);
	
__published:
	__property TacHintImage* ImageDefault = {read=FImageDefault, write=SetHintImage, index=0};
	__property TacHintImage* Img_LeftBottom = {read=FImageLeftBottom, write=SetHintImage, index=1};
	__property TacHintImage* Img_RightBottom = {read=FImageRightBottom, write=SetHintImage, index=2};
	__property TacHintImage* Img_RightTop = {read=FImageRightTop, write=SetHintImage, index=3};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property System::UnicodeString Name = {read=FName, write=FName};
};


class DELPHICLASS TsAlphaHints;
class PASCALIMPLEMENTATION TacHintTemplates : public Classes::TCollection
{
	typedef Classes::TCollection inherited;
	
public:
	TacHintTemplate* operator[](int Index) { return Items[Index]; }
	
protected:
	TsAlphaHints* FOwner;
	HIDESBASE TacHintTemplate* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TacHintTemplate* Value);
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TacHintTemplates(TsAlphaHints* AOwner);
	__fastcall virtual ~TacHintTemplates(void);
	__property TacHintTemplate* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class DELPHICLASS TacCustomHintWindow;
class PASCALIMPLEMENTATION TsAlphaHints : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
private:
	int FPauseHide;
	bool FHTMLMode;
	TacShowHintEvent FOnShowHint;
	TacMousePosition FDefaultMousePos;
	bool FAnimated;
	Types::TPoint FHintPos;
	int FMaxWidth;
	System::UnicodeString FSkinSection;
	bool FUseSkinData;
	bool FActive;
	TacHintTemplates* FTemplates;
	int FTemplateIndex;
	System::UnicodeString FTemplateName;
	Classes::TNotifyEvent FOnChange;
	bool __fastcall GetAnimated(void);
	void __fastcall SetSkinData(const bool Value);
	void __fastcall SetPauseHide(const int Value);
	void __fastcall SetActive(const bool Value);
	void __fastcall UpdateHWClass(void);
	void __fastcall SetTemplates(const TacHintTemplates* Value);
	void __fastcall SetTemplateName(const System::UnicodeString Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	TacCustomHintWindow* FTempHint;
	Graphics::TBitmap* FCacheBmp;
	void __fastcall OnShowHintApp(System::UnicodeString &HintStr, bool &CanShow, Controls::THintInfo &HintInfo);
	__fastcall virtual TsAlphaHints(Classes::TComponent* AOwner);
	__fastcall virtual ~TsAlphaHints(void);
	virtual void __fastcall Loaded(void);
	void __fastcall Changed(void);
	virtual void __fastcall AfterConstruction(void);
	void __fastcall ShowHint(Controls::TControl* TheControl, System::UnicodeString HintText)/* overload */;
	void __fastcall ShowHint(const Types::TPoint &Position, System::UnicodeString HintText)/* overload */;
	void __fastcall HideHint(void);
	bool __fastcall Skinned(void);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TacMousePosition DefaultMousePos = {read=FDefaultMousePos, write=FDefaultMousePos, default=0};
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=1};
	__property TacShowHintEvent OnShowHint = {read=FOnShowHint, write=FOnShowHint};
	__property bool Animated = {read=GetAnimated, write=FAnimated, default=1};
	__property int MaxWidth = {read=FMaxWidth, write=FMaxWidth, default=120};
	__property TacHintTemplates* Templates = {read=FTemplates, write=SetTemplates};
	__property System::UnicodeString TemplateName = {read=FTemplateName, write=SetTemplateName};
	__property bool HTMLMode = {read=FHTMLMode, write=FHTMLMode, default=0};
	__property int PauseHide = {read=FPauseHide, write=SetPauseHide, default=5000};
	__property System::UnicodeString SkinSection = {read=FSkinSection, write=FSkinSection};
	__property bool UseSkinData = {read=FUseSkinData, write=SetSkinData, default=0};
};


class PASCALIMPLEMENTATION TacCustomHintWindow : public Controls::THintWindow
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
	TacMousePosition FMousePos;
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual Types::TPoint __fastcall GetMousePosition(void);
	DYNAMIC Types::TRect __fastcall MainRect(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	int __fastcall SkinMargin(System::Byte Border);
	
public:
	Graphics::TBitmap* BodyBmp;
	Graphics::TBitmap* MaskBmp;
	Graphics::TBitmap* AlphaBmp;
	DYNAMIC Graphics::TBitmap* __fastcall GetMask(void);
	DYNAMIC Graphics::TBitmap* __fastcall GetBody(void);
	__property Types::TPoint HintLocation = {read=FHintLocation, write=FHintLocation};
	virtual void __fastcall CreateAlphaBmp(const int Width, const int Height);
	DYNAMIC void __fastcall TextOut(Graphics::TBitmap* Bmp);
	TacMousePosition __fastcall GetArrowPos(Types::TRect &Rect, const Types::TPoint &mPos);
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
	virtual void __fastcall ActivateHint(const Types::TRect &Rect, const System::UnicodeString AHint);
	__fastcall virtual TacCustomHintWindow(Classes::TComponent* AOwner);
	__fastcall virtual ~TacCustomHintWindow(void);
public:
	/* TWinControl.CreateParented */ inline __fastcall TacCustomHintWindow(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	
};


class DELPHICLASS TacPngHintWindow;
class PASCALIMPLEMENTATION TacPngHintWindow : public TacCustomHintWindow
{
	typedef TacCustomHintWindow inherited;
	
public:
	__fastcall virtual TacPngHintWindow(Classes::TComponent* AOwner);
	virtual void __fastcall CreateAlphaBmp(const int Width, const int Height);
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const System::UnicodeString AHint, void * AData);
public:
	/* TacCustomHintWindow.Destroy */ inline __fastcall virtual ~TacPngHintWindow(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TacPngHintWindow(HWND ParentWindow) : TacCustomHintWindow(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Byte DefAnimationTime = 0xfa;
extern PACKAGE TsAlphaHints* Manager;
extern PACKAGE void __fastcall CopyChannel32(const Graphics::TBitmap* DstBmp, const Graphics::TBitmap* SrcBmp, const int Channel);

}	/* namespace Acalphahints */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Acalphahints;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcalphahintsHPP
