inherited frmDespesas: TfrmDespesas
  Caption = 'Cadastro de Despesa'
  ClientHeight = 259
  Position = poScreenCenter
  ExplicitWidth = 753
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 218
    ExplicitTop = 218
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Height = 218
    ExplicitHeight = 218
    inherited pgcPadrao: TPageControl
      Height = 218
      ActivePage = TabSheet2
      ExplicitHeight = 218
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 190
        inherited dbgPadrao: TDBGrid
          Height = 133
          Columns = <
            item
              Expanded = False
              FieldName = 'Desp_Cod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desp_Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desp_Descricao'
              Width = 338
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desp_dataVencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desp_Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desp_Status'
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 190
        object Label11: TLabel
          Left = 163
          Top = 101
          Width = 64
          Height = 13
          Caption = 'Valor a pagar'
        end
        object Label9: TLabel
          Left = 5
          Top = 101
          Width = 96
          Height = 13
          Caption = 'Data de Vencimento'
        end
        object Label1: TLabel
          Left = 5
          Top = 59
          Width = 78
          Height = 13
          Caption = 'Tipo da despesa'
        end
        object Label2: TLabel
          Left = 245
          Top = 101
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object cbDespesa: TComboBox
          Left = 245
          Top = 117
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'ABERTO'
          Items.Strings = (
            'ABERTO'
            'FECHADO')
        end
        object edtDescricao: TLabeledEdit
          Left = 163
          Top = 74
          Width = 542
          Height = 21
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o da despesa'
          TabOrder = 2
        end
        object edtValor: TCurrencyEdit
          Left = 163
          Top = 117
          Width = 76
          Height = 21
          TabOrder = 4
        end
        object edtDataPrevisao: TDateEdit
          Left = 3
          Top = 117
          Width = 145
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object lkpDespesa: TDBLookupComboBox
          Left = 3
          Top = 74
          Width = 145
          Height = 21
          KeyField = 'TIPODR_Cod'
          ListField = 'TIPODR_Desc'
          ListSource = dsTipoDespesa
          TabOrder = 1
        end
        object edtCodigo: TLabeledEdit
          Tag = 1
          Left = 3
          Top = 32
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          TabOrder = 0
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT * FROM DESPESA')
    Left = 496
    Top = 56
    object zqPrincipalDesp_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Desp_Cod'
      ReadOnly = True
    end
    object zqPrincipalDesp_Tipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'Desp_Tipo'
    end
    object zqPrincipalDesp_Descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Desp_Descricao'
      Size = 100
    end
    object zqPrincipalDesp_dataVencimento: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'Desp_dataVencimento'
    end
    object zqPrincipalDesp_Valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'Desp_Valor'
    end
    object zqPrincipalDesp_Status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'Desp_Status'
      Size = 10
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 608
    Top = 113
  end
  object zqTipoDespesa: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select * '
      '   from '
      '  Tipo_Despesa_Receita'
      ' Where TIPODR_Tipo='#39'DESPESA'#39' ')
    Params = <>
    Left = 516
    Top = 136
    object zqTipoDespesaTIPODR_Cod: TIntegerField
      FieldName = 'TIPODR_Cod'
      ReadOnly = True
    end
    object zqTipoDespesaTIPODR_Tipo: TWideStringField
      FieldName = 'TIPODR_Tipo'
      Size = 10
    end
    object zqTipoDespesaTIPODR_Desc: TWideStringField
      FieldName = 'TIPODR_Desc'
    end
  end
  object dsTipoDespesa: TDataSource
    DataSet = zqTipoDespesa
    Left = 612
    Top = 176
  end
end
