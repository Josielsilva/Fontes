inherited frmCadVeiculo: TfrmCadVeiculo
  Caption = 'Cadastro de Veiculo'
  ExplicitWidth = 753
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 202
    Top = 119
    Width = 35
    Height = 13
    Caption = 'C'#226'mbio'
  end
  inherited Panel2: TPanel
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited pgcPadrao: TPageControl
      ActivePage = TabSheet2
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 323
      end
      inherited TabSheet2: TTabSheet
        ExplicitTop = 22
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
        object lblAnoVeiculo: TLabeledEdit
          Left = 325
          Top = 66
          Width = 121
          Height = 21
          EditLabel.Width = 76
          EditLabel.Height = 13
          EditLabel.Caption = 'Placa do Veiculo'
          TabOrder = 3
        end
        object lblAnoCarro: TLabeledEdit
          Left = 198
          Top = 66
          Width = 121
          Height = 21
          EditLabel.Width = 70
          EditLabel.Height = 13
          EditLabel.Caption = 'Ano do Veiculo'
          TabOrder = 2
        end
        object lblCodigo: TLabeledEdit
          Left = 14
          Top = 22
          Width = 121
          Height = 21
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo do Veiculo'
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          Left = 14
          Top = 66
          Width = 178
          Height = 21
          EditLabel.Width = 70
          EditLabel.Height = 13
          EditLabel.Caption = 'Modelo Veiculo'
          TabOrder = 1
        end
        object LabeledEdit3: TLabeledEdit
          Left = 452
          Top = 66
          Width = 245
          Height = 21
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = 'Chassi'
          TabOrder = 4
        end
        object lblCliente: TLabeledEdit
          Left = 14
          Top = 237
          Width = 178
          Height = 21
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo do Cliente'
          TabOrder = 5
        end
        object BitBtn1: TBitBtn
          Left = 198
          Top = 235
          Width = 139
          Height = 23
          Caption = 'Cadastrar Cliente'
          TabOrder = 6
          OnClick = BitBtn1Click
        end
        object LabeledEdit4: TLabeledEdit
          Left = 14
          Top = 112
          Width = 178
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Fabricante'
          TabOrder = 7
        end
        object ComboBox1: TComboBox
          Left = 325
          Top = 112
          Width = 121
          Height = 21
          ItemIndex = 0
          TabOrder = 8
          Text = 'Manual'
          Items.Strings = (
            'Manual'
            'Autom'#225'tico'
            'Semi-Autom'#225'tico')
        end
      end
    end
  end
  object cbCombustivel: TComboBox [3]
    Left = 202
    Top = 136
    Width = 121
    Height = 21
    ItemIndex = 0
    TabOrder = 2
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
end
