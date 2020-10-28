// CodeGear C++Builder
// Copyright (c) 1995, 2009 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Stooledit.pas' rev: 21.00

#ifndef StooleditHPP
#define StooleditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Sconst.hpp>	// Pascal unit
#include <Stdctrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Sdialogs.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Sdateutils.hpp>	// Pascal unit
#include <Scustomcomboedit.hpp>	// Pascal unit
#include <Filectrl.hpp>	// Pascal unit
#include <Comctrls.hpp>	// Pascal unit
#include <Spopupclndr.hpp>	// Pascal unit
#include <Sstrings.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Smonthcalendar.hpp>	// Pascal unit
#include <Acntutils.hpp>	// Pascal unit
#include <Sdefaults.hpp>	// Pascal unit
#include <Maskutils.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Stooledit
{
//-- type declarations -------------------------------------------------------
typedef void __fastcall (__closure *TExecOpenDialogEvent)(System::TObject* Sender, System::UnicodeString &Name, bool &Action);

class DELPHICLASS TsFileDirEdit;
class PASCALIMPLEMENTATION TsFileDirEdit : public Scustomcomboedit::TsCustomComboEdit
{
	typedef Scustomcomboedit::TsCustomComboEdit inherited;
	
private:
	bool FAcceptFiles;
	Classes::TNotifyEvent FOnDropFiles;
	TExecOpenDialogEvent FOnBeforeDialog;
	TExecOpenDialogEvent FOnAfterDialog;
	void __fastcall SetDragAccept(bool Value);
	void __fastcall SetAcceptFiles(bool Value);
	MESSAGE void __fastcall WMDropFiles(Messages::TWMDropFiles &Msg);
	
protected:
	bool FMultipleDirs;
	virtual void __fastcall CreateHandle(void);
	virtual void __fastcall DestroyWindowHandle(void);
	virtual System::UnicodeString __fastcall GetLongName(void) = 0 ;
	virtual System::UnicodeString __fastcall GetShortName(void) = 0 ;
	DYNAMIC void __fastcall DoAfterDialog(System::UnicodeString &FileName, bool &Action);
	DYNAMIC void __fastcall DoBeforeDialog(System::UnicodeString &FileName, bool &Action);
	virtual void __fastcall ReceptFileDir(const System::UnicodeString AFileName) = 0 ;
	virtual void __fastcall ClearFileList(void);
	__property MaxLength = {default=255};
	
public:
	__fastcall virtual TsFileDirEdit(Classes::TComponent* AOwner);
	__property System::UnicodeString LongName = {read=GetLongName};
	__property System::UnicodeString ShortName = {read=GetShortName};
	__property bool AcceptFiles = {read=FAcceptFiles, write=SetAcceptFiles, default=0};
	
__published:
	__property TExecOpenDialogEvent OnBeforeDialog = {read=FOnBeforeDialog, write=FOnBeforeDialog};
	__property TExecOpenDialogEvent OnAfterDialog = {read=FOnAfterDialog, write=FOnAfterDialog};
	__property Classes::TNotifyEvent OnDropFiles = {read=FOnDropFiles, write=FOnDropFiles};
public:
	/* TsCustomComboEdit.Destroy */ inline __fastcall virtual ~TsFileDirEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsFileDirEdit(HWND ParentWindow) : Scustomcomboedit::TsCustomComboEdit(ParentWindow) { }
	
};


#pragma option push -b-
enum TFileDialogKind { dkOpen, dkSave, dkOpenPicture, dkSavePicture };
#pragma option pop

class DELPHICLASS TsFilenameEdit;
class PASCALIMPLEMENTATION TsFilenameEdit : public TsFileDirEdit
{
	typedef TsFileDirEdit inherited;
	
private:
	Dialogs::TOpenDialog* FDialog;
	TFileDialogKind FDialogKind;
	void __fastcall CreateEditDialog(void);
	System::UnicodeString __fastcall GetFileName(void);
	System::UnicodeString __fastcall GetDefaultExt(void);
	Dialogs::TFileEditStyle __fastcall GetFileEditStyle(void);
	System::UnicodeString __fastcall GetFilter(void);
	int __fastcall GetFilterIndex(void);
	System::UnicodeString __fastcall GetInitialDir(void);
	Classes::TStrings* __fastcall GetHistoryList(void);
	Dialogs::TOpenOptions __fastcall GetOptions(void);
	System::UnicodeString __fastcall GetDialogTitle(void);
	Classes::TStrings* __fastcall GetDialogFiles(void);
	void __fastcall SetDialogKind(TFileDialogKind Value);
	void __fastcall SetFileName(const System::UnicodeString Value);
	void __fastcall SetDefaultExt(System::UnicodeString Value);
	void __fastcall SetFileEditStyle(Dialogs::TFileEditStyle Value);
	void __fastcall SetFilter(const System::UnicodeString Value);
	void __fastcall SetFilterIndex(int Value);
	void __fastcall SetInitialDir(const System::UnicodeString Value);
	void __fastcall SetHistoryList(Classes::TStrings* Value);
	void __fastcall SetOptions(Dialogs::TOpenOptions Value);
	void __fastcall SetDialogTitle(const System::UnicodeString Value);
	bool __fastcall IsCustomTitle(void);
	bool __fastcall IsCustomFilter(void);
	
protected:
	DYNAMIC void __fastcall ButtonClick(void);
	virtual void __fastcall ReceptFileDir(const System::UnicodeString AFileName);
	virtual void __fastcall ClearFileList(void);
	virtual System::UnicodeString __fastcall GetLongName(void);
	virtual System::UnicodeString __fastcall GetShortName(void);
	__property Dialogs::TFileEditStyle FileEditStyle = {read=GetFileEditStyle, write=SetFileEditStyle, default=0};
	
public:
	__fastcall virtual TsFilenameEdit(Classes::TComponent* AOwner);
	__property Dialogs::TOpenDialog* Dialog = {read=FDialog};
	__property Classes::TStrings* DialogFiles = {read=GetDialogFiles};
	__property System::UnicodeString DialogTitle = {read=GetDialogTitle, write=SetDialogTitle, stored=IsCustomTitle};
	
__published:
	__property AcceptFiles = {default=0};
	__property System::UnicodeString DefaultExt = {read=GetDefaultExt, write=SetDefaultExt};
	__property int FilterIndex = {read=GetFilterIndex, write=SetFilterIndex, default=1};
	__property System::UnicodeString InitialDir = {read=GetInitialDir, write=SetInitialDir};
	__property TFileDialogKind DialogKind = {read=FDialogKind, write=SetDialogKind, default=0};
	__property System::UnicodeString FileName = {read=GetFileName, write=SetFileName, stored=false};
	__property System::UnicodeString Filter = {read=GetFilter, write=SetFilter, stored=IsCustomFilter};
	__property Classes::TStrings* HistoryList = {read=GetHistoryList, write=SetHistoryList};
	__property Dialogs::TOpenOptions DialogOptions = {read=GetOptions, write=SetOptions, default=524292};
public:
	/* TsCustomComboEdit.Destroy */ inline __fastcall virtual ~TsFilenameEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsFilenameEdit(HWND ParentWindow) : TsFileDirEdit(ParentWindow) { }
	
};


class DELPHICLASS TsDirectoryEdit;
class PASCALIMPLEMENTATION TsDirectoryEdit : public TsFileDirEdit
{
	typedef TsFileDirEdit inherited;
	
private:
	Filectrl::TSelectDirOpts FOptions;
	System::UnicodeString FInitialDir;
	System::UnicodeString FDialogText;
	Sconst::TacRoot FRoot;
	bool FNoChangeDir;
	bool FShowRootBtns;
	
protected:
	DYNAMIC void __fastcall ButtonClick(void);
	virtual void __fastcall ReceptFileDir(const System::UnicodeString AFileName);
	virtual System::UnicodeString __fastcall GetLongName(void);
	virtual System::UnicodeString __fastcall GetShortName(void);
	
public:
	__fastcall virtual TsDirectoryEdit(Classes::TComponent* AOwner);
	
__published:
	__property AcceptFiles = {default=0};
	__property System::UnicodeString InitialDir = {read=FInitialDir, write=FInitialDir};
	__property Filectrl::TSelectDirOpts DialogOptions = {read=FOptions, write=FOptions, default=7};
	__property System::UnicodeString DialogText = {read=FDialogText, write=FDialogText};
	__property bool MultipleDirs = {read=FMultipleDirs, write=FMultipleDirs, default=0};
	__property bool NoChangeDir = {read=FNoChangeDir, write=FNoChangeDir, default=0};
	__property Sconst::TacRoot Root = {read=FRoot, write=FRoot};
	__property bool ShowRootBtns = {read=FShowRootBtns, write=FShowRootBtns, default=0};
public:
	/* TsCustomComboEdit.Destroy */ inline __fastcall virtual ~TsDirectoryEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsDirectoryEdit(HWND ParentWindow) : TsFileDirEdit(ParentWindow) { }
	
};


#pragma option push -b-
enum TYearDigits { dyDefault, dyFour, dyTwo };
#pragma option pop

typedef void __fastcall (__closure *TOnAcceptDate)(System::TObject* Sender, System::TDateTime &aDate, bool &CanAccept);

class DELPHICLASS TsCustomDateEdit;
class PASCALIMPLEMENTATION TsCustomDateEdit : public Scustomcomboedit::TsCustomComboEdit
{
	typedef Scustomcomboedit::TsCustomComboEdit inherited;
	
private:
	System::AnsiString *FTitle;
	TOnAcceptDate FOnAcceptDate;
	bool FDefaultToday;
	bool FHooked;
	bool FCheckOnExit;
	System::WideChar FBlanksChar;
	Classes::TStrings* FCalendarHints;
	Comctrls::TCalDayOfWeek FStartOfWeek;
	Sconst::TDaysOfWeek FWeekends;
	Graphics::TColor FWeekendColor;
	TYearDigits FYearDigits;
	SmallString<10>  FDateFormat;
	bool FFormatting;
	System::TDateTime FMinDate;
	System::TDateTime FMaxDate;
	Smonthcalendar::TGetCellParams FOnGetCellParams;
	bool FShowCurrentDate;
	Smonthcalendar::TGetCellParams FOnDrawDay;
	bool FShowWeeks;
	bool FShowTodayBtn;
	System::TDateTime __fastcall GetDate(void);
	void __fastcall SetDate(System::TDateTime Value);
	void __fastcall SetYearDigits(TYearDigits Value);
	System::UnicodeString __fastcall GetDialogTitle(void);
	void __fastcall SetDialogTitle(const System::UnicodeString Value);
	bool __fastcall IsCustomTitle(void);
	void __fastcall SetCalendarHints(Classes::TStrings* Value);
	void __fastcall CalendarHintsChanged(System::TObject* Sender);
	void __fastcall SetWeekendColor(Graphics::TColor Value);
	void __fastcall SetWeekends(Sconst::TDaysOfWeek Value);
	void __fastcall SetStartOfWeek(Comctrls::TCalDayOfWeek Value);
	void __fastcall SetBlanksChar(System::WideChar Value);
	bool __fastcall TextStored(void);
	bool __fastcall FourDigitYear(void);
	bool __fastcall FormatSettingsChange(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	void __fastcall SetMinDate(const System::TDateTime Value);
	void __fastcall SetMaxDate(const System::TDateTime Value);
	void __fastcall SetShowCurrentDate(const bool Value);
	
protected:
	DYNAMIC void __fastcall Change(void);
	DYNAMIC void __fastcall KeyDown(System::Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(System::WideChar &Key);
	virtual void __fastcall CreateWindowHandle(const Controls::TCreateParams &Params);
	virtual void __fastcall DestroyWindowHandle(void);
	System::UnicodeString __fastcall GetDateFormat(void);
	bool __fastcall DateIsStored(void);
	virtual void __fastcall ApplyDate(System::TDateTime Value);
	void __fastcall UpdateFormat(void);
	void __fastcall UpdatePopup(void);
	virtual void __fastcall PopupWindowShow(void);
	__property bool Formatting = {read=FFormatting, nodefault};
	__property EditMask = {stored=false};
	__property System::UnicodeString DialogTitle = {read=GetDialogTitle, write=SetDialogTitle, stored=IsCustomTitle};
	__property System::WideChar BlanksChar = {read=FBlanksChar, write=SetBlanksChar, default=32};
	__property Classes::TStrings* CalendarHints = {read=FCalendarHints, write=SetCalendarHints};
	__property bool CheckOnExit = {read=FCheckOnExit, write=FCheckOnExit, default=0};
	__property bool DefaultToday = {read=FDefaultToday, write=FDefaultToday, default=0};
	__property MaxLength = {stored=false, default=0};
	__property Comctrls::TCalDayOfWeek StartOfWeek = {read=FStartOfWeek, write=SetStartOfWeek, default=7};
	__property Sconst::TDaysOfWeek Weekends = {read=FWeekends, write=SetWeekends, default=64};
	__property Graphics::TColor WeekendColor = {read=FWeekendColor, write=SetWeekendColor, default=255};
	__property TYearDigits YearDigits = {read=FYearDigits, write=SetYearDigits, default=1};
	__property TOnAcceptDate OnAcceptDate = {read=FOnAcceptDate, write=FOnAcceptDate};
	
public:
	virtual void __fastcall Loaded(void);
	__fastcall virtual TsCustomDateEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TsCustomDateEdit(void);
	bool __fastcall CheckValidDate(void);
	System::UnicodeString __fastcall GetDateMask(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall UpdateMask(void);
	__property System::TDateTime Date = {read=GetDate, write=SetDate};
	__property Text = {stored=DateIsStored};
	
__published:
	__property System::TDateTime MinDate = {read=FMinDate, write=SetMinDate};
	__property System::TDateTime MaxDate = {read=FMaxDate, write=SetMaxDate};
	__property bool ShowCurrentDate = {read=FShowCurrentDate, write=SetShowCurrentDate, default=1};
	__property bool ShowWeeks = {read=FShowWeeks, write=FShowWeeks, default=0};
	__property bool ShowTodayBtn = {read=FShowTodayBtn, write=FShowTodayBtn, default=1};
	__property Smonthcalendar::TGetCellParams OnDrawDay = {read=FOnDrawDay, write=FOnDrawDay};
	__property Smonthcalendar::TGetCellParams OnGetCellParams = {read=FOnGetCellParams, write=FOnGetCellParams};
public:
	/* TWinControl.CreateParented */ inline __fastcall TsCustomDateEdit(HWND ParentWindow) : Scustomcomboedit::TsCustomComboEdit(ParentWindow) { }
	
};


class DELPHICLASS TsDateEdit;
class PASCALIMPLEMENTATION TsDateEdit : public TsCustomDateEdit
{
	typedef TsCustomDateEdit inherited;
	
public:
	__fastcall virtual TsDateEdit(Classes::TComponent* AOwner);
	__property EditMask;
	
__published:
	__property BlanksChar = {default=32};
	__property CalendarHints;
	__property CheckOnExit = {default=0};
	__property ClickKey = {default=32808};
	__property Date;
	__property DefaultToday = {default=0};
	__property DialogTitle;
	__property MaxDate;
	__property MinDate;
	__property PopupAlign = {default=0};
	__property PopupWidth = {default=197};
	__property StartOfWeek = {default=7};
	__property Text;
	__property Weekends = {default=64};
	__property WeekendColor = {default=255};
	__property YearDigits = {default=1};
	__property OnAcceptDate;
	__property OnButtonClick;
	__property OnChange;
	__property OnContextPopup;
public:
	/* TsCustomDateEdit.Destroy */ inline __fastcall virtual ~TsDateEdit(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TsDateEdit(HWND ParentWindow) : TsCustomDateEdit(ParentWindow) { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall DateFormatChanged(void);
extern PACKAGE System::TDateTime __fastcall StrToDateFmt(const System::UnicodeString DateFormat, const System::UnicodeString S);
extern PACKAGE System::TDateTime __fastcall StrToDateFmtDef(const System::UnicodeString DateFormat, const System::UnicodeString S, System::TDateTime Default);

}	/* namespace Stooledit */
using namespace Stooledit;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// StooleditHPP
