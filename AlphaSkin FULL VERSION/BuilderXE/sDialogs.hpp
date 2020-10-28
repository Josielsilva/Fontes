// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'sDialogs.pas' rev: 22.00

#ifndef SdialogsHPP
#define SdialogsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <ExtDlgs.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <sConst.hpp>	// Pascal unit
#include <FileCtrl.hpp>	// Pascal unit

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
	/* TOpenDialog.Destroy */ inline __fastcall virtual ~TsOpenDialog(void) { }
	
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
	__property Filter = {stored=IsFilterStored};
};


class DELPHICLASS TsSaveDialog;
class PASCALIMPLEMENTATION TsSaveDialog : public Dialogs::TSaveDialog
{
	typedef Dialogs::TSaveDialog inherited;
	
public:
	/* TOpenDialog.Create */ inline __fastcall virtual TsSaveDialog(Classes::TComponent* AOwner) : Dialogs::TSaveDialog(AOwner) { }
	/* TOpenDialog.Destroy */ inline __fastcall virtual ~TsSaveDialog(void) { }
	
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
	__property Filter = {stored=IsFilterStored};
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
	__property Options = {default=1};
	__property Classes::TStrings* MainColors = {read=FMainColors, write=SetMainColors};
	__property bool StandardDlg = {read=FStandardDlg, write=FStandardDlg, default=0};
/* Hoisted overloads: */
	
public:
	inline bool __fastcall  Execute(HWND ParentWnd){ return Dialogs::TColorDialog::Execute(ParentWnd); }
	
};


class DELPHICLASS TsPathDialog;
class PASCALIMPLEMENTATION TsPathDialog : public Classes::TComponent
{
	typedef Classes::TComponent inherited;
	
private:
	System::UnicodeString FPath;
	Sconst::TacRoot FRoot;
	System::UnicodeString FCaption;
	bool FNoChangeDir;
	bool FShowRootBtns;
	Filectrl::TSelectDirOpts FOptions;
	
public:
	__fastcall virtual TsPathDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TsPathDialog(void);
	bool __fastcall Execute(void);
	
__published:
	__property System::UnicodeString Path = {read=FPath, write=FPath};
	__property Sconst::TacRoot Root = {read=FRoot, write=FRoot};
	__property System::UnicodeString Caption = {read=FCaption, write=FCaption};
	__property bool NoChangeDir = {read=FNoChangeDir, write=FNoChangeDir, default=0};
	__property bool ShowRootBtns = {read=FShowRootBtns, write=FShowRootBtns, default=0};
	__property Filectrl::TSelectDirOpts DialogOptions = {read=FOptions, write=FOptions, default=7};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Forms::TForm* __fastcall sCreateMessageDialog(const System::UnicodeString Title, const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons);
extern PACKAGE int __fastcall sMessageDlg(const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall sMessageDlg(const System::UnicodeString Title, const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPos(const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPos(const System::UnicodeString Title, const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y)/* overload */;
extern PACKAGE int __fastcall sMessageDlgPosHelp(const System::UnicodeString Title, const System::UnicodeString Msg, Dialogs::TMsgDlgType DlgType, Dialogs::TMsgDlgButtons Buttons, int HelpCtx, int X, int Y, const System::UnicodeString HelpFileName);
extern PACKAGE void __fastcall sShowMessage(const System::UnicodeString Msg)/* overload */;
extern PACKAGE void __fastcall sShowMessage(const System::UnicodeString Title, const System::UnicodeString Msg)/* overload */;
extern PACKAGE void __fastcall sShowMessageFmt(const System::UnicodeString Msg, System::TVarRec const *Params, const int Params_Size)/* overload */;
extern PACKAGE void __fastcall sShowMessageFmt(const System::UnicodeString Title, const System::UnicodeString Msg, System::TVarRec const *Params, const int Params_Size)/* overload */;
extern PACKAGE void __fastcall sShowMessagePos(const System::UnicodeString Msg, int X, int Y)/* overload */;
extern PACKAGE void __fastcall sShowMessagePos(const System::UnicodeString Title, const System::UnicodeString Msg, int X, int Y)/* overload */;
extern PACKAGE bool __fastcall sInputQuery(const System::UnicodeString ACaption, const System::UnicodeString APrompt, System::UnicodeString &Value);
extern PACKAGE System::UnicodeString __fastcall sInputBox(const System::UnicodeString ACaption, const System::UnicodeString APrompt, const System::UnicodeString ADefault);

}	/* namespace Sdialogs */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Sdialogs;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SdialogsHPP
