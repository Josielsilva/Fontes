unit uFuncaoLogin;

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
     uFuncoesCryptografia;

type
  TUsuario = class
  private
    ConexaoDB:TZConnection;
    F_Codigo:Integer;
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
    property codigo        :Integer    read F_Codigo      write F_Codigo;
    property nome          :string     read F_nome           write F_nome;
    property senha         :string     read getSenha         write setSenha;
    property Login         :string     read F_Login          write F_Login;
    property Setor         :string     read F_Setor          write F_Setor;
    property Tipo          :string     read F_Tipo          write F_Tipo;
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
                'Código: '+IntToStr(F_Codigo)+#13+
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
                ' WHERE acesso_id=:acesso_id ');
    Qry.ParamByName('acesso_id').AsInteger :=F_Codigo;
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;
//
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
                '       ,Login         =:Login'+
                '       ,Tipo          =:Tipo'+
                '       ,Setor         =:Setor'+
                ' WHERE acesso_id=:acesso_id ');
    Qry.ParamByName('acesso_id').AsInteger     :=Self.F_Codigo;
    Qry.ParamByName('nome').AsString           :=Self.F_nome;
    Qry.ParamByName('senha').AsString          :=Self.F_Senha;
    Qry.ParamByName('Login').AsString          :=Self.F_Login;
    Qry.ParamByName('Tipo').AsString           :=Self.F_Tipo;
    Qry.ParamByName('Setor').AsString          :=Self.F_Setor;

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
    Qry.SQL.Add('INSERT INTO acesso   (nome, '+
                '                      senha,'+
                '                      Login,'+
                '                      Tipo,'+
                '                      Setor)'+
                ' VALUES              (:nome, '+
                '                      :senha,'+
                '                      :Login,'+
                '                      :Tipo, '+
                '                      :Setor)');

    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('senha').AsString            :=Self.F_senha;
    Qry.ParamByName('Login').AsString            :=Self.F_Login;
    Qry.ParamByName('Tipo').AsString             :=Self.F_Tipo;
    Qry.ParamByName('Setor').AsString            :=Self.F_Setor;


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
    Qry.SQL.Add('SELECT acesso_id,'+
                '       nome, '+
                '       senha, '+
                '       Login,'+
                '       tipo,'+
                '       setor'+
                '  FROM Acesso '+
                ' WHERE acesso_id=:acesso_id');
    Qry.ParamByName('acesso_id').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_Codigo        := Qry.FieldByName('acesso_id').AsInteger;
      Self.F_nome          := Qry.FieldByName('nome').AsString;
      Self.F_Senha         := Qry.FieldByName('senha').AsString;
      Self.F_Login         := Qry.FieldByName('Login').AsString;
      Self.F_Tipo          := Qry.FieldByName('tipo').AsString;
      Self.F_Setor         := Qry.FieldByName('setor').AsString;
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
    Qry.SQL.Add('SELECT COUNT(Senha_id) AS Qtde '+
                '  FROM login '+
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
  Result := Descriptografia(Self.F_senha);
end;

procedure TUsuario.setSenha(const Value: String);
begin
  Self.F_senha := Criptografia(Value);
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
    Qry.SQL.Add('SELECT Acesso_id, '+
                '       Login, '+
                '       senha, '+
                '       nome '+
                '  FROM acesso '+
                ' WHERE login =:login '+
                '   AND senha=:Senha');
    Qry.ParamByName('login').AsString :=aUsuario;
    Qry.ParamByName('senha').AsString:=Criptografia(aSenha);
    Try
      Qry.Open;

      if Qry.FieldByName('Acesso_id').AsInteger>0 then begin
         result := true;
         F_Login    := Qry.FieldByName('Login').AsString;
         F_nome     := Qry.FieldByName('Nome').AsString;
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
    Qry.SQL.Add('UPDATE Acesso '+
                '   SET  nome          =:nome '+
                '       ,senha         =:senha '+
                '       ,Login         =:Login'+
                '       ,tipo          =:Tipo'+
                '       ,Setor         =:Setor'+
                ' WHERE acesso_id=:acesso_id ');
    Qry.ParamByName('acesso_id').AsInteger       :=Self.F_Codigo;
    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('senha').AsString            :=Self.F_Senha;
    Qry.ParamByName('Login').AsString            :=Self.F_Login;
    Qry.ParamByName('Tipo').AsString             :=Self.F_Tipo;
    Qry.ParamByName('Setor').AsString            :=Self.F_Setor;

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
