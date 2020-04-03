object Form1: TForm1
  Left = 245
  Top = 123
  Width = 932
  Height = 552
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1058#1077#1089#1090' '#1085#1072' '#1087#1089#1080#1093#1080#1082#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 16
    Width = 84
    Height = 29
    Caption = 'Vopros'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 224
    Top = 544
    Width = 69
    Height = 13
    Caption = 'Pravilniy_otvet'
    FocusControl = DBEdit6
    Visible = False
  end
  object SpeedButton1: TSpeedButton
    Left = 440
    Top = 272
    Width = 23
    Height = 22
    GroupIndex = 4
    Caption = 'C'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 440
    Top = 120
    Width = 23
    Height = 22
    GroupIndex = 4
    Caption = 'A'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 440
    Top = 192
    Width = 23
    Height = 22
    GroupIndex = 4
    Caption = 'B'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 440
    Top = 344
    Width = 23
    Height = 22
    GroupIndex = 4
    Caption = 'D'
    OnClick = SpeedButton4Click
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 56
    Width = 361
    Height = 21
    DataField = 'Vopros'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 120
    Width = 361
    Height = 21
    DataField = 'Otvet1'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 192
    Width = 361
    Height = 21
    DataField = 'Otvet2'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 272
    Width = 361
    Height = 21
    DataField = 'Otvet3'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 64
    Top = 344
    Width = 361
    Height = 21
    DataField = 'Otvet4'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 56
    Top = 520
    Width = 3319
    Height = 21
    DataField = 'Pravilniy_otvet'
    DataSource = DataSource1
    TabOrder = 5
    Visible = False
  end
  object Button2: TButton
    Left = 64
    Top = 392
    Width = 361
    Height = 73
    Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 616
    Top = 152
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 7
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 504
    Top = 0
    Width = 473
    Height = 225
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 495
    Width = 916
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Memo1: TMemo
    Left = 504
    Top = 256
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
  end
  object Memo2: TMemo
    Left = 504
    Top = 360
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 11
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 40
    Top = 8
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'slavon_7'
    TableName = 'slavon_7.db'
    Left = 592
    Top = 16
    object Table1Vopros: TStringField
      FieldName = 'Vopros'
      Size = 100
    end
    object Table1Otvet1: TStringField
      FieldName = 'Otvet1'
      Size = 50
    end
    object Table1Otvet2: TStringField
      FieldName = 'Otvet2'
      Size = 50
    end
    object Table1Otvet3: TStringField
      FieldName = 'Otvet3'
      Size = 50
    end
    object Table1Otvet4: TStringField
      FieldName = 'Otvet4'
      Size = 50
    end
    object Table1Pravilniy_otvet: TStringField
      FieldName = 'Pravilniy_otvet'
      Size = 50
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 96
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 120
    Top = 8
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 360
    Top = 8
  end
end
