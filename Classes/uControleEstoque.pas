unit uControleEstoque;

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
     Data.DB;

type
  TControleEstoque = class
  private
    ConexaoDB:TZConnection;
    F_ProdutoId:Integer;
    F_Quantidade:Double;
  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function BaixarEstoque: Boolean;
    function RetornarEstoque: Boolean;
  published
    property ProdutoId:Integer     read F_ProdutoId    write F_ProdutoId;
    property Quantidade:Double     read F_Quantidade   write F_Quantidade;
  end;

implementation

{$region 'Constructor and Destructor'}
constructor TControleEstoque.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TControleEstoque.Destroy;
begin

  inherited;
end;
{$endRegion}

function TControleEstoque.BaixarEstoque: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos '+
                '   SET Prod_Qtde = Prod_Qtde - :qtdeBaixa '+
                ' WHERE Prod_Cod=:Prod_Cod ');
    Qry.ParamByName('Prod_Cod').AsInteger  :=ProdutoId;
    Qry.ParamByName('qtdeBaixa').AsFloat   :=Quantidade;
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;


function TControleEstoque.RetornarEstoque: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos '+
                '   SET Prod_Qtde = Prod_Qtde + :qtdeRetorno '+
                ' WHERE Prod_Cod=:Prod_Cod ');
    Qry.ParamByName('Prod_Cod').AsInteger :=ProdutoId;
    Qry.ParamByName('qtdeRetorno').AsFloat :=Quantidade;
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

end.
