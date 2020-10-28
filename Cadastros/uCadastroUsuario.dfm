inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usuario'
  ClientHeight = 284
  ClientWidth = 716
  Position = poScreenCenter
  ExplicitWidth = 732
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 243
    Width = 716
    ExplicitTop = 243
    ExplicitWidth = 716
    inherited btnNavegador: TDBNavigator
      Left = 396
      Hints.Strings = ()
      ExplicitLeft = 396
    end
    inherited btnFechar: TBitBtn
      Left = 626
      ExplicitLeft = 626
    end
  end
  inherited Panel3: TPanel
    Width = 716
    Height = 243
    ExplicitWidth = 716
    ExplicitHeight = 243
    inherited pgcPadrao: TPageControl
      Width = 716
      Height = 243
      ActivePage = TabSheet2
      ExplicitWidth = 716
      ExplicitHeight = 243
      inherited TabSheet1: TTabSheet
        ExplicitWidth = 472
        ExplicitHeight = 286
        inherited dbgPadrao: TDBGrid
          Width = 708
          Height = 158
        end
        inherited Panel1: TPanel
          Width = 708
          ExplicitWidth = 472
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitWidth = 708
        ExplicitHeight = 215
        object Label1: TLabel
          Left = 377
          Top = 88
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object edtCodigo: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          TabOrder = 0
        end
        object lblLogin: TLabeledEdit
          Left = 14
          Top = 64
          Width = 121
          Height = 21
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'Login'
          MaxLength = 10
          TabOrder = 1
        end
        object edtNome: TLabeledEdit
          Left = 14
          Top = 104
          Width = 211
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          MaxLength = 10
          TabOrder = 4
        end
        object edtSenha: TLabeledEdit
          Left = 142
          Top = 64
          Width = 107
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha'
          MaxLength = 6
          PasswordChar = '*'
          TabOrder = 2
        end
        object edtSenha2: TLabeledEdit
          Left = 255
          Top = 64
          Width = 116
          Height = 21
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'Confirme a senha'
          MaxLength = 6
          PasswordChar = '*'
          TabOrder = 3
          OnExit = edtSenha2Exit
        end
        object edtSetor: TLabeledEdit
          Left = 233
          Top = 104
          Width = 138
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'Setor'
          MaxLength = 10
          TabOrder = 5
        end
        object cbTipo: TComboBox
          Left = 377
          Top = 104
          Width = 80
          Height = 21
          ItemIndex = 0
          TabOrder = 6
          Text = 'ADM'
          Items.Strings = (
            'ADM'
            'SUPERVISOR'
            'GERENTE'
            'USUARIO')
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT'
      '  NOME,'
      '  ACESSO_ID,'
      '   LOGIN,   '
      '   '#39'**** '#39'SENHA,'
      '  TIPO,'
      ' SETOR'
      '  FROM ACESSO')
    Left = 128
    Top = 120
    object zqPrincipalNOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
    end
    object zqPrincipalACESSO_ID: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ACESSO_ID'
      ReadOnly = True
    end
    object zqPrincipalLOGIN: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Required = True
      Size = 10
    end
    object zqPrincipalSENHA: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
      Size = 5
    end
    object zqPrincipalTIPO: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 10
    end
    object zqPrincipalSETOR: TWideStringField
      DisplayLabel = 'Setor'
      FieldName = 'SETOR'
      Size = 10
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 216
    Top = 145
  end
end
