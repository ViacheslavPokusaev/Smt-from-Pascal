object Form1: TForm1
  Left = 202
  Top = 213
  Width = 1582
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 472
    Top = 296
    Width = 32
    Height = 13
    Caption = 'Label1'
    OnDblClick = Label1DblClick
  end
  object Label2: TLabel
    Left = 1016
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Label2'
    OnMouseDown = Label2MouseDown
  end
  object Edit1: TEdit
    Left = 424
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnMouseDown = Edit1MouseDown
  end
  object Memo1: TMemo
    Left = 960
    Top = 224
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    OnMouseMove = Memo1MouseMove
  end
  object Memo2: TMemo
    Left = 376
    Top = 384
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
    OnMouseMove = Memo2MouseMove
  end
end
