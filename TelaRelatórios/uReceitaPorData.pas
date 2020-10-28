unit uReceitaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  RxToolEdit, Vcl.Mask;

type
  TfrmReceitaPorData = class(TForm)
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
  frmReceitaPorData: TfrmReceitaPorData;

implementation

uses System.DateUtils,uRelReceitaPorData;

{$R *.dfm}

procedure TfrmReceitaPorData.btnGravarClick(Sender: TObject);
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

  frmRelReceitaPorData := TfrmRelReceitaPorData.Create(self);
  try
   frmRelReceitaPorData.QryReceita.Close;
   frmRelReceitaPorData.QryReceita.ParamByName('DataInicio').AsDateTime := EdtDataInicio.Date;
   frmRelReceitaPorData.QryReceita.ParamByName('DataFim').AsDateTime   := EdtDataFinal.Date;
   frmRelReceitaPorData.QryReceita.Open;
   frmRelReceitaPorData.Relatorio.PreviewModal;
  finally
   frmRelReceitaPorData.Release;
  end;
  Close;
end;

procedure TfrmReceitaPorData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
