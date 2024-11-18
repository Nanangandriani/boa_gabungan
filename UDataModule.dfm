object dm: Tdm
  OnCreate = DataModuleCreate
<<<<<<< Updated upstream
  Height = 365
  Width = 467
=======
  Height = 322
  Width = 635
  PixelsPerInch = 120
>>>>>>> Stashed changes
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '10.10.10.110'
<<<<<<< Updated upstream
    Left = 157
    Top = 13
=======
    Connected = True
    Left = 196
    Top = 16
>>>>>>> Stashed changes
    EncryptedPassword = 'BDFF96FF91FF90FF91FF98FFCDFFCFFFCDFFCCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 308
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
  object UniConnection1: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '10.10.10.110'
    Left = 316
    Top = 86
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
    Top = 216
  end
  object QPerusahaan: TUniQuery
    Connection = Koneksi
    SQL.Strings = (
      'select * from t_company')
    Left = 100
    Top = 220
  end
  object DBPerusahaan: TfrxDBDataset
    UserName = 'DBPerusahaan'
    CloseDataSource = False
    DataSet = QPerusahaan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 210
    Top = 220
  end
  object ABSDatabase1: TABSDatabase
    Connected = True
    CurrentVersion = '7.95 '
    DatabaseFileName = 'D:\back_office_automation\Win32\Release\Conectdb.abs'
    DatabaseName = 't_konfigurasi'
    Exclusive = False
    Password = '123456'
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 352
    Top = 232
  end
  object ABSTable1: TABSTable
    CurrentVersion = '7.95 '
    DatabaseName = 't_konfigurasi'
    InMemory = False
    ReadOnly = False
    Active = True
    TableName = 't_konfigurasi'
    Exclusive = False
    Left = 344
    Top = 160
    object ABSTable1id: TAutoIncField
      FieldName = 'id'
    end
    object ABSTable1Sbu_Code: TStringField
      FieldName = 'Sbu_Code'
    end
    object ABSTable1Nama_Sbu: TStringField
      FieldName = 'Nama_Sbu'
      Size = 50
    end
    object ABSTable1Ip_db: TStringField
      FieldName = 'Ip_db'
      Size = 100
    end
    object ABSTable1Port_db: TStringField
      FieldName = 'Port_db'
    end
    object ABSTable1Db_Name: TStringField
      FieldName = 'Db_Name'
    end
    object ABSTable1Password: TStringField
      FieldName = 'Password'
    end
    object ABSTable1Ip_db_Pusat: TStringField
      FieldName = 'Ip_db_Pusat'
    end
    object ABSTable1User_db: TStringField
      FieldName = 'User_db'
    end
  end
end
