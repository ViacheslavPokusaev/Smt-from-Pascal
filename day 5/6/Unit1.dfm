object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 112
    Top = 64
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 336
    Top = 64
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
  end
  object Memo3: TMemo
    Left = 992
    Top = 56
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo3')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 664
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object SaveDialog1: TSaveDialog
    Left = 824
    Top = 224
  end
end
