object Form1: TForm1
  Left = 511
  Top = 294
  Width = 509
  Height = 497
  Caption = #1052#1086#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit1: TMaskEdit
    Left = 104
    Top = 40
    Width = 273
    Height = 40
    Hint = 'maskedit1'
    EditMask = 'LLLlllllllllllllll;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    MaxLength = 18
    ParentFont = False
    TabOrder = 0
    Text = '                  '
  end
  object MaskEdit2: TMaskEdit
    Left = 168
    Top = 128
    Width = 120
    Height = 40
    Hint = 'maskedit2'
    EditMask = '0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    MaxLength = 4
    ParentFont = False
    TabOrder = 1
    Text = '    '
  end
  object MaskEdit3: TMaskEdit
    Left = 136
    Top = 200
    Width = 193
    Height = 40
    Hint = 'maskedit3'
    EditMask = 'LLlc 00C 0C0;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    MaxLength = 12
    ParentFont = False
    TabOrder = 2
    Text = '            '
  end
  object StaticText1: TStaticText
    Left = 168
    Top = 16
    Width = 126
    Height = 17
    BorderStyle = sbsSingle
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1074#1086#1102' '#1092#1072#1084#1080#1083#1080#1102
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 206
    Top = 88
    Width = 55
    Height = 30
    AutoSize = False
    BevelInner = bvSpace
    Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
    TabOrder = 4
  end
  object StaticText3: TStaticText
    Left = 208
    Top = 176
    Width = 39
    Height = 17
    BorderStyle = sbsSunken
    Caption = #1043#1088#1091#1087#1087#1072
    TabOrder = 5
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 440
    Width = 493
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 210
      end
      item
        Bevel = pbNone
        Text = #1058#1077#1084#1072' '#8470'9'
        Width = 50
      end
      item
        Alignment = taCenter
        Bevel = pbRaised
        Text = #1055#1072#1088#1092#1100#1086#1085#1086#1074
        Width = 50
      end>
  end
  object CheckBox1: TCheckBox
    Left = 104
    Top = 248
    Width = 241
    Height = 17
    Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100'/'#1079#1072#1087#1088#1077#1090#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object StaticText4: TStaticText
    Left = 16
    Top = 281
    Width = 465
    Height = 144
    AutoSize = False
    Color = clAqua
    ParentColor = False
    TabOrder = 8
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 8
    object N1: TMenuItem
      Caption = #1062#1074#1077#1090' '#1086#1082#1085#1072
      OnClick = N1Click
    end
  end
  object ColorDialog1: TColorDialog
    Left = 400
    Top = 8
  end
end
