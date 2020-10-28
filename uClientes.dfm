inherited frmCliente: TfrmCliente
  Caption = 'Cadastro de clientes'
  ClientHeight = 386
  ClientWidth = 758
  ExplicitWidth = 774
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 345
    Width = 758
    ExplicitTop = 345
    ExplicitWidth = 758
    DesignSize = (
      758
      41)
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 624
      ExplicitLeft = 624
    end
  end
  inherited Panel3: TPanel
    Width = 758
    Height = 345
    ExplicitWidth = 758
    ExplicitHeight = 345
    inherited pgcPadrao: TPageControl
      Width = 758
      Height = 345
      ActivePage = TabSheet2
      ExplicitWidth = 758
      ExplicitHeight = 345
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 750
        ExplicitHeight = 317
        inherited dbgPadrao: TDBGrid
          Width = 750
          Height = 260
          Columns = <
            item
              Expanded = False
              FieldName = 'Cod_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefone1_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefone2_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodVeiculi_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Logradouro_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bairro_cli'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cep_cli'
              Visible = True
            end>
        end
        inherited Panel1: TPanel
          Width = 750
          ExplicitWidth = 750
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 750
        ExplicitHeight = 317
        object Label1: TLabel
          Left = 393
          Top = 136
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label2: TLabel
          Left = 14
          Top = 179
          Width = 65
          Height = 13
          Caption = 'Telefone Fixo'
        end
        object Label3: TLabel
          Left = 183
          Top = 179
          Width = 64
          Height = 13
          Caption = 'Telefone Cel.'
        end
        object lbeCodigo: TLabeledEdit
          Left = 14
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 0
        end
        object lblNome: TLabeledEdit
          Left = 14
          Top = 72
          Width = 681
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          MaxLength = 50
          TabOrder = 1
        end
        object lblNumero: TLabeledEdit
          Left = 391
          Top = 114
          Width = 75
          Height = 21
          EditLabel.Width = 12
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186
          TabOrder = 2
        end
        object lblEndereco: TLabeledEdit
          Left = 14
          Top = 114
          Width = 363
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          TabOrder = 3
        end
        object lblBairro: TLabeledEdit
          Left = 486
          Top = 114
          Width = 209
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          TabOrder = 4
        end
        object lblCidade: TLabeledEdit
          Left = 14
          Top = 155
          Width = 363
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          TabOrder = 5
        end
        object lblUF: TLabeledEdit
          Left = 592
          Top = 155
          Width = 103
          Height = 21
          EditLabel.Width = 13
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          TabOrder = 6
        end
        object lblCodVeiculo: TLabeledEdit
          Left = 14
          Top = 238
          Width = 121
          Height = 21
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo do Veiculo'
          TabOrder = 7
        end
        object lblEmail: TLabeledEdit
          Left = 391
          Top = 196
          Width = 304
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail'
          TabOrder = 8
        end
        object edtCEP: TMaskEdit
          Left = 393
          Top = 155
          Width = 193
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 9
          Text = '  .   -   '
        end
        object edtTelefone: TMaskEdit
          Left = 14
          Top = 196
          Width = 163
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 10
          Text = '(  )     -    '
        end
        object mkeTelefoneCel: TMaskEdit
          Left = 183
          Top = 196
          Width = 194
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 11
          Text = '(  )     -    '
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT    CL.Cod_cli,'
      '          CL.Nome_cli,'
      #9'   CL.Numero_cli,'
      #9'   CL.Telefone1_cli,'
      #9'   CL.Telefone2_cli,'
      #9'   CL.CodVeiculi_cli,'
      #9'   CL.Logradouro_cli,'
      #9'   CL.Bairro_cli,'
      #9'   CL.Cep_cli FROM CLIENTE CL'
      '')
    Left = 576
    object zqPrincipalCod_cli: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cod_cli'
      ReadOnly = True
    end
    object zqPrincipalNome_cli: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nome_cli'
      Size = 50
    end
    object zqPrincipalNumero_cli: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'Numero_cli'
    end
    object zqPrincipalTelefone1_cli: TWideStringField
      DisplayLabel = 'Tel.'
      FieldName = 'Telefone1_cli'
      Size = 15
    end
    object zqPrincipalTelefone2_cli: TWideStringField
      DisplayLabel = 'Cel.'
      FieldName = 'Telefone2_cli'
      Size = 15
    end
    object zqPrincipalCodVeiculi_cli: TIntegerField
      DisplayLabel = 'C'#243'digo do Veiculo'
      FieldName = 'CodVeiculi_cli'
    end
    object zqPrincipalLogradouro_cli: TWideStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'Logradouro_cli'
      Size = 50
    end
    object zqPrincipalBairro_cli: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Bairro_cli'
    end
    object zqPrincipalCep_cli: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'Cep_cli'
      Size = 9
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 632
    Top = 33
  end
end
