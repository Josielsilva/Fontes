unit uConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmTelaConsultaProduto = class(TfrmTelaHerancaConsulta)
    QryListagemProd_Cod: TIntegerField;
    QryListagemProd_Nome: TWideStringField;
    QryListagemprod_ValorUnit: TFloatField;
    QryListagemProd_Qtde: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaConsultaProduto: TfrmTelaConsultaProduto;

implementation

{$R *.dfm}

procedure TfrmTelaConsultaProduto.FormCreate(Sender: TObject);
begin
  inherited;
   aCampoId :='Prod_Cod';
   IndiceAtual:='Prod_Cod';
end;

end.
