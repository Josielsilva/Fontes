// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Acthumbform.pas' rev: 11.00

#ifndef ActhumbformHPP
#define ActhumbformHPP

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

//-- user supplied -----------------------------------------------------------

namespace Acthumbform
{
//-- type declarations -------------------------------------------------------
#pragma pack(push,1)
struct TMagTransform
{
	
public:
	float v[3][3];
} ;
#pragma pack(pop)

typedef HWND THWNDArray[2];

typedef THWNDArray *PHWNDArray;

class DELPHICLASS TMagnifierWindow;
class DELPHICLASS TMagnifierOwner;
class PASCALIMPLEMENTATION TMagnifierOwner : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TMessage &m);
	void __fastcall FormMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	
public:
	int cL;
	int cT;
	int cR;
	int cB;
	Forms::TForm* ParentForm;
	TMagnifierWindow* MagnWnd;
	__fastcall virtual TMagnifierOwner(Classes::TComponent* AOwner);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	__fastcall virtual ~TMagnifierOwner(void);
	void __fastcall UpdatePosition(bool Full = true);
	void __fastcall UpdateRgn(void);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TMagnifierOwner(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TMagnifierOwner(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TMagnifierWindow : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	HWND FHandle;
	unsigned FWndStyle;
	int FWidth;
	int FTop;
	int FLeft;
	int FHeight;
	Byte FMagFactor;
	bool FVisible;
	TMagnifierOwner* FParent;
	void __fastcall SetMagFactor(const Byte Value);
	void __fastcall SetVisible(const bool Value);
	
public:
	bool PosUpdating;
	__property HWND Handle = {read=FHandle, nodefault};
	__property Byte MagFactor = {read=FMagFactor, write=SetMagFactor, nodefault};
	__property bool Visible = {read=FVisible, write=SetVisible, nodefault};
	__fastcall TMagnifierWindow(TMagnifierOwner* Parent);
	__fastcall virtual ~TMagnifierWindow(void);
	void __fastcall Refresh(void);
	void __fastcall UpdateSource(void);
};


//-- var, const, procedure ---------------------------------------------------
#define WC_MAGNIFIER "Magnifier"
#define sMagnificationDll "Magnification.dll"
extern PACKAGE TMagnifierOwner* MagnifierOwner;
extern PACKAGE BOOL __stdcall (*acMagInitialize)(void);
extern PACKAGE BOOL __stdcall (*acMagUninitialize)(void);
extern PACKAGE BOOL __stdcall (*acMagSetWindowSource)(HWND hwnd, const Types::TRect rect);
extern PACKAGE BOOL __stdcall (*acMagSetWindowTransform)(HWND hwnd, /* out */ TMagTransform &Transform);
extern PACKAGE BOOL __stdcall (*acMagSetWindowFilterList)(HWND hwnd, unsigned dwFilterMode, int count, PHWNDArray pHWND);

}	/* namespace Acthumbform */
using namespace Acthumbform;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Acthumbform
