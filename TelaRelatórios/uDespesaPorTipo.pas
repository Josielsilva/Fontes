unit uDespesaPorTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  RxToolEdit, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmDespesaPorTipo = class(TForm)
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
  frmDespesaPorTipo: TfrmDespesaPorTipo;

implementation

uses uRelDespesaPorTipo;

{$R *.dfm}

procedure TfrmDespesaPorTipo.btnGravarClick(Sender: TObject);
begin
  if StrToInt(EdtTipoInicio.text) > StrToInt(EdtTipoFim.Text) then begin
    MessageDlg('Cliente Final n�o pode ser menor que  Cliente inicio',mtInformation,[mbok],0);
    EdtTipoFim.SetFocus;
    abort;
  end;

  if (StrToInt(EdtTipoInicio.text)=0) OR (StrToInt(EdtTipoFim.Text)=0) then begin
    MessageDlg('Cliente Inicial ou Final s�o campo obrigat�rio',MtInformation,[mbok],0);
    EdtTipoInicio.SetFocus;
    abort;
  end;

  frmRelDespesaPorTipo := TfrmRelDespesaPorTipo.Create(self);
  try
   frmRelDespesaPorTipo.QryDespesa.Close;
   frmRelDespesaPorTipo.QryDespesa.ParamByName('TipoInicio').AsInteger := StrToInt(EdtTipoInicio.Text);
   frmRelDespesaPorTipo.QryDespesa.ParamByName('TipoFim').AsInteger    := StrToInt(EdtTipoFim.Text);
   frmRelDespesaPorTipo.QryDespesa.Open;
   frmRelDespesaPorTipo.Relatorio.PreviewModal;
  finally
   frmRelDespesaPorTipo.Release;
  end;
  Close;
end;

procedure TfrmDespesaPorTipo.FormShow(Sender: TObject);
begin
  EdtTipoInicio.Text := '1';
  EdtTipoFim.Text    := '999999';
end;

end.
