object Form1: TForm1
  Left = 292
  Top = 151
  Width = 339
  Height = 315
  Align = alBottom
  Caption = 'Form1'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 208
    Width = 196
    Height = 24
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1086#1082#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnDblClick = Label1DblClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnClick = Edit1Click
  end
  object Button1: TButton
    Left = 16
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 128
    Top = 40
    Width = 153
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 144
    Top = 96
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 3
    OnMouseMove = ListBox1MouseMove
  end
end
