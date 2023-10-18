object FMasterWilayah: TFMasterWilayah
  Left = 0
  Top = 0
  Caption = 'Master Wilayah'
  ClientHeight = 336
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label25: TLabel
    Left = 117
    Top = 49
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label26: TLabel
    Left = 20
    Top = 49
    Width = 24
    Height = 15
    Caption = 'Area'
  end
  object Label27: TLabel
    Left = 20
    Top = 78
    Width = 42
    Height = 15
    Caption = 'Provinsi'
  end
  object Label28: TLabel
    Left = 117
    Top = 78
    Width = 3
    Height = 15
    Caption = ':'
  end
  object btMasterArea: TSpeedButton
    Left = 378
    Top = 46
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btMasterAreaClick
  end
  object Wilayah: TLabel
    Left = 20
    Top = 20
    Width = 42
    Height = 15
    Caption = 'Wilayah'
  end
  object Label2: TLabel
    Left = 117
    Top = 20
    Width = 3
    Height = 15
    Caption = ':'
  end
  object btMasterWilayah: TSpeedButton
    Left = 378
    Top = 17
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btMasterWilayahClick
  end
  object btMasterProvinsi: TSpeedButton
    Left = 378
    Top = 75
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btMasterProvinsiClick
  end
  object Label1: TLabel
    Left = 20
    Top = 106
    Width = 88
    Height = 15
    Caption = 'Karesidenan / TP'
  end
  object Label3: TLabel
    Left = 117
    Top = 106
    Width = 3
    Height = 15
    Caption = ':'
  end
  object btMasterKaresidenan: TSpeedButton
    Left = 378
    Top = 103
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btMasterKaresidenanClick
  end
  object Cbtypejual: TRzComboBox
    Left = 132
    Top = 46
    Width = 240
    Height = 23
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 0
    Items.Strings = (
      'KKJ'
      'KKSP')
  end
  object Cbgolongan: TRzComboBox
    Left = 132
    Top = 75
    Width = 240
    Height = 23
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 1
    Items.Strings = (
      'KKJ'
      'KKSP')
  end
  object CbJenisPel: TRzComboBox
    Left = 132
    Top = 17
    Width = 240
    Height = 23
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 2
    Items.Strings = (
      'KKJ'
      'KKSP')
  end
  object RzComboBox1: TRzComboBox
    Left = 132
    Top = 103
    Width = 240
    Height = 23
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 3
    Items.Strings = (
      'KKJ'
      'KKSP')
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 146
    Width = 1022
    Height = 190
    ActivePage = TabSDetailData
    Align = alBottom
    TabOrder = 4
    object TabSDetailData: TTabSheet
      Caption = 'Data Detail'
      object DBGridCustomer: TDBGridEh
        Left = 0
        Top = 0
        Width = 1014
        Height = 160
        Align = alClient
        DataSource = DSDetailMasterWil
        DynProps = <>
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE_DISTRIBUSI'
            Footers = <>
            Title.Caption = 'Kode Distribusi'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE_KABUPATEN'
            Footers = <>
            Title.Caption = 'Kode Kabupaten'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMA_KABUPATEN'
            Footers = <>
            Title.Caption = 'Nama Kabupaten'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE_KECAMATAN'
            Footers = <>
            Title.Caption = 'Kode Kecamatan'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMA_KECAMATAN'
            Footers = <>
            Title.Caption = 'Nama Kecamatan'
            Width = 300
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object MemDetailMasterWil: TMemTableEh
    Active = True
    Params = <>
    Left = 905
    Top = 200
    object MemDetailMasterWilKODE_DISTRIBUSI: TStringField
      FieldName = 'KODE_DISTRIBUSI'
      Size = 50
    end
    object MemDetailMasterWilKODE_KABUPATEN: TStringField
      FieldName = 'KODE_KABUPATEN'
      Size = 10
    end
    object MemDetailMasterWilNAMA_KABUPATEN: TStringField
      FieldName = 'NAMA_KABUPATEN'
      Size = 200
    end
    object MemDetailMasterWilKODE_KECAMATAN: TStringField
      FieldName = 'KODE_KECAMATAN'
      Size = 10
    end
    object MemDetailMasterWilNAMA_KECAMATAN: TStringField
      FieldName = 'NAMA_KECAMATAN'
      Size = 200
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KODE_DISTRIBUSI: TMTStringDataFieldEh
          FieldName = 'KODE_DISTRIBUSI'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object KODE_KABUPATEN: TMTStringDataFieldEh
          FieldName = 'KODE_KABUPATEN'
          StringDataType = fdtStringEh
          DisplayWidth = 10
          Size = 10
        end
        object NAMA_KABUPATEN: TMTStringDataFieldEh
          FieldName = 'NAMA_KABUPATEN'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object KODE_KECAMATAN: TMTStringDataFieldEh
          FieldName = 'KODE_KECAMATAN'
          StringDataType = fdtStringEh
          DisplayWidth = 10
          Size = 10
        end
        object NAMA_KECAMATAN: TMTStringDataFieldEh
          FieldName = 'NAMA_KECAMATAN'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetailMasterWil: TDataSource
    DataSet = MemDetailMasterWil
    Left = 905
    Top = 152
  end
end
