unit uAtualizacaoTablelaMSSQL;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.Dialogs, ZAbstractConnection,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset, System.SysUtils,
  uAtualizacaobancoDeDados;

type
  TAtualizacaoTabelaMSSQL = class(TAtualizabancoDeDados)
  private
    function tabelaExiste(aNomeTabela: string): Boolean;
    procedure Clientes;
    procedure UsuariosAcaoAcesso;
    procedure AcaoAcesso;
    procedure Acesso;
    procedure Despesa;
    procedure Receita;
    procedure TipoDespesaREceita;
    procedure Empresa;
    procedure Venda;
    procedure VendaItens;
    procedure Fornecedor;

  protected
  public
    constructor Create(vConecao: TZConnection);
    destructor Destroy; override;
  end;

implementation

{ TAtualizacaoTabelaMSSQL }

constructor TAtualizacaoTabelaMSSQL.Create(vConecao: TZConnection);
begin
  ConexaoDB := vConecao;
  Clientes;
  Acesso;
  AcaoAcesso;
  UsuariosAcaoAcesso;
  TipoDespesaREceita;
  Despesa;
  Receita;
  Venda;
  VendaItens;
  AcaoAcesso;
  Empresa;
  Fornecedor;
end;

destructor TAtualizacaoTabelaMSSQL.Destroy;
begin

  inherited;
end;

procedure TAtualizacaoTabelaMSSQL.Empresa;
begin
   if not TabelaExiste('Empresa') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE Empresa ( ' +
                              'Emp_Cod int identity not null,' +
                              'EMP_CNPJ varchar(20) Null,'+
                              'EMP_RAZAOSOCIAL varchar(100) Null,' +
                              'EMP_FANTASIA varchar(50) Null,' +
                              'EMP_ENDERECO Varchar(50) Null,' +
                              'Emp_Numero int Null,' +
                              'Emp_Cep Varchar(9) Null,' +
                              'EMP_Bairro Varchar(20) Null,' +
                              'Emp_UF Varchar(2) Null,' +
                              'EMP_Cidade varchar(20) Null,' +
                              'Emp_Telefone1 Varchar(15) Null,' +
                              'Emp_Telefone2 Varchar(15) Null,' +
                              'EMP_IE Varchar(20) Null,' +
                              'EMP_IM Varchar(20) Null,' +
                              'EMP_Email Varchar(50) Null,' +
                              'PRIMARY KEY (Emp_Cod)' +
                              ')');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.Fornecedor;
begin
   if not TabelaExiste('Fornecedor') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE Fornecedor ( ' +
                              'Forn_Cod int identity not null,' +
                              'Forn_RAZAOSOCIAL varchar(100) Null,' +
                              'Forn_FANTASIA varchar(50) Null,' +
                              'Forn_ENDERECO Varchar(50) Null,' +
                              'Forn_Numero int Null,' +
                              'Forn_Cep Varchar(9) Null,' +
                              'Forn_Bairro Varchar(20) Null,' +
                              'Forn_UF Varchar(2) Null,' +
                              'Forn_Cidade varchar(20) Null,' +
                              'Forn_Telefone1 Varchar(15) Null,' +
                              'Forn_Telefone2 Varchar(15) Null,' +
                              'Forn_Nome Varchar(20) Null,' +
                              'Forn_Email Varchar(50) Null,' +
                              'Forn_Cnpj  varchar(20) Null,'+
                              'PRIMARY KEY (Forn_Cod)' +
                              ')');
  end;
end;

function TAtualizacaoTabelaMSSQL.TabelaExiste(aNomeTabela: string): Boolean;
var
  Qry: TZQuery;
begin
  try
    Result := False;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' SELECT OBJECT_ID (:NomeTabela) As ID ');
    Qry.ParamByName('NomeTabela').AsString := aNomeTabela;
    Qry.Open;

    if Qry.FieldByName('ID').AsInteger > 0 then
      Result := True;

    if Qry.FieldByName('ID').AsInteger > 0 then
      Result := True;

  finally
    Qry.Close;
    if Assigned(Qry) then
      FreeAndNil(Qry);

  end;
end;

procedure TAtualizacaoTabelaMSSQL.Clientes;
begin
  if not TabelaExiste('Clientes') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE Clientes ( ' +
                              'Cli_Cod int identity not null,' +
                              'Cli_ID_Veiculo Int,' +
                              'Cli_Nome varchar(50),' +
                              'Cli_Razao Varchar(50),' +
                              'Cli_Fantasia varchar(50),' +
                              'Cli_CNPJ_CPF Varchar(14),' +
                              'Cli_RG Varchar(11),' +
                              'Cli_Logradouro Varchar(50),' +
                              'Cli_Numero int,' +
                              'Cli_Cep Varchar(9),' +
                              'Cli_Bairro Varchar(20),' +
                              'Cli_UF Varchar(2),' +
                              'Cli_Cidade varchar(20),' +
                              'Cli_Telefone1 Varchar(15),' +
                              'Cli_Telefone2 Varchar(15),' +
                              'Cli_TipoVeiculo Varchar(10),' +
                              'Cli_AnoVeiculo Varchar(4),' +
                              'Cli_CodVeiculi int, ' +
                              'Cli_Email Varchar(50),' +
                              'Cli_DataNascimento datetime,' +
                              'PRIMARY KEY (Cli_Cod)' +
                              ')');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.AcaoAcesso;
begin
  if not TabelaExiste('acaoAcesso') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE acaoAcesso ( ' +
                              '	 acaoAcessoId int identity(1,1) not null, ' +
                              '	 descricao varchar(100) not null, ' +
                              '	 chave varchar(60) not null unique, ' +
                              '	 PRIMARY KEY (acaoAcessoId) ' +
                              '	) ');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.Acesso;
begin
  if not TabelaExiste('Acesso') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE Acesso'+
                              '('+
                                'Acesso_id int identity not null ,'+
	                              'Login Varchar(10) not null ,'+
                                'Senha varchar(8) not null ,'+
                                'Nome varchar(20) null,'+
	                              'Tipo varchar (10) null,'+
	                              'setor varchar (10) null,'+
	                              'constraint PK_ID_Senha PRIMARY KEY (Acesso_id))');


  end;
end;

procedure TAtualizacaoTabelaMSSQL.UsuariosAcaoAcesso;
begin
  if not TabelaExiste('usuariosAcaoAcesso') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE usuariosAcaoAcesso( ' +
                              '	 usuarioId  int NOT NULL, ' +
                              '	 acaoAcessoId int NOT NULL, ' +
                              '	 ativo bit not null default 1, ' +
                              '	 PRIMARY KEY (usuarioId, acaoAcessoId), ' +
                              '	 CONSTRAINT FK_UsuarioAcaoAcessoUsuario ' +
                              '	 FOREIGN KEY (usuarioId) references login (login), ' +
                              '	 CONSTRAINT FK_UsuarioAcaoAcessoAcaoAcesso ' +
                              '	 FOREIGN KEY (acaoAcessoId) references acaoAcesso(acaoAcessoId), ' +
                              '	) ');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.TipoDespesaREceita;
begin
  if not TabelaExiste('TIPO_DESPESA_RECEITA') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE TIPO_DESPESA_RECEITA(' +
                              'TIPODR_Cod int identity not null,' +
                              'TIPODR_Tipo varchar (10),' +
                              'TIPODR_Desc varchar (20),' +
                              'PRIMARY KEY (TIPODR_COD))');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.Despesa;
begin
  if not TabelaExiste('DESPESA') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE DESPESA(' +
                              'Desc_Cod int identity not null,' +
                              'Desc_Tipo integer,' +
                              'Desc_Descricao varchar(100),' +
                              'Desc_dataVencimento dateTime,' +
                              'Desc_Valor numeric(15,3),' +
                              'Desc_Status varchar(10),' +
                              'primary key (Desc_Cod),' +
                              'constraint FkDesc_Tipo foreign key (Desc_Tipo)' +
                              'references TIPO_DESPESA_RECEITA (TIPODR_Cod))');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.Receita;
begin
  if not TabelaExiste('RECEITA') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE RECEITA(' +
                              'Rec_Cod int identity not null,' +
                              'Rec_Tipo integer,' +
                              'Rec_Descricao varchar(100),' +
                              'Rec_dataRecebimento dateTime,' +
                              'Rec_Valor numeric(15,3),' +
                              'Rec_Status varchar(10),' +
                              'primary key (Rec_Cod),' +
                              'constraint FkRec_Tipo foreign key (Rec_Tipo)' +
                              'references TIPO_DESPESA_RECEITA (TIPODR_Cod))');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.Venda;
begin
  if not TabelaExiste('VENDA') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE VENDA'+
                             '('+
                             'Vend_Id int identity not null ,'+
                             'Vend_CodCli INT NOT NULL,'+
                             'Vend_DataVenda DATEtime,'+
                             'Vend_TotalVenda Numeric(15,3),'+
                             //'Vend_Qtde int,'+
                             'Vend_obs varchar(255) NULL,'+
                             'Vend_Veiculo varchar(20) NULL,'+
                             'Vend_Status  varchar(10) NULL,'+
                             'Vend_FormaPagto varchar(20) NULL,'+
                             'Vend_CodOrcamento int NULL,'+
                             'PRIMARY KEY (Vend_Id),'+
                             'constraint FK_VENDACLIENTE FOREIGN KEY (Vend_CODCLI) references CLIENTES (Cli_Cod))');
  end;
end;

procedure TAtualizacaoTabelaMSSQL.VendaItens;
begin
  if not TabelaExiste('VENDAITENS') then
  begin
    ExecutaDiretoBancoDeDados('CREATE TABLE VendaItens'+
                             '('+
                             'VendItens_Id int identity not null ,'+
                             'VendItens_Operacao varchar(20),'+
                             'VendItens_prodId int,'+
                             'VendItens_ValorUnitario Numeric(15,3),'+
                             'VendItens_Quantidade int,'+
                             'VendItens_Desc numeric(15,3) null,'+
                             'VendItens_Hora Numeric(15,3) null,'+
                             'VendItens_Pintura Numeric(15,3) null,'+
                             'VendItens_TotalProduto Numeric(15,3) not null,' +
                             'VendItens_TipoPeca varchar(20) null,'+
                             'VendItens_IdVenda int ,'+
                             'PRIMARY KEY (VendItens_Id),'+
                             'CONSTRAINT FK_VendItens_idVenda Foreign Key (VendItens_IdVenda) references Venda (Vend_Id),'+
                             'CONSTRAINT FK_VendItens_prodId Foreign Key (VendItens_prodId) references Produtos (Prod_Cod))');



  end;
end;
end.

