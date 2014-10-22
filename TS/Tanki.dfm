object Glavnaya_Forma: TGlavnaya_Forma
  Left = 0
  Top = 0
  Caption = #1058#1072#1085#1082#1080
  ClientHeight = 281
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Tanki_SSSR: TLabel
    Left = 8
    Top = 8
    Width = 212
    Height = 36
    Caption = #1058#1040#1053#1050#1048' '#1057#1057#1057#1056
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGreen
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Udalit_tank: TSpeedButton
    Left = 264
    Top = 256
    Width = 122
    Height = 22
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1072#1085#1082
    OnClick = Udalit_tankClick
  end
  object Dobavit_tank: TSpeedButton
    Left = 8
    Top = 256
    Width = 122
    Height = 22
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1072#1085#1082
    OnClick = Dobavit_tankClick
  end
  object Redaktirovat_tank: TSpeedButton
    Left = 136
    Top = 256
    Width = 122
    Height = 22
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1072#1085#1082
    OnClick = Redaktirovat_tankClick
  end
  object Tablica: TDBGrid
    AlignWithMargins = True
    Left = 8
    Top = 50
    Width = 585
    Height = 200
    DataSource = Modul_upravleniya.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAZVANIE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KLAS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VES'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KALIBR'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SKOROST'
        Width = 83
        Visible = True
      end>
  end
end
