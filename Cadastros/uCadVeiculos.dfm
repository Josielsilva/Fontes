inherited frmCadVeiculo: TfrmCadVeiculo
  Caption = 'Cadastro de Veiculo'
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
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 323
        object Label1: TLabel
          Left = 325
          Top = 95
          Width = 35
          Height = 13
          Caption = 'C'#226'mbio'
        end
        object Label3: TLabel
          Left = 198
          Top = 95
          Width = 58
          Height = 13
          Caption = 'Cumbust'#237'vel'
        end
        object lblCliente: TLabel
          Left = 152
          Top = 5
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object Label4: TLabel
          Left = 584
          Top = 7
          Width = 83
          Height = 13
          Caption = 'Data do cadastro'
        end
        object Label5: TLabel
          Left = 14
          Top = 207
          Width = 107
          Height = 13
          Caption = 'Data da ultima revis'#227'o'
        end
        object Label2: TLabel
          Left = 14
          Top = 253
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object Label6: TLabel
          Left = 198
          Top = 50
          Width = 70
          Height = 13
          Caption = 'Ano do Veiculo'
        end
        object Placa: TLabel
          Left = 325
          Top = 49
          Width = 25
          Height = 13
          Caption = 'Placa'
        end
        object lblCodigo: TLabeledEdit
          Tag = 1
          Left = 14
          Top = 22
          Width = 121
          Height = 21
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo do Veiculo'
          TabOrder = 0
        end
        object edtModelo: TLabeledEdit
          Left = 14
          Top = 66
          Width = 178
          Height = 21
          EditLabel.Width = 103
          EditLabel.Height = 13
          EditLabel.Caption = 'Marca/Modelo Veiculo'
          MaxLength = 50
          TabOrder = 4
        end
        object edtChassi: TLabeledEdit
          Left = 452
          Top = 66
          Width = 266
          Height = 21
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = 'Chassi'
          MaxLength = 20
          TabOrder = 7
        end
        object btnCadastroCliente: TBitBtn
          Left = 468
          Top = 22
          Width = 110
          Height = 21
          Caption = 'Cadastrar Cliente'
          TabOrder = 2
          OnClick = btnCadastroClienteClick
        end
        object edtFabricante: TLabeledEdit
          Left = 14
          Top = 112
          Width = 178
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Fabricante'
          MaxLength = 20
          TabOrder = 8
        end
        object cbTipoCambio: TComboBox
          Left = 325
          Top = 112
          Width = 121
          Height = 21
          ItemIndex = 0
          TabOrder = 10
          Text = 'Manual'
          Items.Strings = (
            'Manual'
            'Autom'#225'tico'
            'Semi-Autom'#225'tico')
        end
        object cbCombustivel: TComboBox
          Left = 198
          Top = 112
          Width = 121
          Height = 21
          ItemIndex = 0
          TabOrder = 9
          Text = 'Gasolina'
          Items.Strings = (
            'Gasolina'
            #193'lcool'
            'Flex'
            'Diesel'
            'H'#237'brido'
            'Eletrico'
            ''
            ''
            ''
            '')
        end
        object lkbCliente: TDBLookupComboBox
          Left = 152
          Top = 22
          Width = 311
          Height = 21
          KeyField = 'Cli_Cod'
          ListField = 'Cli_Nome'
          ListSource = dsCliente
          TabOrder = 1
          OnExit = lkbClienteExit
        end
        object edtDataCadastro: TDateEdit
          Left = 584
          Top = 22
          Width = 134
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object edtRevisao: TDateEdit
          Left = 14
          Top = 226
          Width = 134
          Height = 21
          NumGlyphs = 2
          TabOrder = 12
        end
        object mkeAno: TMaskEdit
          Left = 198
          Top = 66
          Width = 116
          Height = 21
          EditMask = '9999-9999;1;_'
          MaxLength = 9
          TabOrder = 5
          Text = '    -    '
        end
        object mmObs: TMemo
          Left = 14
          Top = 272
          Width = 704
          Height = 48
          Lines.Strings = (
            'mmObs')
          TabOrder = 13
        end
        object edtPlaca: TMaskEdit
          Left = 325
          Top = 65
          Width = 112
          Height = 21
          EditMask = 'aaa-aaaa;0;'
          MaxLength = 8
          TabOrder = 6
          Text = ''
        end
        object edtCor: TLabeledEdit
          Left = 452
          Top = 112
          Width = 266
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'Cor'
          MaxLength = 20
          TabOrder = 11
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      ''
      'select *  from veiculos')
    Left = 560
    Top = 152
    object zqPrincipalVeic_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Veic_Cod'
      ReadOnly = True
    end
    object zqPrincipalVeic_Marca_Modelo: TWideStringField
      DisplayLabel = 'Marca/Modelo'
      FieldName = 'Veic_Marca_Modelo'
      Size = 50
    end
    object zqPrincipalVeic_Placa: TWideStringField
      DisplayLabel = 'Placa'
      FieldName = 'Veic_Placa'
      Size = 10
    end
    object zqPrincipalVeic_Chassi: TWideStringField
      DisplayLabel = 'Chassi'
      FieldName = 'Veic_Chassi'
    end
    object zqPrincipalVeic_Ano: TWideStringField
      DisplayLabel = 'Ano'
      FieldName = 'Veic_Ano'
      Size = 9
    end
    object zqPrincipalVeic_TipoCombustivel: TWideStringField
      DisplayLabel = 'Tipo de Combust'#237'veis'
      FieldName = 'Veic_TipoCombustivel'
      Size = 10
    end
    object zqPrincipalVeic_TipoCambio: TWideStringField
      DisplayLabel = 'Tipo de C'#226'mbio'
      FieldName = 'Veic_TipoCambio'
      Size = 15
    end
    object zqPrincipalVeic_Fabricante: TWideStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'Veic_Fabricante'
    end
    object zqPrincipalVeic_DataCadastro: TDateTimeField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'Veic_DataCadastro'
    end
    object zqPrincipalVeic_UltimaRevisao: TDateTimeField
      DisplayLabel = #218'tima revis'#227'o'
      FieldName = 'Veic_UltimaRevisao'
    end
    object zqPrincipalVeic_Obs: TWideStringField
      DisplayLabel = 'Obs'
      FieldName = 'Veic_Obs'
      Size = 255
    end
    object zqPrincipalVeic_Cli_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo do cliente'
      FieldName = 'Veic_Cli_Cod'
    end
    object zqPrincipalVeic_Cor: TWideStringField
      DisplayLabel = 'Cor'
      FieldName = 'Veic_Cor'
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 656
    Top = 145
  end
  object zqCliente: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select Cli_Cod,Cli_Nome from Clientes')
    Params = <>
    Left = 556
    Top = 208
  end
  object dsCliente: TDataSource
    DataSet = zqCliente
    Left = 628
    Top = 208
  end
end
