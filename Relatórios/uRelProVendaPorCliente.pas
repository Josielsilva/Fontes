unit uRelProVendaPorCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZDataset, RLXLSFilter,
  RLXLSXFilter, ZAbstractRODataset, ZAbstractDataset;

type
  TfrmRelVendaPorCliente = class(TForm)
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
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RegistrosDB: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand1: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    QryVendaVend_Id: TIntegerField;
    QryVendaVend_CodCli: TIntegerField;
    QryVendaCli_Nome: TWideStringField;
    QryVendacli_Telefone1: TWideStringField;
    QryVendacli_Email: TWideStringField;
    QryVendaVend_DataVenda: TDateTimeField;
    QryVendaVend_TotalVenda: TFloatField;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaPorCliente: TfrmRelVendaPorCliente;

implementation

{$R *.dfm}



procedure TfrmRelVendaPorCliente.FormDestroy(Sender: TObject);
begin
  QryVenda.Close;
end;

end.
