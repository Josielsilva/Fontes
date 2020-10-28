unit uCadproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB,
  ZDataset, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,uCadProdutos,uEnun,uDtmPrincipal,
  RxToolEdit, RxCurrEdit, ZAbstractRODataset, ZAbstractDataset, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadProduto = class(TfrmPadrao)
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    edtDescReduzida: TLabeledEdit;
    EdtMarca: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    lkpGrupo: TDBLookupComboBox;
    lkpSubGrupo: TDBLookupComboBox;
    edtValor: TCurrencyEdit;
    edtQuantidade: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    zqGrupo: TZQuery;
    dsGrupo: TDataSource;
    zqSubGrupo: TZQuery;
    dsSubGrupo: TDataSource;
    zqUnMedida: TZQuery;
    dsUnMedida: TDataSource;
    lbkUnidadeMedida: TDBLookupComboBox;
    zqUnMedidaUniMedida_Nome: TWideStringField;
    zqSubGrupoSubGrupo_Cod: TIntegerField;
    zqGrupogrupo_cod: TIntegerField;
    lbkFornecedor: TDBLookupComboBox;
    zqFornecedor: TZQuery;
    dsFornecedor: TDataSource;
    zqFornecedorForn_cod: TIntegerField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    zqPrincipalProd_Cod: TIntegerField;
    zqPrincipalProd_Nome: TWideStringField;
    zqPrincipalprod_Descricao: TWideStringField;
    zqPrincipalProd_Desc_Redu: TWideStringField;
    zqPrincipalProd_Qtde: TIntegerField;
    zqPrincipalProd_Grupo: TWideStringField;
    zqPrincipalProd_SubGrupo: TWideStringField;
    zqPrincipalprod_ValorUnit: TFloatField;
    zqPrincipalProd_Marca: TWideStringField;
    zqPrincipalProd_Obs: TWideStringField;
    zqPrincipalProd_FornecedorId: TIntegerField;
    zqGrupogrupo_nome: TWideStringField;
    zqSubGruposubgrupo_nome: TWideStringField;
    Obs: TMemo;
    edtCodEan: TLabeledEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
  { Private declarations }
    vProduto:TProduto;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;

  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

{ TfrmCadProduto }

function TfrmCadProduto.Apagar: Boolean;
begin
   if vProduto.Selecionar(zqPrincipal.FieldByName('Prod_cod').AsInteger) then begin
     Result:=vProduto.Apagar;
  end;
end;

procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
begin
    if vProduto.Selecionar(zqPrincipal.FieldByName('Prod_cod').AsInteger) then begin
     edtCodigo.Text            := IntToStr(vProduto.codigo);
     edtNome.Text              := vProduto.nome;
     edtDescricao.Text         := vProduto.descricao;
     lkpGrupo.KeyValue         := vProduto.GrupoId;
     lkpSubGrupo.KeyValue      := vProduto.SubGrupoId;
     edtValor.value            := vProduto.valor;
     edtQuantidade.value       := vProduto.quantidade;
     lbkUnidadeMedida.KeyValue := vProduto.UnMedida;
     Obs.Text                  := vProduto.Obs;
     edtCodEan.Text            := vProduto.CodEan;
     EdtMarca.text             := vProduto.Marca;
     edtDescReduzida.Text     := vProduto.desc_Redu;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  zqPrincipal.Free;
  zqGrupo.Free;
  zqSubGrupo.Free;
  zqUnMedida.Free;
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  vProduto := TProduto.Create(DtmPrincipal.ConexaoDB);
  IndiceAtual :='Prod_Nome';
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  zqPrincipal.Open;
  zqGrupo.Open;
  zqSubGrupo.Open;
  zqUnMedida.Open;
end;

function TfrmCadProduto.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
  if edtCodigo.Text<>EmptyStr then
     vProduto.codigo:=StrToInt(edtCodigo.Text)
  else
     vProduto.codigo:=0;
 Try
  vProduto.nome           :=edtNome.Text;
  vProduto.descricao      :=edtDescricao.Text;
  vProduto.desc_Redu      :=edtDescReduzida.Text;
  vProduto.GrupoId        :=lkpGrupo.KeyValue;
  vProduto.SubGrupoId     :=lkpSubGrupo.KeyValue;
  vProduto.valor          :=edtValor.Value;
  vProduto.quantidade     :=edtQuantidade.Value;
  vProduto.UnMedida       :=lbkUnidadeMedida.KeyValue;
  vProduto.Obs            := Obs.Text;
  vProduto.CodEan         := edtCodEan.Text;
  vProduto.Marca          := EdtMarca.text;
 except
  MessageDLG('Campos com * S�o obrigat�rios',mtInformation,[mbOK],0);
 End;
  if (EstadoDoCadastro=ecInserir) then
     Result:=vProduto.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vProduto.Atualizar;
end;

end.