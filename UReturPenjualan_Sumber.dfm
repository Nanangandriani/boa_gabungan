object FReturPenjualan_Sumber: TFReturPenjualan_Sumber
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sumber Retur'
  ClientHeight = 454
  ClientWidth = 1116
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
    Width = 1116
    Height = 129
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1112
    object Label38: TLabel
      Left = 124
      Top = 8
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 27
      Top = 8
      Width = 27
      Height = 15
      Caption = 'Kode'
    end
    object Label12: TLabel
      Left = 27
      Top = 66
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object Label13: TLabel
      Left = 124
      Top = 66
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label1: TLabel
      Left = 302
      Top = 66
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object Label2: TLabel
      Left = 124
      Top = 37
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label3: TLabel
      Left = 27
      Top = 37
      Width = 32
      Height = 15
      Caption = 'Nama'
    end
    object Label4: TLabel
      Left = 27
      Top = 95
      Width = 52
      Height = 15
      Caption = 'No Faktur'
    end
    object Label5: TLabel
      Left = 124
      Top = 96
      Width = 3
      Height = 15
      Caption = ':'
    end
    object edKode_Pelanggan: TRzButtonEdit
      Left = 133
      Top = 5
      Width = 164
      Height = 23
      Text = ''
      TabOrder = 0
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKode_PelangganButtonClick
    end
    object edNama_Pelanggan: TEdit
      Left = 133
      Top = 34
      Width = 359
      Height = 23
      TabOrder = 1
    end
    object dtTanggal1: TRzDateTimePicker
      Left = 133
      Top = 63
      Width = 164
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 2
    end
    object dtTanggal2: TRzDateTimePicker
      Left = 328
      Top = 63
      Width = 164
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 3
    end
    object btTampilkan: TRzBitBtn
      Left = 502
      Top = 56
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
      Top = 56
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
      Left = 395
      Top = 95
      Width = 97
      Height = 17
      Caption = 'Tandai Semua'
      TabOrder = 6
      Visible = False
    end
    object edNoFaktur: TEdit
      Left = 133
      Top = 92
      Width = 228
      Height = 23
      ReadOnly = True
      TabOrder = 7
    end
  end
  object DBGrid_SumberOrder: TDBGridEh
    Left = -24
    Top = 273
    Width = 1116
    Height = 526
    DataSource = dsDetail
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    OnDblClick = DBGrid_SumberOrderDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_trans'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nomor Penjualan'
        Width = 141
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_faktur'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Faktur'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_trans'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_cust'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_cust'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pelanggan'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_source'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_source'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Sumber'
        Width = 172
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_reference'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Reference'
        Width = 166
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
        Width = 60
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridBarang: TDBGridEh
    Left = 0
    Top = 135
    Width = 913
    Height = 146
    DataSource = dsBarang
    DynProps = <>
    TabOrder = 2
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
        FieldName = 'trans_no'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_item'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode Barang'
        Width = 118
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_item'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Barang'
        Width = 368
      end
      item
        ButtonStyle = cbsDropDown
        CellButtons = <>
        DropDownBox.ListFieldNames = 'unit_code'
        DropDownShowTitles = True
        DynProps = <>
        EditButton.Visible = True
        EditButtons = <>
        FieldName = 'code_unit'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Satuan'
        Width = 137
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
        Width = 36
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dsDetail: TDataSource
    DataSet = MemDetail
    Left = 376
    Top = 136
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    Left = 448
    Top = 136
    object MemDetailno_trans: TStringField
      FieldName = 'no_trans'
      Size = 100
    end
    object MemDetaildate_trans: TDateField
      FieldName = 'date_trans'
    end
    object MemDetailcode_cust: TStringField
      FieldName = 'code_cust'
      Size = 200
    end
    object MemDetailname_cust: TStringField
      FieldName = 'name_cust'
      Size = 200
    end
    object MemDetailcode_source: TStringField
      FieldName = 'code_source'
      Size = 100
    end
    object MemDetailname_source: TStringField
      FieldName = 'name_source'
      Size = 255
    end
    object MemDetailno_reference: TStringField
      FieldName = 'no_reference'
      Size = 100
    end
    object MemDetailpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemDetailno_faktur: TStringField
      FieldName = 'no_faktur'
      Size = 50
    end
    object MemDetailgrand_tot: TCurrencyField
      FieldName = 'grand_tot'
    end
    object MemDetailgrand_tot_returns: TCurrencyField
      FieldName = 'grand_tot_returns'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_trans: TMTStringDataFieldEh
          FieldName = 'no_trans'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object date_trans: TMTDateTimeDataFieldEh
          FieldName = 'date_trans'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 100
        end
        object code_cust: TMTStringDataFieldEh
          FieldName = 'code_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object name_cust: TMTStringDataFieldEh
          FieldName = 'name_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object code_source: TMTStringDataFieldEh
          FieldName = 'code_source'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object name_source: TMTStringDataFieldEh
          FieldName = 'name_source'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object no_reference: TMTStringDataFieldEh
          FieldName = 'no_reference'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
        object no_faktur: TMTStringDataFieldEh
          FieldName = 'no_faktur'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object grand_tot: TMTNumericDataFieldEh
          FieldName = 'grand_tot'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object grand_tot_returns: TMTNumericDataFieldEh
          FieldName = 'grand_tot_returns'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object MemBarang: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 488
    Top = 200
    object MemBarangid: TGuidField
      FieldName = 'id'
      Required = True
      Size = 38
    end
    object MemBarangtrans_no: TStringField
      FieldName = 'trans_no'
      Required = True
      Size = 255
    end
    object MemBarangcode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object MemBarangname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object MemBarangcode_unit: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object MemBarangpilih: TBooleanField
      FieldName = 'pilih'
    end
  end
  object QBarang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.id,a.trans_no,a.code_item,a.name_item,a.code_unit,false' +
        ' pilih, amount-COALESCE((SELECT SUM(aa.amount) FROM t_sales_retu' +
        'rns_det aa LEFT JOIN  t_sales_returns bb on aa.no_trans_sale=bb.' +
        'trans_no where bb.no_inv_tax=b.no_inv_tax and bb.deleted_at is N' +
        'ULL and aa.code_item=a.code_item GROUP BY aa.code_item),0) jumla' +
        'h from t_selling_det a left join t_selling b on b.trans_no=a.tra' +
        'ns_no  and  b.deleted_at is NULL where b.no_inv_tax ='#39'FP/001/15/' +
        'VIII/2025/HLJ'#39' and a.deleted_at is NULL')
    Left = 392
    Top = 200
    object QBarangid: TGuidField
      FieldName = 'id'
      Required = True
      Size = 38
    end
    object QBarangtrans_no: TStringField
      FieldName = 'trans_no'
      Required = True
      Size = 255
    end
    object QBarangcode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object QBarangname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object QBarangcode_unit: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object QBarangpilih: TBooleanField
      FieldName = 'pilih'
    end
  end
  object dsBarang: TDataSource
    DataSet = MemBarang
    Left = 624
    Top = 200
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QBarang
    Left = 560
    Top = 264
  end
  object QSatuan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT *  from t_unit')
    Left = 88
    Top = 192
  end
  object DSsatuan: TDataSource
    DataSet = QSatuan
    Left = 168
    Top = 200
  end
end
