unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uOrcamento, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, RxCurrEdit, RxToolEdit, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  UFrmPadrao,uEnun,uDtmOpercoesVenda,uOpVendas,uDtmPrincipal, RxMemDS;

type
  TfrmVendas = class(TfrmPadrao)
    edtCodigoVenda: TLabeledEdit;
    lkpCliente: TLabeledEdit;
    edtDataVenda: TDateEdit;
    Label2: TLabel;
    edtDataPrevisao: TDateEdit;
    Label9: TLabel;
    lkpVeiculo: TDBLookupComboBox;
    Label10: TLabel;
    dbgVenda: TDBGrid;
    btnIncluirCategoria: TSpeedButton;
    btnPesquisarOrcamento: TSpeedButton;
    QryOrcamento: TZQuery;
    DtsOrcamento: TDataSource;
    Panel4: TPanel;
    btnApagarItem: TBitBtn;
    btnAdicionarItem: TBitBtn;
    cbFormaPagto: TComboBox;
    Label8: TLabel;
    mmOBS: TMemo;
    EdtValorTotal: TCurrencyEdit;
    Label7: TLabel;
    Label15: TLabel;
    edtHoraPintura: TCurrencyEdit;
    Label14: TLabel;
    Label13: TLabel;
    cbOperacao: TComboBox;
    edtHorasServico: TCurrencyEdit;
    Label12: TLabel;
    Label6: TLabel;
    edtTotalProduto: TCurrencyEdit;
    edtDesconto: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtQtde: TCurrencyEdit;
    edtValorUnitario: TCurrencyEdit;
    Label11: TLabel;
    lkpProduto: TLabeledEdit;
    cbTipoPeca: TComboBox;
    zqPrincipalVend_Id: TIntegerField;
    zqPrincipalVend_Status: TWideStringField;
    zqPrincipalVend_CodCli: TIntegerField;
    zqPrincipalCli_Nome: TWideStringField;
    zqPrincipalVend_DataVenda: TDateTimeField;
    zqPrincipalVend_TotalVenda: TFloatField;
    zqPrincipalCli_Email: TWideStringField;
    zqPrincipalCli_Telefone1: TWideStringField;
    SpbProduto: TSpeedButton;
    EdtOrcamento: TLabeledEdit;
    spbCliente: TSpeedButton;
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDescontoExit(Sender: TObject);
    procedure dbgVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgVendaDblClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure lkpProdutoExit(Sender: TObject);
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure btnApagarItemClick(Sender: TObject);
    procedure btnPesquisarOrcamentoClick(Sender: TObject);
    procedure lkpBuscaOrcamentoExit(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure SpbProdutoClick(Sender: TObject);
    procedure EdtOrcamentoExit(Sender: TObject);
    procedure spbClienteClick(Sender: TObject);
    procedure lkpVeiculoExit(Sender: TObject);
    procedure edtDataPrevisaoExit(Sender: TObject);
    procedure lkpClienteExit(Sender: TObject);
  private
    DtmVenda: TDtmOperacaoVenda;
    vVenda  : Tvenda;
    procedure LimparCds;
    function TotalizarProduto(valorUnitario, Quantidade,
      Desconto: Double): Double;
    function TotalizarVenda: Double;
    function Gravar(EstadoDoCadastro: TEstadoCadastro): boolean; override;
    procedure CarregarRegistroSelecionado;
    function Apagar: Boolean; Override;
    procedure LimparComponenteItem;
    procedure CarregaDadosOrcamento;
    procedure CarregaVeiculo(PCliente: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation
uses  uRelProVendas,uConsultaOrcamento,uConsultaProduto,uConsultaClliente;

{$R *.dfm}

function TfrmVendas.Apagar: Boolean;
begin
   if vVenda.Selecionar(zqPrincipal.FieldByName('Vend_Id').AsInteger, DtmVenda.cdsItensVenda) then begin
     Result:=vVenda.Apagar;
  end;
end;

procedure TfrmVendas.btnAdicionarItemClick(Sender: TObject);
begin
  inherited;
    if lkpProduto.Text=EmptyStr then begin
     MessageDlg('Produto � um campo obrigat�rio' ,mtInformation,[mbOK],0);
     lkpProduto.SetFocus;
     abort;
  end;

  if edtValorUnitario.value<=0 then begin
     MessageDlg('Valor Unit�rio n�o pode ser Zero' ,mtInformation,[mbOK],0);
     edtValorUnitario.SetFocus;
     abort;
  end;

  if edtQtde.value<=0 then begin
     MessageDlg('Quantidade n�o pode ser Zero' ,mtInformation,[mbOK],0);
     edtQtde.SetFocus;
     abort;
  end;

  if DtmVenda.cdsItensVenda.Locate('VendItens_prodId', lkpProduto.Text, []) then begin
     MessageDlg('Este Produto j� foi selecionado' ,mtInformation,[mbOK],0);
     lkpProduto.SetFocus;
     abort;
  end;


  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQtde.Value,edtDesconto.Value);

  DtmVenda.cdsItensVenda.Append;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_prodId').AsString      :=lkpProduto.Text;
  DtmVenda.cdsItensVenda.FieldByName('Prod_Nome').AsString            :=DtmVenda.QryProduto.FieldByName('Prod_Nome').AsString;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_Quantidade').AsFloat   :=edtQtde.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_ValorUnitario').AsFloat:=edtValorUnitario.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_TotalProduto').AsFloat :=edtTotalProduto.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_Desc').AsFloat         := edtDesconto.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_Pintura').AsFloat      := edtHoraPintura.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_Hora').AsFloat         := edtHorasServico.Value;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_Operacao').AsString    := cbOperacao.Text;
  DtmVenda.cdsItensVenda.FieldByName('VendItens_TipoPeca').AsString    := cbTipoPeca.Text;
  DtmVenda.cdsItensVenda.Post;
  edtValorTotal.Value:=TotalizarVenda;
  LimparComponenteItem;
  lkpProduto.SetFocus;
end;

procedure TfrmVendas.btnAlterarClick(Sender: TObject);
begin
  if vVenda.Selecionar(zqPrincipal.FieldByName('Vend_Id').AsInteger, DtmVenda.cdsItensVenda) then begin

     edtCodigoVenda.Text     :=IntToStr(vVenda.VendaId);
     lkpCliente.Text         :=IntToStr(vVenda.ClienteId);
     edtDataVenda.Date       :=vVenda.DataVenda;
     edtValorTotal.Value     :=vVenda.TotalVenda;
     mmOBS.Text              :=vVenda.Obs;
     cbFormaPagto.Text       :=vVenda.FormaPagto;
     cbTipoPeca.Text         :=vVenda.TipoPeca;
     EdtOrcamento.Text       :=IntToStr(vVenda.CodOrcamento);
     edtOrcamento.enabled    := false;
     CarregaVeiculo(StrToInt(lkpCliente.Text));
     lkpVeiculo.KeyValue     :=vVenda.Veiculo;

 end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

Procedure TfrmVendas.CarregaVeiculo(PCliente : Integer);
begin
  DtmVenda.qryVeiculo.Close;
  DtmVenda.qryVeiculo.ParamByName('PCLIENTE').AsInteger := PCliente;
  DtmVenda.qryVeiculo.Open;
end;

procedure TfrmVendas.btnApagarItemClick(Sender: TObject);
begin
  inherited;
    if lkpProduto.Text=EmptyStr then begin
     MessageDlg('Selecione o Produto a ser exclu�do' ,mtInformation,[mbOK],0);
     EdtOrcamento.SetFocus;
     abort;
  end;

  if DtmVenda.cdsItensvenda.Locate('VendItens_prodId', lkpProduto.Text, []) then begin
     DtmVenda.cdsItensvenda.Delete;
     LimparComponenteItem;
  end;

  edtValorTotal.Value:=TotalizarVenda;
end;

procedure TfrmVendas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  LimparCds;
end;

procedure TfrmVendas.btnGravarClick(Sender: TObject);
begin
  inherited;
  LimparCds;
end;

procedure TfrmVendas.btnIncluirCategoriaClick(Sender: TObject);
begin
  inherited;
  FrmOrcamento := TFrmOrcamento.Create(self);
  try
    FrmOrcamento.ShowModal;
  finally
    FreeAndNil(FrmOrcamento);
  end;
end;

procedure TfrmVendas.btnInserirClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Date:=Date;
  edtDataPrevisao.Date := Date;
  EdtOrcamento.SetFocus;
  LimparCds;
end;

procedure TfrmVendas.btnPesquisarOrcamentoClick(Sender: TObject);
begin
  inherited;
  frmCunsultaOrcamento:=TfrmCunsultaOrcamento.Create(Self);
  try
    if EdtOrcamento.Text <> EmptyStr then
      frmCunsultaOrcamento.aIniciarPesquisaId := EdtOrcamento.Text;

    frmCunsultaOrcamento.ShowModal;

    if frmCunsultaOrcamento.aRetornarIdSelecionado <> Unassigned then  //N�o Atribuido
      EdtOrcamento.Text := frmCunsultaOrcamento.aRetornarIdSelecionado;

    if EdtOrcamento.Text <> EmptyStr then
      EdtOrcamentoExit(Sender);
  finally
    FreeAndNil(frmCunsultaOrcamento);
  end;
end;

procedure TfrmVendas.LimparCds;
begin
  DtmVenda.cdsItensvenda.First;
  while not DtmVenda.cdsItensvenda.Eof do
    DtmVenda.cdsItensvenda.Delete;

end;

procedure TfrmVendas.LimparComponenteItem;
begin
  lkpProduto.Text   := '';
  edtQtde.Value   := 0;
  edtValorUnitario.Value:= 0;
  edtTotalProduto.Value := 0;
  edtHoraPintura.Value := 0;
  edtHorasServico.Value :=0;
  cbTipoPeca.ItemIndex :=0;
  cbOperacao.Text :='';
  edtDesconto.text :='';
  cbFormaPagto.ItemIndex := 0;
end;

procedure TfrmVendas.lkpClienteExit(Sender: TObject);
begin
  inherited;
  CarregaVeiculo(StrToInt(lkpCliente.Text));
//  DtmVenda.qryVeiculo.Close;
//  DtmVenda.qryVeiculo.ParamByName('PCLIENTE').AsInteger := StrToInt(lkpCliente.Text);
//  DtmVenda.qryVeiculo.Open;
  lkpVeiculo.SetFocus;
end;

procedure TfrmVendas.lkpBuscaOrcamentoExit(Sender: TObject);
begin
  inherited;
    if vVenda.SelecionarOrcamento(StrToInt(EdtOrcamento.Text), DtmVenda.cdsItensVenda) then begin
     edtCodigoVenda.Text         :=IntToStr(vVenda.VendaId);
     lkpCliente.text             :=IntToStr(vVenda.ClienteId);
     edtDataVenda.Date           :=now;
     edtValorTotal.Value         :=vVenda.TotalVenda;
     lkpVeiculo.KeyValue         :=vVenda.Veiculo;
     cbFormaPagto.Text           :=vVenda.FormaPagto;
     cbTipoPeca.Text             :=vVenda.TipoPeca;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
end;

Procedure TfrmVendas.CarregaDadosOrcamento;
begin
     edtCodigoVenda.Text         :=IntToStr(vVenda.VendaId);
     lkpCliente.text             :=IntToStr(vVenda.ClienteId);
     edtDataVenda.Date           := now;
     edtValorTotal.Value         :=vVenda.TotalVenda;
     mmOBS.Text                  := '';
     lkpVeiculo.KeyValue         :=vVenda.Veiculo;
     cbFormaPagto.Text           :=vVenda.FormaPagto;
     cbTipoPeca.Text             :=vVenda.TipoPeca;

end;

procedure TfrmVendas.lkpProdutoExit(Sender: TObject);
begin
  inherited;
     if lkpProduto.Text<>EmptyStr then begin
    DtmVenda.QryProduto.Close;
    DtmVenda.QryProduto.ParamByName('PProd_cod').AsInteger := StrToInt(lkpProduto.Text);
    DtmVenda.QryProduto.Open;
    edtValorUnitario.Value:=DtmVenda.QryProduto.FieldByName('prod_ValorUnit').AsFloat;
    edtValorUnitario.setfocus;
    edtQtde.Value:=1;
    edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQtde.Value,edtDesconto.Value);
    edtValorUnitario.SetFocus;
  end;
end;

procedure TfrmVendas.lkpVeiculoExit(Sender: TObject);
begin
  inherited;
  edtDataVenda.SetFocus;
end;

procedure TfrmVendas.spbClienteClick(Sender: TObject);
begin
  inherited;
    frmConsultaCliente:=TfrmConsultaCliente.Create(Self);
  try
  if lkpCliente.Text<>EmptyStr then
     frmConsultaCliente.aIniciarPesquisaId:=lkpCliente.Text;

  frmConsultaCliente.ShowModal;

  if frmConsultaCliente.aRetornarIdSelecionado<>Unassigned then  //N�o Atribuido
   begin
     lkpCliente.Text :=frmConsultaCliente.aRetornarIDSelecionado;

   end;
  if lkpCliente.Text <> EmptyStr then
   lkpClienteExit(Sender);
 finally
  FreeAndNil(frmConsultaCliente);
  end;
end;

procedure TfrmVendas.SpbProdutoClick(Sender: TObject);
begin
  inherited;

  frmTelaConsultaProduto:=TfrmTelaConsultaProduto.Create(Self);

  if lkpProduto.Text<>'' then
     frmTelaConsultaProduto.aIniciarPesquisaId:=lkpProduto.Text;

  frmTelaConsultaProduto.ShowModal;

  if frmTelaConsultaProduto.aRetornarIdSelecionado<>Unassigned then  //N�o Atribuido
     lkpProduto.Text :=frmTelaConsultaProduto.aRetornarIdSelecionado;

  if lkpProduto.Text <> EmptyStr then
  lkpProduto.OnExit(Sender);

 frmTelaConsultaProduto.Release;
end;

function TfrmVendas.TotalizarProduto(valorUnitario, Quantidade,Desconto:Double):Double;
begin
  result :=(valorUnitario * Quantidade) - ((valorUnitario * Quantidade) * (Desconto)/100);
end;

function TfrmVendas.TotalizarVenda:Double;
begin
  result:=0;
  DtmVenda.cdsItensVenda.First;
  while not DtmVenda.cdsItensVenda.Eof do begin
    result := result + DtmVenda.cdsItensVenda.FieldByName('VendItens_TotalProduto').AsFloat;
    DtmVenda.cdsItensVenda.Next;
  end;
end;

procedure TfrmVendas.CarregarRegistroSelecionado;
begin
  lkpProduto.Text       := DtmVenda.cdsItensVenda.FieldByName('VendItens_prodId').AsString;
  edtQtde.Value         := DtmVenda.cdsItensVenda.FieldByName('Prod_Nome').AsFloat;
  edtValorUnitario.Value:= DtmVenda.cdsItensVenda.FieldByName('VendItens_Quantidade').AsFloat;
  edtTotalProduto.Value := DtmVenda.cdsItensVenda.FieldByName('VendItens_TotalProduto').AsFloat;
  edtDesconto.Value     := DtmVenda.cdsItensVenda.FieldByName('VendItens_Desc').AsFloat;
  edtHoraPintura.Value  := DtmVenda.cdsItensVenda.FieldByName('VendItens_Pintura').AsFloat;
  edtHorasServico.Value := DtmVenda.cdsItensVenda.FieldByName('VendItens_Hora').AsFloat;
  cbOperacao.Text       := DtmVenda.cdsItensVenda.FieldByName('VendItens_Operacao').AsString;

end;

procedure TfrmVendas.dbgVendaDblClick(Sender: TObject);
begin
  inherited;
  CarregarRegistroSelecionado;
end;

procedure TfrmVendas.dbgVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  BloqueiaCTRL_DEL_DBGrid(key, shift);
  inherited;
end;

procedure TfrmVendas.edtDataPrevisaoExit(Sender: TObject);
begin
  inherited;
  lkpProduto.SetFocus;
end;

procedure TfrmVendas.edtDescontoExit(Sender: TObject);
begin
  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQtde.Value,edtDesconto.value);
end;

procedure TfrmVendas.EdtOrcamentoExit(Sender: TObject);
begin
  inherited;
  if StrToInt(EdtOrcamento.Text) = 0 then exit;

  if not vVenda.SelecionarOrcamento(StrToInt(EdtOrcamento.Text),DtmVenda.cdsItensVenda) then
     ShowMessage('Or�amento n�o localizado!')
     else
     CarregaDadosOrcamento;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    if Assigned(DtmVenda) then
     FreeAndNil(DtmVenda);

  if Assigned(vVenda) then
     FreeAndNil(vVenda);


end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  inherited;
  DtmVenda := TDtmOperacaoVenda.Create(self);

  vVenda:= TVenda.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='Vend_Id';
end;

function TfrmVendas.Gravar(EstadoDoCadastro: TEstadoCadastro): boolean;
begin
 Result:=False;
  if edtCodigoVenda.Text<>EmptyStr then
     vVenda.VendaId:=StrToInt(edtCodigoVenda.Text)
  else
     vVenda.VendaId:=0;

  if EdtOrcamento.Text <> null then
     vVenda.CodOrcamento := vVenda.CodOrcamento
     else
     vVenda.CodOrcamento := 0;

  vVenda.ClienteId            :=StrToInt(lkpCliente.Text);
  vVenda.DataVenda            :=edtDataVenda.Date;
  vVenda.TotalVenda           :=edtValorTotal.Value;
  vVenda.Obs                  := mmOBS.Text;
  vVenda.Veiculo              :=lkpVeiculo.KeyValue;
  vVenda.FormaPagto           := cbFormaPagto.Text;
  vVenda.CodOrcamento         := StrToInt(edtOrcamento.text);


  if (EstadoDoCadastro=ecInserir) then begin
     vVenda.VendaId:=vVenda.Inserir(DtmVenda.cdsItensVenda);
  end
  else if (EstadoDoCadastro=ecAlterar) then
     vVenda.Atualizar(DtmVenda.cdsItensVenda);

  frmRelProVendas:=TfrmRelProVendas.Create(self);
  frmRelProVendas.QryVenda.Close;
  frmRelProVendas.QryVenda.ParamByName('Vend_Id').AsInteger:= vVenda.VendaId;
  frmRelProVendas.QryVenda.Open;

  frmRelProVendas.QryVendaItens.Close;
  frmRelProVendas.QryVendaItens.ParamByName('Vend_Id').AsInteger:= vVenda.VendaId;
  frmRelProVendas.QryVendaItens.Open;

  frmRelProVendas.QryVeiculo.Close;
  frmRelProVendas.QryVeiculo.ParamByName('PVEIC_COD').AsInteger:= vVenda.Veiculo;
  frmRelProVendas.QryVeiculo.Open;

  frmRelProVendas.QryEmpresa.Close;
  frmRelProVendas.QryEmpresa.Open;


  frmRelProVendas.Relatorio.PreviewModal;
  frmRelProVendas.Release;

  Result:=true;
end;

end.
