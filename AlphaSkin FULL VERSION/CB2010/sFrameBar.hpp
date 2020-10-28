// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sframebar.pas' rev: 21.00

#ifndef SframebarHPP
#define SframebarHPP

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
#include <Extctrls.hpp>	// Pascal unit
#include <Sspeedbutton.hpp>	// Pascal unit
#include <Sscrollbox.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sframebar
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TsTitleState { stClosed, stOpened, stClosing, stOpening };
#pragma option pop

class DELPHICLASS TsFrameBar;
class DELPHICLASS TsTitles;
class PASCALIMPLEMENTATION TsFrameBar : public Sscrollbox::TsScrollBox
{
	typedef Sscrollbox::TsScrollBox inherited;
	
private:
	TsTitles* FItems;
	int FTitleHeight;
	bool FAnimation;
	Imglist::TCustomImageList* FImages;
	int FSpacing;
	bool FAllowAllClose;
	bool FAllowAllOpen;
	bool FAutoFrameSize;
	int FBorderWidth;
	void __fastcall SetItems(const TsTitles* Value);
	void __fastcall SetTitleHeight(const int Value);
	void __fastcall SetImages(const Imglist::TCustomImageList* Value);
	int __fastcall Offset(void);
	void __fastcall UpdateWidths(void);
	void __fastcall SetSpacing(const int Value);
	Types::TRect __fastcall CalcClientRect(void);
	Forms::TFrame* __fastcall CreateDefaultFrame(void);
	bool __fastcall UpdateFrame(int i, int y, int h, int w);
	void __fastcall SetAutoFrameSize(const bool Value);
	void __fastcall SetAllowAllOpen(const bool Value);
	HIDESBASE void __fastcall SetBorderWidth(const int Value);
	
public:
	bool Arranging;
	bool Sizing;
	__fastcall virtual TsFrameBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TsFrameBar(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall ArrangeTitles(void);
	void __fastcall ChangeSize(int Index, bool AllowAnimation, int Height);
	void __fastcall OpenItem(int Index, bool AllowAnimation);
	void __fastcall CloseItem(int Index, bool AllowAnimation);
	void __fastcall ExpandAll(bool AllowAnimation);
	void __fastcall CollapseAll(bool AllowAnimation);
	void __fastcall Rearrange(void);
	
__published:
	__property Align = {default=3};
	__property BorderStyle = {default=1};
	__property int BorderWidth = {read=FBorderWidth, write=SetBorderWidth, default=2};
	__property bool AllowAllClose = {read=FAllowAllClose, write=FAllowAllClose, default=0};
	__property bool AllowAllOpen = {read=FAllowAllOpen, write=SetAllowAllOpen, default=0};
	__property bool Animation = {read=FAnimation, write=FAnimation, default=1};
	__property bool AutoFrameSize = {read=FAutoFrameSize, write=SetAutoFrameSize, nodefault};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property TsTitles* Items = {read=FItems, write=SetItems};
	__property int TitleHeight = {read=FTitleHeight, write=SetTitleHeight, default=28};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=2};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsFrameBar(HWND ParentWindow) : Sscrollbox::TsScrollBox(ParentWindow) { }
	
};


class DELPHICLASS TsTitleItem;
class PASCALIMPLEMENTATION TsTitles : public Classes::TCollection
{
	typedef Classes::TCollection inherited;
	
public:
	TsTitleItem* operator[](int Index) { return Items[Index]; }
	
private:
	TsFrameBar* FOwner;
	
protected:
	HIDESBASE TsTitleItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TsTitleItem* Value);
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	
public:
	__fastcall TsTitles(TsFrameBar* AOwner);
	__fastcall virtual ~TsTitles(void);
	__property TsTitleItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
};


class DELPHICLASS TsTitleButton;
class PASCALIMPLEMENTATION TsTitleButton : public Sspeedbutton::TsSpeedButton
{
	typedef Sspeedbutton::TsSpeedButton inherited;
	
protected:
	bool Active;
	__fastcall TsTitleButton(TsFrameBar* AOwner, int Index);
	
public:
	TsTitleItem* TitleItem;
	virtual int __fastcall CurrentState(void);
	__property OnClick;
public:
	/* TsSpeedButton.Create */ inline __fastcall virtual TsTitleButton(Classes::TComponent* AOwner) : Sspeedbutton::TsSpeedButton(AOwner) { }
	/* TsSpeedButton.Destroy */ inline __fastcall virtual ~TsTitleButton(void) { }
	
};


typedef void __fastcall (__closure *TCreateFrameEvent)(System::TObject* Sender, Forms::TCustomFrame* &Frame);

typedef void __fastcall (__closure *TFrameDestroyEvent)(System::TObject* Sender, Forms::TCustomFrame* &Frame, bool &CanDestroy);

class PASCALIMPLEMENTATION TsTitleItem : public Classes::TCollectionItem
{
	typedef Classes::TCollectionItem inherited;
	
private:
	TsTitles* FOwner;
	System::UnicodeString FCaption;
	bool FVisible;
	TCreateFrameEvent FOnCreateFrame;
	int FImageIndex;
	TFrameDestroyEvent FOnFrameDestroy;
	Classes::TNotifyEvent FOnClick;
	int FTag;
	Controls::TCursor FCursor;
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall TitleButtonClick(System::TObject* Sender);
	System::UnicodeString __fastcall GetSkinSection(void);
	void __fastcall SetSkinSection(const System::UnicodeString Value);
	void __fastcall SetImageIndex(const int Value);
	int __fastcall GetMargin(void);
	int __fastcall GetSpacing(void);
	void __fastcall SetMargin(const int Value);
	void __fastcall SetSpacing(const int Value);
	Menus::TPopupMenu* __fastcall GetPopupMenu(void);
	void __fastcall SetPopupMenu(const Menus::TPopupMenu* Value);
	void __fastcall SetCursor(const Controls::TCursor Value);
	
public:
	TsTitleButton* TitleButton;
	Forms::TCustomFrame* Frame;
	TsTitleState State;
	int FrameSize;
	bool Closing;
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall virtual ~TsTitleItem(void);
	__fastcall virtual TsTitleItem(Classes::TCollection* Collection);
	
__published:
	__property System::UnicodeString Caption = {read=FCaption, write=SetCaption};
	__property Controls::TCursor Cursor = {read=FCursor, write=SetCursor, nodefault};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=-1};
	__property System::UnicodeString SkinSection = {read=GetSkinSection, write=SetSkinSection};
	__property int Margin = {read=GetMargin, write=SetMargin, default=5};
	__property int Spacing = {read=GetSpacing, write=SetSpacing, default=8};
	__property int Tag = {read=FTag, write=FTag, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property Menus::TPopupMenu* PopupMenu = {read=GetPopupMenu, write=SetPopupMenu};
	__property TCreateFrameEvent OnCreateFrame = {read=FOnCreateFrame, write=FOnCreateFrame};
	__property Classes::TNotifyEvent OnClick = {read=FOnClick, write=FOnClick};
	__property TFrameDestroyEvent OnFrameDestroy = {read=FOnFrameDestroy, write=FOnFrameDestroy};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Sframebar */
using namespace Sframebar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SframebarHPP
