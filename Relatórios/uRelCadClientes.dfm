object frmRelCadClientes: TfrmRelCadClientes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 839
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsClientes
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
        Width = 216
        Height = 24
        Caption = 'Cadastro de Clientes'
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
    object RegistrosDB: TRLBand
      Left = 38
      Top = 115
      Width = 718
      Height = 20
      object RLDBText1: TRLDBText
        Left = 9
        Top = 1
        Width = 45
        Height = 16
        DataField = 'cli_cod'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 81
        Top = 1
        Width = 58
        Height = 16
        DataField = 'cli_Nome'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 337
        Top = 1
        Width = 55
        Height = 16
        DataField = 'cli_email'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 639
        Top = 1
        Width = 76
        Height = 16
        Alignment = taRightJustify
        DataField = 'cli_telefone1'
        DataSource = dtsClientes
        Text = ''
      end
    end
    object CabecalhoLabel: TRLBand
      Left = 38
      Top = 93
      Width = 718
      Height = 22
      BandType = btColumnHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faClient
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 9
          Top = 1
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
          Left = 81
          Top = 1
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
        object RLLabel6: TRLLabel
          Left = 337
          Top = 1
          Width = 40
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 655
          Top = 1
          Width = 60
          Height = 16
          Caption = 'Telefone'
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
    object Rodape: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 36
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 60
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
        Left = 664
        Top = 17
        Width = 18
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 688
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
        Left = 696
        Top = 17
        Width = 19
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
  object QryClientes: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      '   SELECT  cli_cod,'
      '                 cli_Nome,'
      #9'  cli_email,'
      #9'  cli_telefone1'
      #9' FROM clientes')
    Params = <>
    Left = 512
    Top = 296
    object QryClientescli_cod: TIntegerField
      FieldName = 'cli_cod'
      ReadOnly = True
    end
    object QryClientescli_Nome: TWideStringField
      FieldName = 'cli_Nome'
      Size = 50
    end
    object QryClientescli_email: TWideStringField
      FieldName = 'cli_email'
      Size = 50
    end
    object QryClientescli_telefone1: TWideStringField
      FieldName = 'cli_telefone1'
      Size = 15
    end
  end
  object dtsClientes: TDataSource
    DataSet = QryClientes
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
