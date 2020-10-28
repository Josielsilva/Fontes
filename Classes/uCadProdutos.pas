unit uCadProdutos;

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
  TProduto = class
  private
    ConexaoDB:TZConnection;
    F_produtoId:Integer;  //Int
    F_nome:String; //VarChar
    F_descricao: string;
    F_Desc_Redu : string;
    F_valor:Double;
    F_quantidade: Double;
    F_GrupoId: Integer;
    F_SubGrupoId :Integer;
    F_UnMedida   :string;
    F_Obs        :string;
    F_CodEan     :string;
    F_Marca      :string;

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
  published
    property codigo        :Integer    read F_produtoId      write F_produtoId;
    property nome          :string     read F_nome           write F_nome;
    property descricao     :string     read F_descricao      write F_descricao;
    property desc_Redu     :string     read F_desc_Redu      write F_desc_Redu;
    property valor         :Double     read F_valor          write F_valor;
    property quantidade    :Double     read F_quantidade     write F_quantidade;
    property GrupoId       :Integer    read F_GrupoId        write F_GrupoId;
    property SubGrupoId    :Integer    read F_SubGrupoId     write F_SubGrupoId;
    property UnMedida      :string     read F_UnMedida       write F_UnMedida;
    property Obs           :String     read F_Obs            write F_Obs;
    property CodEan        :string     read F_CodEan         write F_CodEan;
    property Marca         :string     read F_Marca          write F_Marca;
  end;

implementation


{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TProduto.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TProduto.Destroy;
begin

  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TProduto.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(F_produtoId)+#13+
                'Descri��o: '+F_nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM produtos '+
                ' WHERE prod_cod=:prod_cod ');
    Qry.ParamByName('prod_cod').AsInteger :=F_produtoId;
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

function TProduto.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos '+
                '   SET prod_nome          =:nome '+
                '       ,Prod_Descricao    =:descricao '+
                '       ,Prod_Desc_redu    =:des_Redu '+
                '       ,Prod_valorUnit    =:ValorUnit '+
                '       ,Prod_qtde         =:Qtde '+
                '       ,Prod_Grupo        =:Grupo '+
                '       ,Prod_SubGrupo     =:SubGrupo '+
                '       ,Prod_UnMedida     =:UnMedida '+
                '       ,Prod_Obs          =:Obs '+
                '       ,prod_CodEan       =:CODEAN'+
                '       ,prod_Marca        =:Marca'+
                       ' WHERE Prod_Cod    =:Prod_Cod ');
    Qry.ParamByName('Prod_Cod').AsInteger   :=Self.F_produtoId;
    Qry.ParamByName('nome').AsString        :=Self.nome;
    Qry.ParamByName('descricao').AsString   :=Self.F_descricao;
    Qry.ParamByName('des_Redu').AsString    :=Self.F_Desc_Redu;
    Qry.ParamByName('ValorUnit').AsFloat    :=Self.F_valor;
    Qry.ParamByName('Qtde').AsFloat         :=Self.F_quantidade;
    Qry.ParamByName('Grupo').AsFloat        :=Self.F_GrupoId;
    Qry.ParamByName('SubGrupo').AsFloat     :=Self.F_SubGrupoId;
    Qry.ParamByName('UnMedida').AsString    :=Self.F_UnMedida;
    Qry.ParamByName('Obs').AsString         :=Self.F_Obs;
    Qry.ParamByName('CODEAN').AsString      :=Self.CodEan;
    Qry.ParamByName('Marca').AsString       :=Self.F_Marca;


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

function TProduto.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO produtos (prod_nome, '+
                '                      Prod_Descricao, '+
                '                      Prod_Desc_Redu, '+
                '                      Prod_valorUnit,  '+
                '                      Prod_qtde,  '+
                '                      Prod_Grupo,  '+
                '                      Prod_SubGrupo,'+
                '                      Prod_UnMedida,'+
                '                      Prod_Obs,'+
                '                      Prod_CodEan,'+
                '                      Prod_Marca) '+
                ' VALUES              (:nome, '+
                '                      :descricao, '+
                '                      :des_Redu, '+
                '                      :valor,  '+
                '                      :quantidade,  '+
                '                      :Grupo, '+
                '                      :SubGrupo,'+
                '                      :UnMedida,'+
                '                      :Obs,'+
                '                      :CODEAN,'+
                '                      :MARCA)' );

    Qry.ParamByName('nome').AsString          :=Self.F_nome;
    Qry.ParamByName('descricao').AsString     :=Self.F_descricao;
    Qry.ParamByName('des_Redu').AsString      :=Self.F_Desc_Redu;
    Qry.ParamByName('valor').AsFloat          :=Self.F_valor;
    Qry.ParamByName('quantidade').AsFloat     :=Self.F_quantidade;
    Qry.ParamByName('Grupo').AsInteger        :=Self.F_GrupoId;
    Qry.ParamByName('SubGrupo').AsInteger     :=Self.F_SubGrupoId;
    Qry.ParamByName('UnMedida').AsString      :=Self.F_UnMedida;
    Qry.ParamByName('Obs').AsString           :=Self.F_Obs;
    Qry.ParamByName('CODEAN').AsString        :=Self.F_CODEAN;
    Qry.ParamByName('Marca').AsString         :=Self.F_Marca;

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

function TProduto.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT prod_cod,'+
                '       prod_CodEAN,'+
                '       prod_nome, '+
                '       prod_descricao, '+
                '       prod_Desc_Redu,'+
                '       prod_qtde, '+
                '       prod_Grupo, '+
                '       prod_SubGrupo, '+
                '       prod_valorUnit,'+
                '       prod_Marca,'+
                '       prod_Obs,'+
                '       prod_FornecedorId,'+
                '       prod_UnMedida'+
                '  FROM produtos '+
                ' WHERE Prod_Cod=:Prod_cod');
    Qry.ParamByName('Prod_cod').AsInteger:=id;
    try
      Qry.Open;
      self.F_CodEan     := Qry.FieldByName('prod_CodEAN').AsString;
      self.F_descricao  := Qry.FieldByName('Prod_descricao').AsString;
      Self.F_produtoId  := Qry.FieldByName('Prod_Cod').AsInteger;
      Self.nome         := Qry.FieldByName('Prod_nome').AsString;
      Self.F_descricao  := Qry.FieldByName('Prod_descricao').AsString;
      Self.F_Desc_Redu  := Qry.FieldByName('Prod_desc_Redu').AsString;
      Self.F_valor      := Qry.FieldByName('Prod_ValorUnit').AsFloat;
      Self.F_quantidade := Qry.FieldByName('Prod_Qtde').AsFloat;
      Self.F_GrupoId    := Qry.FieldByName('Prod_Grupo').AsInteger;
      Self.F_SubGrupoId := Qry.FieldByName('Prod_SubGrupo').AsInteger;
      Self.F_UnMedida   := Qry.FieldByName('Prod_UnMedida').AsString;
      Self.F_Obs        := Qry.FieldByName('Prod_Obs').AsString;
      Self.F_Marca      := Qry.FieldByName('prod_Marca').AsString;
    except
      Result := false;
    end;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;
{$endregion}


end.
