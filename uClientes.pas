unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls,uDtmPrincipal, ZAbstractRODataset, ZAbstractDataset, ZDataset,uCadCliente;

type
  TfrmCliente = class(TfrmPadrao)
    zqPrincipalCod_cli: TIntegerField;
    zqPrincipalNome_cli: TWideStringField;
    zqPrincipalNumero_cli: TIntegerField;
    zqPrincipalTelefone1_cli: TWideStringField;
    zqPrincipalTelefone2_cli: TWideStringField;
    zqPrincipalCodVeiculi_cli: TIntegerField;
    zqPrincipalLogradouro_cli: TWideStringField;
    zqPrincipalBairro_cli: TWideStringField;
    zqPrincipalCep_cli: TWideStringField;
    lbeCodigo: TLabeledEdit;
    lblNome: TLabeledEdit;
    lblNumero: TLabeledEdit;
    lblEndereco: TLabeledEdit;
    lblBairro: TLabeledEdit;
    lblCidade: TLabeledEdit;
    lblUF: TLabeledEdit;
    lblCodVeiculo: TLabeledEdit;
    lblEmail: TLabeledEdit;
    edtCEP: TMaskEdit;
    Label1: TLabel;
    edtTelefone: TMaskEdit;
    Label2: TLabel;
    mkeTelefoneCel: TMaskEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  inherited;
  IndiceAtual := 'Nome_cli';
end;

end.


