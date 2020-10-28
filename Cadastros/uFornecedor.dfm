inherited frmCadFornecedor: TfrmCadFornecedor
  Caption = 'Cadastro de Fornecedor'
  Position = poScreenCenter
  ExplicitWidth = 753
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited pgcPadrao: TPageControl
      ActivePage = TabSheet2
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 323
        inherited dbgPadrao: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'forn_Razaosocial'
              Width = 310
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Forn_Fantasia'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Forn_Cnpj'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Forn_Endereco'
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 323
        object Label3: TLabel
          Left = 191
          Top = 172
          Width = 64
          Height = 13
          Caption = 'Telefone Cel.'
        end
        object Label1: TLabel
          Left = 14
          Top = 172
          Width = 69
          Height = 13
          Caption = 'Telefone Fixo.'
        end
        object Label4: TLabel
          Left = 527
          Top = 132
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label2: TLabel
          Left = 149
          Top = 8
          Width = 25
          Height = 13
          Caption = 'CNPJ'
        end
        object Label5: TLabel
          Left = 14
          Top = 92
          Width = 105
          Height = 13
          Caption = 'Busca cep Autom'#225'tico'
        end
        object btnBuscar: TSpeedButton
          Left = 134
          Top = 105
          Width = 23
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
          OnClick = btnBuscarClick
        end
        object lblCodigo: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 107
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Do Fornecedor'
          TabOrder = 0
        end
        object lblRazao: TLabeledEdit
          Left = 14
          Top = 64
          Width = 363
          Height = 21
          EditLabel.Width = 60
          EditLabel.Height = 13
          EditLabel.Caption = 'Raz'#227'o Social'
          TabOrder = 3
        end
        object lblFantasia: TLabeledEdit
          Left = 391
          Top = 64
          Width = 306
          Height = 21
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome Fantasia'
          TabOrder = 4
        end
        object lblEndereco: TLabeledEdit
          Left = 168
          Top = 105
          Width = 438
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          TabOrder = 6
        end
        object lblNumero: TLabeledEdit
          Left = 622
          Top = 105
          Width = 75
          Height = 21
          EditLabel.Width = 12
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186
          TabOrder = 7
        end
        object lblBairro: TLabeledEdit
          Left = 14
          Top = 145
          Width = 251
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          TabOrder = 8
        end
        object lblCidade: TLabeledEdit
          Left = 280
          Top = 145
          Width = 233
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          TabOrder = 9
        end
        object lblUF: TLabeledEdit
          Left = 648
          Top = 145
          Width = 49
          Height = 21
          EditLabel.Width = 13
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          TabOrder = 11
        end
        object lblEmail: TLabeledEdit
          Left = 391
          Top = 189
          Width = 306
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail'
          TabOrder = 14
        end
        object EdtTelefoneCel: TMaskEdit
          Left = 200
          Top = 189
          Width = 173
          Height = 21
          EditMask = '(99) 99999-9999;1;_'
          MaxLength = 15
          TabOrder = 13
          Text = '(  )      -    '
        end
        object edtCEP: TMaskEdit
          Left = 527
          Top = 145
          Width = 102
          Height = 21
          EditMask = '99999-999;1;_'
          MaxLength = 9
          TabOrder = 10
          Text = '     -   '
        end
        object edtTelefone: TMaskEdit
          Left = 14
          Top = 189
          Width = 167
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 12
          Text = '(  )     -    '
        end
        object edtCnpj: TMaskEdit
          Left = 149
          Top = 24
          Width = 164
          Height = 21
          EditMask = '##.###.###/####-##'
          MaxLength = 18
          TabOrder = 1
          Text = '  .   .   /    -  '
        end
        object EdtBuscaCep: TMaskEdit
          Left = 14
          Top = 105
          Width = 119
          Height = 21
          EditMask = '99999-999;1;_'
          MaxLength = 9
          TabOrder = 5
          Text = '     -   '
        end
        object lblNome: TLabeledEdit
          Left = 319
          Top = 24
          Width = 378
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome '
          TabOrder = 2
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select '
      ' forn_Razaosocial,'
      ' Forn_Fantasia,'
      ' Forn_Cnpj,'
      ' Forn_Endereco,'
      ' Forn_Telefone1,'
      ' Forn_Cod'
      ' from'
      'fornecedor')
    object zqPrincipalforn_Razaosocial: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'forn_Razaosocial'
      Required = True
      Size = 100
    end
    object zqPrincipalForn_Fantasia: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Forn_Fantasia'
      Required = True
      Size = 50
    end
    object zqPrincipalForn_Cnpj: TWideStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'Forn_Cnpj'
      Required = True
    end
    object zqPrincipalForn_Endereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Forn_Endereco'
      Required = True
      Size = 50
    end
    object zqPrincipalForn_Telefone1: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Forn_Telefone1'
      Required = True
      Size = 15
    end
    object zqPrincipalforn_cod: TIntegerField
      FieldName = 'forn_cod'
    end
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
