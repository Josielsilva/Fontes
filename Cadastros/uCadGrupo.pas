unit uCadGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.ExtCtrls,

  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,uDtmPrincipal,uGrupo,uEnun,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmGrupo = class(TfrmPadrao)
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    zqPrincipalGrupo_Cod: TIntegerField;
    zqPrincipalGrupo_Nome: TWideStringField;
    zqPrincipalGrupo_Descricao: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    vGrupo:TGrupo;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmGrupo: TfrmGrupo;

implementation

{$R *.dfm}

{ TfrmGrupo }

function TfrmGrupo.Apagar: Boolean;
begin
   if vGrupo.Selecionar(zqPrincipal.FieldByName('Grupo_cod').AsInteger) then begin
     Result:=vGrupo.Apagar;
  end;
end;

procedure TfrmGrupo.btnAlterarClick(Sender: TObject);
begin
    if vGrupo.Selecionar(zqPrincipal.FieldByName('Grupo_cod').AsInteger) then begin
     edtCodigo.Text        :=IntToStr(vGrupo.Grupo_cod);
     edtNome.Text          :=vGrupo.Grupo_nome;
     edtDescricao.Text     :=vGrupo.Grupo_descricao;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  zqPrincipal.close;
  if Assigned(vGrupo) then
     FreeAndNil(vGrupo);
end;

procedure TfrmGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  vGrupo:=TGrupo.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'Grupo_Nome';
end;

procedure TfrmGrupo.FormShow(Sender: TObject);
begin
  inherited;
   zqPrincipal.open;
end;

function TfrmGrupo.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
    if edtCodigo.Text<>EmptyStr then
     vGrupo.Grupo_cod:=StrToInt(edtCodigo.Text)
  else
     vGrupo.Grupo_cod:=0;

  vGrupo.Grupo_nome           :=edtNome.Text;
  vGrupo.Grupo_descricao      :=edtDescricao.Text;

  if (EstadoDoCadastro=ecInserir) then
     Result:=vGrupo.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vGrupo.Atualizar;
end;

end.
