unit uReceitaPorTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  RxToolEdit, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmReceitaPorTipo = class(TForm)
    btnGravar: TBitBtn;
    Panel1: TPanel;
    edtTipoInicio: TLabeledEdit;
    EdtTipoFim: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceitaPorTipo: TfrmReceitaPorTipo;

implementation

uses uRelReceitaPorTipo;

{$R *.dfm}

procedure TfrmReceitaPorTipo.btnGravarClick(Sender: TObject);
begin
  if StrToInt(EdtTipoInicio.text) > StrToInt(EdtTipoFim.Text) then begin
    MessageDlg('Cliente Final não pode ser menor que  Cliente inicio',mtInformation,[mbok],0);
    EdtTipoFim.SetFocus;
    abort;
  end;

  if (StrToInt(EdtTipoInicio.text)=0) OR (StrToInt(EdtTipoFim.Text)=0) then begin
    MessageDlg('Cliente Inicial ou Final são campo obrigatório',MtInformation,[mbok],0);
    EdtTipoInicio.SetFocus;
    abort;
  end;

  frmRelReceitaPorTipo := TfrmRelReceitaPorTipo.Create(self);
  try
   frmRelReceitaPorTipo.QryReceita.Close;
   frmRelReceitaPorTipo.QryReceita.ParamByName('TipoInicio').AsInteger := StrToInt(EdtTipoInicio.Text);
   frmRelReceitaPorTipo.QryReceita.ParamByName('TipoFim').AsInteger    := StrToInt(EdtTipoFim.Text);
   frmRelReceitaPorTipo.QryReceita.Open;
   frmRelReceitaPorTipo.Relatorio.PreviewModal;
  finally
   frmRelReceitaPorTipo.Release;
  end;
  Close;
end;

procedure TfrmReceitaPorTipo.FormShow(Sender: TObject);
begin
  EdtTipoInicio.Text := '1';
  EdtTipoFim.Text    := '999999';
end;

end.
