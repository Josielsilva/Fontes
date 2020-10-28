// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Shinteditor.pas' rev: 11.00

#ifndef ShinteditorHPP
#define ShinteditorHPP

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
#include <Sconst.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Imglist.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Comstrs.hpp>	// Pascal unit
#include <Commctrl.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Shintdesigner.hpp>	// Pascal unit
#include <Designeditors.hpp>	// Pascal unit
#include <Designintf.hpp>	// Pascal unit
#include <Vcleditors.hpp>	// Pascal unit
#include <Shintmanager.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Shinteditor
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TsHintEditor;
class PASCALIMPLEMENTATION TsHintEditor : public Designeditors::TComponentEditor 
{
	typedef Designeditors::TComponentEditor inherited;
	
public:
	virtual void __fastcall ExecuteVerb(int Index);
	virtual AnsiString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
public:
	#pragma option push -w-inl
	/* TComponentEditor.Create */ inline __fastcall virtual TsHintEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TComponentEditor(AComponent, ADesigner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TsHintEditor(void) { }
	#pragma option pop
	
};


class DELPHICLASS TsHintsDesigner;
class PASCALIMPLEMENTATION TsHintsDesigner : public Designeditors::TComponentProperty 
{
	typedef Designeditors::TComponentProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
	virtual AnsiString __fastcall GetValue();
public:
	#pragma option push -w-inl
	/* TPropertyEditor.Create */ inline __fastcall virtual TsHintsDesigner(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TComponentProperty(ADesigner, APropCount) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TsHintsDesigner(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall RunHintsDesigner(Shintmanager::TsHintManager* sHintManager);
extern PACKAGE void __fastcall Register(void);

}	/* namespace Shinteditor */
using namespace Shinteditor;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Shinteditor
