unit uOrcPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  RxToolEdit, Vcl.Mask;

type
  TfrmOrcPorData = class(TForm)
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
  frmOrcPorData: TfrmOrcPorData;

implementation

uses System.DateUtils,uRelProOrcPorData;

{$R *.dfm}

procedure TfrmOrcPorData.btnGravarClick(Sender: TObject);
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

  frmRelOrcPorData := TfrmRelOrcPorData.Create(self);
  try
   frmRelOrcPorData.QryOrcamento.Close;
   frmRelOrcPorData.QryOrcamento.ParamByName('DataInicio').AsDateTime := EdtDataInicio.Date;
   frmRelOrcPorData.QryOrcamento.ParamByName('DataFim').AsDateTime   := EdtDataFinal.Date;
   frmRelOrcPorData.QryOrcamento.Open;
   frmRelOrcPorData.Relatorio.PreviewModal;
  finally
   frmRelOrcPorData.Release;
  end;
  Close;
end;

procedure TfrmOrcPorData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
