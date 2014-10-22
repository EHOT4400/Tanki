object Redaktirovat_tank: TRedaktirovat_tank
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1085#1082
  ClientHeight = 257
  ClientWidth = 241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 57
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 202
    Width = 57
    Height = 15
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 22
    Top = 160
    Width = 45
    Height = 15
    Caption = #1050#1072#1083#1080#1073#1088':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 120
    Width = 25
    Height = 15
    Caption = #1042#1077#1089':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 36
    Top = 82
    Width = 32
    Height = 15
    Caption = #1050#1083#1072#1089':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 27
    Top = 8
    Width = 3
    Height = 15
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 8
    Width = 13
    Height = 15
    Caption = #8470
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Nazvanie: TEdit
    Left = 80
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Skorost: TEdit
    Left = 80
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Kalibr: TEdit
    Left = 80
    Top = 158
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Ves: TEdit
    Left = 80
    Top = 118
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Klas: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Save: TButton
    Left = 126
    Top = 227
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = SaveClick
  end
end
