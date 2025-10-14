object FMasterWilayah: TFMasterWilayah
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Master Wilayah'
  ClientHeight = 336
  ClientWidth = 1022
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
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
  object btMasterArea: TSpeedButton
    Left = 372
    Top = 46
    Width = 23
    Height = 22
    Caption = '+'
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
    Left = 372
    Top = 17
    Width = 23
    Height = 22
    Caption = '+'
    OnClick = btMasterWilayahClick
  end
  object Label1: TLabel
    Left = 20
    Top = 78
    Width = 88
    Height = 15
    Caption = 'Karesidenan / TP'
  end
  object Label3: TLabel
    Left = 117
    Top = 78
    Width = 3
    Height = 15
    Caption = ':'
  end
  object btMasterKaresidenan: TSpeedButton
    Left = 372
    Top = 75
    Width = 23
    Height = 22
    Caption = '+'
    OnClick = btMasterKaresidenanClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 1022
    Height = 231
    ActivePage = TabSDetailData
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 104
    ExplicitWidth = 1018
    object TabSDetailData: TTabSheet
      Caption = 'Data Detail'
      object DBGridCustomer: TDBGridEh
        Left = 0
        Top = 0
        Width = 1014
        Height = 201
        Align = alClient
        DataSource = DSDetailMasterWil
        DynProps = <>
        SearchPanel.Enabled = True
        TabOrder = 0
        OnDblClick = DBGridCustomerDblClick
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
  object edWilayah: TRzButtonEdit
    Left = 132
    Top = 17
    Width = 240
    Height = 23
    Text = ''
    TabOrder = 0
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = edWilayahButtonClick
  end
  object edArea: TRzButtonEdit
    Left = 132
    Top = 46
    Width = 240
    Height = 23
    Text = ''
    TabOrder = 1
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = edAreaButtonClick
  end
  object edKaresidenan: TRzButtonEdit
    Left = 132
    Top = 75
    Width = 240
    Height = 23
    Text = ''
    TabOrder = 2
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = btAmbilKaresidenanClick
  end
  object edKode_kares: TEdit
    Left = 401
    Top = 76
    Width = 100
    Height = 23
    TabOrder = 4
    Visible = False
  end
  object edKode_area: TEdit
    Left = 401
    Top = 46
    Width = 100
    Height = 23
    TabOrder = 5
    Visible = False
  end
  object edKode_wil: TEdit
    Left = 401
    Top = 17
    Width = 100
    Height = 23
    TabOrder = 6
    Visible = False
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
