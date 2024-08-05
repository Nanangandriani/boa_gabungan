object FMasterWilayahAdministratif: TFMasterWilayahAdministratif
  Left = 0
  Top = 0
  Caption = 'Wilayah Administratif'
  ClientHeight = 547
  ClientWidth = 1119
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGridCustomer: TDBGridEh
    Left = 0
    Top = 153
    Width = 1119
    Height = 362
    Align = alClient
    DataSource = dsMasterData
    DynProps = <>
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_prov'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_prov'
        Footers = <>
        Title.Caption = 'Nama Provinsi'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_province'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_kab'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_kab'
        Footers = <>
        Title.Caption = 'Nama Kabupaten'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_karesidenan'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_regency'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_kec'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_kec'
        Footers = <>
        Title.Caption = 'Nama Kecamatan'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Caption = 'Pilih'
        Visible = False
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 1119
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 506
    ExplicitWidth = 1113
    object btBatal_setwilayah: TRzBitBtn
      Left = 1043
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Close'
      TabOrder = 1
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
      ExplicitLeft = 1037
    end
    object btSimpan_setwilayah: TRzBitBtn
      Left = 968
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btSimpan_setwilayahClick
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
      ExplicitLeft = 962
    end
  end
  object pnSetKares: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 153
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 1113
    object Label17: TLabel
      Left = 125
      Top = 58
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label43: TLabel
      Left = 125
      Top = 27
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 28
      Top = 27
      Width = 24
      Height = 15
      Caption = 'Area'
    end
    object Label14: TLabel
      Left = 28
      Top = 58
      Width = 64
      Height = 15
      Caption = 'Karesidenan'
    end
    object Label3: TLabel
      Left = 125
      Top = 116
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label25: TLabel
      Left = 125
      Top = 87
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label26: TLabel
      Left = 28
      Top = 87
      Width = 42
      Height = 15
      Caption = 'Provinsi'
    end
    object Label1: TLabel
      Left = 28
      Top = 116
      Width = 57
      Height = 15
      Caption = 'Kabupaten'
    end
    object edKode_setkares: TEdit
      Left = 386
      Top = 55
      Width = 185
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      Visible = False
    end
    object edNama_setkares: TEdit
      Left = 140
      Top = 55
      Width = 240
      Height = 23
      ReadOnly = True
      TabOrder = 1
    end
    object edKDArea_setkares: TEdit
      Left = 386
      Top = 24
      Width = 185
      Height = 23
      TabOrder = 2
      Visible = False
    end
    object edArea_setkares: TEdit
      Left = 140
      Top = 24
      Width = 240
      Height = 23
      ReadOnly = True
      TabOrder = 3
    end
    object edKodeProvinsi: TEdit
      Left = 386
      Top = 83
      Width = 100
      Height = 23
      TabOrder = 4
      Visible = False
    end
    object edNamaProvinsi: TRzButtonEdit
      Left = 140
      Top = 84
      Width = 240
      Height = 23
      Text = ''
      TabOrder = 5
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaProvinsiButtonClick
    end
    object edNamaKabupaten: TRzButtonEdit
      Left = 140
      Top = 113
      Width = 240
      Height = 23
      Text = ''
      TabOrder = 6
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaKabupatenButtonClick
    end
    object edKodeKabupaten: TEdit
      Left = 386
      Top = 113
      Width = 100
      Height = 23
      TabOrder = 7
      Visible = False
    end
  end
  object dsMasterData: TDataSource
    DataSet = MemMasterData
    Left = 384
    Top = 256
  end
  object MemMasterData: TMemTableEh
    Params = <>
    Left = 488
    Top = 256
    object MemMasterDatacode_prov: TStringField
      FieldName = 'code_prov'
      Size = 50
    end
    object MemMasterDataname_prov: TStringField
      FieldName = 'name_prov'
      Size = 255
    end
    object MemMasterDatacode_province: TStringField
      FieldName = 'code_province'
      Size = 255
    end
    object MemMasterDatacode_kab: TStringField
      FieldName = 'code_kab'
    end
    object MemMasterDataname_kab: TStringField
      DisplayWidth = 255
      FieldName = 'name_kab'
      Size = 255
    end
    object MemMasterDatacode_karesidenan: TStringField
      FieldName = 'code_karesidenan'
    end
    object MemMasterDatacode_regency: TStringField
      FieldName = 'code_regency'
    end
    object MemMasterDatacode_kec: TStringField
      FieldName = 'code_kec'
      Size = 50
    end
    object MemMasterDataname_kec: TStringField
      DisplayWidth = 255
      FieldName = 'name_kec'
      Size = 255
    end
    object MemMasterDatapilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object code_prov: TMTStringDataFieldEh
          FieldName = 'code_prov'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object name_prov: TMTStringDataFieldEh
          FieldName = 'name_prov'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object code_province: TMTStringDataFieldEh
          FieldName = 'code_province'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object code_kab: TMTStringDataFieldEh
          FieldName = 'code_kab'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object name_kab: TMTStringDataFieldEh
          FieldName = 'name_kab'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object code_karesidenan: TMTStringDataFieldEh
          FieldName = 'code_karesidenan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object code_regency: TMTStringDataFieldEh
          FieldName = 'code_regency'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object code_kec: TMTStringDataFieldEh
          FieldName = 'code_kec'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object name_kec: TMTStringDataFieldEh
          FieldName = 'name_kec'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
