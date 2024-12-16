object FNew_BonProduksi: TFNew_BonProduksi
  Left = 0
  Top = 0
  Caption = 'FORM NEW BON PRODUKSI'
  ClientHeight = 516
  ClientWidth = 1308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 11
    Width = 41
    Height = 13
    Caption = 'No. BON'
  end
  object Label2: TLabel
    Left = 36
    Top = 60
    Width = 81
    Height = 13
    Caption = 'No. SPK Produksi'
  end
  object Label3: TLabel
    Left = 36
    Top = 35
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label5: TLabel
    Left = 132
    Top = 11
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label6: TLabel
    Left = 132
    Top = 60
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label7: TLabel
    Left = 132
    Top = 35
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label9: TLabel
    Left = 389
    Top = 35
    Width = 62
    Height = 13
    Caption = 'Sisa Timbang'
  end
  object Label10: TLabel
    Left = 566
    Top = 35
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label4: TLabel
    Left = 389
    Top = 11
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label8: TLabel
    Left = 566
    Top = 11
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 36
    Top = 156
    Width = 29
    Height = 13
    Caption = 'Group'
    Visible = False
  end
  object Label12: TLabel
    Left = 132
    Top = 156
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label13: TLabel
    Left = 36
    Top = 108
    Width = 33
    Height = 13
    Caption = 'Produk'
  end
  object Label14: TLabel
    Left = 132
    Top = 108
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label15: TLabel
    Left = 36
    Top = 132
    Width = 27
    Height = 13
    Caption = 'Mesin'
  end
  object Label16: TLabel
    Left = 132
    Top = 132
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label17: TLabel
    Left = 733
    Top = 38
    Width = 68
    Height = 13
    Caption = 'Jumlah Karton'
    Visible = False
  end
  object Label18: TLabel
    Left = 930
    Top = 38
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label19: TLabel
    Left = 389
    Top = 134
    Width = 133
    Height = 13
    Caption = 'Gudang Transit Bahan Kimia'
    Visible = False
  end
  object Label20: TLabel
    Left = 566
    Top = 134
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label21: TLabel
    Left = 389
    Top = 108
    Width = 132
    Height = 13
    Caption = 'Gudang Transit Bahan Baku'
    Visible = False
  end
  object Label22: TLabel
    Left = 566
    Top = 108
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label23: TLabel
    Left = 389
    Top = 157
    Width = 152
    Height = 13
    Caption = 'Gudang Transit Bahan Kemasan'
    Visible = False
  end
  object Label24: TLabel
    Left = 566
    Top = 158
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label25: TLabel
    Left = 36
    Top = 85
    Width = 61
    Height = 13
    Caption = 'SPK Timbang'
  end
  object Label26: TLabel
    Left = 132
    Top = 85
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label27: TLabel
    Left = 389
    Top = 58
    Width = 109
    Height = 13
    Caption = 'Jumlah Timbang Actual'
  end
  object Label28: TLabel
    Left = 566
    Top = 58
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label29: TLabel
    Left = 389
    Top = 85
    Width = 76
    Height = 13
    Caption = 'Jumlah Timbang'
  end
  object Label30: TLabel
    Left = 566
    Top = 85
    Width = 4
    Height = 13
    Caption = ':'
  end
  object EdNo: TRzEdit
    Left = 156
    Top = 8
    Width = 183
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 0
  end
  object DtTanggal: TRzDateTimeEdit
    Left = 156
    Top = 32
    Width = 111
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 185
    Width = 1308
    Height = 299
    ActivePage = TabBaku
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 186
    ExplicitWidth = 1312
    object TabBaku: TTabSheet
      Caption = 'Bahan Tepung'
      object DBGridBaku: TDBGridEh
        Left = 0
        Top = 0
        Width = 1304
        Height = 271
        Align = alClient
        DataSource = DsMemBaku
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridBakuCellClick
        OnColEnter = DBGridBakuColEnter
        OnColExit = DBGridBakuColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_material_stok'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_supplier'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Stok'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Permintaan|Index'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Index|Satuan'
            Visible = False
            Width = 49
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(KG)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Width = 124
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudangtransit'
            Footers = <>
            LookupParams.KeyFieldNames = 'gudangtransit'
            LookupParams.LookupDataSet = QGudang
            LookupParams.LookupDisplayFieldName = 'nm_gudang'
            LookupParams.LookupKeyFieldNames = 'nm_gudang'
            Title.Caption = 'Gudang Transit'
            Width = 133
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalberi'
            Footers = <>
            Title.Caption = 'Total Diberikan'
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalterima'
            Footers = <>
            Title.Caption = 'Total Terima'
            Width = 71
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sisa'
            Footers = <>
            Title.Caption = 'Sisa Stok'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabKimia: TTabSheet
      Caption = 'Bahan Kimia'
      ImageIndex = 1
      object DBGridKimia: TDBGridEh
        Left = 0
        Top = 0
        Width = 1304
        Height = 271
        Align = alClient
        DataSource = DsMemKimia
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridKimiaCellClick
        OnColEnter = DBGridKimiaColEnter
        OnColExit = DBGridKimiaColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 140
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            Title.Caption = 'Permintaan|Index'
            Width = 63
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Caption = 'Index|Satuan'
            Visible = False
            Width = 61
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(KG)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Title.Caption = 'Gudang'
            Width = 143
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudangtransit'
            Footers = <>
            LookupParams.KeyFieldNames = 'gudangtransit'
            LookupParams.LookupDataSet = QGudang
            LookupParams.LookupDisplayFieldName = 'nm_gudang'
            LookupParams.LookupKeyFieldNames = 'nm_gudang'
            Title.Caption = 'Gudang Transit'
            Width = 138
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalberi'
            Footers = <>
            Title.Caption = 'Total Diberikan'
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalterima'
            Footers = <>
            Title.Caption = 'Total Terima'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sisa'
            Footers = <>
            Title.Caption = 'Sisa Stok'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabKemasan: TTabSheet
      Caption = 'Bahan Kemasan'
      ImageIndex = 2
      TabVisible = False
      object DBGridKemasan: TDBGridEh
        Left = 0
        Top = 0
        Width = 1304
        Height = 271
        Align = alClient
        DataSource = DsKemasan
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridKemasanCellClick
        OnColEnter = DBGridKemasanColEnter
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'index2'
            Footers = <>
            Title.Caption = 'Permintaan|Index'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Caption = 'Index|Satuan'
            Visible = False
            Width = 49
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(KG)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Width = 132
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudangtransit'
            Footers = <>
            LookupParams.KeyFieldNames = 'gudangtransit'
            LookupParams.LookupDataSet = QGudang
            LookupParams.LookupDisplayFieldName = 'nm_gudang'
            LookupParams.LookupKeyFieldNames = 'nm_gudang'
            Title.Caption = 'Gudang Transit'
            Width = 128
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalberi'
            Footers = <>
            Title.Caption = 'Total Diberikan'
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalterima'
            Footers = <>
            Title.Caption = 'Total Terima'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 1308
    Height = 32
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 485
    ExplicitWidth = 1312
    object BBatal: TRzBitBtn
      Left = 1236
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Batal'
      TabOrder = 0
      OnClick = BBatalClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object BSimpan: TRzBitBtn
      Left = 1161
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = BSimpanClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object BEdit: TRzBitBtn
      Left = 1086
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 2
      Visible = False
      OnClick = BEditClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 712
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
  object EdNo_SPk: TRzComboBox
    Left = 156
    Top = 57
    Width = 183
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object EdNo_Formula: TRzComboBox
    Left = 590
    Top = 8
    Width = 200
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 5
    OnChange = EdNo_FormulaChange
  end
  object EdTimbang: TRzEdit
    Left = 590
    Top = 56
    Width = 95
    Height = 21
    Text = '0'
    Alignment = taRightJustify
    CharCase = ecUpperCase
    TabOrder = 6
    OnChange = EdTimbangChange
  end
  object Edgroup: TRzEdit
    Left = 156
    Top = 153
    Width = 111
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 7
    Visible = False
  end
  object edproduk: TRzEdit
    Left = 156
    Top = 105
    Width = 183
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    TabOrder = 8
  end
  object edmesin: TRzEdit
    Left = 156
    Top = 129
    Width = 183
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    TabOrder = 9
  end
  object EdKarton: TRzEdit
    Left = 954
    Top = 35
    Width = 121
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    TabOrder = 10
    Visible = False
    OnChange = EdKartonChange
  end
  object CbGudang: TComboBox
    Left = 590
    Top = 107
    Width = 200
    Height = 21
    TabOrder = 11
    Visible = False
    OnChange = CbGudangChange
  end
  object CbGudang2: TComboBox
    Left = 590
    Top = 131
    Width = 200
    Height = 21
    TabOrder = 12
    Visible = False
    OnChange = CbGudang2Change
  end
  object CbGudang3: TComboBox
    Left = 590
    Top = 155
    Width = 200
    Height = 21
    TabOrder = 13
    Visible = False
    OnChange = CbGudang3Change
  end
  object CbSpk_Timbang: TRzButtonEdit
    Left = 156
    Top = 81
    Width = 183
    Height = 21
    Text = ''
    TabOrder = 14
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = CbSpk_TimbangButtonClick
  end
  object EdTimbang2: TRzNumericEdit
    Left = 590
    Top = 82
    Width = 95
    Height = 21
    Color = clInfoBk
    TabOrder = 15
    DisplayFormat = '#,##0.00'
  end
  object EdSisa: TRzNumericEdit
    Left = 590
    Top = 32
    Width = 96
    Height = 21
    Color = clInfoBk
    TabOrder = 16
    OnChange = EdSisaChange
    DisplayFormat = '#,##0.00'
  end
  object MemKemasan2: TMemTableEh
    Params = <>
    Left = 1044
    Top = 11
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object index2: TMTNumericDataFieldEh
          FieldName = 'index2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object Gudang: TMTStringDataFieldEh
          FieldName = 'Gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 30
          Size = 30
        end
        object kd_Material: TMTStringDataFieldEh
          FieldName = 'kd_Material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Totalberat: TMTNumericDataFieldEh
          FieldName = 'Totalberat'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object QtyPerkemasan: TMTNumericDataFieldEh
          FieldName = 'QtyPerkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object Kd_supplier: TMTStringDataFieldEh
          FieldName = 'Kd_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            1.000000000000000000
            nil
            'K'
            'K'
            'Karton'
            '1'
            nil
            20.000000000000000000
            nil
            nil
            nil
            nil)
          (
            60.000000000000000000
            nil
            'D'
            'D'
            'Duplek'
            '60'
            nil
            600.000000000000000000
            nil
            nil
            nil
            nil)
          (
            300.000000000000000000
            nil
            'A'
            'A'
            'Amplop'
            '300'
            nil
            10000.000000000000000000
            nil
            nil
            nil
            nil)
          (
            0.187500000000000000
            nil
            'S'
            'S'
            'Kaki ON'
            '1/320'
            nil
            40.000000000000000000
            nil
            nil
            nil
            nil)
          (
            0.002300000000000000
            nil
            'I'
            'I'
            'Sumitape'
            '435'
            nil
            1.000000000000000000
            nil
            nil
            nil
            nil))
      end
    end
  end
  object DsMemKimia: TDataSource
    DataSet = MemKimia
    Left = 748
    Top = 64
  end
  object DsMemBaku: TDataSource
    DataSet = MemBaku
    Left = 840
    Top = 64
  end
  object DsKemasan: TDataSource
    DataSet = MemKemasan
    Left = 904
    Top = 64
  end
  object Qkimia: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category,D.nm_supplier from t_master' +
        '_formula_det A '
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok'
      'inner join t_material C on B.kd_material=C.kd_material '
      'Left join t_supplier D on B.kd_supplier=D.kd_supplier'
      'where C.category='#39'KIMIA'#39
      'order by iddetail Asc')
    MasterFields = 'no_formula'
    DetailFields = 'no_formula'
    Left = 988
    Top = 32
  end
  object QBaku: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category, D.nm_supplier from t_maste' +
        'r_formula_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok'
      'inner join t_material C on B.kd_material=C.kd_material '
      'Left join t_supplier D on B.kd_supplier=D.kd_supplier'
      'where C.category='#39'BAHAN BAKU'#39' order by iddetail ASC')
    MasterFields = 'no_formula'
    DetailFields = 'no_formula'
    Left = 836
    Top = 112
  end
  object Qkemasan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category from t_spk_formula_det A in' +
        'ner join t_material_stok B '
      'on A.kd_material_stok=B.kd_material_stok'
      
        'inner join t_material C on B.kd_material=C.kd_material where C.c' +
        'ategory='#39'BAHAN KEMASAN'#39)
    DetailFields = 'no_formula'
    Left = 988
    Top = 88
  end
  object MemBaku: TMemTableEh
    Params = <>
    Left = 832
    Top = 8
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_formula: TMTStringDataFieldEh
          FieldName = 'no_formula'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_formula'
          DisplayWidth = 25
          Size = 25
          Transliterate = True
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_stok'
          DisplayWidth = 30
          Size = 30
          Transliterate = True
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object iddetail: TMTNumericDataFieldEh
          FieldName = 'iddetail'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'ttlberat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'qtyperkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuankemasan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object no_spk: TMTStringDataFieldEh
          FieldName = 'no_spk'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_spk'
          DisplayWidth = 30
          Size = 30
          Transliterate = True
        end
        object gudangtransit: TMTStringDataFieldEh
          FieldName = 'gudangtransit'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudangtransit'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object type: TMTStringDataFieldEh
          FieldName = 'type'
          StringDataType = fdtStringEh
          DisplayLabel = 'type'
          DisplayWidth = 20
          Transliterate = True
        end
        object totalberi: TMTNumericDataFieldEh
          FieldName = 'totalberi'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalberi'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalterima: TMTNumericDataFieldEh
          FieldName = 'totalterima'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalterima'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object category: TMTStringDataFieldEh
          FieldName = 'category'
          StringDataType = fdtStringEh
          DisplayLabel = 'category'
          DisplayWidth = 20
          Transliterate = True
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_supplier'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object sisa: TMTNumericDataFieldEh
          FieldName = 'sisa'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = False
          Precision = 30
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            ''
            'PA'
            ''
            0.500000000000000000
            'KG'
            '13'
            561
            5000c
            500000c
            100c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            5000c
            0c
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil)
          (
            nil
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            0.500000000000000000
            'KG'
            '09'
            562
            5000c
            500000c
            100c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            5000c
            0c
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            'GB-A'
            'JA'
            '05 JA 001/GB-A/XI/20'
            18.500000000000000000
            'KG'
            '12'
            563
            185000c
            500000c
            3700c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            185000c
            0c
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            nil
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            564
            230000c
            500000c
            4600c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            230000c
            0c
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            565
            20000c
            500000c
            400c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            20000c
            0c
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            nil
            'GB-A'
            'OA'
            '02 OA 002/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            566
            130000c
            500000c
            2600c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            130000c
            0c
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            'GB-A'
            'LB'
            '01 LB 001/GB-A/XI/20/HKJ'
            8.500000000000000000
            'KG'
            '02'
            567
            85000c
            500000c
            1700c
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            85000c
            0c
            'Tepung Lengket'
            'Bahan Baku'
            'Citra Prima Indo Kencana '
            nil)
          (
            nil
            'GB-B'
            'LA'
            '01 LA 001/GB-B/X/20'
            8.500000000000000000
            'KG'
            '01'
            568
            85000c
            500000c
            1700c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Lengket'
            'Bahan Baku'
            'Vietnam'
            nil)
          (
            nil
            'GB-A'
            'OA'
            '02 OA  001/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            569
            130000c
            500000c
            2600c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            570
            20000c
            500000c
            400c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            nil
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            571
            230000c
            500000c
            4600c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            'GB-A'
            'JA'
            '05 JA 003/GB-A/XI/20'
            18.500000000000000000
            'KG'
            '12'
            572
            185000c
            500000c
            3700c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            nil
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            0.500000000000000000
            'KG'
            '09'
            573
            5000c
            500000c
            100c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PA'
            ''
            0.500000000000000000
            'KG'
            '13'
            574
            5000c
            500000c
            100c
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil))
      end
    end
  end
  object MemTableEh1: TMemTableEh
    Params = <>
    Left = 744
    Top = 115
    object StringField1: TStringField
      DisplayWidth = 20
      FieldName = 'Gudang'
    end
    object StringField2: TStringField
      DisplayWidth = 30
      FieldName = 'kd_stok'
      Size = 30
    end
    object StringField3: TStringField
      DisplayWidth = 20
      FieldName = 'kd_Material'
    end
    object StringField4: TStringField
      DisplayWidth = 20
      FieldName = 'nm_material'
    end
    object StringField5: TStringField
      DisplayWidth = 20
      FieldName = 'index'
    end
    object StringField6: TStringField
      DisplayWidth = 20
      FieldName = 'Totalberat'
    end
    object StringField7: TStringField
      DisplayWidth = 20
      FieldName = 'QtyPerkemasan'
    end
    object StringField8: TStringField
      DisplayWidth = 20
      FieldName = 'totalkemasan'
    end
    object StringField9: TStringField
      DisplayWidth = 50
      FieldName = 'nm_supplier'
      Size = 50
    end
    object StringField10: TStringField
      DisplayWidth = 20
      FieldName = 'Kd_supplier'
    end
    object StringField11: TStringField
      DisplayWidth = 20
      FieldName = 'satuan'
    end
    object StringField12: TStringField
      DisplayWidth = 20
      FieldName = 'index2'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object index2: TMTStringDataFieldEh
          FieldName = 'index2'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Gudang: TMTStringDataFieldEh
          FieldName = 'Gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 30
          Size = 30
        end
        object kd_Material: TMTStringDataFieldEh
          FieldName = 'kd_Material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Totalberat: TMTStringDataFieldEh
          FieldName = 'Totalberat'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object QtyPerkemasan: TMTStringDataFieldEh
          FieldName = 'QtyPerkemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object totalkemasan: TMTStringDataFieldEh
          FieldName = 'totalkemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object Kd_supplier: TMTStringDataFieldEh
          FieldName = 'Kd_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            '1'
            nil
            'K'
            'Karton'
            nil
            '1'
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            '60'
            nil
            'D'
            'Duplek'
            nil
            '60'
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            '300'
            nil
            'A'
            'Amplop'
            nil
            '300'
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            '0.1785'
            nil
            'S'
            'Kaki ON'
            nil
            '1/320'
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            '0.0023'
            nil
            'I'
            'Sumitape'
            nil
            '435'
            nil
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object MemKimia: TMemTableEh
    Params = <>
    Left = 740
    Top = 10
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_formula: TMTStringDataFieldEh
          FieldName = 'no_formula'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_formula'
          DisplayWidth = 25
          Size = 25
          Transliterate = True
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 1000
          Size = 100
          Transliterate = True
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_stok'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object iddetail: TMTNumericDataFieldEh
          FieldName = 'iddetail'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'ttlberat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'qtyperkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuankemasan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object no_spk: TMTStringDataFieldEh
          FieldName = 'no_spk'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_spk'
          DisplayWidth = 30
          Size = 30
          Transliterate = True
        end
        object gudangtransit: TMTStringDataFieldEh
          FieldName = 'gudangtransit'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudangtransit'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object type: TMTStringDataFieldEh
          FieldName = 'type'
          StringDataType = fdtStringEh
          DisplayLabel = 'type'
          DisplayWidth = 20
          Transliterate = True
        end
        object totalberi: TMTNumericDataFieldEh
          FieldName = 'totalberi'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalberi'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalterima: TMTNumericDataFieldEh
          FieldName = 'totalterima'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalterima'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object category: TMTStringDataFieldEh
          FieldName = 'category'
          StringDataType = fdtStringEh
          DisplayLabel = 'category'
          DisplayWidth = 20
          Transliterate = True
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_supplier'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object sisa: TMTNumericDataFieldEh
          FieldName = 'sisa'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = False
          Precision = 30
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            ''
            'MGA'
            ''
            0.189999997615814200
            'KG'
            '09'
            557
            1900c
            1900c
            10000c
            'Botol'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            1900c
            0c
            'Malachite Green'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PNA'
            ''
            0.400000005960464400
            'KG'
            '09'
            558
            4000c
            8000c
            5000c
            'Botol'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            4000c
            0c
            'Potassium Nitrate'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            'GB-A'
            'PAA'
            '01 PAA 002/GB-A/XI/20/HKJ'
            0.519999980926513700
            'KG'
            '09'
            559
            5200c
            5200c
            10000c
            'Botol'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            5200c
            0c
            'Parfum'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PRA'
            ''
            0.324999988079071000
            'KG'
            '09'
            560
            3250c
            3250c
            10000c
            'Botol'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            3250c
            0c
            'Premix'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PRA'
            ''
            0.519999980926513700
            'KG'
            '09'
            575
            5200c
            3250c
            16000c
            'Botol'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Premix'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            'GB-A'
            'PAA'
            '01 PAA 002/GB-A/XI/20/HKJ'
            0.324999988079071000
            'KG'
            '09'
            576
            3250c
            5200c
            6250c
            'Botol'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Parfum'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PNA'
            ''
            0.400000005960464400
            'KG'
            '09'
            577
            4000c
            8000c
            5000c
            'Botol'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Potassium Nitrate'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'MGA'
            ''
            0.189999997615814200
            'KG'
            '09'
            578
            1900c
            1900c
            10000c
            'Botol'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0c
            0c
            'Malachite Green'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil))
      end
    end
  end
  object QGudang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_gudang')
    Left = 1072
    Top = 48
  end
  object DsGudang: TDataSource
    DataSet = QGudang
    Left = 1072
    Top = 96
  end
  object MemKemasan: TMemTableEh
    Params = <>
    Left = 904
    Top = 8
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_formula: TMTStringDataFieldEh
          FieldName = 'no_formula'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_formula'
          DisplayWidth = 25
          Size = 25
          Transliterate = True
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 4
          Size = 4
          Transliterate = True
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_stok'
          DisplayWidth = 30
          Size = 30
          Transliterate = True
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object iddetail: TMTNumericDataFieldEh
          FieldName = 'iddetail'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ttlberat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'qtyperkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'totalkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuankemasan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object no_spk: TMTStringDataFieldEh
          FieldName = 'no_spk'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_spk'
          DisplayWidth = 30
          Size = 30
          Transliterate = True
        end
        object gudangtransit: TMTStringDataFieldEh
          FieldName = 'gudangtransit'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudangtransit'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object type: TMTStringDataFieldEh
          FieldName = 'type'
          StringDataType = fdtStringEh
          DisplayLabel = 'type'
          DisplayWidth = 20
          Transliterate = True
        end
        object totalberi: TMTNumericDataFieldEh
          FieldName = 'totalberi'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'totalberi'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalterima: TMTNumericDataFieldEh
          FieldName = 'totalterima'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'totalterima'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object category: TMTStringDataFieldEh
          FieldName = 'category'
          StringDataType = fdtStringEh
          DisplayLabel = 'category'
          DisplayWidth = 20
          Transliterate = True
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_supplier'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object index2: TMTStringDataFieldEh
          FieldName = 'index2'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            ''
            'PA'
            ''
            0.500000000000000000
            'KG'
            '13'
            561
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            0.500000000000000000
            0.000000000000000000
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil)
          (
            nil
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            0.500000000000000000
            'KG'
            '09'
            562
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            0.500000000000000000
            0.000000000000000000
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            'GB-A'
            'JA'
            '05 JA 001/GB-A/XI/20'
            18.500000000000000000
            'KG'
            '12'
            563
            18.500000000000000000
            50.000000000000000000
            0.370000004768371600
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            18.500000000000000000
            0.000000000000000000
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            nil
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            564
            23.000000000000000000
            50.000000000000000000
            0.460000008344650300
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            23.000000000000000000
            0.000000000000000000
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            565
            2.000000000000000000
            50.000000000000000000
            0.039999999105930330
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test B'
            'In-Proses'
            2.000000000000000000
            0.000000000000000000
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            nil
            'GB-A'
            'OA'
            '02 OA 002/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            566
            13.000000000000000000
            50.000000000000000000
            0.259999990463256800
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            13.000000000000000000
            0.000000000000000000
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            'GB-A'
            'LB'
            '01 LB 001/GB-A/XI/20/HKJ'
            8.500000000000000000
            'KG'
            '02'
            567
            8.500000000000000000
            50.000000000000000000
            0.170000001788139300
            'Karung'
            '002/XI/B/20/HKJ'
            'GB-Test A'
            'In-Proses'
            8.500000000000000000
            0.000000000000000000
            'Tepung Lengket'
            'Bahan Baku'
            'Citra Prima Indo Kencana '
            nil)
          (
            nil
            'GB-B'
            'LA'
            '01 LA 001/GB-B/X/20'
            8.500000000000000000
            'KG'
            '01'
            568
            8.500000000000000000
            50.000000000000000000
            0.170000001788139300
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Lengket'
            'Bahan Baku'
            'Vietnam'
            nil)
          (
            nil
            'GB-A'
            'OA'
            '02 OA  001/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            569
            13.000000000000000000
            50.000000000000000000
            0.259999990463256800
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            570
            2.000000000000000000
            50.000000000000000000
            0.039999999105930330
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            nil
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            571
            23.000000000000000000
            50.000000000000000000
            0.460000008344650300
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            nil
            'GB-A'
            'JA'
            '05 JA 003/GB-A/XI/20'
            18.500000000000000000
            'KG'
            '12'
            572
            18.500000000000000000
            50.000000000000000000
            0.370000004768371600
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            nil
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            0.500000000000000000
            'KG'
            '09'
            573
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            nil
            ''
            'PA'
            ''
            0.500000000000000000
            'KG'
            '13'
            574
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            '001/XI/A/20/HKJ'
            ''
            'Selesai'
            0.000000000000000000
            0.000000000000000000
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil))
      end
    end
  end
end
