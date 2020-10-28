unit uBackupRestore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.ExtCtrls, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,uDtmPrincipal;

type
  TfrmBackupRestore = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Label1: TLabel;
    edtCaminho: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    edtCaminhoRestore: TEdit;
    Label4: TLabel;
    qryBackupRestore: TZQuery;
    OpdCaminhoBanco: TOpenDialog;
    mmRestore: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackupRestore: TfrmBackupRestore;

implementation

{$R *.dfm}

procedure TfrmBackupRestore.Button1Click(Sender: TObject);
begin
  edtCaminho.Text := 'C:\sistema\BackupDados';
  try
    qryBackupRestore.SQL.Clear;
    qryBackupRestore.SQL.Add('backup database dados_sys to disk = ' + QuotedStr('C:\sistema\BackupDados\bkpDados_sys.bak'));
    qryBackupRestore.ExecSQL;
    MessageBox(Handle, 'Backup efetuado com sucesso!', 'Backup e Restore', MB_iconinformation + MB_OK);
  except
    MessageBox(Handle, 'Erro ao gerar o backup!', 'Backup e Restore', MB_iconinformation + MB_OK);
  end;
end;

procedure TfrmBackupRestore.Button2Click(Sender: TObject);
var vBanco : String;
begin
   if OpdCaminhoBanco.execute then
   begin
     vBanco := OpdCaminhoBanco.FileName;
     edtCaminhoRestore.Text := vBanco;
   end;

   try
    qryBackupRestore.SQL.Clear;
    qryBackupRestore.SQL.Add('restore database dados_sys from disk = ' + QuotedStr(vBanco));
    qryBackupRestore.ExecSQL;
    MessageBox(Handle, 'Restore efetuado com sucesso!', 'Backup e Restore', MB_iconinformation + MB_OK);
  except
    MessageBox(Handle, 'Erro ao restaurar banco de dados!', 'Backup e Restore', MB_iconinformation + MB_OK);
  end;

  mmRestore.Lines.Add('');
  mmRestore.Lines.Add('Verifica se os arquivos MDF e LDF estão na pasta padrão do SQLSERVER.');
  mmRestore.Lines.Add('EX. C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA');
end;

procedure TfrmBackupRestore.FormShow(Sender: TObject);
begin
 mmRestore.Lines.Add('');
 edtCaminho.text := '';
 edtCaminhoRestore.text := '';
end;

end.

