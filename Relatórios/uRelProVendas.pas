unit uRelProVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZDataset, RLXLSFilter,
  RLXLSXFilter, Vcl.Imaging.jpeg, Vcl.DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, Vcl.StdCtrls;

type
  TfrmRelProVendas = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    QryVenda: TZQuery;
    dtsVenda: TDataSource;
    Rodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RegistrosDB: TRLBand;
    RLDBText2: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    dsVendaItens: TDataSource;
    RLLabel5: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    rldCodigo: TRLDBText;
    rldDescricao: TRLDBText;
    RLLabel9: TRLLabel;
    rldQtde: TRLDBText;
    rldVlUnit: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLBand6: TRLBand;
    RLPanelcabecalho: TRLPanel;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    rldOperacao: TRLDBText;
    rldHoras: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    QryVendaItens: TZQuery;
    rldHrPintura: TRLDBText;
    RLLabel15: TRLLabel;
    QryVendavend_Id: TIntegerField;
    QryVendavend_CodCli: TIntegerField;
    QryVendaCli_Nome: TWideStringField;
    QryVendacli_Telefone1: TWideStringField;
    QryVendacli_Email: TWideStringField;
    QryVendavend_DataVenda: TDateTimeField;
    QryVendavend_TotalVenda: TFloatField;
    QryVendavend_obs: TWideStringField;
    QryVendaItensVENDITENS_OPERACAO: TWideStringField;
    QryVendaItensVENDITENS_ID: TIntegerField;
    QryVendaItensVENDITENS_PRODID: TIntegerField;
    QryVendaItensVENDITENS_VALORUNITARIO: TFloatField;
    QryVendaItensVENDITENS_QUANTIDADE: TIntegerField;
    QryVendaItensVENDITENS_DESC: TFloatField;
    QryVendaItensVENDITENS_HORA: TFloatField;
    QryVendaItensVENDITENS_PINTURA: TFloatField;
    QryVendaItensVENDITENS_TOTALPRODUTO: TFloatField;
    RLBand7: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText25: TRLDBText;
    qryVeiculo: TZQuery;
    qryVeiculoVeic_Marca_Modelo: TWideStringField;
    qryVeiculoVeic_Placa: TWideStringField;
    qryVeiculoVeic_Cor: TWideStringField;
    dsVeiculo: TDataSource;
    qryEmpresa: TZQuery;
    qryEmpresaEmp_Cod: TIntegerField;
    qryEmpresaEMP_CNPJ: TWideStringField;
    qryEmpresaEMP_RAZAOSOCIAL: TWideStringField;
    qryEmpresaEMP_FANTASIA: TWideStringField;
    qryEmpresaEMP_ENDERECO: TWideStringField;
    qryEmpresaEmp_Numero: TIntegerField;
    qryEmpresaEmp_Cep: TWideStringField;
    qryEmpresaEMP_Bairro: TWideStringField;
    qryEmpresaEmp_UF: TWideStringField;
    qryEmpresaEMP_Cidade: TWideStringField;
    qryEmpresaEmp_Telefone1: TWideStringField;
    qryEmpresaEmp_Telefone2: TWideStringField;
    qryEmpresaEMP_Email: TWideStringField;
    qryEmpresaEMp_Contato: TWideStringField;
    dsEmpresa: TDataSource;
    RLLabel21: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText30: TRLDBText;
    QryVendaCli_Logradouro: TWideStringField;
    QryVendacli_numero: TIntegerField;
    QryVendaItensProd_Desc_Redu: TWideStringField;
    RLLabel24: TRLLabel;
    RLDBText1: TRLDBText;
    QryVendaItensVENDITENS_TIPOPECA: TWideStringField;
    RLDraw7: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProVendas: TfrmRelProVendas;

implementation

{$R *.dfm}

procedure TfrmRelProVendas.FormDestroy(Sender: TObject);
begin
  QryVenda.Close;
  QryVendaItens.Close;
end;

end.
