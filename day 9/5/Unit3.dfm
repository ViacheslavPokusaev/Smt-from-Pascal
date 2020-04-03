object Form3: TForm3
  Left = 655
  Top = 195
  Width = 1305
  Height = 675
  BorderIcons = [biSystemMenu]
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object CheckBox1: TCheckBox
    Left = 432
    Top = 248
    Width = 689
    Height = 33
    Caption = #1055#1088#1080#1085#1080#1084#1072#1090#1100'/'#1053#1077' '#1087#1088#1080#1085#1080#1084#1072#1090#1100' '#1085#1072#1078#1072#1090#1080#1077' '#1082#1083#1072#1074#1080#1096
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 904
    Top = 448
    object N1: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1075#1086#1083#1086#1074#1086#1082' '#1086#1082#1085#1072
      OnClick = N1Click
    end
  end
end
