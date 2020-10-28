// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sconst.pas' rev: 20.00

#ifndef SconstHPP
#define SconstHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sconst
{
//-- type declarations -------------------------------------------------------
typedef System::UnicodeString ACString;

typedef System::WideChar ACChar;

typedef System::WideChar * PACChar;

typedef char OldChar;

typedef char * POldChar;

typedef System::AnsiString OldString;

typedef System::PAnsiString POldString;

typedef System::UnicodeString *PACString;

typedef DynamicArray<Types::TRect> TAOR;

typedef void __fastcall (__closure *TPaintEvent)(System::TObject* Sender, Graphics::TCanvas* Canvas);

typedef void __fastcall (__closure *TBmpPaintEvent)(System::TObject* Sender, Graphics::TBitmap* Bmp);

typedef System::UnicodeString TsSkinName;

typedef System::UnicodeString TsDirectory;

typedef System::UnicodeString TsSkinSection;

typedef System::UnicodeString TacRoot;

typedef System::UnicodeString TacStrValue;

#pragma option push -b-
enum TFadeDirection { fdNone, fdUp, fdDown };
#pragma option pop

#pragma option push -b-
enum TacAnimType { atFading, atAero };
#pragma option pop

#pragma option push -b-
enum TacBtnEvent { beMouseEnter, beMouseLeave, beMouseDown, beMouseUp };
#pragma option pop

typedef Set<TacBtnEvent, beMouseEnter, beMouseUp>  TacBtnEvents;

#pragma option push -b-
enum TacCtrlType { actGraphic };
#pragma option pop

#pragma option push -b-
enum TacAnimatEvent { aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeGlobalDef };
#pragma option pop

typedef Set<TacAnimatEvent, aeMouseEnter, aeGlobalDef>  TacAnimatEvents;

#pragma option push -b-
enum TacImgType { itisaBorder, itisaTexture, itisaGlyph, itisaGlow, itisaPngGlyph };
#pragma option pop

#pragma option push -b-
enum TacFillMode { fmTiled, fmStretched, fmTiledHorz, fmTiledVert, fmStretchHorz, fmStretchVert, fmTileHorBtm, fmTileVertRight, fmStretchHorBtm, fmStretchVertRight, fmDisTiled, fmDiscHorTop, fmDiscVertLeft, fmDiscHorBottom, fmDiscVertRight };
#pragma option pop

class DELPHICLASS TsHackedControl;
class PASCALIMPLEMENTATION TsHackedControl : public Controls::TControl
{
	typedef Controls::TControl inherited;
	
public:
	__property ParentColor = {default=1};
	__property Color = {default=-16777211};
	__property ParentFont = {default=1};
	__property PopupMenu;
	__property Font;
	__property WindowText;
public:
	/* TControl.Create */ inline __fastcall virtual TsHackedControl(Classes::TComponent* AOwner) : Controls::TControl(AOwner) { }
	/* TControl.Destroy */ inline __fastcall virtual ~TsHackedControl(void) { }
	
};


struct TacBGInfo;
typedef TacBGInfo *PacBGInfo;

#pragma option push -b-
enum TacBGType { btUnknown, btFill, btCache };
#pragma option pop

struct TacBGInfo
{
	
public:
	Graphics::TBitmap* Bmp;
	Graphics::TColor Color;
	Types::TPoint Offset;
	Types::TRect R;
	TacBGType BgType;
	bool PleaseDraw;
	HDC DrawDC;
};


struct TCacheInfo
{
	
public:
	Graphics::TBitmap* Bmp;
	int X;
	int Y;
	Graphics::TColor FillColor;
	bool Ready;
};


typedef DynamicArray<Types::TPoint> TPoints;

typedef TPoints *PPoints;

typedef ShortInt TPercent;

typedef Set<Byte, 1, 255>  TsCodes;

#pragma option push -b-
enum TsHintStyle { hsSimply, hsComics, hsEllipse, hsBalloon, hsStandard, hsNone };
#pragma option pop

#pragma option push -b-
enum TsHintsPredefinitions { shSimply, shGradient, shTransparent, shEllipse, shBalloon, shComicsGradient, shComicsTransparent, shStandard, shNone, shCustom };
#pragma option pop

#pragma option push -b-
enum TGradientTypes { gtTopBottom, gtLeftRight, gtAsBorder };
#pragma option pop

#pragma option push -b-
enum TsShadowingShape { ssRectangle, ssEllipse };
#pragma option pop

#pragma option push -b-
enum TsWindowShowMode { soHide, soNormal, soShowMinimized, soMaximize, soShowNoActivate, soShow, soMinimize, soShowMinNoActive, soShowNA, soRestore, soDefault };
#pragma option pop

#pragma pack(push,1)
struct TsRGB
{
	
public:
	System::Byte B;
	System::Byte G;
	System::Byte R;
};
#pragma pack(pop)


#pragma pack(push,1)
struct TsRGBA
{
	
public:
	System::Byte B;
	System::Byte G;
	System::Byte R;
	System::Byte A;
};
#pragma pack(pop)


struct TsColor
{
	
	#pragma pack(push,1)
	union
	{
		struct 
		{
			TsRGB RGB;
			System::Byte MASK;
			
		};
		struct 
		{
			TsRGBA sBGRA;
			
		};
		struct 
		{
			int I;
			
		};
		struct 
		{
			System::Byte R;
			System::Byte G;
			System::Byte B;
			System::Byte A;
			
		};
		struct 
		{
			Graphics::TColor C;
			
		};
		
	};
	#pragma pack(pop)
};


struct TsColor_
{
	
	#pragma pack(push,1)
	union
	{
		struct 
		{
			TsRGB BGR;
			System::Byte MASK;
			
		};
		struct 
		{
			TsRGBA sBGRA;
			
		};
		struct 
		{
			int I;
			
		};
		struct 
		{
			System::Byte B;
			System::Byte G;
			System::Byte R;
			System::Byte A;
			
		};
		struct 
		{
			Graphics::TColor C;
			
		};
		
	};
	#pragma pack(pop)
};


typedef StaticArray<TsColor_, 100001> TRGBAArray;

typedef TRGBAArray *PRGBAArray;

typedef StaticArray<TsRGB, 100001> TRGBArray;

typedef TRGBArray *PRGBArray;

#pragma option push -b-
enum Sconst__2 { dgBlended, dgGrayed };
#pragma option pop

typedef Set<Sconst__2, dgBlended, dgGrayed>  TsDisabledGlyphKind;

#pragma option push -b-
enum Sconst__3 { dkBlended, dkGrayed };
#pragma option pop

typedef Set<Sconst__3, dkBlended, dkGrayed>  TsDisabledKind;

typedef TsDisabledKind *PsDisabledKind;

struct TsGradPie
{
	
public:
	Graphics::TColor Color1;
	Graphics::TColor Color2;
	TPercent Percent;
	int Mode1;
	int Mode2;
};


typedef DynamicArray<TsGradPie> TsGradArray;

typedef StaticArray<System::UnicodeString, 2> Sconst__4;

#pragma option push -b-
enum TsCaptionLayout { sclLeft, sclTopLeft, sclTopCenter, sclTopRight };
#pragma option pop

typedef Set<Comctrls::TCalDayOfWeek, dowMonday, dowLocaleDefault>  TDaysOfWeek;

#pragma option push -b-
enum TDateOrder { doMDY, doDMY, doYMD };
#pragma option pop

#pragma option push -b-
enum TPopupWindowAlign { pwaRight, pwaLeft };
#pragma option pop

//-- var, const, procedure ---------------------------------------------------
#define CompatibleSkinVersion  (6.000000E+00)
#define MaxCompSkinVersion  (7.990000E+00)
static const ShortInt ExceptTag = -98;
static const WideChar TexChar = (WideChar)(0x7e);
static const WideChar ZeroChar = (WideChar)(0x30);
static const WideChar CharQuest = (WideChar)(0x3f);
static const WideChar CharDiez = (WideChar)(0x23);
static const WideChar CharExt = (WideChar)(0x21);
static const WideChar CharGlyph = (WideChar)(0x40);
static const WideChar CharMask = (WideChar)(0x5e);
static const ShortInt ACS_FAST = 0x1;
static const Word ACS_PRINTING = 0x200;
static const Word ACS_MNUPDATING = 0x400;
static const Word ACS_LOCKED = 0x800;
static const Word ACS_FOCUSCHANGING = 0x1000;
static const ShortInt BGT_NONE = 0x0;
static const ShortInt BGT_GRADIENTHORZ = 0x1;
static const ShortInt BGT_GRADIENTVERT = 0x2;
static const ShortInt BGT_TEXTURE = 0x4;
static const ShortInt BGT_TEXTURELEFT = 0x10;
static const ShortInt BGT_TEXTURETOP = 0x20;
static const ShortInt BGT_TEXTURERIGHT = 0x40;
static const Byte BGT_TEXTUREBOTTOM = 0x80;
static const Word BTG_TOPLEFT = 0x100;
static const Word BGT_TOPRIGHT = 0x200;
static const Word BGT_BOTTOMLEFT = 0x400;
static const Word BGT_BOTTOMRIGHT = 0x800;
static const ShortInt ACT_RELCAPT = -1;
#define s_PreviewKey L"/acpreview"
#define s_EditorCapt L"AlphaSkins Editor"
static const ShortInt ASE_CLOSE = 0x1;
static const ShortInt ASE_UPDATE = 0x2;
static const ShortInt ASE_HELLO = 0x3;
static const ShortInt ASE_ALIVE = 0x4;
static const Word ASE_MSG = 0xa400;
#define MasterBmpName L"Master.bmp"
#define OptionsDatName L"Options.dat"
#define acSkinExt L"asz"
#define acPngExt L"png"
#define acIcoExt L"ico"
#define s_MinusOne L"-1"
#define s_TrueStr L"TRUE"
#define s_FalseStr L"FALSE"
#define s_NewFolder L"New folder"
#define s_SkinSelectItemName L"SkinSelectItem"
static const WideChar s_Slash = (WideChar)(0x5c);
static const WideChar s_Space = (WideChar)(0x20);
static const WideChar s_Comma = (WideChar)(0x2c);
static const ShortInt BDM_STRETCH = 0x1;
static const ShortInt BDM_ACTIVEONLY = 0x2;
static const ShortInt BDM_FILL = 0x4;
static const ShortInt HTSB_LEFT_BUTTON = 0x64;
static const ShortInt HTSB_RIGHT_BUTTON = 0x65;
static const ShortInt HTSB_TOP_BUTTON = 0x66;
static const ShortInt HTSB_BOTTOM_BUTTON = 0x67;
static const ShortInt HTSB_H_SCROLL = 0x68;
static const ShortInt HTSB_HB_SCROLL = 0x69;
static const ShortInt HTSB_V_SCROLL = 0x6a;
static const ShortInt HTSB_VB_SCROLL = 0x6b;
static const ShortInt HTCHILDCLOSE = 0x65;
static const ShortInt HTCHILDMAX = 0x66;
static const ShortInt HTCHILDMIN = 0x67;
static const ShortInt EmptyRgn = 0x0;
static const ShortInt acTimerInterval = 0xc;
extern PACKAGE StaticArray<TacImgType, 5> acImgTypes;
extern PACKAGE StaticArray<TacFillMode, 15> acFillModes;
extern PACKAGE StaticArray<Stdctrls::TScrollCode, 9> aScrollCodes;
extern PACKAGE StaticArray<TsHintStyle, 6> aHintStyles;
extern PACKAGE StaticArray<TacBtnEvent, 5> acBtnEvents;
static const ShortInt COC_TsCustom = 0x1;
static const ShortInt COC_TsSpinEdit = 0x2;
static const ShortInt COC_TsEdit = 0x3;
static const ShortInt COC_TsCustomMaskEdit = 0x4;
static const ShortInt COC_TsMemo = 0x7;
static const ShortInt COC_TsCustomListBox = 0x8;
static const ShortInt COC_TsListBox = 0x8;
static const ShortInt COC_TsColorBox = 0x9;
static const ShortInt COC_TsListView = 0xa;
static const ShortInt COC_TsCustomComboBox = 0xb;
static const ShortInt COC_TsComboBox = 0xd;
static const ShortInt COC_TsComboBoxEx = 0x12;
static const ShortInt COC_TsFrameBar = 0x13;
static const ShortInt COC_TsBarTitle = 0x14;
static const ShortInt COC_TsCheckBox = 0x20;
static const ShortInt COC_TsDBCheckBox = 0x20;
static const ShortInt COC_TsRadioButton = 0x21;
static const ShortInt COC_TsCurrencyEdit = 0x29;
static const ShortInt COC_TsPanel = 0x33;
static const ShortInt COC_TsPanelLow = 0x34;
static const ShortInt COC_TsCoolBar = 0x35;
static const ShortInt COC_TsToolBar = 0x36;
static const ShortInt COC_TsDragBar = 0x38;
static const ShortInt COC_TsTabSheet = 0x39;
static const ShortInt COC_TsScrollBox = 0x3a;
static const ShortInt COC_TsMonthCalendar = 0x3b;
static const ShortInt COC_TsDBNavigator = 0x3c;
static const ShortInt COC_TsCustomPanel = 0x44;
static const ShortInt COC_TsGrip = 0x49;
static const ShortInt COC_TsGroupBox = 0x4a;
static const ShortInt COC_TsSplitter = 0x4b;
static const ShortInt COC_TsDBEdit = 0x4c;
static const ShortInt COC_TsDBMemo = 0x4e;
static const ShortInt COC_TsDBComboBox = 0x51;
static const ShortInt COC_TsDBLookupComboBox = 0x52;
static const ShortInt COC_TsDBListBox = 0x53;
static const ShortInt COC_TsDBLookupListBox = 0x54;
static const ShortInt COC_TsDBGrid = 0x55;
static const ShortInt COC_TsSpeedButton = 0x5c;
static const ShortInt COC_TsButton = 0x5d;
static const ShortInt COC_TsBitBtn = 0x5e;
static const ShortInt COC_TsColorSelect = 0x5f;
static const ShortInt COC_TsTreeView = 0x60;
static const ShortInt COC_TsNavButton = 0x62;
static const ShortInt COC_TsBevel = 0x6e;
static const Byte COC_TsCustomComboEdit = 0x83;
static const Byte COC_TsFileDirEdit = 0x84;
static const Byte COC_TsFilenameEdit = 0x85;
static const Byte COC_TsDirectoryEdit = 0x86;
static const Byte COC_TsCustomDateEdit = 0x89;
static const Byte COC_TsComboEdit = 0x8a;
static const Byte COC_TsDateEdit = 0x8c;
static const Byte COC_TsPageControl = 0x8d;
static const Byte COC_TsScrollBar = 0x8e;
static const Byte COC_TsTabControl = 0x8f;
static const Byte COC_TsStatusBar = 0x97;
static const Byte COC_TsHeaderControl = 0x98;
static const Byte COC_TsGauge = 0xa1;
static const Byte COC_TsTrackBar = 0xa5;
static const Byte COC_TsHintManager = 0xd3;
static const Byte COC_TsSkinProvider = 0xe0;
static const Byte COC_TsMDIForm = 0xe1;
static const Byte COC_TsFrameAdapter = 0xe2;
static const Byte COC_TsAdapter = 0xe3;
static const Byte COC_Unknown = 0xfa;
extern PACKAGE TsCodes sForbidMouse;
extern PACKAGE TsCodes sCanNotBeHot;
extern PACKAGE TsCodes sEditCtrls;
extern PACKAGE Sconst__4 sBoolArray;
extern PACKAGE unsigned acPreviewHandle;
extern PACKAGE bool acPreviewNeeded;
extern PACKAGE bool acSkinPreviewUpdating;
extern PACKAGE int acScrollBtnLength;
extern PACKAGE bool AppShowHint;
extern PACKAGE bool ShowHintStored;
extern PACKAGE TCacheInfo EmptyCI;
extern PACKAGE bool FadingForbidden;
extern PACKAGE int acAnimCount;
extern PACKAGE void *TempControl;
extern PACKAGE bool x64woAero;
extern PACKAGE Controls::TImageList* LargeShellImages;
extern PACKAGE Controls::TImageList* SmallShellImages;
extern PACKAGE bool fGlobalFlag;
extern PACKAGE Controls::TWinControl* acMagnForm;
extern PACKAGE TsColor sFuchsia;
extern PACKAGE bool StdTransparency;
extern PACKAGE bool ac_KeepOwnFont;
extern PACKAGE bool ac_ChangeThumbPreviews;
extern PACKAGE bool MouseForbidden;
extern PACKAGE bool DrawSkinnedMDIWall;
extern PACKAGE bool DrawSkinnedMDIScrolls;
extern PACKAGE bool acOldGlyphsOrder;
static const Word SC_DRAGMOVE = 0xf012;
#define sIsRunIDEOnlyMessage L"Trial version of the AlphaControls package was used.\r\nFo"\
	"r purchasing the fully functional version visit www.alphas"\
	"kins.com, please.\r\nThank you!"
extern PACKAGE System::UnicodeString acs_MsgDlgOK;
extern PACKAGE System::UnicodeString acs_MsgDlgCancel;
extern PACKAGE System::UnicodeString acs_MsgDlgHelp;
extern PACKAGE System::UnicodeString acs_RestoreStr;
extern PACKAGE System::UnicodeString acs_MoveStr;
extern PACKAGE System::UnicodeString acs_SizeStr;
extern PACKAGE System::UnicodeString acs_MinimizeStr;
extern PACKAGE System::UnicodeString acs_MaximizeStr;
extern PACKAGE System::UnicodeString acs_CloseStr;
extern PACKAGE System::UnicodeString acs_FileOpen;
extern PACKAGE System::UnicodeString acs_AvailSkins;
extern PACKAGE System::UnicodeString acs_InternalSkin;
extern PACKAGE System::UnicodeString acs_ErrorSettingCount;
extern PACKAGE System::UnicodeString acs_ListBoxMustBeVirtual;
extern PACKAGE System::UnicodeString acs_ColorDlgAdd;
extern PACKAGE System::UnicodeString acs_ColorDlgDefine;
extern PACKAGE System::UnicodeString acs_ColorDlgMainPal;
extern PACKAGE System::UnicodeString acs_ColorDlgAddPal;
extern PACKAGE System::UnicodeString acs_ColorDlgTitle;
extern PACKAGE System::UnicodeString acs_ColorDlgRed;
extern PACKAGE System::UnicodeString acs_ColorDlgGreen;
extern PACKAGE System::UnicodeString acs_ColorDlgBlue;
extern PACKAGE System::UnicodeString acs_ColorDlgDecimal;
extern PACKAGE System::UnicodeString acs_ColorDlgHex;
extern PACKAGE System::UnicodeString acs_FrameAdapterError1;
extern PACKAGE System::UnicodeString acs_HintDsgnTitle;
extern PACKAGE System::UnicodeString acs_HintDsgnPreserved;
extern PACKAGE System::UnicodeString acs_HintDsgnStyle;
extern PACKAGE System::UnicodeString acs_HintDsgnBevelWidth;
extern PACKAGE System::UnicodeString acs_Blur;
extern PACKAGE System::UnicodeString acs_HintDsgnArrowLength;
extern PACKAGE System::UnicodeString acs_HintDsgnHorizMargin;
extern PACKAGE System::UnicodeString acs_HintDsgnVertMargin;
extern PACKAGE System::UnicodeString acs_HintDsgnRadius;
extern PACKAGE System::UnicodeString acs_HintDsgnMaxWidth;
extern PACKAGE System::UnicodeString acs_HintDsgnPauseHide;
extern PACKAGE System::UnicodeString acs_Percent;
extern PACKAGE System::UnicodeString acs_HintDsgnOffset;
extern PACKAGE System::UnicodeString acs_HintDsgnTransparency;
extern PACKAGE System::UnicodeString acs_HintDsgnNoPicture;
extern PACKAGE System::UnicodeString acs_Font;
extern PACKAGE System::UnicodeString acs_Texture;
extern PACKAGE System::UnicodeString acs_HintDsgnLoad;
extern PACKAGE System::UnicodeString acs_HintDsgnSave;
extern PACKAGE System::UnicodeString acs_HintDsgnColor;
extern PACKAGE System::UnicodeString acs_HintDsgnBorderTop;
extern PACKAGE System::UnicodeString acs_HintDsgnBorderBottom;
extern PACKAGE System::UnicodeString acs_Shadow;
extern PACKAGE System::UnicodeString acs_Background;
extern PACKAGE System::UnicodeString acs_Gradient;
extern PACKAGE System::UnicodeString acs_PreviewHint;
extern PACKAGE System::UnicodeString acs_Root;
extern PACKAGE System::UnicodeString acs_SelectDir;
extern PACKAGE System::UnicodeString acs_Create;
extern PACKAGE void __fastcall InitShellImageLists(bool Large, bool Small);

}	/* namespace Sconst */
using namespace Sconst;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SconstHPP
