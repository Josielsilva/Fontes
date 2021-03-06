unit uAcaoDeAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,uDtmPrincipal,
  cAcaoAcesso,uEnun;

type
  TfrmCadAcaoAcesso = class(TfrmPadrao)
    edtChave: TLabeledEdit;
    edtacaoAcessoId: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    zqPrincipalacaoAcessoId: TIntegerField;
    zqPrincipaldescricao: TWideStringField;
    zqPrincipalchave: TWideStringField;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    uAcaoAcesso : TAcaoAcesso;
    function Apagar: Boolean;Override;
    function Gravar(EstadoDoCadastro: TEstadoCadastro): boolean ; Override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAcaoAcesso: TfrmCadAcaoAcesso;

implementation
function TfrmCadAcaoAcesso.Apagar: Boolean;
begin
  if uAcaoAcesso.Selecionar(zqPrincipal.FieldByName('acaoAcessoId').AsInteger) then begin
     Result:=uAcaoAcesso.Apagar;
  end;
end;

procedure TfrmCadAcaoAcesso.btnAlterarClick(Sender: TObject);
begin
  if uAcaoAcesso.Selecionar(zqPrincipal.FieldByName('acaoAcessoId').AsInteger) then begin
     edtacaoAcessoId.Text:=IntToStr(uAcaoAcesso.codigo);
     edtDescricao.Text   :=uAcaoAcesso.descricao;
     edtChave.Text       :=uAcaoAcesso.chave;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadAcaoAcesso.btnGravarClick(Sender: TObject);
begin
  if edtacaoAcessoId.Text<>EmptyStr then
     uAcaoAcesso.codigo:=StrToInt(edtacaoAcessoId.Text)
  else
     uAcaoAcesso.codigo:=0;

  if uAcaoAcesso.ChaveExiste(edtChave.Text, uAcaoAcesso.codigo) then begin
    MessageDlg('Chave j� cadastrado', mtInformation, [mbok],0);
    edtChave.SetFocus;
    abort;
  end;

  uAcaoAcesso.descricao :=edtDescricao.Text;
  uAcaoAcesso.chave     :=edtChave.Text;

  inherited;

end;

procedure TfrmCadAcaoAcesso.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TfrmCadAcaoAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(uAcaoAcesso) then
     FreeAndNil(uAcaoAcesso);
end;

procedure TfrmCadAcaoAcesso.FormCreate(Sender: TObject);
begin
  inherited;
  uAcaoAcesso:=TAcaoAcesso.Create(DtmPrincipal.ConexaoDB);
  IndiceAtual:='descricao';
end;

function TfrmCadAcaoAcesso.Gravar(EstadoDoCadastro: TEstadoCadastro): boolean;
begin
  if EstadoDoCadastro=ecInserir then
     Result:= uAcaoAcesso.Inserir
  else if EstadoDoCadastro=ecAlterar then
     Result:= uAcaoAcesso.Atualizar;
end;
{$R *.dfm}

end.
