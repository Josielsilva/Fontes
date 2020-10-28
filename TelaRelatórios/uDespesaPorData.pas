unit uDespesaPorData;

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

uses System.DateUtils,uRelDespesaPorData;

{$R *.dfm}

procedure TfrmDespesaPorData.btnGravarClick(Sender: TObject);
begin
  if (EdtDataFinal.Date) < (EdtDataInicio.Date) then begin
    MessageDlg('Data Final não pode ser maior que a data inicio',mtInformation,[mbok],0);
    EdtDataFinal.SetFocus;
    abort;
  end;

  if (EdtDataFinal.Date=0) OR (EdtDataInicio.Date=0) then begin
    MessageDlg('Data Inicial ou Final são campo obrigatório',MtInformation,[mbok],0);
    EdtDataInicio.SetFocus;
    abort;
  end;

  frmRelDespesaPorData := TfrmRelDespesaPorData.Create(self);
  try
   frmRelDespesaPorData.QryDespesa.Close;
   frmRelDespesaPorData.QryDespesa.ParamByName('DataInicio').AsDateTime := EdtDataInicio.Date;
   frmRelDespesaPorData.QryDespesa.ParamByName('DataFim').AsDateTime   := EdtDataFinal.Date;
   frmRelDespesaPorData.QryDespesa.Open;
   frmRelDespesaPorData.Relatorio.PreviewModal;
  finally
   frmRelDespesaPorData.Release;
  end;
  Close;
end;

procedure TfrmDespesaPorData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
