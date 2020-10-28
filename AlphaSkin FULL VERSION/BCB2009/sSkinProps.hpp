// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sskinprops.pas' rev: 20.00

#ifndef SskinpropsHPP
#define SskinpropsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sskinprops
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
#define s_BordersMask L"BORDERSMASK"
#define s_ExBorder L"EXBORDER"
#define s_LightRegion L"LRGN"
#define s_Glow L"GLOW"
#define s_GlowMargin L"GLOWMARGIN"
#define s_GripImage L"GRIPIMAGE"
#define s_StatusPanelBordersMask L"STATUSPANELMASK"
#define s_SliderChannelMask L"SLIDERCHANNEL"
#define s_Pattern L"PATTERN"
#define s_HotPattern L"HOTPATTERN"
#define s_ImgTopLeft L"IMGTOPLEFT"
#define s_ImgTopRight L"IMGTOPRIGHT"
#define s_ImgBottomLeft L"IMGBTMLEFT"
#define s_ImgBottomRight L"IMGBTMRIGHT"
#define s_NormalTitleBar L"TITLEBAR"
#define s_BorderIconClose L"BICONCLOSE"
#define s_BorderIconCloseAlone L"BICLOSEALONE"
#define s_BorderIconMaximize L"BICONMAX"
#define s_BorderIconNormalize L"BICONNORM"
#define s_BorderIconMinimize L"BICONMIN"
#define s_BorderIconHelp L"BICONHELP"
#define s_TitleButtonMask L"TITLEBUTTON"
#define s_SmallIconNormalize L"SICONNORM"
#define s_SmallIconMinimize L"SICONMIN"
#define s_SmallIconMaximize L"SICONMAX"
#define s_SmallIconClose L"SICONCLOSE"
#define s_SmallIconHelp L"SICONHELP"
#define s_ItemGlyph L"GLYPHMASK"
#define s_SliderHorzMask L"SLIDERMASK"
#define s_SliderVertMask L"SLIDERVMASK"
#define s_TickVert L"TICKVERT"
#define s_TickHorz L"TICKHORZ"
#define s_FontColor L"FONTCOLOR"
#define s_TCLeft L"TCLEFT"
#define s_TCTop L"TCTOP"
#define s_TCRight L"TCRIGHT"
#define s_TCBottom L"TCBOTTOM"
#define s_HotFontColor L"HOTFONTCOLOR"
#define s_HotTCLeft L"HOTTCLEFT"
#define s_HotTCTop L"HOTTCTOP"
#define s_HotTCRight L"HOTTCRIGHT"
#define s_HotTCBottom L"HOTTCBOTTOM"
#define s_ReservedBoolean L"RESERVEDBOOLEAN"
#define s_GiveOwnFont L"GIVEOWNFONT"
#define s_ParentClass L"PARENTCLASS"
#define s_Color L"COLOR"
#define s_Hint L"HINT"
#define s_Transparency L"TRANSPARENCY"
#define s_GradientPercent L"GRADIENTPERCENT"
#define s_GradientData L"GRADIENTDATA"
#define s_ImagePercent L"IMAGEPERCENT"
#define s_ShowFocus L"SHOWFOCUS"
#define s_FadingEnabled L"FADINGENABLED"
#define s_FadingIterations L"FADINGITERATIONS"
#define s_HotColor L"HOTCOLOR"
#define s_HotTransparency L"HOTTRANSPARENCY"
#define s_HotGradientPercent L"HOTGRADIENTPERCENT"
#define s_HotGradientData L"HOTGRADIENTDATA"
#define s_HotImagePercent L"HOTIMAGEPERCENT"
#define s_BorderColor1 L"BORDERCOLOR1"
#define s_BorderColor2 L"BORDERCOLOR2"
#define s_BorderWidth L"BORDERWIDTH"
#define s_TitleHeight L"TITLEHEIGHT"
#define s_FormOffset L"FORMOFFSET"
#define s_ShadowOffset L"ALIGNOFFSET"
#define s_CenterOffset L"CENTEROFFSET"
#define s_MaxTitleHeight L"MAXHEIGHT"
#define s_BorderMode L"BORDERMODE"
#define s_Caption L"CAPTION"
#define s_FormTitle L"FORMTITLE"
#define s_Form L"FORM"
#define s_Dialog L"DIALOG"
#define s_MDIArea L"MDIAREA"
#define s_MainMenu L"MAINMENU"
#define s_MenuLine L"MENULINE"
#define s_MenuItem L"MENUITEM"
#define s_Selection L"SELECTION"
#define s_MenuIcoLine L"ICOLINE"
#define s_MenuExtraLine L"EXTRALINE"
#define s_ScrollBar1H L"SCROLLBAR1H"
#define s_ScrollBar1V L"SCROLLBAR1V"
#define s_ScrollBar2H L"SCROLLBAR2H"
#define s_ScrollBar2V L"SCROLLBAR2V"
#define s_ScrollSliderV L"SCROLLSLIDERV"
#define s_ScrollSliderH L"SCROLLSLIDERH"
#define s_ScrollBtnLeft L"SCROLLBTNLEFT"
#define s_ScrollBtnTop L"SCROLLBTNTOP"
#define s_ScrollBtnRight L"SCROLLBTNRIGHT"
#define s_ScrollBtnBottom L"SCROLLBTNBOTTOM"
#define s_Divider L"DIVIDER"
#define s_DividerV L"DIVIDERV"
#define s_ColHeader L"COLHEADER"
#define s_ProgressH L"PROGRESSH"
#define s_ProgressV L"PROGRESSV"
#define s_AlphaEdit L"ALPHAEDIT"
#define s_TabTop L"TABTOP"
#define s_TabBottom L"TABBOTTOM"
#define s_TabLeft L"TABLEFT"
#define s_TabRight L"TABRIGHT"
#define s_Edit L"EDIT"
#define s_ToolButton L"TOOLBUTTON"
#define s_ComboBox L"COMBOBOX"
#define s_ComboBtn L"COMBOBTN"
#define s_AlphaComboBox L"ALPHACOMBOBOX"
#define s_UpDown L"UPDOWNBTN"
#define s_Button L"BUTTON"
#define s_ButtonBig L"BUTTON_BIG"
#define s_ButtonHuge L"BUTTON_HUGE"
#define s_SpeedButton L"SPEEDBUTTON"
#define s_SpeedButton_Small L"SPEEDBUTTON_SMALL"
#define s_Panel L"PANEL"
#define s_PanelLow L"PANEL_LOW"
#define s_TabControl L"TABCONTROL"
#define s_PageControl L"PAGECONTROL"
#define s_TabSheet L"TABSHEET"
#define s_StatusBar L"STATUSBAR"
#define s_ToolBar L"TOOLBAR"
#define s_Splitter L"SPLITTER"
#define s_GroupBox L"GROUPBOX"
#define s_Gauge L"GAUGE"
#define s_TrackBar L"TRACKBAR"
#define s_CheckBox L"CHECKBOX"
#define s_RadioButton L"RADIOBUTTON"
#define s_DragBar L"DRAGBAR"
#define s_Bar L"BAR"
#define s_BarTitle L"BARTITLE"
#define s_BarPanel L"BARPANEL"
#define s_WebBtn L"WEBBUTTON"
#define s_GripH L"GRIPH"
#define s_GripV L"GRIPV"
#define s_GlobalInfo L"GLOBALINFO"
#define s_Unknown L"UNKNOWN"
#define s_MasterBitmap L"MASTERBITMAP"
#define s_CheckGlyph L"CHECK"
#define s_CheckBoxChecked L"BOXCHECKED"
#define s_CheckBoxUnChecked L"BOXUNCHECKED"
#define s_CheckBoxGrayed L"BOXGRAYED"
#define s_RadioButtonChecked L"RADIOCHECKED"
#define s_RadioButtonUnChecked L"RADIOUNCHECKED"
#define s_RadioButtonGrayed L"RADIOGRAYED"
#define s_SmallBoxChecked L"SMALLCHECKED"
#define s_SmallBoxUnChecked L"SMALLUNCHECKED"
#define s_SmallBoxGrayed L"SMALLGRAYED"
#define s_Version L"VERSION"
#define s_Author L"AUTHOR"
#define s_Description L"DESCRIPTION"
#define s_Shadow1Color L"SHADOW1COLOR"
#define s_Shadow1Offset L"SHADOW1OFFSET"
#define s_Shadow1Blur L"SHADOW1BLUR"
#define s_Shadow1Transparency L"SHADOW1TRANSPARENCY"
#define s_BISpacing L"BISPACE"
#define s_BIVAlign L"BIVALIGN"
#define s_BIRightMargin L"BIRIGHT"
#define s_BILeftMargin L"BILEFT"
#define s_BITopMargin L"BITOP"
#define s_BIKeepHUE L"BIKEEPHUE"
#define s_HOTGLOWCOLOR L"HGCOL"
#define s_GLOWCOLOR L"GCOL"
#define s_HOTGLOWSIZE L"HGSIZE"
#define s_GLOWSIZE L"GSIZE"
#define s_BorderColor L"BORDERCOLOR"
#define s_States L"STATES"

}	/* namespace Sskinprops */
using namespace Sskinprops;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SskinpropsHPP