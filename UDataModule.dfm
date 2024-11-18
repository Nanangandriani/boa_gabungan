object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 322
  Width = 635
  PixelsPerInch = 120
  object Koneksi: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_hps'
    Username = 'postgres'
    Server = '10.10.10.110'
    Connected = True
    Left = 196
    Top = 16
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
    CurrentVersion = '7.95 '
    DatabaseFileName = 'Conectdb.abs'
    DatabaseName = 't_konfigurasi'
    Exclusive = False
    Password = 'smart_boa2024'
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 466
    Top = 16
  end
  object ABSTable1: TABSTable
    CurrentVersion = '7.95 '
    DatabaseName = 't_konfigurasi'
    InMemory = False
    ReadOnly = False
    StoreDefs = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'Sbu_Code'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nama_Sbu'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Ip_db'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Port_db'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Db_Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Password'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Ip_db_Pusat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'User_db'
        DataType = ftString
        Size = 20
      end>
    TableName = 't_konfigurasi'
    Exclusive = False
    Left = 466
    Top = 88
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
