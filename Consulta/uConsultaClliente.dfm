inherited frmConsultaCliente: TfrmConsultaCliente
  Caption = 'Consulta de Cliente'
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
      'select Cli_Cod,'
      '          Cli_Nome'
      '  from clientes')
    object QryListagemCli_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'Cli_Cod'
      ReadOnly = True
    end
    object QryListagemCli_Nome: TWideStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'Cli_Nome'
      Size = 50
    end
  end
end