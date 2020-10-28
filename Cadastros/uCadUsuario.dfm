object fmCadastroUsuario: TfmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de usuarios'
  ClientHeight = 203
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 260
    Height = 203
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -4
    ExplicitWidth = 325
    ExplicitHeight = 186
    object Label1: TLabel
      Left = 25
      Top = 71
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 27
      Top = 124
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 36
      Top = 0
      Width = 168
      Height = 23
      Caption = 'Cadastro de Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 25
      Top = 97
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edtLogin: TEdit
      Left = 60
      Top = 68
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtnome: TEdit
      Left = 60
      Top = 121
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 60
      Top = 175
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object cbTipo: TComboBox
      Left = 59
      Top = 148
      Width = 145
      Height = 21
      ItemIndex = 2
      TabOrder = 3
      Text = 'USUARIO'
      Items.Strings = (
        'ADM'
        'SUPERVISOR'
        'USUARIO'
        'DIRETOR'
        'GERENTE'
        'VENDEDOR')
    end
  end
  object edtsenha: TEdit
    Left = 60
    Top = 95
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object zqAcesso: TZQuery
    Params = <>
    Left = 200
    Top = 56
  end
end
