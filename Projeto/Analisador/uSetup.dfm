object FrmSetUp: TFrmSetUp
  Left = 250
  Top = 173
  Width = 870
  Height = 528
  Caption = 'Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Step Time'
  end
  object Label5: TLabel
    Left = 16
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Office set:'
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '50'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 72
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '23'
    OnChange = Edit2Change
  end
end
