object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1305
  Height = 675
  ActiveControl = Edit1
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 144
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    OnMouseMove = Memo1MouseMove
  end
  object Edit1: TEdit
    Left = 368
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    OnMouseMove = Edit1MouseMove
  end
  object Button1: TButton
    Left = 392
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnMouseMove = Button1MouseMove
  end
  object ListBox1: TListBox
    Left = 552
    Top = 80
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 3
    OnMouseMove = ListBox1MouseMove
  end
end
