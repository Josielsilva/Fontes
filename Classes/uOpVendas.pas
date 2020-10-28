unit uOpVendas;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils,
     Data.DB,
     uControleEstoque,
     uEnun,
     RxMemDS;

type
  TVenda = class
  private
    ConexaoDB:TZConnection;
    F_VendaId:Integer;
    F_clienteId:Integer;
    F_dataVenda:TDateTime;
    F_totalVenda: Double;
    F_Obs :string;
    F_Veiculo :Integer;
    F_FormaPagto :string;
    F_TipoPeca :string;
    F_CodOrcamento : Integer;
    //function EsteItemExiste(VENDAId, produtoId: Integer): Boolean;
    function InNot(cds: TRxMemoryData): String;
    function AtualizarItem(cds: TRxMemoryData): Boolean;
    function ApagaItens(cds: TRxMemoryData): Boolean;
    function InserirItens(cds: TRxMemoryData; IdVenda: Integer): Boolean;
    procedure RetornarEstoque(sCodigo: String; Acao:TAcaoExcluirEstoque);
    procedure BaixarEstoque(produtoId:Integer; Quantidade:Double);
    procedure GravaReceita(pIdVENDA,pCliente :Integer; pValor :Double);
    function EsteItemExiste(VendaId, produtoId: Integer): Boolean;
    procedure BaixaOrcamento(pCodOrcamento: Integer);

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir(cds:TRxMemoryData):Integer;
    function Atualizar(cds:TRxMemoryData):Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer; var cds:TRxMemoryData):Boolean;
    function SelecionarOrcamento(id: Integer; var cds: TRxMemoryData): Boolean;
  published
    property VendaId:Integer     read F_VendaId    write F_VendaId;
    property ClienteId:Integer   read F_clienteId  write F_clienteId;
    property DataVenda:TDateTime read F_dataVenda  write F_dataVenda;
    property TotalVenda:Double   read F_totalVenda write F_totalVenda;
    property Obs : string            read F_Obs write F_Obs;
    property Veiculo : Integer        read F_Veiculo write F_Veiculo;
    property FormaPagto:string       read F_FormaPagto write F_FormaPagto;
    property TipoPeca :string        read F_TipoPeca     write F_TipoPeca;
    property CodOrcamento :Integer   read F_CodOrcamento write F_CodOrcamento;
  end;

implementation


{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TVenda.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TVenda.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TVenda.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Venda Nro: '+IntToStr(F_VendaId),mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    //Apaga os Itens Primeiro
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM VendaItens '+
                ' WHERE VendItens_Idvenda=:VendItens_Idvenda ');
    Qry.ParamByName('VendItens_Idvenda').AsInteger :=F_VendaId;
    Try
      Qry.ExecSQL;
      //Apaga a Tabela Master
      Qry.SQL.Clear;
      Qry.Close;
      Qry.SQL.Add('DELETE FROM VENDA '+
                  ' WHERE Vend_Id=:Vend_Id ');
      Qry.ParamByName('Vend_Id').AsInteger :=F_VendaId;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.InNot(cds:TRxMemoryData):String;
var sInNot:String;
begin
  sInNot:=EmptyStr;
  cds.First;
  while not cds.Eof do begin
    if sInNot=EmptyStr then
       sInNot := cds.FieldByName('Prod_Cod').AsString
    else
       sInNot := sInNot +','+cds.FieldByName('Prod_Cod').AsString;

    cds.Next;
  end;
  Result:=sInNot;
end;

function TVenda.Atualizar(cds:TRxMemoryData): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE VENDA '+
                '   SET Vend_CodCli=:Vend_CodCli '+
                '      ,Vend_DataVenda     =:Vend_DataVenda '+
                '      ,Vend_TotalVenda    =:Vend_TotalVenda '+
                '      ,Vend_Obs           =:Vend_Obs'+
                '      ,Vend_Veiculo       =:Vend_Veiculo'+
                '      ,Vend_FormPagto     =:Vend_FormPagto'+
                '      ,Vend_CodVENDA  =:Vend_CodVENDA'+
                ' WHERE vend_Id=:vend_Id ');
    Qry.ParamByName('vend_Id').AsInteger            :=Self.F_VendaId;
    Qry.ParamByName('vend_CodCli').AsInteger        :=Self.F_clienteId;
    Qry.ParamByName('vend_DataVenda').AsDateTime    :=Self.F_dataVenda;
    Qry.ParamByName('vend_totalVenda').AsFloat      :=Self.F_totalVenda;
    Qry.ParamByName('vend_Obs').AsString            :=Self.F_Obs;
    Qry.ParamByName('vend_Veiculo').AsInteger        :=Self.F_Veiculo;
    Qry.ParamByName('Vend_FormPagto').AsString      := Self.F_FormaPagto;
    Qry.ParamByName('Vend_CodVENDA').AsInteger  :=Self.F_CodOrcamento;

    Try
      //Update
      Qry.ExecSQL;

      //Apagar Itens no banco que foram apagados na tela
      ApagaItens(cds);

      cds.First;
      while not cds.Eof do begin
        if EsteItemExiste(Self.F_VendaId, cds.FieldByName('Prod_Cod').AsInteger) then begin
          AtualizarItem(cds);
        end
        else begin
          InserirItens(cds, Self.F_VendaId);
        end;
        cds.Next;
      end;
      ConexaoDB.Commit;
    Except
      Result:=false;
      ConexaoDB.Rollback;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.AtualizarItem(cds:TRxMemoryData): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    //RetornarEstoque(cds.FieldByName('Prod_Cod').AsString, aeeAlterar);
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE VENDAItens '+
                '   SET vendItens_ValorUnitario =:vendItens_ValorUnitario '+
                '      ,vendItens_Quantidade    =:vendItens_Quantidade '+
                '      ,vendItens_TotalProduto  =:vendItens_TotalProduto '+
                '      ,vendItens_Operacao      =:vendItens_Operacao '+
                '      ,vendItens_Desc          =:vendItens_Desc'+
                '      ,vendItens_Hora          =:vendItens_Hora'+
                '      ,vendItens_Pintura       =:vendItens_Pintura'+
                ' WHERE vendItens_Id=:vendItens_Id AND vendItens_prodId=:vendItens_prodId ');
    Qry.ParamByName('vendItens_Id').AsInteger      :=Self.F_VendaId;
    Qry.ParamByName('vendItens_prodId').AsInteger     :=cds.FieldByName('vendItens_prodId').AsInteger;
    Qry.ParamByName('vendItens_ValorUnitario').AsFloat:=cds.FieldByName('vendItens_ValorUnitario').AsFloat;
    Qry.ParamByName('vendItens_Quantidade').AsFloat   :=cds.FieldByName('vendItens_Quantidade').AsFloat;
    Qry.ParamByName('vendItens_TotalProduto').AsFloat :=cds.FieldByName('vendItens_TotalProduto').AsFloat;
    Qry.ParamByName('vendItens_Operacao').AsString    :=cds.FieldByName('vendItens_Operacao').AsString;
    Qry.ParamByName('vendItens_Desc').AsFloat         :=cds.FieldByName('vendItens_Desc').AsFloat;
    Qry.ParamByName('vendItens_Hora').AsFloat         :=cds.FieldByName('vendItens_Hora').AsFloat;
    Qry.ParamByName('vendItens_Pintura').AsFloat      :=cds.FieldByName('vendItens_Pintura').AsFloat;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
       BaixarEstoque(cds.FieldByName('vendItens_prodId').AsInteger, cds.FieldByName('vendItens_Quantidade').AsFloat);
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

Procedure TVenda.RetornarEstoque(sCodigo:String; Acao:TAcaoExcluirEstoque);
var Qry:TZQuery;
    oControleEstoque:TControleEstoque;
begin
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(   ' SELECT vendItens_prodId, vendItens_Quantidade '+
                   '   FROM VENDAItens '+
                   '  WHERE vendItens_Id=:vendItens_Id ');
    if Acao=aeeApagar then
       Qry.SQL.Add('  AND vendItens_prodId NOT IN ('+sCodigo+') ')
    else
       Qry.SQL.Add('  AND vendItens_prodId = ('+sCodigo+') ');

    Qry.ParamByName('vendItens_prodId').AsInteger    :=Self.F_VendaId;
    Try
      oControleEstoque:=TControleEstoque.Create(ConexaoDB);
      Qry.Open;
      Qry.First;
      while not Qry.Eof do begin
         oControleEstoque.ProdutoId  :=Qry.FieldByName('vendItens_prodId').AsInteger;
         oControleEstoque.Quantidade :=Qry.FieldByName('vendItens_Quantidade').AsFloat;
         oControleEstoque.RetornarEstoque;
         Qry.Next;
      end;
    Finally
      if Assigned(oControleEstoque) then
         FreeAndNil(oControleEstoque);
    End;
end;
//
Procedure TVenda.BaixarEstoque(produtoId:Integer; Quantidade:Double);
var oControleEstoque:TControleEstoque;
begin
    Try
      oControleEstoque:=TControleEstoque.Create(ConexaoDB);
      oControleEstoque.ProdutoId  :=produtoId;
      oControleEstoque.Quantidade :=Quantidade;
      oControleEstoque.BaixarEstoque;
    Finally
      if Assigned(oControleEstoque) then
         FreeAndNil(oControleEstoque);
    End;
end;

function TVenda.ApagaItens(cds:TRxMemoryData): Boolean;
var Qry:TZQuery;
    sCodNoCds:String;
begin
  try
    Result:=true;
    //Pega os codigos que estão no Cliente para Selecionar o In Not no Banco de Dados
    sCodNoCds:= InNot(cds);
    //Retorna ao Estoque
    RetornarEstoque(sCodNoCds, aeeApagar);

    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' DELETE '+
                '   FROM VENDAItens '+
                '  WHERE vendItens_Id=:vendItens_Id '+
                '    AND vendItens_prodId NOT IN ('+sCodNoCds+') ');
    Qry.ParamByName('vendItens_Id').AsInteger    :=Self.F_VendaId;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.Inserir(cds:TRxMemoryData): Integer;
var Qry:TZQuery;
    IdVendaGerado:Integer;
begin
  try
    ConexaoDB.StartTransaction;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    //Faz a Inclusão no Banco de Dados
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO VENDA (vend_CodCli,'+
                                    'vend_DataVenda,'+
                                    'vend_TotalVenda,'+
                                    'vend_Obs,'+
                                    'vend_Veiculo,'+
                                    'vend_Formapagto,'+
                                      'Vend_CodOrcamento)  '+
                '            VALUES (:vend_CodCli,'+
                                     ':vend_DataVenda,'+
                                     ':vend_TotalVenda,'+
                                     ':vend_Obs,'+
                                     ':vend_Veiculo,'+
                                     ':vend_Formapagto,'+
                                     ':Vend_CodOrcamento )');
    Qry.ParamByName('vend_CodCli'      ).AsInteger    :=Self.F_clienteId;
    Qry.ParamByName('vend_DataVenda'   ).AsDateTime   :=Self.F_dataVenda;
    Qry.ParamByName('vend_TotalVenda'  ).AsFloat      :=Self.F_totalVenda;
    Qry.ParamByName('vend_Obs'         ).AsString     :=Self.F_Obs;
    Qry.ParamByName('vend_Veiculo'     ).AsInteger    :=Self.F_Veiculo;
    Qry.ParamByName('vend_Formapagto'  ).AsString     :=Self.FormaPagto;
    Qry.ParamByName('Vend_CodOrcamento').AsInteger    :=Self.F_CodOrcamento;


    Try
      Qry.ExecSQL;
      //Recupera o ID Gerado no Insert
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT SCOPE_IDENTITY() AS ID');
      Qry.Open;

      //Id da tabela Master (Venda)
      IdVendaGerado:=Qry.FieldByName('ID').AsInteger;

      {$region 'Gravar na tabela VendasItens'}
      cds.First;
      while not cds.Eof do begin
        InserirItens(cds, IdVendaGerado);
        cds.Next;
      end;
      {$endRegion}

      if Self.F_CodOrcamento > 0 then
      begin
        BaixaOrcamento(Self.F_CodOrcamento);
      end;

      GravaReceita(Qry.FieldByName('ID').AsInteger,Self.F_clienteId,Self.F_totalVenda);


      ConexaoDB.Commit;
      Result := IdVendaGerado;
    Except
      ConexaoDB.Rollback;
      Result:=-1;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

Procedure TVenda.BaixaOrcamento(pCodOrcamento :Integer);
var Qry:TZQuery;
begin
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE ORCAMENTO SET ORC_STATUS=''FECHADO''');
    Qry.SQL.Add('WHERE ORC_ORCID= :PCODORCAMENTO');
    Qry.ParamByName('PCODORCAMENTO').AsInteger := pCodOrcamento;
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
    End;

end;

procedure TVenda.GravaReceita(pIdVENDA,pCliente:Integer;pValor:Double);
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO  RECEITA'+
                              '(Rec_Tipo, '+
                              ' Rec_Descricao,'+
                              ' Rec_DataRecebimento,'+
                              ' Rec_Valor,'+
                              ' Rec_Status)'+
                              ' VALUES' +
                              '(:Rec_Tipo, '+
                              ' :Rec_Descricao, '+
                              ' :Rec_DataRecebimento,'+
                              ' :Rec_Valor,'+
                              ' :Rec_Status)');


    Qry.ParamByName('Rec_Tipo').AsInteger             := 1;
    Qry.ParamByName('Rec_Descricao').AsString         := 'Recebimento da venda: '+ IntToStr( pIdVENDA) + ' do Cliente : '+IntToStr(pCliente);
    Qry.ParamByName('Rec_DataRecebimento').AsDateTime :=Now;
    Qry.ParamByName('Rec_Valor').AsFloat              :=pValor;
    Qry.ParamByName('Rec_Status').AsString            :='PAGO';

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.InserirItens(cds:TRxMemoryData; IdVenda:Integer):Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO VendaItens ( vendItens_IdVenda'+
                                              ',vendItens_prodId'+
                                              ',vendItens_ValorUnitario'+
                                              ',vendItens_Quantidade'+
                                              ',vendItens_TotalProduto'+
                                              ',vendItens_Operacao'+
                                              ',vendItens_Desc'+
                                              ',vendItens_Hora'+
                                              ',vendItens_Pintura'+
                                              ',VendItens_tipoPeca'+
                                              ') '+
                '                 VALUES     (:vendItens_Id'+
                                            ',:vendItens_prodId'+
                                            ',:vendItens_ValorUnitario'+
                                            ',:vendItens_Quantidade'+
                                            ',:vendItens_TotalProduto'+
                                            ',:vendItens_Operacao'+
                                            ',:vendItens_Desc'+
                                            ',:vendItens_Hora'+
                                            ',:vendItens_Pintura'+
                                            ',:VendItens_tipoPeca'+
                                            ') ');

    Qry.ParamByName('vendItens_Id').AsInteger         := IdVenda;
    Qry.ParamByName('vendItens_prodId').AsInteger     := cds.FieldByName('vendItens_prodId').AsInteger;
    Qry.ParamByName('vendItens_ValorUnitario').AsFloat:= cds.FieldByName('vendItens_ValorUnitario').AsFloat;
    Qry.ParamByName('vendItens_Quantidade').AsFloat   := cds.FieldByName('vendItens_Quantidade').AsFloat;
    Qry.ParamByName('vendItens_TotalProduto').AsFloat := cds.FieldByName('vendItens_TotalProduto').AsFloat;
    Qry.ParamByName('vendItens_Operacao').AsString    :=cds.FieldByName('vendItens_Operacao').AsString;
    Qry.ParamByName('vendItens_Desc').AsFloat         :=cds.FieldByName('vendItens_Desc').AsFloat;
    Qry.ParamByName('vendItens_Hora').AsFloat         :=cds.FieldByName('vendItens_Hora').AsFloat;
    Qry.ParamByName('vendItens_Pintura').AsFloat      :=cds.FieldByName('vendItens_Pintura').AsFloat;
    Qry.ParamByName('VendItens_tipoPeca').AsString    :=cds.FieldByName('VendItens_tipoPeca').AsString;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      BaixarEstoque(cds.FieldByName('vendItens_prodId').AsInteger, cds.FieldByName('vendItens_Quantidade').AsFloat);
    Except
      ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.Selecionar(id: Integer; var cds:TRxMemoryData): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT vend_Id '+
                '      ,vend_CodCli '+
                '      ,vend_DataVenda '+
                '      ,vend_TotalVenda '+
                '      ,vend_Veiculo        '+
                '      ,vend_Formapagto     '+
                '      ,vend_Obs            '+
                '      ,vend_codOrcamento   '+
                '  FROM VENDA '+
                ' WHERE vend_Id=:vend_Id');
    Qry.ParamByName('vend_Id').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_VendaId       := Qry.FieldByName('vend_Id').AsInteger;
      Self.F_clienteId     := Qry.FieldByName('vend_CodCli').AsInteger;
      Self.F_dataVenda     := Qry.FieldByName('vend_DataVenda').AsDateTime;
      Self.F_totalVenda    := Qry.FieldByName('vend_TotalVenda').AsFloat;
      Self.F_Obs           := Qry.FieldByName('vend_Obs').AsString;
      Self.F_Veiculo       := Qry.FieldByName('vend_Veiculo').AsInteger;
      Self.F_FormaPagto    := Qry.FieldByName('vend_Formapagto').AsString;
      Self.F_CodOrcamento  := Qry.FieldByName('Vend_CodOrcamento').AsInteger;

      {$region 'SELECIONAR na tabela VendasItens'}
      //Apaga o ClientDataSet Caso esteja com Registro
      cds.First;
      while not cds.Eof do begin
        cds.Delete;
      end;

      //Seleciona os Itens do Banco de dados com a propriedade F_VendaId
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT VENDAItens.vendItens_Id, '+
                  '       Produtos.Prod_Nome, '+
                  '       VENDAItens.vendItens_prodId,'+
                  '       VENDAItens.vendItens_ValorUnitario, '+
                  '       VENDAItens.vendItens_Quantidade, '+
                  '       VENDAItens.vendItens_TotalProduto, '+
                  '       VENDAItens.vendItens_Operacao,' +
                  '       VENDAItens.vendItens_Desc,'+
                  '       VENDAItens.vendItens_Hora,'+
                  '       VENDAItens.vendItens_Pintura'+
                  '  FROM VENDAItens  '+
                  '       INNER JOIN produtos On Produtos.Prod_Cod = VENDAItens.vendItens_prodId '+
                  ' WHERE VENDAItens.VendItens_IdVenda=:VendItens_IdVenda ');
      Qry.ParamByName('VendItens_IdVenda').AsInteger    := Self.F_VendaId;
      Qry.Open;

      //Pega da Query e Coloca no ClientDataSet
      Qry.First;
      while not Qry.Eof do begin
        cds.Append;
        cds.FieldByName('vendItens_prodId').AsInteger      := Qry.FieldByName('vendItens_prodId').AsInteger;
        cds.FieldByName('Prod_Nome').AsString              := Qry.FieldByName('Prod_Nome').AsString;
        cds.FieldByName('vendItens_ValorUnitario').AsFloat := Qry.FieldByName('vendItens_ValorUnitario').AsFloat;
        cds.FieldByName('vendItens_Quantidade').AsFloat    := Qry.FieldByName('vendItens_Quantidade').AsFloat;
        cds.FieldByName('vendItens_TotalProduto').AsFloat  := Qry.FieldByName('vendItens_TotalProduto').AsFloat;
        cds.FieldByName('vendItens_Operacao').AsString     := Qry.FieldByName('vendItens_Operacao').AsString;
        cds.FieldByName('vendItens_Desc').AsFloat          := Qry.FieldByName('vendItens_Desc').AsFloat;
        cds.FieldByName('vendItens_Hora').AsFloat          := Qry.FieldByName('vendItens_Hora').AsFloat;
        cds.FieldByName('vendItens_Pintura').AsFloat       := Qry.FieldByName('vendItens_Pintura').AsFloat;
        cds.Post;
        Qry.Next;
      end;
      cds.First;

      {$endRegion}

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.SelecionarOrcamento(id: Integer; var cds:TRxMemoryData): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Orc_OrcId '+
                '      ,Orc_CodCli '+
                '      ,Orc_DataOrcamento '+
                '      ,Orc_TotalOrcamento '+
                '      ,Orc_Veiculo        '+
                '      ,Orc_Formapagto     '+
                '      ,Orc_Obs            '+
                '  FROM ORCAMENTO '+
                ' WHERE Orc_OrcId=:Orc_OrcId and orc_status=''ABERTO''');
    Qry.ParamByName('Orc_OrcId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_VendaId      := Qry.FieldByName('Orc_OrcId').AsInteger;
      Self.F_clienteId    := Qry.FieldByName('Orc_CodCli').AsInteger;
      Self.F_dataVenda    := Qry.FieldByName('Orc_DataOrcamento').AsDateTime;
      Self.F_totalVenda   := Qry.FieldByName('Orc_TotalOrcamento').AsFloat;
      Self.F_Obs          := Qry.FieldByName('Orc_Obs').AsString;
      Self.F_Veiculo      := Qry.FieldByName('Orc_Veiculo').AsInteger;
      Self.F_FormaPagto   := Qry.FieldByName('Orc_FormaPagto').AsString;

      {$region 'SELECIONAR na tabela VendasItens'}
      //Apaga o ClientDataSet Caso esteja com Registro
      cds.First;
      while not cds.Eof do begin
        cds.Delete;
      end;

      //Seleciona os Itens do Banco de dados com a propriedade F_VendaId
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('SELECT OrcamentoItens.OrcItens_CodId, '+
                  '       Produtos.Prod_Nome, '+
                  '       OrcamentoItens.OrcItens_prodId,'+
                  '       OrcamentoItens.OrcItens_ValorUnitario, '+
                  '       OrcamentoItens.OrcItens_Quantidade, '+
                  '       OrcamentoItens.OrcItens_TotalProduto, '+
                  '       OrcamentoItens.OrcItens_Operacao,' +
                  '       OrcamentoItens.OrcItens_Desc,'+
                  '       OrcamentoItens.OrcItens_Hora,'+
                  '       OrcamentoItens.OrcItens_Pintura,'+
                  '       OrcamentoItens.OrcItens_TipoPeca'+
                  '  FROM OrcamentoItens  '+
                  '       INNER JOIN produtos On Produtos.Prod_Cod = OrcamentoItens.OrcItens_prodId '+
                  ' WHERE OrcamentoItens.OrcItens_OrcId=:OrcItens_OrcId ');
      Qry.ParamByName('OrcItens_OrcId').AsInteger    := Self.F_VendaId;
      Qry.Open;

      //Pega da Query e Coloca no ClientDataSet
      Qry.First;
      while not Qry.Eof do begin
        cds.Append;
        cds.FieldByName('VendItens_prodId').AsInteger      := Qry.FieldByName('OrcItens_prodId').AsInteger;
        cds.FieldByName('Prod_Nome').AsString              := Qry.FieldByName('Prod_Nome').AsString;
        cds.FieldByName('VendItens_ValorUnitario').AsFloat := Qry.FieldByName('OrcItens_ValorUnitario').AsFloat;
        cds.FieldByName('VendItens_Quantidade').AsFloat    := Qry.FieldByName('OrcItens_Quantidade').AsFloat;
        cds.FieldByName('VendItens_TotalProduto').AsFloat  := Qry.FieldByName('OrcItens_TotalProduto').AsFloat;
        cds.FieldByName('VendItens_Operacao').AsString     := Qry.FieldByName('OrcItens_Operacao').AsString;
        cds.FieldByName('VendItens_Desc').AsFloat          := Qry.FieldByName('OrcItens_Desc').AsFloat;
        cds.FieldByName('VendItens_Hora').AsFloat          := Qry.FieldByName('OrcItens_Hora').AsFloat;
        cds.FieldByName('VendItens_Pintura').AsFloat       := Qry.FieldByName('OrcItens_Pintura').AsFloat;
        cds.FieldByName('VendItens_TipoPeca').AsString     := Qry.FieldByName('OrcItens_TipoPeca').AsString;

        cds.Post;
        Qry.Next;
      end;
      cds.First;

      {$endRegion}

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TVenda.EsteItemExiste(VendaId: Integer; produtoId:Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Count(vendItens_Id) AS Qtde '+
                '  FROM VENDAItens '+
                ' WHERE vendItens_Id=:vendItens_Id and vendItens_prodId=:vendItens_prodId ');
    Qry.ParamByName('vendItens_Id').AsInteger   := VendaId;
    Qry.ParamByName('produtoId').AsInteger :=produtoId;
    Try
      Qry.Open;

      if Qry.FieldByName('Qtde').AsInteger>0 then
         Result:=true
      else
         Result:=False;

      {$endRegion}

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{$endregion}


end.
