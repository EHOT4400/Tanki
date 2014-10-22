object Modul_upravleniya: TModul_upravleniya
  OldCreateOrder = False
  Height = 165
  Width = 222
  object FDQuery0: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 64
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 110
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 168
    Top = 6
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 62
  end
  object del_button: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Tanki'
      'User_Name=root'
      'Password=1234567890'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Tanki.sssr'
    TableName = 'Tanki.sssr'
    Left = 168
    Top = 112
  end
end
