object FMutasiBank: TFMutasiBank
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar Bank'
  ClientHeight = 239
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 526
    Height = 239
    Align = alClient
    DataSource = DataSourceQMutasi
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'rekening_no'
        Footers = <>
        Title.Caption = 'No. Rekening'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bank_name'
        Footers = <>
        Title.Caption = 'Nama Bank'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'on_behalf_of'
        Footers = <>
        Title.Caption = 'Atas Nama'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 184
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Button1: TButton
    Left = 340
    Top = 232
    Width = 113
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object DataSourceQMutasi: TDataSource
    DataSet = QMutasi01
    Left = 272
    Top = 96
  end
  object QMutasi01: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_bank')
    Left = 217
    Top = 78
    object QMutasi01bank_name: TStringField
      FieldName = 'bank_name'
      Size = 100
    end
    object QMutasi01rekening_no: TStringField
      FieldName = 'rekening_no'
      Size = 100
    end
    object QMutasi01address: TMemoField
      FieldName = 'address'
      BlobType = ftMemo
    end
    object QMutasi01currency: TStringField
      FieldName = 'currency'
      Size = 25
    end
    object QMutasi01saldo: TFloatField
      FieldName = 'saldo'
    end
    object QMutasi01bank_code: TStringField
      FieldName = 'bank_code'
      Size = 100
    end
    object QMutasi01account_no: TStringField
      FieldName = 'account_no'
      Size = 32
    end
    object QMutasi01on_behalf_of: TStringField
      FieldName = 'on_behalf_of'
      Size = 50
    end
    object QMutasi01start_date: TDateField
      FieldName = 'start_date'
    end
    object QMutasi01exchange_rate: TFloatField
      FieldName = 'exchange_rate'
    end
    object QMutasi01id: TGuidField
      FieldName = 'id'
      Size = 38
    end
    object QMutasi01created_at: TDateTimeField
      FieldName = 'created_at'
    end
    object QMutasi01created_by: TStringField
      FieldName = 'created_by'
      Size = 50
    end
    object QMutasi01updated_at: TDateTimeField
      FieldName = 'updated_at'
    end
    object QMutasi01updated_by: TStringField
      FieldName = 'updated_by'
      Size = 50
    end
    object QMutasi01deleted_at: TDateTimeField
      FieldName = 'deleted_at'
    end
    object QMutasi01deleted_by: TStringField
      FieldName = 'deleted_by'
      Size = 50
    end
    object QMutasi01header_account_no: TStringField
      FieldName = 'header_account_no'
      Size = 255
    end
  end
  object DataSourceMutasiBank01: TDataSource
    DataSet = TableMutasi01
    Left = 131
    Top = 117
  end
  object TableMutasi01: TUniTable
    TableName = 'TBank01'
    Connection = dm.Koneksi
    Left = 75
    Top = 101
  end
end
