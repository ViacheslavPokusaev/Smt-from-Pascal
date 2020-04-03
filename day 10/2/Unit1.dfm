object Form1: TForm1
  Left = 188
  Top = 282
  Width = 1654
  Height = 874
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
  object StringGrid1: TStringGrid
    Left = 200
    Top = 40
    Width = 841
    Height = 505
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 1128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'vvesti'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 1112
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 1256
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object Button2: TButton
    Left = 1280
    Top = 120
    Width = 75
    Height = 25
    Caption = 'size'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 1472
    Top = 64
  end
end
