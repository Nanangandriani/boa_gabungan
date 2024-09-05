object FNew_PakaiMatFor: TFNew_PakaiMatFor
  Left = 0
  Top = 0
  Caption = 'FORM NEW LAPORAN PEMAKAIAN MATERIAL FORMULA'
  ClientHeight = 560
  ClientWidth = 1159
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
    Left = 24
    Top = 93
    Width = 65
    Height = 13
    Caption = 'No. Transaksi'
  end
  object Label2: TLabel
    Left = 24
    Top = 11
    Width = 62
    Height = 13
    Caption = 'No. SPK Test'
  end
  object Label3: TLabel
    Left = 24
    Top = 65
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label5: TLabel
    Left = 120
    Top = 93
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label6: TLabel
    Left = 120
    Top = 11
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label7: TLabel
    Left = 120
    Top = 65
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label4: TLabel
    Left = 407
    Top = 38
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label8: TLabel
    Left = 543
    Top = 38
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label13: TLabel
    Left = 24
    Top = 37
    Width = 25
    Height = 13
    Caption = 'Regu'
  end
  object Label14: TLabel
    Left = 120
    Top = 37
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label9: TLabel
    Left = 24
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Mesin'
  end
  object Label10: TLabel
    Left = 120
    Top = 119
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label15: TLabel
    Left = 407
    Top = 66
    Width = 76
    Height = 13
    Caption = 'Jumlah Timbang'
  end
  object Label16: TLabel
    Left = 543
    Top = 66
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 407
    Top = 11
    Width = 63
    Height = 13
    Caption = 'Nama Produk'
  end
  object Label12: TLabel
    Left = 543
    Top = 12
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label17: TLabel
    Left = 407
    Top = 92
    Width = 68
    Height = 13
    Caption = 'Jumlah Karton'
    Visible = False
  end
  object Label18: TLabel
    Left = 543
    Top = 92
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object EdNo: TRzEdit
    Left = 144
    Top = 89
    Width = 193
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    ReadOnlyColorOnFocus = True
    TabOrder = 0
  end
  object DtTanggal: TRzDateTimeEdit
    Left = 144
    Top = 62
    Width = 111
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object EdNo_SPk: TRzComboBox
    Left = 144
    Top = 8
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnSelect = EdNo_SPkSelect
  end
  object EdNo_Formula: TRzComboBox
    Left = 590
    Top = 35
    Width = 183
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 3
  end
  object EdKarton: TRzEdit
    Left = 590
    Top = 89
    Width = 121
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object EdShift: TRzComboBox
    Left = 144
    Top = 34
    Width = 111
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    ReadOnlyColorOnFocus = True
    TabOrder = 5
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 1159
    Height = 32
    Align = alBottom
    TabOrder = 6
    ExplicitTop = 527
    ExplicitWidth = 1155
    object BBatal: TRzBitBtn
      Left = 1083
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
      ExplicitLeft = 1079
    end
    object BSimpan: TRzBitBtn
      Left = 1008
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
      ExplicitLeft = 1014
      ExplicitTop = 4
    end
  end
  object EdMesin: TRzComboBox
    Left = 144
    Top = 116
    Width = 111
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    ReadOnlyColorOnFocus = True
    TabOrder = 7
    Items.Strings = (
      '')
  end
  object dtthn: TRzDateTimeEdit
    Left = 261
    Top = 35
    Width = 76
    Height = 21
    EditType = etDate
    Format = 'yyyy'
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    ReadOnlyColorOnFocus = True
    TabOrder = 8
    Visible = False
  end
  object EdProduk: TRzEdit
    Left = 590
    Top = 8
    Width = 183
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 9
  end
  object RzPageControl1: TRzPageControl
    Left = -1
    Top = 149
    Width = 1156
    Height = 380
    Hint = ''
    ActivePage = TabBaku
    TabIndex = 0
    TabOrder = 10
    FixedDimension = 19
    object TabBaku: TRzTabSheet
      Caption = 'Bahan Baku'
      object DBGridBaku: TDBGridEh
        Left = 0
        Top = 0
        Width = 1152
        Height = 357
        Align = alClient
        DataSource = DsBaku
        DynProps = <>
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridBakuCellClick
        OnColEnter = DBGridBakuColEnter
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            Title.Caption = 'Index|Index'
            Width = 69
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Index|Total'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(Kg)'
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Total'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Title.Caption = 'Gudang'
            Width = 216
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalpakai'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'sisa'
            Footers = <>
            Title.Caption = 'Sisa'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_gudang'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabKimia: TRzTabSheet
      Caption = 'Bahan Kimia'
      object DBGridKimia: TDBGridEh
        Left = 0
        Top = 0
        Width = 1152
        Height = 357
        Align = alClient
        DataSource = DsKimia
        DynProps = <>
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridKimiaCellClick
        OnColEnter = DBGridKimiaColEnter
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 160
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 160
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            Title.Caption = 'Index|Index'
            Width = 76
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Index|Total'
            Width = 74
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(Kg)'
            Width = 68
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Total'
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Title.Caption = 'Gudang'
            Width = 197
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalpakai'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'sisa'
            Footers = <>
            Title.Caption = 'Sisa'
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object EdTimbang: TRzEdit
    Left = 590
    Top = 62
    Width = 121
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 11
    OnChange = EdTimbangChange
  end
  object Membaku1: TMemTableEh
    Params = <>
    Left = 832
    Top = 136
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 10
          Size = 10
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
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayLabel = 'index'
          DisplayWidth = 10
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
        object totalpakai: TMTNumericDataFieldEh
          FieldName = 'totalpakai'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'totalberi'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object sisa: TMTNumericDataFieldEh
          FieldName = 'sisa'
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
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DsBaku: TDataSource
    DataSet = Membaku
    Left = 832
    Top = 184
  end
  object MemKimia: TMemTableEh
    Params = <>
    Left = 960
    Top = 40
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
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
        object totalpakai: TMTNumericDataFieldEh
          FieldName = 'totalpakai'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'totalberi'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object sisa: TMTNumericDataFieldEh
          FieldName = 'sisa'
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
        object kd_gudang: TMTStringDataFieldEh
          FieldName = 'kd_gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            ''
            'PA'
            ''
            5.000000000000000000
            'KG'
            '13'
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            0.500000000000000000
            0.000000000000000000
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil)
          (
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            5.000000000000000000
            'KG'
            '09'
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            0.500000000000000000
            0.000000000000000000
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            'GB-A'
            'JA'
            '05 JA 001/GB-A/XI/20'
            185.000000000000000000
            'KG'
            '12'
            18.500000000000000000
            50.000000000000000000
            0.370000004768371600
            'Karung'
            18.500000000000000000
            0.000000000000000000
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            23.000000000000000000
            50.000000000000000000
            0.460000008344650300
            'Karung'
            23.000000000000000000
            0.000000000000000000
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            2.000000000000000000
            50.000000000000000000
            0.039999999105930330
            'Karung'
            2.000000000000000000
            0.000000000000000000
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            'GB-A'
            'OA'
            '02 OA 002/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            13.000000000000000000
            50.000000000000000000
            0.259999990463256800
            'Karung'
            13.000000000000000000
            0.000000000000000000
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            'GB-A'
            'LB'
            '01 LB 001/GB-A/XI/20/HKJ'
            85.000000000000000000
            'KG'
            '02'
            8.500000000000000000
            50.000000000000000000
            0.170000001788139300
            'Karung'
            8.500000000000000000
            0.000000000000000000
            'Tepung Lengket'
            'Bahan Baku'
            'Citra Prima Indo Kencana '
            nil)
          (
            'GB-B'
            'LA'
            '01 LA 001/GB-B/X/20'
            85.000000000000000000
            'KG'
            '01'
            8.500000000000000000
            50.000000000000000000
            0.170000001788139300
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Lengket'
            'Bahan Baku'
            'Vietnam'
            nil)
          (
            'GB-A'
            'OA'
            '02 OA  001/GB-A/X/20'
            13.000000000000000000
            'KG'
            '03'
            13.000000000000000000
            50.000000000000000000
            0.259999990463256800
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            ''
            'TA'
            ''
            2.000000000000000000
            'KG'
            '10'
            2.000000000000000000
            50.000000000000000000
            0.039999999105930330
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            nil)
          (
            ''
            'BA'
            ''
            23.000000000000000000
            'KG'
            '03'
            23.000000000000000000
            50.000000000000000000
            0.460000008344650300
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            nil)
          (
            'GB-A'
            'JA'
            '05 JA 003/GB-A/XI/20'
            185.000000000000000000
            'KG'
            '12'
            18.500000000000000000
            50.000000000000000000
            0.370000004768371600
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            nil)
          (
            'GB-A'
            'WA'
            '06 WA 002/GB-A/XI/20/HKJ'
            5.000000000000000000
            'KG'
            '09'
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            nil)
          (
            ''
            'PA'
            ''
            5.000000000000000000
            'KG'
            '13'
            0.500000000000000000
            50.000000000000000000
            0.009999999776482582
            'Karung'
            0.000000000000000000
            0.000000000000000000
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            nil))
      end
    end
  end
  object DsKimia: TDataSource
    DataSet = MemKimia
    Left = 968
    Top = 96
  end
  object UniQuery1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_material_pakai_for_det')
    Left = 904
    Top = 152
    object UniQuery1no_pakai: TStringField
      FieldName = 'no_pakai'
      Size = 25
    end
    object UniQuery1gudang: TStringField
      FieldName = 'gudang'
      Size = 10
    end
    object UniQuery1kd_material_stok: TStringField
      FieldName = 'kd_material_stok'
      Size = 4
    end
    object UniQuery1kd_stok: TStringField
      FieldName = 'kd_stok'
      Size = 30
    end
    object UniQuery1index: TFloatField
      FieldName = 'index'
    end
    object UniQuery1satuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object UniQuery1kd_supplier: TStringField
      FieldName = 'kd_supplier'
      Size = 5
    end
    object UniQuery1iddetail: TLargeintField
      FieldName = 'iddetail'
    end
    object UniQuery1ttlberat: TFloatField
      FieldName = 'ttlberat'
    end
    object UniQuery1qtyperkemasan: TFloatField
      FieldName = 'qtyperkemasan'
    end
    object UniQuery1totalkemasan: TFloatField
      FieldName = 'totalkemasan'
    end
    object UniQuery1satuankemasan: TStringField
      FieldName = 'satuankemasan'
      Size = 10
    end
    object UniQuery1gudangtransit: TStringField
      FieldName = 'gudangtransit'
    end
    object UniQuery1Status: TStringField
      FieldName = 'Status'
    end
    object UniQuery1qtypakai: TFloatField
      FieldName = 'qtypakai'
    end
    object UniQuery1waste: TFloatField
      FieldName = 'waste'
    end
    object UniQuery1totalpakai: TFloatField
      FieldName = 'totalpakai'
    end
  end
  object Membaku: TMemTableEh
    Params = <>
    Left = 896
    Top = 88
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 30
          Size = 30
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object totalpakai: TMTNumericDataFieldEh
          FieldName = 'totalpakai'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object sisa: TMTNumericDataFieldEh
          FieldName = 'sisa'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kd_gudang: TMTStringDataFieldEh
          FieldName = 'kd_gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
