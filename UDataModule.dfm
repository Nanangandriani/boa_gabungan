object dm: Tdm
  Height = 383
  Width = 473
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '192.168.29.103'
    Connected = True
    Left = 301
    Top = 13
    EncryptedPassword = 'BBFFBDFF9BFF9AFF89FF9AFF93FFBFFFCDFFCFFFCDFFCCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 371
    Top = 13
  end
  object Qtemp: TUniQuery
    Connection = Koneksi
    Left = 58
    Top = 6
  end
  object dsQtemp: TDataSource
    DataSet = Qtemp
    Left = 115
    Top = 6
  end
  object dsQtemp1: TDataSource
    DataSet = Qtemp1
    Left = 115
    Top = 83
  end
  object Qtemp1: TUniQuery
    Connection = Koneksi
    Left = 58
    Top = 83
  end
  object dsQtemp2: TDataSource
    DataSet = Qtemp2
    Left = 115
    Top = 166
  end
  object Qtemp2: TUniQuery
    Connection = Koneksi
    Left = 58
    Top = 166
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 301
    Top = 64
  end
  object dsQtemp3: TDataSource
    DataSet = Qtemp3
    Left = 115
    Top = 256
  end
  object Qtemp3: TUniQuery
    Connection = Koneksi
    Left = 58
    Top = 256
  end
end
