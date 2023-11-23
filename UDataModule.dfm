object dm: Tdm
  Height = 235
  Width = 403
  PixelsPerInch = 120
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'Local_Gabungan'
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    Left = 196
    Top = 16
    EncryptedPassword = '9EFF9BFF92FF96FF91FF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 284
    Top = 16
  end
  object Qtemp: TUniQuery
    Connection = Koneksi
    Left = 23
    Top = 8
  end
  object dsQtemp: TDataSource
    DataSet = Qtemp
    Left = 94
    Top = 8
  end
  object dsQtemp1: TDataSource
    DataSet = Qtemp1
    Left = 94
    Top = 74
  end
  object Qtemp1: TUniQuery
    Connection = Koneksi
    Left = 23
    Top = 74
  end
  object dsQtemp2: TDataSource
    DataSet = Qtemp2
    Left = 104
    Top = 148
  end
  object Qtemp2: TUniQuery
    Connection = Koneksi
    Left = 23
    Top = 148
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 196
    Top = 80
  end
  object dsQtemp3: TDataSource
    DataSet = Qtemp3
    Left = 284
    Top = 150
  end
  object Qtemp3: TUniQuery
    Connection = Koneksi
    Left = 203
    Top = 150
  end
end
