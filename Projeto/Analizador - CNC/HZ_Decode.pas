unit HZ_Decode;

interface

function CRC_CCITT(StrDados: String): Integer;
function crc16(Buffer:String):Integer;
function CRC(Data:String):Integer;

implementation

function CRC(Data:String):Integer;
begin
  CRC := CRC_CCITT(Data);
  //CRC := crc16(Data);
end;

//#define CRC_CCITT 0x1021
//bit pattern (1)0001 0000 0010 0001
function CRC_CCITT(StrDados: String): Integer;
var
  CRC: Integer;
  idxa, idxb: Integer;
begin
  CRC := 0;
  for idxa := 1 to length(StrDados) do
  begin
    CRC := CRC xor ord(StrDados[idxa]) SHL 8;
    for idxb := 1 to 8 do
    begin
      if (CRC and $8000) <> 0 then
        CRC := CRC SHL 1 xor $1021
      else
        CRC := CRC SHL 1;
    end;
  end;
  result := CRC and $FFFF;
end;

function crc16(Buffer:String):Integer;
var
  i,j: Integer;
  Polynom: Cardinal;
  Initial:Cardinal;
begin
  Polynom := $1021;
  Initial := 0;
  Result:=Initial;
  for i:=1 to Length(Buffer) do begin
    Result:=Result xor (ord(buffer[i]) shl 8);
    for j:=0 to 7 do begin
      if (Result and $8000)<>0 then Result:=(Result shl 1) xor Polynom
      else Result:=Result shl 1;
      end;
    end;
  Result:=Result and $ffff;
end;


end.
 