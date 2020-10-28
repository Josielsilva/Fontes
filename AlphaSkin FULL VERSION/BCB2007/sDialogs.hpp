// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sdialogs.pas' rev: 11.00

#ifndef SdialogsHPP
#define SdialogsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Extdlgs.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Filectrl.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sdialogs
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TsZipShowing { zsAsFolder, zsAsFile };
#pragma option pop

class DELPHICLASS TsOpenDialog;
class PASCALIMPLEMENTATION TsOpenDialog : public Dialogs::TOpenDialog 
{
	typedef Dialogs::TOpenDialog inherited;
	
private:
	TsZipShowing FZipShowing;
	
public:
	__fastcall virtual TsOpenDialog(Classes::TComponent* AOwner);
	
__published:
	__property TsZipShowing ZipShowing = {read=FZipShowing, write=FZipShowing, default=0};
public:
	#pragma option push -w-inl
	/* TOpenDialog.Destroy */ inline __fastcall virtual ~TsOpenDialog(void) { }
	#pragma option pop
	
};


class DELPHICLASS TsOpenPictureDialog;
class PASCALIMPLEMENTATION TsOpenPictureDialog : public Extdlgs::TOpenPictureDialog 
{
	typedef Extdlgs::TOpenPictureDialog inherited;
	
private:
	Graphics::TPicture* FPicture;
	HIDESBASE bool __fastcall IsFilterStored(void);
	
public:
	__fastcall virtual TsOpenPictureDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TsOpenPictureDialog(void);
	DYNAMIC void __fastcall DoSelectionChange(void);
	DYNAMIC void __fastcall DoShow(void);
	
__published:
	__property Filter  = {stored=IsFilterStored};
};


class DELPHICLASS TsSaveDialog;
class PASCALIMPLEMENTATION TsSaveDialog : public Dialogs::TSaveDialog 
{
	typedef Dialogs::TSaveDialog inherited;
	
public:
	#pragma option push -w-inl
	/* TOpenDialog.Create */ inline __fastcall virtual TsSaveDialog(Classes::TComponent* AOwner) : Dialogs::TSaveDialog(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TOpenDialog.Destroy */ inline __fastcall virtual ~TsSaveDialog(void) { }
	#pragma option pop
	
};


class DELPHICLASS TsSavePictureDialog;
class PASCALIMPLEMENTATION TsSavePictureDialog : public Extdlgs::TSavePictureDialog 
{
	typedef Extdlgs::TSavePictureDialog inherited;
	
private:
	Graphics::TPicture* FPicture;
	HIDESBASE bool __fastcall IsFilterStored(void);
	
public:
	__fastcall virtual TsSavePictureDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TsSavePictureDialog(void);
	
__published:
	__property Filter  = {stored=IsFilterStored};
};


class DELPHICLASS TsColorDialog;
class PASCALIMPLEMENTATION TsColorDialog : public Dialogs::TColorDialog 
{
	typedef Dialogs::TColorDialog inherited;
	
private:
	Classes::TStrings* FMainColors;
	bool FStandardDlg;
	void __fastcall SetMainColors(const Classes::TStrings* Value);
	
public:
	virtual bool __fastcall Execute(void)/* overload */;
	__fastcall virtual TsColorDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TsColorDialog(void);
	DYNAMIC void __fastcall DoShow(void);
	DYNAMIC void __fastcall DoClose(void);
	
__published:
	__property Options  = {default=1};
	__property Classes::TStrings* MainColors = {read=FMainColors, write=SetMainColors};
	__property bool StandardDlg = {read=FStandardDlg, write=FStandardDlg, default=0};
	
/* Hoisted overloads: */
	
public:
	inline bool __fastcall  Execute(HWND ParentWnd){ return TColorDialog::Execute(ParentWnd); }
	
};


class DELPHICLASS TsPathDialog;
class PASCALIMPLEMENTATION TsPathDialog : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	AnsiString FPath;
	AnsiString FRoot;
	AnsiString FCaption;
	bool FNoChangeDir;
	bool FShowRootBtns;
	Filectrl::TSelectDirOpts FOptions;
	
public:
	__fastcall virtual TsPathDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TsPathDialog(void);
	bool __fastcall Execute(void);
	
__published:
	__property AnsiString Path = {read=FPath, write=FPath};
	__property AnsiString Root = {read=FRoot, write=FRoot};
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property bool NoChangeDir = {read=FNoChangeDir, write=FNoChangeDir, default=0};
	__property bool ShowRootBtns = {read=FShowRootBtns, write=FShowRootBtns, default=0};
	__property Filectrl::TSelectDirOpts DialogOptions = {read=FOptions, write=FOptions, default=7};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Forms::TForm* __fastcall sCreateMessageDialog(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons);
extern PACKAGE int __fastcall sMessageDlg(const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall sMessageDlg(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPos(const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPos(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPosHelp(const AnsiString Title, const AnsiString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y, const AnsiString HelpFileName);
extern PACKAGE void __fastcall sShowMessage(const AnsiString Msg)/* overload */;
extern PACKAGE void __fastcall sShowMessage(const AnsiString Title, const AnsiString Msg)/* overload */;
extern PACKAGE void __fastcall sShowMessageFmt(const AnsiString Msg, System::TVarRec const * Params, const int Params_Size)/* overload */;
extern PACKAGE void __fastcall sShowMessageFmt(const AnsiString Title, const AnsiString Msg, System::TVarRec const * Params, const int Params_Size)/* overload */;
extern PACKAGE void __fastcall sShowMessagePos(const AnsiString Msg, int X, int Y)/* overload */;
extern PACKAGE void __fastcall sShowMessagePos(const AnsiString Title, const AnsiString Msg, int X, int Y)/* overload */;
extern PACKAGE bool __fastcall sInputQuery(const AnsiString ACaption, const AnsiString APrompt, AnsiString &Value);
extern PACKAGE AnsiString __fastcall sInputBox(const AnsiString ACaption, const AnsiString APrompt, const AnsiString ADefault);

}	/* namespace Sdialogs */
using namespace Sdialogs;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Sdialogs
