unit uDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.StdCtrls,
  ZDataset,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, RxToolEdit,
  RxCurrEdit,uDtmPrincipal,uDespesa,uEnun,uUsuarioLogado, ZAbstractRODataset,
  ZAbstractDataset, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDespesas = class(TfrmPadrao)
    cbDespesa: TComboBox;
    edtDescricao: TLabeledEdit;
    edtValor: TCurrencyEdit;
    Label11: TLabel;
    edtDataPrevisao: TDateEdit;
    Label9: TLabel;
    lkpDespesa: TDBLookupComboBox;
    Label1: TLabel;
    zqTipoDespesa: TZQuery;
    dsTipoDespesa: TDataSource;
    Label2: TLabel;
    edtCodigo: TLabeledEdit;
    zqTipoDespesaTIPODR_Cod: TIntegerField;
    zqTipoDespesaTIPODR_Tipo: TWideStringField;
    zqTipoDespesaTIPODR_Desc: TWideStringField;
    zqPrincipalDesp_Cod: TIntegerField;
    zqPrincipalDesp_Tipo: TIntegerField;
    zqPrincipalDesp_Descricao: TWideStringField;
    zqPrincipalDesp_dataVencimento: TDateTimeField;
    zqPrincipalDesp_Valor: TFloatField;
    zqPrincipalDesp_Status: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    vDespesa:TDespesa;
    vUsuarioLogado : TUsuarioLogado;
    //vGrupo:TGrupo;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
  end;

var
  frmDespesas: TfrmDespesas;

implementation

{$R *.dfm}

{ TfrmDespesas }

function TfrmDespesas.Apagar: Boolean;
begin
     if vDespesa.Selecionar(zqPrincipal.FieldByName('DESP_Cod').AsInteger) then begin
     Result:= vDespesa.Apagar;
  end;
end;

procedure TfrmDespesas.btnAlterarClick(Sender: TObject);
begin
  inherited;
      if vDespesa.Selecionar(zqPrincipal.FieldByName('DESP_Cod').AsInteger) then begin
      edtCodigo.Text         :=IntToStr(vDespesa.Codigo);
      lkpDespesa.KeyValue    :=vDespesa.Tipo;
      edtDescricao.Text      :=vDespesa.Descricao;
      cbDespesa.text         :=vDespesa.Status;
      edtDataPrevisao.date   :=vDespesa.DataVencimento;
      edtValor.Text          :=FloatToStr(vDespesa.Valor);

  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
end;

procedure TfrmDespesas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if Assigned(vDespesa) then
    FreeAndNil(vDespesa);

  if Assigned(zqTipoDespesa) then
     FreeAndNil(zqTipoDespesa);

end;

procedure TfrmDespesas.FormCreate(Sender: TObject);
begin
  inherited;
      vDespesa := TDespesa.Create(DtmPrincipal.ConexaoDB);
      //vGrupo := TGrupo.Create(DtmPrincipal.ConexaoDB);

   IndiceAtual :='DESP_TIPO';
end;

procedure TfrmDespesas.FormShow(Sender: TObject);
begin
  inherited;
  zqPrincipal.Open;
  zqTipoDespesa.Open;
end;

function TfrmDespesas.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
  if edtCodigo.Text<>EmptyStr then
     vDespesa.Codigo:=StrToInt(edtCodigo.Text)
  else
     vDespesa.Codigo:=0;

  vDespesa.Tipo               :=lkpDespesa.KeyValue;
  vDespesa.Descricao          :=edtDescricao.Text;
  vDespesa.DataVencimento     := edtDataPrevisao.date;
  vDespesa.valor              := StrToFloat(edtValor.text);
  vDespesa.Status             := cbDespesa.text;

  if (EstadoDoCadastro=ecInserir) then
     Result:=vDespesa.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vDespesa.Atualizar;
end;

end.
