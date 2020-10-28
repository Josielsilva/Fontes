inherited frmReceita: TfrmReceita
  Caption = 'Cadastro de Receita'
  ClientHeight = 226
  Position = poScreenCenter
  ExplicitWidth = 753
  ExplicitHeight = 265
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 185
    ExplicitTop = 185
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Height = 185
    ExplicitHeight = 185
    inherited pgcPadrao: TPageControl
      Height = 185
      ActivePage = TabSheet2
      ExplicitHeight = 185
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 157
        inherited dbgPadrao: TDBGrid
          Height = 100
          Columns = <
            item
              Expanded = False
              FieldName = 'Rec_Cod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Descricao'
              Width = 311
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Tipo'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Valor'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_dataRecebimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rec_Status'
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 729
        ExplicitHeight = 157
        object Label11: TLabel
          Left = 163
          Top = 85
          Width = 51
          Height = 13
          Caption = 'Valor Total'
        end
        object Label9: TLabel
          Left = 5
          Top = 85
          Width = 96
          Height = 13
          Caption = 'Data de Vencimento'
        end
        object Label1: TLabel
          Left = 5
          Top = 43
          Width = 71
          Height = 26
          Caption = 'Tipo da receita'#13#10
        end
        object Label2: TLabel
          Left = 245
          Top = 85
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object cbReceita: TComboBox
          Left = 245
          Top = 101
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
          Top = 58
          Width = 542
          Height = 21
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o da despesa'
          TabOrder = 2
        end
        object edtValor: TCurrencyEdit
          Left = 163
          Top = 101
          Width = 76
          Height = 21
          TabOrder = 4
        end
        object edtDataVencimento: TDateEdit
          Left = 3
          Top = 101
          Width = 145
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object lkpReceita: TDBLookupComboBox
          Left = 3
          Top = 58
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
          Top = 16
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
      'SELECT * FROM RECEITA')
    Left = 528
    Top = 80
    object zqPrincipalRec_Cod: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Rec_Cod'
      ReadOnly = True
    end
    object zqPrincipalRec_Tipo: TIntegerField
      DisplayLabel = 'C'#243'digo Tp. Receita'
      FieldName = 'Rec_Tipo'
      Required = True
    end
    object zqPrincipalRec_Valor: TFloatField
      DisplayLabel = 'Valor a Receber'
      FieldName = 'Rec_Valor'
      Required = True
    end
    object zqPrincipalRec_Status: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'Rec_Status'
      Required = True
      Size = 10
    end
    object zqPrincipalRec_dataRecebimento: TDateTimeField
      DisplayLabel = 'Data de Recebimento'
      FieldName = 'Rec_dataRecebimento'
      Required = True
    end
    object zqPrincipalRec_Descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Rec_Descricao'
      Required = True
      Size = 100
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 576
    Top = 73
  end
  object zqTipoDespesa: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select * '
      '   from '
      '  Tipo_Despesa_Receita'
      ' Where TIPODR_Tipo='#39'RECEITA'#39' ')
    Params = <>
    Left = 524
    Top = 128
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
    Left = 588
    Top = 136
  end
end
