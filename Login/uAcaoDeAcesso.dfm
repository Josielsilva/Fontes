inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'A'#231#227'o do usu'#225'rio'
  Position = poScreenCenter
  ExplicitTop = 8
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnInserir: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited btnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    inherited pgcPadrao: TPageControl
      inherited TabSheet2: TTabSheet
        object edtChave: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 121
          Width = 413
          Height = 21
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave'
          MaxLength = 40
          TabOrder = 0
        end
        object edtacaoAcessoId: TLabeledEdit
          Tag = 1
          Left = 12
          Top = 23
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 1
        end
        object edtDescricao: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 71
          Width = 581
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          MaxLength = 50
          TabOrder = 2
        end
      end
    end
  end
  inherited zqPrincipal: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT acaoAcessoId, descricao, chave  FROM acaoAcesso')
    object zqPrincipalacaoAcessoId: TIntegerField
      DisplayLabel = 'A'#231#227'o ID'
      FieldName = 'acaoAcessoId'
      ReadOnly = True
    end
    object zqPrincipaldescricao: TWideStringField
      DisplayLabel = 'Descricao'
      FieldName = 'descricao'
      Required = True
      Size = 50
    end
    object zqPrincipalchave: TWideStringField
      FieldName = 'chave'
      Required = True
      Size = 60
    end
  end
end
