unit uFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Grids, Vcl.DBGrids, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope,uBuscaCep,uCadastroForncedor,uEnun,
  uDtmPrincipal;

type
  TfrmCadFornecedor = class(TfrmPadrao)
    lblCodigo: TLabeledEdit;
    lblRazao: TLabeledEdit;
    lblFantasia: TLabeledEdit;
    lblEndereco: TLabeledEdit;
    lblNumero: TLabeledEdit;
    lblBairro: TLabeledEdit;
    lblCidade: TLabeledEdit;
    lblUF: TLabeledEdit;
    lblEmail: TLabeledEdit;
    edtTelefone: TMaskEdit;
    EdtTelefoneCel: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    edtCEP: TMaskEdit;
    Label4: TLabel;
    edtCnpj: TMaskEdit;
    Label2: TLabel;
    EdtBuscaCep: TMaskEdit;
    Label5: TLabel;
    btnBuscar: TSpeedButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    lblNome: TLabeledEdit;
    zqPrincipalforn_Razaosocial: TWideStringField;
    zqPrincipalForn_Fantasia: TWideStringField;
    zqPrincipalForn_Cnpj: TWideStringField;
    zqPrincipalForn_Endereco: TWideStringField;
    zqPrincipalForn_Telefone1: TWideStringField;
    zqPrincipalforn_cod: TIntegerField;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
  private
    vFornecedor : TFornecedor;
    function Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;override;
    function Apagar: Boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation

{$R *.dfm}

procedure TfrmCadFornecedor.btnBuscarClick(Sender: TObject);
var vCep : TBuscaCep;
begin
  RESTRequest1.Params.ParameterByName('cep').Value := EdtBuscaCep.text;
  RESTRequest1.Params.ParameterByName('formato').Value := 'json';
  RESTRequest1.Execute;
  vCep := TBuscaCep.FromJsonString(RestResponse1.Content.Trim);
  try
     edtCEP.Text         :=vCep.cep;
     lblEndereco.Text    :=vCep.Logradouro;
     lblBairro.Text      :=vCep.bairro;
     lblCidade.Text      :=vCep.Localidade;
     lblUF.text          :=vCep.Uf;
  finally
    FreeAndNil(vCep);
  end;
end;

procedure TfrmCadFornecedor.btnAlterarClick(Sender: TObject);
begin
  inherited;
   if vFornecedor.Selecionar(zqPrincipal.FieldByName('Forn_Cod').AsInteger) then
  begin
  lblCodigo.text      := IntToStr(vFornecedor.CodFornecedor);
  edtCnpj.Text        := vFornecedor.CNPJ;
  lblRazao.Text       := vFornecedor.RazaoSocial;
  edtCEP.Text         := (vFornecedor.cep);
  lblEndereco.Text    := vFornecedor.endereco;
  lblBairro.Text      := vFornecedor.bairro;
  lblCidade.Text      := vFornecedor.cidade;
  edtTelefone.Text    := vFornecedor.telefone1;
  EdtTelefoneCel.Text := vFornecedor.telefone2;
  lblNome.Text        := vFornecedor.Nome;
  lblEmail.Text       := vFornecedor.Email;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
end;

function TfrmCadFornecedor.Apagar: Boolean;
begin
    if vFornecedor.Selecionar(zqPrincipal.FieldByName('forn_Cod').AsInteger) then begin
     Result:= vFornecedor.Apagar;
  end;
end;

procedure TfrmCadFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(vFornecedor) then
    FreeAndNil(vFornecedor);
end;

procedure TfrmCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
   vFornecedor:=TFornecedor.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual := 'Forn_RazaoSocial';
end;

function TfrmCadFornecedor.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
   if lblCodigo.Text<>EmptyStr then
     vFornecedor.CodFornecedor:=StrToInt(lblCodigo.Text)
  else
  vFornecedor.CodFornecedor  :=0;

  vFornecedor.CNPJ           :=edtCnpj.Text;
  vFornecedor.Nome           :=lblNome.Text;
  vFornecedor.RazaoSocial    :=lblRazao.Text;
  vFornecedor.Fantasia       :=lblFantasia.Text;
  vFornecedor.endereco       :=lblEndereco.Text;
  vFornecedor.Numero         :=StrToInt(lblNumero.text);
  vFornecedor.bairro         :=lblBairro.Text;
  vFornecedor.cidade         :=lblCidade.Text;
  vFornecedor.cep            :=edtCEP.Text;
  vFornecedor.estado         :=lblUF.Text;
  vFornecedor.telefone1      :=edtTelefone.Text;
  vFornecedor.telefone2      :=EdtTelefoneCel.Text;
  vFornecedor.Email          :=lblEmail.Text;


  if (EstadoDoCadastro=ecInserir) then
     Result:=vFornecedor.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vFornecedor.Atualizar;
end;

end.
