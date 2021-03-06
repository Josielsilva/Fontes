unit uRespesaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  RxToolEdit, Vcl.Mask;

type
  TfrmDespesaPorData = class(TForm)
    EdtDataInicio: TDateEdit;
    Label3: TLabel;
    EdtDataFinal: TDateEdit;
    Label1: TLabel;
    btnGravar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDespesaPorData: TfrmDespesaPorData;

implementation

uses System.DateUtils,uRelProVendaPorData;

{$R *.dfm}

procedure TfrmDespesaPorData.btnGravarClick(Sender: TObject);
begin
  if (EdtDataFinal.Date) < (EdtDataInicio.Date) then begin
    MessageDlg('Data Final n�o pode ser maior que a data inicio',mtInformation,[mbok],0);
    EdtDataFinal.SetFocus;
    abort;
  end;

  if (EdtDataFinal.Date=0) OR (EdtDataInicio.Date=0) then begin
    MessageDlg('Data Inicial ou Final s�o campo obrigat�rio',MtInformation,[mbok],0);
    EdtDataInicio.SetFocus;
    abort;
  end;

  frmRelProVendaPorData := TfrmRelProVendaPorData.Create(self);
  try
   frmRelProVendaPorData.QryVenda.Close;
   frmRelProVendaPorData.QryVenda.ParamByName('DataInicio').AsDateTime := EdtDataInicio.Date;
   frmRelProVendaPorData.QryVenda.ParamByName('DataFim').AsDateTime   := EdtDataFinal.Date;
   frmRelProVendaPorData.QryVenda.Open;
   frmRelProVendaPorData.Relatorio.PreviewModal;
  finally
   frmRelProVendaPorData.Release;
  end;
  Close;
end;

procedure TfrmDespesaPorData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
