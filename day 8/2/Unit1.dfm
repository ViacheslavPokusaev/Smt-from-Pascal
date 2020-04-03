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
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 104
    Width = 119
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1077#1088#1074#1091#1102' '#1089#1090#1088#1086#1082#1091
    OnMouseDown = Label1MouseDown
  end
  object Label2: TLabel
    Left = 680
    Top = 104
    Width = 118
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1074#1090#1086#1088#1091#1102' '#1089#1090#1088#1086#1082#1091
    OnMouseMove = Label2MouseMove
  end
  object Edit1: TEdit
    Left = 176
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 680
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 456
    Top = 136
    Width = 75
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
    OnMouseDown = Button1MouseDown
  end
end
