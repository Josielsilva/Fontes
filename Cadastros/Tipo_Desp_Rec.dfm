inherited frmTipoDespesaReceita: TfrmTipoDespesaReceita
  Caption = 'Cadastro de Receita/Despesas'
  ClientHeight = 230
  Position = poScreenCenter
  ExplicitWidth = 753
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 189
    ExplicitTop = 189
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Height = 189
    ExplicitHeight = 189
    inherited pgcPadrao: TPageControl
      Height = 189
      ActivePage = TabSheet2
      ExplicitHeight = 189
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 161
        inherited dbgPadrao: TDBGrid
          Height = 104
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 161
        object Label1: TLabel
          Left = 130
          Top = 0
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object edtCodigo: TLabeledEdit
          Tag = 1
          Left = 3
          Top = 16
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          TabOrder = 0
        end
        object cbTipo: TComboBox
          Left = 130
          Top = 16
          Width = 145
          Height = 21
          HelpType = htKeyword
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'DESPESA'
          Items.Strings = (
            'DESPESA'
            'RECEITA')
        end
        object edtDescricao: TLabeledEdit
          Left = 281
          Top = 16
          Width = 437
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
      'SELECT * FROM TIPO_DESPESA_RECEITA')
    object intgrfldPrincipalTIPODR_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TIPODR_Cod'
      ReadOnly = True
    end
    object zqPrincipalTIPODR_Tipo: TWideStringField
      DisplayLabel = 'Tipo_Opera'#231#227'o'
      FieldName = 'TIPODR_Tipo'
      Size = 10
    end
    object zqPrincipalTIPODR_Desc: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TIPODR_Desc'
    end
  end
end
