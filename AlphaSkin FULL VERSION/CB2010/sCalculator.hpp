// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Scalculator.pas' rev: 21.00

#ifndef ScalculatorHPP
#define ScalculatorHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Scalcunit.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Clipbrd.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Scalculator
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TacCalcTitleButton { cbClose, cbMinimize };
#pragma option pop

typedef Set<TacCalcTitleButton, cbClose, cbMinimize>  TacCalcTitleButtons;

class DELPHICLASS TsCalculator;
class PASCALIMPLEMENTATION TsCalculator : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
private:
	Scalcunit::TsCalcForm* FCalc;
	System::Extended FValue;
	System::Extended FMemory;
	System::UnicodeString FCaption;
	System::Byte FPrecision;
	bool FBeepOnError;
	Classes::THelpContext FHelpContext;
	Classes::TNotifyEvent FOnChange;
	Controls::TKeyPressEvent FOnCalcKey;
	Classes::TNotifyEvent FOnDisplayChange;
	TacCalcTitleButtons FTitleButtons;
	int FScaleIncrement;
	System::Extended __fastcall GetDisplay(void);
	void __fastcall SetScaleIncrement(const int Value);
	
protected:
	bool Scaled;
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall CalcKey(System::WideChar &Key);
	DYNAMIC void __fastcall DisplayChange(void);
	
public:
	__fastcall virtual TsCalculator(Classes::TComponent* AOwner);
	__fastcall virtual ~TsCalculator(void);
	__property System::Extended CalcDisplay = {read=GetDisplay};
	__property System::Extended Memory = {read=FMemory};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Classes::TNotifyEvent OnDisplayChange = {read=FOnDisplayChange, write=FOnDisplayChange};
	bool __fastcall Execute(int LeftPos = 0xffffffff, int TopPos = 0xffffffff);
	
__published:
	__property bool BeepOnError = {read=FBeepOnError, write=FBeepOnError, default=1};
	__property System::Byte Precision = {read=FPrecision, write=FPrecision, default=24};
	__property System::UnicodeString Caption = {read=FCaption, write=FCaption};
	__property System::Extended Value = {read=FValue, write=FValue};
	__property int ScaleIncrement = {read=FScaleIncrement, write=SetScaleIncrement, nodefault};
	__property TacCalcTitleButtons TitleButtons = {read=FTitleButtons, write=FTitleButtons, default=3};
	__property Classes::THelpContext HelpContext = {read=FHelpContext, write=FHelpContext, default=0};
};


//-- var, const, procedure ---------------------------------------------------
#define ButtonChars L"0123456789_./*-+Q%R=\bC"

}	/* namespace Scalculator */
using namespace Scalculator;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ScalculatorHPP
