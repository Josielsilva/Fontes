unit uVendaPorCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  RxToolEdit, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmVendaCliente = class(TForm)
    btnGravar: TBitBtn;
    Panel1: TPanel;
    edtClienteInicio: TLabeledEdit;
    EdtClienteFim: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaCliente: TfrmVendaCliente;

implementation

uses uRelProVendaPorCliente;

{$R *.dfm}

procedure TfrmVendaCliente.btnGravarClick(Sender: TObject);
begin
  if StrToInt(EdtClienteInicio.text) < StrToInt(EdtClienteFim.Text) then begin
    MessageDlg('Data Final n�o pode ser maior que a data inicio',mtInformation,[mbok],0);
    EdtClienteFim.SetFocus;
    abort;
  end;

  if (StrToInt(EdtClienteInicio.text)=0) OR (StrToInt(EdtClienteFim.Text)=0) then begin
    MessageDlg('Data Inicial ou Final s�o campo obrigat�rio',MtInformation,[mbok],0);
    EdtClienteInicio.SetFocus;
    abort;
  end;

  frmRelVendaPorCliente := TfrmRelVendaPorCliente.Create(self);
  try
   frmRelVendaPorCliente.QryVenda.Close;
   frmRelVendaPorCliente.QryVenda.ParamByName('ClienteIni').AsInteger := StrToInt(EdtClienteInicio.Text);
   frmRelVendaPorCliente.QryVenda.ParamByName('ClienteFim').AsInteger    := StrToInt(EdtClienteFim.Text);
   frmRelVendaPorCliente.QryVenda.Open;
   frmRelVendaPorCliente.Relatorio.PreviewModal;
  finally
   frmRelVendaPorCliente.Release;
  end;
  Close;
end;

procedure TfrmVendaCliente.FormShow(Sender: TObject);
begin
  EdtClienteInicio.Text := '1';
  EdtClienteFim.Text    := '999999';
end;

end.
