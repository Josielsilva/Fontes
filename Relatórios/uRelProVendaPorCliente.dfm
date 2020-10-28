object frmRelVendaPorCliente: TfrmRelVendaPorCliente
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Venda por cliente'
  ClientHeight = 839
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
    Left = 0
    Top = 0
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
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 14
        Width = 184
        Height = 24
        Caption = 'Venda por Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 38
        Width = 712
        Height = 7
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 242
      Width = 718
      Height = 45
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 201
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
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 93
      Width = 718
      Height = 100
      DataFields = 'Vend_DataVenda'
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
          Left = 2
          Top = 3
          Width = 114
          Height = 16
          Alignment = taRightJustify
          DataField = 'Vend_DataVenda'
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
          Top = 5
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
        Top = 46
        Width = 718
        Height = 20
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 51
          Height = 16
          DataField = 'Vend_Id'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 105
          Top = 1
          Width = 60
          Height = 16
          DataField = 'Cli_Nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 609
          Top = 2
          Width = 106
          Height = 16
          Alignment = taRightJustify
          DataField = 'Vend_TotalVenda'
          DataSource = dtsVenda
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 66
        Width = 718
        Height = 31
        BandType = btSummary
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBResult2: TRLDBResult
          Left = 570
          Top = 13
          Width = 145
          Height = 16
          Alignment = taRightJustify
          DataField = 'Vend_TotalVenda'
          DataSource = dtsVenda
          Info = riSum
          Text = ''
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 558
          Top = 14
          Width = 40
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = 3
          Top = 3
          Width = 712
          Height = 8
          DrawKind = dkLine
          Pen.Width = 2
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        BandType = btColumnHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 9
          Top = 0
          Width = 49
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 105
          Top = 0
          Width = 41
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 583
          Top = -1
          Width = 101
          Height = 16
          Caption = 'Valor da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 193
      Width = 718
      Height = 49
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 570
        Top = 28
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
        Left = 519
        Top = 26
        Width = 79
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 14
        Width = 712
        Height = 8
        Pen.Width = 2
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\VIRTUAL\Documents\Teste.pdf'
    DisplayName = 'Documento PDF'
    Left = 88
    Top = 320
  end
  object QryVenda: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT '
      '  Vend.Vend_Id,'
      '  Vend.Vend_CodCli,'
      '  cli.Cli_Nome,'
      '  cli.cli_Telefone1,'
      '  cli.cli_Email,'
      '  Vend.Vend_DataVenda,'
      '  Vend.Vend_TotalVenda'
      ' '
      
        ' FROM Venda Vend  inner join  Clientes Cli on cli.Cli_Cod=Vend.V' +
        'end_CodCli'
      '   WHERE Vend.Vend_CodCli BETWEEN :ClienteIni And :ClienteFim'
      ''
      #9' ORDER BY Vend.Vend_DataVenda, Vend.Vend_CodCli'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ClienteIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ClienteFim'
        ParamType = ptUnknown
      end>
    Left = 520
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ClienteIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ClienteFim'
        ParamType = ptUnknown
      end>
    object QryVendaVend_Id: TIntegerField
      FieldName = 'Vend_Id'
      ReadOnly = True
    end
    object QryVendaVend_CodCli: TIntegerField
      FieldName = 'Vend_CodCli'
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
    object QryVendaVend_DataVenda: TDateTimeField
      FieldName = 'Vend_DataVenda'
      Required = True
    end
    object QryVendaVend_TotalVenda: TFloatField
      FieldName = 'Vend_TotalVenda'
      Required = True
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVenda
    Left = 600
    Top = 432
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 88
    Top = 368
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 88
    Top = 424
  end
end
