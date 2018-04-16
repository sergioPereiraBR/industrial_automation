program AnaliseHMI;

uses
  Forms,
  uAnaliseHMI in 'uAnaliseHMI.pas' {FrmAnaliseHMI},
  uSetup in 'uSetup.pas' {FrmSetUp},
  ToolsHertz in 'ToolsHertz.pas',
  HZ_Decode in 'HZ_Decode.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmAnaliseHMI, FrmAnaliseHMI);
  Application.CreateForm(TFrmSetUp, FrmSetUp);
  Application.Run;
end.
