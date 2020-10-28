object DtmOperacaoVenda: TDtmOperacaoVenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 248
  Width = 451
  object QryCliente: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    AutoCalcFields = False
    SQL.Strings = (
      'select Cli_Cod,'
      '          Cli_Nome'
      '  from clientes ')
    Params = <>
    Left = 76
    Top = 16
    object QryClienteCli_Cod: TIntegerField
      FieldName = 'Cli_Cod'
      ReadOnly = True
    end
    object QryClienteCli_Nome: TWideStringField
      FieldName = 'Cli_Nome'
      Size = 50
    end
  end
  object QryProduto: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT Prod_Cod,'
      #9'   Prod_Nome,'
      #9'   prod_ValorUnit,'
      #9'   Prod_Qtde'
      '  FROM produtos where prod_cod =:PProd_cod'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'PProd_cod'
        ParamType = ptUnknown
      end>
    Left = 68
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PProd_cod'
        ParamType = ptUnknown
      end>
    object QryProdutoProd_Cod: TIntegerField
      FieldName = 'Prod_Cod'
      ReadOnly = True
    end
    object QryProdutoProd_Nome: TWideStringField
      FieldName = 'Prod_Nome'
      Size = 15
    end
    object QryProdutoprod_ValorUnit: TFloatField
      FieldName = 'prod_ValorUnit'
    end
    object QryProdutoProd_Qtde: TIntegerField
      FieldName = 'Prod_Qtde'
    end
  end
  object dtsProduto: TDataSource
    DataSet = QryProduto
    Left = 140
    Top = 97
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
    Left = 140
    Top = 32
  end
  object dtsItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 232
    Top = 144
  end
  object cdsItensVenda: TRxMemoryData
    FieldDefs = <
      item
        Name = 'VendItens_prodId'
        DataType = ftInteger
      end
      item
        Name = 'Prod_Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VendItens_Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_ValorUnitario'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_TotalProduto'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_desc'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_Hora'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_Pintura'
        DataType = ftFloat
      end
      item
        Name = 'VendItens_Operacao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VendItens_TipoPeca'
        DataType = ftString
        Size = 15
      end>
    Left = 224
    Top = 72
    object cdsItensVendaOrcItens_prodId: TIntegerField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'VendItens_prodId'
    end
    object cdsItensVendaProd_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object cdsItensVendaOrcItens_Quantidade: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VendItens_Quantidade'
    end
    object cdsItensVendaOrcItens_ValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'VendItens_ValorUnitario'
    end
    object cdsItensVendaOrcItens_TotalProduto: TFloatField
      DisplayLabel = 'Total Produto'
      FieldName = 'VendItens_TotalProduto'
    end
    object cdsItensVendaOrcItens_desc: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VendItens_desc'
    end
    object cdsItensVendaOrcItens_Hora: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'VendItens_Hora'
    end
    object cdsItensVendaOrcItens_Pintura: TFloatField
      DisplayLabel = 'Pintura'
      FieldName = 'VendItens_Pintura'
    end
    object cdsItensVendaOrcItens_Operacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'VendItens_Operacao'
    end
    object cdsItensVendaVendItens_TipoPeca: TStringField
      FieldName = 'VendItens_TipoPeca'
      Size = 15
    end
  end
  object qryVeiculo: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select  veic_cod,'
      '          veic_marca_Modelo'
      '     from veiculos'
      ' where veic_Cli_cod =:PCliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'PCliente'
        ParamType = ptUnknown
      end>
    Left = 64
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCliente'
        ParamType = ptUnknown
      end>
    object qryVeiculoveic_cod: TIntegerField
      FieldName = 'veic_cod'
      ReadOnly = True
    end
    object qryVeiculoveic_marca_Modelo: TWideStringField
      FieldName = 'veic_marca_Modelo'
      Size = 50
    end
  end
  object dsVeiculo: TDataSource
    DataSet = qryVeiculo
    Left = 128
    Top = 152
  end
  object cdsItensOrcamento: TRxMemoryData
    FieldDefs = <>
    Left = 328
    Top = 48
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'OrcItens_prodId'
    end
    object StringField1: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OrcItens_Quantidade'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'OrcItens_ValorUnitario'
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Total Produto'
      FieldName = 'OrcItens_TotalProduto'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Total do or'#231'amento'
      FieldKind = fkCalculated
      FieldName = 'OrcItens_TotalOrcamento'
      Calculated = True
    end
    object FloatField5: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OrcItens_desc'
    end
    object FloatField6: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'OrcItens_Hora'
    end
    object FloatField7: TFloatField
      DisplayLabel = 'Pintura'
      FieldName = 'OrcItens_Pintura'
    end
    object StringField2: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OrcItens_Operacao'
    end
  end
  object dtsItensOrcaamento: TDataSource
    DataSet = cdsItensOrcamento
    Left = 328
    Top = 104
  end
end
