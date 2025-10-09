object FDelivery_Order_Sumber: TFDelivery_Order_Sumber
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sumber Delivery Order'
  ClientHeight = 544
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 145
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1276
    object Label38: TLabel
      Left = 124
      Top = 29
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 27
      Top = 29
      Width = 27
      Height = 15
      Caption = 'Kode'
    end
    object Label12: TLabel
      Left = 27
      Top = 87
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object Label13: TLabel
      Left = 124
      Top = 87
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label1: TLabel
      Left = 302
      Top = 87
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object Label2: TLabel
      Left = 124
      Top = 58
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label3: TLabel
      Left = 27
      Top = 58
      Width = 32
      Height = 15
      Caption = 'Nama'
    end
    object edKodeVendorMuatan: TRzButtonEdit
      Left = 133
      Top = 26
      Width = 164
      Height = 23
      Text = ''
      TabOrder = 0
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKodeVendorMuatanButtonClick
    end
    object edNamaVendorMuatan: TEdit
      Left = 133
      Top = 55
      Width = 359
      Height = 23
      TabOrder = 1
    end
    object dtTanggal1: TRzDateTimePicker
      Left = 133
      Top = 84
      Width = 164
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 2
    end
    object dtTanggal2: TRzDateTimePicker
      Left = 328
      Top = 84
      Width = 164
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 3
    end
    object btTampilkan: TRzBitBtn
      Left = 502
      Top = 77
      Width = 147
      Height = 30
      Caption = 'Tampilkan'
      TabOrder = 4
      OnClick = btTampilkanClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830E0000830E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
        5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
        D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
        E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
        E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
        81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
        81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
        81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
        D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
        E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
        D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
        E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
        D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
        D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
        5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object btProses: TRzBitBtn
      Left = 655
      Top = 77
      Width = 147
      Height = 30
      Caption = 'Proses'
      TabOrder = 5
      OnClick = btProsesClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000520B0000520B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8E8
        E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910
        101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
        1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
        09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
        E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
        E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E809090909E8E8
        E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object ckTandai: TCheckBox
      Left = 133
      Top = 113
      Width = 97
      Height = 17
      Caption = 'Tandai Semua'
      TabOrder = 6
      OnClick = ckTandaiClick
    end
  end
  object DBGrid_SumberOrder: TDBGridEh
    Left = 0
    Top = 145
    Width = 1280
    Height = 399
    Align = alClient
    DataSource = dsDetail
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'notrans'
        Footers = <>
        Title.Caption = 'Nomor Transaksi'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode_vendor'
        Footers = <>
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_vendor'
        Footers = <>
        Title.Caption = 'Nama Vendor'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_reff'
        Footers = <>
        Title.Caption = 'No Reff'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_barang'
        Footers = <>
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_barang'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jumlah'
        Footers = <>
        Title.Caption = 'Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Caption = 'Pilih'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dsDetail: TDataSource
    DataSet = MemDetail
    Left = 368
    Top = 8
  end
  object MemDetail: TMemTableEh
    Params = <>
    Left = 432
    Top = 8
    object MemDetailnotrans: TStringField
      FieldName = 'notrans'
      Size = 100
    end
    object MemDetailkode_vendor: TStringField
      FieldName = 'kode_vendor'
      Size = 100
    end
    object MemDetailname_vendor: TStringField
      FieldName = 'name_vendor'
      Size = 200
    end
    object MemDetailno_reff: TStringField
      FieldName = 'no_reff'
      Size = 50
    end
    object MemDetailkd_barang: TStringField
      FieldName = 'kd_barang'
      Size = 255
    end
    object MemDetailnm_barang: TStringField
      FieldName = 'nm_barang'
      Size = 255
    end
    object MemDetailsatuan: TStringField
      FieldName = 'satuan'
    end
    object MemDetailpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemDetailjumlah: TCurrencyField
      FieldName = 'jumlah'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object notrans: TMTStringDataFieldEh
          FieldName = 'notrans'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kode_vendor: TMTStringDataFieldEh
          FieldName = 'kode_vendor'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object name_vendor: TMTStringDataFieldEh
          FieldName = 'name_vendor'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object no_reff: TMTStringDataFieldEh
          FieldName = 'no_reff'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_barang: TMTStringDataFieldEh
          FieldName = 'kd_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object nm_barang: TMTStringDataFieldEh
          FieldName = 'nm_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object jumlah: TMTNumericDataFieldEh
          FieldName = 'jumlah'
          NumericDataType = fdtCurrencyEh
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
