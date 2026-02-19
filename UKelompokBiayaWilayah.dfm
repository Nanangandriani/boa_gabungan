object FKelompokBiayaWilayah: TFKelompokBiayaWilayah
  Left = 0
  Top = 0
  Caption = 'Kelompok Biaya Willayah'
  ClientHeight = 503
  ClientWidth = 1278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1278
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1272
    object LabelPelanggan: TLabel
      Left = 20
      Top = 47
      Width = 70
      Height = 15
      Caption = 'No. Transaksi'
    end
    object Label3: TLabel
      Left = 133
      Top = 47
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 20
      Top = 75
      Width = 93
      Height = 15
      Caption = 'Tanggal Transaksi'
    end
    object Label13: TLabel
      Left = 133
      Top = 75
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label19: TLabel
      Left = 629
      Top = 20
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label20: TLabel
      Left = 516
      Top = 20
      Width = 38
      Height = 15
      Caption = 'Jumlah'
    end
    object Label24: TLabel
      Left = 133
      Top = 20
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label23: TLabel
      Left = 20
      Top = 20
      Width = 68
      Height = 15
      Caption = 'Sumber Data'
    end
    object Label1: TLabel
      Left = 516
      Top = 47
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label2: TLabel
      Left = 629
      Top = 47
      Width = 3
      Height = 15
      Caption = ':'
    end
    object dtTrans: TRzDateTimePicker
      Left = 147
      Top = 72
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      Enabled = False
      TabOrder = 0
    end
    object edJumlah: TRzNumericEdit
      Left = 643
      Top = 17
      Width = 186
      Height = 23
      Enabled = False
      TabOrder = 1
      DisplayFormat = '0.00#,##'
    end
    object cbsumberdata: TComboBox
      Left = 147
      Top = 17
      Width = 344
      Height = 23
      TabOrder = 2
      Items.Strings = (
        'Pembelian'
        'Pengeluarann Kas Dan Bank')
    end
    object MemKeterangan: TMemo
      Left = 644
      Top = 44
      Width = 343
      Height = 68
      Enabled = False
      TabOrder = 3
    end
    object edNoTrans: TRzButtonEdit
      Left = 147
      Top = 44
      Width = 344
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 4
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNoTransButtonClick
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 129
    Width = 625
    Height = 342
    Hint = ''
    ActivePage = TabDetailAkun
    Align = alLeft
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 1
    ExplicitHeight = 333
    FixedDimension = 21
    object TabDetailAkun: TRzTabSheet
      Color = clGradientInactiveCaption
      Caption = 'Detail Akun'
      ExplicitHeight = 308
      object DBGridAkun: TDBGridEh
        Left = 0
        Top = 0
        Width = 621
        Height = 317
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSDetailAkun
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <
              item
                Style = ebsPlusEh
              end>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_header_akun'
            Footers = <>
            Title.Caption = 'Kode Akun'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                Visible = False
              end>
            FieldName = 'kd_akun'
            Footers = <>
            Title.Caption = 'Kode Akun'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_akun'
            Footers = <>
            Title.Caption = 'Nama Akun'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'debit'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object TabDetailBiaya: TRzPageControl
    Left = 625
    Top = 129
    Width = 653
    Height = 342
    Hint = ''
    ActivePage = RzTabSheet1
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 2
    ExplicitWidth = 647
    ExplicitHeight = 333
    FixedDimension = 21
    object RzTabSheet1: TRzTabSheet
      Color = clGradientInactiveCaption
      Caption = 'Detail Biaya'
      ExplicitWidth = 643
      ExplicitHeight = 308
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 649
        Height = 317
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSMemTP
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_akun'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_akun'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Akun'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_tp'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                OnClick = DBGridEh1Columns3EditButtons0Click
              end>
            FieldName = 'nm_tp'
            Footers = <>
            Title.Caption = 'Nama TP'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jumlah'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 471
    Width = 1278
    Height = 32
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 462
    ExplicitWidth = 1272
    object BBatal: TRzBitBtn
      Left = 1202
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Close'
      TabOrder = 1
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
      ExplicitLeft = 1196
    end
    object BSave: TRzBitBtn
      Left = 1127
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
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
      ExplicitLeft = 1121
    end
  end
  object MemDetailAkun: TMemTableEh
    FieldDefs = <
      item
        Name = 'kd_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nm_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'debit'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'kredit'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'keterangan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kd_header_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jumlah_hasil_kurs'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'modul_id'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 120
    Top = 339
    object MemDetailAkunkd_akun: TStringField
      FieldName = 'kd_akun'
      Size = 100
    end
    object MemDetailAkunnm_akun: TStringField
      FieldName = 'nm_akun'
      Size = 500
    end
    object MemDetailAkunketerangan: TStringField
      FieldName = 'keterangan'
      Size = 500
    end
    object MemDetailAkundebit: TCurrencyField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkredit: TCurrencyField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkd_header_akun: TStringField
      FieldName = 'kd_header_akun'
    end
    object MemDetailAkunjumlah_hasil_kurs: TCurrencyField
      FieldName = 'jumlah_hasil_kurs'
    end
    object MemDetailAkunmodul_id: TStringField
      FieldName = 'modul_id'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object debit: TMTNumericDataFieldEh
          FieldName = 'debit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object kredit: TMTNumericDataFieldEh
          FieldName = 'kredit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_header_akun: TMTStringDataFieldEh
          FieldName = 'kd_header_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object jumlah_hasil_kurs: TMTNumericDataFieldEh
          FieldName = 'jumlah_hasil_kurs'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object modul_id: TMTStringDataFieldEh
          FieldName = 'modul_id'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetailAkun: TDataSource
    DataSet = MemDetailAkun
    Left = 200
    Top = 339
  end
  object DSMemTP: TDataSource
    DataSet = MemTP
    Left = 760
    Top = 331
  end
  object MemTP: TMemTableEh
    FieldDefs = <
      item
        Name = 'kd_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nm_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kd_tp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nm_tp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'keterangan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jumlah'
        DataType = ftCurrency
        Precision = 15
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 680
    Top = 331
    object MemTPkd_akun: TStringField
      FieldName = 'kd_akun'
    end
    object MemTPnm_akun: TStringField
      FieldName = 'nm_akun'
    end
    object MemTPkd_tp: TStringField
      FieldName = 'kd_tp'
    end
    object MemTPnm_tp: TStringField
      FieldName = 'nm_tp'
    end
    object MemTPketerangan: TStringField
      FieldName = 'keterangan'
    end
    object MemTPjumlah: TCurrencyField
      FieldName = 'jumlah'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_tp: TMTStringDataFieldEh
          FieldName = 'kd_tp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_tp: TMTStringDataFieldEh
          FieldName = 'nm_tp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object jumlah: TMTNumericDataFieldEh
          FieldName = 'jumlah'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
