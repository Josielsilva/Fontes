unit uCadUsuario;

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
     uFuncaoCriptografia;

type
  TUsuario = class
  private
    ConexaoDB:TZConnection;
    F_codigo:Integer;
    F_nome:String;
    F_senha: string;
    F_Login : string;
    F_Setor : string;
    F_Tipo  : string;
    function getSenha: String;
    procedure setSenha(const Value: String);

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
    function Logar(aUsuario, aSenha: String): Boolean;
    function UsuarioExiste(aUsuario: String): Boolean;
    function AlterarSenha: Boolean;

  published
    property codigo        :Integer    read F_codigo      write F_codigo;
    property nome          :string     read F_nome           write F_nome;
    property senha         :string     read getSenha         write setSenha;
    property Login         :string     read F_Login          write F_Login;
    property Setor         :string     read F_Setor          write F_Setor;
    property Tipo         :string     read F_Tipo          write F_Tipo;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TUsuario.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TUsuario.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TUsuario.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_codigo)+#13+
                'Nome: '  +F_nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM acesso '+
                ' WHERE Id_Senha=:Id_Senha ');
    Qry.ParamByName('Id_Senha').AsInteger :=F_codigo;
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

function TUsuario.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE Acesso '+
                '   SET  nome          =:nome '+
                '       ,senha         =:senha '+
                '       ,AcessoId      =:Login'+
                ' WHERE Id_Senha=:Id_Senha ');
    Qry.ParamByName('Id_Senha').AsInteger        :=Self.F_Codigo;
    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('senha').AsString            :=Self.F_Senha;
    Qry.ParamByName('Login').AsString          :=Self.F_Login;

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

function TUsuario.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO usuarios (nome, '+
                '                      senha,'+
                '                      AcessoId )'+
                ' VALUES              (:nome, '+
                '                      :senha,'+
                '                      :Login )' );

    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('senha').AsString            :=Self.F_senha;
    Qry.ParamByName('Login').AsString            :=Self.F_Login;

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

function TUsuario.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Id_Senha,'+
                '       nome, '+
                '       senha, '+
                '       AcessoId'+
                '  FROM Acesso '+
                ' WHERE Id_Senha=:Id_Senha');
    Qry.ParamByName('usuarioId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_Codigo        := Qry.FieldByName('AcessoId').AsInteger;
      Self.F_nome          := Qry.FieldByName('nome').AsString;
      Self.F_Senha         := Qry.FieldByName('senha').AsString;
      Self.F_Login         := Qry.FieldByName('AcessoId').AsString;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TUsuario.UsuarioExiste(aUsuario:String):Boolean;
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT COUNT(AcessoId) AS Qtde '+
                '  FROM Acesso '+
                ' WHERE nome =:nome ');
    Qry.ParamByName('nome').AsString :=aUsuario;
    Try
      Qry.Open;

      if Qry.FieldByName('Qtde').AsInteger>0 then
         result := true
      else
         result := false;

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{$endregion}

{$region 'GET E SET'}

function TUsuario.getSenha: String;
begin
  Result := Descriptografar(Self.F_senha);
end;

procedure TUsuario.setSenha(const Value: String);
begin
  Self.F_senha := Criptografar(Value);
end;
{$endregion}

{$region 'LOGIN'}
function TUsuario.Logar(aUsuario:String; aSenha:String):Boolean;
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT usuarioId, '+
                '       nome, '+
                '       senha '+
                '  FROM usuarios '+
                ' WHERE nome =:nome '+
                '   AND senha=:Senha');
    Qry.ParamByName('nome').AsString :=aUsuario;
    Qry.ParamByName('senha').AsString:=Criptografar(aSenha);
    Try
      Qry.Open;

      if Qry.FieldByName('usuarioId').AsInteger>0 then begin
         result := true;
         F_usuarioId:= Qry.FieldByName('usuarioId').AsInteger;
         F_nome     := Qry.FieldByName('nome').AsString;
         F_senha    := Qry.FieldByName('senha').AsString;
      end
      else
         result := false;

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;
{$endregion}

{$region 'ALTERAÇÃO DE SENHA'}
function TUsuario.AlterarSenha: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE usuarios '+
                '   SET senha =:senha '+
                ' WHERE usuarioId=:usuarioId ');
    Qry.ParamByName('usuarioId').AsInteger       :=Self.F_usuarioId;
    Qry.ParamByName('senha').AsString            :=Self.F_Senha;

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

{$endregion}

end.
