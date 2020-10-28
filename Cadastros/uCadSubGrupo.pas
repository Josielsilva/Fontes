unit uCadSubGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB,
  ZDataset, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,uDtmPrincipal,uSubGrupo,
  uEnun,uFuncoes,uCadGrupo,uUsuarioLogado, ZAbstractRODataset, ZAbstractDataset,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadSubGrupo = class(TfrmPadrao)
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    lbkCodGrupo: TDBLookupComboBox;
    lbdCodGrupo: TLabel;
    zqGrupo: TZQuery;
    dsGrupo: TDataSource;
    zqGrupoGRUPO_COD: TIntegerField;
    zqPrincipalSubGrupo_Cod: TIntegerField;
    zqPrincipalSubGrupo_Nome: TWideStringField;
    zqPrincipalSubGrupo_Descricao: TWideStringField;
    zqPrincipalSubGrupo_GrupoId: TIntegerField;
    btnIncluirGrupo: TSpeedButton;
    btnPesquisarGrupo: TSpeedButton;
    zqGrupoGRUPO_NOME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirGrupoClick(Sender: TObject);
    procedure btnPesquisarGrupoClick(Sender: TObject);
  private
    { Private declarations }
    vSubGrupo:TSubGrupo;
    vUsuarioLogado : TUsuarioLogado;
    //vGrupo:TGrupo;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
  public
    { Public declarations }

  end;

var
  frmCadSubGrupo: TfrmCadSubGrupo;

implementation

{$R *.dfm}

{ TfrmCadSubGrupo }

function TfrmCadSubGrupo.Apagar: Boolean;
begin
   if vSubGrupo.Selecionar(zqPrincipal.FieldByName('SubGrupo_cod').AsInteger) then begin
     Result:=vSubGrupo.Apagar;
  end;
end;

function TfrmCadSubGrupo.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
    if edtCodigo.Text<>EmptyStr then
     vSubGrupo.Grupo_cod:=StrToInt(edtCodigo.Text)
  else
     vSubGrupo.Grupo_cod:=0;

  vSubGrupo.SubGrupo_nome           :=edtNome.Text;
  vSubGrupo.SubGrupo_descricao      :=edtDescricao.Text;
  vSubGrupo.Grupo_cod               :=lbkCodGrupo.KeyValue ;

  if (EstadoDoCadastro=ecInserir) then
     Result:=vSubGrupo.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vSubGrupo.Atualizar;
end;

procedure TfrmCadSubGrupo.btnAlterarClick(Sender: TObject);
begin
  inherited;
    if vSubGrupo.Selecionar(zqPrincipal.FieldByName('Subgrupo_cod').AsInteger) then begin
     edtCodigo.Text     :=IntToStr(vSubGrupo.SubGrupo_cod);
     edtNome.Text          :=vSubGrupo.SubGrupo_nome;
     edtDescricao.Text     :=vSubGrupo.SubGrupo_Descricao;
     lbkCodGrupo.KeyValue :=vSubGrupo.Grupo_Cod;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;


end;

procedure TfrmCadSubGrupo.btnIncluirGrupoClick(Sender: TObject);
begin
  inherited;
   TFuncao.CriarForm(TfrmGrupo, vUsuarioLogado, DtmPrincipal.ConexaoDB);
   zqGrupo.Refresh;
end;

procedure TfrmCadSubGrupo.btnInserirClick(Sender: TObject);
begin
  inherited;
//  TFuncao.CriarForm(TfrmCadCategoria, oUsuarioLogado, DtmPrincipal.ConexaoDB);
//  QryCategoria.Refresh;
end;

procedure TfrmCadSubGrupo.btnPesquisarGrupoClick(Sender: TObject);
begin
  inherited;
     frmGrupo:=TfrmGrupo.Create(Self);

  if lbkCodGrupo.KeyValue<>Null then
     frmGrupo.aIniciarPesquisaId:=lbkCodGrupo.KeyValue;

  frmGrupo.ShowModal;

  if frmGrupo.aRetornarIdSelecionado<>Unassigned then  //Não Atribuido
     lbkCodGrupo.KeyValue:=frmGrupo.aRetornarIdSelecionado;

  frmGrupo.Release;
end;

procedure TfrmCadSubGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   zqPrincipal.Close;
   zqGrupo.Close;
   if Assigned(vSubGrupo) then
     FreeAndNil(vSubGrupo);

end;

procedure TfrmCadSubGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  vSubGrupo := TSubGrupo.Create(DtmPrincipal.ConexaoDB);
  //vGrupo := TGrupo.Create(DtmPrincipal.ConexaoDB);

  IndiceAtual :='SubGrupo_Nome';
end;

procedure TfrmCadSubGrupo.FormShow(Sender: TObject);
begin
  inherited;
   zqPrincipal.Open;
   zqGrupo.open;
end;

end.
