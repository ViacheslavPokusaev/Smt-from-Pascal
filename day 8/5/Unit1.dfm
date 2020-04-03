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
  object Button1: TButton
    Left = 48
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 136
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 96
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 304
    Top = 64
    Width = 201
    Height = 25
    Caption = 'Button6'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 672
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 888
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button8'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 568
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 8
    OnClick = Button9Click
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\Student\'#1055#1056#1040#1050#1058#1048#1050#1040
    Filter = #1044#1086#1082#1091#1084#1077#1085#1090'|*.docx'
    Left = 384
    Top = 32
  end
  object OpenDialog2: TOpenDialog
    FileName = 'C:\Windows\Boot'
    Filter = 'Document|*.xls|Document|*.xml|Document|*.xlt|Document|*.xlsx'
    Left = 696
    Top = 32
  end
end
