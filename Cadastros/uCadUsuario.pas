unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDtmPrincipal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,uFuncoesCryptografia,
  Vcl.ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfmCadastroUsuario = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtLogin: TEdit;
    edtnome: TEdit;
    edtsenha: TEdit;
    Label4: TLabel;
    Button1: TButton;
    zqAcesso: TZQuery;
    cbTipo: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    function JaExistente: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadastroUsuario: TfmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfmCadastroUsuario.Button1Click(Sender: TObject);
begin
  if (edtLogin.Text <> '') and (edtsenha.Text <> '') then
  begin
    zqAcesso.Connection := DtmPrincipal.ConexaoDB;
    if not JaExistente then
    begin
    with zqAcesso do
    begin
      sql.Clear;
      SQL.Add('insert into login ');
      sql.Add('(       ');
      SQL.Add('Login,  ');
      SQL.Add('Senha,  ');
      Sql.Add('Nome,   ');
      SQL.Add('Tipo'   );
      sql.add(')'       );
      Sql.Add('values ' );
      sql.Add('(:pLogin,' );
      sql.Add(':pSenha,' );
      sql.Add(':pNome,'  );
      sql.Add(':pTipo)'  );
      ParamByName('pLogin').AsString := edtLogin.Text;
      ParamByName('pSenha').AsString := Criptografia(edtsenha.Text);
      ParamByName('pNome').AsString := edtnome.Text;
      ParamByName('pTipo').AsString := cbTipo.Items[cbTipo.ItemIndex];
      ExecSQL;
    end;
    end
 end;
end;

function TfmCadastroUsuario.JaExistente : Boolean;
begin
  with zqAcesso do
  begin
    sql.Clear;
    sql.Add('select * from login where login = :Plogin');
    ParamByName('pLogin').AsString := edtLogin.Text;
    Open;
    if not IsEmpty then
    begin
     Result := True;
     ShowMessage('Login j� cadastrado, favor usar outro! ');
    end
    else
      Result := False;

  end;
end;

end.