// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acprogressbar.pas' rev: 21.00

#ifndef AcprogressbarHPP
#define AcprogressbarHPP

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
#include <Comctrls.hpp>	// Pascal unit
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acprogressbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsProgressBar;
class PASCALIMPLEMENTATION TsProgressBar : public Comctrls::TProgressBar
{
	typedef Comctrls::TProgressBar inherited;
	
private:
	int FOldCount;
	Extctrls::TTimer* Timer;
	Scommondata::TsCommonData* FCommonData;
	System::UnicodeString FProgressSkin;
	int FMarqPos;
	int FMarqSize;
	int FMarqStep;
	int FOrient;
	void __fastcall PrepareCache(void);
	Types::TRect __fastcall ProgressRect(void);
	tagSIZE __fastcall ItemSize(void);
	Types::TRect __fastcall ClRect(void);
	void __fastcall SetProgressSkin(const System::UnicodeString Value);
	void __fastcall TimerAction(System::TObject* Sender);
	
public:
	void __fastcall Paint(HDC DC);
	__fastcall virtual TsProgressBar(Classes::TComponent* AOwner);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	__fastcall virtual ~TsProgressBar(void);
	virtual void __fastcall AfterConstruction(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
__published:
	__property System::UnicodeString ProgressSkin = {read=FProgressSkin, write=SetProgressSkin};
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsProgressBar(HWND ParentWindow) : Comctrls::TProgressBar(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Acprogressbar */
using namespace Acprogressbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcprogressbarHPP
