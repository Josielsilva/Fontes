inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de clientes'
  ClientHeight = 386
  ClientWidth = 758
  UseDockManager = True
  Position = poScreenCenter
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
          object BitBtn1: TBitBtn
            Left = 474
            Top = 23
            Width = 129
            Height = 25
            Caption = 'CADASTRAR VE'#205'CULO'
            TabOrder = 2
            OnClick = BitBtn1Click
          end
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
          Left = 558
          Top = 140
          Width = 65
          Height = 13
          Caption = 'Telefone Fixo'
        end
        object Label3: TLabel
          Left = 14
          Top = 180
          Width = 64
          Height = 13
          Caption = 'Telefone Cel.'
        end
        object Label4: TLabel
          Left = 554
          Top = 180
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
        end
        object sbBuscaCep: TSpeedButton
          Left = 678
          Top = 72
          Width = 17
          Height = 21
          Hint = 'Buscar cep'
          Glyph.Data = {
            5E060000424D5E06000000000000360400002800000017000000170000000100
            08000000000028020000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF08A5FFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFAE1DEEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFF62E54F6FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF652FA4FFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFAD371DEEFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFF61D375CF6FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFF5C372FA4FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF72F3726EE
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF1D37376508FFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFF085C0A373737A5FFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFAE2F2F37373F26EEFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF0826377F7F7F
            3F65FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF1D373F3F2F6FBFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFA637373F375CFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFF0826373FFB26F7FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF1D373FFB
            3F5CF6FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFAE373FFBFB2FA4FFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFF08273FFBFBFB1507FFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFF1E3FFBFBFB775CFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFAE272F
            2F2F2FAFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00}
          OnClick = sbBuscaCepClick
        end
        object Label5: TLabel
          Left = 568
          Top = 56
          Width = 104
          Height = 13
          Caption = 'Busca cep autom'#225'tico'
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
          Width = 548
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
          Left = 503
          Top = 155
          Width = 42
          Height = 21
          EditLabel.Width = 13
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          MaxLength = 2
          TabOrder = 7
        end
        object lblEmail: TLabeledEdit
          Left = 214
          Top = 197
          Width = 331
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail'
          TabOrder = 10
        end
        object edtCEP: TMaskEdit
          Left = 383
          Top = 155
          Width = 114
          Height = 21
          EditMask = '99999-999;1;_'
          MaxLength = 9
          TabOrder = 6
          Text = '     -   '
        end
        object edtTelefone: TMaskEdit
          Left = 551
          Top = 155
          Width = 144
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 8
          Text = '(  )     -    '
        end
        object edtTelefoneCel: TMaskEdit
          Left = 14
          Top = 197
          Width = 190
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 9
          Text = '(  )      -    '
        end
        object edtDataNascimento: TDateEdit
          Left = 551
          Top = 197
          Width = 144
          Height = 21
          ClickKey = 114
          NumGlyphs = 2
          TabOrder = 11
        end
        object MaskEdit1: TMaskEdit
          Left = 568
          Top = 72
          Width = 107
          Height = 21
          EditMask = '99999-999;1;_'
          MaxLength = 9
          TabOrder = 12
          Text = '     -   '
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT   CL.CLI_COD ,'
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
    Left = 176
    Top = 48
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
    Left = 224
    Top = 49
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
    Left = 300
    Top = 48
  end
  object zqAux: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Params = <>
    Left = 340
    Top = 48
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    BaseURL = 'http://viacep.com.br'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 176
    Top = 288
  end
  object RESTRequest1: TRESTRequest
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'cep'
        Options = [poAutoCreated]
      end
      item
        Kind = pkURLSEGMENT
        name = 'formato'
        Options = [poAutoCreated]
      end>
    Resource = 'ws/{cep}/{formato}'
    Response = RESTResponse1
    Timeout = 0
    SynchronizedEvents = False
    Left = 256
    Top = 280
  end
  object RESTResponse1: TRESTResponse
    Left = 360
    Top = 279
  end
end
