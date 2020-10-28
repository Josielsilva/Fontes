unit uVenda;

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
    F_Veiculo :string;
    F_FormaPagto :string;
    F_Status :string;
    F_TipoPeca :string;
    function EsteItemExiste(OrcamentoId, produtoId: Integer): Boolean;
    function InNot(cds: TRxMemoryData): String;
    function AtualizarItem(cds: TRxMemoryData): Boolean;
    function ApagaItens(cds: TRxMemoryData): Boolean;
    function InserirItens(cds: TRxMemoryData; IdVenda: Integer): Boolean;
    procedure RetornarEstoque(sCodigo: String; Acao:TAcaoExcluirEstoque);
    procedure BaixarEstoque(produtoId:Integer; Quantidade:Double);
    procedure GravaReceita(pIdOrcamento,pCliente :Integer; pValor :Double; pStatus :string);
    function SelecionarOrcamento(id: Integer; var cds: TRxMemoryData): Boolean;

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir(cds:TRxMemoryData):Integer;
    function Atualizar(cds:TRxMemoryData):Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer; var cds:TRxMemoryData):Boolean;
  published
    property VendaId:Integer     read F_VendaId    write F_VendaId;
    property ClienteId:Integer   read F_clienteId  write F_clienteId;
    property DataVenda:TDateTime read F_dataVenda  write F_dataVenda;
    property TotalVenda:Double   read F_totalVenda write F_totalVenda;
    property Obs : string            read F_Obs write F_Obs;
    property Veiculo : string        read F_Veiculo write F_Veiculo;
    property FormaPagto:string       read F_FormaPagto write F_FormaPagto;
    property Status :string          read F_Status     write F_Status;
    property TipoPeca :string        read F_TipoPeca     write F_TipoPeca;
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
                'Venda Nro: '+IntToStr(F_OrcamentoId),mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
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
    Qry.SQL.Add('DELETE FROM OrcamentoItens '+
                ' WHERE OrcItens_CodId=:OrcItens_CodId ');
    Qry.ParamByName('OrcItens_CodId').AsInteger :=F_VendaId;
    Try
      Qry.ExecSQL;
      //Apaga a Tabela Master
      Qry.SQL.Clear;
      Qry.SQL.Add('DELETE FROM ORCAMENTO '+
                  ' WHERE Orc_OrcId=:Orc_OrcId ');
      Qry.ParamByName('Orc_OrcId').AsInteger :=F_VendaId;
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
    Qry.SQL.Add('UPDATE ORCAMENTO '+
                '   SET Orc_CodCli=:Orc_CodCli '+
                '      ,Orc_DataOrcamento=:Orc_DataOrcamento '+
                '      ,Orc_TotalOrcamento=:Orc_TotalOrcamento '+
                '      ,Orc_Obs           =:Orc_Obs'+
                '      ,Orc_Veiculo       =:Orc_Veicluo'+
                '      ,Orc_FormPagto     =:orc_FormPagto'+
                '      ,Orc_Status        =:Orc_Status'+
                ' WHERE Orc_OrcId=:Orc_OrcId ');
    Qry.ParamByName('Orc_OrcId').AsInteger          :=Self.F_VendaId;
    Qry.ParamByName('Orc_CodCli').AsInteger         :=Self.F_clienteId;
    Qry.ParamByName('Orc_DataOrcamento').AsDateTime :=Self.F_dataVenda;
    Qry.ParamByName('totalVenda').AsFloat           :=Self.F_totalVenda;
    Qry.ParamByName('Orc_Obs').AsString             :=Self.F_Obs;
    Qry.ParamByName('Orc_Veiculo').AsString         :=Self.F_Veiculo;
    Qry.ParamByName('Orc_FormPagto').AsString       := Self.F_FormaPagto;
    Qry.ParamByName('Orc_Status').AsString          := Self.F_Status;

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
    Qry.SQL.Add('UPDATE OrcamentoItens '+
                '   SET OrcItens_ValorUnitario =:OrcItens_ValorUnitario '+
                '      ,OrcItens_Quantidade    =:OrcItens_Quantidade '+
                '      ,OrcItens_TotalProduto  =:OrcItens_TotalProduto '+
                '      ,OrcItens_Operacao      =:OrcItens_Operacao '+
                '      ,OrcItens_Desc          =:OrcItens_Desc'+
                '      ,OrcItens_Hora          =:OrcItens_Hora'+
                '      ,OrcItens_Pintura       =:OrcItens_Pintura'+
                ' WHERE OrcItens_CodId=:OrcItens_CodId AND OrcItens_prodId=:OrcItens_prodId ');
    Qry.ParamByName('OrcItens_CodId').AsInteger      :=Self.F_VendaId;
    Qry.ParamByName('OrcItens_prodId').AsInteger     :=cds.FieldByName('OrcItens_prodId').AsInteger;
    Qry.ParamByName('OrcItens_ValorUnitario').AsFloat:=cds.FieldByName('OrcItens_ValorUnitario').AsFloat;
    Qry.ParamByName('OrcItens_Quantidade').AsFloat   :=cds.FieldByName('OrcItens_Quantidade').AsFloat;
    Qry.ParamByName('OrcItens_TotalProduto').AsFloat :=cds.FieldByName('OrcItens_TotalProduto').AsFloat;
    Qry.ParamByName('OrcItens_Operacao').AsString    :=cds.FieldByName('OrcItens_Operacao').AsString;
    Qry.ParamByName('OrcItens_Desc').AsFloat         :=cds.FieldByName('OrcItens_Desc').AsFloat;
    Qry.ParamByName('OrcItens_Hora').AsFloat         :=cds.FieldByName('OrcItens_Hora').AsFloat;
    Qry.ParamByName('OrcItens_Pintura').AsFloat      :=cds.FieldByName('OrcItens_Pintura').AsFloat;

    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      //BaixarEstoque(cds.FieldByName('OrcItens_prodId').AsInteger, cds.FieldByName('OrcItens_Quantidade').AsFloat);
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
    Qry.SQL.Add(   ' SELECT OrcItens_prodId, OrcItens_Quantidade '+
                   '   FROM OrcamentoItens '+
                   '  WHERE OrcItens_CodId=:OrcItens_CodId ');
    if Acao=aeeApagar then
       Qry.SQL.Add('  AND OrcItens_prodId NOT IN ('+sCodigo+') ')
    else
       Qry.SQL.Add('  AND OrcItens_prodId = ('+sCodigo+') ');

    Qry.ParamByName('OrcItens_prodId').AsInteger    :=Self.F_VendaId;
    Try
      oControleEstoque:=TControleEstoque.Create(ConexaoDB);
      Qry.Open;
      Qry.First;
      while not Qry.Eof do begin
         oControleEstoque.ProdutoId  :=Qry.FieldByName('OrcItens_prodId').AsInteger;
         oControleEstoque.Quantidade :=Qry.FieldByName('OrcItens_Quantidade').AsFloat;
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
    //Pega os codigos que est�o no Cliente para Selecionar o In Not no Banco de Dados
    sCodNoCds:= InNot(cds);
    //Retorna ao Estoque
    RetornarEstoque(sCodNoCds, aeeApagar);

    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' DELETE '+
                '   FROM OrcamentoItens '+
                '  WHERE OrcItens_CodId=:OrcItens_CodId '+
                '    AND OrcItens_prodId NOT IN ('+sCodNoCds+') ');
    Qry.ParamByName('OrcItens_CodId').AsInteger    :=Self.F_VendaId;

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
    //Faz a Inclus�o no Banco de Dados
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO ORCAMENTO (Orc_CodCli, Orc_DataOrcamento, Orc_TotalOrcamento,orc_Obs,Orc_Veiculo,orc_FormaPagto,Orc_Status)  '+
                '            VALUES (:Orc_CodCli,:Orc_DataOrcamento,:Orc_TotalOrcamento,:Orc_Obs,:Orc_Veiculo,:Orc_FormaPagto,:Orc_Status )');
    Qry.ParamByName('Orc_CodCli').AsInteger  :=Self.F_clienteId;
    Qry.ParamByName('Orc_DataOrcamento').AsDateTime :=Self.F_dataVenda;
    Qry.ParamByName('Orc_TotalOrcamento').AsFloat   :=Self.F_totalVenda;
    Qry.ParamByName('Orc_Obs').AsString             :=Self.F_Obs;
    Qry.ParamByName('Orc_Veiculo').AsString         :=Self.F_Veiculo;
    Qry.ParamByName('Orc_formaPagto').AsString      :=Self.FormaPagto;
    Qry.ParamByName('Orc_Status').AsString          :=Self.F_Status;

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

       if Trim(Self.F_Status) = 'FECHADO' then
         begin
           GravaReceita(Qry.FieldByName('ID').AsInteger,Self.F_clienteId,Self.F_totalVenda,Self.F_Status)
         end;


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

procedure TVenda.GravaReceita(pIdOrcamento,pCliente:Integer;pValor:Double;pStatus:String);
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO  RECEITA'+
                              '(Rec_Tipo, '+
                              ' Rec_Descricao,'+
                              ' Rec_DataVencimento,'+
                              ' Rec_Valor,'+
                              ' Rec_Status'+
                              ' VALUES' +
                              '(:Rec_Tipo, '+
                              ' :Rec_Descricao, '+
                              ' :Rec_DtVencimento,'+
                              ' :Rec_Valor,'+
                              ' :Rec_Status)');


    Qry.ParamByName('Rec_Tipo').AsInteger          := 1;
    Qry.ParamByName('Rec_Descricao').AsString      := 'Recebimento do Or�amento: '+ IntToStr( pIdOrcamento) + 'do Cliente :'+IntToStr(pCliente);
    Qry.ParamByName('Rec_DtVencimento').AsDateTime :=Now;
    Qry.ParamByName('Rec_Valor').AsFloat           :=pValor;
    Qry.ParamByName('Rec_Status').AsString         :=pStatus;

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
    Qry.SQL.Add('INSERT INTO OrcamentoItens ( OrcItens_OrcId'+
                                              ',OrcItens_prodId'+
                                              ',OrcItens_ValorUnitario'+
                                              ',OrcItens_Quantidade'+
                                              ', OrcItens_TotalProduto'+
                                              ',OrcItens_Operacao'+
                                              ',OrcItens_Desc'+
                                              ',OrcItens_Hora'+
                                              ',OrcItens_Pintura'+
                                              ') '+
                '                 VALUES     (:OrcItens_OrcId'+
                                            ',:OrcItens_prodId'+
                                            ',:OrcItens_ValorUnitario'+
                                            ',:OrcItens_Quantidade'+
                                            ',:OrcItens_TotalProduto'+
                                            ',:OrcItens_Operacao'+
                                            ',:OrcItens_Desc'+
                                            ',:OrcItens_Hora'+
                                            ',:OrcItens_Pintura'+
                                            ') ');

    Qry.ParamByName('OrcItens_OrcId').AsInteger      := IdVenda;
    Qry.ParamByName('OrcItens_prodId').AsInteger     := cds.FieldByName('OrcItens_prodId').AsInteger;
    Qry.ParamByName('OrcItens_ValorUnitario').AsFloat:= cds.FieldByName('OrcItens_ValorUnitario').AsFloat;
    Qry.ParamByName('OrcItens_Quantidade').AsFloat   := cds.FieldByName('OrcItens_Quantidade').AsFloat;
    Qry.ParamByName('OrcItens_TotalProduto').AsFloat := cds.FieldByName('OrcItens_TotalProduto').AsFloat;
    Qry.ParamByName('OrcItens_Operacao').AsString    :=cds.FieldByName('OrcItens_Operacao').AsString;
    Qry.ParamByName('OrcItens_Desc').AsFloat         :=cds.FieldByName('OrcItens_Desc').AsFloat;
    Qry.ParamByName('OrcItens_Hora').AsFloat         :=cds.FieldByName('OrcItens_Hora').AsFloat;
    Qry.ParamByName('OrcItens_Pintura').AsFloat      :=cds.FieldByName('OrcItens_Pintura').AsFloat;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      //BaixarEstoque(cds.FieldByName('OrcItens_prodId').AsInteger, cds.FieldByName('OrcItens_Quantidade').AsFloat);
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
    Qry.SQL.Add('SELECT Orc_OrcId '+
                '      ,Orc_CodCli '+
                '      ,Orc_DataOrcamento '+
                '      ,Orc_TotalOrcamento '+
                '      ,Orc_Veiculo        '+
                '      ,Orc_Formapagto     '+
                '      ,Orc_Status         '+
                '      ,Orc_Obs            '+
                '  FROM ORCAMENTO '+
                ' WHERE Orc_OrcId=:Orc_OrcId');
    Qry.ParamByName('Orc_OrcId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_VendaId       := Qry.FieldByName('Orc_OrcId').AsInteger;
      Self.F_clienteId     := Qry.FieldByName('Orc_CodCli').AsInteger;
      Self.F_dataVenda     := Qry.FieldByName('Orc_DataOrcamento').AsDateTime;
      Self.F_totalVenda    := Qry.FieldByName('Orc_TotalOrcamento').AsFloat;
      Self.F_Obs           := Qry.FieldByName('Orc_Obs').AsString;
      Self.F_Veiculo       := Qry.FieldByName('Orc_Veiculo').AsString;
      Self.F_FormaPagto    := Qry.FieldByName('Orc_FormaPagto').AsString;
      Self.F_Status        := Qry.FieldByName('Orc_Status').AsString;

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
                  '       OrcamentoItens.OrcItens_Pintura'+
                  '  FROM OrcamentoItens  '+
                  '       INNER JOIN produtos On Produtos.Prod_Cod = OrcamentoItens.OrcItens_prodId '+
                  ' WHERE OrcamentoItens.OrcItens_CodId=:OrcItens_CodId ');
      Qry.ParamByName('OrcItens_CodId').AsInteger    := Self.F_VendaId;
      Qry.Open;

      //Pega da Query e Coloca no ClientDataSet
      Qry.First;
      while not Qry.Eof do begin
        cds.Append;
        cds.FieldByName('OrcItens_prodId').AsInteger      := Qry.FieldByName('OrcItens_prodId').AsInteger;
        cds.FieldByName('Prod_Nome').AsString             := Qry.FieldByName('Prod_Nome').AsString;
        cds.FieldByName('OrcItens_ValorUnitario').AsFloat := Qry.FieldByName('OrcItens_ValorUnitario').AsFloat;
        cds.FieldByName('OrcItens_Quantidade').AsFloat    := Qry.FieldByName('OrcItens_Quantidade').AsFloat;
        cds.FieldByName('OrcItens_TotalProduto').AsFloat  := Qry.FieldByName('OrcItens_TotalProduto').AsFloat;
        cds.FieldByName('OrcItens_Operacao').AsString     := Qry.FieldByName('OrcItens_Operacao').AsString;
        cds.FieldByName('OrcItens_Desc').AsFloat          := Qry.FieldByName('OrcItens_Desc').AsFloat;
        cds.FieldByName('OrcItens_Hora').AsFloat          := Qry.FieldByName('OrcItens_Hora').AsFloat;
        cds.FieldByName('OrcItens_Pintura').AsFloat       := Qry.FieldByName('OrcItens_Pintura').AsFloat;
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
                '      ,Orc_Status         '+
                '      ,Orc_Obs            '+
                '  FROM ORCAMENTO '+
                ' WHERE Orc_OrcId=:Orc_OrcId');
    Qry.ParamByName('Orc_OrcId').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_VendaId      := Qry.FieldByName('Orc_OrcId').AsInteger;
      Self.F_clienteId    := Qry.FieldByName('Orc_CodCli').AsInteger;
      Self.F_dataVenda    := Qry.FieldByName('Orc_DataOrcamento').AsDateTime;
      Self.F_totalVenda   := Qry.FieldByName('Orc_TotalOrcamento').AsFloat;
      Self.F_Obs          := Qry.FieldByName('Orc_Obs').AsString;
      Self.F_Veiculo      := Qry.FieldByName('Orc_Veiculo').AsString;
      Self.F_FormaPagto   := Qry.FieldByName('Orc_FormaPagto').AsString;
      Self.F_Status       := Qry.FieldByName('Orc_Status').AsString;

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
                  '       OrcamentoItens.OrcItens_Pintura'+
                  '  FROM OrcamentoItens  '+
                  '       INNER JOIN produtos On Produtos.Prod_Cod = OrcamentoItens.OrcItens_prodId '+
                  ' WHERE OrcamentoItens.OrcItens_CodId=:OrcItens_CodId ');
      Qry.ParamByName('OrcItens_CodId').AsInteger    := Self.F_OrcamentoId;
      Qry.Open;

      //Pega da Query e Coloca no ClientDataSet
      Qry.First;
      while not Qry.Eof do begin
        cds.Append;
        cds.FieldByName('OrcItens_prodId').AsInteger      := Qry.FieldByName('OrcItens_prodId').AsInteger;
        cds.FieldByName('Prod_Nome').AsString             := Qry.FieldByName('Prod_Nome').AsString;
        cds.FieldByName('OrcItens_ValorUnitario').AsFloat := Qry.FieldByName('OrcItens_ValorUnitario').AsFloat;
        cds.FieldByName('OrcItens_Quantidade').AsFloat    := Qry.FieldByName('OrcItens_Quantidade').AsFloat;
        cds.FieldByName('OrcItens_TotalProduto').AsFloat  := Qry.FieldByName('OrcItens_TotalProduto').AsFloat;
        cds.FieldByName('OrcItens_Operacao').AsString     := Qry.FieldByName('OrcItens_Operacao').AsString;
        cds.FieldByName('OrcItens_Desc').AsFloat          := Qry.FieldByName('OrcItens_Desc').AsFloat;
        cds.FieldByName('OrcItens_Hora').AsFloat          := Qry.FieldByName('OrcItens_Hora').AsFloat;
        cds.FieldByName('OrcItens_Pintura').AsFloat       := Qry.FieldByName('OrcItens_Pintura').AsFloat;
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
    Qry.SQL.Add('SELECT Count(OrcItens_CodId) AS Qtde '+
                '  FROM OrcamentoItens '+
                ' WHERE OrcItens_CodId=:OrcItens_CodId and OrcItens_prodId=:OrcItens_prodId ');
    Qry.ParamByName('OrcItens_CodId').AsInteger   := VendaId;
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
