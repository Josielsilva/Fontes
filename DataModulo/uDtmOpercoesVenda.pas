unit uDtmOpercoesVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxMemDS;

type
  TDtmOperacaoVenda = class(TDataModule)
    QryCliente: TZQuery;
    QryProduto: TZQuery;
    dtsProduto: TDataSource;
    dtsCliente: TDataSource;
    dtsItensVenda: TDataSource;
    QryProdutoProd_Cod: TIntegerField;
    QryProdutoProd_Nome: TWideStringField;
    QryProdutoprod_ValorUnit: TFloatField;
    QryProdutoProd_Qtde: TIntegerField;
    QryClienteCli_Cod: TIntegerField;
    QryClienteCli_Nome: TWideStringField;
    cdsItensVenda: TRxMemoryData;
    cdsItensVendaOrcItens_prodId: TIntegerField;
    cdsItensVendaProd_Nome: TStringField;
    cdsItensVendaOrcItens_Quantidade: TFloatField;
    cdsItensVendaOrcItens_ValorUnitario: TFloatField;
    cdsItensVendaOrcItens_TotalProduto: TFloatField;
    cdsItensVendaOrcItens_desc: TFloatField;
    cdsItensVendaOrcItens_Hora: TFloatField;
    cdsItensVendaOrcItens_Pintura: TFloatField;
    cdsItensVendaOrcItens_Operacao: TStringField;
    qryVeiculo: TZQuery;
    qryVeiculoveic_cod: TIntegerField;
    qryVeiculoveic_marca_Modelo: TWideStringField;
    dsVeiculo: TDataSource;
    cdsItensOrcamento: TRxMemoryData;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField2: TStringField;
    dtsItensOrcaamento: TDataSource;
    cdsItensVendaVendItens_TipoPeca: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmOperacaoVenda: TDtmOperacaoVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDtmOperacaoVenda.DataModuleCreate(Sender: TObject);
begin

 cdsItensVenda.Active:= true;
 cdsItensOrcamento.Active := True;
 QryCliente.Open;
 //QryProduto.Open;

end;

procedure TDtmOperacaoVenda.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.Close;
  cdsItensOrcamento.Close;
  QryCliente.Close;
  //QryProduto.Close;

  qryVeiculo.Close;
end;



end.
