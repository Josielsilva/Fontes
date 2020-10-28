object frmRelProVendas: TfrmRelProVendas
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Venda'
  ClientHeight = 749
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = -1
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dtsVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 195
      Width = 718
      Height = 27
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 7
        Width = 61
        Height = 19
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 44
        Width = 712
        Height = 7
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLDraw6: TRLDraw
        Left = 9
        Top = 22
        Width = 703
        Height = 4
        DrawKind = dkLine
        HoldStyle = hsHorizontally
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 513
      Width = 718
      Height = 36
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 183
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 614
        Top = 17
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 671
        Top = 17
        Width = 11
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 17
        Width = 8
        Height = 16
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 603
        Top = 17
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 5
        Width = 712
        Height = 8
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 222
      Width = 718
      Height = 243
      DataFields = 'vend_Id'
      Degrade.OppositeColor = clSilver
      FooterMeasuring = fmBeforeDetail
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 63
          Top = 4
          Width = 56
          Height = 16
          DataField = 'Vend_Id'
          DataSource = dtsVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 3
          Top = 4
          Width = 53
          Height = 16
          Caption = 'Venda: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText22: TRLDBText
          Left = 372
          Top = 4
          Width = 105
          Height = 16
          DataField = 'Vend_DataVenda'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel20: TRLLabel
          Left = 329
          Top = 4
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RegistrosDB: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 128
        object RLDBText2: TRLDBText
          Left = 64
          Top = 3
          Width = 60
          Height = 16
          DataField = 'Cli_Nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 3
          Top = 3
          Width = 57
          Height = 16
          Caption = 'Cliente: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 3
          Top = 25
          Width = 32
          Height = 16
          Caption = 'Tel: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 37
          Top = 25
          Width = 79
          Height = 16
          DataField = 'cli_Telefone1'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel17: TRLLabel
          Left = 3
          Top = 69
          Width = 47
          Height = 16
          Caption = 'E-Mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText13: TRLDBText
          Left = 48
          Top = 69
          Width = 57
          Height = 16
          DataField = 'cli_Email'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel21: TRLLabel
          Left = 3
          Top = 47
          Width = 72
          Height = 16
          Caption = 'Endere'#231'o: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText26: TRLDBText
          Left = 81
          Top = 47
          Width = 90
          Height = 16
          DataField = 'Cli_Logradouro'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText27: TRLDBText
          Left = 203
          Top = 47
          Width = 67
          Height = 16
          DataField = 'cli_numero'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel22: TRLLabel
          Left = 171
          Top = 47
          Width = 26
          Height = 16
          Caption = 'N'#186': '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 372
          Top = 3
          Width = 60
          Height = 16
          Caption = 'Veiculo: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 438
          Top = 3
          Width = 122
          Height = 16
          DataField = 'Veic_Marca_Modelo'
          DataSource = dsVeiculo
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 438
          Top = 25
          Width = 70
          Height = 16
          DataField = 'Veic_Placa'
          DataSource = dsVeiculo
          Text = ''
        end
        object RLLabel25: TRLLabel
          Left = 372
          Top = 25
          Width = 48
          Height = 16
          Caption = 'Placa: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel26: TRLLabel
          Left = 371
          Top = 47
          Width = 34
          Height = 16
          Caption = 'Cor: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText29: TRLDBText
          Left = 438
          Top = 47
          Width = 57
          Height = 16
          DataField = 'Veic_Cor'
          DataSource = dsVeiculo
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 16
          Top = 91
          Width = 58
          Height = 16
          DataField = 'vend_obs'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDraw8: TRLDraw
          Left = 7
          Top = 126
          Width = 703
          Height = 4
          DrawKind = dkLine
          HoldStyle = hsHorizontally
        end
        object RLDraw9: TRLDraw
          Left = 15
          Top = -1
          Width = 703
          Height = 4
          DrawKind = dkLine
          HoldStyle = hsHorizontally
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 153
        Width = 718
        Height = 39
        DataSource = dsVendaItens
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 21
          BandType = btColumnHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel4: TRLLabel
            Left = 135
            Top = 4
            Width = 42
            Height = 14
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 439
            Top = 4
            Width = 29
            Height = 14
            Alignment = taRightJustify
            Caption = 'Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 473
            Top = 3
            Width = 55
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Uni'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 650
            Top = 4
            Width = 65
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel18: TRLLabel
            Left = 610
            Top = 4
            Width = 28
            Height = 14
            Alignment = taRightJustify
            Caption = 'Hora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel19: TRLLabel
            Left = 3
            Top = 4
            Width = 55
            Height = 14
            Alignment = taRightJustify
            Caption = 'Opera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel15: TRLLabel
            Left = 537
            Top = 4
            Width = 57
            Height = 14
            Alignment = taRightJustify
            Caption = 'Hr Pintura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel23: TRLLabel
            Left = 183
            Top = 4
            Width = 57
            Height = 14
            Alignment = taRightJustify
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel24: TRLLabel
            Left = 359
            Top = 4
            Width = 73
            Height = 14
            Alignment = taRightJustify
            Caption = 'Tipo de Pe'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 21
          Width = 718
          Height = 32
          object rldCodigo: TRLDBText
            Left = 135
            Top = 0
            Width = 102
            Height = 14
            DataField = 'VENDITENS_PRODID'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object rldDescricao: TRLDBText
            Left = 183
            Top = 0
            Width = 87
            Height = 14
            DataField = 'Prod_Desc_Redu'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 65
            Top = -1
            Width = 8
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object rldQtde: TRLDBText
            Left = 444
            Top = 0
            Width = 51
            Height = 14
            DataField = 'VENDITENS_QUANTIDADE'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object rldVlUnit: TRLDBText
            Left = 485
            Top = 0
            Width = 47
            Height = 14
            DataField = 'VENDITENS_VALORUNITARIO'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 561
            Top = 0
            Width = 148
            Height = 14
            Alignment = taRightJustify
            DataField = 'VENDITENS_TOTALPRODUTO'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDraw4: TRLDraw
            Left = 12
            Top = 16
            Width = 703
            Height = 4
            DrawKind = dkLine
            HoldStyle = hsHorizontally
          end
          object rldOperacao: TRLDBText
            Left = 4
            Top = 0
            Width = 93
            Height = 14
            DataField = 'VENDITENS_OPERACAO'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object rldHoras: TRLDBText
            Left = 615
            Top = 0
            Width = 46
            Height = 14
            DataField = 'VENDITENS_HORA'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object rldHrPintura: TRLDBText
            Left = 550
            Top = -1
            Width = 47
            Height = 14
            DataField = 'VENDITENS_PINTURA'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText1: TRLDBText
            Left = 359
            Top = 2
            Width = 114
            Height = 14
            DataField = 'VENDITENS_TIPOPECA'
            DataSource = dsVendaItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 465
      Width = 718
      Height = 48
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 570
        Top = 24
        Width = 145
        Height = 16
        Alignment = taRightJustify
        DataField = 'Vend_TotalVenda'
        DataSource = dtsVenda
        Info = riSum
        Text = ''
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 504
        Top = 24
        Width = 101
        Height = 16
        Caption = 'Total da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw3: TRLDraw
        Left = 504
        Top = 11
        Width = 211
        Height = 7
        DrawKind = dkLine
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 78
      BandType = btHeader
      object RLPanelcabecalho: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 101
        Align = faTop
        object RLDBText12: TRLDBText
          Left = 288
          Top = 14
          Width = 104
          Height = 16
          Alignment = taCenter
          DataField = 'EMP_FANTASIA'
          DataSource = dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText16: TRLDBText
          Left = 272
          Top = 36
          Width = 132
          Height = 16
          Alignment = taCenter
          DataField = 'EMP_RAZAOSOCIAL'
          DataSource = dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText17: TRLDBText
          Left = 303
          Top = 56
          Width = 74
          Height = 16
          Alignment = taCenter
          DataField = 'EMP_CNPJ'
          DataSource = dsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 116
      Width = 718
      Height = 79
      BandType = btHeader
      object RLDBText19: TRLDBText
        Left = 234
        Top = 16
        Width = 132
        Height = 16
        Alignment = taRightJustify
        DataField = 'EMP_RAZAOSOCIAL'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText23: TRLDBText
        Left = 371
        Top = 16
        Width = 74
        Height = 16
        DataField = 'EMP_CNPJ'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 235
        Top = 32
        Width = 114
        Height = 16
        Alignment = taRightJustify
        DataField = 'EMP_ENDERECO'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText18: TRLDBText
        Left = 354
        Top = 32
        Width = 84
        Height = 16
        DataField = 'Emp_Numero'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 234
        Top = 54
        Width = 80
        Height = 16
        Alignment = taRightJustify
        DataField = 'EMP_Cidade'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 320
        Top = 54
        Width = 56
        Height = 16
        DataField = 'Emp_UF'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 381
        Top = 54
        Width = 42
        Height = 16
        Caption = '-CEP: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText25: TRLDBText
        Left = 419
        Top = 54
        Width = 62
        Height = 16
        DataField = 'Emp_Cep'
        DataSource = dsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDraw7: TRLDraw
        Left = 8
        Top = -1
        Width = 703
        Height = 4
        DrawKind = dkLine
        HoldStyle = hsHorizontally
      end
      object RLDraw5: TRLDraw
        Left = 15
        Top = 76
        Width = 703
        Height = 4
        DrawKind = dkLine
        HoldStyle = hsHorizontally
      end
    end
  end
  object RLLabel13: TRLLabel
    Left = 11
    Top = 11
    Width = 57
    Height = 16
    Caption = 'Cliente: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object RLDBText9: TRLDBText
    Left = 74
    Top = 11
    Width = 60
    Height = 16
    DataField = 'Cli_Nome'
    DataSource = dtsVenda
    Text = ''
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\VIRTUAL\Documents\Teste.pdf'
    DisplayName = 'Documento PDF'
    Left = 56
    Top = 536
  end
  object QryVenda: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT '
      '  vend_Id,'
      '  vend.vend_CodCli,'
      '  cli.Cli_Nome,'
      '  cli.cli_Telefone1,'
      '  cli.cli_Email,'
      '  vend.vend_DataVenda,'
      '  vend.vend_TotalVenda,'
      '  vend.vend_obs,'
      '   cli.Cli_Logradouro,'
      '   cli_numero'
      
        ' FROM Venda vend inner join  Clientes Cli on cli.Cli_Cod=vend.ve' +
        'nd_CodCli'
      '   WHERE vend.vend_Id =:vend_Id'
      #9' ORDER BY vend.vend_DataVenda, vend.vend_CodCli'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vend_Id'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vend_Id'
        ParamType = ptUnknown
      end>
    object QryVendavend_Id: TIntegerField
      FieldName = 'vend_Id'
      ReadOnly = True
    end
    object QryVendavend_CodCli: TIntegerField
      FieldName = 'vend_CodCli'
      Required = True
    end
    object QryVendaCli_Nome: TWideStringField
      FieldName = 'Cli_Nome'
      Size = 50
    end
    object QryVendacli_Telefone1: TWideStringField
      FieldName = 'cli_Telefone1'
      Size = 15
    end
    object QryVendacli_Email: TWideStringField
      FieldName = 'cli_Email'
      Size = 50
    end
    object QryVendavend_DataVenda: TDateTimeField
      FieldName = 'vend_DataVenda'
      Required = True
    end
    object QryVendavend_TotalVenda: TFloatField
      FieldName = 'vend_TotalVenda'
      Required = True
    end
    object QryVendavend_obs: TWideStringField
      FieldName = 'vend_obs'
      Size = 255
    end
    object QryVendaCli_Logradouro: TWideStringField
      FieldName = 'Cli_Logradouro'
      Size = 50
    end
    object QryVendacli_numero: TIntegerField
      FieldName = 'cli_numero'
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVenda
    Left = 200
    Top = 536
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 56
    Top = 584
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 56
    Top = 640
  end
  object dsVendaItens: TDataSource
    DataSet = QryVendaItens
    Left = 200
    Top = 592
  end
  object QryVendaItens: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      '  SELECT I.VENDITENS_OPERACAO,'
      '                                 I.VENDITENS_ID,'
      #9#9' I.VENDITENS_PRODID,'
      #9#9' I.VENDITENS_VALORUNITARIO,'
      #9#9' I.VENDITENS_QUANTIDADE,'
      #9#9' I.VENDITENS_DESC,'
      #9#9' I.VENDITENS_HORA,'
      #9#9' I.VENDITENS_PINTURA,'
      #9#9' I.VENDITENS_TOTALPRODUTO,'
      '                                 prod.Prod_Desc_Redu,'
      '                                I.VENDITENS_TIPOPECA'
      '          FROM VendaItens I'
      #9#9'       INNER JOIN VENDA V ON(V.VEND_Id=VendItens_IdVenda) '
      '                     AND I.VendItens_IdVenda =:VEND_Id'
      
        '                     INNER JOIN produtos prod ON(prod.Prod_Cod=I' +
        '.VendItens_prodId)'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'VEND_Id'
        ParamType = ptUnknown
      end>
    Properties.Strings = (
      '  SELECT I.ORCITENS_OPERACAO,'
      '         I.ORCITENS_ORCID,'
      #9#9' I.ORCITENS_PRODID,'
      #9#9' I.ORCITENS_VALORUNITARIO,'
      #9#9' I.ORCITENS_QUANTIDADE,'
      #9#9' I.ORCITENS_DESC,'
      #9#9' I.ORCITENS_HORA,'
      #9#9' I.ORCITENS_PINTURA,'
      #9#9' I.ORCITENS_TOTALPRODUTO'
      '          FROM OrcamentoItens I'
      
        #9#9'       INNER JOIN ORCAMENTO O ON(O.Orc_OrcId=I.ORCITENS_ORCID)' +
        ' AND I.OrcItens_OrcId=:PORCID')
    Left = 136
    Top = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'VEND_Id'
        ParamType = ptUnknown
      end>
    object QryVendaItensVENDITENS_OPERACAO: TWideStringField
      FieldName = 'VENDITENS_OPERACAO'
      Required = True
    end
    object QryVendaItensVENDITENS_ID: TIntegerField
      FieldName = 'VENDITENS_ID'
      ReadOnly = True
    end
    object QryVendaItensVENDITENS_PRODID: TIntegerField
      FieldName = 'VENDITENS_PRODID'
      Required = True
    end
    object QryVendaItensVENDITENS_VALORUNITARIO: TFloatField
      FieldName = 'VENDITENS_VALORUNITARIO'
      Required = True
    end
    object QryVendaItensVENDITENS_QUANTIDADE: TIntegerField
      FieldName = 'VENDITENS_QUANTIDADE'
      Required = True
    end
    object QryVendaItensVENDITENS_DESC: TFloatField
      FieldName = 'VENDITENS_DESC'
    end
    object QryVendaItensVENDITENS_HORA: TFloatField
      FieldName = 'VENDITENS_HORA'
    end
    object QryVendaItensVENDITENS_PINTURA: TFloatField
      FieldName = 'VENDITENS_PINTURA'
    end
    object QryVendaItensVENDITENS_TOTALPRODUTO: TFloatField
      FieldName = 'VENDITENS_TOTALPRODUTO'
      Required = True
    end
    object QryVendaItensProd_Desc_Redu: TWideStringField
      FieldName = 'Prod_Desc_Redu'
      Size = 15
    end
    object QryVendaItensVENDITENS_TIPOPECA: TWideStringField
      FieldName = 'VENDITENS_TIPOPECA'
    end
  end
  object qryVeiculo: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT '
      '      Veic_Marca_Modelo'
      '      ,Veic_Placa'
      '      ,Veic_Cor      '
      '  FROM Veiculos where veic_cod = :PVEIC_COD'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'PVEIC_COD'
        ParamType = ptUnknown
      end>
    Left = 136
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PVEIC_COD'
        ParamType = ptUnknown
      end>
    object qryVeiculoVeic_Marca_Modelo: TWideStringField
      FieldName = 'Veic_Marca_Modelo'
      Size = 50
    end
    object qryVeiculoVeic_Placa: TWideStringField
      FieldName = 'Veic_Placa'
      Size = 10
    end
    object qryVeiculoVeic_Cor: TWideStringField
      FieldName = 'Veic_Cor'
    end
  end
  object dsVeiculo: TDataSource
    DataSet = qryVeiculo
    Left = 192
    Top = 696
  end
  object qryEmpresa: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT TOP 1 '
      '        Emp_Cod'
      '      , EMP_CNPJ'
      '      , EMP_RAZAOSOCIAL'
      '      , EMP_FANTASIA'
      '      , EMP_ENDERECO'
      '      , Emp_Numero'
      '      , Emp_Cep'
      '      , EMP_Bairro'
      '      , Emp_UF'
      '      , EMP_Cidade'
      '      , Emp_Telefone1'
      '      , Emp_Telefone2'
      '      , EMP_Email'
      '       ,EMp_Contato'
      '  FROM Empresa'
      ''
      '')
    Params = <>
    Left = 136
    Top = 688
    object qryEmpresaEmp_Cod: TIntegerField
      FieldName = 'Emp_Cod'
      ReadOnly = True
    end
    object qryEmpresaEMP_CNPJ: TWideStringField
      FieldName = 'EMP_CNPJ'
    end
    object qryEmpresaEMP_RAZAOSOCIAL: TWideStringField
      FieldName = 'EMP_RAZAOSOCIAL'
      Size = 100
    end
    object qryEmpresaEMP_FANTASIA: TWideStringField
      FieldName = 'EMP_FANTASIA'
      Size = 50
    end
    object qryEmpresaEMP_ENDERECO: TWideStringField
      FieldName = 'EMP_ENDERECO'
      Size = 50
    end
    object qryEmpresaEmp_Numero: TIntegerField
      FieldName = 'Emp_Numero'
    end
    object qryEmpresaEmp_Cep: TWideStringField
      FieldName = 'Emp_Cep'
      Size = 9
    end
    object qryEmpresaEMP_Bairro: TWideStringField
      FieldName = 'EMP_Bairro'
    end
    object qryEmpresaEmp_UF: TWideStringField
      FieldName = 'Emp_UF'
      Size = 2
    end
    object qryEmpresaEMP_Cidade: TWideStringField
      FieldName = 'EMP_Cidade'
    end
    object qryEmpresaEmp_Telefone1: TWideStringField
      FieldName = 'Emp_Telefone1'
      Size = 15
    end
    object qryEmpresaEmp_Telefone2: TWideStringField
      FieldName = 'Emp_Telefone2'
      Size = 15
    end
    object qryEmpresaEMP_Email: TWideStringField
      FieldName = 'EMP_Email'
      Size = 50
    end
    object qryEmpresaEMp_Contato: TWideStringField
      FieldName = 'EMp_Contato'
      ReadOnly = True
      Size = 50
    end
  end
  object dsEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 192
    Top = 648
  end
end
