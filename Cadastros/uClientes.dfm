inherited frmCliente: TfrmCliente
  HelpType = htKeyword
  Caption = 'Cadastro de clientes'
  ClientHeight = 386
  ClientWidth = 758
  UseDockManager = True
  FormStyle = fsMDIForm
  Position = poScreenCenter
  Visible = True
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
      ExplicitWidth = 758
      ExplicitHeight = 345
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 750
        ExplicitHeight = 317
        inherited dbgPadrao: TDBGrid
          Width = 750
          Height = 199
          OnCellClick = dbgPadraoCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CLI_COD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_NUMERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_TELEFONE1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_TELEFONE2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_ID_VEICULO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_LOGRADOURO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_BAIRRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_CEP'
              Visible = True
            end>
        end
        inherited Panel1: TPanel
          Width = 750
          ExplicitWidth = 750
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 256
          Width = 750
          Height = 61
          Align = alBottom
          DataSource = DsVeiculos
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 750
        ExplicitHeight = 317
        object Label1: TLabel
          Left = 383
          Top = 140
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
        object Label4: TLabel
          Left = 14
          Top = 222
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
        end
        object lbeCodigo: TLabeledEdit
          Tag = 1
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
          Left = 383
          Top = 114
          Width = 75
          Height = 21
          EditLabel.Width = 12
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186
          TabOrder = 3
        end
        object lblEndereco: TLabeledEdit
          Left = 14
          Top = 114
          Width = 363
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          TabOrder = 2
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
          MaxLength = 2
          TabOrder = 7
        end
        object lblEmail: TLabeledEdit
          Left = 383
          Top = 196
          Width = 312
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail'
          TabOrder = 10
        end
        object edtCEP: TMaskEdit
          Left = 383
          Top = 155
          Width = 203
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 6
          Text = '  .   -   '
        end
        object edtTelefone: TMaskEdit
          Left = 14
          Top = 196
          Width = 163
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 8
          Text = '(  )     -    '
        end
        object edtTelefoneCel: TMaskEdit
          Left = 183
          Top = 196
          Width = 194
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 9
          Text = '(  )     -    '
        end
        object edtDataNascimento: TDateEdit
          Left = 14
          Top = 241
          Width = 121
          Height = 21
          ClickKey = 114
          NumGlyphs = 2
          TabOrder = 11
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT  TOP 10 CL.CLI_COD ,'
      '         CL.CLI_NOME,'
      '         CL.CLI_TELEFONE1,'
      '         CL.CLI_TELEFONE2,'
      '         CL.CLI_ID_VEICULO,'
      '         CL.CLI_LOGRADOURO,'
      '         CL.CLI_BAIRRO,'
      '         CL.CLI_CEP,'
      '         CL.CLI_UF,'
      '         CL.CLI_EMAIL,'
      '         CL.CLI_DATANASCIMENTO,'
      '         CL.CLI_CODVEICULO,'
      '         CL.CLI_NUMERO,'
      '         CL.CLI_CIDADE'
      '     FROM CLIENTES CL'
      '')
    Left = 648
    Top = 152
    object zqPrincipalCLI_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_COD'
      ReadOnly = True
    end
    object zqPrincipalCLI_NOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLI_NOME'
      Size = 50
    end
    object zqPrincipalCLI_TELEFONE1: TWideStringField
      DisplayLabel = 'Telefone Fixo'
      FieldName = 'CLI_TELEFONE1'
      Size = 15
    end
    object zqPrincipalCLI_TELEFONE2: TWideStringField
      DisplayLabel = 'Telefone Cel.'
      FieldName = 'CLI_TELEFONE2'
      Size = 15
    end
    object zqPrincipalCLI_ID_VEICULO: TIntegerField
      DisplayLabel = 'C'#243'digo do Veiculo'
      FieldName = 'CLI_ID_VEICULO'
    end
    object zqPrincipalCLI_LOGRADOURO: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_LOGRADOURO'
      Size = 50
    end
    object zqPrincipalCLI_BAIRRO: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
    end
    object zqPrincipalCLI_CEP: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'CLI_CEP'
      Size = 9
    end
    object zqPrincipalCLI_UF: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'CLI_UF'
      Size = 2
    end
    object zqPrincipalCLI_EMAIL: TWideStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'CLI_EMAIL'
      Size = 50
    end
    object zqPrincipalCLI_CODVEICULO: TIntegerField
      DisplayLabel = 'C'#243'digo do Veidulo'
      FieldName = 'CLI_CODVEICULO'
    end
    object zqPrincipalCLI_NUMERO: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'CLI_NUMERO'
    end
    object zqPrincipalCLI_CIDADE: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
    end
    object zqPrincipalCLI_DATANASCIMENTO: TDateTimeField
      FieldName = 'CLI_DATANASCIMENTO'
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 696
    Top = 145
  end
  object RxVeiculos: TRxMemoryData
    Filtered = True
    FieldDefs = <>
    OnFilterRecord = RxVeiculosFilterRecord
    Left = 28
    Top = 288
    object RxVeiculosveic_cod: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO VE'#205'CULO'
      FieldName = 'veic_cod'
    end
    object RxVeiculosVeic_marca_modelo: TStringField
      DisplayLabel = 'MARCA/MODELO DO VE'#205'CULO'
      FieldName = 'Veic_marca_modelo'
      Size = 50
    end
    object RxVeiculosVeic_cli_cod: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO CLIENTE'
      FieldName = 'Veic_cli_cod'
    end
  end
  object DsVeiculos: TDataSource
    DataSet = RxVeiculos
    Left = 92
    Top = 296
  end
  object zqAux: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Params = <>
    Left = 700
    Top = 208
  end
end
