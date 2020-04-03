object Form1: TForm1
  Left = 192
  Top = 233
  Width = 919
  Height = 388
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 106
    Top = 52
    Width = 86
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077' '
  end
  object Button1: TButton
    Left = 587
    Top = 165
    Width = 105
    Height = 46
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 584
    Top = 110
    Width = 118
    Height = 33
    Caption = #1042#1077#1089#1090#1080' '#1088#1072#1079#1084#1077#1088
    TabOrder = 1
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 104
    Top = 72
    Width = 361
    Height = 161
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 518
    Top = 78
    Width = 98
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 674
    Top = 78
    Width = 98
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 24
    Top = 16
  end
end
