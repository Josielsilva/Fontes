unit uCadVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadVeiculo = class(TfrmPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVeiculo: TfrmCadVeiculo;

implementation

{$R *.dfm}

end.
