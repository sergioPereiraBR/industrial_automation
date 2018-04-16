// Descrição : Ferramentas Desenvolvidas para Software STAG
// Empresa   : Hertz Sistemas Eletrônicos Ltda.
// Autor     : Sérgio da Silva Pereira - d:-) sérgioPEREIRA
// Telefone  : +55 21 9178-5321
// E-mail    : sergio_hertz@hotmail.com
// Atualizado: 16/02/2011

unit ToolsHertz;

interface

uses Windows, SysUtils, Registry;

function ZeroDir(L:String; C:Integer):String;
function ZeroEsq(L:String; C:Integer):String;
function EspEsq(L:String; C:Integer):String;
function AlinhaDir(L:String; C:Integer; S:String):String;
function CAS(Digitado:String; Deci: Integer):String;
function WriteBitInByte(ByteHandled, Bit: Byte; Logic: Boolean):Byte;
function ReadBitInByte(ByteHandled, Bit: Byte):Boolean;
function WriteBitInWord(WordHandled: Word; Bit: Byte; Logic: Boolean):Byte;
function ReadBitInWord(WordHandled: Word; Bit: Byte):Boolean;
function ShowDisplay(Valor, Unid, Decimais:Integer; Kpol:Real):String;
function UnidMetric(Metrica:Integer):String;
function AjustePosiTxt(PosiInt: Integer; Metrica: integer; Kpolpp: Real):string;
function AjustePosiInt(PosiTxt: string; Metrica: integer; Kpolpp: Real):integer;
function AjustePosi(PosiTxt: string; Decimais: integer; Metrica: integer; Kpolpp: Real):string;
function IsStrInt(Number: String): Boolean; //export;
function IsStrFloat(Number: String): Boolean;
function GetRegistryValue(Key, Value:string): string;
procedure SetRegistryValue(Key, Value, data: string);

implementation

function GetRegistryValue(Key, Value:string): string;
var
  Registry: TRegistry;
  S: string;
begin
  Registry:=TRegistry.Create;

  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  {False because we do not want to create it if it doesn’t exist}
  Registry.OpenKey(Key,false);
  Result :=Registry.ReadString(Value);

  Registry.Free;
end;

procedure SetRegistryValue(Key, Value, data:string);
var
  Registry: TRegistry;
  S: string;
begin
  Registry:=TRegistry.Create;

  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  {False because we do not want to create it if it doesn’t exist}
  Registry.OpenKey(Key,true);
  Registry.WriteString(Value,data);

  Registry.Free;
end;

// Esta função converte uma String em Integer
// Caso a String não contenha um numeral inteiro ela retorna 0
function IsStrInt(Number:String):Boolean;
var
  V_Int:integer;
Begin
  try
    V_Int := StrToInt(Number);
    Result := True;
  except
    on E: EConvertError do
      Result:=False;
  end;
end;

function IsStrFloat(Number: String): Boolean;
var
  V_Float:Real;
Begin
  try
    V_Float := StrToFloat(Number);
    Result := True;
  except
    on E: EConvertError do
      Result:=False;
  end;
end;

function AlinhaDir(L:String; C:Integer; S:String):String;
var
  z: integer;
  Str: string;
begin
  for z := 1 to C - length(L) do
  begin
    Str := S + Str;
  end;
  result := str + L;
end;

function ZeroDir(L:String; C:Integer):String;
var
  z: integer;
  Str: string;
begin
  for z := 1 to C - length(L) do
  begin
    Str := Str + '0';
  end;
  result := L + str;
end;

function ZeroEsq(L:String; C:Integer):String;
var
  z: integer;
  Str: string;
  len: integer;
begin
  len := length(L);
  for z := 1 to C - Len do
  begin
    Str := Str + '0';
  end;
  if Copy(L,1,1)='-' then
  begin
    Delete(L,1,1);
    result := '-'+str + L;
  end
  else
  begin
    result := str + L;
  end;
end;

function EspEsq(L:String; C:Integer):String;
var
  z: integer;
  Str: string;
  len: integer;
begin
  len := length(L);
  for z := 1 to C - Len do
  begin
    Str := Str + ' ';
  end;
  if Copy(L,1,1)='-' then
  begin
    Delete(L,1,1);
    result := '-'+str + L;
  end
  else
  begin
    result := str + L;
  end;
end;

function UnidMetric(Metrica:Integer):String;
begin
  case Metrica of
    0: UnidMetric := 'mm';
    1: UnidMetric := 'cm';
    2: UnidMetric := 'pol';
  end;
end;

function CAS(Digitado:String; Deci: Integer):String;
var
  x, n, i, f: string;
  j: integer;
begin
  x := Digitado;
  //tem vírgula?
  if pos(',',x)<>0 then
  begin
    //separa parte inteira
    i:=copy(x,0,pos(',',x)-1);
    n := i;
    for j := 1 to 6 - Deci - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    //separa parte fracionária
    f:=copy(x,pos(',',x)+1,length(x));
    n := f;
    for j := 1 to Deci - length(f) do
    begin
      n := n + '0';
    end;
    f := n;
  end
  //Sem vírgula
  else
  begin
    if length(x) > (6-Deci) then
    begin
      i:=copy(x,0,6-Deci);
    end
    else
    begin
      i := x;
    end;
    n := i;
    for j := 1 to 6 - Deci - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    for j := 1 to Deci do
    begin
      f := '0' + f;
    end;
  end;

  result := i+f;

end;

function WriteBitInByte(ByteHandled, Bit: Byte; Logic: Boolean):Byte;
begin
  if Logic then
    WriteBitInByte := ByteHandled OR ($0001 shl Bit)
  else
    WriteBitInByte := ByteHandled AND ( Not ($0001 shl Bit));
end;

function ReadBitInByte(ByteHandled, Bit: Byte):Boolean;
begin
  ReadBitInByte := (ByteHandled  and (1 shl Bit)) <> 0;
end;

function WriteBitInWord(WordHandled: Word; Bit: Byte; Logic: Boolean):Byte;
begin
  if Logic then
    WriteBitInWord := WordHandled OR ($0001 shl Bit)
  else
    WriteBitInWord := WordHandled AND ( Not ($0001 shl Bit));
end;

function ReadBitInWord(WordHandled: Word; Bit: Byte):Boolean;
begin
  ReadBitInWord := (WordHandled  and (1 shl Bit)) <> 0;
end;

function ShowDisplay(Valor, Unid, Decimais:Integer; Kpol:Real):String;
var
  x, n, i, f, s: string;
  j: integer;
begin
  Case Unid of
  0: begin
       X := FloatToStr(Valor/100);
       //LabelMetrica.Caption := 'mm';
     end;
  1: begin
       X := FloatToStr(Valor/1000);
      // LabelMetrica.Caption := 'cm';
     end;
  2: begin
       X := FloatToStr(Valor*Kpol);
       //LabelMetrica.Caption := 'pol';
     end;
  end;
  //tem sinal?
  if pos('-',x)<>0 then
  begin
    s := '-';
    x := copy(x,1,length(x));
  end
  else
  begin
    s := '';
  end;

  //tem vírgula?
  if pos(',',x)<>0 then
  begin
    //separa parte inteira
    i:=copy(x,0,pos(',',x)-1);
    n := i;
    for j := 1 to 6 - Decimais - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    //separa parte fracionária
    f:=copy(x,pos(',',x)+1,length(x));
    n := f;
    for j := 1 to Decimais - length(f) do
    begin
      n := n + '0';
    end;
    f := n;
  end
  //Sem vírgula
  else
  begin
    if length(x) > (6-Decimais) then
    begin
      i:=copy(x,0,6-Decimais);
    end
    else
    begin
      i := x;
    end;
    n := i;
    for j := 1 to 6 - Decimais - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    for j := 1 to Decimais do
    begin
      f := '0' + f;
    end;
  end;
  i := s+i;
  result := i+f;
end;

function AjustePosiInt(PosiTxt: string; Metrica: integer; Kpolpp: Real):integer;
begin
  case Metrica of
    0: result := StrToInt(FloatToStr(StrToFloat(PosiTxt)*100));
    1: result := StrToInt(FloatToStr(StrToFloat(PosiTxt)*1000));
    2: result := StrToInt(FloatToStr(((Int(StrToFloat(PosiTxt)/Kpolpp)*Kpolpp)/Kpolpp)));
  end;
end;

function AjustePosiTxt(PosiInt: Integer; Metrica: integer; Kpolpp: Real):string;
begin
  case Metrica of
    0: result := FloatToStr(PosiInt/100);
    1: result := FloatToStr(PosiInt/1000);
    2: result := FloatToStr(PosiInt*Kpolpp);
  end;
end;

function AjustePosi(PosiTxt: string; Decimais: integer; Metrica: integer; Kpolpp: Real):string;
var
  x, n, i, f: string;
  j: integer;
begin
  if pos(',',PosiTxt)<>0 then
  begin
    x := Trim(PosiTxt);
  end
  else
  begin
    x := Copy(Trim(PosiTxt),0,6 - Decimais)+','+
    copy(Trim(PosiTxt),6 - Decimais + 1,length(Trim(PosiTxt)));
  end;

  if x = '' then x := '0' else
  begin
    if Metrica = 2 then
    begin
      x := Copy(FloatToStr(Int(StrToFloat(x)/Kpolpp)*Kpolpp),0,6);
    end;
  end;
  //tem vírgula?
  if pos(',',x)<>0 then
  begin
    //separa parte inteira
    i:=copy(x,0,pos(',',x)-1);
    n := i;
    for j := 1 to 6 - Decimais - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    //separa parte fracionária
    f:=copy(x,pos(',',x)+1,length(x));
    n := f;
    for j := 1 to Decimais - length(f) do
    begin
      n := n + '0';
    end;
    f := n;
  end
  //Sem vírgula
  else
  begin
    if length(x) > (6-Decimais) then
    begin
      i:=copy(x,0,6-Decimais);
    end
    else
    begin
      i := x;
    end;
    n := i;
    for j := 1 to 6 - Decimais - length(i) do
    begin
      n := '0' + n;
    end;
    i := n;
    for j := 1 to Decimais do
    begin
      f := '0' + f;
    end;
  end;
  //if Metrica = 2 then f := f+'"';
  result := i+','+f;
end;

end.
 