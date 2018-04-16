unit uAnaliseHMI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ToolsHertz, HZ_Decode, TeeProcs, TeEngine,
  Chart, Math, ShellApi, Series, SerialNG, ComCtrls;

type
  TFrmAnaliseHMI = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    ListBox2: TListBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel5: TPanel;
    ListBox1: TListBox;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    Panel8: TPanel;
    Splitter4: TSplitter;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    SaveDialog2: TSaveDialog;
    SerialPortNG1: TSerialPortNG;
    Panel3: TPanel;
    Shape2: TShape;
    Shape30: TShape;
    Shape32: TShape;
    Shape3: TShape;
    SAR: TShape;
    SFaca: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Esq_a: TShape;
    Fuso: TShape;
    Manipulo: TShape;
    Esq_b: TShape;
    Esq_c: TShape;
    PRT: TShape;
    SREF: TShape;
    LRT: TShape;
    LAV: TShape;
    PAV: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Faca: TShape;
    Shape17: TShape;
    BTCT: TShape;
    BTCT_: TShape;
    BARP: TShape;
    BALT: TShape;
    BRRP: TShape;
    BFreio: TShape;
    Encoder: TShape;
    MEsq: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Disco: TShape;
    Shape31: TShape;
    Shape33: TShape;
    MFaca: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape39: TShape;
    Shape40: TShape;
    SWB: TShape;
    Shape44: TShape;
    FS: TShape;
    FT: TShape;
    Shape45: TShape;
    SBAL: TShape;
    Shape49: TShape;
    Emer: TShape;
    RPC: TShape;
    TF: TShape;
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
    Label21: TLabel;
    Label22: TLabel;
    BP: TShape;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    ENC_A_DN: TShape;
    ENC_B: TShape;
    ENC_C: TShape;
    Label38: TLabel;
    RX: TShape;
    TX: TShape;
    Label39: TLabel;
    Label40: TLabel;
    Shape59: TShape;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Chapa: TShape;
    Label44: TLabel;
    Shape48: TShape;
    Fissao: TShape;
    Freio: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label45: TLabel;
    ENC_A_UP: TShape;
    Label24: TLabel;
    DMAQ: TShape;
    FLED1: TShape;
    FLED2: TShape;
    FLED3: TShape;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DF: TShape;
    Label52: TLabel;
    CmdTF: TShape;
    Label53: TLabel;
    CR1: TShape;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    CR2: TShape;
    CR3: TShape;
    Label59: TLabel;
    SR2: TShape;
    SR1: TShape;
    Label60: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label46: TLabel;
    Label28: TLabel;
    Balancim: TShape;
    Label58: TLabel;
    Shape7: TShape;
    Edit1: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Label57: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    ListBox3: TListBox;
    Label74: TLabel;
    TabSheet5: TTabSheet;
    Edit54: TEdit;
    Button5: TButton;
    Label75: TLabel;
    CheckBox1: TCheckBox;
    Button6: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label76: TLabel;
    Label77: TLabel;
    ComboBox3: TComboBox;
    Label78: TLabel;
    Splitter3: TSplitter;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit55: TEdit;
    Label79: TLabel;
    Edit56: TEdit;
    Label80: TLabel;
    Edit57: TEdit;
    Edit58: TEdit;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Button7: TButton;
    Button8: TButton;
    Edit59: TEdit;
    Label99: TLabel;
    Edit60: TEdit;
    Label100: TLabel;
    Edit61: TEdit;
    Label101: TLabel;
    Edit62: TEdit;
    Label102: TLabel;
    Edit63: TEdit;
    Label103: TLabel;
    Edit64: TEdit;
    Edit65: TEdit;
    Label106: TLabel;
    Label107: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    TabSheet6: TTabSheet;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Edit74: TEdit;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    CheckBox5: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Label121: TLabel;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    Button13: TButton;
    Image1: TImage;
    Label122: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ListBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SerialPortNG1RxClusterEvent(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Edit66MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit67MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit68MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit69MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit70MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit71MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit72MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit73MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit59MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit60MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit61MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit62MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit63MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProtRX(strRx:string);
    procedure Maquina();
    procedure LimpaDesenho();
    procedure LimpaValores();
    procedure Calcula(fn:integer; fx, fy:real);
    procedure TxData();
  end;

var
  FrmAnaliseHMI: TFrmAnaliseHMI;
  j,f,g,oc: integer;
  b,c,d,e,z: Boolean;
  x,pn:Integer;
  px,py,sx,sxsx,xy,xx,sxy,sxx,sy,yy,syy,pa,pb,prev,erro,serro,r,r1,r2: real;

  Lista1: TStringList;
  Taxa_Teclado  :dword;
  GetLettre     :string;
  Local         :Boolean;
  strLocal      :string;
  pt            :TPoint;

  Linha_Memo    :String;
  LB_LinhaAtual :Integer;
  LB_LinhaAnterior :Integer;
  StrTexto      :String;
  StrLabel      :String;
  Index_list    :Integer;

  // Lógica de arquivo----------------------------------------------------------
  ArquivoAberto :String;
  ProgramState  :integer; //0-Diretorio fechado
                          //1-Diretorio aberto
                          //2-Arquivo não existe
                          //3-Arquivo existe
                          //4-Arquivo fechado
                          //5-Arquivo aberto
  IntCmd        :integer;
  IntCont       :integer;
  StrCmd        :String;
  StrListBox_A  :String;
  StrListBox_B  :String;

  // Lógica de menu-------------------------------------------------------------
  EditaColuna   :integer;
  SubMenu       :Boolean;

  // Lógica do app--------------------------------------------------------------
  args          :extended;
  StrPreview    :string;
  strFormula    :string;
  strResultado  :string;
  fErroCalc     :Boolean;
  fResultado    :Boolean;
  fChangeNull   :Boolean;
  Led           :TColor;
  Escalar       :Real;
  Operando      :string;
  fMudaModo     :boolean;
  STR_TIC       :String;
  K_TIC_CM      :Real;
  TIC_CM        :Real;
  Cod_Protocolo :Integer;
  RxProtocolo   :String;
  RxProtAnterior:String;
  RxProtAtual   :String;
  Pacote_rx     :String;
  DataRx        :String;
  DataTx        :String;
  Delay_tx      :String;
  linha         :Integer;
  fPronto       :boolean;
  fHlp          :boolean;

  // Lógica do programa---------------------------------------------------------
  StrInstCmd : string;
  contador: integer;
  InstCmd: integer;
  Refile: Real;
  CorteMult: integer;
  Incremento: Real;
  Atraso: String;
  fNewLine, CorteDuplo, Corte: Boolean;

  //Protocolo Rx ---------------------------------------------------------------

  strRxProtocolo:string;
  strRxPacote   :string;
  strRxCRC_Calc :string;

  strRxCRC      :string;
  strRxMode     :string;
  strRxExecp    :string;
  strRxY        :string;
  strRxCiclo_CT :string;
  strRxPORTA    :string;
  strRxPORTB    :string;
  strRxPORTC    :string;
  strRxPORTD    :string;
  strRxPORTE    :string;
  strRxPORTF    :string;
  strRxPORTG    :string;
  strRxStatus_1 :string;
  strRxStatus_2 :string;
  strRxCiclo_TF :string;

  RxCRC         :word;
  RxCRC_Calc    :word;
  RxMode        :byte;
  RxExecp       :byte;
  RxY           :Longword;
  RxCiclo_CT    :byte;
  RxPORTA       :byte;
  RxPORTB       :byte;
  RxPORTC       :byte;
  RxPORTD       :byte;
  RxPORTE       :byte;
  RxPORTF       :byte;
  RxPORTG       :byte;
  RxStatus_1    :byte;
  RxStatus_2    :byte;
  RxCiclo_TF    :byte;

  //Lógica Protocolo - Parâmetros
  strOEM              :string;
  strCAMPO_LENTO      :string;
  strCAMPO_INERCIA    :string;
  strCAMPO_FRENAGEM   :string;
  strCAMPO_TIRA_FOLGA :string;
  strCAMPO_TOLERANCIA :string;
  strY_Ref            :string;
  strLIM_MAX_Y        :string;
  strLIM_MIN_Y        :string;
  strLIM_AVS_Y        :string;
  strLIM_AVC_Y        :string;
  strLIM_RTR_Y        :string;
  strLIM_PRT_Y        :string;
  strdelay_faca       :string;
  strdelay_freio      :string;
  strdelay_lento      :string;
  strdelay_reverso    :string;
  strdelay_troca_faca :string;
  strdelay_pisca_tf   :string;
  strdelay_balancim   :string;
  strdelay_debounce   :string;
  strdelay_safety     :string;
  strCAMPO_FIO_CORTE  :string;

  str_OEM              :string;
  str_CAMPO_LENTO      :string;
  str_CAMPO_INERCIA    :string;
  str_CAMPO_FRENAGEM   :string;
  str_CAMPO_TIRA_FOLGA :string;
  str_CAMPO_TOLERANCIA :string;
  str_Y_Ref            :string;
  str_LIM_MAX_Y        :string;
  str_LIM_MIN_Y        :string;
  str_LIM_AVS_Y        :string;
  str_LIM_AVC_Y        :string;
  str_LIM_RTR_Y        :string;
  str_LIM_PRT_Y        :string;
  str_delay_faca       :string;
  str_delay_freio      :string;
  str_delay_lento      :string;
  str_delay_reverso    :string;
  str_delay_troca_faca :string;
  str_delay_pisca_tf   :string;
  str_delay_balancim   :string;
  str_delay_debounce   :string;
  str_delay_safety     :string;
  str_CAMPO_FIO_CORTE  :string;

  OEM                 :byte;
  CAMPO_LENTO         :Longword;
  CAMPO_INERCIA       :Longword;
  CAMPO_FRENAGEM      :Longword;
  CAMPO_TIRA_FOLGA    :Longword;
  CAMPO_TOLERANCIA    :Longword;
  Y_Ref               :Longword;
  LIM_MAX_Y           :Longword;
  LIM_MIN_Y           :Longword;
  LIM_AVS_Y           :Longword;
  LIM_AVC_Y           :Longword;
  LIM_RTR_Y           :Longword;
  LIM_PRT_Y           :Longword;
  delay_faca          :word;
  delay_freio         :word;
  delay_lento         :word;
  delay_reverso       :word;
  delay_troca_faca    :word;
  delay_pisca_tf      :word;
  delay_balancim      :word;
  delay_debounce      :word;
  delay_safety        :word;
  CAMPO_FIO_CORTE     :word;

  //Lógica rx ------------------------------------------------------------------
  fIntertrava   :boolean;
  fTrava        :boolean;
  fmodo         :boolean;
  fMovimento    :boolean;
  fRx           :Boolean;
  CountRx       :Integer;
  CRC_Rx        :Integer;
  CRC_Calc      :Integer;
  Y_Rx          :Longword;
  St_PLC_L_Rx   :Word;
  St_PLC_H_Rx   :Word;
  Cmd_PLC_Rx    :Integer;
  strSt_PLC_L   :String;
  St_PLC_L      :Word;
  strSt_PLC_H   :String;
  St_PLC_H      :integer;
  mode          :byte;
  mode_         :byte;
  strCICLO_CORTE:String;
  CICLO_CORTE   :byte;
  strCMD_PLC    :String;
  CMD_PLC       :Integer;
  Erro_rx       :boolean;
  strMode_rx    :String;
  strCRC_rx     :String;
  Mode_rx       :byte;
  strExcep_rx   :String;
  Excep_rx      :byte;
  strY          :String;
  LED1          :Boolean;
  LED2          :Boolean;
  LED3          :Boolean;
  St_CTEO       :Boolean;
  St_CTEC       :Boolean;
  St_CTDO       :Boolean;
  St_CTDC       :Boolean;
  St_FRE        :Boolean;
  St_RT         :Boolean;
  St_LN         :Boolean;
  St_RP         :Boolean;
  St_PAV        :Boolean;
  St_EME        :Boolean;
  St_CHA        :Boolean;
  St_LAV        :Boolean;
  St_LRT        :Boolean;
  St_PRT        :Boolean;
  St_BAL        :Boolean;
  St_FCCT       :Boolean;
  St_AFC        :Boolean;
  St_ABP        :Boolean;
  St_FCA        :Boolean;
  St_SBP        :Boolean;
  St_FCB        :Boolean;
  St_TF         :Boolean;
  St_RES1       :Boolean;
  St_Res_2      :Boolean;
  St_Res_3      :Boolean;
  St_REF        :Boolean;
  Pl_REF        :Boolean;
  PU_ENC_B      :Boolean;
  PU_ENC_A_DN   :Boolean;
  PU_ENC_A_UP   :Boolean;
  user          :Boolean;
  Ref           :Boolean;
  _Ref          :Boolean;
  maquina       :Boolean;
  st5           :Boolean;
  st6           :Boolean;
  st7           :Boolean;
  st8           :Boolean;
  troca_faca_   :Boolean;
  Cmd_OFF_PLC   :Boolean;
  Cmd_PW_HMI    :Boolean;
  Cmd_FCCT      :Boolean;
  St_Res_1      :Boolean;
  St_TX         :Boolean;
  St_RX         :Boolean;

  SmartCutHMI   :Boolean;
  fCorte        :Boolean;
  f8            :Boolean;
  f9            :Boolean;
  f10           :Boolean;

  Giro          :Boolean;
  fRecebido     :Boolean;
  erro_timeout  :Boolean;
  fcrc_rx       :Boolean;
  f_Pronto      :Boolean;
  f_AR_AUTO     :Boolean;
  fAuto         :Boolean;
  fChekup       :Boolean;

  Cmd_AV        :Boolean;
  Cmd_RT        :Boolean;
  Cmd_RP        :Boolean;
  Cmd_FRI       :Boolean;
  Cmd_PRE       :Boolean;
  Cmd_CTX       :Boolean;
  Cmd_TFX       :Boolean;
  Cmd_FRE       :Boolean;
  Cmd_LTF       :Boolean;
  Cmd_LAM       :Boolean;
  Cmd_BIP       :Boolean;
  Cmd_ARX       :Boolean;
  Cmd_RES_1     :Boolean;
  Cmd_RES_2     :Boolean;
  Cmd_RES_3     :Boolean;
  Cmd_RES_4     :Boolean;

  //Lógica tx-------------------------------------------------------------------
  modo_hmi      :byte;
  SP_Y          :Longword;
  SP_Y_Tx       :String;
  CRC_Tx        :String;
  modo_Tx       :String;
  strExcep_tx   :String;
  Excep_tx      :byte;
  cmd_hmi       :byte;
  cmd_hmi_tx    :integer;
  SRV_HMI_TX    :integer;
  modo_hmi_tx   :integer;
  cmd_tx        :String;
  srv_hmi       :byte;
  srv_tx        :String;
  ar            :integer;
  pj            :integer;
  v1            :array[1..10] of double;
  v2            :array[1..10] of double;
  v3            :array[1..10] of double;
  v4            :array[1..10] of double;
  v5            :array[1..10] of double;
  v6            :array[1..10] of double;
  v7            :array[1..10] of double;
  v8            :array[1..10] of double;

  cont_eveto    :double;
  cont_proto    :double;

  b_Func         :double;

implementation

uses uSetup;

{$R *.DFM}

procedure TFrmAnaliseHMI.SpeedButton1Click(Sender: TObject);
//var
  //F: Textfile;
begin
  c := false;
  Timer1.Enabled := c;
  FrmSetup.Show;
end;

procedure TFrmAnaliseHMI.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin
  c := false;
  Timer1.Enabled := c;
  i:=0;
  OpenDialog1.Title := 'SmartCutCNC - Arquivo para analise';
  if OpenDialog1.Execute then begin
    try
       FrmAnaliseHMI.caption := 'SmartCutCNC - Analise: ' + OpenDialog1.FileName;
       ListBox1.Clear;
       ListBox2.Clear;
       ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
       while ListBox1.Items.Count -1 > i do
       begin
         ListBox2.Items.Append(Copy(ListBox1.Items.Strings[i], 0, 23));
         j:=0;
         g:=j;
         f:=g;
         i:=i+1;
       end
    except
      on EInOutError do MessageDlg('Erro de arquivo', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmAnaliseHMI.SpeedButton3Click(Sender: TObject);
begin
  RX.Brush.Color:=clRed;
  if ListBox2.ItemIndex = -1 then ListBox2.ItemIndex := 0;
  c := false;
  Timer1.Enabled := true;
  j:=ListBox1.ItemIndex;
  ListBox1.ItemIndex := j;
  b:=false;
end;

procedure TFrmAnaliseHMI.Timer1Timer(Sender: TObject);
begin
  if c then
  begin
      if f<g then
      begin
        if (g >= j) and (j >= f) then
        begin
          ListBox1.ItemIndex:=j;
          ListBox2.ItemIndex:=j;
        end
        else
        begin
          if not e then d := not d
           else
           if j = f then j:=g else j:=f;
        end;
        if d then j:=j+1 else if j>0 then j:=j-1;
      end
      else
       if f>g then
       begin
         if (g <= j) and (j <= f) then
         begin
           ListBox1.ItemIndex:=j;
           ListBox2.ItemIndex:=j;
         end
         else
         begin
           if not e then d := not d
           else
           if j = f then j:=g else j:=f;
         end;
         if d then j:=j+1 else if j>0 then j:=j-1;
       end;
  end
  else
  begin
    if (ListBox1.Items.Count > j) and (j >= 0) then
    begin
      ListBox1.ItemIndex:=j;
      ListBox2.ItemIndex:=j;
      if b then j:=j+1 else if j>0 then j:=j-1;
    end;
    if (j<0) then j := 0;
    if (j>ListBox1.Items.Count-1) then j := ListBox1.Items.Count-1;
    if (j = 0) or (j = ListBox1.Items.Count-1) then
    begin
      Timer1.Enabled := False;
      RX.Brush.Color:=clLime;
    end;
    
  end;
  FrmAnaliseHMI.ProtRX('');
end;

procedure TFrmAnaliseHMI.SpeedButton4Click(Sender: TObject);
begin
  c := false;
  if ListBox2.ItemIndex = -1 then ListBox2.ItemIndex := 0;
  Timer1.Enabled := not Timer1.Enabled;
  if Timer1.Enabled then RX.Brush.Color:=clRed else RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.ListBox2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    Timer1.Enabled := false;
    ListBox1.ItemIndex := ListBox2.ItemIndex;
    FrmAnaliseHMI.ProtRX('');
    RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.ListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  ListBox2.ItemIndex := ListBox1.ItemIndex;
  FrmAnaliseHMI.ProtRX('');
  RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.FormCreate(Sender: TObject);
begin
  b := true;
  oc := 24;
end;

procedure TFrmAnaliseHMI.SpeedButton6Click(Sender: TObject);
begin
  RX.Brush.Color:=clRed;
  if (ListBox1.ItemIndex = -1) or (ListBox2.ItemIndex = -1) then
  begin
    ListBox1.ItemIndex := 0;
    ListBox2.ItemIndex := 0;
  end;

  c := false;
  Timer1.Enabled := true;
  j := ListBox1.ItemIndex;
  ListBox1.ItemIndex := j;
  b := true;
end;

procedure TFrmAnaliseHMI.SpeedButton7Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex = -1) or (ListBox2.ItemIndex = -1) then
  begin
    ListBox1.ItemIndex := 0;
    ListBox2.ItemIndex := 0;
  end;
  c := false;
  f := ListBox2.ItemIndex;
  g := f;
  RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.SpeedButton8Click(Sender: TObject);
begin
  if (ListBox1.ItemIndex = -1) or (ListBox2.ItemIndex = -1) then
  begin
    ListBox1.ItemIndex := 0;
    ListBox2.ItemIndex := 0;
  end;
  if not c then
  begin
    c := true;
    g := ListBox2.ItemIndex;
    j := f;
    ListBox2.ItemIndex := f;
    if g<>f then Timer1.Enabled := true;
  end
  else
  begin
    e := not e;
    RX.Brush.Color:=clLime;
  end;
end;

procedure TFrmAnaliseHMI.ProtRX(strRx:string);
var
 teste : Integer;
 source: Integer;
begin
    Erro_rx := false;
    Edit1.Color := clWhite;
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
  FrmAnaliseHMI.ListBox2.Color := clWhite;
    FrmAnaliseHMI.ListBox2.Font.Color := clBlack;

    z := FrmAnaliseHMI.Timer1.Enabled;
    Timer1.Enabled := false;
  source := 6;
  if not SerialPortNG1.Active then
  begin
    source := 6;
    if (ListBox1.ItemIndex = -1) or (ListBox2.ItemIndex = -1) then
    begin
      ListBox1.ItemIndex := 0;
      ListBox2.ItemIndex := 0;
    end
    else
    begin
      Cod_Protocolo := 0;
      strRx := ListBox1.Items.Strings[ListBox1.ItemIndex];
      strRx := copy(strRx, oc, Length(strRx));
    end;
  end;

    teste := Length(strRx);
    Edit5.Text := IntToStr(teste);

    case teste of
      40 : Cod_Protocolo := 0;
      136: Cod_Protocolo := 2;
      160: Cod_Protocolo := 1;
      else if teste > 40 then Cod_Protocolo := 9;
    end;



  strRxCRC := '$'+Copy(strRx, 2, 4);

  case Cod_Protocolo of
    0: strRxPacote  := Copy(strRx, source,teste-source);
    1: strRxPacote  := Copy(strRx, source,teste-source);
    2: strRxPacote  := Copy(strRx, source,teste-source);
   // 1: strRxPacote  := Copy(strRxProtocolo, 6,teste-6);
  else strRxPacote  := Copy(strRx, source,teste-source);
  end;

  if (strRxCRC <> '$') and IsStrInt(strRxCRC) then RxCRC := StrToInt(strRxCRC) else Erro_rx := true;

  if not Erro_rx and (RxCRC = CRC(strRxPacote))  then
  begin
    //if not fMudaModo then
      strRxMode  := '$'+Copy(strRx, source, 2);
    //else
      //strRxMode  := IntToStr(modo_hmi);
    strRxExecp   := '$'+Copy(strRx, 8, 2);
    strRxY       := '$'+Copy(strRx,10, 8);
    if IsStrInt(strRxMode)     then RxMode     := StrToInt(strRxMode)     else Erro_rx := true;
    if IsStrInt(strRxExecp)    then RxExecp    := StrToInt(strRxExecp)    else Erro_rx := true;
    if IsStrInt(strRxY)        then RxY        := StrToInt(strRxY)        else Erro_rx := true;

    Edit1.Text := IntToStr(RxCRC);
    Edit2.Text := IntToStr(RxMode);
    Edit3.Text := IntToStr(RxExecp);
    Edit4.Text := IntToStr(RxY);

    case Cod_Protocolo of
      0: begin
           Edit5.Color  := clWhite;
           strRxCiclo_CT:= '$'+Copy(strRx,18, 2);
           strRxPORTA   := '$'+Copy(strRx,20, 2);
           strRxPORTB   := '$'+Copy(strRx,22, 2);
           strRxPORTC   := '$'+Copy(strRx,24, 2);
           strRxPORTD   := '$'+Copy(strRx,26, 2);
           strRxPORTE   := '$'+Copy(strRx,28, 2);
           strRxPORTF   := '$'+Copy(strRx,30, 2);
           strRxPORTG   := '$'+Copy(strRx,32, 2);
           strRxStatus_1:= '$'+Copy(strRx,34, 2);
           strRxStatus_2:= '$'+Copy(strRx,36, 2);
           strRxCiclo_TF:= '$'+Copy(strRx,38, 2);

           if IsStrInt(strRxCiclo_CT) then RxCiclo_CT := StrToInt(strRxCiclo_CT) else Erro_rx := true;
           if IsStrInt(strRxPORTA)    then RxPORTA    := StrToInt(strRxPORTA)    else Erro_rx := true;
           if IsStrInt(strRxPORTB)    then RxPORTB    := StrToInt(strRxPORTB)    else Erro_rx := true;
           if IsStrInt(strRxPORTC)    then RxPORTC    := StrToInt(strRxPORTC)    else Erro_rx := true;
           if IsStrInt(strRxPORTD)    then RxPORTD    := StrToInt(strRxPORTD)    else Erro_rx := true;
           if IsStrInt(strRxPORTE)    then RxPORTE    := StrToInt(strRxPORTE)    else Erro_rx := true;
           if IsStrInt(strRxPORTF)    then RxPORTF    := StrToInt(strRxPORTF)    else Erro_rx := true;
           if IsStrInt(strRxPORTG)    then RxPORTG    := StrToInt(strRxPORTG)    else Erro_rx := true;
           if IsStrInt(strRxStatus_1) then RxStatus_1 := StrToInt(strRxStatus_1) else Erro_rx := true;
           if IsStrInt(strRxStatus_2) then RxStatus_2 := StrToInt(strRxStatus_2) else Erro_rx := true;
           if IsStrInt(strRxCiclo_TF) then RxCiclo_TF := StrToInt(strRxCiclo_TF) else Erro_rx := true;
         end;
      1: begin
           Edit5.Color := clYellow;
           strOEM              := '$'+Copy(strRx, 18, 2);
           strCAMPO_LENTO      := '$'+Copy(strRx, 20, 8);
           strCAMPO_INERCIA    := '$'+Copy(strRx, 28, 8);
           strCAMPO_FRENAGEM   := '$'+Copy(strRx, 36, 8);
           strCAMPO_TIRA_FOLGA := '$'+Copy(strRx, 44, 8);
           strCAMPO_TOLERANCIA := '$'+Copy(strRx, 52, 8);
           strCAMPO_FIO_CORTE  := '$'+Copy(strRx, 60, 8);
           strY_Ref            := '$'+Copy(strRx, 68, 8);
           strLIM_MAX_Y        := '$'+Copy(strRx, 76, 8);
           strLIM_MIN_Y        := '$'+Copy(strRx, 84, 8);
           strLIM_AVS_Y        := '$'+Copy(strRx, 92, 8);
           strLIM_AVC_Y        := '$'+Copy(strRx,100, 8);
           strLIM_RTR_Y        := '$'+Copy(strRx,108, 8);
           strLIM_PRT_Y        := '$'+Copy(strRx,116, 8);
           strdelay_faca       := '$'+Copy(strRx,124, 4);
           strdelay_freio      := '$'+Copy(strRx,128, 4);
           strdelay_lento      := '$'+Copy(strRx,132, 4);
           strdelay_reverso    := '$'+Copy(strRx,136, 4);
           strdelay_troca_faca := '$'+Copy(strRx,140, 4);
           strdelay_pisca_tf   := '$'+Copy(strRx,144, 4);
           strdelay_balancim   := '$'+Copy(strRx,148, 4);
           strdelay_debounce   := '$'+Copy(strRx,152, 4);
           strdelay_safety     := '$'+Copy(strRx,156, 4);

           if IsStrInt(strOEM)              then OEM	          := StrToInt(strOEM)              else Erro_rx := true;
           if IsStrInt(strCAMPO_LENTO)      then CAMPO_LENTO	  := StrToInt(strCAMPO_LENTO)      else Erro_rx := true;
           if IsStrInt(strCAMPO_INERCIA)    then CAMPO_INERCIA	  := StrToInt(strCAMPO_INERCIA)    else Erro_rx := true;
           if IsStrInt(strCAMPO_FRENAGEM)   then CAMPO_FRENAGEM	  := StrToInt(strCAMPO_FRENAGEM)   else Erro_rx := true;
           if IsStrInt(strCAMPO_TIRA_FOLGA) then CAMPO_TIRA_FOLGA := StrToInt(strCAMPO_TIRA_FOLGA) else Erro_rx := true;
           if IsStrInt(strCAMPO_TOLERANCIA) then CAMPO_TOLERANCIA := StrToInt(strCAMPO_TOLERANCIA) else Erro_rx := true;
           if IsStrInt(strCAMPO_FIO_CORTE)  then CAMPO_FIO_CORTE  := StrToInt(strCAMPO_FIO_CORTE)  else Erro_rx := true;
           if IsStrInt(strY_Ref)            then Y_Ref            := StrToInt(strY_Ref)            else Erro_rx := true;
           if IsStrInt(strLIM_MAX_Y)        then LIM_MAX_Y	  := StrToInt(strLIM_MAX_Y)        else Erro_rx := true;
           if IsStrInt(strLIM_MIN_Y)        then LIM_MIN_Y	  := StrToInt(strLIM_MIN_Y)        else Erro_rx := true;
           if IsStrInt(strLIM_AVS_Y)        then LIM_AVS_Y	  := StrToInt(strLIM_AVS_Y)        else Erro_rx := true;
           if IsStrInt(strLIM_AVC_Y)        then LIM_AVC_Y	  := StrToInt(strLIM_AVC_Y)        else Erro_rx := true;
           if IsStrInt(strLIM_RTR_Y)        then LIM_RTR_Y	  := StrToInt(strLIM_RTR_Y)        else Erro_rx := true;
           if IsStrInt(strLIM_PRT_Y)        then LIM_PRT_Y	  := StrToInt(strLIM_PRT_Y)        else Erro_rx := true;
           if IsStrInt(strdelay_faca)       then delay_faca	  := StrToInt(strdelay_faca)       else Erro_rx := true;
           if IsStrInt(strdelay_freio)      then delay_freio	  := StrToInt(strdelay_freio)      else Erro_rx := true;
           if IsStrInt(strdelay_lento)      then delay_lento	  := StrToInt(strdelay_lento)      else Erro_rx := true;
           if IsStrInt(strdelay_reverso)    then delay_reverso	  := StrToInt(strdelay_reverso)    else Erro_rx := true;
           if IsStrInt(strdelay_troca_faca) then delay_troca_faca := StrToInt(strdelay_troca_faca) else Erro_rx := true;
           if IsStrInt(strdelay_pisca_tf)   then delay_pisca_tf   := StrToInt(strdelay_pisca_tf)   else Erro_rx := true;
           if IsStrInt(strdelay_balancim)   then delay_balancim	  := StrToInt(strdelay_balancim)   else Erro_rx := true;
           if IsStrInt(strdelay_debounce)   then delay_debounce	  := StrToInt(strdelay_debounce)   else Erro_rx := true;
           if IsStrInt(strdelay_safety)     then delay_safety     := StrToInt(strdelay_safety)     else Erro_rx := true;
         end;
      2: begin
           Edit5.Color := clYellow;
           strOEM              := '$'+Copy(strRx, 18, 2);
           strCAMPO_LENTO      := '$'+Copy(strRx, 20, 8);
           strCAMPO_INERCIA    := '$'+Copy(strRx, 28, 8);
           strCAMPO_FRENAGEM   := '$'+Copy(strRx, 36, 8);
           strCAMPO_TIRA_FOLGA := '$'+Copy(strRx, 44, 8);
           strCAMPO_TOLERANCIA := '$'+Copy(strRx, 52, 8);
           strCAMPO_FIO_CORTE  := '$'+Copy(strRx, 60, 8);
           strY_Ref            := '$'+Copy(strRx, 68, 8);
           strLIM_MAX_Y        := '$'+Copy(strRx, 76, 8);
           strLIM_MIN_Y        := '$'+Copy(strRx, 84, 8);
           strLIM_AVS_Y        := '$'+Copy(strRx, 92, 8);
           strLIM_AVC_Y        := '$'+Copy(strRx,100, 8);
           strLIM_RTR_Y        := '$'+Copy(strRx,108, 8);
           strLIM_PRT_Y        := '$'+Copy(strRx,116, 8);
           strdelay_faca       := '$'+Copy(strRx,124, 4);
           strdelay_freio      := '$'+Copy(strRx,128, 4);
           strdelay_lento      := '$'+Copy(strRx,132, 4);
         end;
      9: begin
           Edit5.Color := clAqua;
         end;
    end;

    //K_TIC_CM := 0.0024990765036775; // 10-10-2012 2 aferições
    //K_TIC_CM := 0.00250015894824972; // 10-10-2012 aferição pela régua
    //1.27633322221614
    //K_TIC_CM := 0.00250064777706952;
    K_TIC_CM := 0.00250073863918143;
    //if not Erro_rx then PacoteRx() else Timer1.Enabled := true;
    Excep_rx       := RxExecp;
    CICLO_CORTE    := RxCiclo_CT;
    Y_Rx           := RxY;
    Edit6.Text := FloatToStrF((K_TIC_CM * Y_Rx) + b_Func, ffFixed,6,2);
    //x := Trunc(0.30188679245283 * K_TIC_CM * Y_Rx + b_Func)+200;
    //x := TRUNC(((K_TIC_CM * Y_Rx)-154)/-0.296587926509186);
    x := TRUNC(((K_TIC_CM * Y_Rx + b_Func)-150.6842)/-0.297368421052632);

    if (x>120) and (x<500) then
    begin
      Esq_c.Left := x;
      Esq_b.Left := x+40;
      Esq_a.Left := x+32;
      Shape5.Brush.Color := clWhite;
      Shape11.Brush.Color := clWhite;
      Label8.Left := Esq_c.Left-17;
      Label73.Left := Esq_c.Left + 26;
      Label121.Left := Esq_c.Left-17;
    end
    else
    begin
      if x<121 then
      begin
        Esq_c.Left := 120;
        Esq_b.Left := 120+40;
        Esq_a.Left := 120+32;
        Shape5.Brush.Color := clRed;
        Shape11.Brush.Color := clWhite;
        Label8.Left := Esq_c.Left-17;
        Label73.Left := Esq_c.Left + 26;
        Label121.Left := Esq_c.Left-17;
      end
      else
      if x>499 then
      begin
        Esq_c.Left := 500;
        Esq_b.Left := 500+40;
        Esq_a.Left := 500+32;
        Shape5.Brush.Color := clWhite;
        Shape11.Brush.Color := clRed;
        Label8.Left := Esq_c.Left-17;
        Label73.Left := Esq_c.Left + 26;
        Label121.Left := Esq_c.Left-17;
      end;
    end;

    //Panel2.Caption := IntToStr(Y_Rx);

    if fMudaModo then
    begin
      mode     :=  modo_hmi;
      //RxMode   :=  modo_hmi;
      mode_rx  :=  modo_hmi;
      //AtualizaModo();
    end
    else
    begin
      mode     := RxMode;
      mode_rx  := RxMode;
      modo_hmi := RxMode;
      //AtualizaModo();
    end;

    {
    RxExecp
    RxY
    RxCiclo_CT
    RxPORTA
    RxPORTB
    RxPORTC
    RxPORTD
    RxPORTE
    RxPORTF
    RxPORTG
    RxStatus_1
    RxStatus_2
    RxCiclo_TF
    }
    St_CTEO     := ReadBitInByte(RxPORTG,4); // CON6-1
    St_CTEC     := ReadBitInByte(RxPORTF,7); // CON6-3
    St_ABP      := ReadBitInByte(RxPORTF,6); // CON6-5
    St_FCCT     := ReadBitInByte(RxPORTF,5); // CON6-7

    St_FRE      := ReadBitInByte(RxPORTF,4); // CON7-1
    St_RT       := ReadBitInByte(RxPORTF,3); // CON7-3
    St_LN       := ReadBitInByte(RxPORTF,2); // CON7-5
    St_RP       := ReadBitInByte(RxPORTF,1); // CON7-7

    St_PAV      := ReadBitInByte(RxPORTF,0); // CON8-1
    St_CHA      := ReadBitInByte(RxPORTA,3); // CON8-3
    St_LAV      := ReadBitInByte(RxPORTA,2); // CON8-5
    St_LRT      := ReadBitInByte(RxPORTA,1); // CON8-7

    St_PRT      := ReadBitInByte(RxPORTA,0); // CON9-1
    St_BAL      := ReadBitInByte(RxPORTA,5); // CON9-3
    St_REF      := ReadBitInByte(RxPORTA,4); // CON9-5
    St_TF       := ReadBitInByte(RxPORTC,2); // CON9-7

    St_SBP      := ReadBitInByte(RxPORTB,7); // CON10-1 - Barreira de Proteção
    St_Res_2    := ReadBitInByte(RxPORTB,6); // CON10-3
    St_Res_1    := ReadBitInByte(RxPORTB,5); // CON10-5
    St_EME      := ReadBitInByte(RxPORTB,4); // CON10-7

    Pl_REF      := ReadBitInByte(RxPORTB,3); // CON11-1
    PU_ENC_B    := ReadBitInByte(RxPORTB,2); // CON11-3
    PU_ENC_A_DN := ReadBitInByte(RxPORTB,1); // CON11-4
    PU_ENC_A_UP := ReadBitInByte(RxPORTB,0); // CON11-5

    Cmd_OFF_PLC := ReadBitInByte(RxPORTE,3); // CON15-1-2
    Cmd_RES_3   := ReadBitInByte(RxPORTE,2); // CON15-3-4
    Cmd_RES_2   := ReadBitInByte(RxPORTE,1); // CON15-5-6
    Cmd_RES_1   := ReadBitInByte(RxPORTE,0); // CON15-7-8

    Cmd_LTF     := ReadBitInByte(RxPORTE,7); // CON14-1-2
    Cmd_FCCT    := ReadBitInByte(RxPORTE,6); // CON14-3-4
    Cmd_ARX     := ReadBitInByte(RxPORTE,5); // CON14-5-6
    Cmd_PW_HMI  := ReadBitInByte(RxPORTE,4); // CON14-7-8

    Cmd_PRE     := ReadBitInByte(RxPORTD,3); // CON13-1-2
    Cmd_CTX     := ReadBitInByte(RxPORTD,2); // CON13-3-4
    Cmd_TFX     := ReadBitInByte(RxPORTD,1); // CON13-5-6
    Cmd_FRE     := ReadBitInByte(RxPORTD,0); // CON13-7-8

    Cmd_AV      := ReadBitInByte(RxPORTD,7); // CON12-1-2
    Cmd_RT      := ReadBitInByte(RxPORTD,6); // CON12-3-4
    Cmd_RP      := ReadBitInByte(RxPORTD,5); // CON12-5-6
    Cmd_FRI     := ReadBitInByte(RxPORTD,4); // CON12-7-8

    LED1        := ReadBitInByte(RxPORTC,3); // Flag Verde
    LED2        := ReadBitInByte(RxPORTC,4); // Flag Amarelo
    LED3        := ReadBitInByte(RxPORTC,5); // Flag Vermelho

    St_TX       := ReadBitInByte(RxPORTC,6);
    St_RX       := ReadBitInByte(RxPORTC,7);

    //St_FCB      := ReadBitInByte(St_PLC_H,1);

    user        := ReadBitInByte(RxStatus_1,0);
    Ref         := ReadBitInByte(RxStatus_1,1);
    _Ref        := ReadBitInByte(RxStatus_1,2);
    fMovimento  := ReadBitInByte(RxStatus_1,3);
    st5         := ReadBitInByte(RxStatus_1,4);
    st6         := ReadBitInByte(RxStatus_1,5);
    st7         := ReadBitInByte(RxStatus_1,6);
    st8         := ReadBitInByte(RxStatus_1,7);

    Giro        := ReadBitInByte(RxStatus_2,0);
    fRecebido   := ReadBitInByte(RxStatus_2,1);
    erro_timeout:= ReadBitInByte(RxStatus_2,2);
    fcrc_rx     := ReadBitInByte(RxStatus_2,3);
    f_Pronto    := ReadBitInByte(RxStatus_2,4);
    f_AR_AUTO   := ReadBitInByte(RxStatus_2,5);
    fAuto       := ReadBitInByte(RxStatus_2,6);
    fChekup     := ReadBitInByte(RxStatus_2,7);
    //troca_faca_ := ReadBitInByte(RxStatus_1,4);
    //Pronto      := ReadBitInByte(St_PLC_H,10);
    //SmartCutHMI := ReadBitInByte(St_PLC_H,11);
    //fCorte      := ReadBitInByte(St_PLC_H,12);
    //f8          := ReadBitInByte(St_PLC_H,13);
    //f9          := ReadBitInByte(St_PLC_H,14);
    //f10         := ReadBitInByte(St_PLC_H,15);

    Maquina();

    FrmAnaliseHMI.ListBox2.Color := clWhite;
    FrmAnaliseHMI.ListBox2.Font.Color := clBlack;
  end
  else
  begin
    FrmAnaliseHMI.ListBox2.Color := clRed;
    FrmAnaliseHMI.ListBox2.Font.Color := clWhite;
    Edit6.Clear;
    Edit5.Clear;
    LimpaValores();
    LimpaDesenho();
  end;

  if z then FrmAnaliseHMI.Timer1.Enabled := true else RX.Brush.Color:=clLime;
  strRxProtocolo := '';
  strRxPacote := '';
end;

procedure TFrmAnaliseHMI.Maquina();
begin

  Edit57.Text := IntToStr(RxCiclo_CT);
  Edit58.Text := IntToStr(RxCiclo_TF);

  if user then
  begin
    Label83.Caption := 'user';
    Label83.Transparent := false;
  end
  else
  begin
    Label83.Transparent := True;
  end;

  if Ref then
  begin
    Label84.Caption := 'Ref';
    Label84.Transparent := false;
  end
  else
  begin
    Label84.Transparent := True;
  end;

  if _Ref then
  begin
    Label85.Caption := '_Ref';
    Label85.Transparent := false;
  end
  else
  begin
    Label85.Transparent := True;
  end;

  if fMovimento then
  begin
    Label86.Caption := 'fMovimento';
    Label86.Transparent := false;
  end
  else
  begin
    Label86.Transparent := True;
  end;

  if st5 then
  begin
    Label87.Caption := 'st5';
    Label87.Transparent := false;
  end
  else
  begin
    Label87.Transparent := True;
  end;

  if st6 then
  begin
    Label88.Caption := 'st6';
    Label88.Transparent := false;
  end
  else
  begin
    Label88.Transparent := True;
  end;

  if st7 then
  begin
    Label89.Caption := 'st7';
    Label89.Transparent := false;
  end
  else
  begin
    Label89.Transparent := True;
  end;

  if st8 then
  begin
    Label90.Caption := 'st8';
    Label90.Transparent := false;
  end
  else
  begin
    Label90.Transparent := True;
  end;

  if Giro then
  begin
    Label91.Caption := 'Giro';
    Label91.Transparent := false;
  end
  else
  begin
    Label91.Transparent := True;
  end;

  if fRecebido then
  begin
    Label92.Caption := 'fRecebido';
    Label92.Transparent := false;
  end
  else
  begin
    Label92.Transparent := True;
  end;

  if erro_timeout then
  begin
    Label93.Caption := 'erro_timeout';
    Label93.Transparent := false;
  end
  else
  begin
    Label93.Transparent := True;
  end;

  if fcrc_rx then
  begin
    Label94.Caption := 'fcrc_rx';
    Label94.Transparent := false;
  end
  else
  begin
    Label94.Transparent := True;
  end;

  if f_Pronto then
  begin
    Label95.Caption := 'f_Pronto';
    Label95.Transparent := false;
  end
  else
  begin
    Label95.Transparent := True;
  end;

  if f_AR_AUTO then
  begin
    Label96.Caption := 'f_AR_AUTO';
    Label96.Transparent := false;
  end
  else
  begin
    Label96.Transparent := True;
  end;

  if fAuto then
  begin
    Label97.Caption := 'fAuto';
    Label97.Transparent := false;
  end
  else
  begin
    Label97.Transparent := True;
  end;

  if fChekup then
  begin
    Label98.Caption := 'fChekup';
    Label98.Transparent := false;
  end
  else
  begin
    Label98.Transparent := True;
  end;

  if St_RX then
  begin
    RX.Brush.Color := clRed;
  end
  else
  begin
    RX.Brush.Color := clLime;
  end;

  if St_TX then
  begin
    TX.Brush.Color := clRed;
  end
  else
  begin
    TX.Brush.Color := clLime;
  end;

  if St_CTEO then
  begin
    BTCT.Brush.Color := clRed;
    BTCT_.Brush.Color := clRed;
  end
  else
  begin
    BTCT.Brush.Color := clLime;
    BTCT_.Brush.Color := clLime;
  end;

  if St_CTEC then
  begin
    Label31.Transparent := false;
  end
  else
  begin
    Label31.Transparent := true;
  end;

  if St_FRE then
  begin
    BFreio.Brush.Color := clRed;
  end
  else
  begin
    BFreio.Brush.Color := clLime;
  end;

  if St_RT then
  begin
    BRRP.Brush.Color := clRed;
  end
  else
  begin
    BRRP.Brush.Color := clLime;
  end;

  if St_LN then
  begin
    BALT.Brush.Color := clRed;
  end
  else
  begin
    BALT.Brush.Color := clLime;
  end;

  if St_RP then
  begin
    BARP.Brush.Color := clRed;
  end
  else
  begin
    BARP.Brush.Color := clLime;
  end;

  if St_PAV  then
  begin
    PAV.Brush.Color := clRed;
  end
  else
  begin
    PAV.Brush.Color := clLime;
  end;

  if St_EME then
  begin
    Emer.Brush.Color := clRed;
  end
  else
  begin
    Emer.Brush.Color := clLime;
  end;

  if St_CHA then
  begin
    Chapa.Brush.Color := clRed;
  end
  else
  begin
    Chapa.Brush.Color := clLime;
  end;

  if St_LAV then
  begin
    LAV.Brush.Color := clRed;
  end
  else
  begin
    LAV.Brush.Color := clLime;
  end;

  if St_LRT then
  begin
    LRT.Brush.Color := clRed;
  end
  else
  begin
    LRT.Brush.Color := clLime;
  end;

  if St_PRT then
  begin
    PRT.Brush.Color := clRed;
  end
  else
  begin
    PRT.Brush.Color := clLime;
  end;

  if St_BAL then
  begin
    SWB.Brush.Color := clRed;
    Balancim.Brush.Color := clRed;
    Balancim.Top := 152;
  end
  else
  begin
    SWB.Brush.Color := clLime;
    Balancim.Brush.Color := clLime;
    Balancim.Top := 120;
  end;

  if St_FCCT then
  begin
    FT.Brush.Color := clRed;
    Faca.Top := 120;
    Label72.Top := 171;
  end
  else
  begin
    FT.Brush.Color := clLime;
  end;

  if St_ABP then
  begin
    FS.Brush.Color := clRed;
    Faca.Top := 152;
    Label72.Top := 203;
  end
  else
  begin
    FS.Brush.Color := clLime;
  end;

  //St_FCB
  if St_TF then
  begin
    TF.Brush.Color := clRed;
  end
  else
  begin
    TF.Brush.Color := clLime;
  end;

  if St_REF then
  begin
    SREF.Brush.Color := clRed;
  end
  else
  begin
    SREF.Brush.Color := clLime;
  end;

  if PU_ENC_B then
  begin
    ENC_B.Brush.Color := clRed;
  end
  else
  begin
    ENC_B.Brush.Color := clLime;
  end;

  if PU_ENC_A_DN then
  begin
    ENC_A_DN.Brush.Color := clLime;
  end
  else
  begin
    ENC_A_DN.Brush.Color := clRed;
  end;

  if PU_ENC_A_UP then
  begin
    ENC_A_UP.Brush.Color := clRed;
  end
  else
  begin
    ENC_A_UP.Brush.Color := clLime;
  end;


  if Pl_REF then
  begin
    ENC_C.Brush.Color := clRed;
  end
  else
  begin
    ENC_C.Brush.Color := clLime;
  end;

  if St_SBP then
  begin
    BP.Brush.Color:= ClRed;
  end
  else
  begin
    BP.Brush.Color:= ClLime;
  end;

  if LED1 then
  begin
    FLED1.Brush.Color:= ClLime;
  end
  else
  begin
    FLED1.Brush.Color:= ClWhite;
  end;

  if LED2 then
  begin
    FLED2.Brush.Color:= ClYellow;
  end
  else
  begin
    FLED2.Brush.Color:= ClWhite;
  end;

  if LED3 then
  begin
    FLED3.Brush.Color:= ClRed;
  end
  else
  begin
    FLED3.Brush.Color:= ClWhite;
  end;


  if user then
  begin
  end
  else
  begin
  end;

  if Ref then
  begin
  end
  else
  begin
  end;

  if _Ref then
  begin
  end
  else
  begin
  end;

  if fMovimento then
  begin
  end
  else
  begin
  end;

  if Giro then
  begin
  end
  else
  begin
  end;

  if fRecebido then
  begin
  end
  else
  begin
  end;

  if erro_timeout then
  begin
  end
  else
  begin
  end;

  if fcrc_rx then
  begin
  end
  else
  begin
  end;

  if f_Pronto then
  begin
  end
  else
  begin
  end;

  if f_AR_AUTO then
  begin
  end
  else
  begin
  end;

  if fAuto then
  begin
  end
  else
  begin
  end;
  if fChekup then
  begin
  end
  else
  begin
  end;
   //troca_faca_
  //Pronto
  //SmartCutHMI
  //fCorte
  //f8
  //f9
  //f10
  if Cmd_AV then
  begin
    MEsq.Brush.Color := clRed;
    Label51.Caption := 'Rotação: CW';
    Shape4.Brush.Color := clRed;
    Shape27.Brush.Color := clRed;
    Shape28.Brush.Color := clRed;
    Label121.Caption := '>AV';
  end
  else
  begin
    if (not Cmd_RT) and (not Cmd_RP) then
    begin
      MEsq.Brush.Color := clLime;
      Label51.Caption := 'Rotação: SR';
      Shape4.Brush.Color := clLime;
      Shape27.Brush.Color := clLime;
      Shape28.Brush.Color := clLime;
    end;
  end;

  if Cmd_RT then
  begin
    MEsq.Brush.Color := clRed;
    Label51.Caption := 'Rotação: CCW';
    Shape4.Brush.Color := clRed;
    Shape27.Brush.Color := clRed;
    Shape28.Brush.Color := clRed;
    Label121.Caption := '<RT';
  end
  else
  begin
    if (not Cmd_AV) and (not Cmd_RP) then
    begin
      MEsq.Brush.Color := clLime;
      Label51.Caption := 'Rotação: SR';
      Shape4.Brush.Color := clLime;
      Shape27.Brush.Color := clLime;
      Shape28.Brush.Color := clLime;
    end;
  end;

  if Cmd_RP then
  begin
    MEsq.Brush.Color := clRed;
    Label51.Caption := 'Rotação: CW';
    Shape4.Brush.Color := clRed;
    Shape27.Brush.Color := clRed;
    Shape28.Brush.Color := clRed;
    if Cmd_RT then Label121.Caption := '<' + Label121.Caption + ' RP';
    if Cmd_AV then Label121.Caption := '>' + Label121.Caption + ' RP';
  end
  else
  begin
    if (not Cmd_RT) and (not Cmd_AV) then
    begin
      MEsq.Brush.Color := clLime;
      Label51.Caption := 'Rotação: SR';
      Shape4.Brush.Color := clLime;
      Shape27.Brush.Color := clLime;
      Shape28.Brush.Color := clLime;
    end
    else Label121.Caption := Label121.Caption + ' LN';
  end;

  if Cmd_FRI then
  begin
    Fissao.Brush.Color := clRed;
    Fissao.Width := 12;
    Manipulo.Brush.Color := clRed;
    Fuso.Brush.Color := clRed;
    Disco.Brush.Color := clRed;
  end
  else
  begin
    Fissao.Brush.Color := clLime;
    Fissao.Width := 9;
  end;

  if Cmd_PRE then
  begin
    SBAL.Brush.Color := clRed;
    Balancim.Brush.Color := clRed;
  end
  else
  begin
    SBAL.Brush.Color := clLime;
    Balancim.Brush.Color := clLime;
  end;

  if Cmd_CTX then
  begin
    SFaca.Brush.Color := clRed;
    Faca.Brush.Color := clRed;
    if (not St_FCCT) then
    begin
      Faca.Top := 136;
      Label72.Top := 187;
    end;
  end
  else
  begin
    SFaca.Brush.Color := clLime;
    Faca.Brush.Color := clLime;
  end;

  if Cmd_TFX then
  begin
    CmdTF.Brush.Color:=clRed;
  end
  else
  begin
    CmdTF.Brush.Color:=clLime;
  end;

  if Cmd_FRE then
  begin
    Freio.Brush.Color:=clRed;
    Freio.Left := 101;
    Freio.Width := 12;
    Manipulo.Brush.Color := clRed;
    Fuso.Brush.Color := clRed;
    Disco.Brush.Color := clRed;
    Esq_a.Brush.Color := clRed;
    Esq_b.Brush.Color := clRed;
    Esq_c.Brush.Color := clRed;
    Label121.Caption := 'Frenado';
  end
  else
  begin
    Freio.Brush.Color:=clLime;
    Freio.Left := 104;
    Freio.Width := 9;
    if not Cmd_FRI then
    begin
      Manipulo.Brush.Color := clBlue;
      Fuso.Brush.Color := clBlue;
      Disco.Brush.Color := clBlue;
      Esq_a.Brush.Color := clBlue;
      Esq_b.Brush.Color := clBlue;
      Esq_c.Brush.Color := clBlue;
      Label121.Caption := 'Manípulo';
    end
    else
    begin
      Manipulo.Brush.Color := clRed;
      Fuso.Brush.Color := clRed;
      Disco.Brush.Color := clRed;
      Esq_a.Brush.Color := clRed;
      Esq_b.Brush.Color := clRed;
      Esq_c.Brush.Color := clRed;
    end;
  end;

  if Cmd_LTF then
  begin
    Label30.Transparent := false;
  end
  else
  begin
    Label30.Transparent := true;
  end;

  if Cmd_FCCT then
  begin
    DF.Brush.Color := clRed;
  end
  else
  begin
    DF.Brush.Color := clLime;
  end;

  if Cmd_ARX then
  begin
    SAR.Brush.Color := clRed;
  end
  else
  begin
    SAR.Brush.Color := clLime;
  end;

  if Cmd_PW_HMI then
  begin
    RPC.Brush.Color := clRed;
  end
  else
  begin
    RPC.Brush.Color := clLime;
  end;

  if Cmd_OFF_PLC then
  begin
    DMAQ.Brush.Color := clRed;
  end
  else
  begin
    DMAQ.Brush.Color := clLime;
  end;

  if Cmd_RES_3 then
  begin
    CR3.Brush.Color := clRed;
  end
  else
  begin
    CR3.Brush.Color := clLime;
  end;

  if Cmd_RES_2 then
  begin
    CR2.Brush.Color := clRed;
  end
  else
  begin
    CR2.Brush.Color := clLime;
  end;

  if Cmd_RES_1 then
  begin
    CR1.Brush.Color := clRed;
  end
  else
  begin
    CR1.Brush.Color := clLime;
  end;

  if St_RES_2 then
  begin
    SR2.Brush.Color := clRed;
  end
  else
  begin
    SR2.Brush.Color := clLime;
  end;

  if St_RES_1 then
  begin
    SR1.Brush.Color := clRed;
  end
  else
  begin
    SR1.Brush.Color := clLime;
  end;

end;

procedure TFrmAnaliseHMI.LimpaValores();
begin
  Taxa_Teclado  :=0;
  GetLettre     :='';
  Local         :=false;
  strLocal      :='';

  Linha_Memo    :='';
  LB_LinhaAtual :=0;
  LB_LinhaAnterior :=0;
  StrTexto      :='';
  StrLabel      :='';
  Index_list    :=0;

  // Lógica de arquivo----------------------------------------------------------
  ArquivoAberto :='';
  ProgramState  :=0; //0-Diretorio fechado
                          //1-Diretorio aberto
                          //2-Arquivo não existe
                          //3-Arquivo existe
                          //4-Arquivo fechado
                          //5-Arquivo aberto
  IntCmd        :=0;
  IntCont       :=0;
  StrCmd        :='';
  StrListBox_A  :='';
  StrListBox_B  :='';

  // Lógica de menu-------------------------------------------------------------
  EditaColuna   :=0;
  SubMenu       :=false;

  // Lógica do app--------------------------------------------------------------
  args          :=0;
  StrPreview    :='';
  strFormula    :='';
  strResultado  :='';
  fErroCalc     :=false;
  fResultado    :=false;
  fChangeNull   :=false;
  Escalar       :=0;
  Operando      :='';
  fMudaModo     :=false;
  STR_TIC       :='';
  TIC_CM        :=0;
  Cod_Protocolo :=0;
  RxProtocolo   :='';
  RxProtAnterior:='';
  RxProtAtual   :='';
  Pacote_rx     :='';
  DataRx        :='';
  DataTx        :='';
  Delay_tx      :='';
  linha         :=0;
  fPronto       :=false;
  fHlp          :=false;

  // Lógica do programa---------------------------------------------------------
  StrInstCmd :='';
  contador:=0;
  InstCmd:=0;
  Refile:=0;
  CorteMult:=0;
  Incremento:=0;
  Atraso:='';
  fNewLine:=false;
  CorteDuplo:=false;
  Corte:=false;

  //Protocolo Rx ---------------------------------------------------------------

  strRxProtocolo:='';
  strRxPacote   :='';
  strRxCRC_Calc :='';

  strRxCRC      :='';
  strRxMode     :='';
  strRxExecp    :='';
  strRxY        :='';
  strRxCiclo_CT :='';
  strRxPORTA    :='';
  strRxPORTB    :='';
  strRxPORTC    :='';
  strRxPORTD    :='';
  strRxPORTE    :='';
  strRxPORTF    :='';
  strRxPORTG    :='';
  strRxStatus_1 :='';
  strRxStatus_2 :='';
  strRxCiclo_TF :='';

  RxCRC         :=0;
  RxCRC_Calc    :=0;
  RxMode        :=0;
  RxExecp       :=0;
  RxY           :=0;
  RxCiclo_CT    :=0;
  RxPORTA       :=0;
  RxPORTB       :=0;
  RxPORTC       :=0;
  RxPORTD       :=0;
  RxPORTE       :=0;
  RxPORTF       :=0;
  RxPORTG       :=0;
  RxStatus_1    :=0;
  RxStatus_2    :=0;
  RxCiclo_TF    :=0;

  //Lógica Protocolo - Parâmetros
  strOEM              :='';
  strCAMPO_LENTO      :='';
  strCAMPO_INERCIA    :='';
  strCAMPO_FRENAGEM   :='';
  strCAMPO_TIRA_FOLGA :='';
  strCAMPO_TOLERANCIA :='';
  strY_Ref            :='';
  strLIM_MAX_Y        :='';
  strLIM_MIN_Y        :='';
  strLIM_AVS_Y        :='';
  strLIM_AVC_Y        :='';
  strLIM_RTR_Y        :='';
  strLIM_PRT_Y        :='';
  strdelay_faca       :='';
  strdelay_freio      :='';
  strdelay_lento      :='';
  strdelay_reverso    :='';
  strdelay_troca_faca :='';
  strdelay_pisca_tf   :='';
  strdelay_balancim   :='';
  strdelay_debounce   :='';
  strdelay_safety     :='';
  strCAMPO_FIO_CORTE  :='';
  OEM                 :=0;
  CAMPO_LENTO         :=0;
  CAMPO_INERCIA       :=0;
  CAMPO_FRENAGEM      :=0;
  CAMPO_TIRA_FOLGA    :=0;
  CAMPO_TOLERANCIA    :=0;
  Y_Ref               :=0;
  LIM_MAX_Y           :=0;
  LIM_MIN_Y           :=0;
  LIM_AVS_Y           :=0;
  LIM_AVC_Y           :=0;
  LIM_RTR_Y           :=0;
  LIM_PRT_Y           :=0;
  delay_faca          :=0;
  delay_freio         :=0;
  delay_lento         :=0;
  delay_reverso       :=0;
  delay_troca_faca    :=0;
  delay_pisca_tf      :=0;
  delay_balancim      :=0;
  delay_debounce      :=0;
  delay_safety        :=0;
  CAMPO_FIO_CORTE     :=0;

  //Lógica rx ------------------------------------------------------------------
  fIntertrava   :=false;
  fTrava        :=false;
  fmodo         :=false;
  fMovimento    :=false;
  fRx           :=false;
  CountRx       :=0;
  CRC_Rx        :=0;
  CRC_Calc      :=0;
  Y_Rx          :=0;
  St_PLC_L_Rx   :=0;
  St_PLC_H_Rx   :=0;
  Cmd_PLC_Rx    :=0;
  strSt_PLC_L   :='';
  St_PLC_L      :=0;
  strSt_PLC_H   :='';
  St_PLC_H      :=0;
  mode          :=0;
  mode_         :=0;
  strCICLO_CORTE:='';
  CICLO_CORTE   :=0;
  strCMD_PLC    :='';
  CMD_PLC       :=0;
  Erro_rx       :=false;
  strMode_rx    :='';
  strCRC_rx     :='';
  Mode_rx       :=0;
  strExcep_rx   :='';
  Excep_rx      :=0;
  strY          :='';
  St_CTEO       :=false;
  St_CTEC       :=false;
  St_CTDO       :=false;
  St_CTDC       :=false;
  St_FRE        :=false;
  St_RT         :=false;
  St_LN         :=false;
  St_RP         :=false;
  St_PAV        :=false;
  St_EME        :=false;
  St_CHA        :=false;
  St_LAV        :=false;
  St_LRT        :=false;
  St_PRT        :=false;
  St_BAL        :=false;
  St_FCCT       :=false;
  St_AFC        :=false;
  St_FCA        :=false;
  St_FCB        :=false;
  St_SBP        :=false;
  St_TF         :=false;
  St_RES1       :=false;
  St_REF        :=false;
  Pl_REF        :=false;
  user          :=false;
  Ref           :=false;
  _Ref          :=false;
  //maquina       :=false;
  troca_faca_   :=false;
  LED1          :=false;
  LED2          :=false;
  LED3          :=false;
  PU_ENC_A_UP   :=false;
  PU_ENC_A_DN   :=false;
  PU_ENC_B      :=false;
  SmartCutHMI   :=false;
  fCorte        :=false;
  f8            :=false;
  f9            :=false;
  f10           :=false;

  Giro          :=false;
  fRecebido     :=false;
  erro_timeout  :=false;
  fcrc_rx       :=false;
  f_Pronto      :=false;
  f_AR_AUTO     :=false;
  fAuto         :=false;
  fChekup       :=false;

  Cmd_AV        :=false;
  Cmd_RT        :=false;
  Cmd_RP        :=false;
  Cmd_FRI       :=false;
  Cmd_PRE       :=false;
  Cmd_CTX       :=false;
  Cmd_TFX       :=false;
  Cmd_FRE       :=false;
  Cmd_LTF       :=false;
  Cmd_LAM       :=false;
  Cmd_BIP       :=false;
  Cmd_ARX       :=false;
  Cmd_RES_1     :=false;
  Cmd_RES_2     :=false;
  Cmd_RES_3     :=false;
  Cmd_RES_4     :=false;

  //Lógica tx-------------------------------------------------------------------
  modo_hmi      :=0;
  SP_Y          :=0;
  SP_Y_Tx       :='';
  CRC_Tx        :='';
  modo_Tx       :='';
  strExcep_tx   :='';
  Excep_tx      :=0;
  cmd_hmi       :=0;
  cmd_tx        :='';
  srv_hmi       :=0;
  srv_tx        :='';
  ar            :=0;
end;

procedure TFrmAnaliseHMI.LimpaDesenho();
begin
    Shape4.Brush.Color:=clWhite;
    Esq_a.Brush.Color:=clWhite;
    Freio.Brush.Color:=clWhite;
    Fuso.Brush.Color:=clWhite;
    Manipulo.Brush.Color:=clWhite;
    Esq_b.Brush.Color:=clWhite;
    Esq_c.Brush.Color:=clWhite;
    PRT.Brush.Color:=clWhite;
    SREF.Brush.Color:=clWhite;
    LRT.Brush.Color:=clWhite;
    LAV.Brush.Color:=clWhite;
    PAV.Brush.Color:=clWhite;
    Chapa.Brush.Color:=clWhite;
    BP.Brush.Color:=clWhite;
    Balancim.Brush.Color:=clWhite;
    Faca.Brush.Color:=clWhite;
    DF.Brush.Color:=clWhite;
    BTCT.Brush.Color:=clWhite;
    BTCT_.Brush.Color:=clWhite;
    BARP.Brush.Color:=clWhite;
    BALT.Brush.Color:=clWhite;
    BRRP.Brush.Color:=clWhite;
    BFreio.Brush.Color:=clWhite;
    Encoder.Brush.Color:=clWhite;
    CmdTF.Brush.Color:=clWhite;
    MEsq.Brush.Color:=clWhite;
    Shape27.Brush.Color:=clWhite;
    Shape28.Brush.Color:=clWhite;
    Disco.Brush.Color:=clWhite;
    Fissao.Brush.Color:=clWhite;
    ENC_A_UP.Brush.Color:=clWhite;
    ENC_A_DN.Brush.Color:=clWhite;
    ENC_B.Brush.Color:=clWhite;
    MFaca.Brush.Color:=clWhite;
    SFaca.Brush.Color:=clWhite;
    ENC_C.Brush.Color:=clWhite;
    CR1.Brush.Color:=clWhite;
    SAR.Brush.Color:=clWhite;
    CR2.Brush.Color:=clWhite;
    CR3.Brush.Color:=clWhite;
    SWB.Brush.Color:=clWhite;
    FS.Brush.Color:=clWhite;
    FT.Brush.Color:=clWhite;
    SR1.Brush.Color:=clWhite;
    SR2.Brush.Color:=clWhite;
    SBAL.Brush.Color:=clWhite;
    DMAQ.Brush.Color:=clWhite;
    //Shape48.Brush.Color:=clWhite;
    //Shape49.Brush.Color:=clWhite;
    Emer.Brush.Color:=clWhite;
    RPC.Brush.Color:=clWhite;
    TF.Brush.Color:=clWhite;
end;

procedure TFrmAnaliseHMI.Button1Click(Sender: TObject);
begin
  if (Edit4.text<>'') and (Edit6.text<>'') and (Edit7.text<>'') then
  begin
    Edit48.Clear;
    Edit49.Clear;
    Edit50.Clear;
    Edit51.Clear;
    Edit52.Clear;
    Edit53.Clear;

    if RadioButton1.Checked then
    begin
      Edit8.Clear;
      Edit9.Clear;
      Edit10.Clear;
      Edit11.Clear;
      Edit12.Clear;
      Edit13.Clear;
      Edit14.Clear;
      Edit15.Clear;
      Edit16.Clear;
      Edit17.Clear;
      Edit18.Clear;
      Edit19.Clear;
      Edit20.Clear;
      Edit21.Clear;
      Edit22.Clear;
      Edit23.Clear;
      Edit24.Clear;
      Edit25.Clear;
      Edit26.Clear;
      Edit27.Clear;
      Edit28.Clear;
      Edit29.Clear;
      Edit30.Clear;
      Edit31.Clear;
      Edit32.Clear;
      Edit33.Clear;
      Edit34.Clear;
      Edit35.Clear;
      Edit36.Clear;
      Edit37.Clear;
      Edit38.Clear;
      Edit39.Clear;
      Edit40.Clear;
      Edit41.Clear;
      Edit42.Clear;
      Edit43.Clear;
      Edit44.Clear;
      Edit45.Clear;
      Edit46.Clear;
      Edit47.Clear;

      pj:=1;
      for pj := 1 to 10 do
      begin
        V1[pj]:=0;
        V2[pj]:=0;
        V3[pj]:=0;
        V4[pj]:=0;
        V5[pj]:=0;
        V6[pj]:=0;
        V7[pj]:=0;
        V8[pj]:=0;
      end;

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


      Edit8.Text := Edit4.Text;
      Edit9.Text := Edit7.Text;
      Edit10.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit11.Text := FloatToStr(StrToFloat(Edit9.Text)- StrToFloat(Edit10.Text));
      Calcula(1,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton2.Checked := true;
      ListBox3.Items.Append(' ');
      ListBox3.Items.Append('------------------------------------------------------------------------------------------------');
      ListBox3.Items.Append('P1 - '+Edit8.Text+' - '+Edit9.Text+' - '+Edit10.Text+' - '+Edit11.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton2.Checked then
    begin
      Edit12.Text := Edit4.Text;
      Edit13.Text := Edit7.Text;
      Edit14.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit15.Text := FloatToStr(StrToFloat(Edit13.Text)- StrToFloat(Edit14.Text));
      Calcula(2,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton3.Checked := true;
      ListBox3.Items.Append('P2 - '+Edit12.Text+' - '+Edit13.Text+' - '+Edit14.Text+' - '+Edit15.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton3.Checked then
    begin
      Edit16.Text := Edit4.Text;
      Edit17.Text := Edit7.Text;
      Edit18.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit19.Text := FloatToStr(StrToFloat(Edit17.Text)- StrToFloat(Edit18.Text));
      Calcula(3,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton4.Checked := true;
      ListBox3.Items.Append('P3 - '+Edit16.Text+' - '+Edit17.Text+' - '+Edit18.Text+' - '+Edit19.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton4.Checked then
    begin
      Edit20.Text := Edit4.Text;
      Edit21.Text := Edit7.Text;
      Edit22.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit23.Text := FloatToStr(StrToFloat(Edit21.Text)- StrToFloat(Edit22.Text));
      Calcula(4,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton5.Checked := true;
      ListBox3.Items.Append('P4 - '+Edit20.Text+' - '+Edit21.Text+' - '+Edit22.Text+' - '+Edit23.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton5.Checked then
    begin
      Edit24.Text := Edit4.Text;
      Edit25.Text := Edit7.Text;
      Edit26.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text)+ b_Func);
      Edit27.Text := FloatToStr(StrToFloat(Edit25.Text)- StrToFloat(Edit26.Text));
      Calcula(5,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton6.Checked := true;
      ListBox3.Items.Append('P5 - '+Edit24.Text+' - '+Edit25.Text+' - '+Edit26.Text+' - '+Edit27.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton6.Checked then
    begin
      Edit28.Text := Edit4.Text;
      Edit29.Text := Edit7.Text;
      Edit30.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit31.Text := FloatToStr(StrToFloat(Edit29.Text)- StrToFloat(Edit30.Text));
      Calcula(6,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton7.Checked := true;
      ListBox3.Items.Append('P6 - '+Edit28.Text+' - '+Edit29.Text+' - '+Edit30.Text+' - '+Edit31.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton7.Checked then
    begin
      Edit32.Text := Edit4.Text;
      Edit33.Text := Edit7.Text;
      Edit34.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit35.Text := FloatToStr(StrToFloat(Edit33.Text)- StrToFloat(Edit34.Text));
      Calcula(7,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton8.Checked := true;
      ListBox3.Items.Append('P7 - '+Edit32.Text+' - '+Edit33.Text+' - '+Edit34.Text+' - '+Edit35.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton8.Checked then
    begin
      Edit36.Text := Edit4.Text;
      Edit37.Text := Edit7.Text;
      Edit38.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit39.Text := FloatToStr(StrToFloat(Edit37.Text)- StrToFloat(Edit38.Text));
      Calcula(8,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton9.Checked := true;
      ListBox3.Items.Append('P8 - '+Edit36.Text+' - '+Edit37.Text+' - '+Edit38.Text+' - '+Edit39.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton9.Checked then
    begin
      Edit40.Text := Edit4.Text;
      Edit41.Text := Edit7.Text;
      Edit42.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text) + b_Func);
      Edit43.Text := FloatToStr(StrToFloat(Edit41.Text)- StrToFloat(Edit42.Text));
      Calcula(9,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton10.Checked := true;
      ListBox3.Items.Append('9 - '+Edit40.Text+' - '+Edit41.Text+' - '+Edit42.Text+' - '+Edit43.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end
    else
    if RadioButton10.Checked then
    begin
      Edit44.Text := Edit4.Text;
      Edit45.Text := Edit7.Text;
      Edit46.Text := FloatToStr(K_TIC_CM * StrToInt(Edit4.Text)+ b_Func);
      Edit47.Text := FloatToStr(StrToFloat(Edit45.Text)- StrToFloat(Edit46.Text));
      Calcula(10,StrToFloat(Edit4.Text), StrToFloat(Edit7.Text));
      RadioButton10.Checked := false;
      ListBox3.Items.Append('P10 - '+Edit44.Text+' - '+Edit45.Text+' - '+Edit46.Text+' - '+Edit47.Text+' - '+Edit48.Text+' - '+Edit49.Text+' - '+Edit50.Text+' - '+Edit51.Text+' - '+Edit52.Text+' - '+Edit53.Text);
    end;

    Edit7.Clear;
    ListBox3.ItemIndex := ListBox3.Items.Count-1;
  end;
end;

procedure TFrmAnaliseHMI.Button2Click(Sender: TObject);
var
  arquivo: string;
  hpanel: integer;
begin
  if ListBox3.Items.Count > 0 then
  begin
    SaveDialog1.Title := 'SmartCutCNC - Salvar Lista';
    SaveDialog1.DefaultExt:= 'afr';
    arquivo :=  FormatDateTime('YYYY-mm-dd" "hh-nn-ss-zzz',Now)+' SmartCutCNC - ';
    SaveDialog1.FileName := arquivo+'Lista de Aferição.afr';
    SaveDialog1.Execute;
    if SaveDialog1.FileName <> '' then
    begin
      ListBox3.Items.SaveToFile(SaveDialog1.FileName);

      SaveDialog2.Title := 'SmartCutCNC - Salvar Gráfico';
      SaveDialog2.DefaultExt:= 'wmf';
      SaveDialog2.FileName := arquivo+'Gráfico de Aferição.wmf';
      SaveDialog2.Execute;
      if SaveDialog2.FileName <> '' then
      begin
        hpanel := PageControl1.Height; //panel6.Height;
        if hpanel < 500 then panel8.Height := 600;
        Chart1.SaveToMetafile(SaveDialog2.FileName);
        Chart1.Series[0].Clear;
        Chart1.Series[1].Clear;
        Chart1.Series[2].Clear;
        panel8.Height := hpanel;
      end;
      Edit55.Visible := true;
      Edit56.Visible := true;
      Label79.Visible := true;
      Label80.Visible := true;
      Edit55.Text := Edit48.Text;
      Edit56.Text := Edit49.Text;
      ListBox3.Clear;
      Edit7.Clear;
      Edit48.Clear;
      Edit49.Clear;
      Edit50.Clear;
      Edit51.Clear;
      Edit52.Clear;
      Edit53.Clear;
      Edit8.Clear;
      Edit9.Clear;
      Edit10.Clear;
      Edit11.Clear;
      Edit12.Clear;
      Edit13.Clear;
      Edit14.Clear;
      Edit15.Clear;
      Edit16.Clear;
      Edit17.Clear;
      Edit18.Clear;
      Edit19.Clear;
      Edit20.Clear;
      Edit21.Clear;
      Edit22.Clear;
      Edit23.Clear;
      Edit24.Clear;
      Edit25.Clear;
      Edit26.Clear;
      Edit27.Clear;
      Edit28.Clear;
      Edit29.Clear;
      Edit30.Clear;
      Edit31.Clear;
      Edit32.Clear;
      Edit33.Clear;
      Edit34.Clear;
      Edit35.Clear;
      Edit36.Clear;
      Edit37.Clear;
      Edit38.Clear;
      Edit39.Clear;
      Edit40.Clear;
      Edit41.Clear;
      Edit42.Clear;
      Edit43.Clear;
      Edit44.Clear;
      Edit45.Clear;
      Edit46.Clear;
      Edit47.Clear;
      RadioButton1.Checked := true;
      pj:=1;
      for pj := 1 to 10 do
      begin
        V1[pj]:=0;
        V2[pj]:=0;
        V3[pj]:=0;
        V4[pj]:=0;
        V5[pj]:=0;
        V6[pj]:=0;
        V7[pj]:=0;
        V8[pj]:=0;
      end;

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
      shellExecute(handle,'open', 'notepad.exe', PChar(SaveDialog1.FileName), nil, sw_shownormal);
    end;
  end;
end;

procedure TFrmAnaliseHMI.ListBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Timer1.Enabled := false;
    ListBox1.ItemIndex := ListBox2.ItemIndex;
    FrmAnaliseHMI.ProtRX('');
    RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.Enabled := false;
  ListBox2.ItemIndex := ListBox1.ItemIndex;
  FrmAnaliseHMI.ProtRX('');
  RX.Brush.Color:=clLime;
end;

procedure TFrmAnaliseHMI.BitBtn1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmAnaliseHMI.FormShow(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  Panel1.Width := 5;
  Panel2.Height := 5;
  Panel3.Height := 410;
  Panel8.Height := 5;
  PageControl1.Width := 5;
  FrmAnaliseHMI.Width := 805;
  PageControl1.ActivePage := TabSheet5;

  //b_Func := -5.51634734238458;
  //b_Func := 1.27633322221614;
  b_Func := 1.28188336560763;
end;

procedure TFrmAnaliseHMI.Calcula(fn:integer; fx, fy:real);
var
  c1,c2:real;
  wposi: array[1..7] of double;
  wmedi: array[1..7] of double;
  wprev: double;
  werro: double;
begin
  //
  //pn,px,py,sx,sxsx,xy,sxy,sy, pa, pb

  pn:=fn;
  px:=fx;
  py:=fy;
  sx:=sx+px;
  sy:=sy+py;
  xy:= px*py;
  sxy:=sxy+xy;
  xx:=px*px;
  sxx:=sxx+xx;
  yy:=py*py;
  syy:=syy+yy;



  c1:=pn*sxy-sx*sy;
  c2:=pn*sxx-sx*sx;

  wposi[pn]:=px;
  wmedi[pn]:=py;

  Chart1.Series[0].AddXY(wposi[pn],wmedi[pn], '', clBlue);

  if(c1<>0)and(c2<>0) then
  begin
    pb:=C1/c2;
    pa:=(sy-pb*sx)/pn;
    Edit48.text := FloatToStr(pb);
    Edit49.text := FloatToStr(pa);

    if pn>2 then
    begin
      prev:=pa+pb*px;
      erro:=py-prev;
      serro:=serro+erro;

      r1:=pn*sxx-sx*sx;
      r2:=pn*syy-sy*sy;
      r:=c1/(sqrt(r1*r2));

      Edit50.text := FloatToStr(prev);
      Edit51.text := FloatToStr(erro);
      Edit52.text := FloatToStr(serro/pn);
      Edit53.text := FloatToStr(r);


      V3[pn]:=0;
      V4[pn]:=0;
      V5[pn]:=0;
      V6[pn]:=0;
      V7[pn]:=0;
      V8[pn]:=0;

      for pj := 1 to pn do
      begin
        Chart1.Series[1].AddXY(wposi[pj],pa+pb*wposi[pj], '', clLime);
        Chart1.Series[2].AddXY(wposi[pj],wmedi[pj]-(pa+pb*wposi[pj]), '', clRed);
      end;
    end
    else
    begin
      Edit50.text := 'NC';
      Edit51.text := 'NC';
      Edit52.text := 'NC';
      Edit53.text := 'NC';
    end;
  end
  else
  begin
    Edit48.text := 'NC';
    Edit49.text := 'NC';
    Edit50.text := 'NC';
    Edit51.text := 'NC';
    Edit52.text := 'NC';
    Edit53.text := 'NC';
  end;


end;

procedure TFrmAnaliseHMI.Button3Click(Sender: TObject);
var
  c1,c2:real;
  wposi: array[1..7] of double;
  wmedi: array[1..7] of double;
  wprev: array[1..7] of double;
  werro: array[1..7] of double;
begin
  wposi[1]:=3491;  wmedi[1]:=1;     wprev[1]:=10; werro[1]:=wmedi[1]-wprev[1];
  wposi[2]:=3652;  wmedi[2]:=2.1;   wprev[2]:=20; werro[2]:=wmedi[2]-wprev[2];
  wposi[3]:=6596;  wmedi[3]:=8.7;   wprev[3]:=30; werro[3]:=wmedi[3]-wprev[3];
  wposi[4]:=40488; wmedi[4]:=93.4;  wprev[4]:=40; werro[4]:=wmedi[4]-wprev[4];
  wposi[5]:=46072; wmedi[5]:=107.4; wprev[5]:=50; werro[5]:=wmedi[5]-wprev[5];
  wposi[6]:=47680; wmedi[6]:=111.4; wprev[6]:=60; werro[6]:=wmedi[6]-wprev[6];
  wposi[7]:=48799; wmedi[7]:=114.2; wprev[7]:=70; werro[7]:=wmedi[7]-wprev[7];


  if (pn < 6) and (pn > 0) then pn:= pn+1 else
  begin
    pn:=1;
    Chart1.Series[0].Clear;
    Chart1.Series[1].Clear;
    Chart1.Series[2].Clear;
    px:=0;
    py:=0;
    sx:=0;
    sy:=0;
    xy:=0;
    sxy:=0;
    xx:=0;
    sxx:=0;
    yy:=0;
    syy:=0;
  end;

  px:=wposi[pn];
  py:=wmedi[pn];
  sx:=sx+px;
  sy:=sy+py;
  xy:= px*py;
  sxy:=sxy+xy;
  xx:=px*px;
  sxx:=sxx+xx;
  yy:=py*py;
  syy:=syy+yy;

  c1:=pn*sxy-sx*sy;
  c2:=pn*sxx-sx*sx;

  wposi[pn]:=px;
  wmedi[pn]:=py;

  Chart1.Series[0].AddXY(wposi[pn],wmedi[pn], '', clBlue);

  if(c1<>0)and(c2<>0) then
  begin
    pb:=C1/c2;
    pa:=(sy-pb*sx)/pn;

    if pn>2 then
    begin
      prev:=pa+pb*px;
      erro:=py-prev;
      serro:=serro+erro;

      r1:=pn*sxx-sx*sx;
      r2:=pn*syy-sy*sy;
      r:=c1/(sqrt(r1*r2));

      for pj := 1 to pn do
      begin
        Chart1.Series[1].AddXY(wposi[pj],pa+pb*wposi[pj], '', clLime);
        Chart1.Series[2].AddXY(wposi[pj],wmedi[pj]-(pa+pb*wposi[pj]), '', clRed);
      end;
    end;
  end;
end;

procedure TFrmAnaliseHMI.SerialPortNG1RxClusterEvent(Sender: TObject);
var
  i: integer;
begin
 // if not fMudaModo then
    if SerialPortNG1.NextClusterSize >= 0 then
   //   if SerialPortNG1.NextClusterCCError = 0 then
      begin
       // Timer1.Enabled := false;
        DataRx := SerialPortNG1.ReadNextClusterAsString;

        for i := 1 to Length(DataRx) do
        begin
          if (DataRx<>'') and (DataRx[i] = #10) then
          begin
            //if checkbox1.Checked then
           // begin
             // Lista1.Append(FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|RX|'+DataTx);
              //Form2.ListBox2.Items.Append(FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+strRxProtocolo);
              //Form2.ListBox2.ItemIndex := form2.ListBox2.Items.Count-1;
          //  end;


            Cod_Protocolo := 0;

            case Length(strRxProtocolo) of
              40 : Cod_Protocolo := 0;
              136: Cod_Protocolo := 2;
              160: Cod_Protocolo := 1;
              else Cod_Protocolo := 9;
            end;
           {
            if (modo_hmi = 45)  then
            begin
              ListBox1.Items.Append(' '+FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+strRxProtocolo);
              ListBox1.ItemIndex := ListBox1.Items.Count-1;
            end;
           }
            if Cod_Protocolo = 2 then
            begin
              if (Length(strRxProtocolo)=136) and (strRxProtocolo[1]=':') and (strRxProtocolo[136]=';') then
              begin
                ListBox1.Items.Append(' '+FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+strRxProtocolo);
                ListBox1.ItemIndex := ListBox1.Items.Count-1;
                ProtRX(strRxProtocolo);
                Erro_rx := false
              end
              else Erro_rx := true;
            end;

            if Cod_Protocolo = 1 then
            begin
              if (Length(strRxProtocolo)=160) and (strRxProtocolo[1]=':') and (strRxProtocolo[160]=';') then
              begin
                ListBox1.Items.Append(' '+FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+strRxProtocolo);
                ListBox1.ItemIndex := ListBox1.Items.Count-1;
                ProtRX(strRxProtocolo);
                Erro_rx := false
              end
              else
              begin
                Erro_rx := true;
                mode_   := modo_hmi;
                //AtualizaModo();
                modo_Tx := ZeroEsq(IntToStr(mode_),3);
                cmd_Tx  := ZeroEsq(IntToStr(1),3);
                srv_tx  := ZeroEsq(IntToStr(0),3);
                DataTx  := modo_Tx+cmd_Tx+srv_tx;
                SP_Y    := Trunc(int(Escalar/K_TIC_CM) + b_Func);
                SP_Y_Tx := ZeroEsq(IntToStr(SP_Y),10);
                DataTx  := DataTx+SP_Y_Tx;
                CRC_Tx  := ZeroEsq(IntToStr(CRC(DataTx)),6);
                DataTx  := ':' + CRC_Tx + DataTx + ';';
               // TxData();
                //ListBox1.Items.Clear;
              end;
            end
            else
            begin
              if (Length(strRxProtocolo)=40) and (strRxProtocolo[1]=':') and (strRxProtocolo[40]=';') then
              begin
                ListBox1.Items.Append(' '+FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+strRxProtocolo);
                ListBox1.ItemIndex := ListBox1.Items.Count-1;
                Erro_rx := false;
                ProtRX(strRxProtocolo);
                RxProtAtual := strRxProtocolo;
              end
              else
                Erro_rx := true;
            end;

            if not Erro_rx then
            begin
             // ProtRX(strRxProtocolo);
              //Protocolo();//PacoteRx();
              
            end;
             strRxProtocolo := '';
          end
          else
          begin
            if (DataRx<>'') and (DataRx[i] > #31) and (DataRx[i] < #127) then
            begin
              strRxProtocolo := strRxProtocolo + DataRx[i];
            end;
          end;
        end;
     //   Timer1.Enabled := true;
      end;

end;

procedure TFrmAnaliseHMI.TxData();
begin
  if DataTx <> '' then
  begin
    RxProtAnterior := RxProtAtual;
    SerialPortNG1.SendString(DataTx);
    if checkbox1.Checked then
    begin
      //Lista1.Append(FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|TX|'+DataTx);
      //Form2.ListBox1.Items.Append(FormatDateTime('YYYY/mm/dd"|"hh:nn:ss:zzz',Now)+'|'+DataTx);
      //Form2.ListBox1.ItemIndex := form2.ListBox1.Items.Count-1;
    end;
  end;
end;

procedure TFrmAnaliseHMI.Button4Click(Sender: TObject);
begin
  SerialPortNG1.Active :=  not SerialPortNG1.Active;
  if SerialPortNG1.Active then
  begin
    Button4.Caption := 'On-line';
  end
  else
  begin
    Button4.Caption := 'Off-line';
    cont_eveto := 0;
    cont_proto := 0;
  end;
end;

procedure TFrmAnaliseHMI.PageControl1Change(Sender: TObject);
begin
  CheckBox1.Checked := false;
  CheckBox2.Checked := false;
  CheckBox3.Checked := false;
  CheckBox4.Checked := false;
  Edit7.Color := cl3DLight;
  Edit7.Enabled := false;
  Button1.Enabled := false;
  Button2.Enabled := false;
  Edit55.Visible := false;
  Edit56.Visible := false;
  Label79.Visible := false;
  Label80.Visible := false;
end;

procedure TFrmAnaliseHMI.CheckBox2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if CheckBox2.Checked then
  begin
    Edit7.Color := clWindow;
    Edit7.Enabled := true;
    Edit7.SetFocus;
    Button1.Enabled := true;
    Button2.Enabled := true;
  end
  else
  begin
    Edit7.Color := cl3DLight;
    Edit7.Clear;
    Edit7.Enabled := false;
    Button1.Enabled := false;
    Button2.Enabled := false;
  end;
  Edit55.Visible := false;
  Edit56.Visible := false;
  Label79.Visible := false;
  Label80.Visible := false;
end;

procedure TFrmAnaliseHMI.Button5Click(Sender: TObject);
begin
  if (ComboBox1.Text <> '') and (ComboBox2.Text <> '') and
  (ComboBox3.Text <> '')then
  begin
    mode_   := modo_hmi_tx;
    //AtualizaModo();
    modo_Tx := ZeroEsq(IntToStr(mode_),3);
    cmd_Tx  := ZeroEsq(IntToStr(cmd_hmi_tx),3);
    srv_tx  := ZeroEsq(IntToStr(SRV_HMI_TX),3);
    DataTx  := modo_Tx+cmd_Tx+srv_tx;

    if (Edit54.Text = '') then
      SP_Y    := StrToInt(Edit4.Text)
    else
      SP_Y    := Trunc(int(StrToFloat(Edit54.Text)/K_TIC_CM) + b_Func);

    SP_Y_Tx := ZeroEsq(IntToStr(SP_Y),10);

    if (mode_rx = 23) and (ProgramState = 5) then
    begin
      Delay_tx:= ZeroEsq(IntToStr(Trunc(int((StrToFloat(Atraso) * 1000)))),6);
      DataTx  := modo_Tx + cmd_Tx + srv_tx + SP_Y_Tx + Delay_tx;
    end
    else
    begin
      DataTx  := modo_Tx + cmd_Tx + srv_tx + SP_Y_Tx;
    end;
    //DataTx  := DataTx+SP_Y_Tx;
    CRC_Tx  := ZeroEsq(IntToStr(CRC(DataTx)),6);
    DataTx  := ':' + CRC_Tx + DataTx + ';';
    TxData();
    //Edit54.Clear;
    Edit54.SetFocus;
  end
  else ShowMessage('Não enviado!');
end;

procedure TFrmAnaliseHMI.ComboBox1Change(Sender: TObject);
begin

  case ComboBox1.ItemIndex of
     0: modo_hmi_tx:= 0;
     1: modo_hmi_tx:=11;
     2: modo_hmi_tx:=12;
     3: modo_hmi_tx:=13;
     4: modo_hmi_tx:=14;
     5: modo_hmi_tx:=15;
     6: modo_hmi_tx:=16;
     7: modo_hmi_tx:=17;
     8: modo_hmi_tx:=21;
     9: modo_hmi_tx:=22;
    10: modo_hmi_tx:=23;
    11: modo_hmi_tx:=24;
    12: modo_hmi_tx:=31;
    13: modo_hmi_tx:=32;
    14: modo_hmi_tx:=33;
    15: modo_hmi_tx:=34;
    16: modo_hmi_tx:=35;
    17: modo_hmi_tx:=36;
    18: modo_hmi_tx:=37;
    19: modo_hmi_tx:=38;
    20: modo_hmi_tx:=39;
    21: modo_hmi_tx:=41;
    22: modo_hmi_tx:=42;
    23: modo_hmi_tx:=43;
    24: modo_hmi_tx:=44;
    25: modo_hmi_tx:=45;
    26: modo_hmi_tx:=46;
    27: modo_hmi_tx:=51;
    28: modo_hmi_tx:=52;
    29: modo_hmi_tx:=53;
    30: modo_hmi_tx:=54;
    31: modo_hmi_tx:=55;
    32: modo_hmi_tx:=56;
    33: modo_hmi_tx:=57;
    34: modo_hmi_tx:=58;
  end;
end;

procedure TFrmAnaliseHMI.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
     0: cmd_hmi_tx:=0;
     1: cmd_hmi_tx:=1;
     2: cmd_hmi_tx:=3;
     3: cmd_hmi_tx:=5;
     4: cmd_hmi_tx:=6;
     5: cmd_hmi_tx:=7;
     6: cmd_hmi_tx:=10;
     7: cmd_hmi_tx:=20;
     8: cmd_hmi_tx:=30;
     9: cmd_hmi_tx:=40;
    10: cmd_hmi_tx:=100;
    11: cmd_hmi_tx:=150;
    12: cmd_hmi_tx:=175;
    13: cmd_hmi_tx:=180;
    14: cmd_hmi_tx:=200;
    15: cmd_hmi_tx:=225;
    16: cmd_hmi_tx:=240;
  end;
end;

procedure TFrmAnaliseHMI.ComboBox3Change(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
    0: SRV_HMI_TX:=0;
    1: SRV_HMI_TX:=7;
    2: SRV_HMI_TX:=8;
    3: SRV_HMI_TX:=9;
    4: SRV_HMI_TX:=100;
    5: SRV_HMI_TX:=255;
  end;
end;

procedure TFrmAnaliseHMI.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    Edit54.Enabled    := true;
    ComboBox1.Enabled := true;
    ComboBox2.Enabled := true;
    ComboBox3.Enabled := true;
    Button5.Enabled   := true;
    Button6.Enabled   := true;
  end
  else
  begin
    Edit54.Enabled    := false;
    ComboBox1.Enabled := false;
    ComboBox2.Enabled := false;
    ComboBox3.Enabled := false;
    Button5.Enabled   := false;
    Button6.Enabled   := false;
  end;
end;

procedure TFrmAnaliseHMI.Button6Click(Sender: TObject);
begin
  if (not fMovimento) and (Excep_rx > 1) then
  begin
    mode_   := modo_hmi;
    modo_Tx := ZeroEsq(IntToStr(mode_),3);
    cmd_Tx  := ZeroEsq(IntToStr(cmd_hmi),3);
    srv_tx  := ZeroEsq(IntToStr(255),3);
    SP_Y    := StrToInt(Edit4.Text);
    SP_Y_Tx := ZeroEsq(IntToStr(SP_Y),10);
    if (mode_rx = 23) and (ProgramState = 5) then
    begin
      Delay_tx:= ZeroEsq(IntToStr(Trunc(int((StrToFloat(Atraso) * 1000)))),6);
      DataTx  := modo_Tx + cmd_Tx + srv_tx + SP_Y_Tx + Delay_tx;
    end
    else
    begin
      DataTx  := modo_Tx + cmd_Tx + srv_tx + SP_Y_Tx;
    end;
    CRC_Tx  := ZeroEsq(IntToStr(CRC(DataTx)),6);
    DataTx  := ':' + CRC_Tx + DataTx + ';';
    TxData();
  end;
end;

procedure TFrmAnaliseHMI.Button9Click(Sender: TObject);
begin
  if (modo_hmi = 42)then
  begin
  //Edit66.Text := strOEM;

  Edit66.Text := IntToStr(CAMPO_FIO_CORTE);
  Edit67.Text := IntToStr(Y_Ref);
  Edit68.Text := IntToStr(LIM_MAX_Y);
  Edit69.Text := IntToStr(LIM_MIN_Y);
  Edit70.Text := IntToStr(LIM_AVS_Y);
  Edit71.Text := IntToStr(LIM_AVC_Y);
  Edit72.Text := IntToStr(LIM_RTR_Y);
  Edit73.Text := IntToStr(LIM_PRT_Y);
  end;
end;

procedure TFrmAnaliseHMI.Button7Click(Sender: TObject);
begin
  if (modo_hmi = 42)then
  begin
  Edit59.Text := IntToStr(CAMPO_LENTO);
  Edit60.Text := IntToStr(CAMPO_INERCIA);
  Edit61.Text := IntToStr(CAMPO_FRENAGEM);
  Edit62.Text := IntToStr(CAMPO_TIRA_FOLGA);
  Edit63.Text := IntToStr(CAMPO_TOLERANCIA);
  Edit64.Text := IntToStr(delay_freio);
  Edit65.Text := IntToStr(delay_lento);
  Edit74.Text := IntToStr(delay_reverso);
  end;
end;

procedure TFrmAnaliseHMI.Button11Click(Sender: TObject);
begin
  if (modo_hmi = 42)then
  begin
  Edit75.Text := IntToStr(delay_faca);
  Edit76.Text := IntToStr(delay_troca_faca);
  Edit77.Text := IntToStr(delay_pisca_tf);
  Edit78.Text := IntToStr(delay_balancim);
  Edit79.Text := IntToStr(delay_debounce);
  Edit80.Text := IntToStr(delay_safety);
  end;
end;

procedure TFrmAnaliseHMI.Button13Click(Sender: TObject);
begin
  if RadioButton11.Checked then Edit67.Text := Edit4.Text;
  if RadioButton12.Checked then Edit68.Text := Edit4.Text;
  if RadioButton13.Checked then Edit69.Text := Edit4.Text;
  if RadioButton14.Checked then Edit70.Text := Edit4.Text;
  if RadioButton15.Checked then Edit71.Text := Edit4.Text;
  if RadioButton16.Checked then Edit72.Text := Edit4.Text;
  if RadioButton17.Checked then Edit73.Text := Edit4.Text;
end;

procedure TFrmAnaliseHMI.Edit66MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit66.Text) then
  begin
    Edit66.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit66.Text) + b_Func);
    Edit66.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit67MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit67.Text) then
  begin
    Edit67.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit67.Text) + b_Func);
    Edit67.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit68MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit68.Text) then
  begin
    Edit68.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit68.Text) + b_Func);
    Edit68.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit69MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit69.Text) then
  begin
    Edit69.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit69.Text) + b_Func);
    Edit69.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit70MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit70.Text) then
  begin
    Edit70.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit70.Text) + b_Func);
    Edit70.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit71MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit71.Text) then
  begin
    Edit71.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit71.Text) + b_Func);
    Edit71.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit72MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit72.Text) then
  begin
    Edit72.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit72.Text) + b_Func);
    Edit72.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit73MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit73.Text) then
  begin
    Edit73.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit73.Text) + b_Func);
    Edit73.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit59MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit59.Text) then
  begin
    Edit59.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit59.Text) + b_Func);
    Edit59.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit60MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit60.Text) then
  begin
    Edit60.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit60.Text) + b_Func);
    Edit60.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit61MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit61.Text) then
  begin
    Edit61.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit61.Text) + b_Func);
    Edit61.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit62MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit62.Text) then
  begin
    Edit62.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit62.Text) + b_Func);
    Edit62.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Edit63MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if IsStrInt(Edit63.Text) then
  begin
    Edit63.Hint := FloatToStr(K_TIC_CM * StrToInt(Edit63.Text) + b_Func);
    Edit63.ShowHint := True;
  end;
end;

procedure TFrmAnaliseHMI.Button10Click(Sender: TObject);
begin
  if (modo_hmi = 42)then
  begin

    if IsStrInt(strOEM) then
    begin
      str_OEM := strOEM;
    end
    else
    begin
      str_OEM := strOEM;
    end;

    if IsStrInt(Edit59.Text) then
    begin
      str_CAMPO_LENTO := Edit59.Text;
    end
    else
    begin
      str_CAMPO_LENTO := strCAMPO_LENTO;
    end;

    if IsStrInt(Edit60.Text) then
    begin
      str_CAMPO_INERCIA := Edit60.Text;
    end
    else
    begin
      str_CAMPO_INERCIA := strCAMPO_INERCIA;
    end;

    if IsStrInt(Edit61.Text) then
    begin
      str_CAMPO_FRENAGEM := Edit61.Text;
    end
    else
    begin
      str_CAMPO_FRENAGEM := strCAMPO_FRENAGEM;
    end;

    if IsStrInt(Edit62.Text) then
    begin
      str_CAMPO_TIRA_FOLGA := Edit62.Text;
    end
    else
    begin
      str_CAMPO_TIRA_FOLGA := strCAMPO_TIRA_FOLGA;
    end;

    if IsStrInt(Edit63.Text) then
    begin
      str_CAMPO_TOLERANCIA := Edit63.Text;
    end
    else
    begin
      str_CAMPO_TOLERANCIA := strCAMPO_TOLERANCIA;
    end;

    if IsStrInt(Edit66.Text) then
    begin
      str_CAMPO_FIO_CORTE := Edit66.Text;
    end
    else
    begin
      str_CAMPO_FIO_CORTE := strCAMPO_FIO_CORTE;
    end;

    if IsStrInt(Edit67.Text) then
    begin
      str_Y_Ref := Edit67.Text;
    end
    else
    begin
      str_Y_Ref := strY_Ref;
    end;

    if IsStrInt(Edit68.Text) then
    begin
      str_LIM_MAX_Y := Edit68.Text;
    end
    else
    begin
      str_LIM_MAX_Y := strLIM_MAX_Y;
    end;

    if IsStrInt(Edit69.Text) then
    begin
      str_LIM_MIN_Y := Edit69.Text;
    end
    else
    begin
      str_LIM_MIN_Y := strLIM_MIN_Y;
    end;

    if IsStrInt(Edit70.Text) then
    begin
      str_LIM_AVS_Y := Edit70.Text;
    end
    else
    begin
      str_LIM_AVS_Y := strLIM_AVS_Y;
    end;

    if IsStrInt(Edit71.Text) then
    begin
      str_LIM_AVC_Y := Edit71.Text;
    end
    else
    begin
      str_LIM_AVC_Y := strLIM_AVC_Y;
    end;

    if IsStrInt(Edit72.Text) then
    begin
      str_LIM_RTR_Y := Edit72.Text;
    end
    else
    begin
      str_LIM_RTR_Y := strLIM_RTR_Y;
    end;

    if IsStrInt(Edit73.Text) then
    begin
      str_LIM_PRT_Y := Edit73.Text;
    end
    else
    begin
      str_LIM_PRT_Y := strLIM_PRT_Y;
    end;

    if IsStrInt(Edit75.Text) then
    begin
      str_delay_faca := Edit75.Text;
    end
    else
    begin
      str_delay_faca := strdelay_faca;
    end;

    if IsStrInt(Edit65.Text) then
    begin
      str_delay_freio := Edit65.Text;
    end
    else
    begin
      str_delay_freio := strdelay_freio;
    end;

    if IsStrInt(Edit65.Text) then
    begin
      str_delay_lento := Edit65.Text;
    end
    else
    begin
      str_delay_lento := strdelay_lento;
    end;

    if IsStrInt(Edit74.Text) then
    begin
      str_delay_reverso := Edit74.Text;
    end
    else
    begin
      str_delay_reverso := strdelay_reverso;
    end;

    if IsStrInt(Edit76.Text) then
    begin
      str_delay_troca_faca := Edit76.Text;
    end
    else
    begin
      str_delay_troca_faca := strdelay_troca_faca;
    end;

    if IsStrInt(Edit77.Text) then
    begin
      str_delay_pisca_tf := Edit77.Text;
    end
    else
    begin
      str_delay_pisca_tf := strdelay_pisca_tf;
    end;

    if IsStrInt(Edit78.Text) then
    begin
      str_delay_balancim := Edit78.Text;
    end
    else
    begin
      str_delay_balancim := strdelay_balancim;
    end;

    if IsStrInt(Edit79.Text) then
    begin
      str_delay_debounce := Edit79.Text;
    end
    else
    begin
      str_delay_debounce := str_delay_debounce;
    end;

    if IsStrInt(Edit80.Text) then
    begin
      str_delay_safety := Edit73.Text;
    end
    else
    begin
      str_delay_safety := strdelay_safety;
    end;

    DataTx := ZeroEsq(IntToStr(42),3);                  // mode
    DataTx := DataTx + ZeroEsq(IntToStr(cmd_hmi_tx),3); // cmd_hmi
    DataTx := DataTx + ZeroEsq(IntToStr(255),3);        // srv_hmi
    DataTx := DataTx + ZeroEsq(IntToStr(2),3);          // param_mt
    DataTx := DataTx + ZeroEsq(IntToStr(1), 3);         // OEM
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_LENTO),10); // CAMPO_LENTO
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_INERCIA),10); // CAMPO_INERCIA
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_FRENAGEM),10); // CAMPO_FRENAGEM
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_TIRA_FOLGA),10); // CAMPO_TIRA_FOLGA
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_TOLERANCIA),10); // CAMPO_TOLERANCIA
    DataTx := DataTx + ZeroEsq(Trim(str_CAMPO_FIO_CORTE),10); // CAMPO_FIO_CORTE                                                                           // CAMPO_FIO_CORTE
    DataTx := DataTx + ZeroEsq(Trim(str_Y_Ref),10); // Y_Ref
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_MAX_Y),10); // LIM_MAX_Y
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_MIN_Y),10); // LIM_MIN_Y
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_AVS_Y),10); // LIM_AVS_Y
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_AVC_Y),10); // LIM_AVC_Y
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_RTR_Y),10); // LIM_RTR_Y
    DataTx := DataTx + ZeroEsq(Trim(str_LIM_PRT_Y),10); // LIM_PRT_Y
    DataTx := DataTx + ZeroEsq(Trim(str_delay_faca), 6); // delay_faca
    DataTx := DataTx + ZeroEsq(Trim(str_delay_freio), 6); // delay_freio
    DataTx := DataTx + ZeroEsq(Trim(str_delay_lento), 6); // delay_lento
    DataTx := DataTx + ZeroEsq(Trim(str_delay_reverso), 6); // delay_reverso
    DataTx := DataTx + ZeroEsq(Trim(str_delay_troca_faca), 6); // delay_troca_faca
    DataTx := DataTx + ZeroEsq(Trim(str_delay_pisca_tf), 6); // delay_pisca_tf
    DataTx := DataTx + ZeroEsq(Trim(str_delay_balancim), 6); // delay_balancim
    DataTx := DataTx + ZeroEsq(Trim(str_delay_debounce), 6); // delay_
    DataTx := DataTx + ZeroEsq(Trim(str_delay_safety), 6); // delay_
    CRC_Tx := ZeroEsq(IntToStr(CRC(DataTx)),6); // CRC
    DataTx := ':' + CRC_Tx + DataTx + ';';      // Delimitadores
    TxData();
  end;
end;

end.procedure TFrmAnaliseHMI.Button8Click(Sender: TObject);
begin

end;


