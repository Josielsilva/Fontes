unit uAtualizacaobancoDeDados;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils;


type TAtualizabancoDeDados = class
  private

  public
  ConexaoDB:TZConnection;
  constructor Create(aConecao:TZConnection);
  procedure ExecutaDiretoBancoDeDados(aScript:string);

end;

type
TAtualizabancoDadosMSSQL = class
  private
  ConexaoDB : TZConnection;
  public
  function AtualizaBancoDeDadosMSSQL :Boolean;
  constructor Create (aConexao:TZConnection);
end;

implementation

uses uAtualizacaoTablelaMSSQL,uAtualizacaoCampoMSSQL;

{ AutualizabancoDeDos }

constructor TAtualizabancoDeDados.Create(aConecao: TZConnection);
begin
  ConexaoDB :=aConecao;
end;

procedure TAtualizabancoDeDados.ExecutaDiretoBancoDeDados(aScript: string);
var Qry :TZQuery;
begin
  try
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(aScript);
    try
     ConexaoDB.StartTransaction;
     Qry.ExecSQL;
     ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
    end;
  finally
    Qry.Close;
    if Assigned(Qry) then
    FreeAndNil(qry);

  end;
end;

{ TAtualizabancoDadosMSSQL }

function TAtualizabancoDadosMSSQL.AtualizaBancoDeDadosMSSQL: Boolean;
var vAtualizarBD:TAtualizabancoDeDados;
    vTabela: TAtualizacaoTabelaMSSQL;
    vCampo: TAtualizacaoCampoMSSQL;
begin
 try
   vAtualizarBD := TAtualizabancoDeDados.Create(ConexaoDB);
    vTabela:= TAtualizacaoTabelaMSSQL.Create(ConexaoDB);
    vCampo:= TAtualizacaoCampoMSSQL.Create(ConexaoDB);
 finally
   FreeAndNil(vAtualizarBD);
   FreeAndNil(vTabela);
   FreeAndNil(vCampo);
 end;
end;

constructor TAtualizabancoDadosMSSQL.Create(aConexao: TZConnection);
begin
 ConexaoDB := aConexao;
end;

end.
