unit uCadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,uClientes;

type
  TfrmCadVeiculo = class(TfrmPadrao)
    lblAnoVeiculo: TLabeledEdit;
    lblAnoCarro: TLabeledEdit;
    lblCodigo: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    lblCliente: TLabeledEdit;
    BitBtn1: TBitBtn;
    LabeledEdit4: TLabeledEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    cbCombustivel: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVeiculo: TfrmCadVeiculo;

implementation

{$R *.dfm}

procedure TfrmCadVeiculo.BitBtn1Click(Sender: TObject);
var frmCliente : TfrmCliente;
begin
  inherited;
  frmCliente := TfrmCliente.Create(self);
  try
   frmCliente.ShowModal;
  finally
   //lblCliente.text := frmCliente.lbeCodigo.text;
   FreeAndNil(frmCliente);
  end;

end;

end.
