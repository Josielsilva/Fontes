unit uDtmOrcamento;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxMemDS;

type
  TDtmOrcamentos = class(TDataModule)
    QryCliente: TZQuery;
    QryProduto: TZQuery;
    dtsProduto: TDataSource;
    dtsCliente: TDataSource;
    dtsItensOrcamento: TDataSource;
    QryProdutoProd_Cod: TIntegerField;
    QryProdutoProd_Nome: TWideStringField;
    QryProdutoprod_ValorUnit: TFloatField;
    QryProdutoProd_Qtde: TIntegerField;
    QryClienteCli_Cod: TIntegerField;
    QryClienteCli_Nome: TWideStringField;
    cdsItensOrcamento: TRxMemoryData;
    cdsItensOrcamentoOrcItens_prodId: TIntegerField;
    cdsItensOrcamentoProd_Nome: TStringField;
    cdsItensOrcamentoOrcItens_Quantidade: TFloatField;
    cdsItensOrcamentoOrcItens_ValorUnitario: TFloatField;
    cdsItensOrcamentoOrcItens_TotalProduto: TFloatField;
    cdsItensOrcamentoOrcItens_desc: TFloatField;
    cdsItensOrcamentoOrcItens_Hora: TFloatField;
    cdsItensOrcamentoOrcItens_Pintura: TFloatField;
    cdsItensOrcamentoOrcItens_Operacao: TStringField;
    qryVeiculo: TZQuery;
    qryVeiculoveic_cod: TIntegerField;
    qryVeiculoveic_marca_Modelo: TWideStringField;
    dsVeiculo: TDataSource;
    cdsItensOrcamentoOrcItens_TipoPeca: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmOrcamentos: TDtmOrcamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDtmOrcamentos.DataModuleCreate(Sender: TObject);
begin

cdsItensOrcamento.Active:= true;
QryCliente.Open;
//QryProduto.Open;

end;

procedure TDtmOrcamentos.DataModuleDestroy(Sender: TObject);
begin
  cdsItensOrcamento.Close;
  QryCliente.Close;
 //QryProduto.Close;

  qryVeiculo.Close;
end;



end.
