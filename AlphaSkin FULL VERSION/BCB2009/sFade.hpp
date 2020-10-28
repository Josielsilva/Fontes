// CodeGear C++Builder
// Copyright (c) 1995, 2008 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sfade.pas' rev: 20.00

#ifndef SfadeHPP
#define SfadeHPP

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
#include <Scommondata.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Sskinmanager.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sfade
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsFadeTimer;
class PASCALIMPLEMENTATION TsFadeTimer : public Extctrls::TTimer
{
	typedef Extctrls::TTimer inherited;
	
private:
	void __fastcall SetDirection(const Sconst::TFadeDirection Value);
	void __fastcall SetOwnerData(const Scommondata::TsCommonData* Value);
	void __fastcall TimerAction(System::TObject* Sender);
	
public:
	Sconst::TFadeDirection FDirection;
	Scommondata::TsCommonData* FOwnerData;
	int Iterations;
	int FadeLevel;
	Graphics::TBitmap* BmpFrom;
	__fastcall virtual TsFadeTimer(Classes::TComponent* AOwner);
	__fastcall virtual ~TsFadeTimer(void);
	void __fastcall Change(void);
	DYNAMIC void __fastcall Timer(void);
	bool __fastcall ToEnd(void);
	__property Sconst::TFadeDirection Direction = {read=FDirection, write=SetDirection, nodefault};
	__property Scommondata::TsCommonData* OwnerData = {read=FOwnerData, write=SetOwnerData};
};


class DELPHICLASS TsAnimTimer;
class PASCALIMPLEMENTATION TsAnimTimer : public Extctrls::TTimer
{
	typedef Extctrls::TTimer inherited;
	
private:
	bool FadeInProcess;
	void __fastcall SetOwnerData(const Scommondata::TsCommonData* Value);
	void __fastcall TimerAction(System::TObject* Sender);
	
public:
	Graphics::TBitmap* BmpFrom;
	Graphics::TBitmap* TmpBmp;
	Scommondata::TsCommonData* FOwnerData;
	int Iterations;
	int FadeLevel;
	__fastcall virtual TsAnimTimer(Classes::TComponent* AOwner);
	__fastcall virtual ~TsAnimTimer(void);
	__property Enabled = {default=0};
	void __fastcall DoFade(void);
	void __fastcall Repaint(void);
	DYNAMIC void __fastcall Timer(void);
	bool __fastcall ToEnd(void);
	__property Scommondata::TsCommonData* OwnerData = {read=FOwnerData, write=SetOwnerData};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall EventEnabled(Sconst::TacAnimatEvent Event, Sconst::TacAnimatEvents CurrentProperty, Sskinmanager::TsSkinManager* SkinManager = (Sskinmanager::TsSkinManager*)(0x0));
extern PACKAGE void __fastcall AnimChange(TsFadeTimer* &Timer, Scommondata::TsCommonData* CommonData, bool Clicked, Sconst::TFadeDirection Direction = (Sconst::TFadeDirection)(0x1));
extern PACKAGE void __fastcall DoChangePaint(TsFadeTimer* &Timer, Scommondata::TsCommonData* CommonData, bool Clicked, bool AllowAnimation, Sconst::TFadeDirection Direction = (Sconst::TFadeDirection)(0x1));
extern PACKAGE void __fastcall StopFading(TsFadeTimer* &Timer, Scommondata::TsCommonData* CommonData);

}	/* namespace Sfade */
using namespace Sfade;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SfadeHPP
