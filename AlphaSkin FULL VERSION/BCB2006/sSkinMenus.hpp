// Borland C++ Builder
// Copyright (c) 1995, 2005 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sskinmenus.pas' rev: 10.00

#ifndef SskinmenusHPP
#define SskinmenusHPP

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
#include <Menus.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sskinmenus
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TsMenuItemType { smCaption, smDivider, smNormal, smTopLine };
#pragma option pop

typedef void __fastcall (__closure *TsMenuManagerDrawItemEvent)(System::TObject* Sender, Graphics::TCanvas* ACanvas, const Types::TRect &ARect, Windows::TOwnerDrawState State, TsMenuItemType ItemType);

class DELPHICLASS TacMenuSupport;
class PASCALIMPLEMENTATION TacMenuSupport : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FIcoLineSkin;
	bool FUseExtraLine;
	int FExtraLineWidth;
	Graphics::TFont* FExtraLineFont;
	void __fastcall SetExtraLineFont(const Graphics::TFont* Value);
	
public:
	__fastcall TacMenuSupport(void);
	__fastcall virtual ~TacMenuSupport(void);
	
__published:
	__property AnsiString IcoLineSkin = {read=FIcoLineSkin, write=FIcoLineSkin};
	__property bool UseExtraLine = {read=FUseExtraLine, write=FUseExtraLine, default=0};
	__property int ExtraLineWidth = {read=FExtraLineWidth, write=FExtraLineWidth, default=32};
	__property Graphics::TFont* ExtraLineFont = {read=FExtraLineFont, write=SetExtraLineFont};
};


struct TMenuItemData
{
	
public:
	Menus::TMenuItem* Item;
	#pragma pack(push,1)
	Types::TRect R;
	#pragma pack(pop)
} ;

struct TacMenuInfo
{
	
public:
	Menus::TMenuItem* FirstItem;
	Graphics::TBitmap* Bmp;
	HWND Wnd;
	bool HaveExtraLine;
} ;

class DELPHICLASS TsSkinableMenus;
class PASCALIMPLEMENTATION TsSkinableMenus : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	int FMargin;
	Classes::TAlignment FAlignment;
	int FBevelWidth;
	int FBorderWidth;
	Graphics::TFont* FCaptionFont;
	int FSkinBorderWidth;
	int FSpacing;
	void __fastcall SetCaptionFont(const Graphics::TFont* Value);
	void __fastcall SetAlignment(const Classes::TAlignment Value);
	void __fastcall SetBevelWidth(const int Value);
	void __fastcall SetBorderWidth(const int Value);
	int __fastcall GetSkinBorderWidth(void);
	
protected:
	TsMenuManagerDrawItemEvent FOnDrawItem;
	int __fastcall ParentHeight(Graphics::TCanvas* aCanvas, Menus::TMenuItem* Item);
	int __fastcall GetItemHeight(Graphics::TCanvas* aCanvas, Menus::TMenuItem* Item);
	int __fastcall ParentWidth(Graphics::TCanvas* aCanvas, Menus::TMenuItem* Item);
	int __fastcall GetItemWidth(Graphics::TCanvas* aCanvas, Menus::TMenuItem* Item, const TacMenuInfo &mi);
	bool __fastcall IsDivText(Menus::TMenuItem* Item);
	void __fastcall PaintDivider(Graphics::TCanvas* aCanvas, const Types::TRect &aRect, Menus::TMenuItem* Item, Graphics::TBitmap* MenuBmp, const TacMenuInfo &mi);
	void __fastcall PaintCaption(Graphics::TCanvas* aCanvas, const Types::TRect &aRect, Menus::TMenuItem* Item, Graphics::TBitmap* BG, const TacMenuInfo &mi);
	int __fastcall CursorMarginH(void);
	int __fastcall CursorMarginV(void);
	Types::TRect __fastcall ItemRect(Menus::TMenuItem* Item, const Types::TRect &aRect);
	
public:
	DynamicArray<Types::TRect >  ArOR;
	bool FActive;
	Classes::TComponent* FOwner;
	bool Pressed;
	bool BorderDrawing;
	bool __fastcall IsTopLine(Menus::TMenuItem* Item);
	void __fastcall sMeasureItem(System::TObject* Sender, Graphics::TCanvas* ACanvas, int &Width, int &Height);
	DYNAMIC void __fastcall sAdvancedDrawItem(System::TObject* Sender, Graphics::TCanvas* ACanvas, const Types::TRect &ARect, Windows::TOwnerDrawState State);
	void __fastcall DrawWndBorder(HWND Wnd, Graphics::TBitmap* MenuBmp);
	Graphics::TBitmap* __fastcall PrepareMenuBG(Menus::TMenuItem* Item, int Width, int Height, HWND Wnd = (HWND)(0x0));
	void __fastcall sMeasureLineItem(System::TObject* Sender, Graphics::TCanvas* ACanvas, int &Width, int &Height);
	DYNAMIC void __fastcall sAdvancedDrawLineItem(System::TObject* Sender, Graphics::TCanvas* ACanvas, const Types::TRect &ARect, Windows::TOwnerDrawState State);
	bool __fastcall IsOpened(Menus::TMenuItem* Item);
	void __fastcall SetActive(const bool Value);
	__fastcall TsSkinableMenus(Classes::TComponent* AOwner);
	__fastcall virtual ~TsSkinableMenus(void);
	void __fastcall InitItem(Menus::TMenuItem* Item, bool A);
	void __fastcall InitItems(bool A);
	void __fastcall InitMenuLine(Menus::TMainMenu* Menu, bool A);
	void __fastcall HookItem(Menus::TMenuItem* MenuItem, bool FActive);
	void __fastcall HookPopupMenu(Menus::TPopupMenu* Menu, bool Active);
	void __fastcall UpdateMenus(void);
	bool __fastcall LastItem(Menus::TMenuItem* Item);
	bool __fastcall IsPopupItem(Menus::TMenuItem* Item);
	TacMenuInfo __fastcall GetMenuInfo(Menus::TMenuItem* Item, const int aWidth, const int aHeight, HWND aWnd = (HWND)(0x0));
	int __fastcall ExtraWidth(const TacMenuInfo &mi);
	
__published:
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, nodefault};
	__property int BevelWidth = {read=FBevelWidth, write=SetBevelWidth, default=0};
	__property int BorderWidth = {read=FBorderWidth, write=SetBorderWidth, default=3};
	__property Graphics::TFont* CaptionFont = {read=FCaptionFont, write=SetCaptionFont};
	__property int SkinBorderWidth = {read=GetSkinBorderWidth, write=FSkinBorderWidth, nodefault};
	__property int Margin = {read=FMargin, write=FMargin, default=2};
	__property int Spacing = {read=FSpacing, write=FSpacing, default=8};
	__property TsMenuManagerDrawItemEvent OnDrawItem = {read=FOnDrawItem, write=FOnDrawItem};
};


typedef DynamicArray<TacMenuInfo >  sSkinMenus__3;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE DynamicArray<TacMenuInfo >  MenuInfoArray;
extern PACKAGE System::TObject* MDISkinProvider;
extern PACKAGE bool acCanHookMenu;
extern PACKAGE Graphics::TFont* CustomMenuFont;
#define s_SysMenu "SysMenu"
extern PACKAGE bool __fastcall ChildIconPresent(void);
extern PACKAGE Menus::TMenuItem* __fastcall GetFirstItem(Menus::TMenuItem* Item);
extern PACKAGE void __fastcall DeleteUnusedBmps(bool DeleteAll);
extern PACKAGE bool __fastcall Breaked(Menus::TMenuItem* MenuItem);
extern PACKAGE tagSIZE __fastcall GlyphSize(Menus::TMenuItem* Item, bool Top);
extern PACKAGE void __fastcall ClearCache(void);

}	/* namespace Sskinmenus */
using namespace Sskinmenus;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sskinmenus
