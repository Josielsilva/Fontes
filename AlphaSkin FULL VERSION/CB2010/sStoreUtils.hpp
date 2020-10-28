// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Sstoreutils.pas' rev: 21.00

#ifndef SstoreutilsHPP
#define SstoreutilsHPP

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
#include <Toolwin.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit
#include <Actnlist.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Jpeg.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Spanel.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <Sedit.hpp>	// Pascal unit
#include <Scurrencyedit.hpp>	// Pascal unit
#include <Scombobox.hpp>	// Pascal unit
#include <Spagecontrol.hpp>	// Pascal unit
#include <Scomboedit.hpp>	// Pascal unit
#include <Smemo.hpp>	// Pascal unit
#include <Sradiobutton.hpp>	// Pascal unit
#include <Scheckbox.hpp>	// Pascal unit
#include <Sgraphutils.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Sstoreutils
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE System::UnicodeString __fastcall ReadIniString(const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString FileName)/* overload */;
extern PACKAGE System::UnicodeString __fastcall ReadIniString(const System::UnicodeString Section, const System::UnicodeString Named, Inifiles::TMemIniFile* r)/* overload */;
extern PACKAGE void __fastcall ReadIniStrings(Classes::TStrings* Value, const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString FileName)/* overload */;
extern PACKAGE void __fastcall ReadIniStrings(Classes::TStrings* Value, const System::UnicodeString Section, const System::UnicodeString Named, Inifiles::TMemIniFile* r)/* overload */;
extern PACKAGE int __fastcall ReadIniInteger(const System::UnicodeString Section, const System::UnicodeString Named, int Value, System::UnicodeString FileName)/* overload */;
extern PACKAGE int __fastcall ReadIniInteger(const System::UnicodeString Section, const System::UnicodeString Named, int Value, Inifiles::TMemIniFile* r)/* overload */;
extern PACKAGE System::UnicodeString __fastcall ReadRegString(HKEY Key, const System::UnicodeString Section, const System::UnicodeString Named);
extern PACKAGE void __fastcall WriteRegString(HKEY Key, const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString Value);
extern PACKAGE void __fastcall DeleteRegParam(HKEY Key, const System::UnicodeString Section, const System::UnicodeString Named);
extern PACKAGE void __fastcall WriteRegInteger(const System::UnicodeString Section, const System::UnicodeString Named, int Value);
extern PACKAGE void __fastcall WriteIniStr(const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString Value, const System::UnicodeString FileName)/* overload */;
extern PACKAGE void __fastcall WriteIniStr(const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString Value, Inifiles::TMemIniFile* IniFile)/* overload */;
extern PACKAGE void __fastcall WriteIniStrings(const System::UnicodeString Section, const System::UnicodeString Named, const System::UnicodeString FileName, Classes::TStrings* Value)/* overload */;
extern PACKAGE void __fastcall WriteIniStrings(const System::UnicodeString Section, const System::UnicodeString Named, Classes::TStrings* Value, Inifiles::TMemIniFile* IniFile)/* overload */;
extern PACKAGE void __fastcall WriteIniFont(const System::UnicodeString Section, const System::UnicodeString Named, Graphics::TFont* Value, Inifiles::TMemIniFile* IniFile)/* overload */;
extern PACKAGE void __fastcall ReadIniFont(const System::UnicodeString Section, const System::UnicodeString Named, Graphics::TFont* Value, Inifiles::TMemIniFile* IniFile)/* overload */;
extern PACKAGE void __fastcall ReadSection(Classes::TStringList* Src, Classes::TStringList* Dest, const System::UnicodeString Name);
extern PACKAGE System::UnicodeString __fastcall ReadValue(Classes::TStringList* Src, const System::UnicodeString Section, const System::UnicodeString ValueName);
extern PACKAGE void __fastcall SaveFormPlacement(Forms::TForm* Form, const System::UnicodeString IniFileName);
extern PACKAGE void __fastcall RestoreFormPlacement(Forms::TForm* Form, const System::UnicodeString IniFileName);

}	/* namespace Sstoreutils */
using namespace Sstoreutils;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// SstoreutilsHPP
