object FImportnocek: TFImportnocek
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Import No Cek'
  ClientHeight = 264
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Label6: TLabel
    Left = 18
    Top = 67
    Width = 46
    Height = 13
    Caption = 'Cek/BG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 18
    Top = 40
    Width = 48
    Height = 13
    Caption = 'No. Rek'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 18
    Top = 15
    Width = 30
    Height = 13
    Caption = 'Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 122
    Top = 162
    Width = 24
    Height = 13
    Caption = 'S/D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 18
    Top = 141
    Width = 49
    Height = 13
    Caption = 'No. Urut'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LProgress: TLabel
    Left = 17
    Top = 206
    Width = 58
    Height = 13
    Caption = 'Progress :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 96
    Width = 42
    Height = 13
    Caption = 'Header'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbbank: TComboBox
    Left = 69
    Top = 10
    Width = 145
    Height = 23
    Style = csDropDownList
    ImeName = 'US'
    TabOrder = 0
    OnChange = cbbankChange
    OnSelect = cbbankSelect
  end
  object cbcek: TComboBox
    Left = 69
    Top = 64
    Width = 108
    Height = 23
    Style = csDropDownList
    ImeName = 'US'
    TabOrder = 1
    Items.Strings = (
      ''
      'CEK'
      'BG'
      'SLIP')
  end
  object cbrek: TComboBox
    Left = 69
    Top = 37
    Width = 231
    Height = 23
    Style = csDropDownList
    ImeName = 'US'
    TabOrder = 2
  end
  object BProses: TButton
    Left = 238
    Top = 193
    Width = 113
    Height = 25
    Caption = 'Proses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BProsesClick
  end
  object SpinEdit2: TSpinEdit
    Left = 153
    Top = 157
    Width = 97
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
  object Edit2: TEdit
    Left = 402
    Top = 111
    Width = 121
    Height = 23
    ImeName = 'US'
    TabOrder = 5
  end
  object SpinEdit1: TSpinEdit
    Left = 17
    Top = 157
    Width = 97
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object Ed_header: TEdit
    Left = 17
    Top = 112
    Width = 321
    Height = 21
    Ctl3D = False
    ImeName = 'US'
    ParentCtl3D = False
    TabOrder = 7
  end
  object ProgressBar: TProgressBar
    Left = 17
    Top = 226
    Width = 321
    Height = 30
    TabOrder = 8
  end
  object bConvertExcel: TButton
    Left = 706
    Top = 91
    Width = 105
    Height = 25
    Caption = 'Proses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object bCariExcel: TButton
    Left = 706
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Cari Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object eLokasiExcel: TEdit
    Left = 402
    Top = 138
    Width = 232
    Height = 23
    ImeName = 'US'
    TabOrder = 11
  end
  object sgExcel: TStringGrid
    Left = 551
    Top = 22
    Width = 26
    Height = 14
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 12
    Visible = False
  end
  object Ed_trans_no: TEdit
    Left = 306
    Top = 8
    Width = 43
    Height = 23
    TabOrder = 13
  end
  object MyQuery2: TUniQuery
    Connection = dm.Koneksi
    Left = 552
    Top = 64
  end
  object MyQuery1: TUniQuery
    Connection = dm.Koneksi
    Left = 504
    Top = 28
  end
  object OpenDialogExcel: TOpenDialog
    Filter = 
      'Microsoft Excel (*.xlsx)|*.xlsx|Microsoft Excel 2003 (*.xls)|*.x' +
      'ls'
    Left = 412
    Top = 52
  end
  object QMaster_Nocek: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select * from t_nocek_master where deleted_at isnull order by tr' +
        'ans_no ASC')
    Left = 232
    Top = 48
  end
  object DSMaster_nocek: TDataSource
    DataSet = QMaster_Nocek
    Left = 304
    Top = 72
  end
end
