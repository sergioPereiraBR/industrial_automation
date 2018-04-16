unit uSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFrmSetUp = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSetUp: TFrmSetUp;

implementation

uses uAnaliseHMI;

{$R *.DFM}

procedure TFrmSetUp.Edit1Change(Sender: TObject);
begin
  FrmAnaliseHMI.Timer1.Interval := StrToInt(Edit1.Text);
end;

procedure TFrmSetUp.Edit2Change(Sender: TObject);
begin
  oc := StrToInt(Edit2.Text);
end;

end.
