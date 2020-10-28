object DtmOrcamentos: TDtmOrcamentos
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
      '  from clientes')
    Params = <>
    Left = 76
    Top = 32
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
    Left = 76
    Top = 97
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
  object dtsItensOrcamento: TDataSource
    DataSet = cdsItensOrcamento
    Left = 232
    Top = 88
  end
  object cdsItensOrcamento: TRxMemoryData
    FieldDefs = <>
    Left = 240
    Top = 32
    object cdsItensOrcamentoOrcItens_prodId: TIntegerField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'OrcItens_prodId'
    end
    object cdsItensOrcamentoProd_Nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Prod_Nome'
      Size = 50
    end
    object cdsItensOrcamentoOrcItens_Quantidade: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OrcItens_Quantidade'
    end
    object cdsItensOrcamentoOrcItens_ValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'OrcItens_ValorUnitario'
    end
    object cdsItensOrcamentoOrcItens_TotalProduto: TFloatField
      DisplayLabel = 'Total Produto'
      FieldName = 'OrcItens_TotalProduto'
    end
    object cdsItensOrcamentoOrcItens_desc: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OrcItens_desc'
    end
    object cdsItensOrcamentoOrcItens_Hora: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'OrcItens_Hora'
    end
    object cdsItensOrcamentoOrcItens_Pintura: TFloatField
      DisplayLabel = 'Pintura'
      FieldName = 'OrcItens_Pintura'
    end
    object cdsItensOrcamentoOrcItens_Operacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OrcItens_Operacao'
    end
    object cdsItensOrcamentoOrcItens_TipoPeca: TStringField
      FieldName = 'OrcItens_TipoPeca'
      Size = 10
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
    Left = 80
    Top = 152
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
end
