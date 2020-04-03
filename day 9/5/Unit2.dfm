object Form2: TForm2
  Left = 305
  Top = 146
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 467
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 64
    Top = 40
    Width = 185
    Height = 89
    Lines.Strings = (
      'RichEdit1')
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 144
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object RadioButton1: TRadioButton
    Left = 272
    Top = 40
    Width = 113
    Height = 17
    Caption = #1057#1080#1085#1080#1081
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 272
    Top = 72
    Width = 113
    Height = 17
    Caption = #1041#1077#1083#1099#1081
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 272
    Top = 104
    Width = 113
    Height = 17
    Caption = #1063#1105#1088#1085#1099#1081
    TabOrder = 4
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 272
    Top = 136
    Width = 113
    Height = 17
    Caption = #1047#1077#1083#1105#1085#1099#1081
    TabOrder = 5
    OnClick = RadioButton4Click
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 360
    object sSze141: TMenuItem
      Caption = 'Size 14'
      OnClick = sSze141Click
    end
  end
end
