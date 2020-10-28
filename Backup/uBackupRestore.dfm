object frmBackupRestore: TfrmBackupRestore
  Left = 0
  Top = 0
  Caption = 'Backup & Restore'
  ClientHeight = 292
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 447
    object Label1: TLabel
      Left = 180
      Top = 5
      Width = 61
      Height = 23
      Caption = 'Backup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 59
      Width = 96
      Height = 13
      Caption = 'Caminho do Backup '
    end
    object Button1: TButton
      Left = 8
      Top = 28
      Width = 121
      Height = 25
      Caption = 'Efetuar Backup'
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtCaminho: TEdit
      Left = 6
      Top = 74
      Width = 425
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 436
    Height = 195
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 447
    ExplicitHeight = 104
    object Label3: TLabel
      Left = 10
      Top = 59
      Width = 98
      Height = 13
      Caption = 'Caminho do arquivo '
    end
    object Label4: TLabel
      Left = 152
      Top = 4
      Width = 130
      Height = 23
      Caption = 'Restore Backup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 8
      Top = 28
      Width = 121
      Height = 25
      Caption = 'Restaurar Backup'
      TabOrder = 0
      OnClick = Button2Click
    end
    object edtCaminhoRestore: TEdit
      Left = 8
      Top = 74
      Width = 425
      Height = 21
      TabOrder = 1
    end
    object mmRestore: TMemo
      Left = 10
      Top = 101
      Width = 421
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 2
    end
  end
  object qryBackupRestore: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Params = <>
    Left = 376
    Top = 25
  end
  object OpdCaminhoBanco: TOpenDialog
    Left = 304
    Top = 32
  end
end
