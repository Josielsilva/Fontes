unit uCadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, ZDataset, Vcl.Mask,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,uClientes,uDtmPrincipal,
  RxToolEdit,uCadVeiculo,uEnun, ZAbstractRODataset, ZAbstractDataset, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmCadVeiculo = class(TfrmPadrao)
    lblCodigo: TLabeledEdit;
    edtModelo: TLabeledEdit;
    edtChassi: TLabeledEdit;
    btnCadastroCliente: TBitBtn;
    edtFabricante: TLabeledEdit;
    cbTipoCambio: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    cbCombustivel: TComboBox;
    lkbCliente: TDBLookupComboBox;
    lblCliente: TLabel;
    zqCliente: TZQuery;
    dsCliente: TDataSource;
    edtDataCadastro: TDateEdit;
    Label4: TLabel;
    edtRevisao: TDateEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    mkeAno: TMaskEdit;
    mmObs: TMemo;
    Placa: TLabel;
    zqPrincipalVeic_Cod: TIntegerField;
    zqPrincipalVeic_Marca_Modelo: TWideStringField;
    zqPrincipalVeic_Placa: TWideStringField;
    zqPrincipalVeic_Chassi: TWideStringField;
    zqPrincipalVeic_Ano: TWideStringField;
    zqPrincipalVeic_TipoCombustivel: TWideStringField;
    zqPrincipalVeic_TipoCambio: TWideStringField;
    zqPrincipalVeic_Fabricante: TWideStringField;
    zqPrincipalVeic_DataCadastro: TDateTimeField;
    zqPrincipalVeic_UltimaRevisao: TDateTimeField;
    zqPrincipalVeic_Obs: TWideStringField;
    zqPrincipalVeic_Cli_Cod: TIntegerField;
    zqPrincipalVeic_Cor: TWideStringField;
    edtCor: TLabeledEdit;
    edtPlaca: TMaskEdit;
    procedure btnCadastroClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkbClienteExit(Sender: TObject);
  private
  vVeiculo:TCadVeiculo;
   function Apagar:Boolean; override;
   function Gravar(EstadoDoCadastro:TEstadoCadastro):Boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVeiculo: TfrmCadVeiculo;

implementation

{$R *.dfm}

function TfrmCadVeiculo.Apagar: Boolean;
begin
    if vVeiculo.Selecionar(zqPrincipal.FieldByName('veic_cod').AsInteger) then begin
     Result:=vVeiculo.Apagar;
  end;
end;

procedure TfrmCadVeiculo.btnCadastroClienteClick(Sender: TObject);
var frmCliente : TfrmCliente;
begin
  inherited;
  frmCliente := TfrmCliente.Create(self);
  try
   frmCliente.ShowModal;
  finally
   //lblCliente.text := frmCliente.lbeCodigo.text;
   FreeAndNil(frmCliente);
  end;

end;

procedure TfrmCadVeiculo.btnAlterarClick(Sender: TObject);
begin

  if vVeiculo.Selecionar(zqPrincipal.FieldByName('veic_cod').AsInteger) then
  begin
     lblCodigo.Text           :=IntToStr(vVeiculo.Codigo);
     edtModelo.Text           :=vVeiculo.Marca_Modelo;
     edtPlaca.Text            :=vVeiculo.Placa;
     edtChassi.Text           :=vVeiculo.Chassi;
     mkeAno.Text              :=vVeiculo.AnoDeFrabrica;
     cbCombustivel.Text       :=vVeiculo.TipoCumbustivel;
     cbTipoCambio.Text        :=vVeiculo.TipoCambio;
     edtFabricante.Text       := vVeiculo.Frabricante;
     edtDataCadastro.Date     :=vVeiculo.DataCadastro;
     edtRevisao.Date          :=vVeiculo.UltimaRevisao;
     mmObs.Text               :=vVeiculo.Obs;
     lkbCliente.KeyValue      :=vVeiculo.Cli_cod;
     edtCor.Text              :=vVeiculo.Cor;

  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

procedure TfrmCadVeiculo.btnInserirClick(Sender: TObject);
begin
  inherited;
    edtDataCadastro.Date:=Date;
    lkbCliente.SetFocus;
end;

procedure TfrmCadVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  zqCliente.Close;

  if Assigned(vVeiculo) then
    FreeAndNil(vVeiculo);
end;

procedure TfrmCadVeiculo.FormCreate(Sender: TObject);
begin
  inherited;
   vVeiculo:=TCadVeiculo.Create(dtmPrincipal.ConexaoDB);
   IndiceAtual := 'Veic_Marca_Modelo';
end;

procedure TfrmCadVeiculo.FormShow(Sender: TObject);
begin
  inherited;
  zqCliente.Open;
  btnCadastroCliente.Enabled := false;
end;

function TfrmCadVeiculo.Gravar(EstadoDoCadastro: TEstadoCadastro): Boolean;
begin
   if lblCodigo.Text<>EmptyStr then
     vVeiculo.codigo:=StrToInt(lblCodigo.Text)
  else
       vVeiculo.codigo:=0;
       vVeiculo.Marca_Modelo     :=      edtModelo.Text;
       vVeiculo.Placa            :=      edtPlaca.Text;
       vVeiculo.Chassi           :=      edtChassi.Text;
       vVeiculo.AnoDeFrabrica    :=      mkeAno.Text;
       vVeiculo.TipoCumbustivel  :=      cbCombustivel.Text;
       vVeiculo.TipoCambio       :=      cbTipoCambio.Text;
       vVeiculo.Frabricante      :=     edtFabricante.Text;
       vVeiculo.DataCadastro     :=      edtDataCadastro.Date;
       vVeiculo.UltimaRevisao    :=      edtRevisao.Date;
       vVeiculo.Obs              :=      mmObs.Text;
       vVeiculo.Cli_cod          :=      lkbCliente.KeyValue;
       vVeiculo.Cor              :=      edtCor.Text;

  if (EstadoDoCadastro=ecInserir) then
     Result:=vVeiculo.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=vVeiculo.Atualizar;
end;

procedure TfrmCadVeiculo.lkbClienteExit(Sender: TObject);
begin
  inherited;
  if LkbCliente.KeyValue = NULL then
    begin
     btnCadastroCliente.Enabled := true;
     btnCadastroCliente.SetFocus;
    end
    else
    btnCadastroCliente.Enabled := false;

end;

end.
