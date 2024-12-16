object FNew_BonKmsnProd: TFNew_BonKmsnProd
  Left = 0
  Top = 0
  Caption = 'Form  New Bon Kemasan'
  ClientHeight = 487
  ClientWidth = 1175
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
  DesignSize = (
    1175
    487)
  TextHeight = 13
  object Label1: TLabel
    Left = 383
    Top = 12
    Width = 41
    Height = 13
    Caption = 'No. BON'
  end
  object Label2: TLabel
    Left = 7
    Top = 12
    Width = 81
    Height = 13
    Caption = 'No. SPK Produksi'
  end
  object Label3: TLabel
    Left = 7
    Top = 67
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label5: TLabel
    Left = 527
    Top = 13
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label6: TLabel
    Left = 103
    Top = 12
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label7: TLabel
    Left = 103
    Top = 67
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label9: TLabel
    Left = 56
    Top = 173
    Width = 76
    Height = 13
    Caption = 'Jumlah Timbang'
  end
  object Label10: TLabel
    Left = 152
    Top = 173
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 383
    Top = 40
    Width = 68
    Height = 13
    Caption = 'Jumlah Karton'
  end
  object Label12: TLabel
    Left = 527
    Top = 40
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label13: TLabel
    Left = 7
    Top = 40
    Width = 25
    Height = 13
    Caption = 'Regu'
  end
  object Label14: TLabel
    Left = 103
    Top = 40
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label23: TLabel
    Left = 383
    Top = 67
    Width = 73
    Height = 13
    Caption = 'Gudang Transit'
  end
  object Label24: TLabel
    Left = 527
    Top = 66
    Width = 4
    Height = 13
    Caption = ':'
  end
  object EdNo: TRzEdit
    Left = 551
    Top = 10
    Width = 200
    Height = 21
    Text = ''
    Color = clInfoBk
    TabOrder = 0
  end
  object DtTanggal: TRzDateTimeEdit
    Left = 127
    Top = 64
    Width = 111
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    TabOrder = 1
  end
  object EdNo_SPk: TRzComboBox
    Left = 127
    Top = 10
    Width = 183
    Height = 21
    TabOrder = 2
    OnSelect = EdNo_SPkSelect
  end
  object EdTimbang: TRzEdit
    Left = 176
    Top = 170
    Width = 121
    Height = 21
    Text = '0'
    TabOrder = 3
  end
  object DBGridKemasan: TDBGridEh
    Left = 2
    Top = 92
    Width = 1161
    Height = 352
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DsKemasan
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 4
    TitleParams.MultiTitle = True
    OnCellClick = DBGridKemasanCellClick
    OnColEnter = DBGridKemasanColEnter
    OnColExit = DBGridKemasanColExit
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            OnClick = DBGridKemasanColumns0EditButtons0Click
          end>
        FieldName = 'kd_material_stok'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 63
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
        EditButtons = <
          item
            Style = ebsPlusEh
            OnClick = DBGridKemasanColumns2EditButtons0Click
          end>
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_kb'
        Footers = <>
        Title.Caption = 'Total Kebutuhan'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'index2'
        Footers = <>
        Width = 60
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'index'
        Footers = <>
        PickList.Strings = (
          '1/320'
          '1/430')
        Title.Caption = 'Permintaan|Index'
        Width = 66
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ttlberat'
        Footers = <>
        Title.Caption = 'Permintaan|Total'
        Width = 74
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
        FieldName = 'jmlh_kt'
        Footers = <>
        Title.Caption = 'Jumlah Karton'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gudang'
        Footers = <>
        Title.Caption = 'Gudang'
        Width = 165
      end
      item
        AutoDropDown = True
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
        Width = 165
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'totalberi'
        Footers = <>
        Title.Caption = 'Total Diberikan'
        Visible = False
        Width = 78
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'totalterima'
        Footers = <>
        Title.Caption = 'Total Terima'
        Visible = False
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 1175
    Height = 32
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 456
    ExplicitWidth = 1179
    object BBatal: TRzBitBtn
      Left = 1103
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
      Left = 1028
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
      Left = 953
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
  end
  object EdKarton: TRzEdit
    Left = 551
    Top = 37
    Width = 121
    Height = 21
    Text = '0'
    TabOrder = 6
    OnChange = EdKartonChange
  end
  object EdShift: TRzComboBox
    Left = 127
    Top = 37
    Width = 111
    Height = 21
    TabOrder = 7
    OnSelect = EdShiftSelect
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object CbGudang: TComboBox
    Left = 551
    Top = 63
    Width = 200
    Height = 21
    TabOrder = 8
    OnChange = CbGudangChange
  end
  object Button1: TButton
    Left = 280
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 9
    Visible = False
    OnClick = Button1Click
  end
  object DsKemasan: TDataSource
    DataSet = MemKemasan
    Left = 824
    Top = 56
  end
  object MemKemasan: TMemTableEh
    Active = True
    Params = <>
    Left = 824
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
          DisplayWidth = 50
          Size = 50
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
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayLabel = 'index'
          DisplayWidth = 20
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
          DisplayWidth = 50
          Size = 50
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
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object totalterima: TMTNumericDataFieldEh
          FieldName = 'totalterima'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalterima'
          DisplayWidth = 50
          currency = False
          Precision = 50
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
        object index2: TMTNumericDataFieldEh
          FieldName = 'index2'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object jmlh_kt: TMTNumericDataFieldEh
          FieldName = 'jmlh_kt'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object total_kb: TMTNumericDataFieldEh
          FieldName = 'total_kb'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object QGudang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_gudang')
    Left = 968
    Top = 8
  end
  object DsGudang: TDataSource
    DataSet = QGudang
    Left = 1032
    Top = 8
  end
  object MemKemasan2: TMemTableEh
    Params = <>
    Left = 904
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
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
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
            '065'
            'KARTON'
            '1'
            nil
            20.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            60.000000000000000000
            nil
            'D'
            '063'
            'DUPLEK'
            '60'
            nil
            600.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            300.000000000000000000
            nil
            'A'
            '062'
            'AMPLOP'
            '300'
            nil
            10000.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.187500000000000000
            nil
            'S'
            '064'
            'KAKI ON'
            '1/320'
            nil
            40.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.002300000000000000
            nil
            'I'
            '080'
            'SUMITAPE'
            '435'
            nil
            1.000000000000000000
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
end
