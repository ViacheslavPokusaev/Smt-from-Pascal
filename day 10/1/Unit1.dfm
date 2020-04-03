object Form1: TForm1
  Left = 798
  Top = 466
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
    Left = 744
    Top = 64
    Width = 209
    Height = 473
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 496
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object WordApplication1: TWordApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    Left = 536
    Top = 112
  end
end
