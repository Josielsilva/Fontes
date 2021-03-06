unit uLogin;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,uDtmPrincipal,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, ZAbstractRODataset, ZDataset,uFuncaoLogin,
  Vcl.Buttons, ZAbstractDataset;

type
  TfrmLogin = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    zqAcesso: TZQuery;
    btnFechar: TBitBtn;
    btnAcessar: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
  iCont : Integer;
  bFechar:Boolean;

    function Login: Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uMan;

{$R *.dfm}

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
var vUsuario:TUsuario;
begin
  Try
    vUsuario:=TUsuario.Create(dtmPrincipal.ConexaoDB);
    if vUsuario.Logar(edtlogin.Text,edtSenha.Text) then begin

       vUsuarioLogado.codigo := vUsuario.codigo;
       vUsuarioLogado.nome   := vUsuario.nome;
       vUsuarioLogado.senha  := vUsuario.senha;

       FecharFormulario; //Fecha o Formulario do Login
    end
    else begin
      MessageDlg('Usu�rio Inv�lido',mtInformation,[mbok],0);
      edtLogin.SetFocus;
    end;

  Finally
    if Assigned(vUsuario) then
       FreeAndNil(vUsuario);
  End;
end;

procedure TfrmLogin.FecharAplicacao;
begin
    bFechar := true;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFechar := true;
  Close;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
 FecharAplicacao;
end;

procedure TfrmLogin.Button1Click(Sender: TObject);
var
  FMan: TFrmMan;
  iTentativa : Integer;
begin
  iTentativa := 3;
//
//  FMan := TFrmMan.Create(self);
//  with FMan do
//  begin
//   try
      if Login then
      begin
        ShowModal;
        Self.Close;
      end
      else
      begin
        inc(iCont);
        iTentativa := iTentativa - iCont;
        edtLogin.Text := '';
        edtSenha.Text := '';
        edtLogin.SetFocus;
        ShowMessage('Voc� tem ! '+iTentativa.ToString +' tentativas');
        if iTentativa = 0 then
        Self.Destroy
      end;
//    finally
//      Free;
//    end;

end;

function TfrmLogin.Login : Boolean;
begin
  zqAcesso.Connection := DtmPrincipal.ConexaoDB;
  with zqAcesso do
  begin
    sql.Add('select * from acesso where AcessoId = :PAcessoId and senha = :psenha');
    ParamByName('PAcessoId').AsString := edtLogin.Text;
    ParamByName('psenha').AsString := edtSenha.Text;
    Open;
    if not IsEmpty then
      Result := True
    else
      Result := False;

  end;
end;




end.
