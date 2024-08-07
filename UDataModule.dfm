object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 245
  Width = 322
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '10.10.10.110'
    Connected = True
    Left = 141
    Top = 13
    EncryptedPassword = 'BDFF96FF91FF90FF91FF98FFCDFFCFFFCDFFCCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 227
    Top = 5
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
    Left = 83
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
    Left = 227
    Top = 120
  end
  object Qtemp3: TUniQuery
    Connection = Koneksi
    Left = 162
    Top = 120
  end
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '10.10.10.110'
    Left = 245
    Top = 69
    EncryptedPassword = 'BDFF96FF91FF90FF91FF98FFCDFFCFFFCDFFCCFF'
  end
  object QLink: TUniQuery
    Connection = Koneksi
    SQL.Strings = (
      ''
      
        ' -- select string_agg(concat('#39'T'#39', link) , '#39','#39') link1, string_agg' +
        '(concat('#39#39', link_unit) , '#39','#39') link2 from t_menu_sub'
      ''
      ''
      ''
      
        ' select concat('#39'T'#39', link) link1, string_agg(concat('#39#39', link_unit' +
        ') , '#39','#39') link2 from t_menu_sub'
      '')
    Left = 16
    Top = 176
  end
end
