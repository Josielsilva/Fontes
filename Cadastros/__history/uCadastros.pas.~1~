unit uCadastros;

interface

 uses uEnun;

type

  TPessoa = class(TObject)
   private
    FBairro: string;
    FUF: string;
    FCodigo: Integer;
    FTelefone1: string;
    FNome: string;
    FTipo: Integer;
    FCidade: string;
    FEndereco: string;
    FData: TDateTime;
    FTelefone: string;
    procedure SetBairro(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetCodigo(const Value: Integer);
    procedure SetData(const Value: TDateTime);
    procedure SetEndereco(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetTelefone(const Value: string);
    procedure SetTelefone1(const Value: string);
    procedure SetTipo(const Value: Integer);
    procedure SetUF(const Value: string);
   public
   property Codigo : Integer read FCodigo write SetCodigo;
   property Nome : string read FNome write SetNome;
   property Endereco : string read FEndereco write SetEndereco;
   property Cidade   : string read FCidade write SetCidade;
   property Bairro   : string read FBairro write SetBairro;
   property UF       : string read FUF write SetUF;
   property Telefone : string read FTelefone write SetTelefone;
   property Telefone1 : string read FTelefone1 write SetTelefone1;
   property Data : TDateTime read FData write SetData;
   property Tipo : Integer read FTipo write SetTipo;
  constructor Create;
  destructor Destroy; override;

  end;

  TFuncionario = class(TPessoa)
  private

  public
  constructor Create(AOwner: TPessoa);
  destructor Destroy; override;
  end;

  TCliente = class(TPessoa)
  private
    FCPF: string;
    FVeiculo: TVeiculo;
    procedure SetCPF(const Value: string);
    procedure SetVeiculo(const Value: TVeiculo);

  public
  property CPF : string read FCPF write SetCPF;
  property Veiculo : TVeiculo read FVeiculo write SetVeiculo;
  constructor Create(AOwner: TPessoa);
  destructor Destroy; override;
  end;

  TForncedor = class(TPessoa)
  private
    FCNPJ: string;
    FRazaoSocial: string;
    FNomeFantasia: string;
    procedure SetCNPJ(const Value: string);
    procedure SetNomeFantasia(const Value: string);
    procedure SetRazaoSocial(const Value: string);

  public
  property CNPJ : string read FCNPJ write SetCNPJ;
  property RazaoSocial : string read FRazaoSocial write SetRazaoSocial;
  property NomeFantasia : string read FNomeFantasia write SetNomeFantasia;
  constructor Create(AOwner: TPessoa);
  destructor Destroy; override;

  end;

implementation

{ TForncedor }

{ TForncedor }

constructor TForncedor.Create(AOwner: TPessoa);
begin
  Self.Create(TPessoa.Create);
end;

destructor TForncedor.Destroy;
begin

  inherited;
end;

procedure TForncedor.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
end;

procedure TForncedor.SetNomeFantasia(const Value: string);
begin
  FNomeFantasia := Value;
end;

procedure TForncedor.SetRazaoSocial(const Value: string);
begin
  FRazaoSocial := Value;
end;

{ TCliente }

constructor TCliente.Create(AOwner: TPessoa);
begin
  Self.Create(TPessoa.Create);
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

procedure TCliente.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

procedure TCliente.SetVeiculo(const Value: TVeiculo);
begin
  FVeiculo := Value;
end;

{ TFuncionario }

constructor TFuncionario.Create(AOwner: TPessoa);
begin
  Self.Create(TPessoa.Create);
end;

destructor TFuncionario.Destroy;
begin
  inherited;

end;

{ TPessoa }

constructor TPessoa.Create;
begin
Self.Create;
end;

destructor TPessoa.Destroy;
begin
  inherited;
end;

procedure TPessoa.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TPessoa.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TPessoa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPessoa.SetData(const Value: TDateTime);
begin
  FData := Value;
end;

procedure TPessoa.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

procedure TPessoa.SetTelefone1(const Value: string);
begin
  FTelefone1 := Value;
end;

procedure TPessoa.SetTipo(const Value: Integer);
begin
  FTipo := Value;
end;

procedure TPessoa.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.

