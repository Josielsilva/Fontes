unit uVendaPorCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  RxToolEdit, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmVendCliente = class(TForm)
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
  frmVendCliente: TfrmVendCliente;

implementation

uses uRelProVendaPorCliente;

{$R *.dfm}

procedure TfrmVendCliente.btnGravarClick(Sender: TObject);
begin
  if StrToInt(EdtClienteInicio.text) > StrToInt(EdtClienteFim.Text) then begin
    MessageDlg('Cliente Final n�o pode ser menor que  Cliente inicio',mtInformation,[mbok],0);
    EdtClienteFim.SetFocus;
    abort;
  end;

  if (StrToInt(EdtClienteInicio.text)=0) OR (StrToInt(EdtClienteFim.Text)=0) then begin
    MessageDlg('Cliente Inicial ou Final s�o campo obrigat�rio',MtInformation,[mbok],0);
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

procedure TfrmVendCliente.FormShow(Sender: TObject);
begin
  EdtClienteInicio.Text := '1';
  EdtClienteFim.Text    := '999999';
end;

end.
