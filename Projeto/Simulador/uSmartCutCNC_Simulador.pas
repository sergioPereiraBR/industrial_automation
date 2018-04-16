{: Face vs Face collision detection.<p>

   This sample illustrates:<ul>
   <li>collisions between FreeForm Objects (Triangle-based)
   <li>collisions between Cubes
   <li>basic user-driven camera movements.
   <li>picking Objects
   <li>moving Objects
   </ul></li><p>

   Usage:<ul>
   <li>left Mouse will move Camera
   <li>right Mouse will move an object
   <li>left Mouse + shift will roll and pitch the object
   <li>Wheel scroll will zoom in/out
   </ul><p>
   Bernd Klaiber.
   (modified by DanB 08/07/2003)
}
unit uSmartCutCNC_Simulador;

interface

uses
  Windows, Messages, Forms, GLScene, GLObjects, GLMisc, Classes, Controls, SysUtils, Graphics,
  GLWin32Viewer, ExtCtrls, VectorGeometry, StdCtrls, GLSpaceText,
  ComCtrls, GLCollision, GLVectorFileObjects, GLCrossPlatform, VectorLists,
  Grids, GLFile3DS;

type
  TForm1 = class(TForm)
    GLScene1: TGLScene;
    GLSceneViewer1: TGLSceneViewer;
    GLLightSource1: TGLLightSource;
    DummyCube1: TGLDummyCube;
    Timer1: TTimer;
    GLCamera2: TGLCamera;
    GLLightSource2: TGLLightSource;
    GLCamera1: TGLCamera;
    GLCamera3: TGLCamera;
    Balancim: TGLFreeForm;
    Maquina: TGLFreeForm;
    Faca: TGLFreeForm;
    Esquadro: TGLFreeForm;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    AR: TGLFreeForm;
    Base_Mese_QC: TGLFreeForm;
    procedure GLSceneViewer1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetNumLock(Estado: Boolean);
    procedure Keyboard(var Msg: TMsg; var Handled: Boolean);
    procedure Zoom(zoom: Integer);
    procedure ZoomDistancia();
    procedure ZoomAproxima;
    procedure Move(X, Y: Integer);
  private
    { Déclarations privées }
    mdx, mdy : Integer;
    CollisionDetected : Boolean;
  public
    CurrSO: TGLCustomSceneObject;
  end;

var
  Form1: TForm1;
  Sentido: Integer;
  CicloBalancim: Integer;
  CicloFaca: Integer;
  Ciclo: Integer;
  Temp: Integer;
  a,b,c : Integer;

  MinBal :real;
  MinFacaZ :real;
  MinFacaX :real;
  MinEsq :real;

  MaxBal :real;
  MaxFacaZ :real;
  MaxFacaX :real;
  MaxEsq :real;

implementation

{$R *.DFM}

uses Math;

//$00804000

procedure TForm1.FormCreate(Sender: TObject);
begin
   
   Sentido       := 1;
   CicloBalancim := 1;
   CicloFaca     := 1;
   Ciclo         := 0;
   Temp          := 0;

   Application.OnMessage := Keyboard;

   Base_Mese_QC.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Máquina.3ds');
   Base_Mese_QC.BuildOctree;

   AR.LoadFromFile(ExtractFilePath(Application.ExeName)+'\AR.3ds');
   AR.BuildOctree;

   Balancim.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Balancim.3ds');
   Balancim.BuildOctree;

   Faca.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Faca.3ds');
   Faca.BuildOctree;

   Esquadro.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Esquadro.3ds');
   Esquadro.BuildOctree;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   //initialize
   CurrSO:= Maquina;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
const
   cColor : array [False..True] of TColor = (clLime, clRed);
var
   t : Int64;
begin
   Timer1.Enabled:=False;
   CollisionDetected:=False;

   t:=StartPrecisionTimer;

   Timer1.Enabled:=True;

   if ciclo=0 then
   begin
     Temp := Temp + 1;

     if (Sentido=1) then
     begin
       if Esquadro.Position.Y >= -0.01 then
         Sentido := 0
       else
         if Esquadro.Position.Y >= -0.17 then
         begin
           Esquadro.Position.Y := Esquadro.Position.Y + 0.01;
         end
         else
         begin
           Esquadro.Position.Y := Esquadro.Position.Y + 0.1;
         end;
     end
     else
     begin
       if Esquadro.Position.Y <= -1.17 then
         Sentido := 1
       else
         if Esquadro.Position.Y >= -0.98 then
         begin
           Esquadro.Position.Y := Esquadro.Position.Y - 0.1;
         end
         else
         begin
           Esquadro.Position.Y := Esquadro.Position.Y - 0.01;
         end;
     end;

     if Temp > 10 then
     begin
       Temp := 0;
       Ciclo := 1
     end;
   end
   else
   begin

   //----------------------------------------------------------
     Temp := Temp + 1;
   if CicloBalancim = 1 then
   begin
     if Balancim.Position.Z > -0.19 then
       Balancim.Position.Z := Balancim.Position.Z - 0.01
     else
       if Faca.Position.Z >= -0.19 then
       begin
         Faca.Position.Z := Faca.Position.Z - 0.02;
         Faca.Position.X := Faca.Position.X + 0.007;
       end
       else
       begin
         CicloBalancim := 0;
       end;
   end
   else
   begin
     if Faca.Position.Z <= -0.02 then
     begin
       Faca.Position.Z := Faca.Position.Z + 0.02;
       Faca.Position.X := Faca.Position.X - 0.007;
     end
     else
       if Balancim.Position.Z <= -0.04 then
       begin
         Balancim.Position.Z := Balancim.Position.Z + 0.02;
       end
       else
       begin
         CicloBalancim := 1;
         Temp := 0;
         Ciclo := 0
       end;
   end;

   end;

   Label4.Caption := FloatToStr(Balancim.Position.Z); // Balancim Z
   Label5.Caption := FloatToStr(Faca.Position.Z); // Faca Z
   Label6.Caption := FloatToStr(Faca.Position.X); // Faca x
   Label8.Caption := FloatToStr(Esquadro.Position.Y); // Esquadro y

   if MinBal   > Balancim.Position.Z then MinBal   := Balancim.Position.Z;
   if MinFacaZ > Faca.Position.Z     then MinFacaZ := Faca.Position.Z;
   if MinFacaX > Faca.Position.X     then MinFacaX := Faca.Position.X;
   if MinEsq   > Esquadro.Position.Y then MinEsq   := Esquadro.Position.Y;

   if MaxBal   < Balancim.Position.Z then MaxBal   := Balancim.Position.Z;
   if MaxFacaZ < Faca.Position.Z     then MaxFacaZ := Faca.Position.Z;
   if MaxFacaX < Faca.Position.X     then MaxFacaX := Faca.Position.X;
   if MaxEsq   < Esquadro.Position.Y then MaxEsq   := Esquadro.Position.Y;

   Label13.Caption := FloatToStr(MinBal);
   Label14.Caption := FloatToStr(MinFacaZ);
   Label15.Caption := FloatToStr(MinFacaX);
   Label16.Caption := FloatToStr(MinEsq);

   Label17.Caption := FloatToStr(MaxBal);
   Label18.Caption := FloatToStr(MaxFacaZ);
   Label19.Caption := FloatToStr(MaxFacaX);
   Label20.Caption := FloatToStr(MaxEsq);
   //----------------------------------------------------------
end;

procedure TForm1.GLSceneViewer1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   pick : TGLCustomSceneObject;
begin
   pick:=(GLSceneViewer1.Buffer.GetPickedObject(x, y) as TGLCustomSceneObject);
   if Assigned(Pick) then
      CurrSO:=pick;
   // store mouse coordinates when a button went down
   mdx:=x;
   mdy:=y;
end;

procedure TForm1.GLSceneViewer1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   dx, dy: Integer;
   VX, VY: TVector;
   Camera: TGLCamera;
begin
   Camera := GLSceneViewer1.Camera;
   // calculate delta since last move or last mousedown
   dx := mdx - x;
   dy := mdy - y;
   mdx := x;
   mdy := y;
   if ssLeft in Shift then
   begin
      if ssShift in Shift then
      begin
        //
      end
      else
      begin
        Camera.MoveAroundTarget(dy, dx)
      end;
  end;
end;

procedure TForm1.Move(X, Y: Integer);
var
   Camera: TGLCamera;
begin
  Camera := GLSceneViewer1.Camera;
  Camera.MoveAroundTarget(y, x);
end;



procedure TForm1.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
   Zoom(WheelDelta);
end;

procedure TForm1.Zoom(zoom: Integer);
var
   Camera: TGLCamera;
begin
   Camera := GLSceneViewer1.Camera;
   Camera.AdjustDistanceToTarget(Power(1.1, Zoom / 120));
end;

procedure TForm1.ZoomDistancia();
begin
  Zoom(8);
end;

procedure TForm1.ZoomAproxima();
begin
  Zoom(-5);
end;

procedure TForm1.SetNumLock(Estado: Boolean);
begin
  if (Estado and ((GetKeyState(144) and 1) = 0)) or
  ((not Estado) and ((GetKeyState(144) and 1) = 1)) then
  begin
    keybd_event(144, $45, KEYEVENTF_EXTENDEDKEY or 0, 0);
    keybd_event(144, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;
end;

procedure TForm1.Keyboard(var Msg: TMsg; var Handled: Boolean);
begin
    c:=1;
    if Msg.Message = WM_KEYDOWN then
    begin
      if Msg.wParam = VK_ESCAPE then ;
      if Msg.wParam = VK_DIVIDE then ;
      if Msg.wParam = VK_MULTIPLY then;
      if (Msg.wParam = VK_SUBTRACT) or (Msg.wParam = 189) then ZoomDistancia();
      if (Msg.wParam = VK_NUMPAD7) or (Msg.wParam = 55) then
      begin
        a:=a+c;
        b:=b+c;
        Move(a,b);
      end;
      if (Msg.wParam = VK_NUMPAD8) or (Msg.wParam = 56) then
      begin
        b:=b+c;
        Move(a,b);
      end;
      if (Msg.wParam = VK_NUMPAD9) or (Msg.wParam = 57) then
      begin
        a:=a-c;
        b:=b+c;
        Move(a,b);
      end;
      if Msg.wParam = VK_ADD then ZoomAproxima;
      if (Msg.wParam = VK_NUMPAD4) or (Msg.wParam = 52) then
      begin
        a:=a+c;
        Move(a,b);
      end;
      if (Msg.wParam = VK_NUMPAD5) or (Msg.wParam = 53) then ;
      if (Msg.wParam = VK_NUMPAD6) or (Msg.wParam = 54) then
      begin
        a:=a-c;
        Move(a,b);
      end;
      if Msg.wParam = VK_BACK then ;
      if (Msg.wParam = VK_NUMPAD1) or (Msg.wParam = 49) then
      begin
        a:=a+c;
        b:=b-c;
        Move(a,b);
      end;
      if (Msg.wParam = VK_NUMPAD2) or (Msg.wParam = 50) then
      begin
        b:=b-c;
        Move(a,b);
      end;
      if (Msg.wParam = VK_NUMPAD3) or (Msg.wParam = 51) then
      begin
        a:=a-c;
        b:=b-c;
        Move(a,b);
      end;
      if Msg.wParam = VK_RETURN then ;
      if (Msg.wParam = VK_NumPad0) or (Msg.wParam = 48) then ;
      if (Msg.wParam = VK_DECIMAL)or(Msg.wParam = 190)or(Msg.wParam = 188)then ;
    end;

    if Msg.Message = WM_KEYUP then
    begin
      if Msg.wParam = VK_ESCAPE then ;
      if Msg.wParam = VK_DIVIDE then ;
      if Msg.wParam = VK_MULTIPLY then ;
      if (Msg.wParam = VK_SUBTRACT) or (Msg.wParam = 189) then ;
      if (Msg.wParam = VK_NUMPAD7) or (Msg.wParam = 55) then
      begin
        a:=0;
        b:=0;
      end;
      if (Msg.wParam = VK_NUMPAD8) or (Msg.wParam = 56) then
      begin
        a:=0;
        b:=0;
      end;
      if (Msg.wParam = VK_NUMPAD9) or (Msg.wParam = 57) then
      begin
        a:=0;
        b:=0;
      end;
      if Msg.wParam = VK_ADD then ;
      if (Msg.wParam = VK_NUMPAD4) or (Msg.wParam = 52) then
      begin
        a:=0;
        b:=0;
      end;
      if (Msg.wParam = VK_NUMPAD5) or (Msg.wParam = 53) then ;
      if (Msg.wParam = VK_NUMPAD6) or (Msg.wParam = 54) then
      begin
        a:=0;
        b:=0;
      end;
      if Msg.wParam = VK_BACK then ;
      if (Msg.wParam = VK_NUMPAD1) or (Msg.wParam = 49) then
      begin
        a:=0;
        b:=0;
      end;
      if (Msg.wParam = VK_NUMPAD2) or (Msg.wParam = 50) then
      begin
        a:=0;
        b:=0;
      end;
      if (Msg.wParam = VK_NUMPAD3) or (Msg.wParam = 51) then
      begin
        a:=0;
        b:=0;
      end;
      if Msg.wParam = VK_RETURN then ;
      if (Msg.wParam = VK_NumPad0) or (Msg.wParam = 48) then ;
      if (Msg.wParam = VK_DECIMAL)or(Msg.wParam = 190)or(Msg.wParam = 188)then ;
    end;

end;

end.

