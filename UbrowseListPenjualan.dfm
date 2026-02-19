object FbrowseListPenjualan: TFbrowseListPenjualan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Data Penjualan'
  ClientHeight = 364
  ClientWidth = 783
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
    Top = 41
    Width = 783
    Height = 323
    Align = alClient
    DataSource = DSPenjualan
    DrawMemoText = True
    DynProps = <>
    FrozenCols = 4
    RowDetailPanel.Active = True
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Nota'
        Width = 173
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_cust'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pelanggan'
        Width = 204
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name_pkp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama PKP'
        Width = 193
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_reference'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No SO'
        Width = 131
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'karesidenan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Karesidenan'
        Width = 133
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'TP'
        Width = 115
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kabupaten'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kabupaten'
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kecamatan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kecamatan'
        Width = 122
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Piutang'
        Width = 106
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 746
        Height = 118
        Align = alClient
        DataSource = DSPenjualanDet
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_no'
            Footers = <>
            Title.Alignment = taCenter
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Barang'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 205
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Qty'
            Width = 107
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_unit'
            Footers = <>
            Title.Alignment = taCenter
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_unit'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 41
    Align = alTop
    Color = 15987699
    TabOrder = 1
    ExplicitWidth = 779
    object RzLabel1: TRzLabel
      Left = 24
      Top = 13
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object dtTanggal: TRzDateTimePicker
      Left = 80
      Top = 9
      Width = 105
      Height = 23
      Date = 46057.000000000000000000
      Format = ''
      Time = 0.632429247685649900
      TabOrder = 0
    end
    object btnLihat: TRzButton
      Left = 208
      Top = 5
      Width = 89
      Height = 30
      Caption = 'Lihat'
      TabOrder = 1
      OnClick = btnLihatClick
    end
    object btProses: TRzBitBtn
      Left = 317
      Top = 5
      Width = 147
      Height = 30
      Caption = 'Proses'
      TabOrder = 2
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
  end
  object DSPenjualan: TDataSource
    DataSet = QPenjualan
    Left = 352
    Top = 216
  end
  object QPenjualan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT false as pilih,trans_no,code_cust,name_cust,customer_name' +
        '_pkp,no_reference,karesidenan,tp,kabupaten,kecamatan,grand_tot f' +
        'rom get_selling(False) WHERE deleted_at is NULL')
    Left = 248
    Top = 216
    object QPenjualanpilih: TBooleanField
      FieldName = 'pilih'
    end
    object QPenjualantrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualanname_cust: TMemoField
      FieldName = 'name_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualancustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualanno_reference: TMemoField
      FieldName = 'no_reference'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualankaresidenan: TMemoField
      FieldName = 'karesidenan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualantp: TMemoField
      FieldName = 'tp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualankabupaten: TMemoField
      FieldName = 'kabupaten'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualankecamatan: TMemoField
      FieldName = 'kecamatan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QPenjualangrand_tot: TFloatField
      FieldName = 'grand_tot'
      ReadOnly = True
    end
    object QPenjualancode_cust: TMemoField
      FieldName = 'code_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object DSPenjualanDet: TDataSource
    DataSet = QPenjualanDet
    Left = 520
    Top = 200
  end
  object QPenjualanDet: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM t_selling_det')
    MasterSource = DSPenjualan
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 638
    Top = 192
    ParamData = <
      item
        DataType = ftMemo
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/004/04/X/2025/HLJ/BGR'
      end>
    object QPenjualanDettrans_no: TStringField
      FieldName = 'trans_no'
      Required = True
      Size = 255
    end
    object QPenjualanDetcode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object QPenjualanDetname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object QPenjualanDetamount: TFloatField
      FieldName = 'amount'
    end
    object QPenjualanDetcode_unit: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object QPenjualanDetname_unit: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
  end
end
