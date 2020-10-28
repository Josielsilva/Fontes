unit uAtualizacaoCampoMSSQL;

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
     System.SysUtils,
     uAtualizacaoBancoDeDados;

type
  TAtualizacaoCampoMSSQL = class(TAtualizabancoDeDados)

  private
    function CampoExisteNaTabela(aNomeTabela, aCampo: String): Boolean;
    procedure Versao1;

  protected

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;

end;

implementation

{ TAtualizacaoTableMSSQ8L }

constructor TAtualizacaoCampoMSSQL.Create(aConexao: TZConnection);
begin
  ConexaoDB := aConexao;
  Versao1;
end;

destructor TAtualizacaoCampoMSSQL.Destroy;
begin
  inherited;
end;

function TAtualizacaoCampoMSSQL.CampoExisteNaTabela(aNomeTabela: String; aCampo:String): Boolean;
Var Qry:TZQuery;
Begin
  Try
    Result:=False;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' SELECT COUNT(COLUMN_NAME) AS Qtde ');
    Qry.SQL.Add('   FROM INFORMATION_SCHEMA.COLUMNS ');
    Qry.SQL.Add('  WHERE TABLE_NAME =:Tabela ');
    Qry.SQL.Add('    AND COLUMN_NAME=:Campo ');
    Qry.ParamByName('Tabela').AsString:=aNomeTabela;
    Qry.ParamByName('Campo').AsString :=aCampo;
    Qry.Open;

    if Qry.FieldByName('Qtde').AsInteger>0 then
       Result:=True;

  Finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  End;
end;

procedure TAtualizacaoCampoMSSQL.Versao1;
begin

  if not CampoExisteNaTabela('fornecedor','Forn_email') then
  begin
    ExecutaDiretoBancoDeDados('ALTER TABLE fornecedor ADD Forn_email varchar(50) NULL ');
  end;

  if not CampoExisteNaTabela('empresa','Emp_Contato') then
  begin
    ExecutaDiretoBancoDeDados('ALTER TABLE empresa ADD Emp_Contato varchar(50) NULL ');
  end;
end;

end.

