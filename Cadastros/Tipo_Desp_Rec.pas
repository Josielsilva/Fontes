unit Tipo_Desp_Rec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  uTipoDesp_Rec,uEnun,uUsuarioLogado,uDtmPrincipal, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTipoDespesaReceita = class(TfrmPadrao)
    edtCodigo: TLabeledEdit;
    cbTipo: TComboBox;
    edtDescricao: TLabeledEdit;
    Label1: TLabel;
    intgrfldPrincipalTIPODR_Cod: TIntegerField;
    zqPrincipalTIPODR_Desc: TWideStringField;
    zqPrincipalTIPODR_Tipo: TWideStringField;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    vTipoDecRec:TTipoDecRec;
    vUsuarioLogado : TUsuarioLogado;
    //vGrupo:TGrupo;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
  end;

var
  frmTipoDespesaReceita: TfrmTipoDespesaReceita;

implementation

{$R *.dfm}

{ TfrmTipoDespesaReceita }

function TfrmTipoDespesaReceita.Apagar: Boolean;
begin
    if vTipoDecRec.Selecionar(zqPrincipal.FieldByName('TipoDR_Cod').AsInteger) then begin
     Result:=vTipoDecRec.Apagar;
  end;
end;

procedure TfrmTipoDespesaReceita.btnAlterarClick(Sender: TObject);
begin
  inherited;
    if vTipoDecRec.Selecionar(zqPrincipal.FieldByName('TipoDR_Cod').AsInteger) then begin
     edtCodigo.Text        :=IntToStr(vTipoDecRec.Codigo);
      cbTipo.Text          :=vTipoDecRec.Tipo;
     edtDescricao.Text     :=vTipoDecRec.Desc;

  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
end;

procedure TfrmTipoDespesaReceita.btnInserirClick(Sender: TObject);
begin
  inherited;
//   TFuncao.CriarForm(TfrmGrupo, vUsuarioLogado, DtmPrincipal.ConexaoDB);
//   zqGrupo.Refresh;
end;

procedure TfrmTipoDespesaReceita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   zqPrincipal.Close;
   if Assigned(vTipoDecRec) then
     FreeAndNil(vTipoDecRec);

end;

procedure TfrmTipoDespesaReceita.FormCreate(Sender: TObject);
begin
  inherited;
    vTipoDecRec := TTipoDecRec.Create(DtmPrincipal.ConexaoDB);
  //vGrupo := TGrupo.Create(DtmPrincipal.ConexaoDB);

   IndiceAtual :='TipoDR_DESC';
end;

procedure TfrmTipoDespesaReceita.FormShow(Sender: TObject);
begin
  inherited;
   zqPrincipal.Open;
end;

function TfrmTipoDespesaReceita.Gravar(
  EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
  if edtCodigo.Text<>EmptyStr then
     vTipoDecRec.Codigo:=StrToInt(edtCodigo.Text)
  else
     vTipoDecRec.Codigo:=0;

  vTipoDecRec.Tipo           :=cbTipo.Text;
  vTipoDecRec.Desc           :=edtDescricao.Text;

  if (EstadoDoCadastro=ecInserir) then
     Result:=vTipoDecRec.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vTipoDecRec.Atualizar;
end;

end.
