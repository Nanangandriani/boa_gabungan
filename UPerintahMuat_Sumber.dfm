object FPerintahMuat_Sumber: TFPerintahMuat_Sumber
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sumber Perintah Muat'
  ClientHeight = 460
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 145
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1032
    object Label38: TLabel
      Left = 124
      Top = 5
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 27
      Top = 5
      Width = 73
      Height = 15
      Caption = 'Jasa Transport'
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
    object Label37: TLabel
      Left = 27
      Top = 62
      Width = 56
      Height = 15
      Caption = 'Kendaraan'
    end
    object Label36: TLabel
      Left = 124
      Top = 62
      Width = 3
      Height = 15
      Caption = ':'
    end
    object edKodeVendorMuatan: TRzButtonEdit
      Left = 133
      Top = 2
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
      Top = 31
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
      Left = 236
      Top = 111
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
      Left = 389
      Top = 111
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
    end
    object edNoKendMuatan: TRzButtonEdit
      Left = 133
      Top = 57
      Width = 250
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 7
      AllowKeyEdit = False
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
  end
  object DBGrid_SumberOrder: TDBGridEh
    Left = 0
    Top = 145
    Width = 1036
    Height = 315
    Align = alClient
    DataSource = DSDO
    DynProps = <>
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 170
    SearchPanel.Enabled = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'notrans'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nomor Transaksi'
        Width = 171
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode_vendor'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_trans'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'vendor_name_transport'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Vendor'
        Width = 290
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'vehicles'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kendaraan'
        Width = 196
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 746
        Height = 168
        Align = alClient
        DataSource = DataSource1
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notrans'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_code'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_name'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 360
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Width = 110
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 117
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DSDO: TDataSource
    DataSet = MemDetail
    Left = 304
    Top = 312
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    DataDriver = DataSetDriverDO
    Left = 440
    Top = 56
    object MemDetaildate_trans: TDateField
      FieldName = 'date_trans'
    end
    object MemDetailnotrans: TStringField
      FieldName = 'notrans'
      Size = 100
    end
    object MemDetailvendor_code_transport: TStringField
      FieldName = 'vendor_code_transport'
      Size = 100
    end
    object MemDetailvendor_name_transport: TStringField
      FieldName = 'vendor_name_transport'
      Size = 255
    end
    object MemDetailvehicles: TStringField
      FieldName = 'vehicles'
      Size = 255
    end
    object MemDetailpilih: TBooleanField
      FieldName = 'pilih'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qdetail
    Left = 552
    Top = 296
  end
  object Qdetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT id,notrans,item_code,item_name,unit,amount,notrans_load f' +
        'rom t_delivery_order_load')
    MasterSource = DSDO
    MasterFields = 'notrans'
    DetailFields = 'notrans'
    Left = 438
    Top = 299
    ParamData = <
      item
        DataType = ftString
        Name = 'notrans'
        ParamType = ptInput
        Value = 'DO/XII-240001'
      end>
  end
  object Qdo: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select DISTINCT *,false as pilih  from ( SELECT date_trans, a."n' +
        'otrans", "vendor_code_transport",  "vendor_name_transport",    v' +
        'ehicles  from "public"."t_delivery_order" a  LEFT JOIN (SELECT a' +
        '.*, vendor_code as vendor_code_transport, vendor_name  as vendor' +
        '_name_transport,vehicles from "public"."t_delivery_order_load" a' +
        '  LEFT JOIN "public"."t_delivery_order_services" b ON a.notrans=' +
        'b.notrans  )b ON  a.notrans=b.notrans where deleted_at  is null)' +
        ' deo   where notrans not in (SELECT notrans from "public"."t_spm' +
        '" a  where a.deleted_at  is null) ')
    Active = True
    Left = 352
    Top = 272
    object Qdodate_trans: TDateField
      FieldName = 'date_trans'
      ReadOnly = True
    end
    object Qdonotrans: TStringField
      FieldName = 'notrans'
      ReadOnly = True
      Size = 100
    end
    object Qdovendor_code_transport: TStringField
      FieldName = 'vendor_code_transport'
      ReadOnly = True
      Size = 100
    end
    object Qdovendor_name_transport: TStringField
      FieldName = 'vendor_name_transport'
      ReadOnly = True
      Size = 255
    end
    object Qdovehicles: TStringField
      FieldName = 'vehicles'
      ReadOnly = True
      Size = 255
    end
    object Qdopilih: TBooleanField
      FieldName = 'pilih'
    end
  end
  object DataSetDriverDO: TDataSetDriverEh
    ProviderDataSet = Qdo
    Left = 488
    Top = 232
  end
end
