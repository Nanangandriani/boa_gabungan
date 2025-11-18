object FListPerbandinganBiayaDo: TFListPerbandinganBiayaDo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Koreksi Biaya'
  ClientHeight = 267
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 400
    Height = 226
    Align = alLeft
    DataSource = DataSource1
    DynProps = <>
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_biaya'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Sekarang|Kode Biaya'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_biaya'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Sekarang|Nama Biaya'
        Width = 157
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Sekarang|DPP'
        Width = 121
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 400
    Top = 0
    Width = 388
    Height = 226
    Align = alRight
    DataSource = DataSource2
    DynProps = <>
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_biaya'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Perubahan Chakra|Kode Biaya'
        Width = 99
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_biaya'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Perubahan Chakra|Nama Biaya'
        Width = 158
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Biaya Perubahan Chakra|DPP'
        Width = 110
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 226
    Width = 788
    Height = 41
    Align = alBottom
    Color = 15987699
    TabOrder = 2
    ExplicitTop = 225
    ExplicitWidth = 784
    object btSetujui: TRzBitBtn
      Left = 711
      Top = 2
      Height = 37
      Align = alRight
      Caption = 'Setujui'
      TabOrder = 0
      OnClick = btSetujuiClick
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
      ExplicitLeft = 707
    end
  end
  object MemDataBiayaLast: TMemTableEh
    Active = True
    Params = <>
    SortOrder = 'kd_biaya'
    Left = 240
    Top = 168
    object MemDataBiayaLastkd_biaya: TStringField
      FieldName = 'kd_biaya'
    end
    object MemDataBiayaLastnm_biaya: TStringField
      FieldName = 'nm_biaya'
    end
    object MemDataBiayaLastdpp: TFloatField
      FieldName = 'dpp'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaLastakun_ppn: TStringField
      FieldName = 'akun_ppn'
    end
    object MemDataBiayaLastnama_ppn: TStringField
      FieldName = 'nama_ppn'
    end
    object MemDataBiayaLastpersen_ppn: TFloatField
      FieldName = 'persen_ppn'
    end
    object MemDataBiayaLastppn: TFloatField
      FieldName = 'ppn'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaLastakun_pph: TStringField
      FieldName = 'akun_pph'
    end
    object MemDataBiayaLastnama_pph: TStringField
      FieldName = 'nama_pph'
    end
    object MemDataBiayaLastpersen_pph: TFloatField
      FieldName = 'persen_pph'
    end
    object MemDataBiayaLastpph: TFloatField
      FieldName = 'pph'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaLasttotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaLastketerangan: TWideStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object MemDataBiayaLastno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 100
    end
    object MemDataBiayaLasttgl_invoice: TDateField
      FieldName = 'tgl_invoice'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_biaya: TMTStringDataFieldEh
          FieldName = 'kd_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_biaya: TMTStringDataFieldEh
          FieldName = 'nm_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object dpp: TMTNumericDataFieldEh
          FieldName = 'dpp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_ppn: TMTStringDataFieldEh
          FieldName = 'akun_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_ppn: TMTStringDataFieldEh
          FieldName = 'nama_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_ppn: TMTNumericDataFieldEh
          FieldName = 'persen_ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_pph: TMTStringDataFieldEh
          FieldName = 'akun_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_pph: TMTStringDataFieldEh
          FieldName = 'nama_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_pph: TMTNumericDataFieldEh
          FieldName = 'persen_pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object pph: TMTNumericDataFieldEh
          FieldName = 'pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object total: TMTNumericDataFieldEh
          FieldName = 'total'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtWideStringEh
          DisplayWidth = 255
          Size = 255
        end
        object no_invoice: TMTStringDataFieldEh
          FieldName = 'no_invoice'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object tgl_invoice: TMTDateTimeDataFieldEh
          FieldName = 'tgl_invoice'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = MemDataBiayaLast
    Left = 144
    Top = 168
  end
  object MemDataBiayaCorrection: TMemTableEh
    Active = True
    Params = <>
    SortOrder = 'kd_biaya'
    Left = 496
    Top = 152
    object StringField1: TStringField
      FieldName = 'kd_biaya'
    end
    object StringField2: TStringField
      FieldName = 'nm_biaya'
    end
    object FloatField1: TFloatField
      FieldName = 'dpp'
      DisplayFormat = '#,##0.##'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_biaya: TMTStringDataFieldEh
          FieldName = 'kd_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_biaya: TMTStringDataFieldEh
          FieldName = 'nm_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object dpp: TMTNumericDataFieldEh
          FieldName = 'dpp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_ppn: TMTStringDataFieldEh
          FieldName = 'akun_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_ppn: TMTStringDataFieldEh
          FieldName = 'nama_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_ppn: TMTNumericDataFieldEh
          FieldName = 'persen_ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_pph: TMTStringDataFieldEh
          FieldName = 'akun_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_pph: TMTStringDataFieldEh
          FieldName = 'nama_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_pph: TMTNumericDataFieldEh
          FieldName = 'persen_pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object pph: TMTNumericDataFieldEh
          FieldName = 'pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object total: TMTNumericDataFieldEh
          FieldName = 'total'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtWideStringEh
          DisplayWidth = 255
          Size = 255
        end
        object no_invoice: TMTStringDataFieldEh
          FieldName = 'no_invoice'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object tgl_invoice: TMTDateTimeDataFieldEh
          FieldName = 'tgl_invoice'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = MemDataBiayaCorrection
    Left = 560
    Top = 144
  end
end
