object FPenyesuaianPenjualan: TFPenyesuaianPenjualan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Penyesuaian Penjualan'
  ClientHeight = 442
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 65
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 1058
    object Label38: TLabel
      Left = 109
      Top = 8
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 12
      Top = 8
      Width = 91
      Height = 15
      Caption = 'Nama Pelanggan'
    end
    object Label10: TLabel
      Left = 12
      Top = 39
      Width = 72
      Height = 15
      Caption = 'Tanggal Kirim'
    end
    object Label11: TLabel
      Left = 109
      Top = 39
      Width = 3
      Height = 15
      Caption = ':'
    end
    object edNama_Pelanggan: TRzButtonEdit
      Left = 119
      Top = 5
      Width = 309
      Height = 23
      Text = ''
      TabOrder = 0
      AllowKeyEdit = False
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNama_PelangganButtonClick
    end
    object dtTanggal: TRzDateTimePicker
      Left = 119
      Top = 36
      Width = 85
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 1
    end
    object RzBitBtn1: TRzBitBtn
      Left = 248
      Top = 34
      Caption = 'Cari'
      TabOrder = 2
      OnClick = RzBitBtn1Click
    end
    object BSave: TRzBitBtn
      Left = 1000
      Top = 24
      Width = 89
      Height = 35
      Caption = 'Save'
      TabOrder = 3
      OnClick = BSaveClick
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1101
    Height = 377
    Align = alClient
    DataSource = DSDetail
    DynProps = <>
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_reference'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Sales Order'
        Width = 135
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_traveldoc'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Surat Jalan'
        Width = 137
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Invoice'
        Width = 123
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_item'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Barang'
        Width = 229
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'amount'
        Footers = <>
        Title.Caption = 'Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_unit'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Satuan'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'tare_weight'
        Footers = <>
        Title.Caption = 'Berat (KG)|Berat Kosong'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'gross_weight'
        Footers = <>
        Title.Caption = 'Berat (KG)|Berat Isi'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Caption = 'PIlih'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 328
    Top = 280
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    Left = 472
    Top = 240
    object MemDetailno_traveldoc: TStringField
      FieldName = 'no_traveldoc'
      Size = 255
    end
    object MemDetailno_reference: TStringField
      FieldName = 'no_reference'
      Size = 255
    end
    object MemDetailtrans_no: TStringField
      FieldName = 'trans_no'
      Required = True
      Size = 255
    end
    object MemDetailcode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object MemDetailname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object MemDetailamount: TFloatField
      FieldName = 'amount'
    end
    object MemDetailname_unit: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
    object MemDetailgross_weight: TFloatField
      FieldName = 'gross_weight'
    end
    object MemDetailtare_weight: TFloatField
      FieldName = 'tare_weight'
    end
    object MemDetailpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_reference: TMTStringDataFieldEh
          FieldName = 'no_reference'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_reference'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object no_traveldoc: TMTStringDataFieldEh
          FieldName = 'no_traveldoc'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_traveldoc'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object trans_no: TMTStringDataFieldEh
          FieldName = 'trans_no'
          StringDataType = fdtStringEh
          DisplayLabel = 'trans_no'
          DisplayWidth = 255
          Required = True
          Size = 255
          Transliterate = True
        end
        object code_item: TMTStringDataFieldEh
          FieldName = 'code_item'
          StringDataType = fdtStringEh
          DisplayLabel = 'code_item'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object name_item: TMTStringDataFieldEh
          FieldName = 'name_item'
          StringDataType = fdtStringEh
          DisplayLabel = 'name_item'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object amount: TMTNumericDataFieldEh
          FieldName = 'amount'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'amount'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object name_unit: TMTStringDataFieldEh
          FieldName = 'name_unit'
          StringDataType = fdtStringEh
          DisplayLabel = 'name_unit'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object gross_weight: TMTNumericDataFieldEh
          FieldName = 'gross_weight'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'gross_weight'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object tare_weight: TMTNumericDataFieldEh
          FieldName = 'tare_weight'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'tare_weight'
          DisplayWidth = 10
          currency = False
          Precision = 15
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
