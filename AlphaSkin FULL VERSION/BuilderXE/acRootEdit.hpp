// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'acRootEdit.pas' rev: 22.00

#ifndef AcrooteditHPP
#define AcrooteditHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <acShellCtrls.hpp>	// Pascal unit
#include <DesignEditors.hpp>	// Pascal unit
#include <DesignIntf.hpp>	// Pascal unit
#include <VCLEditors.hpp>	// Pascal unit
#include <sSkinProvider.hpp>	// Pascal unit
#include <sDialogs.hpp>	// Pascal unit
#include <sEdit.hpp>	// Pascal unit
#include <sRadioButton.hpp>	// Pascal unit
#include <sComboBox.hpp>	// Pascal unit
#include <sGroupBox.hpp>	// Pascal unit
#include <sButton.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <sBitBtn.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <sMaskEdit.hpp>	// Pascal unit
#include <sCustomComboEdit.hpp>	// Pascal unit
#include <sTooledit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Acrootedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TacRootPathEditDlg;
class PASCALIMPLEMENTATION TacRootPathEditDlg : public Forms::TForm
{
	typedef Forms::TForm inherited;
	
__published:
	Sbitbtn::TsBitBtn* Button1;
	Sbitbtn::TsBitBtn* Button2;
	Sradiobutton::TsRadioButton* rbUseFolder;
	Sgroupbox::TsGroupBox* GroupBox1;
	Scombobox::TsComboBox* cbFolderType;
	Sgroupbox::TsGroupBox* GroupBox2;
	Sdialogs::TsOpenDialog* OpenDialog1;
	Sskinprovider::TsSkinProvider* sSkinProvider1;
	Sradiobutton::TsRadioButton* rbUsePath;
	Stooledit::TsDirectoryEdit* ePath;
	void __fastcall FormCreate(System::TObject* Sender);
	void __fastcall FormClose(System::TObject* Sender, Forms::TCloseAction &Action);
	void __fastcall Button2Click(System::TObject* Sender);
	void __fastcall rbUseFolderClick(System::TObject* Sender);
	void __fastcall rbUsePathClick(System::TObject* Sender);
	void __fastcall Button1Click(System::TObject* Sender);
	void __fastcall btnBrowseClick(System::TObject* Sender);
	
private:
	void __fastcall UpdateState(void);
public:
	/* TCustomForm.Create */ inline __fastcall virtual TacRootPathEditDlg(Classes::TComponent* AOwner) : Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TacRootPathEditDlg(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TacRootPathEditDlg(void) { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TacRootPathEditDlg(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	
};


class DELPHICLASS TacRootProperty;
class PASCALIMPLEMENTATION TacRootProperty : public Designeditors::TStringProperty
{
	typedef Designeditors::TStringProperty inherited;
	
public:
	virtual void __fastcall Edit(void);
	virtual Designintf::TPropertyAttributes __fastcall GetAttributes(void);
public:
	/* TPropertyEditor.Create */ inline __fastcall virtual TacRootProperty(const Designintf::_di_IDesigner ADesigner, int APropCount) : Designeditors::TStringProperty(ADesigner, APropCount) { }
	/* TPropertyEditor.Destroy */ inline __fastcall virtual ~TacRootProperty(void) { }
	
};


class DELPHICLASS TacRootEditor;
class PASCALIMPLEMENTATION TacRootEditor : public Designeditors::TComponentEditor
{
	typedef Designeditors::TComponentEditor inherited;
	
public:
	virtual void __fastcall ExecuteVerb(int Index);
	virtual System::UnicodeString __fastcall GetVerb(int Index);
	virtual int __fastcall GetVerbCount(void);
public:
	/* TComponentEditor.Create */ inline __fastcall virtual TacRootEditor(Classes::TComponent* AComponent, Designintf::_di_IDesigner ADesigner) : Designeditors::TComponentEditor(AComponent, ADesigner) { }
	
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TacRootEditor(void) { }
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Acrootedit */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Acrootedit;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// AcrooteditHPP
