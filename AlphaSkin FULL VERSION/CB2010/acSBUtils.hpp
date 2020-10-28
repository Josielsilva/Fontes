// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acsbutils.pas' rev: 21.00

#ifndef AcsbutilsHPP
#define AcsbutilsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sskinmanager.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Acalphaimagelist.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Types.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Typinfo.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acsbutils
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TDropMarkMode { dmmNone, dmmLeft, dmmRight };
#pragma option pop

struct THeaderPaintInfo
{
	
public:
	Graphics::TCanvas* TargetCanvas;
	Classes::TCollectionItem* Column;
	Types::TRect PaintRectangle;
	Types::TRect TextRectangle;
	bool IsHoverIndex;
	bool IsDownIndex;
	bool IsEnabled;
	bool ShowHeaderGlyph;
	bool ShowSortGlyph;
	bool ShowRightBorder;
	TDropMarkMode DropMark;
	Types::TPoint GlyphPos;
	Types::TPoint SortGlyphPos;
};


#pragma option push -b-
enum Acsbutils__1 { hpeBackground, hpeDropMark, hpeHeaderGlyph, hpeSortGlyph, hpeText };
#pragma option pop

typedef Set<Acsbutils__1, hpeBackground, hpeText>  THeaderPaintElements;

typedef void __fastcall (__closure *TAdvancedHeaderPaintEvent)(Classes::TPersistent* Sender, THeaderPaintInfo &PaintInfo, const THeaderPaintElements Elements);

typedef void __fastcall (__closure *THeaderPaintQueryElementsEvent)(Classes::TPersistent* Sender, THeaderPaintInfo &PaintInfo, THeaderPaintElements &Elements);

typedef TAdvancedHeaderPaintEvent *PAdvancedHeaderPaintEvent;

typedef THeaderPaintQueryElementsEvent *PHeaderPaintQueryElementsEvent;

class DELPHICLASS TacScrollBar;
class DELPHICLASS TacScrollWnd;
class PASCALIMPLEMENTATION TacScrollBar : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Word fScrollFlags;
	bool fScrollVisible;
	#pragma pack(push,1)
	tagSCROLLINFO ScrollInfo;
	#pragma pack(pop)
	int nArrowLength;
	int nArrowWidth;
	int nButSizeBefore;
	int nButSizeAfter;
	bool fButVisibleBefore;
	bool fButVisibleAfter;
	System::Word nBarType;
	System::Word fFlatScrollbar;
	int nMinThumbSize;
	TacScrollWnd* sw;
public:
	/* TObject.Create */ inline __fastcall TacScrollBar(void) : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TacScrollBar(void) { }
	
};


class DELPHICLASS TacSpeedButtonHandler;
class PASCALIMPLEMENTATION TacSpeedButtonHandler : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	Types::TRect WndRect;
	tagSIZE WndSize;
	Types::TPoint WndPos;
	Types::TRect ParentRect;
	HWND ParentWnd;
	Controls::TControl* Ctrl;
	Classes::TWndMethod OldWndProc;
	void *OldProc;
	Sskinmanager::TsSkinManager* SkinManager;
	Scommondata::TsCommonData* SkinData;
	bool Destroyed;
	void *NewWndProcInstance;
	__fastcall virtual TacSpeedButtonHandler(Controls::TControl* Btn, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	__fastcall virtual ~TacSpeedButtonHandler(void);
	int __fastcall CallPrevWndProc(Controls::TControl* Ctrl, int Msg, int WParam, int &LParam);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	void __fastcall AC_WMPaint(Messages::TWMPaint &Message);
	void __fastcall PrepareCache(void);
	void __fastcall DrawCaption(void);
	void __fastcall DrawGlyph(void);
	System::UnicodeString __fastcall Caption(void);
	Types::TRect __fastcall ImgRect(void);
	int __fastcall GlyphHeight(void);
	Types::TRect __fastcall CaptionRect(void);
	tagSIZE __fastcall TextRectSize(void);
	int __fastcall GlyphWidth(void);
	void __fastcall DoDrawText(Types::TRect &Rect, int Flags);
	int __fastcall CurrentState(void);
};


class DELPHICLASS TacMainWnd;
class PASCALIMPLEMENTATION TacMainWnd : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	bool DlgMode;
	System::UnicodeString Caption;
	Types::TRect WndRect;
	tagSIZE WndSize;
	Types::TPoint WndPos;
	Types::TRect ParentRect;
	HWND ParentWnd;
	Classes::TWndMethod OldWndProc;
	void *OldProc;
	HWND CtrlHandle;
	Sskinmanager::TsSkinManager* SkinManager;
	Scommondata::TsCommonData* SkinData;
	bool DontRepaint;
	bool ParamsChanged;
	Graphics::TColor StdColor;
	Graphics::TColor StdFontColor;
	bool Destroyed;
	bool OwnSkinData;
	void *NewWndProcInstance;
	int Tag;
	__fastcall virtual TacMainWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	virtual void __fastcall SaveStdParams(void);
	virtual void __fastcall RestoreStdParams(void);
	virtual void __fastcall SetSkinParams(void);
	__fastcall virtual ~TacMainWnd(void);
	int __fastcall CallPrevWndProc(HWND Handle, int Msg, int WParam, int &LParam);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
};


class DELPHICLASS TacStaticWnd;
class PASCALIMPLEMENTATION TacStaticWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	virtual void __fastcall AC_WMPaint(Messages::TWMPaint &Message);
	virtual bool __fastcall PaintText(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacStaticWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacStaticWnd(void) { }
	
};


class DELPHICLASS TacEdgeWnd;
class PASCALIMPLEMENTATION TacEdgeWnd : public TacStaticWnd
{
	typedef TacStaticWnd inherited;
	
public:
	virtual void __fastcall AC_WMPaint(Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacEdgeWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacStaticWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacEdgeWnd(void) { }
	
};


class DELPHICLASS TacIconWnd;
class PASCALIMPLEMENTATION TacIconWnd : public TacStaticWnd
{
	typedef TacStaticWnd inherited;
	
public:
	bool IsBmp;
	Graphics::TBitmap* FBmp;
	__fastcall virtual TacIconWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	__fastcall virtual ~TacIconWnd(void);
	virtual bool __fastcall PaintText(void);
};


class DELPHICLASS TacDlgPanelWnd;
class PASCALIMPLEMENTATION TacDlgPanelWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Extctrls::TPanel* Panel;
	__fastcall virtual TacDlgPanelWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	DYNAMIC void __fastcall PrepareCache(void);
	void __fastcall AC_WMNCPaint(HDC aDC);
	void __fastcall AC_WMPaint(HDC aDC);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual void __fastcall SetSkinParams(void);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacDlgPanelWnd(void) { }
	
};


class DELPHICLASS TacLinkWnd;
class PASCALIMPLEMENTATION TacLinkWnd : public TacStaticWnd
{
	typedef TacStaticWnd inherited;
	
public:
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual bool __fastcall PaintText(void);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacLinkWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacStaticWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacLinkWnd(void) { }
	
};


class DELPHICLASS TacBtnWnd;
class PASCALIMPLEMENTATION TacBtnWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	__fastcall virtual TacBtnWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	unsigned __fastcall CtrlStyle(void);
	bool __fastcall Down(void);
	int __fastcall CurrentState(void);
	virtual void __fastcall DrawCaption(void);
	virtual void __fastcall DrawGlyph(void);
	virtual tagSIZE __fastcall GlyphSize(void);
	virtual void __fastcall DoDrawText(Types::TRect &Rect, int Flags);
	virtual Types::TRect __fastcall CaptionRect(void);
	virtual int __fastcall MaxCaptionWidth(void);
	virtual tagSIZE __fastcall TextRectSize(void);
	virtual void __fastcall PrepareCache(void);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	void __fastcall Repaint(void);
	virtual void __fastcall RestoreStdParams(void);
	virtual void __fastcall SetSkinParams(void);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacBtnWnd(void) { }
	
};


class DELPHICLASS TacBitBtnWnd;
class PASCALIMPLEMENTATION TacBitBtnWnd : public TacBtnWnd
{
	typedef TacBtnWnd inherited;
	
public:
	HBITMAP hBmp;
	HICON hIco;
	virtual Types::TRect __fastcall CaptionRect(void);
	Types::TRect __fastcall GlyphRect(void);
	virtual tagSIZE __fastcall GlyphSize(void);
	virtual void __fastcall DrawGlyph(void);
	virtual int __fastcall MaxCaptionWidth(void);
public:
	/* TacBtnWnd.Create */ inline __fastcall virtual TacBitBtnWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacBtnWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacBitBtnWnd(void) { }
	
};


class DELPHICLASS TacButtonWnd;
class PASCALIMPLEMENTATION TacButtonWnd : public TacBtnWnd
{
	typedef TacBtnWnd inherited;
	
public:
	Stdctrls::TButton* Btn;
	bool __fastcall HaveImage(void);
	virtual Types::TRect __fastcall CaptionRect(void);
	int __fastcall GlyphIndex(void);
	Types::TRect __fastcall GlyphRect(void);
	virtual tagSIZE __fastcall GlyphSize(void);
	virtual void __fastcall DrawGlyph(void);
	__fastcall virtual TacButtonWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacButtonWnd(void) { }
	
};


class DELPHICLASS TacSizerWnd;
class PASCALIMPLEMENTATION TacSizerWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacSizerWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacSizerWnd(void) { }
	
};


class DELPHICLASS TacSpinWnd;
class PASCALIMPLEMENTATION TacSpinWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	int lOffset;
	bool bMousePressed;
	int Btn1State;
	int Btn2State;
	virtual bool __fastcall IsVertical(void);
	__fastcall virtual TacSpinWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	void __fastcall PrepareCache(void);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacSpinWnd(void) { }
	
};


typedef DynamicArray<Types::TPoint> TAPoint;

class DELPHICLASS TacTrackWnd;
class PASCALIMPLEMENTATION TacTrackWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	bool bMousePressed;
	int TrackBarNdx;
	int TickHeight;
	double iStep;
	virtual bool __fastcall IsVertical(void);
	__fastcall virtual TacTrackWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	void __fastcall PrepareCache(void);
	void __fastcall PaintBody(void);
	void __fastcall PaintBar(void);
	void __fastcall PaintThumb(int i);
	void __fastcall PaintTicksHor(void);
	void __fastcall PaintTicksVer(void);
	void __fastcall PaintTick(const Types::TPoint &P, bool Horz);
	Comctrls::TTickMark __fastcall TickMarks(void);
	Comctrls::TTickStyle __fastcall TickStyle(void);
	int __fastcall TickCount(void);
	TAPoint __fastcall TicksArray(void);
	int __fastcall TickPos(int i);
	Types::TRect __fastcall ThumbRect(void);
	Types::TRect __fastcall ChannelRect(void);
	int __fastcall Mode(void);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacTrackWnd(void) { }
	
};


class DELPHICLASS TacCheckBoxWnd;
class PASCALIMPLEMENTATION TacCheckBoxWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	bool OwnerDraw;
	Stdctrls::TCheckBoxState __fastcall State(void);
	int __fastcall CtlState(void);
	Types::TRect __fastcall CheckRect(void);
	Types::TRect __fastcall SkinCheckRect(int i);
	int __fastcall SkinGlyphWidth(int i);
	int __fastcall SkinGlyphHeight(int i);
	void __fastcall DrawCheckText(void);
	void __fastcall DrawSkinGlyph(int i);
	short __fastcall GlyphMaskIndex(Stdctrls::TCheckBoxState State);
	void __fastcall PrepareCache(void);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	__fastcall virtual TacCheckBoxWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacCheckBoxWnd(void) { }
	
};


class DELPHICLASS TacToolBarWnd;
class PASCALIMPLEMENTATION TacToolBarWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Types::TRect ClientRect;
	int BorderWidth;
	int HotBtn;
	void __fastcall PrepareCache(void);
	void __fastcall DrawButtons(Graphics::TBitmap* Bmp);
	void __fastcall DrawBtn(int Index, const Types::TRect &R, HDC DC);
	Types::TRect __fastcall GetButtonRect(int Index);
	int __fastcall Count(void);
	Types::TRect __fastcall ButtonRect(int Index);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	void __fastcall AC_WMPrint(const Messages::TWMPaint &Message);
	void __fastcall AC_WMNCPaint(const Messages::TMessage &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacToolBarWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacToolBarWnd(void) { }
	
};


class DELPHICLASS TacTransPanelWnd;
class PASCALIMPLEMENTATION TacTransPanelWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	virtual void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacTransPanelWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacTransPanelWnd(void) { }
	
};


class DELPHICLASS TacGroupBoxWnd;
class PASCALIMPLEMENTATION TacGroupBoxWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	__fastcall virtual TacGroupBoxWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	Types::TRect __fastcall CaptionRect(void);
	void __fastcall PrepareCache(void);
	void __fastcall WriteText(const Types::TRect &R);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacGroupBoxWnd(void) { }
	
};


class DELPHICLASS TacTabWnd;
class PASCALIMPLEMENTATION TacTabWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Types::TRect __fastcall DisplayRect(void);
	void __fastcall PrepareCache(void);
	void __fastcall AC_WMPaint(const Messages::TWMPaint &Message);
	void __fastcall AC_WMNCPaint(const Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacTabWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacTabWnd(void) { }
	
};


class PASCALIMPLEMENTATION TacScrollWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	System::Word bars;
	TacScrollBar* sBarHorz;
	TacScrollBar* sBarVert;
	bool fThumbTracking;
	bool fLeftScrollbar;
	int cxLeftEdge;
	int cxRightEdge;
	int cyTopEdge;
	int cyBottomEdge;
	bool bPreventStyleChange;
	__fastcall virtual ~TacScrollWnd(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacScrollWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacMainWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
};


class DELPHICLASS TacPanelWnd;
class PASCALIMPLEMENTATION TacPanelWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	__fastcall virtual TacPanelWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	virtual void __fastcall PrepareCache(void);
	void __fastcall AC_WMNCPaint(HDC aDC);
	virtual void __fastcall AC_WMPaint(HDC &aDC);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	void __fastcall WriteText(const Types::TRect &R, Graphics::TCanvas* aCanvas = (Graphics::TCanvas*)(0x0), HDC aDC = (HDC)(0x0));
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacPanelWnd(void) { }
	
};


class DELPHICLASS TacMnuWnd;
class PASCALIMPLEMENTATION TacMnuWnd : public TacScrollWnd
{
	typedef TacScrollWnd inherited;
	
public:
	int RgnChanged;
	DYNAMIC void __fastcall PrepareCache(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	__fastcall virtual TacMnuWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacMnuWnd(void) { }
	
};


class DELPHICLASS TacBaseWnd;
class PASCALIMPLEMENTATION TacBaseWnd : public TacScrollWnd
{
	typedef TacScrollWnd inherited;
	
public:
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacBaseWnd(void) { }
	
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacBaseWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacScrollWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
};


class DELPHICLASS TacMDIWnd;
class PASCALIMPLEMENTATION TacMDIWnd : public TacBaseWnd
{
	typedef TacBaseWnd inherited;
	
public:
	Forms::TForm* FForm;
	Scommondata::TsCommonData* MDISkinData;
	System::TObject* SkinProvider;
	__fastcall virtual ~TacMDIWnd(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	void __fastcall UpdateGraphControls(void);
public:
	/* TacMainWnd.Create */ inline __fastcall virtual TacMDIWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacBaseWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
};


class DELPHICLASS TacEditWnd;
class PASCALIMPLEMENTATION TacEditWnd : public TacBaseWnd
{
	typedef TacBaseWnd inherited;
	
public:
	Graphics::TColor Color;
	Graphics::TColor FocusColor;
	int FrameColor;
	Graphics::TBrush* Brush;
	__fastcall virtual TacEditWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual void __fastcall SaveStdParams(void);
	virtual void __fastcall SetSkinParams(void);
	virtual void __fastcall RestoreStdParams(void);
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacEditWnd(void) { }
	
};


class DELPHICLASS TacComboListWnd;
class PASCALIMPLEMENTATION TacComboListWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	bool Showed;
	bool SimplyBox;
	__fastcall virtual TacComboListWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	__fastcall TacComboListWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint, bool Simply);
	__fastcall virtual ~TacComboListWnd(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
};


class DELPHICLASS TacListViewWnd;
class PASCALIMPLEMENTATION TacListViewWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	HWND FhWndHeader;
	void *FhHeaderProc;
	void *FhDefHeaderProc;
	int FPressedColumn;
	int HoverColIndex;
	int ListLineHeight;
	bool FFlag;
	Comctrls::TViewStyle __fastcall ViewStyle(void);
	__fastcall virtual TacListViewWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual void __fastcall RestoreStdParams(void);
	virtual void __fastcall SaveStdParams(void);
	virtual void __fastcall SetSkinParams(void);
	void __fastcall ColumnSkinPaint(const Types::TRect &ControlRect, int cIndex, HDC DC);
	int __fastcall AllColWidth(void);
	bool __fastcall HotTrack(void);
	void __fastcall HeaderWndProc(Messages::TMessage &Message);
	Types::TRect __fastcall GetHeaderColumnRect(int Index);
	void __fastcall PaintHeader(HDC DC);
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacListViewWnd(void) { }
	
};


class DELPHICLASS TacGridWnd;
class PASCALIMPLEMENTATION TacGridWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	Graphics::TColor FixedColor;
	Graphics::TColor FooterColor;
	Graphics::TColor FooterCellColor;
	Graphics::TColor TitleFontColor;
	Graphics::TColor TitleColor;
	Graphics::TColor IndColor;
	Graphics::TColor SelectionColor;
	Graphics::TColor SelectionTextColor;
	Graphics::TColor GridLineColor;
	Graphics::TColor GridFixedLineColor;
	Graphics::TColor FixedGradientFrom;
	Graphics::TColor FixedGradientTo;
	Graphics::TColor FixedGradientMirrorFrom;
	Graphics::TColor FixedGradientMirrorTo;
	Grids::TGridDrawingStyle DrawingStyle;
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual void __fastcall SaveStdParams(void);
	virtual void __fastcall SetSkinParams(void);
	virtual void __fastcall RestoreStdParams(void);
public:
	/* TacEditWnd.Create */ inline __fastcall virtual TacGridWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacEditWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacGridWnd(void) { }
	
};


class DELPHICLASS TacGridEhWnd;
class PASCALIMPLEMENTATION TacGridEhWnd : public TacGridWnd
{
	typedef TacGridWnd inherited;
	
public:
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacEditWnd.Create */ inline __fastcall virtual TacGridEhWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacGridWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacGridEhWnd(void) { }
	
};


class DELPHICLASS TacTreeViewWnd;
class PASCALIMPLEMENTATION TacTreeViewWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	virtual void __fastcall SetSkinParams(void);
	virtual void __fastcall RestoreStdParams(void);
	__fastcall virtual ~TacTreeViewWnd(void);
public:
	/* TacEditWnd.Create */ inline __fastcall virtual TacTreeViewWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacEditWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
};


class DELPHICLASS TacComboBoxWnd;
class PASCALIMPLEMENTATION TacComboBoxWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	HWND FListHandle;
	void *FDefListProc;
	Scommondata::TsCommonData* LBSkinData;
	TacComboListWnd* ListSW;
	bool LBoxOpening;
	bool __fastcall DroppedDown(void);
	int __fastcall ButtonHeight(void);
	virtual Types::TRect __fastcall ButtonRect(void);
	void __fastcall PaintButton(HDC DC);
	void __fastcall RepaintButton(void);
	void __fastcall PaintText(void);
	void __fastcall PrepareSimple(void);
	__fastcall virtual TacComboBoxWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	__fastcall virtual ~TacComboBoxWnd(void);
	void __fastcall Invalidate(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
};


class DELPHICLASS TacVirtualTreeViewWnd;
class PASCALIMPLEMENTATION TacVirtualTreeViewWnd : public TacEditWnd
{
	typedef TacEditWnd inherited;
	
public:
	Graphics::TColor CompressedTextColor;
	Graphics::TColor FileTextColor;
	Graphics::TColor FolderTextColor;
	bool OwnerDraw;
	Typinfo::TPropInfo *PropInfo;
	void __fastcall AdvancedHeaderDraw(Classes::TPersistent* Sender, THeaderPaintInfo &PaintInfo, const THeaderPaintElements Elements);
	void __fastcall HeaderDrawQueryElements(Classes::TPersistent* Sender, THeaderPaintInfo &PaintInfo, THeaderPaintElements &Elements);
	virtual void __fastcall SaveStdParams(void);
	virtual void __fastcall SetSkinParams(void);
	virtual void __fastcall RestoreStdParams(void);
	tagSIZE __fastcall GetBorderDimensions(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacEditWnd.Create */ inline __fastcall virtual TacVirtualTreeViewWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint) : TacEditWnd(AHandle, ASkinData, ASkinManager, SkinSection, Repaint) { }
	
public:
	/* TacScrollWnd.Destroy */ inline __fastcall virtual ~TacVirtualTreeViewWnd(void) { }
	
};


class DELPHICLASS TacWWComboBoxWnd;
class PASCALIMPLEMENTATION TacWWComboBoxWnd : public TacComboBoxWnd
{
	typedef TacComboBoxWnd inherited;
	
private:
	Stdctrls::TCustomListBox* ListBox;
	TacScrollWnd* ListBoxSW;
	Scommondata::TsCommonData* ListBoxSkinData;
	bool FShowButton;
	bool __fastcall GetShowButton(Controls::TWinControl* aCtrl);
	
public:
	virtual Types::TRect __fastcall ButtonRect(void);
	__fastcall TacWWComboBoxWnd(Controls::TWinControl* aCtrl, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, System::UnicodeString SkinSection, bool Repaint);
	__fastcall virtual ~TacWWComboBoxWnd(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
};


class DELPHICLASS TacTabControlWnd;
class PASCALIMPLEMENTATION TacTabControlWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	TacSpinWnd* BtnSW;
	int __fastcall TabCount(void);
	virtual Types::TRect __fastcall ClientRect(void);
	virtual Types::TRect __fastcall PageRect(void);
	Types::TRect __fastcall TabRect(const int Index);
	int __fastcall TabRow(int TabIndex);
	Types::TRect __fastcall TabsRect(void);
	Comctrls::TTabPosition __fastcall TabPosition(void);
	Comctrls::TTabStyle __fastcall Style(void);
	int __fastcall ActiveTabIndex(void);
	Types::TRect __fastcall SkinTabRect(int Index, bool Active);
	void __fastcall CheckUpDown(void);
	void __fastcall DrawSkinTabs(const Sconst::TCacheInfo &CI);
	void __fastcall DrawSkinTab(int Index, int State, Graphics::TBitmap* Bmp, const Types::TPoint &OffsetPoint)/* overload */;
	void __fastcall DrawSkinTab(int Index, int State, HDC DC)/* overload */;
	void __fastcall AC_WMPaint(Messages::TWMPaint &Message);
	__fastcall virtual TacTabControlWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	__fastcall virtual ~TacTabControlWnd(void);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
};


class DELPHICLASS TacPageWnd;
class PASCALIMPLEMENTATION TacPageWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Comctrls::TTabSheet* Page;
	Comctrls::TTabPosition __fastcall TabPosition(void);
	void __fastcall PrepareCache(void);
	void __fastcall AC_WMEraseBKGnd(Messages::TWMPaint &Message);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	__fastcall virtual TacPageWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacPageWnd(void) { }
	
};


class DELPHICLASS TacPageControlWnd;
class PASCALIMPLEMENTATION TacPageControlWnd : public TacTabControlWnd
{
	typedef TacTabControlWnd inherited;
	
public:
	virtual Types::TRect __fastcall ClientRect(void);
	virtual Types::TRect __fastcall PageRect(void);
	void __fastcall InitPages(bool Skinned);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
	__fastcall virtual TacPageControlWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
public:
	/* TacTabControlWnd.Destroy */ inline __fastcall virtual ~TacPageControlWnd(void) { }
	
};


class DELPHICLASS TacToolBarVCLWnd;
class PASCALIMPLEMENTATION TacToolBarVCLWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Comctrls::TToolBar* ToolBar;
	Comctrls::TToolButton* DroppedButton;
	int HotButtonIndex;
	Types::TRect __fastcall DisplayRect(void);
	void __fastcall WMNCPaint(const HDC aDC = (HDC)(0x0));
	Types::TRect __fastcall GetButtonRect(int Index);
	__fastcall virtual TacToolBarVCLWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	void __fastcall PrepareCache(void);
	int __fastcall IndexByMouse(const Types::TPoint &MousePos);
	void __fastcall RepaintButton(int Index);
	void __fastcall OurAdvancedCustomDraw(Comctrls::TToolBar* Sender, const Types::TRect &ARect, Comctrls::TCustomDrawStage Stage, bool &DefaultDraw);
	void __fastcall OurAdvancedCustomDrawButton(Comctrls::TToolBar* Sender, Comctrls::TToolButton* Button, Comctrls::TCustomDrawState State, Comctrls::TCustomDrawStage Stage, Comctrls::TTBCustomDrawFlags &Flags, bool &DefaultDraw);
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacToolBarVCLWnd(void) { }
	
};


class DELPHICLASS TacStatusBarWnd;
class PASCALIMPLEMENTATION TacStatusBarWnd : public TacMainWnd
{
	typedef TacMainWnd inherited;
	
public:
	Comctrls::TStatusBar* StatusBar;
	bool __fastcall SimplePanel(void);
	int __fastcall PartsCount(void);
	System::UnicodeString __fastcall PartText(const int Index);
	Types::TRect __fastcall PartRect(const int Index);
	__fastcall virtual TacStatusBarWnd(HWND AHandle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager, const System::UnicodeString SkinSection, bool Repaint);
	void __fastcall PaintPanels(void);
	void __fastcall DrawPanel(const int Index, const Types::TRect &Rect);
	void __fastcall InternalDrawPanel(const int Index, const System::UnicodeString Text, const Types::TRect &Rect);
	void __fastcall DoDrawText(const System::UnicodeString Text, Types::TRect &Rect, const int Flags);
	void __fastcall PrepareCache(void);
	void __fastcall WMPaint(const HDC aDC = (HDC)(0x0));
	void __fastcall WMNCPaint(const HDC aDC = (HDC)(0x0));
	virtual void __fastcall acWndProc(Messages::TMessage &Message);
public:
	/* TacMainWnd.Destroy */ inline __fastcall virtual ~TacStatusBarWnd(void) { }
	
};


class DELPHICLASS TacWinControl;
class PASCALIMPLEMENTATION TacWinControl : public Controls::TWinControl
{
	typedef Controls::TWinControl inherited;
	
public:
	/* TWinControl.Create */ inline __fastcall virtual TacWinControl(Classes::TComponent* AOwner) : Controls::TWinControl(AOwner) { }
	/* TWinControl.CreateParented */ inline __fastcall TacWinControl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	/* TWinControl.Destroy */ inline __fastcall virtual ~TacWinControl(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define acPropStr L"ACSBSC"
static const ShortInt CSBS_NORMAL = 0x0;
static const ShortInt CSBS_HOTTRACKED = 0x2;
static const ShortInt CSBS_THUMBALWAYS = 0x4;
static const ShortInt CSBS_VISIBLE = 0x8;
static const ShortInt THUMBTRACK_SNAPDIST = 0x18;
static const ShortInt MINTHUMBSIZE_NT4 = 0x8;
static const ShortInt MINTHUMBSIZE_2000 = 0x6;
static const ShortInt SM_CXVERTSB = 0x1;
static const ShortInt SM_CYVERTSB = 0x0;
static const ShortInt SM_CXHORZSB = 0x0;
static const ShortInt SM_CYHORZSB = 0x1;
static const ShortInt SM_SCROLL_LENGTH = 0x0;
static const ShortInt COOLSB_NONE = -1;
static const ShortInt HTSCROLL_NONE = -1;
static const ShortInt HTSCROLL_NORMAL = -1;
static const ShortInt SYSTEM_METRIC = -1;
static const ShortInt HTSCROLL_LEFT = 0x0;
static const ShortInt HTSCROLL_UP = 0x0;
static const ShortInt HTSCROLL_DOWN = 0x1;
static const ShortInt HTSCROLL_RIGHT = 0x1;
static const ShortInt HTSCROLL_THUMB = 0x5;
static const ShortInt HTSCROLL_PAGELEFT = 0x2;
static const ShortInt HTSCROLL_PAGERIGHT = 0x3;
static const ShortInt HTSCROLL_PAGEUP = 0x2;
static const ShortInt HTSCROLL_PAGEDOWN = 0x3;
static const Word COOLSB_TIMERID1 = 0xfffd;
static const Word COOLSB_TIMERID2 = 0xfffe;
static const Word COOLSB_TIMERID3 = 0xfff2;
static const Word COOLSB_TIMERINTERVAL1 = 0x12c;
static const ShortInt COOLSB_TIMERINTERVAL2 = 0x37;
static const ShortInt COOLSB_TIMERINTERVAL3 = 0x14;
#define acColor L"Color"
#define acTitleFont L"TitleFont"
#define acDataSource L"DataSource"
#define acFont L"Font"
#define acFixedFont L"FixedFont"
#define acFixedColor L"FixedColor"
#define acHeaderFont L"HeaderFont"
#define acColumns L"Columns"
#define acSelectionColor L"SelectionColor"
#define acSelectionTextColor L"SelectionTextColor"
#define acControlLook L"ControlLook"
#define acFixedGradientFrom L"FixedGradientFrom"
#define acFixedGradientTo L"FixedGradientTo"
#define acFixedGradientMirrorFrom L"FixedGradientMirrorFrom"
#define acFixedGradientMirrorTo L"FixedGradientMirrorTo"
#define acGridFixedLineColor L"GridFixedLineColor"
#define acGridLineColor L"GridLineColor"
#define acIndColor L"IndicatorIconColor"
#define acFooterColor L"FooterColor"
#define acFooterCellColor L"FooterCellColor"
#define acTitleColor L"TitleColor"
#define acTwwDBGrid L"TwwDBGrid"
#define acVETColors L"VETColors"
#define acCompressedTextColor L"CompressedTextColor"
#define acFileTextColor L"FileTextColor"
#define acFolderTextColor L"FolderTextColor"
#define acFocusColor L"FocusColor"
#define acOnAdvancedHeaderDraw L"OnAdvancedHeaderDraw"
#define acOnHeaderDrawQueryElements L"OnHeaderDrawQueryElements"
#define achoOwnerDraw L"hoOwnerDraw"
#define achoVisible L"hoVisible"
#define acPaintInfoColumn L"PaintInfoColumn"
#define acThemed L"Themed"
#define acStyle L"Style"
#define acHeight L"Height"
#define acTDBAdvGrid L"TDBAdvGrid"
#define acTAdvStringGrid L"TAdvStringGrid"
#define acOptions L"Options"
#define acHeader L"Header"
static const ShortInt PreviewBorderWidth = 0x6;
static const ShortInt TopOffset = 0x4;
static const ShortInt BottomOffset = 0x1;
static const ShortInt LeftOffset = 0x1;
static const ShortInt RightOffset = 0x1;
extern PACKAGE int nLastSBPos;
extern PACKAGE bool acDlgMode;
extern PACKAGE bool inPaint;
extern PACKAGE void __stdcall (*Ac_UninitializeFlatSB)(HWND hWnd);
extern PACKAGE BOOL __stdcall (*Ac_InitializeFlatSB)(HWND hWnd);
extern PACKAGE void __fastcall AlphaBroadCastCheck(Controls::TControl* Control, HWND Handle, void *Message);
extern PACKAGE bool __fastcall MayBeHot(const Scommondata::TsCommonData* SkinData);
extern PACKAGE void __fastcall InitCtrlData(HWND Wnd, HWND &ParentWnd, Types::TRect &WndRect, Types::TRect &ParentRect, tagSIZE &WndSize, Types::TPoint &WndPos, const System::UnicodeString Caption);
extern PACKAGE void __fastcall RefreshScrolls(Scommondata::TsCommonData* SkinData, TacScrollWnd* &ListSW);
extern PACKAGE void __fastcall RefreshEditScrolls(Scommondata::TsCommonData* SkinData, TacScrollWnd* &ListSW);
extern PACKAGE void __fastcall RefreshTreeScrolls(Scommondata::TsCommonData* SkinData, TacScrollWnd* &ListSW);
extern PACKAGE void __fastcall UpdateScrolls(TacScrollWnd* sw, bool Repaint = false);
extern PACKAGE void __fastcall PrepareCache(Scommondata::TsCommonData* SkinData, HWND CtrlHandle = (HWND)(0x0), bool DlgMode = false);
extern PACKAGE void __fastcall UninitializeACScroll(HWND Handle, bool FreeSW, bool Repaint, TacScrollWnd* &ListSW);
extern PACKAGE void __fastcall InitControl(HWND Handle, Scommondata::TsCommonData* ASkinData, Sskinmanager::TsSkinManager* ASkinManager);
extern PACKAGE bool __fastcall Scrolls_SetStyle(HWND Handle, int wBar, int nStyle);
extern PACKAGE void __fastcall InitializeACScrolls(TacScrollWnd* sw, HWND AHandle, bool Repaint = true);
extern PACKAGE void __fastcall InitializeACWnd(TacMainWnd* sw, HWND AHandle);
extern PACKAGE void __fastcall UninitializeACWnd(HWND Handle, bool FreeSW, bool Repaint, TacMainWnd* &ListSW);
extern PACKAGE TacScrollWnd* __fastcall HookScrollWnd(HWND Handle, Sskinmanager::TsSkinManager* ASkinManager, Scommondata::TsCommonData* ASkinData = (Scommondata::TsCommonData*)(0x0));
extern PACKAGE int __fastcall Ac_SetScrollInfo(HWND Handle, int fnBar, const tagSCROLLINFO &si, bool fRedraw);
extern PACKAGE void __fastcall Ac_RedrawNonClient(HWND Handle, bool fFrameChanged);
extern PACKAGE TacScrollWnd* __fastcall Ac_GetScrollWndFromHwnd(HWND Handle);
extern PACKAGE TacScrollBar* __fastcall Ac_GetScrollBarFromHwnd(HWND Handle, System::Word nBar);
extern PACKAGE int __fastcall Ac_GetDefaultMinThumbSize(void);
extern PACKAGE bool __fastcall Ac_SetMinThumbSize(HWND Handle, System::Word wBar, System::Word Size);
extern PACKAGE int __fastcall GetScrollMetric(TacScrollBar* sBar, int metric, bool Btn = false);
extern PACKAGE void __fastcall AC_GetHScrollRect(TacScrollWnd* sw, HWND Handle, Types::TRect &R);
extern PACKAGE void __fastcall AC_GetVScrollRect(TacScrollWnd* sw, HWND Handle, Types::TRect &R);
extern PACKAGE int __fastcall Ac_NCPaint(TacScrollWnd* sw, HWND Handle, int wParam, int lParam, int ThumbPos = 0xffffffff, HDC aDC = (HDC)(0x0));
extern PACKAGE int __fastcall Ac_NCDrawHScrollbar(TacScrollBar* sb, HWND Handle, HDC DC, const Types::TRect &R, int uDrawFlags, int SliderPos = 0xffffffff);
extern PACKAGE int __fastcall Ac_NCDrawVScrollbar(TacScrollBar* sb, HWND Handle, HDC DC, const Types::TRect &R, int uDrawFlags, int SliderPos = 0xffffffff);
extern PACKAGE int __fastcall Ac_NCDrawScrollbar(TacScrollBar* sb, HWND Handle, HDC DC, const Types::TRect &R, int uDrawFlags, int ThumbPos = 0xffffffff);
extern PACKAGE int __fastcall Ac_NCCalcSize(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_Notify(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_ThumbTrackHorz(TacScrollBar* sbar, HWND Handle, int x, int y);
extern PACKAGE int __fastcall Ac_ThumbTrackVert(TacScrollBar* sbar, HWND Handle, int x, int y);
extern PACKAGE int __fastcall Ac_MouseMove(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_SetCursor(TacScrollWnd* sw, HWND Handle, int &wParam, int &lParam);
extern PACKAGE int __fastcall Ac_StyleChange(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_NCHitTest(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_GetHorzPortion(TacScrollBar* sb, HWND Handle, const Types::TRect &R, int x, int y);
extern PACKAGE int __fastcall Ac_GetVertPortion(TacScrollBar* sb, HWND Handle, const Types::TRect &R, int x, int y);
extern PACKAGE int __fastcall Ac_CalcThumbSize(TacScrollBar* sb, const Types::TRect &R, int &pthumbsize, int &pthumbpos, bool Ext = false);
extern PACKAGE bool __fastcall Ac_IsScrollInfoActive(const tagSCROLLINFO &si);
extern PACKAGE bool __fastcall Ac_IsScrollbarActive(TacScrollBar* sb);
extern PACKAGE int __fastcall Ac_GetHorzScrollPortion(TacScrollBar* sb, HWND Handle, const Types::TRect &R, int x, int y);
extern PACKAGE int __fastcall Ac_GetVertScrollPortion(TacScrollBar* sb, HWND Handle, const Types::TRect &R, int x, int y);
extern PACKAGE void __fastcall Ac_GetRealScrollRect(TacScrollBar* sb, Types::TRect &R);
extern PACKAGE Types::TRect __fastcall RotateRect0(TacScrollBar* sb, Types::TRect &R);
extern PACKAGE void __fastcall SendScrollMessage(HWND Handle, int scrMsg, int scrId, int pos);
extern PACKAGE int __fastcall Ac_NCLButtonDown(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_LButtonUp(TacScrollWnd* sw, HWND Handle, int wParam, int lParam);
extern PACKAGE int __fastcall Ac_Timer(TacScrollWnd* sw, HWND Handle, int wTimerId, int lParam);

}	/* namespace Acsbutils */
using namespace Acsbutils;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcsbutilsHPP
