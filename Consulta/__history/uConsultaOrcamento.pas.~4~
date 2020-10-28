unit uConsultaOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmCunsultaOrcamento = class(TfrmTelaHerancaConsulta)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCunsultaOrcamento: TfrmCunsultaOrcamento;

implementation

{$R *.dfm}

procedure TfrmCunsultaOrcamento.FormCreate(Sender: TObject);
begin
  inherited;
  aCampoId :='Orc_OrcId';
  IndiceAtual:='Orc_OrcId';
end;

end.
