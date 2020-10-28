unit uBuscaCep;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json;

{$M+}

type
  TBuscaCep = class(TJsonDTO)
  private
    FBairro: string;
    FCep: string;
    FComplemento: string;
    FGia: string;
    FIbge: string;
    FLocalidade: string;
    FLogradouro: string;
    FUf: string;
    FUnidade: string;
  published
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Complemento: string read FComplemento write FComplemento;
    property Gia: string read FGia write FGia;
    property Ibge: string read FIbge write FIbge;
    property Localidade: string read FLocalidade write FLocalidade;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Uf: string read FUf write FUf;
    property Unidade: string read FUnidade write FUnidade;
    function ToJsonString: string;
    class function FromJsonString(AJsonString:string):TBuscaCep ;static;
  end;
  
implementation

{ TBuscaCep }

class function TBuscaCep.FromJsonString(AJsonString: string): TBuscaCep;
begin
  Result := Tjson.JsonToObject<TBuscaCep>(AJsonString);
end;

function TBuscaCep.ToJsonString: string;
begin
  Result := Tjson.ObjectToJsonString(Self);
end;

end.
