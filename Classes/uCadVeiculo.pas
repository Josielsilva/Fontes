unit uCadVeiculo;

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
  TCadVeiculo = class
  private
    ConexaoDB:TZConnection;
    F_Codigo: Integer;
    F_Marca_Modelo: string;
    F_Placa: string;
    F_Chassi :String;
    FTipoCambio: string;
    FObs: string;
    FAnoDeFrabrica: string;
    FFrabricante: string;
    FTipoCumbustivel: string;
    FDataCadastro: TDateTime;
    FUltimaRevisao: TDateTime;
    FCli_cod: Integer;
    FCor : string;

  public
    constructor Create(aConexao: TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id: Integer): Boolean;
  published
    property Codigo: Integer read F_Codigo write F_Codigo;
    property Marca_Modelo: string read F_Marca_Modelo write F_Marca_Modelo;
    property Placa: string read F_Placa write F_Placa;
    property Chassi :String read F_Chassi write F_Chassi;
    property  AnoDeFrabrica : string read FAnoDeFrabrica write FAnoDeFrabrica;
    property TipoCumbustivel : string read FTipoCumbustivel write FTipoCumbustivel;
    property TipoCambio :string read FTipoCambio write FTipoCambio;
    property Frabricante :string read FFrabricante write FFrabricante;
    property DataCadastro :TDateTime read FDataCadastro write FDataCadastro;
    property UltimaRevisao :TDateTime read FUltimaRevisao write FUltimaRevisao;
    property Obs :string read FObs write FObs;
    property Cli_cod :Integer read FCli_cod write FCli_cod;
    property Cor  :string     read FCor     write FCor ;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TCadVeiculo.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TCadVeiculo.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TCadVeiculo.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_Codigo)+#13+
                'Descrição: '+F_Marca_Modelo,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM VEICULOS '+
                ' WHERE VEIC_COD=:VEIC_COD ');
    Qry.ParamByName('VEIC_COD').AsInteger :=F_Codigo;
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

function TCadVeiculo.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE VEICULOS '+
                '   SET VEIC_MARCA_MODELO     =:VEIC_MARCA_MODELO '+
                '       ,VEIC_PLCA            =:VEIC_PLACA, '+
                '       ,VEIC_CHASSI          =:VEIC_CHASSI, '+
                '       ,VEIC_ANO             =:VEIC_ANO,'  +
                '       ,VEIC_TIPOCOMBUSTIVEL =:VEIC_TIPOCOMBUSTIVEL,'+
                '       ,VEIC_TIPOCAMBIO      =:VEIC_TIPOCAMBIO,'+
                '       ,VEIC_FABRICANTE      =:VEIC_FABRICANTE,'+
                '       ,VEIC_DATACADASTRO    =:VEIC_DATACADASTRO,'+
                '       ,VEIC_ULTIMAREVISAO   =:VEIC_ULTIMAREVISAO,'+
                '       ,VEIC_OBS             =:VEIC_OBS,'+
                '       ,VEIC_CLI_COD         =:VEIC_CLI_COD'+
                '       ,VEIC_COR             =:VEIC_COR'+
                       ' WHERE VEIC_COD       =:VEIC_COD ');
    Qry.ParamByName('VEIC_COD').AsInteger                  :=Self.F_Codigo;
    Qry.ParamByName('VEIC_MARCA_MODELO').AsString          :=Self.F_Marca_Modelo;
    Qry.ParamByName('VEIC_PLACA').AsString                 :=Self.F_Placa;
    Qry.ParamByName('VEIC_CHASSI').AsString                :=Self.F_Chassi;
    Qry.ParamByName('VEIC_ANO').AsString                   :=Self.FAnoDeFrabrica;
    Qry.ParamByName('VEIC_TIPOCOMBUSTIVEL').AsString       :=Self.FTipoCumbustivel;
    Qry.ParamByName('VEIC_TIPOCAMBIO').AsString            :=Self.FTipoCambio;
    Qry.ParamByName('VEIC_FABRICANTE').AsString            :=Self.FFrabricante;
    Qry.ParamByName('VEIC_DATACADASTRO').AsDateTime        :=Self.FDataCadastro;
    Qry.ParamByName('VEIC_ULTIMAREVISAO').AsDateTime       :=Self.FUltimaRevisao;
    Qry.ParamByName('VEIC_OBS').AsString                   :=Self.FObs;
    Qry.ParamByName('VEIC_CLI_COD').AsInteger              :=Self.FCli_cod;
    Qry.ParamByName('VEIC_COR').AsString                   :=Self.Cor;



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

function TCadVeiculo.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO Veiculos ( VEIC_MARCA_MODELO,'+
                                       ' VEIC_PLACA,'+
                                        'VEIC_CHASSI,' +
                                        'VEIC_ANO,'+
                                        'VEIC_TIPOCOMBUSTIVEL,'+
                                        'VEIC_TIPOCAMBIO,'+
                                        'VEIC_FABRICANTE,'+
                                        'VEIC_DATACADASTRO,'+
                                        'VEIC_ULTIMAREVISAO,'+
                                        'VEIC_OBS,'+
                                        'VEIC_CLI_COD,' +
                                        'VEIC_COR'+
                                        ')' +
                              ' VALUES( :MARCA_MODELO,'+
                                        ':PLACA,'+
                                        ':CHASSI,'+
                                        ':ANO,'+
                                        ':TIPOCOMBUSTIVEL,' +
                                        ':TIPOCAMBIO,'+
                                        ':FABRICANTE,'+
                                        ':DATACADASTRO,'+
                                        ':ULTIMAREVISAO,'+
                                        ':OBS,'+
                                        ':CLI_COD,'+
                                        ':COR)' );

    Qry.ParamByName('MARCA_MODELO').AsString          :=Self.F_Marca_Modelo;
    Qry.ParamByName('PLACA').AsString                 :=Self.F_Placa;
    Qry.ParamByName('CHASSI').AsString                :=Self.F_Chassi;
    Qry.ParamByName('ANO').AsString                   :=Self.FAnoDeFrabrica;
    Qry.ParamByName('TIPOCOMBUSTIVEL').AsString       :=Self.FTipoCumbustivel;
    Qry.ParamByName('TIPOCAMBIO').AsString            :=Self.FTipoCambio;
    Qry.ParamByName('FABRICANTE').AsString            :=Self.FFrabricante;
    Qry.ParamByName('DATACADASTRO').AsDateTime        :=Self.FDataCadastro;
    Qry.ParamByName('ULTIMAREVISAO').AsDateTime       :=Self.FUltimaRevisao;
    Qry.ParamByName('OBS').AsString                   :=Self.FObs;
    Qry.ParamByName('CLI_COD').AsInteger              :=Self.FCli_cod;
    Qry.ParamByName('COR').AsString                   :=Self.FCor;



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

function TCadVeiculo.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT VEIC_COD,'+
                '       VEIC_MARCA_MODELO, '+
                '       VEIC_PLACA, '+
                '       VEIC_CHASSI,'+
                '       VEIC_ANO,'   +
                '       VEIC_TIPOCOMBUSTIVEL,'+
                '       VEIC_TIPOCAMBIO, ' +
                '       VEIC_FABRICANTE,' +
                '       VEIC_DATACADASTRO,'+
                '       VEIC_ULTIMAREVISAO,' +
                '       VEIC_OBS, '  +
                '       VEIC_CLI_COD,' +
                '       VEIC_COR'+
                '  FROM VEICULOS '+
                ' WHERE VEIC_COD=:VEIC_COD');
    Qry.ParamByName('VEIC_COD').AsInteger:=id;
    Try
      Qry.Open;
      Self.F_Marca_Modelo   := Qry.FieldByName('VEIC_MARCA_MODELO').AsString;
      Self.F_Placa          := Qry.FieldByName('VEIC_PLACA').AsString;
      Self.F_Chassi         := Qry.FieldByName('VEIC_CHASSI').AsString;
      Self.FAnoDeFrabrica   := Qry.FieldByName('VEIC_ANO').AsString;
      Self.FTipoCumbustivel := Qry.FieldByName('VEIC_TIPOCOMBUSTIVEL').AsString;
      Self.FTipoCambio      := Qry.FieldByName('VEIC_TIPOCAMBIO').AsString;
      Self.FFrabricante     := Qry.FieldByName('VEIC_FABRICANTE').AsString;

      Self.FUltimaRevisao   := Qry.FieldByName('VEIC_ULTIMAREVISAO').AsDateTime;
      Self.FObs             := Qry.FieldByName('VEIC_OBS').AsString;
      Self.FDataCadastro    := Qry.FieldByName('VEIC_DATACADASTRO').AsDateTime;
      Self.FCli_cod         := Qry.FieldByName('VEIC_CLI_COD').AsInteger;
      Self.FCor             := Qry.FieldByName('VEIC_COR').AsString;


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
