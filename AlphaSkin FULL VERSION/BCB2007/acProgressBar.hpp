// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acprogressbar.pas' rev: 11.00

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
#pragma option push -b-
enum TProgressBarStyle { pbstNormal, pbstMarquee };
#pragma option pop

class DELPHICLASS TsProgressBar;
class PASCALIMPLEMENTATION TsProgressBar : public Comctrls::TProgressBar 
{
	typedef Comctrls::TProgressBar inherited;
	
private:
	int FOldCount;
	Extctrls::TTimer* Timer;
	Scommondata::TsCommonData* FCommonData;
	AnsiString FProgressSkin;
	int FMarqPos;
	int FMarqSize;
	int FMarqStep;
	int FOrient;
	int FSavedPosition;
	TProgressBarStyle FStyle;
	int FMarqueeInterval;
	void __fastcall PrepareCache(void);
	Types::TRect __fastcall ProgressRect();
	tagSIZE __fastcall ItemSize();
	Types::TRect __fastcall ClRect();
	void __fastcall SetProgressSkin(const AnsiString Value);
	void __fastcall SetStyle(const TProgressBarStyle Value);
	void __fastcall SetMarqueeInterval(const int Value);
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
	__property AnsiString ProgressSkin = {read=FProgressSkin, write=SetProgressSkin};
	__property Scommondata::TsCommonData* SkinData = {read=FCommonData, write=FCommonData};
	__property TProgressBarStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property int MarqueeInterval = {read=FMarqueeInterval, write=SetMarqueeInterval, default=10};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TsProgressBar(HWND ParentWindow) : Comctrls::TProgressBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Acprogressbar */
using namespace Acprogressbar;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Acprogressbar
