object Form1: TForm1
  Left = 201
  Top = 124
  Width = 919
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 96
    Top = 96
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 552
    Top = 96
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 368
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object tbl1: TTable
    Left = 320
    Top = 208
  end
end
