object Form1: TForm1
  Left = 221
  Top = 284
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
    Left = 128
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 392
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 592
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Memo2: TMemo
    Left = 792
    Top = 96
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 648
    Top = 152
  end
  object SaveDialog1: TSaveDialog
    Left = 624
    Top = 152
  end
end
