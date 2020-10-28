unit uReceitas;

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
     System.SysUtils;

type
  TReceita = class
  private
    ConexaoDB:TZConnection;
    FCodigo: Integer;
    FTipo: string;
    FDescricao: string;
    FDataVencimento :TDateTime;
    FValor : Double;
    FStatus : String;
  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
  published
    property Codigo: Integer read FCodigo write FCodigo;
    property Tipo: string read FTipo write FTipo;
    property Descricao: string read FDescricao write FDescricao;
    property DataVencimento : TDatetime read FDataVencimento write FDataVencimento ;
    property Valor : double read FValor write FValor;
    property Status : String read FStatus write FStatus;
  end;

implementation

{ TTipoDecRec }

function TReceita.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(Fcodigo)+#13+
                'Descri��o: '+FDescricao,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM RECEITA '+
                ' WHERE Rec_COD=:Rec_COD ');
    Qry.ParamByName('Rec_COD').AsInteger :=FCodigo;
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

function TReceita.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE RECEITA '+
                '   SET Rec_tipo             =:Tipo '+
                '    ,Rec_Descricao          =:descricao '+
                '    ,Rec_DataRecebimento    =:DTVencimento'+
                '    ,Rec_Valor              =:Valor'+
                '    ,Rec_Status             =:Status'+
                     ' WHERE Rec_Cod         =:Rec_Cod ');
    Qry.ParamByName('Tipo').AsString            :=Self.FTipo;
    Qry.ParamByName('descricao').AsString       :=Self.FDescricao;
    Qry.ParamByName('DTVencimento').AsDateTime  :=Self.FDataVencimento;
    Qry.ParamByName('Valor').AsFloat            :=Self.Fvalor;
    Qry.ParamByName('Status').AsString          :=Self.FStatus;
    Qry.ParamByName('Rec_Cod').AsInteger        :=Self.FCodigo;



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

constructor TReceita.Create(aConexao: TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TReceita.Destroy;
begin

  inherited;
end;

function TReceita.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO  RECEITA'+
                              '(Rec_Tipo, '+
                              ' Rec_Descricao,'+
                              ' Rec_DataRecebimento,'+
                              ' Rec_Valor,'+
                              ' Rec_Status'+
                              ' VALUES' +
                              '(:Rec_Tipo, '+
                              ' :Rec_Descricao, '+
                              ' :Rec_DtVencimento,'+
                              ' :Rec_Valor,'+
                              ' :Rec_Status)');


    Qry.ParamByName('Rec_Tipo').AsString           :=Self.FTipo;
    Qry.ParamByName('Rec_Descricao').AsString      :=Self.FDescricao;
    Qry.ParamByName('Rec_DtVencimento').AsDateTime :=Self.FDataVencimento;
    Qry.ParamByName('Rec_Valor').AsFloat           :=Self.FValor;
    Qry.ParamByName('Rec_Status').AsString         :=Self.FStatus;

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

function TReceita.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT Rec_Cod,'+
                '       Rec_Tipo, '+
                '       Rec_Descricao, '+
                '       Rec_DataRecebimento,'+
                '       Rec_Valor,'+
                '       Rec_Status'+
                '  FROM RECEITA '+
                ' WHERE Rec_Cod=:Rec_Cod');
    Qry.ParamByName('Rec_Cod').AsInteger:=id;
    Try
      Qry.Open;

      Self.FTipo           := Qry.FieldByName('Rec_Tipo').AsString;
      Self.FDescricao      := Qry.FieldByName('Rec_Descricao').AsString;
      Self.FDataVencimento := Qry.FieldByName('Rec_DataRecebimento').AsDateTime;
      Self.FValor          := Qry.FieldByName('Rec_Valor').AsFloat;
      Self.FStatus         := Qry.FieldByName('Rec_Status').AsString;
      Self.FCodigo         := Qry.FieldByName('Rec_Cod').AsInteger;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

end.
