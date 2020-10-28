unit uFuncoesCryptografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics;

function Criptografia(const Value: string): string;

function DesCriptografia(const Value: string): string;

implementation

function Criptografia(const Value: string): string;
var
  i, iQtdeEnt, iIntervalo: Integer;
  sSaida: string;
  sProximoCaracter: string;
begin
  iIntervalo := 0;
  i := 0;
  iQtdeEnt := 0;

  if (Value <> EmptyStr) then
  begin
    iQtdeEnt := Length(Value);
    for i := iQtdeEnt downto 1 do
    begin
      sProximoCaracter := Copy(Value, i, 1);
      sSaida := sSaida + (Char(Ord(sProximoCaracter[1]) + iIntervalo));
    end;
    Result := sSaida;
  end;
end;

function DesCriptografia(const Value: string): string;
var
  i, iQtdeEnt, iIntervalo: Integer;
  sSaida: string;
  sProximoCaracter: string;
begin
  iIntervalo := 6;
  i := 0;
  iQtdeEnt := 0;

  if (Value <> EmptyStr) then
  begin
   iQtdeEnt := Length(Value);
    for i := iQtdeEnt Downto 1 do
    begin
      sProximoCaracter := Copy(Value, i, 1);
      sSaida := sSaida + sProximoCaracter;//(Char(Ord(sProximoCaracter[1]) - iIntervalo));
    end;
    Result := sSaida;
  end;
end;


end.

