inherited frmCadUnMedidas: TfrmCadUnMedidas
  Caption = 'Cadastro de Unidades de medidas'
  ClientHeight = 202
  Position = poScreenCenter
  ExplicitWidth = 753
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 161
    ExplicitTop = 161
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Height = 161
    ExplicitHeight = 161
    inherited pgcPadrao: TPageControl
      Height = 161
      ActivePage = TabSheet2
      ExplicitHeight = 161
      inherited TabSheet1: TTabSheet
        ExplicitHeight = 133
        inherited dbgPadrao: TDBGrid
          Height = 76
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 133
        object edtCodigo: TLabeledEdit
          Tag = 1
          Left = 3
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          TabOrder = 0
        end
        object edtNome: TLabeledEdit
          Left = 3
          Top = 64
          Width = 206
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          TabOrder = 1
        end
        object edtDescricao: TLabeledEdit
          Left = 215
          Top = 64
          Width = 226
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          TabOrder = 2
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select * from Unidade_de_Medida')
    Left = 528
    Top = 24
    object zqPrincipalUniMedida_Nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'UniMedida_Nome'
      Size = 15
    end
    object zqPrincipalUniMedida_Descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'UniMedida_Descricao'
      Size = 50
    end
    object zqPrincipalUniMedida_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'UniMedida_Cod'
      ReadOnly = True
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 608
  end
end
