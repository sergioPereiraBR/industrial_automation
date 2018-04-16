unit uMatSSP;

interface

type
  TMatrixRegression = array of array of double;

type
  TRegression = class
  protected
  private
  public
    function Calcula(fn:integer; wposi: array of double; wmedi: array of double): TMatrixRegression;
    constructor create;
    destructor destroy; override;
  end;

implementation



{ TRegression }

constructor TRegression.create;
begin

end;

destructor TRegression.destroy;
begin
  inherited;

end;


function TRegression.Calcula(fn:integer; wposi: array of double; wmedi: array of double): TMatrixRegression;
var
  Matrix:TMatrixRegression;
  c1:real;
  c2:real;
  j:integer;
  x:Integer;
  pn:Integer;
  px,py,sx,sxsx,xy,xx,sxy,sxx,sy,yy,syy,pa,pb,prev,erro,serro,r,r1,r2: real;
begin
  //
  //pn,px,py,sx,sxsx,xy,sxy,sy, pa, pb
  pn:=0;
  px:=0.0;
  py:=0.0;
  sx:=0.0;
  sxsx:=0.0;
  xy:=0.0;
  sxy:=0.0;
  sy:=0.0;
  pa:=0.0;
  pb:=0.0;
  pn:=0;
  xx:=0;
  sxx:=0;
  yy:=0;
  syy:=0;
  prev:=0;
  erro:=0;
  serro:=0;
  r:=0;
  r1:=0;
  r2:=0;

  SetLength(Matrix, fn, 10);

  for j:=0 to fn-1 do
  begin
    if (pn < fn) and (pn > 0) then pn:= pn+1 else
    begin
      pn:=1;  px:=0; py:=0;  sx:=0;  sy:=0; xy:=0;
      sxy:=0; xx:=0; sxx:=0; yy:=0; syy:=0;
    end;

    //pn:=;
    px:=wposi[j]; py:=wmedi[j];  sx:=sx+px;  sy:=sy+py;  xy:= px*py;
    sxy:=sxy+xy;  xx:=px*px;    sxx:=sxx+xx; yy:=py*py; syy:=syy+yy;

    c1:=pn*sxy-sx*sy;
    c2:=pn*sxx-sx*sx;

    Matrix[j,0] := px; //Variável independente
    Matrix[j,1] := py; //Variável dependete de referêcia

    if(c1<>0)and(c2<>0) then
    begin
      pb:=c1/c2; //coeficiete angular
      pa:=(sy-pb*sx)/pn;

      Matrix[j,2] := pb; //Coeficiente
      Matrix[j,3] := pa; //Origem em y

      if pn>2 then
      begin
        prev:=pa+pb*px;
        erro:=py-prev;
        serro:=serro+erro;

        r1:=pn*sxx-sx*sx;
        r2:=pn*syy-sy*sy;
        r:=c1/(sqrt(r1*r2));

        Matrix[j,4] := prev;  //variável de previsão
        Matrix[j,5] := erro;  //variável de erro
        Matrix[j,6] := serro; //erro acumulado

        Matrix[j,7]:= r;     //Correlação

        Matrix[j,8]:= pa+pb*wposi[j];             //Interpolação da previsão
        Matrix[j,9]:= wmedi[j]-(pa+pb*wposi[j]);  //Interpolação da discrepância (Medida-Previsão)
      end
      else
      begin
        Matrix[j,4] := 0;
        Matrix[j,5] := 0;
        Matrix[j,6] := 0;
        Matrix[j,7] := 0;
        Matrix[j,8] := 0;
        Matrix[j,9] := 0;
      end;
    end
    else
    begin
      Matrix[j,2] := 0;
      Matrix[j,3] := 0;
      Matrix[j,4] := 0;
      Matrix[j,5] := 0;
      Matrix[j,6] := 0;
      Matrix[j,7] := 0;
      Matrix[j,8] := 0;
      Matrix[j,9] := 0;
    end;
  end;
  Result := Matrix;
end;


end.
