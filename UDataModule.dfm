object dm: Tdm
  Height = 188
  Width = 322
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '192.168.29.103'
    Connected = True
    Left = 157
    Top = 13
    EncryptedPassword = 'BBFFBDFF9BFF9AFF89FF9AFF93FFBFFFCDFFCFFFCDFFCCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 227
    Top = 13
  end
  object Qtemp: TUniQuery
    Connection = Koneksi
    Left = 18
    Top = 6
  end
  object dsQtemp: TDataSource
    DataSet = Qtemp
    Left = 75
    Top = 6
  end
  object dsQtemp1: TDataSource
    DataSet = Qtemp1
    Left = 75
    Top = 59
  end
  object Qtemp1: TUniQuery
    Connection = Koneksi
    Left = 18
    Top = 59
  end
  object dsQtemp2: TDataSource
    DataSet = Qtemp2
    Left = 75
    Top = 118
  end
  object Qtemp2: TUniQuery
    Connection = Koneksi
    Left = 18
    Top = 118
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 157
    Top = 64
  end
  object dsQtemp3: TDataSource
    DataSet = Qtemp3
    Left = 219
    Top = 120
  end
  object Qtemp3: TUniQuery
    Connection = Koneksi
    Left = 162
    Top = 120
  end
end
