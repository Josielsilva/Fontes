unit uCadCliente;

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
  TCadCliente = class
  private
    ConexaoDB:TZConnection;
    F_clienteId:Integer;  //Int
    F_nome:String; //VarChar
    F_endereco: string;
    F_cidade:String;
    F_bairro: String;
    F_estado: string;
    F_cep: String;
    F_telefone1: string;
    F_email: string;
    F_dataNascimento: TDateTime;
    F_telefone2: string;

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
  published
    property codigo        :Integer    read F_clienteId      write F_clienteId;
    property nome          :string     read F_nome           write F_nome;
    property endereco      :string     read F_endereco       write F_endereco;
    property cidade        :string     read F_cidade         write F_cidade;
    property bairro        :string     read F_bairro         write F_bairro;
    property estado        :string     read F_estado         write F_Estado;
    property cep           :string     read F_cep            write F_Cep;
    property telefone1      :string     read F_telefone1       write F_telefone1;
    property telefone2      :string     read F_telefone2       write F_telefone2;
    property email         :string     read F_email          write F_email;
    property dataNascimento:TDateTime  read F_dataNascimento write F_dataNascimento;
  end;

implementation


{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TCadCliente.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TCadCliente.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TCadCliente.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_clienteId)+#13+
                'Descrição: '+F_nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM clientes '+
                ' WHERE Cli_Cod=:Cli_Cod ');
    Qry.ParamByName('Cli_Cod').AsInteger :=F_clienteId;
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

function TCadCliente.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE clientes '+
                '   SET Cli_Nome            =:nome '+
                '       ,Cli_Logradouro     =:endereco '+
                '       ,Cli_Cidade         =:cidade '+
                '       ,Cli_Bairro         =:bairro '+
                '       ,Cli_UF             =:estado '+
                '       ,Cli_Cep            =:cep '+
                '       ,Cli_Telefone1      =:telefone1 '+
                '       ,Cli_Telefone2      =:telefone2 '+
                '       ,Cli_Email          =:email '+
                '       ,Cli_DataNascimento =:dataNascimento '+
                ' WHERE Cli_Cod=:Cli_Cod ');
    Qry.ParamByName('Cli_Cod').AsInteger       :=Self.F_clienteId;
    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('endereco').AsString         :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString           :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString           :=Self.F_bairro;
    Qry.ParamByName('estado').AsString           :=Self.F_estado;
    Qry.ParamByName('cep').AsString              :=Self.F_cep;
    Qry.ParamByName('telefone1').AsString         :=Self.F_telefone1;
    Qry.ParamByName('telefone2').AsString         :=Self.F_telefone2;
    Qry.ParamByName('email').AsString            :=Self.F_email;
    Qry.ParamByName('dataNascimento').AsDateTime :=Self.F_dataNascimento;


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

function TCadCliente.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO clientes (Cli_Nome, '+
                '                      cli_Logradouro, '+
                '                      Cli_Cidade,  '+
                '                      Cli_Bairro,  '+
                '                      Cli_UF, '+
                '                      Cli_Cep, '+
                '                      Cli_Telefone1, '+
                '                      Cli_Telefone2, '+
                '                      Cli_Email, '+
                '                      Cli_DataNascimento) '+
                ' VALUES              (:nome, '+
                '                      :endereco, '+
                '                      :cidade,  '+
                '                      :bairro,  '+
                '                      :estado, '+
                '                      :cep, '+
                '                      :telefone1, '+
                '                      :telefone2, '+
                '                      :email, '+
                '                      :datanascimento)' );

    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('endereco').AsString         :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString           :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString           :=Self.F_bairro;
    Qry.ParamByName('estado').AsString           :=Self.F_estado;
    Qry.ParamByName('cep').AsString              :=Self.F_cep;
    Qry.ParamByName('telefone1').AsString         :=Self.F_telefone1;
    Qry.ParamByName('Telefone2').AsString        := Self.F_telefone2;
    Qry.ParamByName('email').AsString            :=Self.F_email;
    Qry.ParamByName('dataNascimento').AsDateTime :=Self.F_dataNascimento;

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

function TCadCliente.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Cli_Cod,'+
                '       Cli_Nome, '+
                '       Cli_Logradouro, '+
                '       Cli_Cidade, '+
                '       Cli_Bairro, '+
                '       Cli_UF, '+
                '       Cli_Cep, '+
                '       Cli_Telefone1, '+
                '       Cli_Telefone2, '+
                '       Cli_Email, '+
                '       Cli_DataNascimento '+
                '  FROM clientes '+
                ' WHERE Cli_Cod=:Cli_Cod');
    Qry.ParamByName('Cli_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_clienteId     := Qry.FieldByName('Cli_Cod').AsInteger;
      Self.F_nome          := Qry.FieldByName('Cli_Nome').AsString;
      Self.F_endereco      := Qry.FieldByName('Cli_Logradouro').AsString;
      Self.F_cidade        := Qry.FieldByName('Cli_Cidade').AsString;
      Self.F_bairro        := Qry.FieldByName('Cli_Bairro').AsString;
      Self.F_estado        := Qry.FieldByName('Cli_UF').AsString;
      Self.F_cep           := Qry.FieldByName('Cli_Cep').AsString;
      Self.F_telefone1      := Qry.FieldByName('Cli_Telefone1').AsString;
      Self.F_telefone2     := Qry.FieldByName('Cli_Telefone2').AsString;
      Self.F_email         := Qry.FieldByName('Cli_Email').AsString;
      Self.F_dataNascimento:= Qry.FieldByName('Cli_DataNascimento').AsDateTime;

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
