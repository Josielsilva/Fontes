inherited frmTelaConsultaProduto: TfrmTelaConsultaProduto
  Caption = 'Consulta de produtos'
  ExplicitWidth = 747
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 741
    inherited mskPesquisa: TMaskEdit
      ExplicitWidth = 739
    end
  end
  inherited Panel2: TPanel
    ExplicitWidth = 741
    ExplicitHeight = 207
  end
  inherited Panel3: TPanel
    inherited btnFechar: TBitBtn
      ExplicitLeft = 651
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT Prod_Cod,'
      #9'   Prod_Nome,'
      #9'   prod_ValorUnit,'
      #9'   Prod_Qtde'
      '  FROM produtos')
    object QryListagemProd_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo do produto'
      FieldName = 'Prod_Cod'
      ReadOnly = True
    end
    object QryListagemProd_Nome: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Prod_Nome'
      Size = 15
    end
    object QryListagemprod_ValorUnit: TFloatField
      DisplayLabel = 'Valor unit'#225'rio'
      FieldName = 'prod_ValorUnit'
    end
    object QryListagemProd_Qtde: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'Prod_Qtde'
    end
  end
end
