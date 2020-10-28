inherited frmCunsultaOrcamento: TfrmCunsultaOrcamento
  Caption = 'frmCunsultaOrcamento'
  ExplicitWidth = 747
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited QryListagem: TZQuery
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
        'Orc_CodCli and orc.orc_status='#39'ABERTO'#39)
    Left = 365
    Top = 185
  end
  inherited DtsListagem: TDataSource
    Left = 437
    Top = 193
  end
end
