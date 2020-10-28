unit uSubGrupo;

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
type
  TSubGrupo = class
  private
    ConexaoDB:TZConnection;
    F_SubGrupo_cod: Integer;
    F_SubGrupo_Nome: string;
    F_SubGrupo_Descricao: string;
    F_Grupo_cod :Integer;
  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
  published
    property SubGrupo_cod: Integer read F_SubGrupo_cod write F_SubGrupo_cod;
    property SubGrupo_Nome: string read F_SubGrupo_Nome write F_SubGrupo_Nome;
    property SubGrupo_Descricao: string read F_SubGrupo_Descricao write F_SubGrupo_Descricao;
    property Grupo_Cod :Integer read F_Grupo_cod write F_Grupo_cod;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TSubGrupo.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TSubGrupo.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TSubGrupo.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(F_SubGrupo_cod)+#13+
                'Descri��o: '+F_SubGrupo_Nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM SubGRUPO '+
                ' WHERE SubGRUPO_COD=:SubGRUPO_COD ');
    Qry.ParamByName('SubGRUPO_COD').AsInteger :=F_SubGrupo_cod;
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

function TSubGrupo.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE SUBGRUPO '+
                '   SET SubGrupo_nome          =:nome '+
                '       ,SubGrupo_descriccao   =:descricao, '+
                '       ,SubGrupo_Grupo_Cod    =:Grupo_Cod '+
                       ' WHERE SubGrupo_Cod    =:SubGrupo_Cod ');
    Qry.ParamByName('Grupo_Cod').AsInteger       :=Self.F_SubGrupo_cod;
    Qry.ParamByName('nome').AsString             :=Self.SubGrupo_Nome;
    Qry.ParamByName('descricao').AsString        :=Self.SubGrupo_Descricao;
    Qry.ParamByName('Grupo_Cod').AsInteger       :=Self.F_Grupo_cod;



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

function TSubGrupo.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO SubGrupo (SubGrupo_Nome, '+
                '                      SubGrupo_Descricao,'+
                '                      SubGrupo_GrupoId )' +
                ' VALUES              (:nome, '+
                '                      :descricao, '+
                '                      :Grupo_Cod )') ;

    Qry.ParamByName('nome'     ).AsString     :=Self.F_SubGrupo_Nome;
    Qry.ParamByName('descricao').AsString     :=Self.F_SubGrupo_Descricao;
    Qry.ParamByName('Grupo_cod').AsInteger    :=Self.F_Grupo_cod;


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

function TSubGrupo.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT SubGrupo_Cod,'+
                '       subGrupo_nome, '+
                '       SubGrupo_descricao, '+
                '       SubGrupo_Grupo_cod'+
                '  FROM produtos '+
                ' WHERE SubGrupo_Cod=:SubGrupo_Cod');
    Qry.ParamByName('SubGrupo_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_SubGrupo_cod           := Qry.FieldByName('SubGrupo_Cod').AsInteger;
      Self.F_SubGrupo_Nome          := Qry.FieldByName('SubGrupo_nome').AsString;
      Self.F_SubGrupo_Descricao     := Qry.FieldByName('SubGrupo_descricao').AsString;
      Self.F_SubGrupo_cod           := Qry.FieldByName('SubGrupo_Grupo_Cod').AsInteger;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;
{$endregion}

end.