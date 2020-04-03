object Form2: TForm2
  Left = 737
  Top = 247
  Width = 452
  Height = 396
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 104
    Width = 321
    Height = 129
    Caption = #1053#1072#1095#1072#1090#1100' '#1090#1077#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object mm1: TMainMenu
    Left = 72
    Top = 16
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N1Click
    end
  end
end
