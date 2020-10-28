unit uCadastroEmpresa;

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
  TEmpresa = class
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
    F_telefone2: string;
    F_CNPJ: string;
    F_IM: string;
    F_IE: string;
    F_RazaoSocial: string;
    F_Fantasia: string;
    F_CodEmpresa: Integer;
    F_Numero :Integer;
    F_Contato :string;
    public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
  published
    property CodEmpresa    :Integer    read F_CodEmpresa     write F_CodEmpresa;
    property CNPJ          :string     read F_CNPJ           write F_CNPJ;
    property RazaoSocial   :string     read F_RazaoSocial    write F_RazaoSocial;
    property Fantasia      :string     read F_Fantasia       write F_Fantasia;
    property endereco      :string     read F_endereco       write F_endereco;
    property cidade        :string     read F_cidade         write F_cidade;
    property bairro        :string     read F_bairro         write F_bairro;
    property estado        :string     read F_estado         write F_Estado;
    property cep           :string     read F_cep            write F_Cep;
    property telefone1     :string     read F_telefone1      write F_telefone1;
    property telefone2     :string     read F_telefone2      write F_telefone2;
    property email         :string     read F_email          write F_email;
    property IE            :string     read F_IE             write F_IE;
    property IM            :string     read F_IM             write F_IM;
    property Numero        :Integer    read F_Numero         write F_Numero;
    property Contato       :string     read F_COntato        write F_Contato;

  end;

implementation


{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TEmpresa.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TEmpresa.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TEmpresa.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(F_CodEmpresa)+#13+
                'Descri��o: '+F_nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM Empresa '+
                ' WHERE Emp_cod=:Emp_Cod ');
    Qry.ParamByName('Emp_Cod').AsInteger :=CodEmpresa;
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

function TEmpresa.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE EMPRESA '+
                '   SET  EMP_RAZAOSOCIAL   =:RAZAO     '+
                '       ,EMP_FANTASIA       =:FANTASIA  '+
                '       ,EMP_ENDERECO       =:endereco  '+
                '       ,EMP_Cidade         =:cidade    '+
                '       ,EMP_Bairro         =:bairro    '+
                '       ,EMP_UF             =:estado    '+
                '       ,EMP_Cep            =:cep       '+
                '       ,EMP_Telefone1      =:telefone1 '+
                '       ,EMP_Telefone2      =:telefone2 '+
                '       ,EMP_Email          =:email     '+
                '       ,EMP_IE             =:IE        '+
                '       ,EMP_IM             =:IM        '+
                '       ,Emp_Numero         =:Numero    '+
                '       ,Emp_Contato        =:Contato   '+
                '       ,EMP_CNPJ           =:CNPJ      '+
                ' WHERE EMP_Cod=:EMP_Cod ');
    Qry.ParamByName('EMP_COD').AsInteger        :=Self.F_CodEmpresa;
    Qry.ParamByName('RAZAO').AsString           :=Self.F_RazaoSocial;
    Qry.ParamByName('FANTASIA').AsString        :=Self.Fantasia;
    Qry.ParamByName('endereco').AsString        :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString          :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString          :=Self.F_bairro;
    Qry.ParamByName('estado').AsString          :=Self.F_estado;
    Qry.ParamByName('cep').AsString             :=Self.F_cep;
    Qry.ParamByName('telefone1').AsString       :=Self.F_telefone1;
    Qry.ParamByName('telefone2').AsString       :=Self.F_telefone2;
    Qry.ParamByName('email').AsString           :=Self.F_email;
    Qry.ParamByName('IE').AsString              :=Self.F_IE;
    Qry.ParamByName('IM').AsString              :=Self.F_IM;
    Qry.ParamByName('numero').AsInteger         :=Self.F_Numero;
    Qry.ParamByName('Contato').AsString         :=Self.Contato;
    Qry.ParamByName('CNPJ').AsString            :=Self.CNPJ;


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

function TEmpresa.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO EMPRESA (                     '+
                                 '         EMP_RAZAOSOCIAL '+
                                 '        ,EMP_FANTASIA     '+
                                 '        ,EMP_ENDERECO     '+
                                 '        ,EMP_Cidade       '+
                                 '        ,EMP_Bairro       '+
                                 '        ,EMP_UF           '+
                                 '        ,EMP_Cep          '+
                                 '        ,EMP_Telefone1    '+
                                 '        ,EMP_Telefone2    '+
                                 '        ,EMP_Email        '+
                                 '        ,EMP_IE           '+
                                 '        ,EMP_NUMERO       '+
                                 '        ,EMP_IM          '+
                                 '        ,EMP_CONTATO     '+
                                 '        ,EMP_CNPJ)       '+
                          'values(                          '+
                                 '     :RAZAO,     '+
                                 '     :FANTASIA,  '+
                                 '     :endereco,  '+
                                 '     :cidade,    '+
                                 '     :bairro,    '+
                                 '     :estado,    '+
                                 '     :cep,       '+
                                 '     :telefone1, '+
                                 '     :telefone2, '+
                                 '     :email,     '+
                                 '     :IE,        '+
                                 '     :numero,    '+
                                 '     :IM,        '+
                                 '     :CONTATO,'  +
                                 '     :CNPJ)');
    Qry.ParamByName('Razao').AsString            :=Self.F_RazaoSocial;
    Qry.ParamByName('Fantasia').AsString         :=Self.F_Fantasia;
    Qry.ParamByName('endereco').AsString         :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString           :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString           :=Self.F_bairro;
    Qry.ParamByName('estado').AsString           :=Self.F_estado;
    Qry.ParamByName('cep').AsString              :=Self.F_cep;
    Qry.ParamByName('telefone1').AsString        :=Self.F_telefone1;
    Qry.ParamByName('Telefone2').AsString        := Self.F_telefone2;
    Qry.ParamByName('email').AsString            :=Self.F_email;
    Qry.ParamByName('IE').AsString               :=Self.F_IE;
    Qry.ParamByName('Numero').AsInteger          :=Self.F_Numero;
    Qry.ParamByName('IM').AsString               :=Self.F_IM;
    Qry.ParamByName('Contato').AsString          :=Self.Contato;
    Qry.ParamByName('CNPJ').AsString             :=Self.CNPJ;

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

function TEmpresa.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT EMP_Cod,'+
                '       EMP_RAZAOSOCIAL, '+
                '       EMP_FANTASIA, '+
                '       EMP_endereco, '+
                '       EMP_Cidade, '+
                '       EMP_Bairro, '+
                '       EMP_UF, '+
                '       EMP_Cep, '+
                '       EMP_Telefone1, '+
                '       EMP_Telefone2, '+
                '       EMP_Email, '+
                '       EMP_IE, '+
                '       EMP_IM, '+
                '       EMP_Numero,'+
                '       EMP_Contato,'+
                '       EMP_CNPJ'+
                '  FROM EMPRESA   '+
                ' WHERE EMP_Cod=:EMP_Cod');
    Qry.ParamByName('EMP_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_CodEmpresa    := Qry.FieldByName('EMP_Cod').AsInteger;
      Self.F_RazaoSocial   := Qry.FieldByName('EMP_RAZAOSOCIAL').AsString;
      Self.F_Fantasia      := Qry.FieldByName('EMP_FANTASIA').AsString;
      Self.F_endereco      := Qry.FieldByName('EMP_ENDERECO').AsString;
      Self.F_cidade        := Qry.FieldByName('EMP_Cidade').AsString;
      Self.F_bairro        := Qry.FieldByName('EMP_Bairro').AsString;
      Self.F_estado        := Qry.FieldByName('EMP_UF').AsString;
      Self.F_cep           := Qry.FieldByName('EMP_Cep').AsString;
      Self.F_telefone1     := Qry.FieldByName('EMP_Telefone1').AsString;
      Self.F_telefone2     := Qry.FieldByName('EMP_Telefone2').AsString;
      Self.F_email         := Qry.FieldByName('EMP_Email').AsString;
      Self.F_IE            := Qry.FieldByName('EMP_IE').AsString;
      Self.F_IM            := Qry.FieldByName('EMP_IM').AsString;
      Self.F_Numero        := Qry.FieldByName('EMP_Numero').AsInteger;
      Self.Contato         := Qry.FieldByName('EMP_Contato').AsString;
      Self.CNPJ            := Qry.FieldByName('EMP_CNPJ').AsString;

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
