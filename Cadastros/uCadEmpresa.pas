unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,uCadastroEmpresa,
  uDtmPrincipal,uEnun, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Grids, Vcl.DBGrids, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfrmCadEmpresa = class(TfrmPadrao)
    EdtCodigo: TLabeledEdit;
    edtRazao: TLabeledEdit;
    edtFantasia: TLabeledEdit;
    lblEndereco: TLabeledEdit;
    lblNumero: TLabeledEdit;
    lblBairro: TLabeledEdit;
    lblCidade: TLabeledEdit;
    edtCEP: TMaskEdit;
    lblUF: TLabeledEdit;
    edtTelefone: TMaskEdit;
    edtTelefoneCel: TMaskEdit;
    lblEmail: TLabeledEdit;
    edtIe: TLabeledEdit;
    edtIM: TLabeledEdit;
    edtCNPJ: TMaskEdit;
    Label2: TLabel;
    edtBuscaCep: TMaskEdit;
    sbBuscaCep: TSpeedButton;
    Label5: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    lblCep: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    zqPrincipalEMP_CNPJ: TWideStringField;
    zqPrincipalEMP_RAZAOSOCIAL: TWideStringField;
    zqPrincipalEMP_FANTASIA: TWideStringField;
    zqPrincipalEMP_ENDERECO: TWideStringField;
    zqPrincipalEmp_Numero: TIntegerField;
    zqPrincipalEmp_Cep: TWideStringField;
    zqPrincipalEMP_Bairro: TWideStringField;
    zqPrincipalEmp_UF: TWideStringField;
    zqPrincipalEMP_Cidade: TWideStringField;
    zqPrincipalEmp_Telefone1: TWideStringField;
    zqPrincipalEmp_Telefone2: TWideStringField;
    zqPrincipalEMP_Email: TWideStringField;
    zqPrincipalEMP_COD: TIntegerField;
    edtContato: TLabeledEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sbBuscaCepClick(Sender: TObject);
  private
  vEmpresa : TEmpresa;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;

implementation

uses uBuscaCep;

{$R *.dfm}

function TfrmCadEmpresa.Apagar: Boolean;
begin
    if vEmpresa.Selecionar(zqPrincipal.FieldByName('Emp_Cod').AsInteger) then begin
     Result:= vEmpresa.Apagar;
  end;
end;

procedure TfrmCadEmpresa.btnAlterarClick(Sender: TObject);
begin

  if vEmpresa.Selecionar(zqPrincipal.FieldByName('Emp_Cod').AsInteger) then
  begin
     EdtCodigo.Text      :=IntToStr(vEmpresa.CodEmpresa);
     edtRazao.Text       :=vEmpresa.RazaoSocial;
     edtFantasia.Text    :=vEmpresa.Fantasia;
     edtCEP.Text         :=vEmpresa.cep;
     lblEndereco.Text    :=vEmpresa.endereco;
     lblBairro.Text      :=vEmpresa.bairro;
     lblCidade.Text      :=vEmpresa.cidade;
     edtTelefone.Text    :=vEmpresa.telefone1;
     edtTelefoneCel.Text :=vEmpresa.telefone2;
     lblEmail.Text       :=vEmpresa.email;
     edtIE.Text          :=vEmpresa.IE;
     edtIM.Text          :=vEmpresa.IM;
     edtcnpj.text        :=vEmpresa.cnpj;
     edtContato.Text     :=vEmpresa.contato;
     lblNumero.Text      :=IntToStr(vEmpresa.Numero);
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;

procedure TfrmCadEmpresa.btnInserirClick(Sender: TObject);
begin
  inherited;
  edtRazao.SetFocus;
end;

procedure TfrmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    if Assigned(vEmpresa) then
     FreeAndNil(vEmpresa);
end;

procedure TfrmCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
   vEmpresa:=TEmpresa.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual := 'Emp_RazaoSocial';
end;

function TfrmCadEmpresa.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
   if EdtCodigo.Text<>EmptyStr then
     vEmpresa.CodEmpresa:=StrToInt(EdtCodigo.Text)
  else
     vEmpresa.CodEmpresa  :=0;
  vEmpresa.CNPJ           :=edtCNPJ.Text;
  vEmpresa.RazaoSocial    := edtRazao.Text;
  vEmpresa.cep            :=edtCEP.Text;
  vEmpresa.endereco       :=lblEndereco.Text;
  vEmpresa.bairro         :=lblBairro.Text;
  vEmpresa.cidade         :=lblCidade.Text;
  vEmpresa.telefone1      :=edtTelefone.Text;
  vEmpresa.telefone2      :=edtTelefoneCel.Text;
  vEmpresa.email          :=lblEmail.Text;
  vEmpresa.IE             :=edtIe.Text;
  vEmpresa.IM             :=edtIM.Text;
  vEmpresa.Contato        :=edtContato.Text;
  vEmpresa.Numero         :=StrToInt(lblNumero.text);

  if (EstadoDoCadastro=ecInserir) then
     Result:=vEmpresa.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vEmpresa.Atualizar;
end;

procedure TfrmCadEmpresa.sbBuscaCepClick(Sender: TObject);
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

end.
