object Form1: TForm1
  Left = 745
  Top = 292
  Width = 815
  Height = 534
  Caption = #1058#1077#1084#1072' '#8470'9'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 128
    Top = 112
    Width = 137
    Height = 145
    ItemHeight = 13
    Items.Strings = (
      'BitBtn'
      'FontDialog'
      'ListBox'
      'MainMenu'
      'MaskEdit'
      'Panel'
      'RichEdit'
      'StatusBar'
      'Timer')
    Sorted = True
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object RichEdit1: TRichEdit
    Left = 328
    Top = 112
    Width = 377
    Height = 145
    Lines.Strings = (
      'RichEdit1')
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 128
    Top = 64
    Width = 137
    Height = 41
    BevelInner = bvSpace
    BevelOuter = bvSpace
    Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090#1099' Delphi 6'
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 328
    Top = 64
    Width = 377
    Height = 41
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' Delphi'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 280
    Width = 137
    Height = 49
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF88BBFFFFFFFFFFFFFFFFFFFFFFFFFFFF88BBFFFFFFFFFFFFFFFFFFFFFFFFFF
      BBBBBBBB88FFFFFFFFFFFFFFFFFFFFFFBBBBBBBB88FFFFFFFFFFFFFFFFFFBBBB
      BBBBBBBBBBBBFFFFFFFFFFFFFFFFBBBBBBBBBBBBBBBBFFFFFFFFFFFFFFFFFF88
      BBBBBBBB88FF88FFFFFFFFFFFFFFFF88BBBBBBBB88FF88FFFFFFFFFFFFFFFF88
      BBBBBBBB88FFFFFFFFFFFFFFFFFFFF88BBBBBBBB88FFFFFFFFFFFFFFFFFFFF88
      BBBBBBBB88FFFFFFFFFFFFFFFFFFFF88BBBBBBBB88FFFFFFFFFFFFFFFFFFFFFF
      88888888FFFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFF}
    NumGlyphs = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 477
    Width = 799
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object PopupMenu1: TPopupMenu
    object N1: TMenuItem
      Caption = #1064#1088#1080#1092#1090
      OnClick = N1Click
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 32
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 64
  end
end
