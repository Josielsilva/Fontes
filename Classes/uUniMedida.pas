unit uUniMedida;

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
  TUnidadeMedida = class
  private
    ConexaoDB:TZConnection;
    F_UniMed_cod: Integer;
    F_UniMed_Nome: string;
    F_UniMed_Descricao: string;
  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
  published
    property UniMed_cod: Integer read F_UniMed_cod write F_UniMed_cod;
    property UniMed_Nome: string read F_UniMed_Nome write F_UniMed_Nome;
    property UniMed_Descricao: string read F_UniMed_Descricao write F_UniMed_Descricao;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TUnidadeMedida.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TUnidadeMedida.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TUnidadeMedida.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_UniMed_cod)+#13+
                'Descrição: '+F_UniMed_Nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM UNIDADE_DE_MEDIDA '+
                ' WHERE UniMedida_Cod=:UniMedida_Cod ');
    Qry.ParamByName('UniMedida_Cod').AsInteger :=F_UniMed_cod;
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

function TUnidadeMedida.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE UNIDADE_DE_MEDIDA '+
                '   SET UniMedida_Nome         =:nome '+
                '       ,UniMedida_Descricao   =:descricao '+
                       ' WHERE Grupo_Cod       =:Grupo_Cod ');
    Qry.ParamByName('Grupo_Cod').AsInteger       :=Self.F_UniMed_cod;
    Qry.ParamByName('nome').AsString           :=Self.UniMed_Nome;
    Qry.ParamByName('descricao').AsString        :=Self.UniMed_Descricao;



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

function TUnidadeMedida.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO UNIDADE_DE_MEDIDA (UniMedida_Nome, '+
                '                              UniMedida_Descricao)' +
                ' VALUES              (:nome, '+
                '                      :descricao)') ;

    Qry.ParamByName('nome'     ).AsString     :=Self.F_UniMed_Nome;
    Qry.ParamByName('descricao').AsString     :=Self.F_UniMed_Descricao;


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

function TUnidadeMedida.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT UniMedida_Cod,'+
                '       UniMedida_nome, '+
                '       UniMedida_descricao, '+
                '  FROM UNIDADE_DE_MEDIDA '+
                ' WHERE UniMedida_Cod=:UniMedida_Cod');
    Qry.ParamByName('Grupo_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_UniMed_cod           := Qry.FieldByName('UniMedida_Cod').AsInteger;
      Self.F_UniMed_Nome          := Qry.FieldByName('UniMedida_nome').AsString;
      Self.F_UniMed_Descricao     := Qry.FieldByName('UniMedida_descricao').AsString;
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
