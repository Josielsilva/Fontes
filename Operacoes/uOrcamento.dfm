inherited frmOrcamento: TfrmOrcamento
  Caption = 'Or'#231'amento'
  ClientHeight = 526
  ClientWidth = 744
  Position = poScreenCenter
  ExplicitTop = -103
  ExplicitWidth = 760
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 485
    Width = 744
    TabOrder = 1
    ExplicitTop = 485
    ExplicitWidth = 744
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnFechar: TBitBtn
      Left = 640
      ExplicitLeft = 640
    end
  end
  inherited Panel3: TPanel
    Width = 744
    Height = 485
    TabOrder = 0
    ExplicitWidth = 744
    ExplicitHeight = 485
    inherited pgcPadrao: TPageControl
      Width = 744
      Height = 485
      ActivePage = TabSheet2
      ExplicitWidth = 744
      ExplicitHeight = 485
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 736
        ExplicitHeight = 457
        inherited dbgPadrao: TDBGrid
          Width = 736
          Height = 400
        end
        inherited Panel1: TPanel
          Width = 736
          ExplicitWidth = 736
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 736
        ExplicitHeight = 457
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 736
          Height = 57
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 458
            Top = 8
            Width = 94
            Height = 13
            Caption = 'Data do Or'#231'amento'
          end
          object Label9: TLabel
            Left = 601
            Top = 8
            Width = 126
            Height = 13
            Caption = 'Data previs'#227'o  de entrega'
          end
          object Label10: TLabel
            Left = 268
            Top = 3
            Width = 33
            Height = 13
            Caption = 'Veiculo'
          end
          object spbCliente: TSpeedButton
            Left = 239
            Top = 21
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9B3B0A9B3B0A9B3B0A993B0DFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AFA
              EAC2E9B171953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9B3B0AFAE9C0EAB474953B11FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AF9
              E7BFEBB677953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFC3B6B09B3B0AA54D1E9B3B0A983B0EC3B8B4FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA86441C58355FA
              DEB1F7D6A5B3724AAC6C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFB89787A54E20F6D4A8FBE2B7F6D19DDBAB799A461FBDA79BFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5BEBBA0491DDDA876F9E3C2F9
              DBADF4CB96E9B97FB17047A3542CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFAE7559B86F40F6D6ACFBE9CDF7D5A4F2C68FEBB879CA905A984D28B68E
              7AFF00FFFF00FFFF00FFFF00FFFF00FFBDA79B9F4516EBBC84FAE9D1FBE8CBF6
              D09CEFC187E9B272D49758A7653C9B4419C5BEBBFF00FFFF00FFFF00FFC7C4C3
              A4532BCD8E5BF5D5AAFBF5E9FAE2BEF3CB95EDBC80E7AD6ADF9C55B8743D924D
              2BAE7254FF00FFFF00FFFF00FFB3856FAC5E30EFC187FAEEDEFCF9F5F7D6A9F1
              C58DEBB778E4A862DF994EC179399B582E93411BC0ADA4FF00FFFF00FF9D3E0F
              9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9A3B0B983B
              0E973B0FA65B36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = spbClienteClick
          end
          object edtCodigoOrcamento: TLabeledEdit
            Tag = 1
            Left = 5
            Top = 22
            Width = 119
            Height = 21
            EditLabel.Width = 108
            EditLabel.Height = 13
            EditLabel.Caption = 'N'#250'mero do Or'#231'amento'
            TabOrder = 0
          end
          object lkpCliente: TLabeledEdit
            Left = 128
            Top = 22
            Width = 105
            Height = 21
            EditLabel.Width = 84
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo do Cliente'
            TabOrder = 1
            OnExit = lkpClienteExit
          end
          object edtDataPrevisao: TDateEdit
            Left = 599
            Top = 22
            Width = 127
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
            OnExit = edtDataPrevisaoExit
          end
          object edtDataOrcamento: TDateEdit
            Left = 459
            Top = 22
            Width = 134
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
          end
          object lkpVeiculo: TDBLookupComboBox
            Left = 268
            Top = 22
            Width = 184
            Height = 21
            KeyField = 'VEIC_COD'
            ListField = 'VEIC_MARCA_MODELO'
            ListSource = DtmOrcamentos.dsVeiculo
            TabOrder = 4
            OnExit = lkpVeiculoExit
          end
        end
        object dbgOrcamento: TDBGrid
          Left = 0
          Top = 57
          Width = 736
          Height = 214
          Align = alClient
          DataSource = DtmOrcamentos.dtsItensOrcamento
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgOrcamentoDblClick
          OnKeyDown = dbgOrcamentoKeyDown
        end
        object Panel5: TPanel
          Left = 0
          Top = 271
          Width = 736
          Height = 186
          Align = alBottom
          TabOrder = 2
          object Label11: TLabel
            Left = 178
            Top = 4
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label5: TLabel
            Left = 260
            Top = 4
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object Label4: TLabel
            Left = 344
            Top = 4
            Width = 45
            Height = 13
            Caption = 'Desconto'
          end
          object Label6: TLabel
            Left = 418
            Top = 4
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object Label7: TLabel
            Left = 531
            Top = 26
            Width = 84
            Height = 13
            Caption = 'Total da Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 2
            Top = 48
            Width = 81
            Height = 13
            Caption = 'Horas do Servi'#231'o'
          end
          object Label13: TLabel
            Left = 94
            Top = 48
            Width = 47
            Height = 13
            Caption = 'Opera'#231#227'o'
          end
          object Label14: TLabel
            Left = 219
            Top = 48
            Width = 61
            Height = 13
            Caption = 'Tipo de pe'#231'a'
          end
          object Label15: TLabel
            Left = 344
            Top = 48
            Width = 65
            Height = 13
            Caption = 'Horas Pintura'
          end
          object Label8: TLabel
            Left = 2
            Top = 144
            Width = 102
            Height = 13
            Caption = 'Forma de pagamento'
          end
          object Label16: TLabel
            Left = 127
            Top = 144
            Width = 31
            Height = 13
            Caption = 'Status'
          end
          object SpbProduto: TSpeedButton
            Left = 152
            Top = 20
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9B3B0A9B3B0A9B3B0A993B0DFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AFA
              EAC2E9B171953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF9B3B0AFAE9C0EAB474953B11FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AF9
              E7BFEBB677953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFC3B6B09B3B0AA54D1E9B3B0A983B0EC3B8B4FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA86441C58355FA
              DEB1F7D6A5B3724AAC6C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFB89787A54E20F6D4A8FBE2B7F6D19DDBAB799A461FBDA79BFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5BEBBA0491DDDA876F9E3C2F9
              DBADF4CB96E9B97FB17047A3542CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFAE7559B86F40F6D6ACFBE9CDF7D5A4F2C68FEBB879CA905A984D28B68E
              7AFF00FFFF00FFFF00FFFF00FFFF00FFBDA79B9F4516EBBC84FAE9D1FBE8CBF6
              D09CEFC187E9B272D49758A7653C9B4419C5BEBBFF00FFFF00FFFF00FFC7C4C3
              A4532BCD8E5BF5D5AAFBF5E9FAE2BEF3CB95EDBC80E7AD6ADF9C55B8743D924D
              2BAE7254FF00FFFF00FFFF00FFB3856FAC5E30EFC187FAEEDEFCF9F5F7D6A9F1
              C58DEBB778E4A862DF994EC179399B582E93411BC0ADA4FF00FFFF00FF9D3E0F
              9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9A3B0B983B
              0E973B0FA65B36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = SpbProdutoClick
          end
          object lkpProduto: TLabeledEdit
            Left = 0
            Top = 21
            Width = 150
            Height = 21
            EditLabel.Width = 89
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo do produto'
            TabOrder = 0
            OnExit = lkpProdutoExit
          end
          object edtValorUnitario: TCurrencyEdit
            Left = 181
            Top = 21
            Width = 76
            Height = 21
            TabOrder = 1
          end
          object edtQtde: TCurrencyEdit
            Left = 262
            Top = 23
            Width = 76
            Height = 21
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 2
          end
          object edtDesconto: TCurrencyEdit
            Left = 344
            Top = 23
            Width = 76
            Height = 21
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 3
            OnExit = edtDescontoExit
          end
          object edtTotalProduto: TCurrencyEdit
            Left = 422
            Top = 23
            Width = 90
            Height = 21
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 4
          end
          object btnAdicionarItem: TBitBtn
            Left = 554
            Top = 63
            Width = 87
            Height = 25
            Caption = 'ADICIONAR'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FF0A6B0A0A6B0A0A6B0A0A6B0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFB25D130A6B0A42D37331B85A0A6B0AA8
              4E0FA54A0EA4480DA1440DA0420C9F3F0C9D3E0BFF00FFFF00FFFF00FFFF00FF
              B561140A6B0A78F3A440D1710A6B0AFBF0DEFBEFDAFBEDD5FBEBD1FBE9CDFBE7
              C89E400BFF00FFFF00FF0A6B0A0A6B0A0A6B0A0A6B0A78F3A444D5740A6B0A0A
              6B0A0A6B0A0A6B0AFCEDD6FBEBD1FBEACEA1430CFF00FFFF00FF0A6B0A78F3A4
              53E4844FE1804CDD7C48D97845D67541D27231B85A0A6B0AFBEFDBFCEDD6FBEB
              D1A3470DFF00FFFF00FF0A6B0A78F3A478F3A478F3A478F3A44DDE7D78F3A478
              F3A442D3730A6B0AFCF1E0FBEFDBFBEDD7A64B0EFF00FFFF00FF0A6B0A0A6B0A
              0A6B0A0A6B0A78F3A450E2810A6B0A0A6B0A0A6B0A0A6B0AFCF4E4FBF1E1FCEF
              DCA94F0FFF00FFFF00FFFF00FFFF00FFC375190A6B0A78F3A454E5850A6B0AFC
              F9F5FCF7F1FCF7EEFCF5E9FBF3E4FCF2E2AC5110FF00FFFF00FFFF00FFFF00FF
              C579190A6B0A78F3A478F3A40A6B0AFCFAF7FCF9F5FCF7F2FCF7EEFBF6E9FBF3
              E5AD5611FF00FFFF00FFFF00FFFF00FFC77C1A0A6B0A0A6B0A0A6B0A0A6B0AFC
              FBFBFCFAF8FCF9F5FBF8F2FCF7EEFBF6EAB05A12FF00FFFF00FFFF00FFFF00FF
              C97F1CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFCFBF8FCF9F6FCF8F2FCF7
              EFB35E13FF00FFFF00FFFF00FFFF00FFCC821CFCFCFCFCFCFCFCFCFCFCFCFCFC
              FCFCFCFCFCFCFCFAFCFBF9FCFAF6FCF8F3B66214FF00FFFF00FFFF00FFFF00FF
              CE851DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFCFBF9FCFA
              F7B96615FF00FFFF00FFFF00FFFF00FFCF861DFCFCFCFCFCFCFCFCFCFCFCFCFC
              FCFCFCFCFCFCFCFCFCFCFCFCFCFBFCFBF8BC6A16FF00FFFF00FFFF00FFFF00FF
              CF871DCF871DCE861DCC831CCC821CCA801BC87D1BC67A1AC47719C37419C172
              17BF6F17FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 9
            OnClick = btnAdicionarItemClick
          end
          object btnApagarItem: TBitBtn
            Left = 644
            Top = 63
            Width = 83
            Height = 25
            Caption = 'APAGAR'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
              FF00FFBDA79BB17B5BA95C2FA44B199B3B0A9B3B0A9D400FA8592DB17B5EBEA8
              9EFF00FFFF00FFFF00FFFF00FFFF00FFAB6945A44A12BF6E21D89D5AE6BF8BEE
              CC97EFCB91EDC486E1AE71C6844AA65020AF7556FF00FFFF00FFFF00FFFF00FF
              A14818E9BA7CF6DCBBF7E4CCF7ECDBF7E6CBF8E0BAF9DAAAF9D9A9F9D7A8F0C8
              95A44E22FF00FFFF00FFFF00FFFF00FFA3491AF4D1A6F5DAB6F6E3C7F7E9D4F7
              E4C6F7DEB5F8D9A7F8D8A7F9D6A7F9D4A5A34818FF00FFFF00FFFF00FFC3B8B2
              AE5E2DF3D0A1F4D8B1F5E1C2F6E6CFF7E2C0F7DCB0F7D7A5F8D7A5F8D6A6F9D4
              A5B36132C3BBB6FF00FFFF00FFBEA89EBB723EF2CE9DF3D6AEF4DEBFF5E4C8F6
              DFBBF7D9ACF7D6A3F7D5A3F8D5A4F8D4A4C27B4DBEAAA0FF00FFFF00FFB89787
              C7824BF1CC99F2D4AAF3DCBAF4E1C2F5DCB6F6D8A9F7D4A0F7D4A2F7D4A3F8D4
              A4CF9163B99A89FF00FFFF00FFB48973CF9054F0CA96F2D2A6F2DAB6F3DEBDF4
              DAB1F5D6A6F6D39EF7D3A0F7D3A1F7D2A2DDA877B58A73FF00FFFF00FFAF7658
              D89C5DEFC891F1D0A2F2D8B1F3DBB8F4D8ADF5D4A2F6D29CF6D29EF7D2A0F7D2
              A2E6B485B1795BFF00FFFF00FFAA643CE0A768EFC68EF0CE9EF1D6AEF2D9B3F3
              D6A9F4D29FF5D19AF6D19DF7D29FF7D2A1EDC091AC6844FF00FFFF00FFA55426
              E5B172F0D0A2F2D8B3F5E3C7F5E4CBF6E5CBF6E5CBF7E6CDF7E7D0F7E1C0F8DD
              B9F3CA9AAA5A2FFF00FFFF00FFBE805FEBCB9CE4B162E1A64ADD9A34DFA141E1
              A84FE3AE5CE5B569E7BB76ECCA95F1D8B2F4E3CDC79073FF00FFFF00FF9E4211
              B45D0FC57315CF8322D79431DFA242E1A84FE4AE5DE5B56AE1B16FDAA76CCF97
              62B97344A24B1FFF00FFFF00FFC3B8B2B2836AAB6238A653239F44139B3B0A9B
              3B0A9B3B0A9B3B0AA14415A7562AAE6C48B48A75C5BEBBFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 10
            TabStop = False
            OnClick = btnApagarItemClick
          end
          object EdtValorTotal: TCurrencyEdit
            Left = 620
            Top = 21
            Width = 105
            Height = 21
            ParentColor = True
            ReadOnly = True
            TabOrder = 12
          end
          object mmOBS: TMemo
            Left = 0
            Top = 94
            Width = 725
            Height = 48
            Lines.Strings = (
              '')
            TabOrder = 11
          end
          object edtHorasServico: TCurrencyEdit
            Left = 2
            Top = 67
            Width = 76
            Height = 21
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 5
          end
          object cbOperacao: TComboBox
            Left = 94
            Top = 67
            Width = 119
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 6
            Text = 'PINTAR'
            Items.Strings = (
              'PINTAR'
              'TROCAR'
              'TROCAR/PINTAR'
              'REC/PINTAR'
              'RECUPERAR'
              'MARTELINHO'
              ''
              '')
          end
          object cbTipoPeca: TComboBox
            Left = 219
            Top = 67
            Width = 119
            Height = 21
            TabOrder = 7
            Text = 'COMPAT'#205'VEL'
            Items.Strings = (
              'ORIGINAL'
              'COMPATIVEL'
              '')
          end
          object edtHoraPintura: TCurrencyEdit
            Left = 344
            Top = 67
            Width = 76
            Height = 21
            DisplayFormat = ',0.00;-,0.00'
            TabOrder = 8
          end
          object cbFormaPagto: TComboBox
            Left = 2
            Top = 160
            Width = 119
            Height = 21
            ItemIndex = 0
            TabOrder = 13
            Text = 'DINHEIRO'
            Items.Strings = (
              'DINHEIRO'
              'CART'#194'O DEB'
              'CARTAO CRED'
              'CHEQUE'
              '')
          end
          object cbStatus: TComboBox
            Left = 127
            Top = 160
            Width = 119
            Height = 21
            ItemIndex = 0
            TabOrder = 14
            Text = 'ABERTO'
            Items.Strings = (
              'ABERTO'
              'FECHADO'
              '')
          end
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT '
      '  ORC.Orc_OrcId,'
      '  ORC.Orc_Status,'
      '  orc.Orc_CodCli,'
      '  cli.Cli_Nome,'
      '  orc.Orc_DataOrcamento,'
      '  orc.Orc_TotalOrcamento,'
      '  Cli_Email,'
      '  cli.Cli_Telefone1'
      ' '
      
        ' FROM ORCAMENTO ORC inner join  Clientes Cli on cli.Cli_Cod=orc.' +
        'Orc_CodCli')
    Left = 168
    Top = 200
    object zqPrincipalOrc_OrcId: TIntegerField
      DisplayLabel = 'C'#243'digo do Or'#231'amento'
      FieldName = 'Orc_OrcId'
      ReadOnly = True
    end
    object zqPrincipalOrc_CodCli: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'Orc_CodCli'
      Required = True
    end
    object zqPrincipalCli_Nome: TWideStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'Cli_Nome'
      Size = 50
    end
    object zqPrincipalOrc_TotalOrcamento: TFloatField
      DisplayLabel = 'Valor Total do Orcamento'
      FieldName = 'Orc_TotalOrcamento'
    end
    object zqPrincipalOrc_DataOrcamento: TDateTimeField
      FieldName = 'Orc_DataOrcamento'
    end
    object zqPrincipalCli_Email: TWideStringField
      FieldName = 'Cli_Email'
      Size = 50
    end
    object zqPrincipalCli_Telefone1: TWideStringField
      FieldName = 'Cli_Telefone1'
      Size = 15
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 208
    Top = 233
  end
end
