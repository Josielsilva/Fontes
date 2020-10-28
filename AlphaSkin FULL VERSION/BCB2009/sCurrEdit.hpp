// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Scurredit.pas' rev: 20.00

#ifndef ScurreditHPP
#define ScurreditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Scustomcomboedit.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Scalcunit.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scurredit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsCustomNumEdit;
class PASCALIMPLEMENTATION TsCustomNumEdit : public Scustomcomboedit::TsCustomComboEdit
{
	typedef Scustomcomboedit::TsCustomComboEdit inherited;
	
private:
	Controls::TControlCanvas* FCanvas;
	Classes::TAlignment FAlignment;
	bool FFocused;
	System::Extended FValue;
	System::Extended FMinValue;
	System::Extended FMaxValue;
	unsigned FDecimalPlaces;
	bool FBeepOnError;
	bool FCheckOnExit;
	bool FFormatOnEditing;
	bool FFormatting;
	System::AnsiString *FDisplayFormat;
	void __fastcall SetFocused(bool Value);
	HIDESBASE void __fastcall SetAlignment(Classes::TAlignment Value);
	void __fastcall SetBeepOnError(bool Value);
	void __fastcall SetDisplayFormat(const System::UnicodeString Value);
	System::UnicodeString __fastcall GetDisplayFormat();
	void __fastcall SetDecimalPlaces(unsigned Value);
	System::Extended __fastcall GetValue(void);
	void __fastcall SetValue(System::Extended AValue);
	int __fastcall GetAsInteger(void);
	void __fastcall SetMaxValue(System::Extended AValue);
	void __fastcall SetMinValue(System::Extended AValue);
	HIDESBASE System::UnicodeString __fastcall GetText();
	HIDESBASE void __fastcall SetText(const System::UnicodeString AValue);
	System::UnicodeString __fastcall TextToValText(const System::UnicodeString AValue);
	System::Extended __fastcall CheckValue(System::Extended NewValue, bool RaiseOnError);
	bool __fastcall IsFormatStored(void);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMPaste(Messages::TMessage &Message);
	void __fastcall CalcWindowClose(System::TObject* Sender, Forms::TCloseAction &Action);
	
protected:
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall ReformatEditText(void);
	virtual void __fastcall DataChanged(void);
	virtual System::UnicodeString __fastcall DefFormat();
	DYNAMIC void __fastcall KeyPress(System::WideChar &Key);
	virtual bool __fastcall IsValidChar(System::WideChar Key);
	System::UnicodeString __fastcall FormatDisplayText(System::Extended Value);
	virtual System::UnicodeString __fastcall GetDisplayText();
	virtual void __fastcall Reset(void);
	void __fastcall CheckRange(void);
	void __fastcall UpdateData(void);
	__property bool Formatting = {read=FFormatting, nodefault};
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=1};
	__property bool BeepOnError = {read=FBeepOnError, write=SetBeepOnError, default=1};
	__property bool CheckOnExit = {read=FCheckOnExit, write=FCheckOnExit, default=0};
	__property unsigned DecimalPlaces = {read=FDecimalPlaces, write=SetDecimalPlaces, default=2};
	__property System::UnicodeString DisplayFormat = {read=GetDisplayFormat, write=SetDisplayFormat, stored=IsFormatStored};
	__property System::Extended MaxValue = {read=FMaxValue, write=SetMaxValue};
	__property System::Extended MinValue = {read=FMinValue, write=SetMinValue};
	__property System::UnicodeString Text = {read=GetText, write=SetText, stored=false};
	__property MaxLength = {default=0};
	virtual void __fastcall PopupWindowShow(void);
	__property ClickKey = {default=32808};
	virtual void __fastcall PaintText(void);
	
public:
	__fastcall virtual TsCustomNumEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TsCustomNumEdit(void);
	virtual void __fastcall Clear(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property int AsInteger = {read=GetAsInteger, nodefault};
	__property System::UnicodeString DisplayText = {read=GetDisplayText};
	__property DroppedDown;
	__property System::Extended Value = {read=GetValue, write=SetValue};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCustomNumEdit(HWND ParentWindow) : Scustomcomboedit::TsCustomComboEdit(ParentWindow) { }
	
};


class DELPHICLASS TsCalcEdit;
class PASCALIMPLEMENTATION TsCalcEdit : public TsCustomNumEdit
{
	typedef TsCustomNumEdit inherited;
	
public:
	__property AsInteger;
	__fastcall virtual TsCalcEdit(Classes::TComponent* AOwner);
	
__published:
	__property ClickKey = {default=32808};
	__property AutoSelect = {default=1};
	__property BeepOnError = {default=1};
	__property DirectInput = {default=1};
	__property DragCursor = {default=-12};
	__property Enabled = {default=1};
	__property Font;
	__property HideSelection = {default=1};
	__property ImeMode = {default=3};
	__property ImeName;
	__property MaxLength = {default=0};
	__property ParentFont = {default=1};
	__property ParentShowHint = {default=1};
	__property PopupAlign = {default=0};
	__property PopupMenu;
	__property ReadOnly = {default=0};
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property TabStop = {default=1};
	__property Visible = {default=1};
	__property OnButtonClick;
	__property OnChange;
	__property OnClick;
	__property OnDblClick;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnEndDrag;
	__property OnEnter;
	__property OnExit;
	__property OnKeyDown;
	__property OnKeyPress;
	__property OnKeyUp;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnStartDrag;
	__property Alignment = {default=1};
	__property CheckOnExit = {default=0};
	__property DecimalPlaces = {default=2};
	__property DisplayFormat;
	__property MaxValue;
	__property MinValue;
	__property Text;
	__property Value;
public:
	/* TsCustomNumEdit.Destroy */ inline __fastcall virtual ~TsCalcEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCalcEdit(HWND ParentWindow) : TsCustomNumEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Scurredit */
using namespace Scurredit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScurreditHPP
