unit uMan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,{uClientes}uCadClientes,
  Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,uDtmPrincipal,
  uLogin,Enter, uFornecedor, uCadproduto, uCadVeiculos,
  uOrcamento,uUsuarioLogado,uCadGrupo,uCadSubGrupo,
  uCadUniMedida,uCadastroUsuario,ZDbcIntfs,
  uAtualizacaobancoDeDados,uFrmAtualizaBD,uArquivoIni, Vcl.ComCtrls,
  Vcl.Imaging.pngimage,uArquivosIni;

type
  TFrmMan = class(TForm)
    pnlIcones: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    mmPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    CadastrodeFornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    Funcionarios1: TMenuItem;
    Acesso1: TMenuItem;
    Sair1: TMenuItem;
    Oramento1: TMenuItem;
    Oramento2: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Oramentos1: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Image1: TImage;
    ImageList1: TImageList;
    Ferramentas1: TMenuItem;
    CadastrodeUsuario1: TMenuItem;
    CadastrodeVeculo1: TMenuItem;
    N4: TMenuItem;
    CadastrodeGrupo1: TMenuItem;
    CadastrodeSubGrupo1: TMenuItem;
    CadastrodeUnidade1: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    FINANCEIRO1: TMenuItem;
    Fichadeclientes1: TMenuItem;
    OramentoPorCliente1: TMenuItem;
    OramentoPorDate1: TMenuItem;
    Cadastros2: TMenuItem;
    CadastrodeCliente1: TMenuItem;
    CadastrodeFornecedor1: TMenuItem;
    CadastrodeFuncionarios2: TMenuItem;
    CadastrodeProdutos2: TMenuItem;
    ipodeDespesaReceita1: TMenuItem;
    N7: TMenuItem;
    Despesa1: TMenuItem;
    Receita1: TMenuItem;
    sbPrincipal: TStatusBar;
    Timer1: TTimer;
    imgIcones: TImageList;
    imCliente: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image2: TImage;
    Image8: TImage;
    Image9: TImage;
    Parametros1: TMenuItem;
    N8: TMenuItem;
    Empresa1: TMenuItem;
    CadastrodeEmpresa1: TMenuItem;
    Image10: TImage;
    AlterarSenha1: TMenuItem;
    AESDEACESSO1: TMenuItem;
    PERMISSODEAESPARAUSURIO1: TMenuItem;
    N9: TMenuItem;
    Vendas2: TMenuItem;
    N10: TMenuItem;
    VendasPorData1: TMenuItem;
    VendaPorCliente1: TMenuItem;
    Finaceiro1: TMenuItem;
    Receita2: TMenuItem;
    Venda1: TMenuItem;
    N11: TMenuItem;
    Receitaportipo1: TMenuItem;
    Despesaportipo1: TMenuItem;
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastrodeUsuario1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CadastrodeFornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure CadastrodeVeculo1Click(Sender: TObject);
    procedure Acesso1Click(Sender: TObject);
    procedure Oramento2Click(Sender: TObject);
    procedure CadastrodeGrupo1Click(Sender: TObject);
    procedure CadastrodeSubGrupo1Click(Sender: TObject);
    procedure CadastrodeUnidade1Click(Sender: TObject);
    procedure Fichadeclientes1Click(Sender: TObject);
    procedure OramentoporData1Click(Sender: TObject);
    procedure OramentoPorCliente1Click(Sender: TObject);
    procedure OramentoPorDate1Click(Sender: TObject);
    procedure CadastrodeCliente1Click(Sender: TObject);
    procedure CadastrodeProdutos2Click(Sender: TObject);
    procedure ipodeDespesaReceita1Click(Sender: TObject);
    procedure Despesa1Click(Sender: TObject);
    procedure Receita1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure imClienteClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure CadastrodeEmpresa1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure AESDEACESSO1Click(Sender: TObject);
    procedure PERMISSODEAESPARAUSURIO1Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure VendasPorData1Click(Sender: TObject);
    procedure VendaPorCliente1Click(Sender: TObject);
    procedure Despesaportipo1Click(Sender: TObject);
    procedure Receitaportipo1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Receita2Click(Sender: TObject);
  private
    TeclaEnter: TMREnter;
   // function Conexao: Boolean;
    procedure AtualizacaoBancoDados(aForm: TfrmAtualizaBancoDados);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMan: TFrmMan;
  vUsuarioLogado: TUsuarioLogado;

implementation

uses uRelCadClientesFicha,uRelCadClientes,uRelProOrcPorData,
uRelCadProdutos,uOrcamentoPorCliente,Tipo_Desp_Rec,uReceita,uDespesas,
Winapi.ShellAPI,uCadEmpresa,uVenda,uBackupRestore,
uAcaoDeAcesso,uUsuarioVsAcoes,cAcaoAcesso,uAlterarSenha,uRelProVendaPorData,
uVendaPorCliente,uVendaPorData,uOrcPorData,uReceitaPorData,
uDespesaPorData,uReceitaPorTipo,uDespesaPorTipo, uRelVendaPorCliente,
uFuncoesCryptografia;

{$R *.dfm}

procedure TFrmMan.Acesso1Click(Sender: TObject);
begin
  frmCadUsuario := TfrmCadUsuario.Create(self);
  try
    frmCadUsuario.ShowModal;
  finally
    FreeAndNil(frmCadUsuario);
  end;
end;

procedure TFrmMan.CadastrodeCliente1Click(Sender: TObject);
begin
    frmRelCadClientes := TfrmRelCadClientes.Create(self);
  try
    frmRelCadClientes.Relatorio.PreviewModal;
  finally
    frmRelCadClientes.release;
  end;
end;

procedure TFrmMan.CadastrodeClientes1Click(Sender: TObject);
begin
   frmCadCliente := TfrmCadCliente.Create(Application);
   with frmCadCliente do
   begin
     try
       ShowModal;
     finally
       FreeAndNil(frmCadCliente);
     end;
   end;
end;

procedure TFrmMan.CadastrodeEmpresa1Click(Sender: TObject);
begin
    frmCadEmpresa := TfrmCadEmpresa.Create(self);
  try
    frmCadEmpresa.ShowModal;
  finally
    FreeAndNil(frmCadEmpresa);
  end;

end;

procedure TFrmMan.CadastrodeFornecedores1Click(Sender: TObject);
begin
    frmCadFornecedor := TfrmCadFornecedor.Create(self);
  try
    frmCadFornecedor.ShowModal;
  finally
    FreeAndNil(frmCadFornecedor);
  end;
end;

procedure TFrmMan.CadastrodeGrupo1Click(Sender: TObject);
begin
    frmGrupo := TfrmGrupo.Create(self);
  try
    frmGrupo.ShowModal;
  finally
    FreeAndNil(frmGrupo);
  end;
end;

procedure TFrmMan.CadastrodeProdutos2Click(Sender: TObject);
begin
   frmRelCadProdutos := TfrmRelCadProdutos.Create(self);
  try
    frmRelCadProdutos.Relatorio.PreviewModal;
  finally
    frmRelCadProdutos.Release;
  end;
end;

procedure TFrmMan.CadastrodeSubGrupo1Click(Sender: TObject);
begin
  frmCadSubGrupo := TfrmCadSubGrupo.Create(self);
  try
    frmCadSubGrupo.ShowModal;
  finally
    FreeAndNil(frmCadSubGrupo);
  end;
end;

procedure TFrmMan.CadastrodeUnidade1Click(Sender: TObject);
begin
  frmCadUnMedidas := TfrmCadUnMedidas.Create(self);
  try
    frmCadUnMedidas.ShowModal;
  finally
    FreeAndNil(frmCadUnMedidas);
  end;
end;

procedure TFrmMan.CadastrodeUsuario1Click(Sender: TObject);
begin
  frmCadUsuario := TfrmCadUsuario.Create(self);
  try
    frmCadUsuario.ShowModal;
  finally
    FreeAndNil(frmCadUsuario);
  end;
end;

procedure TFrmMan.CadastrodeVeculo1Click(Sender: TObject);
begin
  frmCadVeiculo := TfrmCadVeiculo.Create(self);
  try
    frmCadVeiculo.ShowModal;
  finally
    FreeAndNil(frmCadVeiculo);
  end;

end;

procedure TFrmMan.AESDEACESSO1Click(Sender: TObject);
begin
  frmCadAcaoAcesso := TfrmCadAcaoAcesso.Create(self);
  try
   frmCadAcaoAcesso.ShowModal;
  finally
   FreeAndNil(frmCadAcaoAcesso);
  end;
end;

procedure TFrmMan.AlterarSenha1Click(Sender: TObject);
begin
   frmAlterarSenha := TfrmAlterarSenha.Create(self);
  try
    frmAlterarSenha.ShowModal;
  finally
    FreeAndNil(frmAlterarSenha);
  end;
end;

procedure TFrmMan.AtualizacaoBancoDados(aForm:TfrmAtualizaBancoDados);
var vAtualizarMSSQL :TAtualizabancoDadosMSSQL;
begin
   try
    vAtualizarMSSQL :=  TAtualizabancoDadosMSSQL.Create(DtmPrincipal.ConexaoDB);
    vAtualizarMSSQL.AtualizaBancoDeDadosMSSQL;
   finally
     if Assigned(vAtualizarMSSQL) then
      FreeAndNil(vAtualizarMSSQL);

   end;
end;

procedure TFrmMan.Fechar1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmMan.Fichadeclientes1Click(Sender: TObject);
begin
  frmRelCadClientesFicha := TfrmRelCadClientesFicha.Create(self);
  try
    frmRelCadClientesFicha.Relatorio.PreviewModal;
  finally
    frmRelCadClientesFicha.Release;
  end;
end;

procedure TFrmMan.FormCreate(Sender: TObject);
begin
    if not Conexao then
    begin
      ShowMessage('N�o foi possivel acessar o banco de dados, Contate o administrador');
      Application.Terminate;
       Exit;
    end;
  if MessageBox(Handle,'Deseja atualizar o sistema?','Atualiza��o' ,MB_YESNO +MB_DEFBUTTON2+ MB_ICONINFORMATION) = IDYES then
  begin

    frmAtualizaBancoDados := TfrmAtualizaBancoDados.Create(self);
    frmAtualizaBancoDados.Show;
    frmAtualizaBancoDados.Refresh;
    AtualizacaoBancoDados(frmAtualizaBancoDados);
  end;

      TAcaoAcesso.CriarAcoes(TfrmCadUsuario,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmRelCadClientes,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadEmpresa,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadFornecedor,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmGrupo,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmRelCadProdutos,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadSubGrupo,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadUnMedidas,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadUsuario,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadVeiculo,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmRelCadClientesFicha,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmDespesas,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmBackupRestore,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmTipoDespesaReceita,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TFrmOrcamento,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmOrcamentoCliente,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmRelOrcPorData,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmOrcPorData,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmUsuarioVsAcoes,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadProduto,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmReceita,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmVendas,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmVendaPorData,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmVendaCliente,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmReceitaPorData,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmDespesaPorData,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmReceitaPorTipo,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmDespesaPorTipo,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.CriarAcoes(TfrmCadCliente,DtmPrincipal.ConexaoDB);
      TAcaoAcesso.PreencherUsuariosVsAcoes(DtmPrincipal.ConexaoDB);





//    DTMGrafico:=TDTMGrafico.Create(Self);
//    AtualizarDashBoard;
  frmAtualizaBancoDados.Free;

  TeclaEnter := TMREnter.Create(self);
  TeclaEnter.FocusEnabled :=True;
  TeclaEnter.FocusColor := clInfoBk;

end;

procedure TFrmMan.FormDestroy(Sender: TObject);
begin
if Assigned(TeclaEnter) then
   FreeAndNil(TeclaEnter);

if Assigned(DtmPrincipal) then
   FreeAndNil(DtmPrincipal);

end;


procedure TFrmMan.Despesa1Click(Sender: TObject);
begin
  frmDespesas := TfrmDespesas.Create(self);
  try
   frmDespesas.ShowModal;
  finally
   FreeAndNil(frmDespesas);
  end;
end;

procedure TFrmMan.Despesaportipo1Click(Sender: TObject);
begin
   frmDespesaPorTipo := TfrmDespesaPorTipo.Create(self);
  try
   frmDespesaPorTipo.ShowModal;
  finally
   FreeAndNil(frmDespesaPorTipo);
  end;

end;

procedure TFrmMan.FormShow(Sender: TObject);
var vLogin : TfrmLogin;
begin
    try
     Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'logo.jpg');
    except
      MessageDlg('Logotipo n�o encontrado na pasta do sistema!',mtInformation,[mbOK],0);
    end;
    vUsuarioLogado := TUsuarioLogado.Create;
    vLogin := TfrmLogin.Create(self);
    try
      vLogin.ShowModal;
    finally
       vLogin.Free;
       sbPrincipal.Panels[2].Text:='USU�RIO: '+vUsuarioLogado.nome;
    end;
end;

procedure TFrmMan.Image10Click(Sender: TObject);
begin
 Vendas1Click(Sender);
end;

procedure TFrmMan.Image2Click(Sender: TObject);
begin
  frmBackupRestore := TfrmBackupRestore.Create(self);
  try
   frmBackupRestore.ShowModal;
  finally
   FreeAndNil(frmBackupRestore);
  end;

end;

procedure TFrmMan.Image3Click(Sender: TObject);
begin
 Produtos1Click(Sender);
end;

procedure TFrmMan.Image4Click(Sender: TObject);
begin
 CadastrodeFornecedores1Click(Sender);
end;

procedure TFrmMan.Image5Click(Sender: TObject);
begin
 Oramento2Click(Sender);
end;

procedure TFrmMan.Image7Click(Sender: TObject);
begin
 ShellExecute(0,nil,PChar('Calc.Exe'),nil,nil,SW_SHOWNORMAL);
end;

procedure TFrmMan.Image8Click(Sender: TObject);
begin
 CadastrodeUsuario1Click(Sender);
end;

procedure TFrmMan.Image9Click(Sender: TObject);
begin
 Fechar1Click(sender);
end;

procedure TFrmMan.imClienteClick(Sender: TObject);
begin
 CadastrodeClientes1Click(sender);
end;

procedure TFrmMan.ipodeDespesaReceita1Click(Sender: TObject);
begin
  frmTipoDespesaReceita := TfrmTipoDespesaReceita.Create(self);
  try
    frmTipoDespesaReceita.ShowModal;
  finally
    FreeAndNil(frmTipoDespesaReceita);
  end;
end;

procedure TFrmMan.Oramento2Click(Sender: TObject);
begin
  FrmOrcamento := TFrmOrcamento.Create(self);
  try
    FrmOrcamento.ShowModal;
  finally
    FreeAndNil(FrmOrcamento);
  end;

end;

procedure TFrmMan.OramentoPorCliente1Click(Sender: TObject);
begin
  frmOrcamentoCliente := TfrmOrcamentoCliente.Create(Self);
 try
  frmOrcamentoCliente.ShowModal;
 finally
  FreeAndNil(frmOrcamentoCliente);
 end;
end;

procedure TFrmMan.OramentoporData1Click(Sender: TObject);
begin
 frmOrcPorData := TfrmOrcPorData.Create(Self);
 try
  frmOrcPorData.ShowModal;
 finally
  FreeAndNil(frmOrcPorData);
 end;
end;

procedure TFrmMan.OramentoPorDate1Click(Sender: TObject);
begin
  frmOrcPorData := TfrmOrcPorData.Create(Self);
 try
  frmOrcPorData.ShowModal;
 finally
  FreeAndNil(frmOrcPorData);
 end;

end;

procedure TFrmMan.PERMISSODEAESPARAUSURIO1Click(Sender: TObject);
begin
   frmUsuarioVsAcoes := TfrmUsuarioVsAcoes.Create(self);
  try
    frmUsuarioVsAcoes.ShowModal;
  finally
    FreeAndNil(frmUsuarioVsAcoes);
  end;
end;

procedure TFrmMan.Produtos1Click(Sender: TObject);
begin
  frmCadProduto := TfrmCadProduto.Create(self);
  try
    frmCadProduto.ShowModal;
  finally
    FreeAndNil(frmCadProduto);
  end;
end;

procedure TFrmMan.Receita1Click(Sender: TObject);
begin
   frmReceita := TfrmReceita.Create(self);
   try
    frmReceita.ShowModal;
   finally
    FreeAndNil(frmReceita);
   end;
end;

procedure TFrmMan.Receita2Click(Sender: TObject);
begin
   frmReceitaPorData := TfrmReceitaPorData.Create(self);
   try
    frmReceitaPorData.ShowModal;
   finally
    FreeAndNil(frmReceitaPorData);
   end;

end;

procedure TFrmMan.Receitaportipo1Click(Sender: TObject);
begin
  frmReceitaPorTipo := TfrmReceitaPorTipo.Create(self);
  try
    frmReceitaPorTipo.ShowModal;
  finally
    FreeAndNil(frmReceitaPorTipo);
  end;
end;

procedure TFrmMan.Sair1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmMan.Timer1Timer(Sender: TObject);
begin
 SbPrincipal.Panels[1].Text := 'Data: '+ DateToStr(Date);
 SbPrincipal.Panels[3].Text := 'Hora: '+TimeToStr(Time);
end;

procedure TFrmMan.Venda1Click(Sender: TObject);
begin
   frmDespesaPorData := TfrmDespesaPorData.Create(self);
   try
    frmDespesaPorData.ShowModal;
   finally
    FreeAndNil(frmDespesaPorData);
   end

end;

procedure TFrmMan.VendaPorCliente1Click(Sender: TObject);
begin
   frmVendaCliente := TfrmVendaCliente.Create(self);
   try
    frmVendaCliente.ShowModal;
   finally
    FreeAndNil(frmVendaCliente);
   end;
end;

procedure TFrmMan.Vendas1Click(Sender: TObject);
begin
   frmVendas := TfrmVendas.Create(self);
   try
    frmVendas.ShowModal;
   finally
    FreeAndNil(frmVendas);
   end;
end;

procedure TFrmMan.VendasPorData1Click(Sender: TObject);
begin
   frmVendaPorData := TfrmVendaPorData.Create(self);
   try
    frmVendaPorData.ShowModal;
   finally
    FreeAndNil(frmVendaPorData);
   end;

end;

end.
