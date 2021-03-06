unit uArquivosIni;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Dialogs, ZAbstractConnection,
  ZConnection, uArquivoIni, uFuncoesCryptografia, uDtmPrincipal, ZDbcIntfs,
  System.SysUtils, Vcl.Forms;

function Conexao: Boolean;

implementation

function Conexao: Boolean;
var
  vSenha: string;
begin

  if not FileExists(TArquivoIni.ArquivoIni) then
  begin
    TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MSSQL');
    TArquivoIni.AtualizarIni('SERVER', 'HostName', '.\');
    TArquivoIni.AtualizarIni('SERVER', 'Port', '1433');
    TArquivoIni.AtualizarIni('SERVER', 'User', 'dados_sys');
    TArquivoIni.AtualizarIni('SERVER', 'Password', 'dados_sys@');
    TArquivoIni.AtualizarIni('SERVER', 'Database', 'Dados_sys');
    MessageDlg('Arquivo ' + TArquivoIni.ArquivoIni + ' Criado com sucesso' + #13 + 'Configure o arquivo antes de inicializar aplica��o', MtInformation, [mbok], 0);
    result := False;
  end
  else
  begin
    vSenha := DesCriptografia(TArquivoIni.LerIni('SERVER', 'Password'));
    if UpperCase(vSenha) <> UpperCase('@sys_sodad') then
    begin
      MessageDlg('Senha do banco de dados incorreta! ', mtInformation, [mbOK], 0);
      Exit;
    end;

    DtmPrincipal := TDtmPrincipal.Create(nil);     //Instancia o DataModule
    with DtmPrincipal.ConexaoDB do
    begin
      SQLHourGlass := False;    //Habilita o Cursor em cada transa��o no banco de dados
      LibraryLocation := ExtractFilePath(Application.ExeName) + 'ntwdblib.dll';  //Seta a DLL para conexao do SQL
      if TArquivoIni.LerIni('SERVER', 'TipoDataBase') = 'MSSQL' then
        Protocol := 'mssql';  //Protocolo do banco de dados

      HostName := TArquivoIni.LerIni('SERVER', 'HostName'); //Instancia do SQLServer
      Port := StrToInt(TArquivoIni.LerIni('SERVER', 'Port'));  //Porta do SQL Server
      User := TArquivoIni.LerIni('SERVER', 'User');  //Usuario do Banco de Dados
      Password := Trim(vSenha);  //Senha do Usu�rio do banco
      Database := TArquivoIni.LerIni('SERVER', 'DataBase');//Nome do Banco de Dados
      AutoCommit := True;
      TransactIsolationLevel := tiReadCommitted;
      Connected := True;  //Faz a Conex�o do Banco
    end;
    Result := True;
  end;

end;

end.

