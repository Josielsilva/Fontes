unit uTipoDesp_Rec;

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
  TTipoDecRec = class
  private
    ConexaoDB:TZConnection;
    FCodigo: Integer;
    FTipo: string;
    FDesc: string;
  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
  published
    property Codigo: Integer read FCodigo write FCodigo;
    property Tipo: string read FTipo write FTipo;
    property Desc: string read FDesc write FDesc;
  end;

implementation

{ TTipoDecRec }

function TTipoDecRec.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(FCodigo)+#13+
                'Descri��o: '+Fdesc,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM TIPO_DESPESA_RECEITA '+
                ' WHERE TIPODR_COD=:TIPODR_COD ');
    Qry.ParamByName('TIPODR_COD').AsInteger :=FCodigo;
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

function TTipoDecRec.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE TIPO_DESPESA_RECEITA '+
                '   SET TipoDR_Ti           =:Tipo '+
                '    ,TipoDR_Desc           =:descricao '+
                     ' WHERE TipoDR_Cod     =:TipoDR_Cod ');
    Qry.ParamByName('TipoDR_Ti').AsString    :=Self.FTipo;
    Qry.ParamByName('TipoDR_Desc').AsString   :=Self.FDesc;
    Qry.ParamByName('TipoDR_Cod').AsInteger   :=Self.FCodigo;



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

constructor TTipoDecRec.Create(aConexao: TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TTipoDecRec.Destroy;
begin

  inherited;
end;

function TTipoDecRec.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO TIPO_DESPESA_RECEITA'+
                              '(TipoDR_Tipo, '+
                              ' TipoDR_Desc)'+
                              ' VALUES(:Tipo, '+
                              ':Desc) ');


    Qry.ParamByName('Tipo').AsString     :=Self.FTipo;
    Qry.ParamByName('Desc').AsString     :=Self.FDesc;

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

function TTipoDecRec.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT TipoDR_Tipo, '+
                '       TipoDR_Desc, '+
                '       TipoDR_Cod'+
                '  FROM TIPO_DESPESA_RECEITA '+
                ' WHERE TIPODR_Cod =:TIPODR_Cod');
    Qry.ParamByName('TIPODR_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.FCodigo       := Qry.FieldByName('TIPODR_Cod').AsInteger;
      Self.FTipo         := Qry.FieldByName('TipoDR_Tipo').AsString;
      Self.FDesc         := Qry.FieldByName('TipoDR_Desc').AsString;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

end.
