object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 365
  Width = 467
  object Koneksi: TUniConnection
    AutoCommit = False
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'db_boa_real'
    Username = 'postgres'
    Server = '10.10.10.110'
    Connected = True
    Left = 157
    Top = 13
    EncryptedPassword = 'BDFF96FF91FF90FF91FF98FFCDFFCFFFCDFFCCFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 246
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
    Left = 253
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
    Left = 13
    Top = 173
  end
  object QPerusahaan: TUniQuery
    Connection = Koneksi
    SQL.Strings = (
      'select * from t_company')
    Active = True
    Left = 80
    Top = 176
  end
  object DBPerusahaan: TfrxDBDataset
    UserName = 'DBPerusahaan'
    CloseDataSource = False
    DataSet = QPerusahaan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 168
    Top = 176
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
    Left = 352
    Top = 152
  end
  object ABSTable1: TABSTable
    CurrentVersion = '7.95 '
    DatabaseName = 't_konfigurasi'
    InMemory = False
    ReadOnly = False
    TableName = 't_konfigurasi'
    Exclusive = False
    Left = 352
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
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -17
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 32
    Top = 282
  end
end
